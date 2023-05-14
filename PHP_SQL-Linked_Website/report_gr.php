<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>The Department Summary</title>
<?php
  // to avoid distractions, all the rest of the <head> section
  // is contained in a function that returns a string.
  echo style();
?>
</head>
<body>
<?php 
  # The first page to send is form.  We can tell whether to send the form
  # because user will have provided values that end up in the $_POST array.
  #
  if (! isset($_POST['user_name'], $_POST['password'], $_POST['sid'])
     || !$_POST['user_name'] || !$_POST['password'] || !$_POST['sid']) 
  {
        echo LoginForm();
  } 
  else {  # we have the values we need, so we can go to work.

     // Edit this: Replace 'PARTNER1' with the login of the
     // partner who will submit the assignment
     $partner1 = 'GMARCHE'; 
     // Edit this: Replace 'PARTNER2' with the login of the
     // other partner if any
     $partner2 = 'GMARCHE';

     $uid = strtoupper($_POST['user_name']);
     $sid = strtoupper($_POST['sid']);
     VerifyUID($uid);

     echo OverallExplanation();

     require_once 'MDB2.php';
     $con = MakeConnection($uid,$sid);
     error_check($con,'MakeConnection');

     // who gets credit for the inserts?  
     // if some CS450* is running it, $partner1 will get the credit
     // and the inserts will be made in their name.
     // otherwise whichever partner runs it will get the credit.
     if (substr($uid,0,5) == 'CS450'){
        $credit_uid = $partner1;
     }
     else {
        $credit_uid = $uid;
     }

     echo "<h2>Database Procedure Calls</h2>";

     $clean_query = "BEGIN
cs450.clean_dept_summary('$credit_uid');
END;";
     print("Cleaning with <pre>$clean_query</pre><br/>");  
     $clean = $con->query($clean_query);
     error_check($clean,'cleaning');
     $clean->free();

     echo "<h2>First Thing First: Getting The Department Information</h2>";
     print <<<DEPT_QUERY
	<h3>I want to make it easier on myself, without using too much memory space to do
	this assignment. With that in mind, I will be extracting only exactly what I need
	in order to get the job done. So, to start, I needed to establish the department
	name and number, since these are easy to get and needed for the fields in the new
	DEPT_SUMMARY table. There is no need to make a join with the other data, as we
	can use this smaller table to iterate through each department without having to 
	take extra manipulation steps in the upcoming, main table of data.</h3>

	<h4>This is simply querying the DEPARTMENT table for each department's name and
	number. I placed them in order because I love for results to be organized in
	alphanumeric order (in this case, numeric). It's soothing to the eyes. All the data
	from the table is saved into a 2D array for future processing, while another
	copy extraction from the query is done for the ShowTable() function.</h4>
DEPT_QUERY;
     $dept_query = "SELECT dname, dnumber
FROM department
ORDER BY dnumber";
     print("Getting the department list from the following query:");
     print("<pre>$dept_query</pre><br/>");
     $dept = $con->query($dept_query);
     error_check($dept, 'getting the department table');
     $dept_table = array();
     $i = 0;
     while ($d = $dept->fetchRow(MDB2_FETCHMODE_ASSOC))
     {
	     $dept_table[$i] = [
		     'dname' => $d['dname'],
		     'dnumber' => $d['dnumber'],
	     ];
	     $i++;
     }
     $dep = $con->query($dept_query);
     error_check($dep, 'getting the department table copy to display');
     ShowTable($dep);

     echo "<h2>Establishing the Main Table</h2>";
     print <<<MAIN_QUERY
	<h3>After establishing the list of department names and numbers, we must create the
	table that guides the rest of the report.<br/><br/>

	Produced as a result of the first query is a table with these attributes:
		<ul>
			<li> Employee social security number </li>
			<li> Employee department number </li>
			<li> The number of hours an employee works on the project (if any) </li>
			<li> Project department number </li>
			<li> The cost for the employee's work (labeled 'cost' for convenience) </li>
		</ul>
	This is going to be the meat of the SQL work.</h3>

	<h4>These are extracted from a table joining the EMPLOYEE, WORKS_ON, and PROJECT table,
	and all joins are left outer joins in the respective order. EMPLOYEE is joined with
	WORKS_ON on the employee social security number, and WORKS_ON and PROJECT are joined
	on the project number. The social security number, employee department number, and
	project department number make up the primary key. This essentially finds data on
	every employee's assignment to a project, while accounting for employees that have
	no project assigned to them (for the number of employees in the department). We have
	these left joins because there are some employees who are not assigned to work on any
	project, and they are necessary to keep in the table for counting the number of
	employees. Either of the joins not being a left join will result in their 
	disappearance from interpretation.<br/><br/>

	The two department numbers will be what is used for comparison conditions (same or 
	different) that helps to determine which of the 5 combinations of employee and project
	type that the data belongs in. Cost and hours are added to the running total, and the
	social security number is used for the number of employees. Cost is calculated by
	dividing the employees salary by 2000 and multiplying it by the number of hours worked
	on the respective project.

	As before with the data table, a 2D array is made from this table, while another
	connection with the query is made for displaying the table.</h4>
MAIN_QUERY;
     $main_query = "SELECT ssn, dno, hours, dnum,
salary / 2000 * hours AS cost
FROM employee
LEFT JOIN works_on
ON ssn = essn
LEFT JOIN project
ON pno = pnumber";
     print("Getting the main table from the following query:");
     print("<pre>$main_query</pre><br/>");
     $main = $con->query($main_query);
     error_check($main, 'getting the main table');
     $main_table = array();
     $i = 0;
     while ($m = $main->fetchRow(MDB2_FETCHMODE_ASSOC))
     {
	     $main_table[$i] = [
		     'ssn' => $m['ssn'],
		     'dno' => $m['dno'],
		     'hours' => $m['hours'],
		     'dnum' => $m['dnum'],
		     'cost' => $m['cost'],
	     ];
	     $i++;
     }
     $mn = $con->query($main_query);
     error_check($mn, 'getting the main table copy to display');
     ShowTable($mn);
     
     echo "<h2>The Extraction Process</h2>";
print <<<PROCESSING
<h3>Allow me to introduce the part that took the majority of my time. Here are the steps
that I took to get each insertion:
	<ol>
		<li> Create two arrays of the list of employee and project types, with
			the index of each made sure to correspond with the other</li>
		<li> The insert number is initiated to zero</li>
		<li> Iterate through each department in the array, then through each type
			of result type. For example, with the provided department table
			with the Headquarters, Administration, Research, and Marketing
			departments, there will be a total of 20 insertions. With each
			department iteration, save the department name and number.</li>
		<li> Each insertion, the emp/proj types are established from the second
			iteration (passing an index to the arrays). The num_emps, hours,
			and cost are initiated at zero.</li>
		<li> Iterate through each row from the array of main table rows. If it's
			relevant to the project and employee type (checked with a switch
			statement based on the index of the proj-emp type combo and a
			few if-statements comparing the department numbers), then
			increment the num_emps and add the cost and hours to the running
			total for the insertion.</li>
		<li> Finally, insert the tuple into the DEPT_SUMMARY table.</li>
	</ol></h3>
PROCESSING;

$emp_types = array(
     'NOMINAL',
     'DEPT',
     'DEPT',
     'NONDEPT',
     'ASSIGNED',
);

$proj_types = array(
     'NA',
     'DEPT',
     'NONDEPT',
     'DEPT',
     'DEPT',
);

$v_insert_number = 0;
$d_header = 0;
$m_header = 0;

foreach ($dept_table as $d)
{	
	$v_dname = $d['dname'];
	$v_dnumber = $d['dnumber'];
	
	for ($i = 0; $i < count($emp_types); $i++)
	{
		$v_insert_number++;
		$v_emp_type = $emp_types[$i];
	     	$v_proj_type = $proj_types[$i];
	     	$v_num_emps = 0;
	     	$v_hours = 0;
	     	$v_cost = 0;
		
	     	foreach($main_table as $m)
	     	{
			$relevant = 0;
		     	switch ($i)
		     	{
				case 0:
					if ($m['dno'] == $v_dnumber)
					{
						$relevant = 1;
					}
					break;
				case 1:
					if ($m['dno'] == $v_dnumber &&
						$m['dnum'] == $v_dnumber)
					{
						$relevant = 1;
					}
					break;
				case 2:
					if ($m['dno'] == $v_dnumber &&
						$m['dnum'] != $v_dnumber &&
						$m['dnum'] > 0)
					{
						$relevant = 1;
					}
					break;
				case 3:
					if ($m['dno'] != $v_dnumber &&
						$m['dnum'] == $v_dnumber)
					{
						$relevant = 1;
					}
					break;
				case 4:
					if ($m['dnum'] == $v_dnumber)
					{
						$relevant = 1;
					}
					break;
			     }
	
			     if ($relevant)
			     {
				     $v_num_emps++;
	
				     if ($m['hours'] > 0)
				     {
					     $v_hours += $m['hours'];
					     $v_cost += $m['cost'];
				     }
			     }			     
		     }
	
		     $ins_query = "BEGIN cs450.ins_dept_summary( 
				     	'$v_dname',
					$v_dnumber,
				     	'$v_emp_type',
			     		'$v_proj_type',
			     		$v_num_emps,
			    		$v_hours,
			     		$v_cost,
			     		'$credit_uid',
			     		$v_insert_number
			     	); END;";
	     $ins_query = preg_replace('/\r/', '', $ins_query);
	     print("<h4>Insert Number: $v_insert_number</h4><br/>");
	     print("Inserting with <pre>$ins_query</pre><br/>");
	     $ins = $con->query($ins_query);
	     error_check($ins, 'procedure call<br/>');
	     $ins->free();
	     }		     
     }

     $main->free();
     $mn->free();
     $dept->free();
     $dep->free();
     
     DisplayResults();
     # important to free memory used by $result
     $con->disconnect();

}
  ### functions declared
  function DisplayResults(){
     global $con, $credit_uid;
     $query="select * from TABLE(cs450.v_dept_summary('$credit_uid'))";
     print <<<EOHTML
        <h4>Checking results of Database Procedure Inserts</h4>
        Using query: <pre class='query'>$query</pre>
EOHTML;
     $result = $con->query($query);
     error_check($result,'querying v_dept_summary');
     ShowTable($result);
     $result->free();
  }
  function ShowTable($result){
     echo "<br><table border='1'>";
     $header=0;
     while ($array = $result->fetchRow(MDB2_FETCHMODE_ASSOC)) {
        if (!$header){
           $header=1;
           echo "<TR>";
           foreach($array as $key => $field){
              echo("<th>$key</th>");
           }
           echo "</TR>";
        }
        echo "<tr>";
        foreach ($array as  $field){
           echo("<td>$field</td>");
        }
        echo "</tr>";
     }
     echo "</table>";
  }
  function error_check($e2check,$e_in_msg){
     global $con;
     if(PEAR::isError($e2check)) {
        echo("<br>Error in $e_in_msg : ");
        echo( $e2check->getMessage() );
        echo( ' - ');
        echo( $e2check->getUserinfo());
        $con->disconnect();
        print "</body></html>";
        exit;
     
     }else {
        echo("No error in $e_in_msg<br>");
     }
  }
  function style (){
     return <<<EOSTYLE
<style type='text/css'>
H1,H2,H3,H4{background:#ddddbb;}
TABLE{background:#ddbbdd;}
PRE{font-style:italic;
background:#bbdddd;
}
div.notice{background:#ddbbbb;
 font-size: 120%;}
</style>
EOSTYLE;
  }
  function OverallExplanation(){
     return <<<OVERALL
<h1>The Joy of Working with Oracle Using PHP</h1><br> <br>
<p>This is my report on the department summary. Within this report,
I will be discussing the steps I took and the results that came out.
This process has also been done in PL/SQL.</p>

<p>To start, I will clean the table and make sure that there is no
rows initially. Once that's established, the department name and 
number are pulled from the DEPARTMENT table. After that, I will 
create a table that will be the platform for the rest of the values. 
It will contain all values necessary to make the comparisons, values
like the project and employee department number, SSN, hours, and total
cost calculated by salary. These are pulled from the EMPLOYEE, WORKS_ON,
and PROJECT tables. Because of how weird fetchRow() is, I decided to 
simply create a copy of each query result in a different variable, 
so that I can do computations and conditions on one and display the
table with the other.</p>

<p>That would be the easiest part. Once the setup is established, 
I iterate through each department, updating the name and number 
each time. Within that for loop, I make a for loop for each of
the five results (saved into an array, and then into the 
respective attribute) we must output as rows in our table, then run
through the main table row by row. With each row, I check which
result we are seeking (NOMINAL-NA, DEPT-DEPT, etc.), and if the
row matches it, I add on the cost and hours, then increment the
number of employees. Once finished, I simply insert each one into
the CS450.DEPT_SUMMARY table. There are tests to make sure it is
correct each time. Enjoy!</p>
    <table border="1">
    <tr><td colspan="2">This page is the solely the work of</td></tr>
    <tr><td>George March&eacute</td><td>gmarche</td></tr>
    <tr><td colspan="2">I have not received aid from anyone<br>
    else in this assignment. I have not given <br>
      anyone else aid in the 
    assignment</td></tr>
    </table><br/>
OVERALL;
  }
  function MakeConnection($uid,$sid){
     // $_POST is automatically global
	  // so it can be used below
     $dsn= array(
        'phptype'  => 'oci8',
        'dbsyntax' => 'oci8',
        'username' => $uid,
        'password' => $_POST['password'],
        'hostspec' => "oracle.cs.odu.edu",
        'service'  => $sid,
     );
     $con = MDB2::connect($dsn, array('emulate_prepared' => false));
     return $con;
  }
  function VerifyUID($uid){
     global $partner1, $partner2;
     $legal_names=array(
        'CS450','CS450A','CS450B','CS450C','CS450D');
     // Add the team members to the array by replacing PARTNER1 and PARTNER2 
     // with your team's Oracle LOGINS
     $legal_names[] = $partner1;
     $legal_names[] = $partner2;

     if ( ! in_array($uid, $legal_names)){
        print <<<HTML
       <h1>ACCESS DENIED</h1>
       </body>
       </html>
HTML;
        exit;
     }
  }
function LoginForm(){
  return <<<_HTML_
  <h2>Supply information to login to your Oracle Account</h2><br/>
    <form method="post" action="$_SERVER[PHP_SELF]">
    Enter your oracle account id: <input type="text" name="user_name" id="user_name">
    <br/>
    Enter your oracle account password: <input type="password" name="password" id="password">
    <br/>
    Enter your oracle account SID: <input type="text" name="sid" id="sid">
    <br/>
    <input type='submit' value='SUBMIT INFO'>
    </form>
_HTML_;
}
?>

</body>
</html>
