<html>
<head>
<title>Dianna Cohen Portfolio</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript" type="text/JavaScript">
<!--

var w=752, h=452, rw=752, rh=452, valScroll="no"
if (navigator.platform == "Win32") {
	h=602};
if (screen.availWidth){
	rw=screen.availWidth;
	rh=screen.availHeight
} else {
	rw=screen.width, rh=screen.height};
if (rw < 780) {
	w=rw};
if (rh < 601) {
	h=rh;
	valScroll="yes"};
var winl = (screen.width - w) / 2;
var wint = ((screen.height - h - 20) / 2);
if (winl < 0) {
	winl=0};
if (wint < 0) {
	wint=0};
var winprops = 'top='+wint+',left='+winl;

function bookMark() {
	if ((navigator.appName == "Microsoft Internet Explorer") && (parseInt(navigator.appVersion) >= 4) && (navigator.platform == "Win32")){
	window.external.AddFavorite ('http://www.deselle.com','Wayne M. DeSelle Design');}
	else {if (navigator.platform == "Win32"){
	msg = "CTRL"}
	else {msg = "Command"};
	alert("Click OK to close this message box, then hit " + msg + "-D");}
}

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

function MM_callJS(jsStr) { //v2.0
  return eval(jsStr)
}

function openSlow(val) {
	if (val) {
	MM_openBrWindow('/_portfolio/home.html','','resizable=yes,toolbar=no,location=no,status=no,menubar=no,scrollbars='+valScroll+',width='+w+',height='+h+','+winprops)
	} else {
	setTimeout("MM_openBrWindow('/_portfolio/home.html','','resizable=yes,toolbar=no,location=no,status=no,menubar=no,scrollbars='+valScroll+',width='+w+',height='+h+','+winprops)",800);}
}2
//-->
</script>
</head>

<body bgcolor="#54032C" text="#666666" link="#666666" vlink="#666666" alink="#666666">
<p align="center">&nbsp;</p>
<table width="99%" height="99%"  border="0" align="center" cellpadding="10" cellspacing="0">
  <tr align="center" valign="middle">
    <th scope="col"><div align="center"></div></th>
    <th scope="col"><div align="center"></div></th>
    <th scope="col"><div align="center"></div></th>
  </tr>
  <tr align="center" valign="middle">
    <td><div align="center"></div></td>
    <td><p align="center"><font color="#666666" size="5" face="Verdana, Arial, Helvetica, sans-serif">Welcome to DiannaCohen.com<br>
      <img src="_portfolio/spacer.gif" width="40" height="40" onLoad="MM_callJS('openSlow(3773530)');MM_callJS('openSlow(3773530);')"><br>
    </font><font face="Verdana, Arial, Helvetica, sans-serif" size="3">Site should open in a new window. If it fails to do so, click <a href="_portfolio/home.html">here</a></font></p>
      <p align="center"><font color="#666666" size="1" face="Verdana, Arial, Helvetica, sans-serif">This site and all its contents &copy;2007 Dianna Cohen. All rights reserved. <br>
  Site art direction by Wayne M. DeSelle / <a href="http://www.deselle.com" target="_blank">www.deselle.com </a></font></p>
    </td>
    <td><div align="center"></div></td>
  </tr>
  <tr align="center" valign="middle">
    <td><div align="center"></div></td>
    <td><div align="center"></div></td>
    <td><div align="center"></div></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
</body>
</html>
