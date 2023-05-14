<HTML>
<HEAD>
<TITLE>Gene Land</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1">
<script language="JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v3.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
</HEAD>
<BODY BGCOLOR=#CCCCCC leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" background="images/bg.gif" onLoad="MM_preloadImages('images/about_lit.gif','images/fanclub_lit.gif','images/live_lit.gif','images/lyrics_lit.gif','images/cds_lit.gif')">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
  <tr valign="middle" align="center"> 
    <td>
<table border=0 cellpadding=0 cellspacing=0>
        <tr> 
          <td rowspan=7> <img src="images/main_01.gif" width=53 height=400></td>
          <td> <img src="images/main_02.gif" width=274 height=104></td>
          <td rowspan=4> <img src="images/main_03.gif" width=51 height=205></td>
          <td rowspan=2> <img src="images/main_04.jpg" width=125 height=135></td>
          <td rowspan=2> <img src="images/main_05.gif" width=87 height=135></td>
        </tr>
        <tr> 
          <td> <a href="about/index.html" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image1','','images/about_lit.gif',1)"><img src="images/about.gif" width=274 height=31 border="0" name="Image1"></a></td>
        </tr>
        <tr> 
          <td> <a href="fanclub/index.html" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','images/fanclub_lit.gif',1)"><img src="images/fanclub.gif" width=274 height=35 border="0" name="Image2"></a></td>
          <td colspan=2 rowspan=2> <img src="images/main_08.jpg" width=212 height=70></td>
        </tr>
        <tr> 
          <td> <a href="live/index.html" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','','images/live_lit.gif',1)"><img src="images/live.gif" width=274 height=35 border="0" name="Image3"></a></td>
        </tr>
        <tr> 
          <td> <a href="lyrics/index.html" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','images/lyrics_lit.gif',1)"><img src="images/lyrics.gif" width=274 height=36 border="0" name="Image4"></a></td>
          <td colspan=3 rowspan=3> <img src="images/main_11.jpg" width=263 height=195></td>
        </tr>
        <tr> 
          <td> <a href="cds/index.html" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image5','','images/cds_lit.gif',1)"><img src="images/cds.gif" width=274 height=37 border="0" name="Image5"></a></td>
        </tr>
        <tr> 
          <td> <img src="images/main_13.gif" width=274 height=122></td>
        </tr>
      </table></td></tr></table>
</BODY>
</HTML>