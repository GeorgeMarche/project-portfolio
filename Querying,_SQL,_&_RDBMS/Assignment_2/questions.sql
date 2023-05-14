rem Authors: George Marche <gmarche>
rem SQL Assignment, Fall 2020
rem
rem ====================================================================
rem Question 1
rem 
rem Retrieve the first and last names and department number and name of
rem all employees directly supervised by James Borg. Show results in
rem ascending alpha order (by last name and then first name).
rem
rem Column Headings: FNAME LNAME DNUMBER DNAME
rem ====================================================================
rem
SELECT fname, lname, dnumber, dname
FROM employee 
JOIN department
ON dno = dnumber
WHERE superssn IN (
	SELECT ssn
	FROM employee
	WHERE fname = 'James'
	AND lname = 'Borg')
ORDER BY lname, fname;
rem
rem ====================================================================
rem Question 2
rem 
rem Retrieve the name and number of departments which have employees who
rem do not work on at least one project. Show results in ascending alpha
rem order. (NOTE: a department should appear on this list if it has an
rem employee who does not work on any project at all.)
rem
rem Column Headings: DNAME DNUMBER
rem ====================================================================
rem
SELECT DISTINCT dname, dnumber
FROM employee 
JOIN department
ON dnumber = dno
WHERE ssn NOT IN (
	SELECT essn
	FROM works_on)
ORDER BY dname;
rem
rem ====================================================================
rem Question 3
rem 
rem For each department, list the department name and the total number
rem of hours assigned to projects controlled by the department
rem (irrespective of the employee to whom they are assigned) and the
rem total number of hours assigned to employees of the department
rem (irrespective of the project involved). Show results in ascending
rem alpha order.
rem
rem Column Headings: DNAME PROJ_HRS EMP_HRS
rem ====================================================================
rem
WITH tot_prj_hrs AS (
	SELECT dname, dnumber, SUM(hours)"PROJ_HRS"
	FROM department 
	JOIN project 
	ON dnumber = dnum
	JOIN works_on
       	ON pnumber = pno
	GROUP BY dname, dnumber),
tot_emp_hrs AS (
	SELECT dno, SUM(hours)"EMP_HRS"
	FROM employee 
	JOIN works_on
	ON ssn = essn
	GROUP BY dno)
SELECT dname, "PROJ_HRS", "EMP_HRS"
FROM tot_prj_hrs 
JOIN tot_emp_hrs
ON dnumber = dno
ORDER BY dname;
rem
rem ====================================================================
rem Question 4
rem
rem Retrieve the names of departments which have at least one project
rem which employs every one of the employees of the department that
rem controls the project. Also show the name of the project. Show
rem results in ascending alpha order.
rem
rem Column Headings: DNAME PNAME
rem ====================================================================
rem
WITH prj_dept_emps AS (
	SELECT dname, dnumber, pname, COUNT(ssn) "proj_count"
	FROM department 
	JOIN project
	ON dnumber = dnum
	JOIN works_on
       	ON pnumber = pno
	JOIN employee
	ON essn = ssn
	WHERE dno = dnum
	GROUP BY dname, dnumber, pname),
dept_emps AS (
	SELECT dno, COUNT(ssn) "dept_count"
	FROM employee
	GROUP BY dno)
SELECT dname, pname
FROM prj_dept_emps JOIN dept_emps
ON dnumber = dno
WHERE "proj_count" = "dept_count"
ORDER BY dname, pname;
rem
rem ====================================================================
rem Question 5
rem 
rem Retrieve the first and last names of employees who work on projects
rem which are not controlled by their departments. Also show the names
rem of the projects, the employee's department number, and the number of
rem the project's controlling department. (All of this should be shown 
rem in the same result table.) Show results in ascending alpha order (by
rem last name and then first name and then project name).
rem
rem Column Headings: FNAME LNAME PNAME E_DNUM P_DNUM
rem ====================================================================
rem
SELECT fname, lname, pname, dno "E_DNUM", dnum "P_DNUM"
FROM employee
JOIN works_on
ON ssn = essn
JOIN project
ON pno = pnumber
WHERE dno != dnum
ORDER BY lname, fname, pname;
rem
rem ====================================================================
rem Question 6
rem
rem Retrieve the first and last names of employees who work on more than
rem the average number of projects. (Note: employees who do not work on
rem any project are to be included in the average.) Display their names,
rem the number of projects they work on, and the average number of
rem projects. (The same average should be repeated in each row.) Show
rem results in ascending alpha order (by last name and then first name).
rem [The average number of projects is the average number of projects
rem worked on per employee.]
rem
rem Column Headings: FNAME LNAME NUM_PRJ PRJ_AVG
rem ====================================================================
rem
WITH num_prj AS (
	SELECT fname, lname, COUNT(pno) "NUM_PRJ"
	FROM employee 
	LEFT JOIN works_on
	ON ssn = essn
	GROUP BY fname, lname),
