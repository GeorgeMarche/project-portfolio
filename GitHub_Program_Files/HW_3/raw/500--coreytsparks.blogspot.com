<!DOCTYPE html>
<html class='v2' dir='ltr' lang='en'>
<head>
<link href='https://www.blogger.com/static/v1/widgets/3416767676-css_bundle_v2.css' rel='stylesheet' type='text/css'/>
<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'/>
<meta content='blogger' name='generator'/>
<link href='http://coreytsparks.blogspot.com/favicon.ico' rel='icon' type='image/x-icon'/>
<link href='http://coreytsparks.blogspot.com/' rel='canonical'/>
<link rel="alternate" type="application/atom+xml" title="corey sparks - Atom" href="http://coreytsparks.blogspot.com/feeds/posts/default" />
<link rel="alternate" type="application/rss+xml" title="corey sparks - RSS" href="http://coreytsparks.blogspot.com/feeds/posts/default?alt=rss" />
<link rel="service.post" type="application/atom+xml" title="corey sparks - Atom" href="https://www.blogger.com/feeds/6391669795281157099/posts/default" />
<link rel="me" href="https://www.blogger.com/profile/11218232820213790415" />
<!--[if IE]><script type="text/javascript" src="https://www.blogger.com/static/v1/jsbin/4244862144-ieretrofit.js"></script>
<![endif]-->
<meta content='http://coreytsparks.blogspot.com/' property='og:url'/>
<meta content='corey sparks' property='og:title'/>
<meta content='' property='og:description'/>
<!--[if IE]> <script> (function() { var html5 = ("abbr,article,aside,audio,canvas,datalist,details," + "figure,footer,header,hgroup,mark,menu,meter,nav,output," + "progress,section,time,video").split(','); for (var i = 0; i < html5.length; i++) { document.createElement(html5[i]); } try { document.execCommand('BackgroundImageCache', false, true); } catch(e) {} })(); </script> <![endif]-->
<title>corey sparks</title>
<meta content='!' name='fragment'/>
<meta content='dynamic' name='blogger-template'/>
<meta content='IE=9,chrome=1' http-equiv='X-UA-Compatible'/>
<meta content='initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width' name='viewport'/>
<style id='page-skin-1' type='text/css'><!--
/*-----------------------------------------------
Blogger Template Style
Name: Dynamic Views
----------------------------------------------- */
/* Variable definitions
====================
<Variable name="keycolor" description="Main Color" type="color" default="#ffffff"
variants="#2b256f,#00b2b4,#4ba976,#696f00,#b38f00,#f07300,#d0422c,#f37a86,#7b5341"/>
<Group description="Page">
<Variable name="page.text.font" description="Font" type="font"
default="'Helvetica Neue Light', HelveticaNeue-Light, 'Helvetica Neue', Helvetica, Arial, sans-serif"/>
<Variable name="page.text.color" description="Text Color" type="color"
default="#333333" variants="#333333"/>
<Variable name="body.background.color" description="Background Color" type="color"
default="#EEEEEE"
variants="#dfdfea,#d9f4f4,#e4f2eb,#e9ead9,#f4eed9,#fdead9,#f8e3e0,#fdebed,#ebe5e3"/>
</Group>
<Variable name="body.background" description="Body Background" type="background"
color="#EEEEEE" default="$(color) none repeat scroll top left"/>
<Group description="Header">
<Variable name="header.background.color" description="Background Color" type="color"
default="#F3F3F3" variants="#F3F3F3"/>
</Group>
<Group description="Header Bar">
<Variable name="primary.color" description="Background Color" type="color"
default="#333333" variants="#2b256f,#00b2b4,#4ba976,#696f00,#b38f00,#f07300,#d0422c,#f37a86,#7b5341"/>
<Variable name="menu.font" description="Font" type="font"
default="'Helvetica Neue Light', HelveticaNeue-Light, 'Helvetica Neue', Helvetica, Arial, sans-serif"/>
<Variable name="menu.text.color" description="Text Color" type="color"
default="#FFFFFF" variants="#FFFFFF"/>
</Group>
<Group description="Links">
<Variable name="link.font" description="Link Text" type="font"
default="'Helvetica Neue Light', HelveticaNeue-Light, 'Helvetica Neue', Helvetica, Arial, sans-serif"/>
<Variable name="link.color" description="Link Color" type="color"
default="#009EB8"
variants="#2b256f,#00b2b4,#4ba976,#696f00,#b38f00,#f07300,#d0422c,#f37a86,#7b5341"/>
<Variable name="link.hover.color" description="Link Hover Color" type="color"
default="#009EB8"
variants="#2b256f,#00b2b4,#4ba976,#696f00,#b38f00,#f07300,#d0422c,#f37a86,#7b5341"/>
<Variable name="link.visited.color" description="Link Visited Color" type="color"
default="#009EB8"
variants="#2b256f,#00b2b4,#4ba976,#696f00,#b38f00,#f07300,#d0422c,#f37a86,#7b5341"/>
</Group>
<Group description="Blog Title">
<Variable name="blog.title.font" description="Font" type="font"
default="'Helvetica Neue Light', HelveticaNeue-Light, 'Helvetica Neue', Helvetica, Arial, sans-serif"/>
<Variable name="blog.title.color" description="Color" type="color"
default="#555555" variants="#555555"/>
</Group>
<Group description="Blog Description">
<Variable name="blog.description.font" description="Font" type="font"
default="'Helvetica Neue Light', HelveticaNeue-Light, 'Helvetica Neue', Helvetica, Arial, sans-serif"/>
<Variable name="blog.description.color" description="Color" type="color"
default="#555555" variants="#555555"/>
</Group>
<Group description="Post Title">
<Variable name="post.title.font" description="Font" type="font"
default="'Helvetica Neue Light', HelveticaNeue-Light, 'Helvetica Neue', Helvetica, Arial, sans-serif"/>
<Variable name="post.title.color" description="Color" type="color"
default="#333333" variants="#333333"/>
</Group>
<Group description="Date Ribbon">
<Variable name="ribbon.color" description="Color" type="color"
default="#666666" variants="#2b256f,#00b2b4,#4ba976,#696f00,#b38f00,#f07300,#d0422c,#f37a86,#7b5341"/>
<Variable name="ribbon.hover.color" description="Hover Color" type="color"
default="#AD3A2B" variants="#AD3A2B"/>
</Group>
<Variable name="blitzview" description="Initial view type" type="string" default="sidebar"/>
*/
/* BEGIN CUT */
{
"font:Text": "'Helvetica Neue Light', HelveticaNeue-Light, 'Helvetica Neue', Helvetica, Arial, sans-serif",
"color:Text": "#333333",
"image:Background": "#EEEEEE none repeat scroll top left",
"color:Background": "#EEEEEE",
"color:Header Background": "#F3F3F3",
"color:Primary": "#333333",
"color:Menu Text": "#FFFFFF",
"font:Menu": "'Helvetica Neue Light', HelveticaNeue-Light, 'Helvetica Neue', Helvetica, Arial, sans-serif",
"font:Link": "'Helvetica Neue Light', HelveticaNeue-Light, 'Helvetica Neue', Helvetica, Arial, sans-serif",
"color:Link": "#009EB8",
"color:Link Visited": "#009EB8",
"color:Link Hover": "#009EB8",
"font:Blog Title": "'Helvetica Neue Light', HelveticaNeue-Light, 'Helvetica Neue', Helvetica, Arial, sans-serif",
"color:Blog Title": "#555555",
"font:Blog Description": "'Helvetica Neue Light', HelveticaNeue-Light, 'Helvetica Neue', Helvetica, Arial, sans-serif",
"color:Blog Description": "#555555",
"font:Post Title": "'Helvetica Neue Light', HelveticaNeue-Light, 'Helvetica Neue', Helvetica, Arial, sans-serif",
"color:Post Title": "#333333",
"color:Ribbon": "#666666",
"color:Ribbon Hover": "#AD3A2B",
"view": "flipcard"
}
/* END CUT */
#gadget-dock{
position: fixed !important;
right: 0px !important;
}
#header .tabs li:first-child{
border-left: 0px !important;
}
.flipcard .items .item .card .front, .flipcard .items .item .card .back{
background-color: black !important;
}
.flipcard #content, .ss {
padding-right: 38px;
margin-left: auto !important;
margin-right: auto !important;
width: 780px !important;
}
#header #pages:before{
border-left: 0px !important;
}
#header .tabs li, .ss{
margin-left:0px !important;
padding-left: 10px !important;
padding-right: 5px !important;
border-left: 1px solid white;
}
#views{
display: none !important;
}
#header #pages, #header #pages:before{
border-left: 0px !important;
}
.overlay .title, .ss{
height: 110px !important;
max-height: 110px !important;
font-size: 14px;
}
#groups li:nth-child(1), #groups li:nth-child(2), #groups li:nth-child(3), #groups li:nth-child(4){
font-size: 0px;
}
.group:nth-child(1){
display: none !important;
}
.group:nth-child(2){
display: none !important;
}
.group:nth-child(3){
display: none !important;
}
.group:nth-child(4){
display: none !important;
}
--></style>
<style id='template-skin-1' type='text/css'><!--
body {
min-width: 960px;
}
.column-center-outer {
margin-top: 46px;
}
.content-outer, .content-fauxcolumn-outer, .region-inner {
min-width: 960px;
max-width: 960px;
_width: 960px;
}
.main-inner .columns {
padding-left: 0;
padding-right: 310px;
}
.main-inner .fauxcolumn-center-outer {
left: 0;
right: 310px;
/* IE6 does not respect left and right together */
_width: expression(this.parentNode.offsetWidth -
parseInt("0") -
parseInt("310px") + 'px');
}
.main-inner .fauxcolumn-left-outer {
width: 0;
}
.main-inner .fauxcolumn-right-outer {
width: 310px;
}
.main-inner .column-left-outer {
width: 0;
right: 100%;
margin-left: -0;
}
.main-inner .column-right-outer {
width: 310px;
margin-right: -310px;
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
<script src='//www.blogblog.com/dynamicviews/6465efe1e2987800/js/thirdparty/jquery.js' type='text/javascript'></script>
<script src='//www.blogblog.com/dynamicviews/6465efe1e2987800/js/thirdparty/jquery-mousewheel.js' type='text/javascript'></script>
<script src='//www.blogblog.com/dynamicviews/6465efe1e2987800/js/common.js' type='text/javascript'></script>
<script src='//www.blogblog.com/dynamicviews/6465efe1e2987800/js/flipcard.js' type='text/javascript'></script>
<script src='//www.blogblog.com/dynamicviews/6465efe1e2987800/js/gadgets.js' type='text/javascript'></script>
<script src='//www.blogblog.com/dynamicviews/4224c15c4e7c9321/js/comments.js'></script>
<script type='text/javascript'>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-27598878-1', 'auto', 'blogger');
        ga('blogger.send', 'pageview');
      </script>
<link href='https://www.blogger.com/dyn-css/authorization.css?targetBlogID=6391669795281157099&amp;zx=8be27a59-7532-4d62-a1dc-6c6ecb4138f0' media='none' onload='if(media!=&#39;all&#39;)media=&#39;all&#39;' rel='stylesheet'/><noscript><link href='https://www.blogger.com/dyn-css/authorization.css?targetBlogID=6391669795281157099&amp;zx=8be27a59-7532-4d62-a1dc-6c6ecb4138f0' rel='stylesheet'/></noscript>

</head>
<body class='variant-flipcard'>
<div class='content'>
<div class='content-outer'>
<div class='fauxborder-left content-fauxborder-left'>
<div class='content-inner'>
<div class='main-outer'>
<div class='fauxborder-left main-fauxborder-left'>
<div class='region-inner main-inner'>
<div class='columns fauxcolumns'>
<div class='column-center-outer'>
<div class='column-center-inner'>
<div class='main section' id='main'>
</div>
</div>
</div>
<div class='column-right-outer'>
<div class='column-right-inner'>
<aside>
<div class='sidebar section' id='sidebar-right-1'>
</div>
</aside>
</div>
</div>
<div style='clear: both'></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<script language='javascript' type='text/javascript'>
        window.onload = function() {
          blogger.ui().configure().view();
        };
      </script>
<script src='https://apis.google.com/js/plusone.js' type='text/javascript'></script>

<script type="text/javascript" src="https://www.blogger.com/static/v1/widgets/226545023-widgets.js"></script>
<script type='text/javascript'>
window['__wavt'] = 'AOuZoY4IlRJB23CG4TAiEh-znF-OFQ074Q:1602700572976';_WidgetManager._Init('//www.blogger.com/rearrange?blogID\x3d6391669795281157099','//coreytsparks.blogspot.com/','6391669795281157099');
_WidgetManager._SetDataContext([{'name': 'blog', 'data': {'blogId': '6391669795281157099', 'title': 'corey sparks', 'url': 'http://coreytsparks.blogspot.com/', 'canonicalUrl': 'http://coreytsparks.blogspot.com/', 'homepageUrl': 'http://coreytsparks.blogspot.com/', 'searchUrl': 'http://coreytsparks.blogspot.com/search', 'canonicalHomepageUrl': 'http://coreytsparks.blogspot.com/', 'blogspotFaviconUrl': 'http://coreytsparks.blogspot.com/favicon.ico', 'bloggerUrl': 'https://www.blogger.com', 'hasCustomDomain': false, 'httpsEnabled': true, 'enabledCommentProfileImages': true, 'gPlusViewType': 'FILTERED_POSTMOD', 'adultContent': false, 'analyticsAccountNumber': 'UA-27598878-1', 'encoding': 'UTF-8', 'locale': 'en', 'localeUnderscoreDelimited': 'en', 'languageDirection': 'ltr', 'isPrivate': false, 'isMobile': false, 'isMobileRequest': false, 'mobileClass': '', 'isPrivateBlog': false, 'isDynamicViewsAvailable': true, 'feedLinks': '\x3clink rel\x3d\x22alternate\x22 type\x3d\x22application/atom+xml\x22 title\x3d\x22corey sparks - Atom\x22 href\x3d\x22http://coreytsparks.blogspot.com/feeds/posts/default\x22 /\x3e\n\x3clink rel\x3d\x22alternate\x22 type\x3d\x22application/rss+xml\x22 title\x3d\x22corey sparks - RSS\x22 href\x3d\x22http://coreytsparks.blogspot.com/feeds/posts/default?alt\x3drss\x22 /\x3e\n\x3clink rel\x3d\x22service.post\x22 type\x3d\x22application/atom+xml\x22 title\x3d\x22corey sparks - Atom\x22 href\x3d\x22https://www.blogger.com/feeds/6391669795281157099/posts/default\x22 /\x3e\n', 'meTag': '\x3clink rel\x3d\x22me\x22 href\x3d\x22https://www.blogger.com/profile/11218232820213790415\x22 /\x3e\n', 'adsenseHostId': 'ca-host-pub-1556223355139109', 'adsenseHasAds': false, 'ieCssRetrofitLinks': '\x3c!--[if IE]\x3e\x3cscript type\x3d\x22text/javascript\x22 src\x3d\x22https://www.blogger.com/static/v1/jsbin/4244862144-ieretrofit.js\x22\x3e\x3c/script\x3e\n\x3c![endif]--\x3e', 'view': '', 'dynamicViewsCommentsSrc': '//www.blogblog.com/dynamicviews/4224c15c4e7c9321/js/comments.js', 'dynamicViewsScriptSrc': '//www.blogblog.com/dynamicviews/6465efe1e2987800', 'plusOneApiSrc': 'https://apis.google.com/js/plusone.js', 'disableGComments': true, 'sharing': {'platforms': [{'name': 'Get link', 'key': 'link', 'shareMessage': 'Get link', 'target': ''}, {'name': 'Facebook', 'key': 'facebook', 'shareMessage': 'Share to Facebook', 'target': 'facebook'}, {'name': 'BlogThis!', 'key': 'blogThis', 'shareMessage': 'BlogThis!', 'target': 'blog'}, {'name': 'Twitter', 'key': 'twitter', 'shareMessage': 'Share to Twitter', 'target': 'twitter'}, {'name': 'Pinterest', 'key': 'pinterest', 'shareMessage': 'Share to Pinterest', 'target': 'pinterest'}, {'name': 'Email', 'key': 'email', 'shareMessage': 'Email', 'target': 'email'}], 'disableGooglePlus': true, 'googlePlusShareButtonWidth': 300, 'googlePlusBootstrap': '\x3cscript type\x3d\x22text/javascript\x22\x3ewindow.___gcfg \x3d {\x27lang\x27: \x27en\x27};\x3c/script\x3e'}, 'hasCustomJumpLinkMessage': false, 'jumpLinkMessage': 'Read more', 'pageType': 'index', 'pageName': '', 'pageTitle': 'corey sparks'}}, {'name': 'features', 'data': {'sharing_get_link_dialog': 'true', 'sharing_native': 'false'}}, {'name': 'messages', 'data': {'edit': 'Edit', 'linkCopiedToClipboard': 'Link copied to clipboard!', 'ok': 'Ok', 'postLink': 'Post Link'}}, {'name': 'skin', 'data': {'vars': {'link_color': '#009EB8', 'post_title_color': '#333333', 'blog_description_font': '\x27Helvetica Neue Light\x27, HelveticaNeue-Light, \x27Helvetica Neue\x27, Helvetica, Arial, sans-serif', 'body_background_color': '#EEEEEE', 'ribbon_color': '#666666', 'body_background': '#EEEEEE none repeat scroll top left', 'blitzview': 'flipcard', 'link_visited_color': '#009EB8', 'link_hover_color': '#009EB8', 'header_background_color': '#F3F3F3', 'keycolor': '#ffffff', 'page_text_font': '\x27Helvetica Neue Light\x27, HelveticaNeue-Light, \x27Helvetica Neue\x27, Helvetica, Arial, sans-serif', 'blog_title_color': '#555555', 'ribbon_hover_color': '#AD3A2B', 'blog_title_font': '\x27Helvetica Neue Light\x27, HelveticaNeue-Light, \x27Helvetica Neue\x27, Helvetica, Arial, sans-serif', 'link_font': '\x27Helvetica Neue Light\x27, HelveticaNeue-Light, \x27Helvetica Neue\x27, Helvetica, Arial, sans-serif', 'menu_font': '\x27Helvetica Neue Light\x27, HelveticaNeue-Light, \x27Helvetica Neue\x27, Helvetica, Arial, sans-serif', 'primary_color': '#333333', 'page_text_color': '#333333', 'post_title_font': '\x27Helvetica Neue Light\x27, HelveticaNeue-Light, \x27Helvetica Neue\x27, Helvetica, Arial, sans-serif', 'blog_description_color': '#555555', 'menu_text_color': '#FFFFFF'}, 'override': '#gadget-dock{\nposition: fixed !important;\nright: 0px !important;\n}\n#header .tabs li:first-child{\nborder-left: 0px !important;\n}\n.flipcard .items .item .card .front, .flipcard .items .item .card .back{\nbackground-color: black !important;\n}\n.flipcard #content, .ss {\npadding-right: 38px;\nmargin-left: auto !important;\nmargin-right: auto !important;\nwidth: 780px !important;\n}\n#header #pages:before{\nborder-left: 0px !important;\n}\n#header .tabs li, .ss{\nmargin-left:0px !important;\npadding-left: 10px !important;\npadding-right: 5px !important;\nborder-left: 1px solid white;\n}\n#views{\ndisplay: none !important;\n}\n \n#header #pages, #header #pages:before{\nborder-left: 0px !important;\n}\n.overlay .title, .ss{\nheight: 110px !important;\nmax-height: 110px !important;\nfont-size: 14px;\n}\n#groups li:nth-child(1), #groups li:nth-child(2), #groups li:nth-child(3), #groups li:nth-child(4){\nfont-size: 0px;\n}\n.group:nth-child(1){\ndisplay: none !important;\n}\n.group:nth-child(2){\ndisplay: none !important;\n}\n.group:nth-child(3){\ndisplay: none !important;\n}\n.group:nth-child(4){\ndisplay: none !important;\n}', 'url': 'blitz.css'}}, {'name': 'template', 'data': {'name': 'Dynamic Views', 'localizedName': 'Dynamic Views', 'isResponsive': false, 'isAlternateRendering': false, 'isCustom': false, 'variant': 'flipcard', 'variantId': 'flipcard'}}, {'name': 'view', 'data': {'classic': {'name': 'classic', 'url': '?view\x3dclassic'}, 'flipcard': {'name': 'flipcard', 'url': '?view\x3dflipcard'}, 'magazine': {'name': 'magazine', 'url': '?view\x3dmagazine'}, 'mosaic': {'name': 'mosaic', 'url': '?view\x3dmosaic'}, 'sidebar': {'name': 'sidebar', 'url': '?view\x3dsidebar'}, 'snapshot': {'name': 'snapshot', 'url': '?view\x3dsnapshot'}, 'timeslide': {'name': 'timeslide', 'url': '?view\x3dtimeslide'}, 'isMobile': false, 'title': 'corey sparks', 'description': '', 'url': 'http://coreytsparks.blogspot.com/', 'type': 'feed', 'isSingleItem': false, 'isMultipleItems': true, 'isError': false, 'isPage': false, 'isPost': false, 'isHomepage': true, 'isArchive': false, 'isLabelSearch': false}}]);
_WidgetManager._RegisterWidget('_BlogView', new _WidgetInfo('Blog1', 'main', document.getElementById('Blog1'), {'cmtInteractionsEnabled': false, 'lightboxEnabled': true, 'lightboxModuleUrl': 'https://www.blogger.com/static/v1/jsbin/2777028690-lbx.js', 'lightboxCssUrl': 'https://www.blogger.com/static/v1/v-css/368954415-lightbox_bundle.css'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HeaderView', new _WidgetInfo('Header1', 'sidebar-right-1', document.getElementById('Header1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_ProfileView', new _WidgetInfo('Profile1', 'sidebar-right-1', document.getElementById('Profile1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML1', 'sidebar-right-1', document.getElementById('HTML1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_BlogArchiveView', new _WidgetInfo('BlogArchive1', 'sidebar-right-1', document.getElementById('BlogArchive1'), {'languageDirection': 'ltr', 'loadingMessage': 'Loading\x26hellip;'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_NavbarView', new _WidgetInfo('Navbar1', 'sidebar-right-1', document.getElementById('Navbar1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_PageListView', new _WidgetInfo('PageList1', 'sidebar-right-1', document.getElementById('PageList1'), {'title': 'Pages', 'links': [{'isCurrentPage': true, 'href': 'http://coreytsparks.blogspot.com/', 'title': 'Home'}, {'isCurrentPage': false, 'href': 'http://coreytsparks.blogspot.com/p/cv.html', 'id': '2849604277124770987', 'title': 'CV'}, {'isCurrentPage': false, 'href': 'http://coreytsparks.blogspot.com/p/te.html', 'id': '1039534123052305170', 'title': 'Teaching'}, {'isCurrentPage': false, 'href': 'http://coreytsparks.blogspot.com/p/research.html', 'id': '2970496525881430963', 'title': 'Research'}, {'isCurrentPage': false, 'href': 'http://coreytsparks.blogspot.com/p/about-this-space.html', 'id': '8946859163627457822', 'title': 'About this Space'}, {'isCurrentPage': false, 'href': 'http://coreytsparks.blogspot.com/p/contact.html', 'id': '6200696698848575964', 'title': 'Contact'}], 'mobile': false}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_AttributionView', new _WidgetInfo('Attribution1', 'sidebar-right-1', document.getElementById('Attribution1'), {}, 'displayModeFull'));
</script>
</body>
</html>