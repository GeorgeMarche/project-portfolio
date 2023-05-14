<!DOCTYPE html>
<html class='v2' dir='ltr' lang='en'>
<head>
<link href='https://www.blogger.com/static/v1/widgets/3416767676-css_bundle_v2.css' rel='stylesheet' type='text/css'/>
<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'/>
<meta content='blogger' name='generator'/>
<link href='http://powerfromspace.blogspot.com/favicon.ico' rel='icon' type='image/x-icon'/>
<link href='http://powerfromspace.blogspot.com/' rel='canonical'/>
<link rel="alternate" type="application/atom+xml" title="Power From Space 2.0 - Atom" href="http://powerfromspace.blogspot.com/feeds/posts/default" />
<link rel="alternate" type="application/rss+xml" title="Power From Space 2.0 - RSS" href="http://powerfromspace.blogspot.com/feeds/posts/default?alt=rss" />
<link rel="service.post" type="application/atom+xml" title="Power From Space 2.0 - Atom" href="https://www.blogger.com/feeds/4368905966851333624/posts/default" />
<link rel="me" href="https://www.blogger.com/profile/11577429969275096739" />
<!--[if IE]><script type="text/javascript" src="https://www.blogger.com/static/v1/jsbin/4244862144-ieretrofit.js"></script>
<![endif]-->
<meta content='POWERFROMSPACE  BLOG, NASA, SPACEX, GXLP, LUNAR XPRIZE, CISLUNAR, SPACE SOLAR POWER' name='description'/>
<meta content='http://powerfromspace.blogspot.com/' property='og:url'/>
<meta content='Power From Space 2.0' property='og:title'/>
<meta content='POWERFROMSPACE  BLOG, NASA, SPACEX, GXLP, LUNAR XPRIZE, CISLUNAR, SPACE SOLAR POWER' property='og:description'/>
<!--[if IE]> <script> (function() { var html5 = ("abbr,article,aside,audio,canvas,datalist,details," + "figure,footer,header,hgroup,mark,menu,meter,nav,output," + "progress,section,time,video").split(','); for (var i = 0; i < html5.length; i++) { document.createElement(html5[i]); } try { document.execCommand('BackgroundImageCache', false, true); } catch(e) {} })(); </script> <![endif]-->
<title>Power From Space 2.0</title>
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
"view": "magazine"
}
/* END CUT */

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
<script src='//www.blogblog.com/dynamicviews/6465efe1e2987800/js/magazine.js' type='text/javascript'></script>
<script src='//www.blogblog.com/dynamicviews/6465efe1e2987800/js/gadgets.js' type='text/javascript'></script>
<script src='//www.blogblog.com/dynamicviews/4224c15c4e7c9321/js/comments.js'></script>
<link href='https://www.blogger.com/dyn-css/authorization.css?targetBlogID=4368905966851333624&amp;zx=8d30b66b-6714-4bdb-8795-76415bd426aa' media='none' onload='if(media!=&#39;all&#39;)media=&#39;all&#39;' rel='stylesheet'/><noscript><link href='https://www.blogger.com/dyn-css/authorization.css?targetBlogID=4368905966851333624&amp;zx=8d30b66b-6714-4bdb-8795-76415bd426aa' rel='stylesheet'/></noscript>

<!-- data-ad-client=ca-pub-8086390604148911 -->