prj_avg AS (
	SELECT AVG("NUM_PRJ") "PRJ_AVG"
	FROM num_prj)
SELECT *
FROM num_prj, prj_avg
WHERE "NUM_PRJ" > "PRJ_AVG"
ORDER BY lname, fname;
rem
rem ====================================================================
rem Question 7
rem 
rem Retrieve the name and number of the project which uses the most
rem employees. Also show the total number of employees for that project.
rem If there is more than one project that has attained that maximum,
rem list them all. Show results in ascending alpha order.
rem
rem Column Headings: PNAME PNUMBER E_TOTAL
rem ====================================================================
rem
SELECT pname, pnumber, COUNT(essn) "E_TOTAL"
FROM project 
JOIN works_on
ON pnumber = pno
HAVING COUNT(essn) = (
	SELECT MAX(COUNT(essn))
	FROM works_on
	GROUP BY pno)
GROUP BY pname, pnumber
ORDER BY pname;
rem
rem ====================================================================
rem Question 8
rem 
rem Do any departments have a location in which they have no projects?
rem Retrieve the names of departments which have at least one location
rem which is not the same as any of the locations of the department's
rem projects. Show results in ascending alpha order. [This means that
rem one department location is different from every location of every
rem project of that department.]
rem
rem Column Heading: DNAME
rem ====================================================================
rem
SELECT DISTINCT dname
FROM dept_locations l
JOIN department d
ON l.dnumber = d.dnumber
WHERE dlocation NOT IN (
	SELECT DISTINCT dlocation
	FROM dept_locations
	JOIN project
	ON dnumber = dnum
	WHERE dlocation = plocation)
ORDER BY dname;
rem
rem ====================================================================
rem Question 9
rem 
rem List the names of dependents who have the same first name as an
rem employee of whom they are not the dependent. Also show the ssn of
rem the employee with the same first name and the ssn of the employee on
rem whom the dependent is dependent (dependent.essn). (All of this
rem should be shown in the same table.) Show results in ascending alpha
rem order.
rem
rem Column Headings: DEPENDENT_NAME NON_PATRON PATRON
rem ====================================================================
rem
SELECT dependent_name, ssn, essn
FROM dependent
JOIN employee
ON dependent_name = fname
WHERE ssn != essn
ORDER BY dependent_name;
rem
rem ====================================================================
rem Question 11
rem
rem GREETING. When you signed up for this course you were asked to
rem verify that your database account was set up properly by typing
rem select * from CS450.GREETING;
rem Write an SQL statemtnt that retrieves 1) the text of the SQL query
rem that constitutes the view, 2) the length of that query, and 3) the
rem datatype of the sole column in the result.
rem To do so you will need to find out which tables in the Oracle data
rem dictionary concern views. You will also need to find out where the
rem information about columns is stored. (Confusingly, column
rem information for views is stored in the same data dictionary table as
rem that for columns of tables.) You can find out by searching DICT. The
rem SQL LIKE operator will be useful here. Check LIKE out in our
rem textbook.
rem IMPORTANT: To make the output of your query presentable, you must
rem place the following lines just before your query (without the rem's
rem at the beginning):
rem 	set linesize 100
rem	set long 200
rem 	col text format a62
rem	col text_length format 999
rem	col data_type format a10
rem
rem Column Headings: TEXT TEXT_LENGTH DATA_TYPE
rem ====================================================================
rem
set linesize 100
set long 200
col text format a62
col text_length format 999
col data_type format a10
WITH data_type AS (
	SELECT data_type
	FROM all_tab_cols
	WHERE table_name = 'GREETING')
SELECT text, text_length, data_type
FROM all_views, data_type
WHERE view_name = 'GREETING';
rem
rem ====================================================================
rem Question 12
rem
rem DEPENDENTS. Write a query of the Oracle data dictionary that will
rem retrieve the column names, data types, and data lengths of the table
rem CS450.DEPENDENT. You may NOT use describe (or desc) for this answer.
rem Your query must begin with SELECT. Show results in ascending alpha
rem order on column name.
rem
rem Column Headings: COLNAME DTYPE DLENGTH
rem ====================================================================
rem
SELECT column_name "COLNAME", data_type "DTYPE", data_length "DLENGTH"
FROM all_tab_cols
WHERE table_name = 'DEPENDENT'
ORDER BY column_name;
rem
rem ====================================================================
rem Question 13
rem 
rem FOREIGN KEY. Write a query which retrieves from the Oracle data
rem dictionary the names of all the tables that contain a foreign key
rem pointing to the CS450.EMPLOYEE table. It may help to know that
rem 'CONSTRAINTS' is sometimes abbreviated 'CONS' in the data dictionary
rem table/view names. Show results in ascending alpha order on table
rem name.
rem 
rem Column Headings: TABLE_NAME
rem ====================================================================
rem
SELECT table_name
FROM all_cons_columns
WHERE constraint_name LIKE '%_EMP_FRF'
ORDER BY table_name;
rem
rem ====================================================================
