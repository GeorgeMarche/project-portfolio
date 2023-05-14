<?php
#  This file is used in debugging your PHP report
#  See the php debugging resource in the resource page.
# Edit the following three lines to be your 
#   Oracle user name
#   Oracle password
#   Oracle SID (like FC22 or SC23)
$user = 'gmarche';
$password = 'George2015';
$sid = 'FC20';
$bad = 'NOT SET';
if ( $user == $bad || $password == $bad || $sid == $bad){
   echo 'YOU HAVE TO EDIT POST.PHP BEFORE YOU CAN USE IT'."\n";
   exit(1);
}
if ( !preg_match("/[FS]C2\d/i", $sid )){
   echo "INVALID SID: $sid\n";
   echo "First char: S[pring] or F[all]\n";
   echo "Second: C\n";
   echo "Followed by 2 digit year\n";
   echo "Example: FC22 or SC23\n";
   exit(1);
}
$_POST = array(
    'user_name' => strtoupper($user),
    'password'  => $password,
    'sid'       => strtoupper($sid),
    );
?>

