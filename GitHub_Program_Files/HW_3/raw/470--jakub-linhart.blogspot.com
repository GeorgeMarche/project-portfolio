<!DOCTYPE html>
<html class='v2' dir='ltr' xmlns='http://www.w3.org/1999/xhtml' xmlns:b='http://www.google.com/2005/gml/b' xmlns:data='http://www.google.com/2005/gml/data' xmlns:expr='http://www.google.com/2005/gml/expr'>
<head>
<link href='https://www.blogger.com/static/v1/widgets/3416767676-css_bundle_v2.css' rel='stylesheet' type='text/css'/>
<meta content='IE=EmulateIE7' http-equiv='X-UA-Compatible'/>
<meta content='width=1100' name='viewport'/>
<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'/>
<meta content='blogger' name='generator'/>
<link href='http://jakub-linhart.blogspot.com/favicon.ico' rel='icon' type='image/x-icon'/>
<link href='http://jakub-linhart.blogspot.com/' rel='canonical'/>
<link rel="alternate" type="application/atom+xml" title="Got run over on information highway - Atom" href="http://jakub-linhart.blogspot.com/feeds/posts/default" />
<link rel="alternate" type="application/rss+xml" title="Got run over on information highway - RSS" href="http://jakub-linhart.blogspot.com/feeds/posts/default?alt=rss" />
<link rel="service.post" type="application/atom+xml" title="Got run over on information highway - Atom" href="https://www.blogger.com/feeds/8089455461752760430/posts/default" />
<!--[if IE]><script type="text/javascript" src="https://www.blogger.com/static/v1/jsbin/4244862144-ieretrofit.js"></script>
<![endif]-->
<meta content='http://jakub-linhart.blogspot.com/' property='og:url'/>
<meta content='Got run over on information highway' property='og:title'/>
<meta content='' property='og:description'/>
<!--[if IE]> <script> (function() { var html5 = ("abbr,article,aside,audio,canvas,datalist,details," + "figure,footer,header,hgroup,mark,menu,meter,nav,output," + "progress,section,time,video").split(','); for (var i = 0; i < html5.length; i++) { document.createElement(html5[i]); } try { document.execCommand('BackgroundImageCache', false, true); } catch(e) {} })(); </script> <![endif]-->
<title>Got run over on information highway</title>
<style id='page-skin-1' type='text/css'><!--
/*
-----------------------------------------------
Blogger Template Style
Name:     Simple
Designer: Josh Peterson
URL:      www.noaesthetic.com
----------------------------------------------- */
/* Variable definitions
====================
<Variable name="keycolor" description="Main Color" type="color" default="#66bbdd"/>
<Group description="Page Text" selector="body">
<Variable name="body.font" description="Font" type="font"
default="normal normal 12px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
<Variable name="body.text.color" description="Text Color" type="color" default="#222222"/>
</Group>
<Group description="Backgrounds" selector=".body-fauxcolumns-outer">
<Variable name="body.background.color" description="Outer Background" type="color" default="#66bbdd"/>
<Variable name="content.background.color" description="Main Background" type="color" default="#ffffff"/>
<Variable name="header.background.color" description="Header Background" type="color" default="transparent"/>
</Group>
<Group description="Links" selector=".main-outer">
<Variable name="link.color" description="Link Color" type="color" default="#2288bb"/>
<Variable name="link.visited.color" description="Visited Color" type="color" default="#888888"/>
<Variable name="link.hover.color" description="Hover Color" type="color" default="#33aaff"/>
</Group>
<Group description="Blog Title" selector=".header h1">
<Variable name="header.font" description="Font" type="font"
default="normal normal 60px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
<Variable name="header.text.color" description="Title Color" type="color" default="#3399bb" />
</Group>
<Group description="Blog Description" selector=".header .description">
<Variable name="description.text.color" description="Description Color" type="color"
default="#777777" />
</Group>
<Group description="Tabs Text" selector=".tabs-inner .widget li a">
<Variable name="tabs.font" description="Font" type="font"
default="normal normal 14px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
<Variable name="tabs.text.color" description="Text Color" type="color" default="#999999"/>
<Variable name="tabs.selected.text.color" description="Selected Color" type="color" default="#000000"/>
</Group>
<Group description="Tabs Background" selector=".tabs-outer .PageList">
<Variable name="tabs.background.color" description="Background Color" type="color" default="#f5f5f5"/>
<Variable name="tabs.selected.background.color" description="Selected Color" type="color" default="#eeeeee"/>
</Group>
<Group description="Post Title" selector="h3.post-title, .comments h4">
<Variable name="post.title.font" description="Font" type="font"
default="normal normal 22px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
</Group>
<Group description="Date Header" selector=".date-header">
<Variable name="date.header.color" description="Text Color" type="color"
default="#222222"/>
<Variable name="date.header.background.color" description="Background Color" type="color"
default="transparent"/>
</Group>
<Group description="Post Footer" selector=".post-footer">
<Variable name="post.footer.text.color" description="Text Color" type="color" default="#666666"/>
<Variable name="post.footer.background.color" description="Background Color" type="color"
default="#f9f9f9"/>
<Variable name="post.footer.border.color" description="Shadow Color" type="color" default="#eeeeee"/>
</Group>
<Group description="Gadgets" selector="h2">
<Variable name="widget.title.font" description="Title Font" type="font"
default="normal bold 11px Arial, Tahoma, Helvetica, FreeSans, sans-serif"/>
<Variable name="widget.title.text.color" description="Title Color" type="color" default="#000000"/>
<Variable name="widget.alternate.text.color" description="Alternate Color" type="color" default="#999999"/>
</Group>
<Group description="Images" selector=".main-inner">
<Variable name="image.background.color" description="Background Color" type="color" default="#ffffff"/>
<Variable name="image.border.color" description="Border Color" type="color" default="#eeeeee"/>
<Variable name="image.text.color" description="Caption Text Color" type="color" default="#222222"/>
</Group>
<Group description="Accents" selector=".content-inner">
<Variable name="body.rule.color" description="Separator Line Color" type="color" default="#eeeeee"/>
<Variable name="tabs.border.color" description="Tabs Border Color" type="color" default="#eeeeee"/>
</Group>
<Variable name="body.background" description="Body Background" type="background"
color="#66bbdd" default="$(color) none repeat scroll top left"/>
<Variable name="body.background.override" description="Body Background Override" type="string" default=""/>
<Variable name="body.background.gradient.cap" description="Body Gradient Cap" type="url"
default="url(http://www.blogblog.com/1kt/simple/gradients_light.png)"/>
<Variable name="body.background.gradient.tile" description="Body Gradient Tile" type="url"
default="url(http://www.blogblog.com/1kt/simple/body_gradient_tile_light.png)"/>
<Variable name="content.background.color.selector" description="Content Background Color Selector" type="string" default=".content-inner"/>
<Variable name="content.padding" description="Content Padding" type="length" default="10px"/>
<Variable name="content.padding.horizontal" description="Content Horizontal Padding" type="length" default="10px"/>
<Variable name="content.shadow.spread" description="Content Shadow Spread" type="length" default="40px"/>
<Variable name="content.shadow.spread.webkit" description="Content Shadow Spread (WebKit)" type="length" default="5px"/>
<Variable name="content.shadow.spread.ie" description="Content Shadow Spread (IE)" type="length" default="10px"/>
<Variable name="main.border.width" description="Main Border Width" type="length" default="0"/>
<Variable name="header.background.gradient" description="Header Gradient" type="url" default="none"/>
<Variable name="header.shadow.offset.left" description="Header Shadow Offset Left" type="length" default="-1px"/>
<Variable name="header.shadow.offset.top" description="Header Shadow Offset Top" type="length" default="-1px"/>
<Variable name="header.shadow.spread" description="Header Shadow Spread" type="length" default="1px"/>
<Variable name="header.padding" description="Header Padding" type="length" default="30px"/>
<Variable name="header.border.size" description="Header Border Size" type="length" default="1px"/>
<Variable name="header.bottom.border.size" description="Header Bottom Border Size" type="length" default="1px"/>
<Variable name="header.border.horizontalsize" description="Header Horizontal Border Size" type="length" default="0"/>
<Variable name="description.text.size" description="Description Text Size" type="string" default="140%"/>
<Variable name="tabs.margin.top" description="Tabs Margin Top" type="length" default="0" />
<Variable name="tabs.margin.side" description="Tabs Side Margin" type="length" default="30px" />
<Variable name="tabs.background.gradient" description="Tabs Background Gradient" type="url"
default="url(http://www.blogblog.com/1kt/simple/gradients_light.png)"/>
<Variable name="tabs.border.width" description="Tabs Border Width" type="length" default="1px"/>
<Variable name="tabs.bevel.border.width" description="Tabs Bevel Border Width" type="length" default="1px"/>
<Variable name="date.header.padding" description="Date Header Padding" type="string" default="inherit"/>
<Variable name="date.header.letterspacing" description="Date Header Letter Spacing" type="string" default="inherit"/>
<Variable name="date.header.margin" description="Date Header Margin" type="string" default="inherit"/>
<Variable name="post.margin.bottom" description="Post Bottom Margin" type="length" default="25px"/>
<Variable name="image.border.small.size" description="Image Border Small Size" type="length" default="2px"/>
<Variable name="image.border.large.size" description="Image Border Large Size" type="length" default="5px"/>
<Variable name="page.width.selector" description="Page Width Selector" type="string" default=".region-inner"/>
<Variable name="page.width" description="Page Width" type="string" default="auto"/>
<Variable name="main.section.margin" description="Main Section Margin" type="length" default="15px"/>
<Variable name="main.padding" description="Main Padding" type="length" default="15px"/>
<Variable name="main.padding.top" description="Main Padding Top" type="length" default="30px"/>
<Variable name="main.padding.bottom" description="Main Padding Bottom" type="length" default="30px"/>
<Variable name="paging.background"
color="#ffffff"
description="Background of blog paging area" type="background"
default="transparent none no-repeat scroll top center"/>
<Variable name="footer.bevel" description="Bevel border length of footer" type="length" default="0"/>
<Variable name="startSide" description="Side where text starts in blog language" type="automatic" default="left"/>
<Variable name="endSide" description="Side where text ends in blog language" type="automatic" default="right"/>
*/
/* Content
----------------------------------------------- */
body {
font: normal normal 12px Arial, Tahoma, Helvetica, FreeSans, sans-serif;
color: #222222;
background: #66bbdd none repeat scroll top left;
padding: 0 40px 40px 40px;
}
html body .region-inner {
min-width: 0;
max-width: 100%;
width: auto;
}
a:link {
text-decoration:none;
color: #2288bb;
}
a:visited {
text-decoration:none;
color: #888888;
}
a:hover {
text-decoration:underline;
color: #33aaff;
}
.body-fauxcolumn-outer .fauxcolumn-inner {
background: transparent url(http://www.blogblog.com/1kt/simple/body_gradient_tile_light.png) repeat scroll top left;
_background-image: none;
}
.body-fauxcolumn-outer .cap-top {
position: absolute;
z-index: 1;
height: 400px;
width: 100%;
background: #66bbdd none repeat scroll top left;
}
.body-fauxcolumn-outer .cap-top .cap-left {
width: 100%;
background: transparent url(http://www.blogblog.com/1kt/simple/gradients_light.png) repeat-x scroll top left;
_background-image: none;
}
.content-outer {
-moz-box-shadow: 0 0 40px rgba(0, 0, 0, .15);
-webkit-box-shadow: 0 0 5px rgba(0, 0, 0, .15);
-goog-ms-box-shadow: 0 0 10px #333333;
box-shadow: 0 0 40px rgba(0, 0, 0, .15);
margin-bottom: 1px;
}
.content-inner {
padding: 10px 10px;
}
.content-inner {
background-color: #ffffff;
}
/* Header
----------------------------------------------- */
.header-outer {
background: transparent none repeat-x scroll 0 -400px;
_background-image: none;
}
.Header h1 {
font: normal normal 60px Arial, Tahoma, Helvetica, FreeSans, sans-serif;
color: #3399bb;
text-shadow: -1px -1px 1px rgba(0, 0, 0, .2);
}
.Header h1 a {
color: #3399bb;
}
.Header .description {
font-size: 140%;
color: #777777;
}
.header-inner .Header .titlewrapper {
padding: 22px 30px;
}
.header-inner .Header .descriptionwrapper {
padding: 0 30px;
}
/* Tabs
----------------------------------------------- */
.tabs-inner .section:first-child {
border-top: 1px solid #eeeeee;
}
.tabs-inner .section:first-child ul {
margin-top: -1px;
border-top: 1px solid #eeeeee;
border-left: 0 solid #eeeeee;
border-right: 0 solid #eeeeee;
}
.tabs-inner .widget ul {
background: #f5f5f5 url(http://www.blogblog.com/1kt/simple/gradients_light.png) repeat-x scroll 0 -800px;
_background-image: none;
border-bottom: 1px solid #eeeeee;
margin-top: 0;
margin-left: -30px;
margin-right: -30px;
}
.tabs-inner .widget li a {
display: inline-block;
padding: .6em 1em;
font: normal normal 14px Arial, Tahoma, Helvetica, FreeSans, sans-serif;
color: #999999;
border-left: 1px solid #ffffff;
border-right: 1px solid #eeeeee;
}
.tabs-inner .widget li:first-child a {
border-left: none;
}
.tabs-inner .widget li.selected a, .tabs-inner .widget li a:hover {
color: #000000;
background-color: #eeeeee;
text-decoration: none;
}
/* Columns
----------------------------------------------- */
.main-outer {
border-top: 0 solid #eeeeee;
}
.fauxcolumn-left-outer .fauxcolumn-inner {
border-right: 1px solid #eeeeee;
}
.fauxcolumn-right-outer .fauxcolumn-inner {
border-left: 1px solid #eeeeee;
}
/* Headings
----------------------------------------------- */
h2 {
margin: 0 0 1em 0;
font: normal bold 11px Arial, Tahoma, Helvetica, FreeSans, sans-serif;
color: #000000;
text-transform: uppercase;
}
/* Widgets
----------------------------------------------- */
.widget .zippy {
color: #999999;
text-shadow: 2px 2px 1px rgba(0, 0, 0, .1);
}
.widget .popular-posts ul {
list-style: none;
}
/* Posts
----------------------------------------------- */
.date-header span {
background-color: transparent;
color: #222222;
padding: inherit;
letter-spacing: inherit;
margin: inherit;
}
.main-inner {
padding-top: 30px;
padding-bottom: 30px;
}
.main-inner .column-center-inner {
padding: 0 15px;
}
.main-inner .column-center-inner .section {
margin: 0 15px;
}
.post {
margin: 0 0 25px 0;
}
h3.post-title, .comments h4 {
font: normal normal 22px Arial, Tahoma, Helvetica, FreeSans, sans-serif;
margin: .75em 0 0;
}
.post-body {
font-size: 110%;
line-height: 1.4;
position: relative;
}
.post-body img, .post-body .tr-caption-container, .Profile img, .Image img,
.BlogList .item-thumbnail img {
padding: 2px;
background: #ffffff;
border: 1px solid #eeeeee;
-moz-box-shadow: 1px 1px 5px rgba(0, 0, 0, .1);
-webkit-box-shadow: 1px 1px 5px rgba(0, 0, 0, .1);
box-shadow: 1px 1px 5px rgba(0, 0, 0, .1);
}
.post-body img, .post-body .tr-caption-container {
padding: 5px;
}
.post-body .tr-caption-container {
color: #222222;
}
.post-body .tr-caption-container img {
padding: 0;
background: transparent;
border: none;
-moz-box-shadow: 0 0 0 rgba(0, 0, 0, .1);
-webkit-box-shadow: 0 0 0 rgba(0, 0, 0, .1);
box-shadow: 0 0 0 rgba(0, 0, 0, .1);
}
.post-header {
margin: 0 0 1.5em;
line-height: 1.6;
font-size: 90%;
}
.post-footer {
margin: 20px -2px 0;
padding: 5px 10px;
color: #666666;
background-color: #f9f9f9;
border-bottom: 1px solid #eeeeee;
line-height: 1.6;
font-size: 90%;
}
#comments .comment-author {
padding-top: 1.5em;
border-top: 1px solid #eeeeee;
background-position: 0 1.5em;
}
#comments .comment-author:first-child {
padding-top: 0;
border-top: none;
}
.avatar-image-container {
margin: .2em 0 0;
}
#comments .avatar-image-container img {
border: 1px solid #eeeeee;
}
/* Accents
---------------------------------------------- */
.section-columns td.columns-cell {
border-left: 1px solid #eeeeee;
}
.blog-pager {
background: transparent none no-repeat scroll top center;
}
.blog-pager-older-link, .home-link,
.blog-pager-newer-link {
background-color: #ffffff;
padding: 5px;
}
.footer-outer {
border-top: 0 dashed #bbbbbb;
}
/* Mobile
----------------------------------------------- */
body.mobile  {
padding: 0;
}
.mobile .content-inner {
padding: 0;
}
.mobile .content-outer {
-webkit-box-shadow: 0 0 3px rgba(0, 0, 0, .15);
box-shadow: 0 0 3px rgba(0, 0, 0, .15);
padding: 0 40px;
}
body.mobile .AdSense {
margin-left: -40px;
}
.mobile .tabs-inner .widget ul {
margin-left: 0;
margin-right: 0;
}
.mobile .post {
margin: 0;
}
.mobile .main-inner .column-center-inner .section {
margin: 0;
}
.mobile .main-inner {
padding-top: 20px;
padding-bottom: 20px;
}
.mobile .main-inner .column-center-inner {
padding: 0;
}
.mobile .date-header span {
padding: 0.4em 10px;
margin: 0 -10px;
}
.mobile h3.post-title {
margin: 0;
}
.mobile .blog-pager {
background: transparent;
}
.mobile .footer-outer {
border-top: none;
}
.mobile .main-inner, .mobile .footer-inner {
background-color: #ffffff;
}
.mobile-index-contents {
color: #222222;
}
.mobile-link-button {
background-color: #2288bb;
}
.mobile-link-button a:link, .mobile-link-button a:visited {
color: #ffffff;
}