</head>
<body class='variant-magazine'>
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
window['__wavt'] = 'AOuZoY7de1jakGtABPiPjioLgcGR0tC9Ag:1602700416180';_WidgetManager._Init('//www.blogger.com/rearrange?blogID\x3d4368905966851333624','//powerfromspace.blogspot.com/','4368905966851333624');
_WidgetManager._SetDataContext([{'name': 'blog', 'data': {'blogId': '4368905966851333624', 'title': '\x3cbr\x3e\x3ccenter\x3ePower From Space 2.0\x3c/center\x3e', 'url': 'http://powerfromspace.blogspot.com/', 'canonicalUrl': 'http://powerfromspace.blogspot.com/', 'homepageUrl': 'http://powerfromspace.blogspot.com/', 'searchUrl': 'http://powerfromspace.blogspot.com/search', 'canonicalHomepageUrl': 'http://powerfromspace.blogspot.com/', 'blogspotFaviconUrl': 'http://powerfromspace.blogspot.com/favicon.ico', 'bloggerUrl': 'https://www.blogger.com', 'hasCustomDomain': false, 'httpsEnabled': true, 'enabledCommentProfileImages': true, 'gPlusViewType': 'FILTERED_POSTMOD', 'adultContent': false, 'analyticsAccountNumber': '', 'encoding': 'UTF-8', 'locale': 'en', 'localeUnderscoreDelimited': 'en', 'languageDirection': 'ltr', 'isPrivate': false, 'isMobile': false, 'isMobileRequest': false, 'mobileClass': '', 'isPrivateBlog': false, 'isDynamicViewsAvailable': true, 'feedLinks': '\x3clink rel\x3d\x22alternate\x22 type\x3d\x22application/atom+xml\x22 title\x3d\x22Power From Space 2.0 - Atom\x22 href\x3d\x22http://powerfromspace.blogspot.com/feeds/posts/default\x22 /\x3e\n\x3clink rel\x3d\x22alternate\x22 type\x3d\x22application/rss+xml\x22 title\x3d\x22Power From Space 2.0 - RSS\x22 href\x3d\x22http://powerfromspace.blogspot.com/feeds/posts/default?alt\x3drss\x22 /\x3e\n\x3clink rel\x3d\x22service.post\x22 type\x3d\x22application/atom+xml\x22 title\x3d\x22Power From Space 2.0 - Atom\x22 href\x3d\x22https://www.blogger.com/feeds/4368905966851333624/posts/default\x22 /\x3e\n', 'meTag': '\x3clink rel\x3d\x22me\x22 href\x3d\x22https://www.blogger.com/profile/11577429969275096739\x22 /\x3e\n', 'adsenseClientId': 'ca-pub-8086390604148911', 'adsenseHostId': 'ca-host-pub-1556223355139109', 'adsenseHasAds': true, 'ieCssRetrofitLinks': '\x3c!--[if IE]\x3e\x3cscript type\x3d\x22text/javascript\x22 src\x3d\x22https://www.blogger.com/static/v1/jsbin/4244862144-ieretrofit.js\x22\x3e\x3c/script\x3e\n\x3c![endif]--\x3e', 'view': '', 'dynamicViewsCommentsSrc': '//www.blogblog.com/dynamicviews/4224c15c4e7c9321/js/comments.js', 'dynamicViewsScriptSrc': '//www.blogblog.com/dynamicviews/6465efe1e2987800', 'plusOneApiSrc': 'https://apis.google.com/js/plusone.js', 'disableGComments': true, 'sharing': {'platforms': [{'name': 'Get link', 'key': 'link', 'shareMessage': 'Get link', 'target': ''}, {'name': 'Facebook', 'key': 'facebook', 'shareMessage': 'Share to Facebook', 'target': 'facebook'}, {'name': 'BlogThis!', 'key': 'blogThis', 'shareMessage': 'BlogThis!', 'target': 'blog'}, {'name': 'Twitter', 'key': 'twitter', 'shareMessage': 'Share to Twitter', 'target': 'twitter'}, {'name': 'Pinterest', 'key': 'pinterest', 'shareMessage': 'Share to Pinterest', 'target': 'pinterest'}, {'name': 'Email', 'key': 'email', 'shareMessage': 'Email', 'target': 'email'}], 'disableGooglePlus': true, 'googlePlusShareButtonWidth': 300, 'googlePlusBootstrap': '\x3cscript type\x3d\x22text/javascript\x22\x3ewindow.___gcfg \x3d {\x27lang\x27: \x27en\x27};\x3c/script\x3e'}, 'hasCustomJumpLinkMessage': false, 'jumpLinkMessage': 'Read more', 'pageType': 'index', 'pageName': '', 'pageTitle': 'Power From Space 2.0', 'metaDescription': 'POWERFROMSPACE  BLOG, NASA, SPACEX, GXLP, LUNAR XPRIZE, CISLUNAR, SPACE SOLAR POWER'}}, {'name': 'features', 'data': {'sharing_get_link_dialog': 'true', 'sharing_native': 'false'}}, {'name': 'messages', 'data': {'edit': 'Edit', 'linkCopiedToClipboard': 'Link copied to clipboard!', 'ok': 'Ok', 'postLink': 'Post Link'}}, {'name': 'skin', 'data': {'vars': {'link_color': '#009EB8', 'post_title_color': '#333333', 'blog_description_font': '\x27Helvetica Neue Light\x27, HelveticaNeue-Light, \x27Helvetica Neue\x27, Helvetica, Arial, sans-serif', 'body_background_color': '#EEEEEE', 'ribbon_color': '#666666', 'body_background': '#EEEEEE none repeat scroll top left', 'blitzview': 'magazine', 'link_visited_color': '#009EB8', 'link_hover_color': '#009EB8', 'header_background_color': '#F3F3F3', 'keycolor': '#ffffff', 'page_text_font': '\x27Helvetica Neue Light\x27, HelveticaNeue-Light, \x27Helvetica Neue\x27, Helvetica, Arial, sans-serif', 'blog_title_color': '#555555', 'ribbon_hover_color': '#AD3A2B', 'blog_title_font': '\x27Helvetica Neue Light\x27, HelveticaNeue-Light, \x27Helvetica Neue\x27, Helvetica, Arial, sans-serif', 'link_font': '\x27Helvetica Neue Light\x27, HelveticaNeue-Light, \x27Helvetica Neue\x27, Helvetica, Arial, sans-serif', 'menu_font': '\x27Helvetica Neue Light\x27, HelveticaNeue-Light, \x27Helvetica Neue\x27, Helvetica, Arial, sans-serif', 'primary_color': '#333333', 'page_text_color': '#333333', 'post_title_font': '\x27Helvetica Neue Light\x27, HelveticaNeue-Light, \x27Helvetica Neue\x27, Helvetica, Arial, sans-serif', 'blog_description_color': '#555555', 'menu_text_color': '#FFFFFF'}, 'override': '', 'url': 'blitz.css'}}, {'name': 'template', 'data': {'name': 'Dynamic Views', 'localizedName': 'Dynamic Views', 'isResponsive': false, 'isAlternateRendering': false, 'isCustom': false, 'variant': 'magazine', 'variantId': 'magazine'}}, {'name': 'view', 'data': {'classic': {'name': 'classic', 'url': '?view\x3dclassic'}, 'flipcard': {'name': 'flipcard', 'url': '?view\x3dflipcard'}, 'magazine': {'name': 'magazine', 'url': '?view\x3dmagazine'}, 'mosaic': {'name': 'mosaic', 'url': '?view\x3dmosaic'}, 'sidebar': {'name': 'sidebar', 'url': '?view\x3dsidebar'}, 'snapshot': {'name': 'snapshot', 'url': '?view\x3dsnapshot'}, 'timeslide': {'name': 'timeslide', 'url': '?view\x3dtimeslide'}, 'isMobile': false, 'title': 'Power From Space 2.0', 'description': 'POWERFROMSPACE  BLOG, NASA, SPACEX, GXLP, LUNAR XPRIZE, CISLUNAR, SPACE SOLAR POWER', 'url': 'http://powerfromspace.blogspot.com/', 'type': 'feed', 'isSingleItem': false, 'isMultipleItems': true, 'isError': false, 'isPage': false, 'isPost': false, 'isHomepage': true, 'isArchive': false, 'isLabelSearch': false}}]);
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed22', 'main', document.getElementById('Feed22'), {'title': 'GOOGLE LUNAR X-PRIZE', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://twitter.com/statuses/user_timeline/14208982.rss', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed3', 'main', document.getElementById('Feed3'), {'title': 'USA - SPACEXWATCH', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://news.google.com/news?pz\x3d1\x26cf\x3dall\x26ned\x3dus\x26hl\x3den\x26q\x3dspacex\x26cf\x3dall\x26output\x3drss', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_BlogView', new _WidgetInfo('Blog1', 'main', document.getElementById('Blog1'), {'cmtInteractionsEnabled': false, 'lightboxEnabled': true, 'lightboxModuleUrl': 'https://www.blogger.com/static/v1/jsbin/2777028690-lbx.js', 'lightboxCssUrl': 'https://www.blogger.com/static/v1/v-css/368954415-lightbox_bundle.css'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed45', 'sidebar-right-1', document.getElementById('Feed45'), {'title': 'Planetary Society Blog', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://www.planetary.org/system/rss/channel.jsp?feedID\x3d328434498', 'numItemsShow': 5, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HeaderView', new _WidgetInfo('Header1', 'sidebar-right-1', document.getElementById('Header1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_AdSenseView', new _WidgetInfo('AdSense1', 'sidebar-right-1', document.getElementById('AdSense1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed31', 'sidebar-right-1', document.getElementById('Feed31'), {'title': 'Space Frontier Foundation', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://feeds.feedburner.com/Space-Frontier-Foundation', 'numItemsShow': 5, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed43', 'sidebar-right-1', document.getElementById('Feed43'), {'title': 'ThinkProgress', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://thinkprogress.org/feed/?spfeed\x3dhome', 'numItemsShow': 5, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML12', 'sidebar-right-1', document.getElementById('HTML12'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed33', 'sidebar-right-1', document.getElementById('Feed33'), {'title': 'Financial Times - US homepage', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://www.ft.com/rss/home/us', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed18', 'sidebar-right-1', document.getElementById('Feed18'), {'title': 'Scientific American - Space', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://rss.sciam.com/sciam/space', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed9', 'sidebar-right-1', document.getElementById('Feed9'), {'title': 'EUROPE - ESA WATCH', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://news.google.ca/news?q\x3deuropean+space+agency\x26rls\x3dcom.microsoft:en-us:IE-SearchBox\x26oe\x3dUTF-8\x26rlz\x3d1I7TSNA_en___US379\x26redir_esc\x3d\x26um\x3d1\x26hl\x3den\x26ie\x3dUTF-8\x26output\x3drss', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed12', 'sidebar-right-1', document.getElementById('Feed12'), {'title': 'SPACE DEBRIS WATCH', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://news.google.com/news?hl\x3den\x26rls\x3dcom.microsoft:en-us:IE-SearchBox\x26rlz\x3d1I7TSNA_en___US379\x26q\x3dspace+debris\x26wrapid\x3dtlif129550966456010\x26um\x3d1\x26ie\x3dUTF-8\x26output\x3drss', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed36', 'sidebar-right-1', document.getElementById('Feed36'), {'title': 'USA -  NASAWATCH', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://feeds.feedburner.com/Space-Frontier-Foundation', 'numItemsShow': 5, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed7', 'sidebar-right-1', document.getElementById('Feed7'), {'title': 'CHINA  - CNSAWATCH', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://news.google.ca/news?hl\x3den\x26rls\x3dcom.microsoft:en-us:IE-SearchBox\x26rlz\x3d1I7TSNA_en___US379\x26q\x3dchina+space+agency+launch\x26um\x3d1\x26ie\x3dUTF-8\x26output\x3drss', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed6', 'sidebar-right-1', document.getElementById('Feed6'), {'title': 'JAPAN -  JAXAWATCH', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://news.google.ca/news?q\x3djaxa\x26rls\x3dcom.microsoft:en-us:IE-SearchBox\x26oe\x3dUTF-8\x26rlz\x3d1I7TSNA_en___US379\x26redir_esc\x3d\x26um\x3d1\x26hl\x3den\x26ie\x3dUTF-8\x26output\x3drss', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_PollView', new _WidgetInfo('Poll2', 'sidebar-right-1', document.getElementById('Poll2'), {'pollid': '6746563939050166625', 'iframeurl': '/b/poll-results?pollWidget\x3dPoll2\x26lnkclr\x3d%23009EB8\x26chrtclr\x3d%23009EB8\x26hideq\x3dtrue\x26purl\x3dhttp://powerfromspace.blogspot.com/'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_SubscribeView', new _WidgetInfo('Subscribe1', 'sidebar-right-1', document.getElementById('Subscribe1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed35', 'sidebar-right-1', document.getElementById('Feed35'), {'title': 'Space Solar Power Information Service', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://spacesolarpowerinformationservice.blogspot.com/rss.xml', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed19', 'sidebar-right-1', document.getElementById('Feed19'), {'title': 'SPACEREF WATCH - Top Stories', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://feeds.feedburner.com/spaceref/jext', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_PollView', new _WidgetInfo('Poll1', 'sidebar-right-1', document.getElementById('Poll1'), {'pollid': '-498827462669922737', 'iframeurl': '/b/poll-results?pollWidget\x3dPoll1\x26lnkclr\x3d%23009EB8\x26chrtclr\x3d%23009EB8\x26hideq\x3dtrue\x26purl\x3dhttp://powerfromspace.blogspot.com/'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed2', 'sidebar-right-1', document.getElementById('Feed2'), {'title': 'Space Wire Top Stories', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://www.spacewire.net/rss/spacewire.xml', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed4', 'sidebar-right-1', document.getElementById('Feed4'), {'title': 'SPACEFLIGHTNOW', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://twitter.com/statuses/user_timeline/17217640.rss', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed8', 'sidebar-right-1', document.getElementById('Feed8'), {'title': 'FALCON 9 ROCKET', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://news.google.ca/news?hl\x3den\x26rls\x3dcom.microsoft:en-us:IE-SearchBox\x26rlz\x3d1I7TSNA_en___US379\x26q\x3dfalcon+9+rocket\x26um\x3d1\x26ie\x3dUTF-8\x26output\x3drss', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed5', 'sidebar-right-1', document.getElementById('Feed5'), {'title': 'NASA EELV LAUNCH', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://news.google.ca/news?hl\x3den\x26rls\x3dcom.microsoft:en-us:IE-SearchBox\x26rlz\x3d1I7TSNA_en___US379\x26q\x3deelv+launch\x26um\x3d1\x26ie\x3dUTF-8\x26output\x3drss', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_ProfileView', new _WidgetInfo('Profile1', 'sidebar-right-1', document.getElementById('Profile1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML9', 'sidebar-right-1', document.getElementById('HTML9'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed29', 'sidebar-right-1', document.getElementById('Feed29'), {'title': 'The Once and Future Moon', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://feeds.feedburner.com/airspacemag/TheOnceAndFutureMoon', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed42', 'sidebar-right-1', document.getElementById('Feed42'), {'title': 'Spacevidcast.com', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://feeds.feedburner.com/spacevidcast', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed26', 'sidebar-right-1', document.getElementById('Feed26'), {'title': 'Lunar X Prize NEWS!', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://news.google.ca/news?hl\x3den\x26safe\x3doff\x26rls\x3dcom.microsoft:en-us:IE-SearchBox\x26rlz\x3d1I7RNTN_en\x26q\x3dlunar+x+prize\x26um\x3d1\x26ie\x3dUTF-8\x26output\x3drss', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed23', 'sidebar-right-1', document.getElementById('Feed23'), {'title': 'NASA Heavy Lift', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://news.google.ca/news?q\x3dNASA+Heavy+Lift\x26hl\x3den\x26safe\x3doff\x26rls\x3dcom.microsoft:en-us:IE-SearchBox\x26rlz\x3d1I7RNTN_en\x26um\x3d1\x26ie\x3dUTF-8\x26output\x3drss', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed17', 'sidebar-right-1', document.getElementById('Feed17'), {'title': 'ScienceDaily!', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://www.sciencedaily.com/rss/space_time.xml', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed13', 'sidebar-right-1', document.getElementById('Feed13'), {'title': 'CLIMATE CHANGE TECH', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://rss.sciam.com/sciam/climate', 'numItemsShow': 5, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed20', 'sidebar-right-1', document.getElementById('Feed20'), {'title': 'NREL FEATURES', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://www.nrel.gov/features/rss/rss.xml', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed30', 'sidebar-right-1', document.getElementById('Feed30'), {'title': 'Renewable Energy News - RenewableEnergyWorld.com', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://www.renewableenergyworld.com/rss/renews.rss', 'numItemsShow': 5, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList7', 'sidebar-right-1', document.getElementById('LinkList7'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed32', 'sidebar-right-1', document.getElementById('Feed32'), {'title': 'BBC News | In Depth | Global recession | World Edition', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://newsrss.bbc.co.uk/rss/newsonline_world_edition/in_depth/business/2007/creditcrunch/rss.xml', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed21', 'sidebar-right-1', document.getElementById('Feed21'), {'title': 'Rigzone.com: Latest News Headlines', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://www.rigzone.com/news/rss/rigzone_latest.aspx', 'numItemsShow': 5, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed10', 'sidebar-right-1', document.getElementById('Feed10'), {'title': 'THE OIL DRUM', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://twitter.com/statuses/user_timeline/14609388.rss', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML1', 'sidebar-right-1', document.getElementById('HTML1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed1', 'sidebar-right-1', document.getElementById('Feed1'), {'title': 'The Full Feed from HuffingtonPost.com', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://feeds.huffingtonpost.com/huffingtonpost/raw_feed', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_BlogSearchView', new _WidgetInfo('BlogSearch1', 'sidebar-right-1', document.getElementById('BlogSearch1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed39', 'sidebar-right-1', document.getElementById('Feed39'), {'title': 'Survive and Thrive TV', 'showItemDate': false, 'showItemAuthor': false, 'feedUrl': 'http://surviveandthrivetv.com/feed/', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed16', 'sidebar-right-1', document.getElementById('Feed16'), {'title': 'Senate Floor Today', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://thomas.loc.gov/home/rss/senatefloortoday.xml', 'numItemsShow': 5, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_BlogArchiveView', new _WidgetInfo('BlogArchive1', 'sidebar-right-1', document.getElementById('BlogArchive1'), {'languageDirection': 'ltr', 'loadingMessage': 'Loading\x26hellip;'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_PopularPostsView', new _WidgetInfo('PopularPosts1', 'sidebar-right-1', document.getElementById('PopularPosts1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed14', 'sidebar-right-1', document.getElementById('Feed14'), {'title': 'DoD Live', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://www.dodlive.mil/index.php/feed/', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML6', 'sidebar-right-1', document.getElementById('HTML6'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed40', 'sidebar-right-1', document.getElementById('Feed40'), {'title': 'Space Colonization', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://www.feeddistiller.com/blogs/Space%20Colonization/atom.xml', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FollowersView', new _WidgetInfo('Followers1', 'sidebar-right-1', document.getElementById('Followers1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML7', 'sidebar-right-1', document.getElementById('HTML7'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed34', 'sidebar-right-1', document.getElementById('Feed34'), {'title': 'Planetary News', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://www.planetary.org/rss/news.xml', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList6', 'sidebar-right-1', document.getElementById('LinkList6'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML8', 'sidebar-right-1', document.getElementById('HTML8'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList5', 'sidebar-right-1', document.getElementById('LinkList5'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed28', 'sidebar-right-1', document.getElementById('Feed28'), {'title': 'IT\x27S GOING TO BE A LONG WAR BLOG...', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://www.longwarjournal.org/index.xml', 'numItemsShow': 4, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML3', 'sidebar-right-1', document.getElementById('HTML3'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList4', 'sidebar-right-1', document.getElementById('LinkList4'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed25', 'sidebar-right-1', document.getElementById('Feed25'), {'title': 'Space News', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://news.google.ca/news?q\x3dspace+news\x26rls\x3dcom.microsoft:en-us:IE-SearchBox\x26oe\x3dUTF-8\x26rlz\x3d1I7RNTN_en\x26redir_esc\x3d\x26um\x3d1\x26hl\x3den\x26ie\x3dUTF-8\x26output\x3drss', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed11', 'sidebar-right-1', document.getElementById('Feed11'), {'title': 'TechCrunch', 'showItemDate': true, 'showItemAuthor': false, 'feedUrl': 'http://feeds.feedburner.com/TechCrunch', 'numItemsShow': 3, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': false, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_AttributionView', new _WidgetInfo('Attribution1', 'sidebar-right-1', document.getElementById('Attribution1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_NavbarView', new _WidgetInfo('Navbar1', 'sidebar-right-1', document.getElementById('Navbar1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FeedView', new _WidgetInfo('Feed24', 'sidebar-right-1', document.getElementById('Feed24'), {'title': 'Commercial Spaceflight Now!', 'showItemDate': true, 'showItemAuthor': true, 'feedUrl': 'http://news.google.com/news?hl\x3den\x26safe\x3doff\x26q\x3dcommercial+spaceflight\x26um\x3d1\x26bav\x3don.2,or.r_gc.r_pw.\x26wrapid\x3dtlif130017228047910\x26ie\x3dUTF-8\x26output\x3drss', 'numItemsShow': 5, 'loadingMsg': 'Loading...', 'openLinksInNewWindow': true, 'useFeedWidgetServ': 'true'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML5', 'sidebar-right-1', document.getElementById('HTML5'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML4', 'sidebar-right-1', document.getElementById('HTML4'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList1', 'sidebar-right-1', document.getElementById('LinkList1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList3', 'sidebar-right-1', document.getElementById('LinkList3'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList2', 'sidebar-right-1', document.getElementById('LinkList2'), {}, 'displayModeFull'));
</script>
</body>
</html>