--></style>
<style id='template-skin-1' type='text/css'><!--
body {
min-width: 1000px;
}
.content-outer, .content-fauxcolumn-outer, .region-inner {
min-width: 1000px;
max-width: 1000px;
_width: 1000px;
}
.main-inner .columns {
padding-left: 0px;
padding-right: 300px;
}
.main-inner .fauxcolumn-center-outer {
left: 0px;
right: 300px;
/* IE6 does not respect left and right together */
_width: expression(this.parentNode.offsetWidth -
parseInt("0px") -
parseInt("300px") + 'px');
}
.main-inner .fauxcolumn-left-outer {
width: 0px;
}
.main-inner .fauxcolumn-right-outer {
width: 300px;
}
.main-inner .column-left-outer {
width: 0px;
right: 100%;
margin-left: -0px;
}
.main-inner .column-right-outer {
width: 300px;
margin-right: -300px;
}
#layout {
min-width: 0;
}
#layout .content-outer {
min-width: 0;
width: 800px;
}
#layout .region-inner {
min-width: 0;
width: auto;
}
--></style>
<link href='http://alexgorbatchev.com/pub/sh/current/styles/shThemeDefault.css' rel='stylesheet' type='text/css'/>
<link href='http://alexgorbatchev.com/pub/sh/current/styles/shCore.css' rel='stylesheet' type='text/css'/>
<script src='http://alexgorbatchev.com/pub/sh/current/scripts/shCore.js' type='text/javascript'></script>
<script src='http://alexgorbatchev.com/pub/sh/current/scripts/shAutoloader.js' type='text/javascript'></script>
<script src='http://alexgorbatchev.com/pub/sh/current/scripts/shBrushCSharp.js' type='text/javascript'></script>
<script src='http://alexgorbatchev.com/pub/sh/current/scripts/shBrushXml.js' type='text/javascript'></script>
<script src='http://alexgorbatchev.com/pub/sh/current/scripts/shBrushSql.js' type='text/javascript'></script>
<script src='http://alexgorbatchev.com/pub/sh/current/scripts/shBrushJScript.js' type='text/javascript'></script>
<link href='https://www.blogger.com/dyn-css/authorization.css?targetBlogID=8089455461752760430&amp;zx=795bc903-ee18-45b6-a24b-6f61110089d8' media='none' onload='if(media!=&#39;all&#39;)media=&#39;all&#39;' rel='stylesheet'/><noscript><link href='https://www.blogger.com/dyn-css/authorization.css?targetBlogID=8089455461752760430&amp;zx=795bc903-ee18-45b6-a24b-6f61110089d8' rel='stylesheet'/></noscript>

</head>
<body class='loading'>
<div class='navbar section' id='navbar'><div class='widget Navbar' data-version='1' id='Navbar1'><script type="text/javascript">
    function setAttributeOnload(object, attribute, val) {
      if(window.addEventListener) {
        window.addEventListener('load',
          function(){ object[attribute] = val; }, false);
      } else {
        window.attachEvent('onload', function(){ object[attribute] = val; });
      }
    }
  </script>
<div id="navbar-iframe-container"></div>
<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
<script type="text/javascript">
      gapi.load("gapi.iframes:gapi.iframes.style.bubble", function() {
        if (gapi.iframes && gapi.iframes.getContext) {
          gapi.iframes.getContext().openChild({
              url: 'https://www.blogger.com/navbar.g?targetBlogID\x3d8089455461752760430\x26blogName\x3dGot+run+over+on+information+highway\x26publishMode\x3dPUBLISH_MODE_BLOGSPOT\x26navbarType\x3dBLUE\x26layoutType\x3dLAYOUTS\x26searchRoot\x3dhttps://jakub-linhart.blogspot.com/search\x26blogLocale\x3den\x26v\x3d2\x26homepageUrl\x3dhttp://jakub-linhart.blogspot.com/\x26vt\x3d-7392708530712620016',
              where: document.getElementById("navbar-iframe-container"),
              id: "navbar-iframe"
          });
        }
      });
    </script><script type="text/javascript">
(function() {
var script = document.createElement('script');
script.type = 'text/javascript';
script.src = '//pagead2.googlesyndication.com/pagead/js/google_top_exp.js';
var head = document.getElementsByTagName('head')[0];
if (head) {
head.appendChild(script);
}})();
</script>
</div></div>
<div class='body-fauxcolumns'>
<div class='fauxcolumn-outer body-fauxcolumn-outer'>
<div class='cap-top'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
<div class='fauxborder-left'>
<div class='fauxborder-right'></div>
<div class='fauxcolumn-inner'>
</div>
</div>
<div class='cap-bottom'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
</div>
</div>
<div class='content'>
<div class='content-fauxcolumns'>
<div class='fauxcolumn-outer content-fauxcolumn-outer'>
<div class='cap-top'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
<div class='fauxborder-left'>
<div class='fauxborder-right'></div>
<div class='fauxcolumn-inner'>
</div>
</div>
<div class='cap-bottom'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
</div>
</div>
<div class='content-outer'>
<div class='content-cap-top cap-top'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
<div class='fauxborder-left content-fauxborder-left'>
<div class='fauxborder-right content-fauxborder-right'></div>
<div class='content-inner'>
<header>
<div class='header-outer'>
<div class='header-cap-top cap-top'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
<div class='fauxborder-left header-fauxborder-left'>
<div class='fauxborder-right header-fauxborder-right'></div>
<div class='region-inner header-inner'>
<div class='header section' id='header'><div class='widget Header' data-version='1' id='Header1'>
<div id='header-inner'>
<div class='titlewrapper'>
<h1 class='title'>
Got run over on information highway
</h1>
</div>
<div class='descriptionwrapper'>
<p class='description'><span>
</span></p>
</div>
</div>
</div></div>
</div>
</div>
<div class='header-cap-bottom cap-bottom'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
</div>
</header>
<div class='tabs-outer'>
<div class='tabs-cap-top cap-top'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
<div class='fauxborder-left tabs-fauxborder-left'>
<div class='fauxborder-right tabs-fauxborder-right'></div>
<div class='region-inner tabs-inner'>
<div class='tabs no-items section' id='crosscol'></div>
<div class='tabs no-items section' id='crosscol-overflow'></div>
</div>
</div>
<div class='tabs-cap-bottom cap-bottom'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
</div>
<div class='main-outer'>
<div class='main-cap-top cap-top'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
<div class='fauxborder-left main-fauxborder-left'>
<div class='fauxborder-right main-fauxborder-right'></div>
<div class='region-inner main-inner'>
<div class='columns fauxcolumns'>
<div class='fauxcolumn-outer fauxcolumn-center-outer'>
<div class='cap-top'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
<div class='fauxborder-left'>
<div class='fauxborder-right'></div>
<div class='fauxcolumn-inner'>
</div>
</div>
<div class='cap-bottom'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
</div>
<div class='fauxcolumn-outer fauxcolumn-left-outer'>
<div class='cap-top'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
<div class='fauxborder-left'>
<div class='fauxborder-right'></div>
<div class='fauxcolumn-inner'>
</div>
</div>
<div class='cap-bottom'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
</div>
<div class='fauxcolumn-outer fauxcolumn-right-outer'>
<div class='cap-top'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
<div class='fauxborder-left'>
<div class='fauxborder-right'></div>
<div class='fauxcolumn-inner'>
</div>
</div>
<div class='cap-bottom'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
</div>
<!-- corrects IE6 width calculation -->
<div class='columns-inner'>
<div class='column-center-outer'>
<div class='column-center-inner'>
<div class='main section' id='main'><div class='widget Blog' data-version='1' id='Blog1'>
<div class='blog-posts hfeed'>

          <div class="date-outer">
        
<h2 class='date-header'><span>2012/05/01</span></h2>

          <div class="date-posts">
        
<div class='post-outer'>
<div class='post hentry'>
<a name='1777525614313373644'></a>
<h3 class='post-title entry-title'>
<a href='http://jakub-linhart.blogspot.com/2012/05/how-to-open-radwindow-without.html'>How to open RadWindow without RadWindowManager</a>
</h3>
<div class='post-header'>
<div class='post-header-line-1'></div>
</div>
<div class='post-body entry-content' id='post-body-1777525614313373644'>
<br />
<div class="MsoNormal">
<span lang="EN-US">I <a href="http://jakub-linhart.blogspot.com/2012/01/i-apologize-for-my-ignorance-dear.html">liberated</a>
my RadWindows from the yoke of the RadWindowManager. Now the question is how to
open such free window.</span></div>
<div class="MsoNormal">
<span lang="EN-US">Some parts
are well described in Telerik </span><a href="http://www.telerik.com/help/aspnet-ajax/window-programming-opening.html"><span lang="EN-US">documentation</span></a><span lang="EN-US">.</span></div>
<div class="MsoNormal">
<br />
<b><span style="font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;;">Client side</span></b></div>
<div class="MsoNormal">
<span lang="EN-US">Function window.radopen
is not usable for manager-less windows. RadWindow client side API should be
employed instead:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">$find('FreeWindow').show();</span></div>
<div class="MsoNormal">
<br />
<span lang="EN-US">It is worth
noting that the same API can be used for RadWindow placed inside
RadWindowManager.</span></div>
<div class="MsoNormal">
<br />
<b><span lang="EN-US">From code behind</span></b></div>
<div class="MsoNormal">
<span lang="EN-US">The only
one relevant opening tool on server-side is property <a href="http://www.telerik.com/help/aspnet-ajax/window-programming-server-side-properties.html">VisibleOnPageLoad</a>. When the property is true, then the window is automatically shown after the page is loaded on the
client. <a href="http://www.telerik.com/help/aspnet-ajax/window-programming-server-side-properties.html">VisibleOnPageLoad</a> is ViewState property so it has to be reset to the
false after OnInit phase otherwise the window will open at all sequent
postbacks (partial and full).</span></div>
<div class="MsoNormal">
<br />
<span lang="EN-US">Is there any other possibility?</span></div>
<div class="MsoNormal">
<br />
<b><span lang="EN-US">From code behind via startup script</span></b></div>
<div class="MsoNormal">
<span lang="EN-US">It is the
same approach as on client side but the script is registered in code behind as
a startup script. Startup script registration is quite basic topic but when it
comes to dealing with GETs/postbacks and partial postbacks within the same
application, things are getting a little bit tricky.</span></div>
<div class="MsoNormal">
<br />
<span lang="EN-US">A universal
way how to open a RadWindow from code behind is:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">function</span><span style="font-family: Consolas; font-size: 9.5pt;"> openWindowOnPageLoad(windowId) {</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">var</span> fn = <span style="color: blue;">function</span> ()
{</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: blue;">var</span> window = $find(windowId);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
window.show();</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Sys.Application.remove_load(fn);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; };</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;
Sys.Application.add_load(fn);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">}</span></div>
<div class="MsoNormal">
<br />
<span lang="EN-US">Code
behind:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: #2b91af; font-family: Consolas; font-size: 9.5pt;">ScriptManager</span><span style="font-family: Consolas; font-size: 9.5pt;">.RegisterStartupScript(<span style="color: blue;">this</span>, <span style="color: blue;">this</span>.GetType(),
<span style="color: #a31515;">"openWindow"</span>, <span style="color: #a31515;">"openWindowOnPageLoad('FreeWindow');"</span>, <span style="color: blue;">true</span>);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal">
<span lang="EN-US">What an odd
code! Complexity is the price for robustness. Reasons are explained in this </span><a href="http://jakub-linhart.blogspot.com/2012/04/script-registration-labyrinth-startup.html"><span lang="EN-US">blog post</span></a><span lang="EN-US">.</span></div>
<div style='clear: both;'></div>
</div>
<div class='post-footer'>
<div class='post-footer-line post-footer-line-1'><span class='post-author vcard'>
</span>
<span class='post-timestamp'>
at
<a class='timestamp-link' href='http://jakub-linhart.blogspot.com/2012/05/how-to-open-radwindow-without.html' rel='bookmark' title='permanent link'><abbr class='published' title='2012-05-01T09:59:00+02:00'>9:59 AM</abbr></a>
</span>
<span class='post-comment-link'>
<a class='comment-link' href='http://jakub-linhart.blogspot.com/2012/05/how-to-open-radwindow-without.html#comment-form' onclick=''>5
comments</a>
</span>
<span class='post-icons'>
<span class='item-control blog-admin pid-713917052'>
<a href='https://www.blogger.com/post-edit.g?blogID=8089455461752760430&postID=1777525614313373644&from=pencil' title='Edit Post'>
<img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
</a>
</span>
</span>
<div class='post-share-buttons goog-inline-block'>
<a class='goog-inline-block share-button sb-email' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=1777525614313373644&target=email' target='_blank' title='Email This'><span class='share-button-link-text'>Email This</span></a><a class='goog-inline-block share-button sb-blog' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=1777525614313373644&target=blog' onclick='window.open(this.href, "_blank", "height=270,width=475"); return false;' target='_blank' title='BlogThis!'><span class='share-button-link-text'>BlogThis!</span></a><a class='goog-inline-block share-button sb-twitter' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=1777525614313373644&target=twitter' target='_blank' title='Share to Twitter'><span class='share-button-link-text'>Share to Twitter</span></a><a class='goog-inline-block share-button sb-facebook' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=1777525614313373644&target=facebook' onclick='window.open(this.href, "_blank", "height=430,width=640"); return false;' target='_blank' title='Share to Facebook'><span class='share-button-link-text'>Share to Facebook</span></a><a class='goog-inline-block share-button sb-pinterest' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=1777525614313373644&target=pinterest' target='_blank' title='Share to Pinterest'><span class='share-button-link-text'>Share to Pinterest</span></a>
</div>
</div>
<div class='post-footer-line post-footer-line-2'><span class='post-labels'>
Tags:
<a href='http://jakub-linhart.blogspot.com/search/label/ASP.NET' rel='tag'>ASP.NET</a>,
<a href='http://jakub-linhart.blogspot.com/search/label/javascript%20registration' rel='tag'>javascript registration</a>,
<a href='http://jakub-linhart.blogspot.com/search/label/RadWindow' rel='tag'>RadWindow</a>
</span>
</div>
<div class='post-footer-line post-footer-line-3'><span class='post-location'>
</span>
</div>
</div>
</div>
</div>

          </div></div>
        

          <div class="date-outer">
        
<h2 class='date-header'><span>2012/04/24</span></h2>

          <div class="date-posts">
        
<div class='post-outer'>
<div class='post hentry'>
<a name='804614692600348334'></a>
<h3 class='post-title entry-title'>
<a href='http://jakub-linhart.blogspot.com/2012/04/script-registration-labyrinth-startup_24.html'>Script registration labyrinth &#8211; startup scripts and $find (alternative)</a>
</h3>
<div class='post-header'>
<div class='post-header-line-1'></div>
</div>
<div class='post-body entry-content' id='post-body-804614692600348334'>
<div class="MsoNormal">
<span lang="EN-US">I described
a universal way how to register startup script that invokes $find javascript
function. This solution is taken from AJAX Control Toolkit and looks like this:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">(<span style="color: blue;">function</span> () {</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">var</span> fn = <span style="color: blue;">function</span> ()
{</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: blue;">var</span> control = $find(<span style="color: maroon;">'someControl'</span>);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;control.doSomething();</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sys.Application.remove_load(fn);</span><span style="font-family: &quot;Courier New&quot;; font-size: 10pt;"></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; };</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;
Sys.Application.add_load(fn);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">})();</span></div>
<div class="MsoNormal">
<span lang="EN-US">There are
other possibilities. I found a solution proposed on Telerik&#8217;s forum: use
setTimeout javascript function to postpone the execution of $find until all
controls are instantiated by $create functions.</span></div>
<div class="MsoNormal">
<span lang="EN-US">The trick
is used by Telerik ASP.NET Ajax controls, particularly for scripts registered
into </span><a href="http://www.telerik.com/help/aspnet-ajax/p_telerik_web_ui_radajaxcontrol_responsescripts.html"><span lang="EN-US">RadAjaxManager.ResponseScripts</span></a><span lang="EN-US"> collection. If you try this
fragment:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">string</span><span style="font-family: Consolas; font-size: 9.5pt;"> script = <span style="color: blue;">string</span>.Format(<span style="color: #a31515;">"alert($find('{0}'));"</span>,
Control1.ClientID);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">AjaxManager1.ResponseScripts.Add(script);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal">
<span lang="EN-US">It will
result into this output:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;">
<span style="font-family: &quot;Courier New&quot;; font-size: 10pt;">setTimeout(function(){alert($find('Control1'));},
0);</span></div>
<div class="MsoNormal">
<br /></div>
<div class="MsoNormal">
<span lang="EN-US">It works
well for partial postbacks but not for full postbacks. No surprise there
because RadAjaxManager is inherently tied to partial postbacks. It can be used
for full postbacks as well anyway. It is a pitty because there is no unified
way how to register startup scripts for both postback types in Telerik ASP.NET
AJAX controls (at least in current version &#8211; 2012.1.411). You have to check the
request type (GET/full postback vs. partial postback) and decide how to
register the startup script.</span></div>
<div class="MsoNormal">
<span lang="EN-US">It is so
easy to fix this approach. Just wrap the setTimeout function to init event
handler:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">Sys.Application.add_init(<span style="color: blue;">function</span>
() {</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;
setTimeout(<span style="color: blue;">function</span> () {</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
alert($find(<span style="color: maroon;">'Control1'</span>));</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; }, 0);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">});</span></div>
<div class="MsoNormal">
<br /></div>
<span lang="EN-US" style="font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; font-size: 11pt; line-height: 115%;">Here
is full </span><span style="font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; font-size: 11pt; line-height: 115%;"><a href="https://gist.github.com/2385921"><span lang="EN-US">markup and code-behind</span></a></span><span lang="EN-US" style="font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; font-size: 11pt; line-height: 115%;">
(Telerik ASP.NET AJAX controls are required).</span>
<div style='clear: both;'></div>
</div>
<div class='post-footer'>
<div class='post-footer-line post-footer-line-1'><span class='post-author vcard'>
</span>
<span class='post-timestamp'>
at
<a class='timestamp-link' href='http://jakub-linhart.blogspot.com/2012/04/script-registration-labyrinth-startup_24.html' rel='bookmark' title='permanent link'><abbr class='published' title='2012-04-24T20:59:00+02:00'>8:59 PM</abbr></a>
</span>
<span class='post-comment-link'>
<a class='comment-link' href='http://jakub-linhart.blogspot.com/2012/04/script-registration-labyrinth-startup_24.html#comment-form' onclick=''>0
comments</a>
</span>
<span class='post-icons'>
<span class='item-control blog-admin pid-713917052'>
<a href='https://www.blogger.com/post-edit.g?blogID=8089455461752760430&postID=804614692600348334&from=pencil' title='Edit Post'>
<img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
</a>
</span>
</span>
<div class='post-share-buttons goog-inline-block'>
<a class='goog-inline-block share-button sb-email' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=804614692600348334&target=email' target='_blank' title='Email This'><span class='share-button-link-text'>Email This</span></a><a class='goog-inline-block share-button sb-blog' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=804614692600348334&target=blog' onclick='window.open(this.href, "_blank", "height=270,width=475"); return false;' target='_blank' title='BlogThis!'><span class='share-button-link-text'>BlogThis!</span></a><a class='goog-inline-block share-button sb-twitter' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=804614692600348334&target=twitter' target='_blank' title='Share to Twitter'><span class='share-button-link-text'>Share to Twitter</span></a><a class='goog-inline-block share-button sb-facebook' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=804614692600348334&target=facebook' onclick='window.open(this.href, "_blank", "height=430,width=640"); return false;' target='_blank' title='Share to Facebook'><span class='share-button-link-text'>Share to Facebook</span></a><a class='goog-inline-block share-button sb-pinterest' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=804614692600348334&target=pinterest' target='_blank' title='Share to Pinterest'><span class='share-button-link-text'>Share to Pinterest</span></a>
</div>
</div>
<div class='post-footer-line post-footer-line-2'><span class='post-labels'>
Tags:
<a href='http://jakub-linhart.blogspot.com/search/label/AJAX' rel='tag'>AJAX</a>,
<a href='http://jakub-linhart.blogspot.com/search/label/ASP.NET' rel='tag'>ASP.NET</a>,
<a href='http://jakub-linhart.blogspot.com/search/label/javascript%20registration' rel='tag'>javascript registration</a>
</span>
</div>
<div class='post-footer-line post-footer-line-3'><span class='post-location'>
</span>
</div>
</div>
</div>
</div>

          </div></div>
        

          <div class="date-outer">
        
<h2 class='date-header'><span>2012/04/14</span></h2>

          <div class="date-posts">
        
<div class='post-outer'>
<div class='post hentry'>
<a name='666282384170839597'></a>
<h3 class='post-title entry-title'>
<a href='http://jakub-linhart.blogspot.com/2012/04/script-registration-labyrinth-startup.html'>Script registration labyrinth &#8211; startup scripts and $find</a>
</h3>
<div class='post-header'>
<div class='post-header-line-1'></div>
</div>
<div class='post-body entry-content' id='post-body-666282384170839597'>
<span lang="EN-US">You are an
ASP.NET developer working for surrealistic corporation. You have an ASP.NET
timer on your ASPX page and it should be disabled when a particular condition
is met. This condition can be evaluated only on the server. There is </span><a href="http://msdn.microsoft.com/en-us/library/system.web.ui.timer.enabled.aspx"><span lang="EN-US">Enabled</span></a><span lang="EN-US"> property in </span><a href="http://msdn.microsoft.com/en-us/library/system.web.ui.timer.aspx"><span lang="EN-US">Timer</span></a><span lang="EN-US"> class that can be easily used to fulfill
customer&#8217;s requirement but it is against corporate identity. You are expected
to use client side API instead.</span><br />
<div class="MsoNormal">
<br /></div>
<div class="MsoNormal">
<span lang="EN-US">OK. You
have a timer:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US" style="color: blue; font-family: Consolas; font-size: 9.5pt;">&lt;</span><span lang="EN-US" style="color: maroon; font-family: Consolas; font-size: 9.5pt;">asp</span><span lang="EN-US" style="color: blue; font-family: Consolas; font-size: 9.5pt;">:</span><span lang="EN-US" style="color: maroon; font-family: Consolas; font-size: 9.5pt;">Timer</span><span lang="EN-US" style="font-family: Consolas; font-size: 9.5pt;">
<span style="color: red;">runat</span><span style="color: blue;">="server"</span>
<span style="color: red;">ID</span><span style="color: blue;">="BretonTimer"</span>
<span style="color: red;">OnTick</span><span style="color: blue;">="BretonTimer_Tick"</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US" style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: red;">Interval</span><span style="color: blue;">="2000"</span> <span style="color: blue;">/&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal">
<span lang="EN-US">To use
client side API of ASP.NET AJAX controls </span><a href="http://msdn.microsoft.com/en-us/library/bb397441.aspx"><span lang="EN-US">$find</span></a><span lang="EN-US"> method has to be utilized to find the control
instance - it is an client-side control instance not DOM element. Timer&#8217;s client-side API is not well documented but there are some </span><a href="http://forums.asp.net/t/1094798.aspx/1"><span lang="EN-US">clues</span></a><span lang="EN-US"> on the Internet. So let&#8217;s choose _stopTimer
function for this purpose:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US" style="color: blue; font-family: Consolas; font-size: 9.5pt;">string</span><span lang="EN-US" style="font-family: Consolas; font-size: 9.5pt;">
script = <span style="color: blue;">string</span>.Format(<span style="color: #a31515;">"$find('{0}')._stopTimer();"</span>,
BretonTimer.ClientID);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">Create a button just to test this undocumented
function:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US" style="color: blue; font-family: Consolas; font-size: 9.5pt;">&lt;</span><span lang="EN-US" style="color: maroon; font-family: Consolas; font-size: 9.5pt;">asp</span><span lang="EN-US" style="color: blue; font-family: Consolas; font-size: 9.5pt;">:</span><span lang="EN-US" style="color: maroon; font-family: Consolas; font-size: 9.5pt;">Button</span><span lang="EN-US" style="font-family: Consolas; font-size: 9.5pt;">
<span style="color: red;">runat</span><span style="color: blue;">="server"</span>
<span style="color: red;">ID</span><span style="color: blue;">="StopBreton"</span>
<span style="color: red;">Text</span><span style="color: blue;">="Stop!"</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US" style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: red;">OnClientClick</span><span style="color: blue;">="$find('BretonTimer')._stopTimer(); return
false;"</span> <span style="color: blue;">/&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br />
Click on the button to test that API works well.<br />
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<b style="mso-bidi-font-weight: normal;"><span lang="EN-US">Synchronous postback</span></b></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">So as the last step this script
should be <a href="http://jakub-linhart.blogspot.com/2012/03/script-registration-labyrinth-in-aspnet.html">registered
as a startup script</a> and today&#8217;s work will be done:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">string</span><span style="font-family: Consolas; font-size: 9.5pt;"> script = <span style="color: blue;">string</span>.Format(<span style="color: #a31515;">"$find('{0}')._stopTimer();"</span>,
BretonTimer.ClientID);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US" style="color: #2b91af; font-family: Consolas; font-size: 9.5pt;">ScriptManager</span><span lang="EN-US" style="font-family: Consolas; font-size: 9.5pt;">.RegisterStartupScript(<span style="color: blue;">this</span>, <span style="color: blue;">this</span>.GetType(),
<span style="color: #a31515;">"key1"</span>, script, <span style="color: blue;">true</span>);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal">
<span lang="EN-US">The timer
is really off after page reload. There is a last annoyance, a javascript error:
</span><span lang="EN-US" style="font-family: Consolas; font-size: 9.5pt; line-height: 115%;">$find("BretonTimer") is null</span><span lang="EN-US"></span></div>
<div class="MsoNormal">
<br />
<span lang="EN-US">Why $find
returns an instance when the script is executed within click event handler and
fails when the same script is run during page load? Let&#8217;s see how page source
looks like.</span></div>
<div class="MsoNormal">
<br />
<span lang="EN-US">Startup
script is near the page end <a href="http://jakub-linhart.blogspot.com/2012/03/script-registration-labyrinth-in-aspnet.html">as
expected</a>:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;">
<span lang="EN-US" style="font-family: &quot;Courier New&quot;; font-size: 10pt;">$find('BretonTimer')._stopTimer();Sys.Application.initialize();</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;">
<span lang="EN-US" style="font-family: &quot;Courier New&quot;; font-size: 10pt;">Sys.Application.add_init(function()
{</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;">
<span lang="EN-US" style="font-family: &quot;Courier New&quot;; font-size: 10pt;">&nbsp;&nbsp;&nbsp;
$create(Sys.UI._Timer,
{"enabled":true,"interval":2000,"uniqueID":"BretonTimer"},
null, null, $get("BretonTimer"));</span></div>
<div class="MsoNormal">
<br /></div>
<div class="MsoNormal">
<span lang="EN-US">But what is
on the next line? It seems like something what is intended to <a href="http://msdn.microsoft.com/en-us/library/bb397487.aspx">create client-side
instance</a> of the timer control. ASP.NET AJAX design does not follow
idiosyncratic philosophy of your corporation, so it is not possible to find an instance
of control that was not created yet.</span></div>
<div class="MsoNormal">
<br />
<span lang="EN-US">Add_init
attaches event handler to the client-side <a href="http://msdn.microsoft.com/en-us/library/bb397532.aspx">init</a> event. It
reminds server-side page lifecycle. And really there is the client-side <a href="http://msdn.microsoft.com/en-us/library/bb383829.aspx">load</a> event as
well. Load event handlers are executed after init handlers and it is exactly
what you need (see <a href="http://msdn.microsoft.com/en-us/library/bb386417.aspx">Ajax Client Life-Cycle
Events</a> for more information):</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">string</span><span style="font-family: Consolas; font-size: 9.5pt;"> script = <span style="color: blue;">string</span>.Format(<span style="color: #a31515;">"Sys.Application.add_load(function() {{
$find('{0}')._stopTimer(); }});"</span>, BretonTimer.ClientID);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US" style="color: #2b91af; font-family: Consolas; font-size: 9.5pt;">ScriptManager</span><span lang="EN-US" style="font-family: Consolas; font-size: 9.5pt;">.RegisterStartupScript(<span style="color: blue;">this</span>, <span style="color: blue;">this</span>.GetType(),
<span style="color: #a31515;">"key1"</span>, script, <span style="color: blue;">true</span>);</span></div>
<div class="MsoNormal">
<br />
<span lang="EN-US">It works! Timer
is not running anymore and there is no javascript error.</span></div>
<div class="MsoNormal">
<span lang="EN-US">But your
sixth sense warns you that there is something wrong with this solution... What
about partial postback?</span></div>
<div class="MsoNormal">
<br /></div>
<div class="MsoNormal">
<b style="mso-bidi-font-weight: normal;"><span lang="EN-US">Partial postback</span></b></div>
<div class="MsoNormal">
<span lang="EN-US">To avoid
reloads of whole page you are forced to use an UpdatePanel. You modify the
markup in that way:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">&lt;</span><span style="color: maroon; font-family: Consolas; font-size: 9.5pt;">asp</span><span style="color: blue; font-family: Consolas; font-size: 9.5pt;">:</span><span style="color: maroon; font-family: Consolas; font-size: 9.5pt;">UpdatePanel</span><span style="font-family: Consolas; font-size: 9.5pt;"> <span style="color: red;">runat</span><span style="color: blue;">="server"</span> <span style="color: red;">ID</span><span style="color: blue;">="UpdatePanel1"&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;</span><span style="color: maroon;">ContentTemplate</span><span style="color: blue;">&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;</span><span style="color: maroon;">asp</span><span style="color: blue;">:</span><span style="color: maroon;">Timer</span> <span style="color: red;">runat</span><span style="color: blue;">="server"</span>
<span style="color: red;">ID</span><span style="color: blue;">="BretonTimer"</span>
<span style="color: red;">OnTick</span><span style="color: blue;">="BretonTimer_Tick"</span>
<span style="color: red;">Interval</span><span style="color: blue;">="2000"</span>
<span style="color: blue;">/&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;</span><span style="color: maroon;">asp</span><span style="color: blue;">:</span><span style="color: maroon;">Button</span> <span style="color: red;">runat</span><span style="color: blue;">="server"</span>
<span style="color: red;">ID</span><span style="color: blue;">="StopBretonButton"</span>
<span style="color: red;">Text</span><span style="color: blue;">="Stop!"</span>
<span style="color: red;">OnClick</span><span style="color: blue;">="StopBretonButton_Click"</span>
<span style="color: blue;">/&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;</span><span style="color: maroon;">asp</span><span style="color: blue;">:</span><span style="color: maroon;">Button</span> <span style="color: red;">runat</span><span style="color: blue;">="server"</span>
<span style="color: red;">ID</span><span style="color: blue;">="JustAnotherPostbackButton"</span>
<span style="color: red;">Text</span><span style="color: blue;">="Just another
postback"</span> <span style="color: blue;">/&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;/</span><span style="color: maroon;">ContentTemplate</span><span style="color: blue;">&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;</span><span style="color: maroon;">Triggers</span><span style="color: blue;">&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;</span><span style="color: maroon;">asp</span><span style="color: blue;">:</span><span style="color: maroon;">AsyncPostBackTrigger</span>
<span style="color: red;">ControlID</span><span style="color: blue;">="BretonTimer"</span>
<span style="color: blue;">/&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;</span><span style="color: maroon;">asp</span><span style="color: blue;">:</span><span style="color: maroon;">AsyncPostBackTrigger</span>
<span style="color: red;">ControlID</span><span style="color: blue;">="StopBretonButton"</span>
<span style="color: blue;">/&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;/</span><span style="color: maroon;">Triggers</span><span style="color: blue;">&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">&lt;/</span><span style="color: maroon; font-family: Consolas; font-size: 9.5pt;">asp</span><span style="color: blue; font-family: Consolas; font-size: 9.5pt;">:</span><span style="color: maroon; font-family: Consolas; font-size: 9.5pt;">UpdatePanel</span><span style="color: blue; font-family: Consolas; font-size: 9.5pt;">&gt;</span><span style="font-family: Consolas; font-size: 9.5pt;"></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">and code behind:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">protected</span><span style="font-family: Consolas; font-size: 9.5pt;"> <span style="color: blue;">void</span>
StopBretonButton_Click(<span style="color: blue;">object</span> sender, <span style="color: #2b91af;">EventArgs</span> e)</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">{</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">string</span> script = <span style="color: blue;">string</span>.Format(<span style="color: #a31515;">"Sys.Application.add_load(function() {{ $find('{0}')._stopTimer();
}});"</span>, BretonTimer.ClientID);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: #2b91af;">ScriptManager</span>.RegisterStartupScript(<span style="color: blue;">this</span>, <span style="color: blue;">this</span>.GetType(),
<span style="color: #a31515;">"key1"</span>, script, <span style="color: blue;">true</span>);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">}</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">When &#8220;Stop!&#8221; button is clicked, timer is
stopped properly. But there is a strange feeling in your guts. Something is
wrong.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">Add an alert message to make sure what is
really happing:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">string</span><span style="font-family: Consolas; font-size: 9.5pt;"> script = <span style="color: blue;">string</span>.Format(<span style="color: #a31515;">"Sys.Application.add_load(function() {{ alert('load
event handler');$find('{0}')._stopTimer(); }});"</span>,
BretonTimer.ClientID);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">Alert message &#8220;load event handler&#8221; is displayed
after pushing &#8220;Stop!&#8221; button. But when it is pushed for second time, two
message boxes are displayed. Push &#8220;Just another postback&#8221; button and you will
get two message boxes as well. It means load event handler remains attached to
the event after partial postback.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">For init events it would be a catastrophic
behavior. They are used by ASP.NET AJAX framework heavily to run $create
functions. When a new event handler would be attached to init event after every
partial postback then the page would be unusable after a while because browser would
spend a lot of time executing many init identical event handlers. It can be hardly true.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">Let&#8217;s do an experiment:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">string</span><span style="font-family: Consolas; font-size: 9.5pt;"> script = <span style="color: blue;">string</span>.Format(<span style="color: #a31515;">"Sys.Application.add_init(function() {{ alert('init
event handler'); }});"</span>, BretonTimer.ClientID);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">Only one message box is shown regardless how
many times the button is clicked. So there is a fundamental difference between
load and init events. Why?</span><br />
<br />
<span lang="EN-US">It is difficult to find an answer (MSDN keep silent). If
you find one, please let me know, I would love to hear any reason. It is pretty
surreal and well suited to the corporate identity.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br />
<span lang="EN-US">Load event <a href="http://ajaxcontroltoolkit.codeplex.com/SourceControl/changeset/view/edf1fbcb2745#Server%2fAjaxControlToolkit%2fToolkitScriptManager%2fToolkitScriptManager.cs">solution</a>
is well crafted by <a href="http://ajaxcontroltoolkit.codeplex.com/">AJAX
Control Toolkit</a> authors. The handler is unregistered after it is executed
for the first time:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">(<span style="color: blue;">function</span> () {</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">var</span> fn = <span style="color: blue;">function</span> ()
{</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $find(<span style="color: maroon;">'BretonTimer'</span>)._stopTimer();</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sys.Application.remove_load(fn);</span><span style="font-family: &quot;Courier New&quot;; font-size: 10pt;"></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; };</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;
Sys.Application.add_load(fn);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">})();</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">The beauty of this solution is in the fact that
you don&#8217;t need to generate a unique function name for each event handler.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">Here is the final <a href="https://gist.github.com/2279118">markup and code behind</a>.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<b style="mso-bidi-font-weight: normal;"><span lang="EN-US">Conclusion</span></b></div>
<div class="MsoNormal">
<span lang="EN-US">The example
with Timer control is quite absurd and may seem useless. But frameworks like
AJAX Control Toolkit or Telerik are based on $create and $find functions and
you have to register some startup scripts using $find function on and off. I
chose the Timer control as something that is known to all users of those
ASP.NET AJAX frameworks.</span></div>
<div class="MsoNormal" style="margin-top: 12.0pt;">
<span lang="EN-US">Registering startup script that uses $find function is not as
straightforward as it seems for the first time. AJAX Control Toolkit solution
is safe for synchronous and partial postbacks: </span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">(<span style="color: blue;">function</span> () {</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">var</span> fn = <span style="color: blue;">function</span> ()
{</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; var
ajaxControl = $find(<span style="color: maroon;">'AJAX control'</span>);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // do
something usefull</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; };</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;
Sys.Application.add_load(fn);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">})();</span></div>
<div class="MsoNormal" style="margin-top: 12.0pt;">
<span lang="EN-US">It is based on client side page life cycle which is not very commonly
known. It handles a little bit shocking load event behavior that is not
documented on MSDN. It is good to know about these ASP.NET AJAX parts.</span></div>
<div style='clear: both;'></div>
</div>
<div class='post-footer'>
<div class='post-footer-line post-footer-line-1'><span class='post-author vcard'>
</span>
<span class='post-timestamp'>
at
<a class='timestamp-link' href='http://jakub-linhart.blogspot.com/2012/04/script-registration-labyrinth-startup.html' rel='bookmark' title='permanent link'><abbr class='published' title='2012-04-14T13:28:00+02:00'>1:28 PM</abbr></a>
</span>
<span class='post-comment-link'>
<a class='comment-link' href='http://jakub-linhart.blogspot.com/2012/04/script-registration-labyrinth-startup.html#comment-form' onclick=''>1 comments</a>
</span>
<span class='post-icons'>
<span class='item-control blog-admin pid-713917052'>
<a href='https://www.blogger.com/post-edit.g?blogID=8089455461752760430&postID=666282384170839597&from=pencil' title='Edit Post'>
<img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
</a>
</span>
</span>
<div class='post-share-buttons goog-inline-block'>
<a class='goog-inline-block share-button sb-email' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=666282384170839597&target=email' target='_blank' title='Email This'><span class='share-button-link-text'>Email This</span></a><a class='goog-inline-block share-button sb-blog' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=666282384170839597&target=blog' onclick='window.open(this.href, "_blank", "height=270,width=475"); return false;' target='_blank' title='BlogThis!'><span class='share-button-link-text'>BlogThis!</span></a><a class='goog-inline-block share-button sb-twitter' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=666282384170839597&target=twitter' target='_blank' title='Share to Twitter'><span class='share-button-link-text'>Share to Twitter</span></a><a class='goog-inline-block share-button sb-facebook' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=666282384170839597&target=facebook' onclick='window.open(this.href, "_blank", "height=430,width=640"); return false;' target='_blank' title='Share to Facebook'><span class='share-button-link-text'>Share to Facebook</span></a><a class='goog-inline-block share-button sb-pinterest' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=666282384170839597&target=pinterest' target='_blank' title='Share to Pinterest'><span class='share-button-link-text'>Share to Pinterest</span></a>
</div>
</div>
<div class='post-footer-line post-footer-line-2'><span class='post-labels'>
Tags:
<a href='http://jakub-linhart.blogspot.com/search/label/AJAX' rel='tag'>AJAX</a>,
<a href='http://jakub-linhart.blogspot.com/search/label/ASP.NET' rel='tag'>ASP.NET</a>,
<a href='http://jakub-linhart.blogspot.com/search/label/javascript%20registration' rel='tag'>javascript registration</a>
</span>
</div>
<div class='post-footer-line post-footer-line-3'><span class='post-location'>
</span>
</div>
</div>
</div>
</div>

          </div></div>
        

          <div class="date-outer">
        
<h2 class='date-header'><span>2012/03/11</span></h2>

          <div class="date-posts">
        
<div class='post-outer'>
<div class='post hentry'>
<a name='4361616707281261098'></a>
<h3 class='post-title entry-title'>
<a href='http://jakub-linhart.blogspot.com/2012/03/script-registration-labyrinth-in-aspnet.html'>Script registration labyrinth in ASP.NET WebForms</a>
</h3>
<div class='post-header'>
<div class='post-header-line-1'></div>
</div>
<div class='post-body entry-content' id='post-body-4361616707281261098'>
<br />
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">I'm always lost when trying to register a
javascript fragment that must be executed on the client side after the postback.
There are several usable methods in ASP.NET WebForms and I never know which one
to choose.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<b style="mso-bidi-font-weight: normal;"><span lang="EN-US">Page.ClientScript</span></b></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<a href="http://msdn.microsoft.com/en-us/library/asz8zsxy.aspx"><span lang="EN-US">Page.ClientScript.RegisterStartupScript</span></a><span lang="EN-US"> &#8211; registers the startup script.
What does it mean &#8220;startup&#8221;? It is something that is executed when the browser finishes
page loading, which is guaranteed by the fact that &#8220;startup&#8221; scripts are
rendered just before closing &lt;form&gt; tag. Almost all elements on the page
are processed by the browser at this point and can be referenced from that &#8220;startup&#8221;
script.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<a href="http://msdn.microsoft.com/en-us/library/btf44dc9.aspx"><span lang="EN-US">Page.ClientScript.RegisterClientScriptBlock</span></a><span lang="EN-US"> &#8211; registers the script block, so it
is rendered somewhere near after the &lt;form&gt; element opening. This block
is executed before the DOM is fully processed and before any &#8220;startup&#8221; scripts
are executed. &#8220;ClientScript&#8221; blocks are good place for javascript functions.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<b style="mso-bidi-font-weight: normal;"><span lang="EN-US">Page</span></b></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<a href="http://msdn.microsoft.com/en-us/library/system.web.ui.page.registerstartupscript.aspx"><span lang="EN-US">Page.RegisterStartupScript</span></a><span lang="EN-US"> and </span><a href="http://msdn.microsoft.com/en-us/library/system.web.ui.page.registerclientscriptblock.aspx"><span lang="EN-US">Page.RegisterClientScriptBlock</span></a><span lang="EN-US"> are marked as obsolete and they do
nothing but Page.ClientScript call. Just ignore them.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<b style="mso-bidi-font-weight: normal;"><span lang="EN-US">ScriptManager</span></b></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">Now what about </span><a href="http://msdn.microsoft.com/en-us/library/system.web.ui.scriptmanager.aspx"><span lang="EN-US">ScriptManager</span></a><span lang="EN-US"> class? RegisterClientScriptBlock
and RegisterStartupScript are there as well. What is the justification for such
duplication? The only difference, according to the documentation (</span><a href="http://msdn.microsoft.com/en-us/library/bb310408.aspx"><span lang="EN-US">here</span></a><span lang="EN-US"> and </span><a href="http://msdn.microsoft.com/en-us/library/bb338357.aspx"><span lang="EN-US">here</span></a><span lang="EN-US">), is that the scripts are &#8220;included every time
that an asynchronous postback occurs&#8221;. This formulation is slightly confusing.
Scripts registered by ScriptManager&#8217;s methods are rendered by non-asynchronous
postback as well. ClientScript&#8217;s methods are never rendered by asynchronous-postbacks.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<b style="mso-bidi-font-weight: normal;"><span lang="EN-US">Script registration
after asynchronous postback</span></b></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">The javascript block is not executed if it is a
part of markup in AJAX response. Browser simply doesn&#8217;t process such block. Consider
such silly <a href="https://gist.github.com/2018283#file_client_script_registration.aspx">ASPX</a>:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">&lt;</span><span style="color: maroon; font-family: Consolas; font-size: 9.5pt;">asp</span><span style="color: blue; font-family: Consolas; font-size: 9.5pt;">:</span><span style="color: maroon; font-family: Consolas; font-size: 9.5pt;">Button</span><span style="font-family: Consolas; font-size: 9.5pt;"> <span style="color: red;">runat</span><span style="color: blue;">="server"</span> <span style="color: red;">ID</span><span style="color: blue;">="Button1"</span> <span style="color: red;">Text</span><span style="color: blue;">="Do postback"</span> <span style="color: red;">OnClick</span><span style="color: blue;">="Button1_Click"</span> <span style="color: blue;">/&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">&lt;</span><span style="color: maroon; font-family: Consolas; font-size: 9.5pt;">asp</span><span style="color: blue; font-family: Consolas; font-size: 9.5pt;">:</span><span style="color: maroon; font-family: Consolas; font-size: 9.5pt;">Literal</span><span style="font-family: Consolas; font-size: 9.5pt;"> <span style="color: red;">runat</span><span style="color: blue;">="server"</span> <span style="color: red;">ID</span><span style="color: blue;">="Literal1"</span> <span style="color: blue;">/&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">and C# <a href="https://gist.github.com/2018283#file_client_script_registration.aspx.cs">code behind</a> with a script:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">protected</span><span style="font-family: Consolas; font-size: 9.5pt;"> <span style="color: blue;">void</span>
Button1_Click(<span style="color: blue;">object</span> sender, <span style="color: #2b91af;">EventArgs</span> e)</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">{</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;
Literal1.Text = <span style="color: #a31515;">"&lt;script&gt;alert('Button1
clicked')&lt;/script&gt;"</span>;</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">}</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">Button1 causes postback (when clicked) and
event handler fills Literal1 with the javascript block. This javascript block
is execeuted and the alert message is shown when browser loads the
(synchronous) postback response.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">Let&#8217;s move to asynchronous <a href="https://gist.github.com/2018305#file_script_manager_registration.aspx">postback</a>:</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">&lt;</span><span style="color: maroon; font-family: Consolas; font-size: 9.5pt;">asp</span><span style="color: blue; font-family: Consolas; font-size: 9.5pt;">:</span><span style="color: maroon; font-family: Consolas; font-size: 9.5pt;">UpdatePanel</span><span style="font-family: Consolas; font-size: 9.5pt;"> <span style="color: red;">runat</span><span style="color: blue;">="server"</span> <span style="color: red;">ID</span><span style="color: blue;">="UpdatePanel1"&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;</span><span style="color: maroon;">ContentTemplate</span><span style="color: blue;">&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;</span><span style="color: maroon;">asp</span><span style="color: blue;">:</span><span style="color: maroon;">Button</span> <span style="color: red;">runat</span><span style="color: blue;">="server"</span>
<span style="color: red;">ID</span><span style="color: blue;">="Button1"</span>
<span style="color: red;">Text</span><span style="color: blue;">="Do AJAX
call"</span> <span style="color: red;">OnClick</span><span style="color: blue;">="Button1_Click"</span> <span style="color: blue;">/&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;</span><span style="color: maroon;">asp</span><span style="color: blue;">:</span><span style="color: maroon;">Literal</span> <span style="color: red;">runat</span><span style="color: blue;">="server"</span>
<span style="color: red;">ID</span><span style="color: blue;">="Literal1"</span>
<span style="color: blue;">/&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;/</span><span style="color: maroon;">ContentTemplate</span><span style="color: blue;">&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;</span><span style="color: maroon;">Triggers</span><span style="color: blue;">&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;</span><span style="color: maroon;">asp</span><span style="color: blue;">:</span><span style="color: maroon;">AsyncPostBackTrigger</span>
<span style="color: red;">ControlID</span><span style="color: blue;">="Button1"</span>
<span style="color: blue;">/&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: blue;">&lt;/</span><span style="color: maroon;">Triggers</span><span style="color: blue;">&gt;</span></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="color: blue; font-family: Consolas; font-size: 9.5pt;">&lt;/</span><span style="color: maroon; font-family: Consolas; font-size: 9.5pt;">asp</span><span style="color: blue; font-family: Consolas; font-size: 9.5pt;">:</span><span style="color: maroon; font-family: Consolas; font-size: 9.5pt;">UpdatePanel</span><span style="color: blue; font-family: Consolas; font-size: 9.5pt;">&gt;</span><span style="font-family: Consolas; font-size: 9.5pt;"></span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">Code behind remains unchanged.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">No message is shown after the Button1 is
clicked. Body of the response should look something like this:</span></div>
<pre><code>139|updatePanel|UpdatePanel1|
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;input type="submit" name="Button1" value="Do AJAX call" id="Button1" /&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u><span style="font-size: small;">&lt;script&gt;alert('Button1 clicked')&lt;/script&gt;</span></u>
|152|hiddenField|__VIEWSTATE|/wEPDwUKLTUxODY2NjI0NQ9kFgICAw9kFgICAw9kFgJmD2QWAgI
DDxYCHgRUZXh0BSk8c2NyaXB0PmFsZXJ0KCdCdXR0b24xIGNsaWNrZWQnKTwvc2NyaXB0PmRk88Fv/gu
MXM8Xq/lT5WC+dG66354=|48|hiddenField|__EVENTVALIDATION|/wEWAgL/oouVBgKM54rGBmox+
1LEg7FJSnLOTrjRf5eL73gK|7|asyncPostBackControlIDs||Button1|0|postBackControlIDs|
||13|updatePanelIDs||tUpdatePanel1|0|childUpdatePanelIDs|||12|panelsToRefreshIDs|
|UpdatePanel1|2|asyncPostBackTimeout||90|13|formAction||WebForm8.aspx|
</code></pre>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: 0.0001pt;">
<span lang="EN-US">Alert script is rendered into markup but it is not executed by
the browser. How is it possible that script registration via ScriptManager
works?</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">This <a href="https://gist.github.com/2018305#file_script_manager_registration.aspx.cs">code behind</a> modification could discover
the secret:<br />
</span><span style="color: blue; font-family: Consolas; font-size: 9.5pt;">protected</span><span style="font-family: Consolas; font-size: 9.5pt;"> <span style="color: blue;">void</span>
Button1_Click(<span style="color: blue;">object</span> sender, <span style="color: #2b91af;">EventArgs</span> e)</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">{</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">&nbsp;&nbsp;&nbsp; <span style="color: #2b91af;">ScriptManager</span>.RegisterStartupScript(<span style="color: blue;">this</span>, <span style="color: blue;">this</span>.GetType(),
<span style="color: #a31515;">"script"</span>, <span style="color: #a31515;">"&lt;script&gt;alert('Button1
clicked')&lt;/script&gt;"</span>, <span style="color: blue;">false</span>);</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span style="font-family: Consolas; font-size: 9.5pt;">}</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">The alert message box is shown this time. Here
is the response:</span></div>
<pre><code>98|updatePanel|UpdatePanel1|
        &lt;input id="Button1" name="Button1" type="submit" value="Do AJAX call" /&gt;
    |52|hiddenField|__VIEWSTATE|/wEPDwUKLTUxODY2NjI0NWRkwPvseEH2ojph8EJh0MFS5L+TksA
=|48|hiddenField|__EVENTVALIDATION|/wEWAgKaoIz3DwKM54rGBr7RMEQMtuoxxWPUsRRwWxmrCH
/Z|7|asyncPostBackControlIDs||Button1|0|postBackControlIDs|||13|updatePanelIDs||t
UpdatePanel1|0|childUpdatePanelIDs|||12|panelsToRefreshIDs||UpdatePanel1|2|asyncP
ostBackTimeout||90|13|formAction||WebForm8.aspx|45|scriptStartupBlock|
<u>ScriptContentWithTags</u>|{"text":"<u>alert(\u0027Button1 clicked\u0027)</u>"}|
</code></pre>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">There are two significant changes in the
response: the script is not rendered (</span><span class="hps">unsurprisingly</span><span lang="EN-US">) in the Literal control and there
is something more in the response: <b style="mso-bidi-font-weight: normal;">scriptStartupBlock.</b>
&nbsp;ASP.NET AJAX library ensures that script
from this &#8220;section&#8221; is executed after receiving the response. ScriptManager.RegisterClientScriptBlock
is very similar but it uses <b style="mso-bidi-font-weight: normal;">scriptBlock</b>
&#8220;section&#8221;.</span></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<br /></div>
<div class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt; margin-bottom: 0cm; mso-layout-grid-align: none; text-autospace: none;">
<span lang="EN-US">It is quite easy to navigate through the labyrinth
when it is clear how things work under the hood.</span></div>
<div style='clear: both;'></div>
</div>
<div class='post-footer'>
<div class='post-footer-line post-footer-line-1'><span class='post-author vcard'>
</span>
<span class='post-timestamp'>
at
<a class='timestamp-link' href='http://jakub-linhart.blogspot.com/2012/03/script-registration-labyrinth-in-aspnet.html' rel='bookmark' title='permanent link'><abbr class='published' title='2012-03-11T21:52:00+01:00'>9:52 PM</abbr></a>
</span>
<span class='post-comment-link'>
<a class='comment-link' href='http://jakub-linhart.blogspot.com/2012/03/script-registration-labyrinth-in-aspnet.html#comment-form' onclick=''>0
comments</a>
</span>
<span class='post-icons'>
<span class='item-control blog-admin pid-713917052'>
<a href='https://www.blogger.com/post-edit.g?blogID=8089455461752760430&postID=4361616707281261098&from=pencil' title='Edit Post'>
<img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
</a>
</span>
</span>
<div class='post-share-buttons goog-inline-block'>
<a class='goog-inline-block share-button sb-email' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=4361616707281261098&target=email' target='_blank' title='Email This'><span class='share-button-link-text'>Email This</span></a><a class='goog-inline-block share-button sb-blog' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=4361616707281261098&target=blog' onclick='window.open(this.href, "_blank", "height=270,width=475"); return false;' target='_blank' title='BlogThis!'><span class='share-button-link-text'>BlogThis!</span></a><a class='goog-inline-block share-button sb-twitter' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=4361616707281261098&target=twitter' target='_blank' title='Share to Twitter'><span class='share-button-link-text'>Share to Twitter</span></a><a class='goog-inline-block share-button sb-facebook' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=4361616707281261098&target=facebook' onclick='window.open(this.href, "_blank", "height=430,width=640"); return false;' target='_blank' title='Share to Facebook'><span class='share-button-link-text'>Share to Facebook</span></a><a class='goog-inline-block share-button sb-pinterest' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=4361616707281261098&target=pinterest' target='_blank' title='Share to Pinterest'><span class='share-button-link-text'>Share to Pinterest</span></a>
</div>
</div>
<div class='post-footer-line post-footer-line-2'><span class='post-labels'>
Tags:
<a href='http://jakub-linhart.blogspot.com/search/label/ASP.NET' rel='tag'>ASP.NET</a>,
<a href='http://jakub-linhart.blogspot.com/search/label/javascript%20registration' rel='tag'>javascript registration</a>
</span>
</div>
<div class='post-footer-line post-footer-line-3'><span class='post-location'>
</span>
</div>
</div>
</div>
</div>

          </div></div>
        

          <div class="date-outer">
        
<h2 class='date-header'><span>2012/01/08</span></h2>

          <div class="date-posts">
        
<div class='post-outer'>
<div class='post hentry'>
<a name='2310838393305985391'></a>
<h3 class='post-title entry-title'>
<a href='http://jakub-linhart.blogspot.com/2012/01/i-apologize-for-my-ignorance-dear.html'>I apologize for my ignorance, dear RadWindow</a>
</h3>
<div class='post-header'>
<div class='post-header-line-1'></div>
</div>
<div class='post-body entry-content' id='post-body-2310838393305985391'>
I use RadWindow and RadWindowManager for a while and yet I know hardly anything about them. This StackOverflow <a href="http://stackoverflow.com/q/8654263/291379">question</a> about RadWindow in ajax scenario has initiated manifestation of my ignorance. For me it was always clear that RadWindow must be declared inside RadWindowManager and there can be only one RadWindowManager instance on a page. Perverse consequences of this combination are obvious when you use WebForms &#8211; ASPX and ASCX entanglement through RadWindow instances. ASPX must contain RadWindowManager and RadWindow that is used on the ASCX as well. What a festival of ignorance!<br />
<br />
First of all, what is RadWindowManager useful for? I managed to find 3 reasons from the documentation:<br />
<ol>
<li>It is a convenient way how to declare property values shared among several RadWindow instances.</li>
<li>It adds radopen, radalert, radconfirm and radprompt functions to the global window obect.</li>
<li>Window managment API (tile, cascade, etc...).</li>
</ol>
Documentation also says that it is possible to instantiate RadWindow without manager participation. And both ways are viable: either declaratively in markup or imperatively from code behind:<br />
<br />
<pre class="brush:csharp">var window1 = new RadWindow();
window1.NavigateUrl = "http://www.google.com";
window1.VisibleOnPageLoad = true;
window1.ID = "RadWindow1";
window1.Width = 500;
window1.Title = "Google";
window1.Height = 300;
Panel1.Controls.Add(window1);


</pre>
The last line is the most important one from my perspective. Window instance is added into normal asp Panel and no manager is involved.&nbsp; The window is displayed even after partial postback when the panel is ajaxified. It is due to fact that RadWindow is control like any others and it is rendered in the same way as any other controls are. The same fact is valid in the case when the window is placed within RadWindowManager. RadWindow is rendered at the same place as the RadWindowManager. In ajax scenario you have to enclose the RadWindowManager into panel that is also updated in given partial postback. It sounds weird in connection with the fact that there can be only one RadWindowManager.<br />
<br />
Fortunately this fact is not a fact but delusion. A page could <a href="http://www.telerik.com/community/forums/aspnet-ajax/window/how-to-use-multiple-radwindowmanager-in-one-page.aspx#1300195">easily</a> contain more than one manager instance. In such case radopen and similar functions always use the first manager instance.<br />
<br />
What about performance? Other managers like RadStyleSheetManager and RadScriptManager improve Telerik-based application performance. It seems to be not true for RadWindowManager according to this <a href="http://www.telerik.com/products/aspnet-ajax/getting-started/top-performance.aspx">site</a>.<br />
<br />
What is the moral of this sad story? It is not worth to be afraid to work directly with RadWindow instances. As an application does not use tons of windows it would be better to use RadWindowManager only as support for radopen &amp; Co. functions.
<div style='clear: both;'></div>
</div>
<div class='post-footer'>
<div class='post-footer-line post-footer-line-1'><span class='post-author vcard'>
</span>
<span class='post-timestamp'>
at
<a class='timestamp-link' href='http://jakub-linhart.blogspot.com/2012/01/i-apologize-for-my-ignorance-dear.html' rel='bookmark' title='permanent link'><abbr class='published' title='2012-01-08T21:35:00+01:00'>9:35 PM</abbr></a>
</span>
<span class='post-comment-link'>
<a class='comment-link' href='http://jakub-linhart.blogspot.com/2012/01/i-apologize-for-my-ignorance-dear.html#comment-form' onclick=''>0
comments</a>
</span>
<span class='post-icons'>
<span class='item-control blog-admin pid-713917052'>
<a href='https://www.blogger.com/post-edit.g?blogID=8089455461752760430&postID=2310838393305985391&from=pencil' title='Edit Post'>
<img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
</a>
</span>
</span>
<div class='post-share-buttons goog-inline-block'>
<a class='goog-inline-block share-button sb-email' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=2310838393305985391&target=email' target='_blank' title='Email This'><span class='share-button-link-text'>Email This</span></a><a class='goog-inline-block share-button sb-blog' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=2310838393305985391&target=blog' onclick='window.open(this.href, "_blank", "height=270,width=475"); return false;' target='_blank' title='BlogThis!'><span class='share-button-link-text'>BlogThis!</span></a><a class='goog-inline-block share-button sb-twitter' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=2310838393305985391&target=twitter' target='_blank' title='Share to Twitter'><span class='share-button-link-text'>Share to Twitter</span></a><a class='goog-inline-block share-button sb-facebook' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=2310838393305985391&target=facebook' onclick='window.open(this.href, "_blank", "height=430,width=640"); return false;' target='_blank' title='Share to Facebook'><span class='share-button-link-text'>Share to Facebook</span></a><a class='goog-inline-block share-button sb-pinterest' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=2310838393305985391&target=pinterest' target='_blank' title='Share to Pinterest'><span class='share-button-link-text'>Share to Pinterest</span></a>
</div>
</div>
<div class='post-footer-line post-footer-line-2'><span class='post-labels'>
Tags:
<a href='http://jakub-linhart.blogspot.com/search/label/RadWindow' rel='tag'>RadWindow</a>,
<a href='http://jakub-linhart.blogspot.com/search/label/telerik' rel='tag'>telerik</a>
</span>
</div>
<div class='post-footer-line post-footer-line-3'><span class='post-location'>
</span>
</div>
</div>
</div>
</div>

          </div></div>
        

          <div class="date-outer">
        
<h2 class='date-header'><span>2011/05/22</span></h2>

          <div class="date-posts">
        
<div class='post-outer'>
<div class='post hentry'>
<a name='8707844262132940804'></a>
<h3 class='post-title entry-title'>
<a href='http://jakub-linhart.blogspot.com/2011/05/delegates-serialization-limits.html'>Delegates serialization: Limits</a>
</h3>
<div class='post-header'>
<div class='post-header-line-1'></div>
</div>
<div class='post-body entry-content' id='post-body-8707844262132940804'>
When I heard about delegates&#8217; serializability for the first time, my reaction was romantic. I dreamt about some mystical process that serializes delegate&#8217;s IL and about other magical things. It is, of course, absolute nonsense, but I love those fairy tales :).<br />
<br />
All delegates in C# are inherited directly or indirectly from Delegate. Delegate class is class like any other. It is just marked as serializable &#8211; no black magic is needed.<br />
<br />
What is buried there?<br />
<br />
Basically, there are two properties: Method (MethodInfo) and Target (object). It is all what is needed to invoke any .NET method. When delegate points to a static method, then the Target property is null. There are some other internal details that I don&#8217;t understand but I hope they are irrelevant. <br />
<br />
These facts reveal weaknesses of delegates&#8217; serialization:<br />
<ol><li>Target property is serialized as well when using binary formatter. It could lead some serious issues when object referenced by Target is part of complex object graph. On the other side if Target is not serialized then the delegate cannot be deserialized at all &#8211; there wouldn&#8217;t be any suitable instance to make a method call.</li>
<li>Versioning issues.</li>
<li>State of static class is not serialized. Delegate of method that is using static fields (directly or indirectly) is deserialized into completely different context.</li>
</ol>In addition to these disadvantages, there is a limitation associated with anonymous delegate that is closed over a variable. It is simply not serializable.<br />
<br />
It is clear that &#8220;persistable continuation&#8221; implemented in C# by delegate serialization as it was <a href="http://mikehadlow.blogspot.com/2011/04/serializing-continuations.html">suggested </a>by Mike Hadlow would be very limited, which is a pity.
<div style='clear: both;'></div>
</div>
<div class='post-footer'>
<div class='post-footer-line post-footer-line-1'><span class='post-author vcard'>
</span>
<span class='post-timestamp'>
at
<a class='timestamp-link' href='http://jakub-linhart.blogspot.com/2011/05/delegates-serialization-limits.html' rel='bookmark' title='permanent link'><abbr class='published' title='2011-05-22T11:02:00+02:00'>11:02 AM</abbr></a>
</span>
<span class='post-comment-link'>
<a class='comment-link' href='http://jakub-linhart.blogspot.com/2011/05/delegates-serialization-limits.html#comment-form' onclick=''>1 comments</a>
</span>
<span class='post-icons'>
<span class='item-control blog-admin pid-713917052'>
<a href='https://www.blogger.com/post-edit.g?blogID=8089455461752760430&postID=8707844262132940804&from=pencil' title='Edit Post'>
<img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
</a>
</span>
</span>
<div class='post-share-buttons goog-inline-block'>
<a class='goog-inline-block share-button sb-email' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=8707844262132940804&target=email' target='_blank' title='Email This'><span class='share-button-link-text'>Email This</span></a><a class='goog-inline-block share-button sb-blog' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=8707844262132940804&target=blog' onclick='window.open(this.href, "_blank", "height=270,width=475"); return false;' target='_blank' title='BlogThis!'><span class='share-button-link-text'>BlogThis!</span></a><a class='goog-inline-block share-button sb-twitter' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=8707844262132940804&target=twitter' target='_blank' title='Share to Twitter'><span class='share-button-link-text'>Share to Twitter</span></a><a class='goog-inline-block share-button sb-facebook' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=8707844262132940804&target=facebook' onclick='window.open(this.href, "_blank", "height=430,width=640"); return false;' target='_blank' title='Share to Facebook'><span class='share-button-link-text'>Share to Facebook</span></a><a class='goog-inline-block share-button sb-pinterest' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=8707844262132940804&target=pinterest' target='_blank' title='Share to Pinterest'><span class='share-button-link-text'>Share to Pinterest</span></a>
</div>
</div>
<div class='post-footer-line post-footer-line-2'><span class='post-labels'>
Tags:
<a href='http://jakub-linhart.blogspot.com/search/label/delegate' rel='tag'>delegate</a>,
<a href='http://jakub-linhart.blogspot.com/search/label/serialization' rel='tag'>serialization</a>
</span>
</div>
<div class='post-footer-line post-footer-line-3'><span class='post-location'>
</span>
</div>
</div>
</div>
</div>

          </div></div>
        

          <div class="date-outer">
        
<h2 class='date-header'><span>2011/05/15</span></h2>

          <div class="date-posts">
        
<div class='post-outer'>
<div class='post hentry'>
<a name='9149929692755614850'></a>
<h3 class='post-title entry-title'>
<a href='http://jakub-linhart.blogspot.com/2011/05/nhibernate-serializing-delegates.html'>NHibernate: Serializing Delegates</a>
</h3>
<div class='post-header'>
<div class='post-header-line-1'></div>
</div>
<div class='post-body entry-content' id='post-body-9149929692755614850'>
Mike Hadlow discovered very interesting <a href="http://mikehadlow.blogspot.com/2011/04/serializing-continuations.html">delegate feature</a> for me. They are serializable! In outher words they can be stored in a database, e.g. with NHibernate.<br />
<br />
Entity that represents a persistable entity could look like this:<br />
<pre class="brush:csharp">public class PersistableDelegate
{
    public virtual Delegate Delegate { get; set; }
    public virtual string Name { get; set; }
    public virtual int Id { get; set; }

    private byte[] SerializedDelegate {
        get {
            if (Delegate == null)
                return null;

            var formatter = new BinaryFormatter();
            using (var stream = new MemoryStream()) {
                formatter.Serialize(stream, this.Delegate);
                return stream.ToArray();
        }

        set {
            if (value != null) {
                var formatter = new BinaryFormatter();
                using (var stream = new MemoryStream(value))
                    Delegate = (Delegate)formatter.Deserialize(stream);
            }
            else
                Delegate = null;
        }
    }
}
</pre><br />
Your model can manipulate with Delegate property. SerializedDelegate property provides access to serialized data of the delegate for NHibernate &#8211; it is implementation detail and is marked as private. Getter of this property returns the delegate serialized to an array and the setter reconstructs the delegate from provided data.<br />
<br />
FNH mapping is simple as breath then:<br />
<pre class="brush:csharp">public class PersistableDelegateMap : ClassMap&lt;PersistableDelegate&gt; {
    public PersistableDelegateMap() {
        Id(x =&gt; x.Id);
        Map(x =&gt; x.Name);
        Map(Reveal.Member&lt;PersistableDelegate&gt;("SerializedDelegate"))
            .Length(int.MaxValue);
    }
}
</pre>Reveal class makes it possible to map private property.<br />
<br />
Corresponding database table for MS SQL is:<br />
<pre class="brush:sql">CREATE TABLE [dbo].[PersistenceAction](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](255) NULL,
    [SerializedDelegate] [image] NULL,
)
</pre><br />
Now it is possible to store a delegate in database:<br />
<pre class="brush:csharp">var action = new PersistableDelegate();
action.Delegate = (Action)(() =&gt; { Console.WriteLine("Hello from persisted delegate!"); });
action.Name = "First test";

session.Save(action);
session.Flush();
</pre><br />
and load back:<br />
<pre class="brush:csharp">var action = session.Query&lt;PersistableDelegate&gt;().Where(x =&gt; x.Name == "First test").FirstOrDefault();
action.Delegate.DynamicInvoke();
</pre><br />
I am not sure yet how can be this useful. There are definitely many limitations, e.g. lambda expression closed over local variable is not serializable. In any case such feature is very promising...
<div style='clear: both;'></div>
</div>
<div class='post-footer'>
<div class='post-footer-line post-footer-line-1'><span class='post-author vcard'>
</span>
<span class='post-timestamp'>
at
<a class='timestamp-link' href='http://jakub-linhart.blogspot.com/2011/05/nhibernate-serializing-delegates.html' rel='bookmark' title='permanent link'><abbr class='published' title='2011-05-15T16:03:00+02:00'>4:03 PM</abbr></a>
</span>
<span class='post-comment-link'>
<a class='comment-link' href='http://jakub-linhart.blogspot.com/2011/05/nhibernate-serializing-delegates.html#comment-form' onclick=''>0
comments</a>
</span>
<span class='post-icons'>
<span class='item-control blog-admin pid-713917052'>
<a href='https://www.blogger.com/post-edit.g?blogID=8089455461752760430&postID=9149929692755614850&from=pencil' title='Edit Post'>
<img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
</a>
</span>
</span>
<div class='post-share-buttons goog-inline-block'>
<a class='goog-inline-block share-button sb-email' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=9149929692755614850&target=email' target='_blank' title='Email This'><span class='share-button-link-text'>Email This</span></a><a class='goog-inline-block share-button sb-blog' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=9149929692755614850&target=blog' onclick='window.open(this.href, "_blank", "height=270,width=475"); return false;' target='_blank' title='BlogThis!'><span class='share-button-link-text'>BlogThis!</span></a><a class='goog-inline-block share-button sb-twitter' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=9149929692755614850&target=twitter' target='_blank' title='Share to Twitter'><span class='share-button-link-text'>Share to Twitter</span></a><a class='goog-inline-block share-button sb-facebook' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=9149929692755614850&target=facebook' onclick='window.open(this.href, "_blank", "height=430,width=640"); return false;' target='_blank' title='Share to Facebook'><span class='share-button-link-text'>Share to Facebook</span></a><a class='goog-inline-block share-button sb-pinterest' href='https://www.blogger.com/share-post.g?blogID=8089455461752760430&postID=9149929692755614850&target=pinterest' target='_blank' title='Share to Pinterest'><span class='share-button-link-text'>Share to Pinterest</span></a>
</div>
</div>
<div class='post-footer-line post-footer-line-2'><span class='post-labels'>
Tags:
<a href='http://jakub-linhart.blogspot.com/search/label/delegate' rel='tag'>delegate</a>,
<a href='http://jakub-linhart.blogspot.com/search/label/NHibernate' rel='tag'>NHibernate</a>,
<a href='http://jakub-linhart.blogspot.com/search/label/serialization' rel='tag'>serialization</a>
</span>
</div>
<div class='post-footer-line post-footer-line-3'><span class='post-location'>
</span>
</div>
</div>
</div>
</div>

        </div></div>
      
</div>
<div class='blog-pager' id='blog-pager'>
<span id='blog-pager-older-link'>
<a class='blog-pager-older-link' href='http://jakub-linhart.blogspot.com/search?updated-max=2011-05-15T16:03:00%2B02:00&amp;max-results=7' id='Blog1_blog-pager-older-link' title='Older Posts'>Older Posts</a>
</span>
<a class='home-link' href='http://jakub-linhart.blogspot.com/'>Home</a>
</div>
<div class='clear'></div>
<div class='blog-feeds'>
<div class='feed-links'>
Subscribe to:
<a class='feed-link' href='http://jakub-linhart.blogspot.com/feeds/posts/default' target='_blank' type='application/atom+xml'>Posts (Atom)</a>
</div>
</div>
</div></div>
</div>
</div>
<div class='column-left-outer'>
<div class='column-left-inner'>
<aside>
</aside>
</div>
</div>
<div class='column-right-outer'>
<div class='column-right-inner'>
<aside>
<div class='sidebar section' id='sidebar-right-1'><div class='widget BlogArchive' data-version='1' id='BlogArchive1'>
<h2>Archive</h2>
<div class='widget-content'>
<div id='ArchiveList'>
<div id='BlogArchive1_ArchiveList'>
<ul class='hierarchy'>
<li class='archivedate expanded'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy toggle-open'>

        &#9660;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://jakub-linhart.blogspot.com/2012/'>
2012
</a>
<span class='post-count' dir='ltr'>(5)</span>
<ul class='hierarchy'>
<li class='archivedate expanded'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy toggle-open'>

        &#9660;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://jakub-linhart.blogspot.com/2012/05/'>
May
</a>
<span class='post-count' dir='ltr'>(1)</span>
<ul class='posts'>
<li><a href='http://jakub-linhart.blogspot.com/2012/05/how-to-open-radwindow-without.html'>How to open RadWindow without RadWindowManager</a></li>
</ul>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://jakub-linhart.blogspot.com/2012/04/'>
April
</a>
<span class='post-count' dir='ltr'>(2)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://jakub-linhart.blogspot.com/2012/03/'>
March
</a>
<span class='post-count' dir='ltr'>(1)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://jakub-linhart.blogspot.com/2012/01/'>
January
</a>
<span class='post-count' dir='ltr'>(1)</span>
</li>
</ul>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://jakub-linhart.blogspot.com/2011/'>
2011
</a>
<span class='post-count' dir='ltr'>(6)</span>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://jakub-linhart.blogspot.com/2011/05/'>
May
</a>
<span class='post-count' dir='ltr'>(2)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://jakub-linhart.blogspot.com/2011/04/'>
April
</a>
<span class='post-count' dir='ltr'>(3)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://jakub-linhart.blogspot.com/2011/03/'>
March
</a>
<span class='post-count' dir='ltr'>(1)</span>
</li>
</ul>
</li>
</ul>
</div>
</div>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=8089455461752760430&widgetType=BlogArchive&widgetId=BlogArchive1&action=editWidget&sectionId=sidebar-right-1' onclick='return _WidgetManager._PopupConfig(document.getElementById("BlogArchive1"));' rel='nofollow' target='configBlogArchive1' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div>
</div><div class='widget Label' data-version='1' id='Label1'>
<h2>Tags</h2>
<div class='widget-content cloud-label-widget-content'>
<span class='label-size label-size-5'>
<a dir='ltr' href='http://jakub-linhart.blogspot.com/search/label/NHibernate'>NHibernate</a>
<span class='label-count' dir='ltr'>(5)</span>
</span>
<span class='label-size label-size-4'>
<a dir='ltr' href='http://jakub-linhart.blogspot.com/search/label/ASP.NET'>ASP.NET</a>
<span class='label-count' dir='ltr'>(4)</span>
</span>
<span class='label-size label-size-4'>
<a dir='ltr' href='http://jakub-linhart.blogspot.com/search/label/NHDatabaseScopes'>NHDatabaseScopes</a>
<span class='label-count' dir='ltr'>(4)</span>
</span>
<span class='label-size label-size-4'>
<a dir='ltr' href='http://jakub-linhart.blogspot.com/search/label/javascript%20registration'>javascript registration</a>
<span class='label-count' dir='ltr'>(4)</span>
</span>
<span class='label-size label-size-4'>
<a dir='ltr' href='http://jakub-linhart.blogspot.com/search/label/Sqlite'>Sqlite</a>
<span class='label-count' dir='ltr'>(3)</span>
</span>
<span class='label-size label-size-4'>
<a dir='ltr' href='http://jakub-linhart.blogspot.com/search/label/testing'>testing</a>
<span class='label-count' dir='ltr'>(3)</span>
</span>
<span class='label-size label-size-3'>
<a dir='ltr' href='http://jakub-linhart.blogspot.com/search/label/AJAX'>AJAX</a>
<span class='label-count' dir='ltr'>(2)</span>
</span>
<span class='label-size label-size-3'>
<a dir='ltr' href='http://jakub-linhart.blogspot.com/search/label/RadWindow'>RadWindow</a>
<span class='label-count' dir='ltr'>(2)</span>
</span>
<span class='label-size label-size-3'>
<a dir='ltr' href='http://jakub-linhart.blogspot.com/search/label/delegate'>delegate</a>
<span class='label-count' dir='ltr'>(2)</span>
</span>
<span class='label-size label-size-3'>
<a dir='ltr' href='http://jakub-linhart.blogspot.com/search/label/serialization'>serialization</a>
<span class='label-count' dir='ltr'>(2)</span>
</span>
<span class='label-size label-size-1'>
<a dir='ltr' href='http://jakub-linhart.blogspot.com/search/label/telerik'>telerik</a>
<span class='label-count' dir='ltr'>(1)</span>
</span>
<span class='label-size label-size-1'>
<a dir='ltr' href='http://jakub-linhart.blogspot.com/search/label/unit%20tests'>unit tests</a>
<span class='label-count' dir='ltr'>(1)</span>
</span>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=8089455461752760430&widgetType=Label&widgetId=Label1&action=editWidget&sectionId=sidebar-right-1' onclick='return _WidgetManager._PopupConfig(document.getElementById("Label1"));' rel='nofollow' target='configLabel1' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div>
</div><div class='widget LinkList' data-version='1' id='LinkList1'>
<h2>Links</h2>
<div class='widget-content'>
<ul>
<li><a href='https://github.com/JakubLinhart'>GitHub</a></li>
<li><a href='http://nhdatabasescopes.codeplex.com/'>NHDatabaseScopes</a></li>
</ul>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=8089455461752760430&widgetType=LinkList&widgetId=LinkList1&action=editWidget&sectionId=sidebar-right-1' onclick='return _WidgetManager._PopupConfig(document.getElementById("LinkList1"));' rel='nofollow' target='configLinkList1' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div>
</div><div class='widget HTML' data-version='1' id='HTML1'>
<div class='widget-content'>
<a href="http://stackoverflow.com/users/291379/jakub-linhart">
<img src="http://stackoverflow.com/users/flair/291379.png?theme=clean" width="208" height="58" alt="profile for Jakub Linhart at Stack Overflow, Q&amp;A for professional and enthusiast programmers" title="profile for Jakub Linhart at Stack Overflow, Q&amp;A for professional and enthusiast programmers" />
</a>
</div>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=8089455461752760430&widgetType=HTML&widgetId=HTML1&action=editWidget&sectionId=sidebar-right-1' onclick='return _WidgetManager._PopupConfig(document.getElementById("HTML1"));' rel='nofollow' target='configHTML1' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div></div>
</aside>
</div>
</div>
</div>
<div style='clear: both'></div>
<!-- columns -->
</div>
<!-- main -->
</div>
</div>
<div class='main-cap-bottom cap-bottom'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
</div>
<footer>
<div class='footer-outer'>
<div class='footer-cap-top cap-top'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
<div class='fauxborder-left footer-fauxborder-left'>
<div class='fauxborder-right footer-fauxborder-right'></div>
<div class='region-inner footer-inner'>
<div class='foot no-items section' id='footer-1'></div>
<table border='0' cellpadding='0' cellspacing='0' class='section-columns columns-2'>
<tbody>
<tr>
<td class='first columns-cell'>
<div class='foot no-items section' id='footer-2-1'></div>
</td>
<td class='columns-cell'>
<div class='foot no-items section' id='footer-2-2'></div>
</td>
</tr>
</tbody>
</table>
<!-- outside of the include in order to lock Attribution widget -->
<div class='foot section' id='footer-3'><div class='widget Attribution' data-version='1' id='Attribution1'>
<div class='widget-content' style='text-align: center;'>
Powered by <a href='https://www.blogger.com' target='_blank'>Blogger</a>.
</div>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=8089455461752760430&widgetType=Attribution&widgetId=Attribution1&action=editWidget&sectionId=footer-3' onclick='return _WidgetManager._PopupConfig(document.getElementById("Attribution1"));' rel='nofollow' target='configAttribution1' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div></div>
</div>
</div>
<div class='footer-cap-bottom cap-bottom'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
</div>
</footer>
<!-- content -->
</div>
</div>
<div class='content-cap-bottom cap-bottom'>
<div class='cap-left'></div>
<div class='cap-right'></div>
</div>
</div>
</div>
<script type='text/javascript'>
    window.setTimeout(function() {
        document.body.className = document.body.className.replace('loading', '');
      }, 10);

    SyntaxHighlighter.config.bloggerMode = true;
    SyntaxHighlighter.all();
  </script>

<script type="text/javascript" src="https://www.blogger.com/static/v1/widgets/226545023-widgets.js"></script>
<script type='text/javascript'>
window['__wavt'] = 'AOuZoY7wXKDjlI5iE9VBvFlqEYiCptGQCQ:1602700541234';_WidgetManager._Init('//www.blogger.com/rearrange?blogID\x3d8089455461752760430','//jakub-linhart.blogspot.com/','8089455461752760430');
_WidgetManager._SetDataContext([{'name': 'blog', 'data': {'blogId': '8089455461752760430', 'title': 'Got run over on information highway', 'url': 'http://jakub-linhart.blogspot.com/', 'canonicalUrl': 'http://jakub-linhart.blogspot.com/', 'homepageUrl': 'http://jakub-linhart.blogspot.com/', 'searchUrl': 'http://jakub-linhart.blogspot.com/search', 'canonicalHomepageUrl': 'http://jakub-linhart.blogspot.com/', 'blogspotFaviconUrl': 'http://jakub-linhart.blogspot.com/favicon.ico', 'bloggerUrl': 'https://www.blogger.com', 'hasCustomDomain': false, 'httpsEnabled': true, 'enabledCommentProfileImages': true, 'gPlusViewType': 'FILTERED_POSTMOD', 'adultContent': false, 'analyticsAccountNumber': '', 'encoding': 'UTF-8', 'locale': 'en', 'localeUnderscoreDelimited': 'en', 'languageDirection': 'ltr', 'isPrivate': false, 'isMobile': false, 'isMobileRequest': false, 'mobileClass': '', 'isPrivateBlog': false, 'isDynamicViewsAvailable': true, 'feedLinks': '\x3clink rel\x3d\x22alternate\x22 type\x3d\x22application/atom+xml\x22 title\x3d\x22Got run over on information highway - Atom\x22 href\x3d\x22http://jakub-linhart.blogspot.com/feeds/posts/default\x22 /\x3e\n\x3clink rel\x3d\x22alternate\x22 type\x3d\x22application/rss+xml\x22 title\x3d\x22Got run over on information highway - RSS\x22 href\x3d\x22http://jakub-linhart.blogspot.com/feeds/posts/default?alt\x3drss\x22 /\x3e\n\x3clink rel\x3d\x22service.post\x22 type\x3d\x22application/atom+xml\x22 title\x3d\x22Got run over on information highway - Atom\x22 href\x3d\x22https://www.blogger.com/feeds/8089455461752760430/posts/default\x22 /\x3e\n', 'meTag': '', 'adsenseHostId': 'ca-host-pub-1556223355139109', 'adsenseHasAds': false, 'ieCssRetrofitLinks': '\x3c!--[if IE]\x3e\x3cscript type\x3d\x22text/javascript\x22 src\x3d\x22https://www.blogger.com/static/v1/jsbin/4244862144-ieretrofit.js\x22\x3e\x3c/script\x3e\n\x3c![endif]--\x3e', 'view': '', 'dynamicViewsCommentsSrc': '//www.blogblog.com/dynamicviews/4224c15c4e7c9321/js/comments.js', 'dynamicViewsScriptSrc': '//www.blogblog.com/dynamicviews/6465efe1e2987800', 'plusOneApiSrc': 'https://apis.google.com/js/plusone.js', 'disableGComments': true, 'sharing': {'platforms': [{'name': 'Get link', 'key': 'link', 'shareMessage': 'Get link', 'target': ''}, {'name': 'Facebook', 'key': 'facebook', 'shareMessage': 'Share to Facebook', 'target': 'facebook'}, {'name': 'BlogThis!', 'key': 'blogThis', 'shareMessage': 'BlogThis!', 'target': 'blog'}, {'name': 'Twitter', 'key': 'twitter', 'shareMessage': 'Share to Twitter', 'target': 'twitter'}, {'name': 'Pinterest', 'key': 'pinterest', 'shareMessage': 'Share to Pinterest', 'target': 'pinterest'}, {'name': 'Email', 'key': 'email', 'shareMessage': 'Email', 'target': 'email'}], 'disableGooglePlus': true, 'googlePlusShareButtonWidth': 300, 'googlePlusBootstrap': '\x3cscript type\x3d\x22text/javascript\x22\x3ewindow.___gcfg \x3d {\x27lang\x27: \x27en\x27};\x3c/script\x3e'}, 'hasCustomJumpLinkMessage': false, 'jumpLinkMessage': 'Read more', 'pageType': 'index', 'pageName': '', 'pageTitle': 'Got run over on information highway'}}, {'name': 'features', 'data': {'sharing_get_link_dialog': 'true', 'sharing_native': 'false'}}, {'name': 'messages', 'data': {'edit': 'Edit', 'linkCopiedToClipboard': 'Link copied to clipboard!', 'ok': 'Ok', 'postLink': 'Post Link'}}, {'name': 'template', 'data': {'name': 'custom', 'localizedName': 'Custom', 'isResponsive': false, 'isAlternateRendering': false, 'isCustom': true}}, {'name': 'view', 'data': {'classic': {'name': 'classic', 'url': '?view\x3dclassic'}, 'flipcard': {'name': 'flipcard', 'url': '?view\x3dflipcard'}, 'magazine': {'name': 'magazine', 'url': '?view\x3dmagazine'}, 'mosaic': {'name': 'mosaic', 'url': '?view\x3dmosaic'}, 'sidebar': {'name': 'sidebar', 'url': '?view\x3dsidebar'}, 'snapshot': {'name': 'snapshot', 'url': '?view\x3dsnapshot'}, 'timeslide': {'name': 'timeslide', 'url': '?view\x3dtimeslide'}, 'isMobile': false, 'title': 'Got run over on information highway', 'description': '', 'url': 'http://jakub-linhart.blogspot.com/', 'type': 'feed', 'isSingleItem': false, 'isMultipleItems': true, 'isError': false, 'isPage': false, 'isPost': false, 'isHomepage': true, 'isArchive': false, 'isLabelSearch': false}}]);
_WidgetManager._RegisterWidget('_NavbarView', new _WidgetInfo('Navbar1', 'navbar', document.getElementById('Navbar1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HeaderView', new _WidgetInfo('Header1', 'header', document.getElementById('Header1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_BlogView', new _WidgetInfo('Blog1', 'main', document.getElementById('Blog1'), {'cmtInteractionsEnabled': false, 'lightboxEnabled': true, 'lightboxModuleUrl': 'https://www.blogger.com/static/v1/jsbin/2777028690-lbx.js', 'lightboxCssUrl': 'https://www.blogger.com/static/v1/v-css/368954415-lightbox_bundle.css'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_BlogArchiveView', new _WidgetInfo('BlogArchive1', 'sidebar-right-1', document.getElementById('BlogArchive1'), {'languageDirection': 'ltr', 'loadingMessage': 'Loading\x26hellip;'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LabelView', new _WidgetInfo('Label1', 'sidebar-right-1', document.getElementById('Label1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList1', 'sidebar-right-1', document.getElementById('LinkList1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML1', 'sidebar-right-1', document.getElementById('HTML1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_AttributionView', new _WidgetInfo('Attribution1', 'footer-3', document.getElementById('Attribution1'), {}, 'displayModeFull'));
</script>
</body>
</html>