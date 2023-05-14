<!DOCTYPE html>
<html dir='ltr' xmlns='http://www.w3.org/1999/xhtml' xmlns:b='http://www.google.com/2005/gml/b' xmlns:data='http://www.google.com/2005/gml/data' xmlns:expr='http://www.google.com/2005/gml/expr'>
<head>
<link href='https://www.blogger.com/static/v1/widgets/14020288-widget_css_bundle.css' rel='stylesheet' type='text/css'/>
<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'/>
<meta content='blogger' name='generator'/>
<link href='http://liverpool-leftovers.blogspot.com/favicon.ico' rel='icon' type='image/x-icon'/>
<link href='http://liverpool-leftovers.blogspot.com/' rel='canonical'/>
<link rel="alternate" type="application/atom+xml" title="Liverpool Leftovers - Atom" href="http://liverpool-leftovers.blogspot.com/feeds/posts/default" />
<link rel="alternate" type="application/rss+xml" title="Liverpool Leftovers - RSS" href="http://liverpool-leftovers.blogspot.com/feeds/posts/default?alt=rss" />
<link rel="service.post" type="application/atom+xml" title="Liverpool Leftovers - Atom" href="https://www.blogger.com/feeds/10847768/posts/default" />
<link rel="me" href="https://www.blogger.com/profile/13630530599678517169" />
<!--Can't find substitution for tag [blog.ieCssRetrofitLinks]-->
<meta content='http://liverpool-leftovers.blogspot.com/' property='og:url'/>
<meta content='Liverpool Leftovers' property='og:title'/>
<meta content='' property='og:description'/>
<!--[if IE]> <script> (function() { var html5 = ("abbr,article,aside,audio,canvas,datalist,details," + "figure,footer,header,hgroup,mark,menu,meter,nav,output," + "progress,section,time,video").split(','); for (var i = 0; i < html5.length; i++) { document.createElement(html5[i]); } try { document.execCommand('BackgroundImageCache', false, true); } catch(e) {} })(); </script> <![endif]-->
<title>Liverpool Leftovers</title>
<style id='page-skin-1' type='text/css'><!--
/*
-----------------------------------------------
Blogger Template Style
Name:     Minima
Designer: Douglas Bowman
URL:      www.stopdesign.com
Date:     26 Feb 2004
Updated by: Blogger Team
----------------------------------------------- */
/* Variable definitions
====================
<Variable name="bgcolor" description="Page Background Color"
type="color" default="#fff">
<Variable name="textcolor" description="Text Color"
type="color" default="#333">
<Variable name="linkcolor" description="Link Color"
type="color" default="#58a">
<Variable name="pagetitlecolor" description="Blog Title Color"
type="color" default="#666">
<Variable name="descriptioncolor" description="Blog Description Color"
type="color" default="#999">
<Variable name="titlecolor" description="Post Title Color"
type="color" default="#c60">
<Variable name="bordercolor" description="Border Color"
type="color" default="#ccc">
<Variable name="sidebarcolor" description="Sidebar Title Color"
type="color" default="#999">
<Variable name="sidebartextcolor" description="Sidebar Text Color"
type="color" default="#666">
<Variable name="visitedlinkcolor" description="Visited Link Color"
type="color" default="#999">
<Variable name="bodyfont" description="Text Font"
type="font" default="normal normal 100% Georgia, Serif">
<Variable name="headerfont" description="Sidebar Title Font"
type="font"
default="normal normal 78% 'Trebuchet MS',Trebuchet,Arial,Verdana,Sans-serif">
<Variable name="pagetitlefont" description="Blog Title Font"
type="font"
default="normal normal 200% Georgia, Serif">
<Variable name="descriptionfont" description="Blog Description Font"
type="font"
default="normal normal 78% 'Trebuchet MS', Trebuchet, Arial, Verdana, Sans-serif">
<Variable name="postfooterfont" description="Post Footer Font"
type="font"
default="normal normal 78% 'Trebuchet MS', Trebuchet, Arial, Verdana, Sans-serif">
<Variable name="startSide" description="Side where text starts in blog language"
type="automatic" default="left">
<Variable name="endSide" description="Side where text ends in blog language"
type="automatic" default="right">
*/
/* Use this with templates/template-twocol.html */
body {
background:#ffffff;
margin:0;
color:#000000;
font:x-small Georgia Serif;
font-size/* */:/**/small;
font-size: /**/small;
text-align: center;
}
a:link {
color:#215670;
text-decoration:none;
}
a:visited {
color:#3D81EE;
text-decoration:none;
}
a:hover {
color:#5588aa;
text-decoration:underline;
}
a img {
border-width:0;
}
/* Header
-----------------------------------------------
*/
#header-wrapper {
width:660px;
margin:0 auto 10px;
border:1px solid #ffffff;
}
#header-inner {
background-position: center;
background-image:url(http://i260.photobucket.com/albums/ii31/ukmaggie45/2008JanuarycaravanAbersoch119.jpg);
background-repeat:no-repeat;
height:300px;
margin-left: auto;
margin-right: auto;
}
#header {
margin: 5px;
border: 1px solid #ffffff;
text-align: center;
color:#3D81EE;
}
#header h1 {
margin:5px 5px 0;
padding:15px 20px .25em;
line-height:1.2em;
text-transform:uppercase;
letter-spacing:.2em;
font: normal bold 280% Verdana, sans-serif;
}
#header a {
color:#3D81EE;
text-decoration:none;
}
#header a:hover {
color:#3D81EE;
}
#header .description {
margin:0 5px 5px;
padding:0 20px 15px;
max-width:700px;
text-transform:uppercase;
letter-spacing:.2em;
line-height: 1.4em;
font: normal normal 78% 'Trebuchet MS', Trebuchet, Arial, Verdana, Sans-serif;
color: #999999;
}
#header img {
margin-left: auto;
margin-right: auto;
}
/* Outer-Wrapper
----------------------------------------------- */
#outer-wrapper {
width: 660px;
margin:0 auto;
padding:10px;
text-align:left;
font: normal normal 90% Arial, sans-serif;
}
#main-wrapper {
width: 410px;
float: left;
word-wrap: break-word; /* fix for long text breaking sidebar float in IE */
overflow: hidden;     /* fix for long non-text content breaking IE sidebar float */
}
#sidebar-wrapper {
width: 220px;
float: right;
word-wrap: break-word; /* fix for long text breaking sidebar float in IE */
overflow: hidden;      /* fix for long non-text content breaking IE sidebar float */
}
/* Headings
----------------------------------------------- */
h2 {
margin:1.5em 0 .75em;
font:normal normal 78% 'Trebuchet MS',Trebuchet,Arial,Verdana,Sans-serif;
line-height: 1.4em;
text-transform:uppercase;
letter-spacing:.2em;
color:#666666;
}
/* Posts
-----------------------------------------------
*/
h2.date-header {
margin:1.5em 0 .5em;
}
.post {
margin:.5em 0 1.5em;
border-bottom:1px dotted #ffffff;
padding-bottom:1.5em;
}
.post h3 {
margin:.25em 0 0;
padding:0 0 4px;
font-size:140%;
font-weight:normal;
line-height:1.4em;
color:#5588aa;
}
.post h3 a, .post h3 a:visited, .post h3 strong {
display:block;
text-decoration:none;
color:#5588aa;
font-weight:normal;
}
.post h3 strong, .post h3 a:hover {
color:#000000;
}
.post p {
margin:0 0 .75em;
line-height:1.6em;
}
.post-footer {
margin: .75em 0;
color:#666666;
text-transform:uppercase;
letter-spacing:.1em;
font: normal normal 78% 'Trebuchet MS', Trebuchet, Arial, Verdana, Sans-serif;
line-height: 1.4em;
}
.comment-link {
margin-left:.6em;
}
.post img {
padding:4px;
border:1px solid #ffffff;
}
.post blockquote {
margin:1em 20px;
}
.post blockquote p {
margin:.75em 0;
}
/* Comments
----------------------------------------------- */
#comments h4 {
margin:1em 0;
font-weight: bold;
line-height: 1.4em;
text-transform:uppercase;
letter-spacing:.2em;
color: #666666;
}
#comments-block {
margin:1em 0 1.5em;
line-height:1.6em;
}
#comments-block .comment-author {
margin:.5em 0;
}
#comments-block .comment-body {
margin:.25em 0 0;
}
#comments-block .comment-footer {
margin:-.25em 0 2em;
line-height: 1.4em;
text-transform:uppercase;
letter-spacing:.1em;
}
#comments-block .comment-body p {
margin:0 0 .75em;
}
.deleted-comment {
font-style:italic;
color:gray;
}
#blog-pager-newer-link {
float: left;
}
#blog-pager-older-link {
float: right;
}
#blog-pager {
text-align: center;
}
.feed-links {
clear: both;
line-height: 2.5em;
}
/* Sidebar Content
----------------------------------------------- */
.sidebar {
color: #666666;
line-height: 1.5em;
}
.sidebar ul {
list-style:none;
margin:0 0 0;
padding:0 0 0;
}
.sidebar li {
margin:0;
padding-top:0;
padding-right:0;
padding-bottom:.25em;
padding-left:15px;
text-indent:-15px;
line-height:1.5em;
}
.sidebar .widget, .main .widget {
border-bottom:1px dotted #ffffff;
margin:0 0 1.5em;
padding:0 0 1.5em;
}
.main .Blog {
border-bottom-width: 0;
}
/* Profile
----------------------------------------------- */
.profile-img {
float: left;
margin-top: 0;
margin-right: 5px;
margin-bottom: 5px;
margin-left: 0;
padding: 4px;
border: 1px solid #ffffff;
}
.profile-data {
margin:0;
text-transform:uppercase;
letter-spacing:.1em;
font: normal normal 78% 'Trebuchet MS', Trebuchet, Arial, Verdana, Sans-serif;
color: #666666;
font-weight: bold;
line-height: 1.6em;
}
.profile-datablock {
margin:.5em 0 .5em;
}
.profile-textblock {
margin: 0.5em 0;
line-height: 1.6em;
}
.profile-link {
font: normal normal 78% 'Trebuchet MS', Trebuchet, Arial, Verdana, Sans-serif;
text-transform: uppercase;
letter-spacing: .1em;
}
/* Footer
----------------------------------------------- */
#footer {
width:660px;
clear:both;
margin:0 auto;
padding-top:15px;
line-height: 1.6em;
text-transform:uppercase;
letter-spacing:.1em;
text-align: center;
}
/** Page structure tweaks for layout editor wireframe */
body#layout #header {
margin-left: 0px;
margin-right: 0px;
}

--></style>
<link href='https://www.blogger.com/dyn-css/authorization.css?targetBlogID=10847768&amp;zx=7437f69f-4671-4029-8c7f-9e059c0bdfe4' media='none' onload='if(media!=&#39;all&#39;)media=&#39;all&#39;' rel='stylesheet'/><noscript><link href='https://www.blogger.com/dyn-css/authorization.css?targetBlogID=10847768&amp;zx=7437f69f-4671-4029-8c7f-9e059c0bdfe4' rel='stylesheet'/></noscript>

</head>
<body>
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
              url: 'https://www.blogger.com/navbar.g?targetBlogID\x3d10847768\x26blogName\x3dLiverpool+Leftovers\x26publishMode\x3dPUBLISH_MODE_BLOGSPOT\x26navbarType\x3dSILVER\x26layoutType\x3dLAYOUTS\x26searchRoot\x3dhttps://liverpool-leftovers.blogspot.com/search\x26blogLocale\x3den_GB\x26v\x3d2\x26homepageUrl\x3dhttp://liverpool-leftovers.blogspot.com/\x26vt\x3d-3015468146214244147',
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
<div id='outer-wrapper'><div id='wrap2'>
<!-- skip links for text browsers -->
<span id='skiplinks' style='display:none;'>
<a href='#main'>skip to main </a> |
      <a href='#sidebar'>skip to sidebar</a>
</span>
<div id='header-wrapper'>
<div class='header section' id='header'><div class='widget Header' data-version='1' id='Header1'>
<div id='header-inner' style='background-image: url("http://2.bp.blogspot.com/_wpXqjzZ7bi0/SnbYrrkHRtI/AAAAAAAAAa8/ThRIE5Ff534/S660/Kelvin+Helmholtz+wave+cloud.jpg"); background-position: left; width: 660px; min-height: 119px; _height: 119px; background-repeat: no-repeat; '>
<div class='titlewrapper' style='background: transparent'>
<h1 class='title' style='background: transparent; border-width: 0px'>
Liverpool Leftovers
</h1>
</div>
<div class='descriptionwrapper'>
<p class='description'><span>
</span></p>
</div>
</div>
</div></div>
</div>
<div id='content-wrapper'>
<div id='crosscol-wrapper' style='text-align:center'>
<div class='crosscol no-items section' id='crosscol'></div>
</div>
<div id='main-wrapper'>
<div class='main section' id='main'><div class='widget Blog' data-version='1' id='Blog1'>
<div class='blog-posts hfeed'>

          <div class="date-outer">
        
<h2 class='date-header'><span>Wednesday, February 11, 2015</span></h2>

          <div class="date-posts">
        
<div class='post-outer'>
<div class='post hentry'>
<a name='380848069789840121'></a>
<h3 class='post-title entry-title'>
<a href='http://liverpool-leftovers.blogspot.com/2015/02/a-change-of-view-come-evening.html'>A change of view come evening</a>
</h3>
<div class='post-header-line-1'></div>
<div class='post-body entry-content'>
<p><br />
Yesterday we noticed a cherry picker at the street light outside next door. &nbsp;Assumed the bulb had gone and needed changing. &nbsp;But then puzzlingly it stopped at every single street light down the road. &nbsp;To be honest I didn't think about it much, the council does what the council does, seemingly for no good reason often. &nbsp;But come evening, the lights go on as usual, but instead of the orange sodium glare we have white light! &nbsp;The skies are very overcast at present, so until we have a clear night I won't be able to tell if these lights make it more possible to see the stars. &nbsp;Fingers crossed!<br />
<br />
The other weird thing was two nights ago I dreamed of my Mum. &nbsp;I think this might be the 3rd time I've dreamed of her since she died in 2007. &nbsp;I dreamed that she joined the Green Party! &nbsp;For a dyed in the wool Tory it seems extremely unlikely, but maybe she's had a change of heart in the afterlife.<br />
<br />
<br />
<br />
<br /></p>
<div style='clear: both;'></div>
</div>
<div class='post-footer'>
<p class='post-footer-line post-footer-line-1'><span class='post-author vcard'>
Posted by
<span class='fn'>Maggie</span>
</span>
<span class='post-timestamp'>
at
<a class='timestamp-link' href='http://liverpool-leftovers.blogspot.com/2015/02/a-change-of-view-come-evening.html' rel='bookmark' title='permanent link'><abbr class='published' title='2015-02-11T13:17:00Z'>1:17 pm</abbr></a>
</span>
<span class='post-comment-link'>
<a class='comment-link' href='https://www.blogger.com/comment.g?blogID=10847768&postID=380848069789840121' onclick=''>0
comments</a>
</span>
<span class='post-icons'>
<span class='item-action'>
<a href='https://www.blogger.com/email-post.g?blogID=10847768&postID=380848069789840121' title='Email Post'>
<img alt='' class='icon-action' src='http://www.blogger.com/img/icon18_email.gif'/>
</a>
</span>
<span class='item-control blog-admin pid-1135541086'>
<a href='https://www.blogger.com/post-edit.g?blogID=10847768&postID=380848069789840121&from=pencil' title='Edit Post'>
<img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
</a>
</span>
</span>
<span class='post-backlinks post-comment-link'>
<a class='comment-link' href='http://liverpool-leftovers.blogspot.com/2015/02/a-change-of-view-come-evening.html#links'>Links to this post</a>
</span>
</p>
<p class='post-footer-line post-footer-line-2'><span class='post-labels'>
</span>
</p>
<p class='post-footer-line post-footer-line-3'></p>
</div>
</div>
</div>

          </div></div>
        

          <div class="date-outer">
        
<h2 class='date-header'><span>Saturday, February 07, 2015</span></h2>

          <div class="date-posts">
        
<div class='post-outer'>
<div class='post hentry'>
<a name='930120274261182706'></a>
<h3 class='post-title entry-title'>
<a href='http://liverpool-leftovers.blogspot.com/2015/02/wolf-hall-part-1-bbc2.html'>Wolf Hall part 1 (BBC2)</a>
</h3>
<div class='post-header-line-1'></div>
<div class='post-body entry-content'>
<p>This is still available to watch until 22.05 on 20th February 2015.<br />
<br />
I've just watched the <a href="http://www.bbc.co.uk/iplayer/episode/p02gfy74/wolf-hall-1-three-card-trick">first part of Wolf Hall</a> again, for I think the third time! &nbsp;In many ways it's true to the book, which I'm currently re-reading, but in others it wanders from the timeline. &nbsp;For me the most obvious one is when Liz Cromwell dies of the <a href="http://theconversation.com/what-was-sweating-sickness-the-mysterious-tudor-plague-of-wolf-hall-37194">sweating sickness</a>. &nbsp;In the book their daughters Ann and Grace live on for at least another two years before succumbing in 1529 to the same <a href="http://discovermagazine.com/1997/jun/thesweatingsickn1161">sickness</a> that killed their mother (I have to say that I'm not sure the dates are correct at all - see <a href="http://www.theanneboleynfiles.com/sweating-sickness-english-sweat/">this account</a>, or they may have died of different complaints). &nbsp;But the change from the book gives us one of the most touching scenes of Thomas Cromwell, bereft after the deaths of his wife and two young daughters across a single day and night, standing alone in a colonnade outside his home.<br />
<br />
<br />
<div class="separator" style="clear: both; text-align: center;">
<a href="http://2.bp.blogspot.com/-9MPP51GyoNs/VNY07UywH5I/AAAAAAAAAvc/3-m2m67E7JY/s1600/Cromwell%2Bin%2Bthe%2Bcolonnade.png" imageanchor="1" style="clear: left; float: left; margin-bottom: 1em; margin-right: 1em;"><img border="0" height="222" src="http://2.bp.blogspot.com/-9MPP51GyoNs/VNY07UywH5I/AAAAAAAAAvc/3-m2m67E7JY/s1600/Cromwell%2Bin%2Bthe%2Bcolonnade.png" width="400" /></a></div>
<div class="separator" style="clear: both; text-align: left;">
<br /></div>
<div class="separator" style="clear: both; text-align: left;">
It seems to me that after this blow Thomas becomes much more capable of taking risks, has less care for his own safety. &nbsp;An epiphany of sorts maybe. The image above shows him immediately after his great loss, looking out across the courtyard at Austin Friars into a future that is in some ways meaningless. &nbsp;But he still has his master, Cardinal Wolsey to serve, and so life continues. &nbsp;Though the time of quarantine is not shown in the film - and there would have been time for all to stay in the house to not spread infection.</div>
<div class="separator" style="clear: both; text-align: left;">
<br /></div>
<div class="separator" style="clear: both; text-align: left;">
For some reason this reminds me of the painting <a href="http://ichef.bbci.co.uk/arts/yourpaintings/images/paintings/gm/large/gl_gm_174_large.jpg">The Annunciation</a> by Botticelli, which we saw when we visited <a href="http://www.comptonverney.org.uk/">Compton Verney</a> back in 2013. There just happened to be an <a href="http://www.comptonverney.org.uk/events/210/bellini_botticelli_titian_500_years_of_italian_art.aspx">exhibition of Italian art</a> on when we arrived. Two different collonades, one in damp England following a death, one in bright Italy foreshadowing a birth.</div>
<div class="separator" style="clear: both; text-align: left;">
<br /></div>
<div class="separator" style="clear: both; text-align: left;">
<br /></div>
<div class="separator" style="clear: both; text-align: left;">
<br /></div>
<div class="separator" style="clear: both; text-align: left;">
<br /></div>
<div class="separator" style="clear: both; text-align: left;">
<br /></div>
<div class="separator" style="clear: both; text-align: left;">
<br /></div>
<div class="separator" style="clear: both; text-align: left;">
<br /></div>
</p>
<div style='clear: both;'></div>
</div>
<div class='post-footer'>
<p class='post-footer-line post-footer-line-1'><span class='post-author vcard'>
Posted by
<span class='fn'>Maggie</span>
</span>
<span class='post-timestamp'>
at
<a class='timestamp-link' href='http://liverpool-leftovers.blogspot.com/2015/02/wolf-hall-part-1-bbc2.html' rel='bookmark' title='permanent link'><abbr class='published' title='2015-02-07T16:17:00Z'>4:17 pm</abbr></a>
</span>
<span class='post-comment-link'>
<a class='comment-link' href='https://www.blogger.com/comment.g?blogID=10847768&postID=930120274261182706' onclick=''>0
comments</a>
</span>
<span class='post-icons'>
<span class='item-action'>
<a href='https://www.blogger.com/email-post.g?blogID=10847768&postID=930120274261182706' title='Email Post'>
<img alt='' class='icon-action' src='http://www.blogger.com/img/icon18_email.gif'/>
</a>
</span>
<span class='item-control blog-admin pid-1135541086'>
<a href='https://www.blogger.com/post-edit.g?blogID=10847768&postID=930120274261182706&from=pencil' title='Edit Post'>
<img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
</a>
</span>
</span>
<span class='post-backlinks post-comment-link'>
<a class='comment-link' href='http://liverpool-leftovers.blogspot.com/2015/02/wolf-hall-part-1-bbc2.html#links'>Links to this post</a>
</span>
</p>
<p class='post-footer-line post-footer-line-2'><span class='post-labels'>
</span>
</p>
<p class='post-footer-line post-footer-line-3'></p>
</div>
</div>
</div>

          </div></div>
        

          <div class="date-outer">
        
<h2 class='date-header'><span>Friday, February 06, 2015</span></h2>

          <div class="date-posts">
        
<div class='post-outer'>
<div class='post hentry'>
<a name='4880779353435586461'></a>
<h3 class='post-title entry-title'>
<a href='http://liverpool-leftovers.blogspot.com/2015/02/today-has-been-interesting.html'>First Bumble Bee of the year!</a>
</h3>
<div class='post-header-line-1'></div>
<div class='post-body entry-content'>
<p><br />
Today has been interesting. &nbsp;After my rather late bath I finally got dressed and just as was about to come downstairs I looked out of the bedroom window to the River Mersey, and saw what I think is the biggest ship I have seen from here. &nbsp;Bound for Eastham, the <a href="http://www.shipais.co.uk/showship.php?mmsi=308773000">Maracas Bay</a>, 175 metres long! &nbsp;A chemical/oil products tanker. &nbsp;She was riding very high in the water, and had a tug boat at her stern. &nbsp;Later to be followed by <a href="http://www.shipais.co.uk/showship.php?mmsi=218731000">Leander</a>, at a mere 145 metres, but similar capabilities and headed for Stanlow. &nbsp;I didn't get to see Leander though, as was rushing to be ready for my Dental Hygienist appointment.<br />
<br />
After having my teeth thoroughly cleaned and rattled in my skull I sat out in the front porch continuing my re-reading of "Wolf Hall". &nbsp;A must re-read since we're enjoying the <a href="http://www.bbc.co.uk/programmes/p02gfy02">BBC2 adaptation</a> so much. &nbsp;It was surprisingly warm in the sunshine, only had a thin jacket on. &nbsp;Was delighted to see my first bumble bee of the year briefly. &nbsp;So briefly I couldn't tell what kind it was, but it wasn't one of those huge queens you often see in springtime. &nbsp;Sort of beige-ish, and about standard medium bumble bee size. &nbsp;But a promise of Spring!<br />
<br />
Now I have freezing feet, as I sat out a bit too long and I'm wearing my posh shoes (have to look respectable when go to the dental practice) and not my sheepskin boots. &nbsp;The sky is now pearly and beautiful, might grab my boots and go out to sit for a bit longer to watch the colour changes as the daytime ends.<br />
<br />
<br />
<br />
<br /></p>
<div style='clear: both;'></div>
</div>
<div class='post-footer'>
<p class='post-footer-line post-footer-line-1'><span class='post-author vcard'>
Posted by
<span class='fn'>Maggie</span>
</span>
<span class='post-timestamp'>
at
<a class='timestamp-link' href='http://liverpool-leftovers.blogspot.com/2015/02/today-has-been-interesting.html' rel='bookmark' title='permanent link'><abbr class='published' title='2015-02-06T17:22:00Z'>5:22 pm</abbr></a>
</span>
<span class='post-comment-link'>
<a class='comment-link' href='https://www.blogger.com/comment.g?blogID=10847768&postID=4880779353435586461' onclick=''>0
comments</a>
</span>
<span class='post-icons'>
<span class='item-action'>
<a href='https://www.blogger.com/email-post.g?blogID=10847768&postID=4880779353435586461' title='Email Post'>
<img alt='' class='icon-action' src='http://www.blogger.com/img/icon18_email.gif'/>
</a>
</span>
<span class='item-control blog-admin pid-1135541086'>
<a href='https://www.blogger.com/post-edit.g?blogID=10847768&postID=4880779353435586461&from=pencil' title='Edit Post'>
<img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
</a>
</span>
</span>
<span class='post-backlinks post-comment-link'>
<a class='comment-link' href='http://liverpool-leftovers.blogspot.com/2015/02/today-has-been-interesting.html#links'>Links to this post</a>
</span>
</p>
<p class='post-footer-line post-footer-line-2'><span class='post-labels'>
</span>
</p>
<p class='post-footer-line post-footer-line-3'></p>
</div>
</div>
</div>

          </div></div>
        

          <div class="date-outer">
        
<h2 class='date-header'><span>Tuesday, May 07, 2013</span></h2>

          <div class="date-posts">
        
<div class='post-outer'>
<div class='post hentry'>
<a name='5779987882601297848'></a>
<h3 class='post-title entry-title'>
<a href='http://liverpool-leftovers.blogspot.com/2013/05/river-mersey-seen-from-our-bedroom.html'>River Mersey seen from our bedroom window</a>
</h3>
<div class='post-header-line-1'></div>
<div class='post-body entry-content'>
<p><br />
<span style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">The river a sliver of silver&nbsp;</span><br />
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
slashed by the trees&nbsp;</div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
soon to green up&nbsp;</div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
and hide our view of the ships</div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
the sandbanks and the high tides.</div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
<br /></div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
Bounded on the far shore by a skein of amber lights.</div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
Proof of roads and people over there.</div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
<br /></div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
Further away the hills of Deeside,</div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
And further still the wilds of Snowdonia.</div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
<br /></div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
At our old home I could see Snowdon from my bed.</div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
Here I see a river and hills&nbsp;</div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
but not a mighty mountain.</div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
<br /></div>
<div style="background-color: white; color: #222222; font-family: arial, sans-serif; font-size: 13px;">
<br /></div>
</p>
<div style='clear: both;'></div>
</div>
<div class='post-footer'>
<p class='post-footer-line post-footer-line-1'><span class='post-author vcard'>
Posted by
<span class='fn'>Maggie</span>
</span>
<span class='post-timestamp'>
at
<a class='timestamp-link' href='http://liverpool-leftovers.blogspot.com/2013/05/river-mersey-seen-from-our-bedroom.html' rel='bookmark' title='permanent link'><abbr class='published' title='2013-05-07T18:09:00+01:00'>6:09 pm</abbr></a>
</span>
<span class='post-comment-link'>
<a class='comment-link' href='https://www.blogger.com/comment.g?blogID=10847768&postID=5779987882601297848' onclick=''>1 comments</a>
</span>
<span class='post-icons'>
<span class='item-action'>
<a href='https://www.blogger.com/email-post.g?blogID=10847768&postID=5779987882601297848' title='Email Post'>
<img alt='' class='icon-action' src='http://www.blogger.com/img/icon18_email.gif'/>
</a>
</span>
<span class='item-control blog-admin pid-1135541086'>
<a href='https://www.blogger.com/post-edit.g?blogID=10847768&postID=5779987882601297848&from=pencil' title='Edit Post'>
<img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
</a>
</span>
</span>
<span class='post-backlinks post-comment-link'>
<a class='comment-link' href='http://liverpool-leftovers.blogspot.com/2013/05/river-mersey-seen-from-our-bedroom.html#links'>Links to this post</a>
</span>
</p>
<p class='post-footer-line post-footer-line-2'><span class='post-labels'>
</span>
</p>
<p class='post-footer-line post-footer-line-3'></p>
</div>
</div>
</div>

          </div></div>
        

          <div class="date-outer">
        
<h2 class='date-header'><span>Wednesday, March 13, 2013</span></h2>

          <div class="date-posts">
        
<div class='post-outer'>
<div class='post hentry'>
<a name='7340865641590419707'></a>
<h3 class='post-title entry-title'>
<a href='http://liverpool-leftovers.blogspot.com/2013/03/book-cull.html'>Book cull!</a>
</h3>
<div class='post-header-line-1'></div>
<div class='post-body entry-content'>
<p><br />
Spent afternoons yesterday and today at our old home sorting stuff to a limited extent.<br />
<br />
After spending most of the time there yesterday sitting by a nice open fire in the living room with me feeling "carp" we decided to take a look at the books that John had brought down in 5 boxes from the bookcases in our bedroom. &nbsp;After some time going through them all, we filled 2 boxes to go off to <a href="http://www.oxfam.org.uk/">Oxfam</a>, so now only have 3 of those boxes to come back to new home. &nbsp;I kept a load of stuff that maybe I should have let go? &nbsp;Neville Shute for one. &nbsp;Will I ever read them again? &nbsp;Doubtful. &nbsp;But I don't quite feel ready to let them go yet. &nbsp;Rather like my Mum's china ornaments. &nbsp;Elizabeth Goudge books too. &nbsp;And a few more random books!<br />
<br />
Today those 2 book boxes went off to our local <a href="http://www.oxfam.org.uk/shop/local-shops">Oxfam shop</a>, along with a box of stuff from new home too - trousers that don't fit John any more, and a couple of DVDs. &nbsp;I washed the lower side windows in old home living room so I could see the sunsets better. &nbsp;John will have to wash the top ones, as I can't clamber onto a ladder (or the back of the settee) these days to do them due to dizziness - apparently "mild left vestibular disorder" according to the very nice lady neurologist I saw some years ago now. <br />
<br />
Progress is very slow! &nbsp;But anything is better than nothing!<br />
<br />
Meanwhile in a pot just outside our new home front door the lilies that we bought at the Chelsea Flower Show last year are beginning to sprout despite the cold weather.<br />
<br />
<a href="http://www.flickr.com/photos/liverpool-leftovers/8554636461/" title="random stuff car lily shoots 001 by ukmaggie45, on Flickr"><img alt="random stuff car lily shoots 001" height="240" src="http://farm9.staticflickr.com/8226/8554636461_f620282a32_n.jpg" width="320" /></a></p>
<div style='clear: both;'></div>
</div>
<div class='post-footer'>
<p class='post-footer-line post-footer-line-1'><span class='post-author vcard'>
Posted by
<span class='fn'>Maggie</span>
</span>
<span class='post-timestamp'>
at
<a class='timestamp-link' href='http://liverpool-leftovers.blogspot.com/2013/03/book-cull.html' rel='bookmark' title='permanent link'><abbr class='published' title='2013-03-13T20:16:00Z'>8:16 pm</abbr></a>
</span>
<span class='post-comment-link'>
<a class='comment-link' href='https://www.blogger.com/comment.g?blogID=10847768&postID=7340865641590419707' onclick=''>2
comments</a>
</span>
<span class='post-icons'>
<span class='item-action'>
<a href='https://www.blogger.com/email-post.g?blogID=10847768&postID=7340865641590419707' title='Email Post'>
<img alt='' class='icon-action' src='http://www.blogger.com/img/icon18_email.gif'/>
</a>
</span>
<span class='item-control blog-admin pid-1135541086'>
<a href='https://www.blogger.com/post-edit.g?blogID=10847768&postID=7340865641590419707&from=pencil' title='Edit Post'>
<img alt='' class='icon-action' height='18' src='https://resources.blogblog.com/img/icon18_edit_allbkg.gif' width='18'/>
</a>
</span>
</span>
<span class='post-backlinks post-comment-link'>
<a class='comment-link' href='http://liverpool-leftovers.blogspot.com/2013/03/book-cull.html#links'>Links to this post</a>
</span>
</p>
<p class='post-footer-line post-footer-line-2'><span class='post-labels'>
</span>
</p>
<p class='post-footer-line post-footer-line-3'></p>
</div>
</div>
</div>

        </div></div>
      
</div>
<div class='blog-pager' id='blog-pager'>
<span id='blog-pager-older-link'>
<a class='blog-pager-older-link' href='http://liverpool-leftovers.blogspot.com/search?updated-max=2013-03-13T20:16:00Z&amp;max-results=5' id='Blog1_blog-pager-older-link' title='Older Posts'>Older Posts</a>
</span>
<a class='home-link' href='http://liverpool-leftovers.blogspot.com/'>Home</a>
</div>
<div class='clear'></div>
<div class='blog-feeds'>
<div class='feed-links'>
Subscribe to:
<a class='feed-link' href='http://liverpool-leftovers.blogspot.com/feeds/posts/default' target='_blank' type='application/atom+xml'>Posts (Atom)</a>
</div>
</div>
</div></div>
</div>
<div id='sidebar-wrapper'>
<div class='sidebar section' id='sidebar'><div class='widget Image' data-version='1' id='Image1'>
<div class='widget-content'>
<a href='http://www.flickr.com/photos/liverpool-leftovers/7638371330/in/photostream'>
<img alt='' height='150' id='Image1_img' src='http://3.bp.blogspot.com/-c4GCdpyRzms/UI2aNkL1QiI/AAAAAAAAAq8/LDMHkuE6Ch0/s150/Maybe%2Bfor%2BTwitter.jpg' width='150'/>
</a>
<br/>
<span class='caption'>Maggie at Port Eliot</span>
</div>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=Image&widgetId=Image1&action=editWidget&sectionId=sidebar' onclick='return _WidgetManager._PopupConfig(document.getElementById("Image1"));' rel='nofollow' target='configImage1' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div><div class='widget Profile' data-version='1' id='Profile1'>
<h2>About Me</h2>
<div class='widget-content'>
<dl class='profile-datablock'>
<dt class='profile-data'>
<a class='profile-name-link g-profile' href='https://www.blogger.com/profile/13630530599678517169' rel='author' style='background-image: url(//www.blogger.com/img/logo-16.png);'>
Maggie
</a>
</dt>
<dd class='profile-textblock'>I've had ME/CFS since March 9th 1992.  I am lucky that I got an early diagnosis, and also that I was advised to rest as much as I needed to.  My belief is that because of that I am far less disabled than I might have been...  I can garden still to a limited extent (hubby does all the hard work and I do the fiddly bits) and I'm rediscovering drawing, knitting, and my love of spinning and textiles.</dd>
</dl>
<a class='profile-link' href='https://www.blogger.com/profile/13630530599678517169' rel='author'>View my complete profile</a>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=Profile&widgetId=Profile1&action=editWidget&sectionId=sidebar' onclick='return _WidgetManager._PopupConfig(document.getElementById("Profile1"));' rel='nofollow' target='configProfile1' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div>
</div><div class='widget HTML' data-version='1' id='HTML9'>
<h2 class='title'>Blogging for ME Awareness Day</h2>
<div class='widget-content'>
<a href="http://rachelcreative.wordpress.com/2008/04/18/blogging-for-me-cfs-2008/"><img border="0" alt="ME/CFS Awareness" width="104" src="http://rachelcreative.files.wordpress.com/2008/04/me_cfs_ribbon_medium.jpg" class="alignnone size-full wp-image-728" height="250"/></a>
</div>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=HTML&widgetId=HTML9&action=editWidget&sectionId=sidebar' onclick='return _WidgetManager._PopupConfig(document.getElementById("HTML9"));' rel='nofollow' target='configHTML9' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div><div class='widget LinkList' data-version='1' id='LinkList4'>
<h2>My ME/CFS  Awareness Day Posts</h2>
<div class='widget-content'>
<ul>
<li><a href='http://liverpool-leftovers.blogspot.com/2010/05/international-me-awareness-day-2010.html'>2010</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2009/05/silver-sufferers.html'>2009</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2008/05/international-mecfs-awareness-day-2008.html'>2008</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2007/05/international-mecfs-day-2007.html'>2007</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2006/05/visit-to-london-and-to-downing-street.html'>2006</a></li>
</ul>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=LinkList&widgetId=LinkList4&action=editWidget&sectionId=sidebar' onclick='return _WidgetManager._PopupConfig(document.getElementById("LinkList4"));' rel='nofollow' target='configLinkList4' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div>
</div><div class='widget Followers' data-version='1' id='Followers1'>
<h2 class='title'>Followers</h2>
<div class='widget-content'>
<div id='Followers1-wrapper'>
<div style='margin-right:2px;'>
<div><script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
<div id="followers-iframe-container"></div>
<script type="text/javascript">
    window.followersIframe = null;
    function followersIframeOpen(url) {
      gapi.load("gapi.iframes", function() {
        if (gapi.iframes && gapi.iframes.getContext) {
          window.followersIframe = gapi.iframes.getContext().openChild({
            url: url,
            where: document.getElementById("followers-iframe-container"),
            messageHandlersFilter: gapi.iframes.CROSS_ORIGIN_IFRAMES_FILTER,
            messageHandlers: {
              '_ready': function(obj) {
                window.followersIframe.getIframeEl().height = obj.height;
              },
              'reset': function() {
                window.followersIframe.close();
                followersIframeOpen("https://www.blogger.com/followers.g?blogID\x3d10847768\x26colors\x3dCgt0cmFuc3BhcmVudBILdHJhbnNwYXJlbnQaByM2NjY2NjYiByMyMTU2NzAqByNmZmZmZmYyByM1NTg4YWE6ByM2NjY2NjZCByMyMTU2NzBKByM5OTk5OTlSByMyMTU2NzBaC3RyYW5zcGFyZW50\x26pageSize\x3d21\x26origin\x3dhttp://liverpool-leftovers.blogspot.com/");
              },
              'open': function(url) {
                window.followersIframe.close();
                followersIframeOpen(url);
              },
              'blogger-ping': function() {
              }
            }
          });
        }
      });
    }
    followersIframeOpen("https://www.blogger.com/followers.g?blogID\x3d10847768\x26colors\x3dCgt0cmFuc3BhcmVudBILdHJhbnNwYXJlbnQaByM2NjY2NjYiByMyMTU2NzAqByNmZmZmZmYyByM1NTg4YWE6ByM2NjY2NjZCByMyMTU2NzBKByM5OTk5OTlSByMyMTU2NzBaC3RyYW5zcGFyZW50\x26pageSize\x3d21\x26origin\x3dhttp://liverpool-leftovers.blogspot.com/");
  </script></div>
</div>
</div>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=Followers&widgetId=Followers1&action=editWidget&sectionId=sidebar' onclick='return _WidgetManager._PopupConfig(document.getElementById("Followers1"));' rel='nofollow' target='configFollowers1' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div>
</div><div class='widget BlogSearch' data-version='1' id='BlogSearch1'>
<h2 class='title'>Search This Blog</h2>
<div class='widget-content'>
<div id='BlogSearch1_form'>
<form action='http://liverpool-leftovers.blogspot.com/search' class='gsc-search-box' target='_top'>
<table cellpadding='0' cellspacing='0' class='gsc-search-box'>
<tbody>
<tr>
<td class='gsc-input'>
<input autocomplete='off' class='gsc-input' name='q' size='10' title='search' type='text' value=''/>
</td>
<td class='gsc-search-button'>
<input class='gsc-search-button' title='search' type='submit' value='Search'/>
</td>
</tr>
</tbody>
</table>
</form>
</div>
</div>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=BlogSearch&widgetId=BlogSearch1&action=editWidget&sectionId=sidebar' onclick='return _WidgetManager._PopupConfig(document.getElementById("BlogSearch1"));' rel='nofollow' target='configBlogSearch1' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div><div class='widget BlogArchive' data-version='1' id='BlogArchive1'>
<h2>Blog Archive</h2>
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2015/'>
2015
</a>
<span class='post-count' dir='ltr'>(3)</span>
<ul class='hierarchy'>
<li class='archivedate expanded'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy toggle-open'>

        &#9660;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2015/02/'>
February
</a>
<span class='post-count' dir='ltr'>(3)</span>
<ul class='posts'>
<li><a href='http://liverpool-leftovers.blogspot.com/2015/02/a-change-of-view-come-evening.html'>A change of view come evening</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2015/02/wolf-hall-part-1-bbc2.html'>Wolf Hall part 1 (BBC2)</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2015/02/today-has-been-interesting.html'>First Bumble Bee of the year!</a></li>
</ul>
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2013/'>
2013
</a>
<span class='post-count' dir='ltr'>(4)</span>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2013/05/'>
May
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2013/03/'>
March
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2013/01/'>
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2012/'>
2012
</a>
<span class='post-count' dir='ltr'>(10)</span>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2012/11/'>
November
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2012/10/'>
October
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2012/09/'>
September
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2012/08/'>
August
</a>
<span class='post-count' dir='ltr'>(5)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2012/05/'>
May
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2011/'>
2011
</a>
<span class='post-count' dir='ltr'>(3)</span>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2011/09/'>
September
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2011/05/'>
May
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2011/02/'>
February
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2010/'>
2010
</a>
<span class='post-count' dir='ltr'>(7)</span>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2010/12/'>
December
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2010/11/'>
November
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2010/08/'>
August
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2010/06/'>
June
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2010/05/'>
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2010/04/'>
April
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2009/'>
2009
</a>
<span class='post-count' dir='ltr'>(12)</span>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2009/12/'>
December
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2009/07/'>
July
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2009/06/'>
June
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2009/05/'>
May
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2009/03/'>
March
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2009/01/'>
January
</a>
<span class='post-count' dir='ltr'>(4)</span>
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2008/'>
2008
</a>
<span class='post-count' dir='ltr'>(16)</span>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2008/12/'>
December
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2008/10/'>
October
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2008/09/'>
September
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2008/08/'>
August
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2008/07/'>
July
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2008/06/'>
June
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2008/05/'>
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2008/04/'>
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2008/02/'>
February
</a>
<span class='post-count' dir='ltr'>(4)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2008/01/'>
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/'>
2007
</a>
<span class='post-count' dir='ltr'>(81)</span>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/12/'>
December
</a>
<span class='post-count' dir='ltr'>(7)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/11/'>
November
</a>
<span class='post-count' dir='ltr'>(4)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/10/'>
October
</a>
<span class='post-count' dir='ltr'>(4)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/09/'>
September
</a>
<span class='post-count' dir='ltr'>(6)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/08/'>
August
</a>
<span class='post-count' dir='ltr'>(6)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/07/'>
July
</a>
<span class='post-count' dir='ltr'>(5)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/06/'>
June
</a>
<span class='post-count' dir='ltr'>(13)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/05/'>
May
</a>
<span class='post-count' dir='ltr'>(8)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/04/'>
April
</a>
<span class='post-count' dir='ltr'>(8)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/03/'>
March
</a>
<span class='post-count' dir='ltr'>(7)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/02/'>
February
</a>
<span class='post-count' dir='ltr'>(7)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2007/01/'>
January
</a>
<span class='post-count' dir='ltr'>(6)</span>
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2006/'>
2006
</a>
<span class='post-count' dir='ltr'>(16)</span>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2006/12/'>
December
</a>
<span class='post-count' dir='ltr'>(5)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2006/11/'>
November
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2006/10/'>
October
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2006/09/'>
September
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2006/08/'>
August
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2006/05/'>
May
</a>
<span class='post-count' dir='ltr'>(4)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2006/04/'>
April
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2005/'>
2005
</a>
<span class='post-count' dir='ltr'>(57)</span>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2005/10/'>
October
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2005/07/'>
July
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
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2005/06/'>
June
</a>
<span class='post-count' dir='ltr'>(8)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2005/05/'>
May
</a>
<span class='post-count' dir='ltr'>(5)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2005/04/'>
April
</a>
<span class='post-count' dir='ltr'>(9)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2005/03/'>
March
</a>
<span class='post-count' dir='ltr'>(14)</span>
</li>
</ul>
<ul class='hierarchy'>
<li class='archivedate collapsed'>
<a class='toggle' href='javascript:void(0)'>
<span class='zippy'>

        &#9658;&#160;
      
</span>
</a>
<a class='post-count-link' href='http://liverpool-leftovers.blogspot.com/2005/02/'>
February
</a>
<span class='post-count' dir='ltr'>(19)</span>
</li>
</ul>
</li>
</ul>
</div>
</div>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=BlogArchive&widgetId=BlogArchive1&action=editWidget&sectionId=sidebar' onclick='return _WidgetManager._PopupConfig(document.getElementById("BlogArchive1"));' rel='nofollow' target='configBlogArchive1' title='Edit'>
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
<li><a href='http://www.flickr.com/photos/liverpool-leftovers/sets/72157624914189608/'>A house renovation (on Flickr)</a></li>
<li><a href='http://artis-anne.blogspot.com/'>Artis-Anne</a></li>
<li><a href='http://bluecoffeemug.wordpress.com/'>Blue Coffee Mug</a></li>
<li><a href='http://co-cure.org/'>Co-Cure</a></li>
<li><a href='http://cbg-dee.blogspot.com/'>Coffee Bean Goddess</a></li>
<li><a href='http://cornflower.typepad.com/domestic_arts_blog/'>Cornflower</a></li>
<li><a href='http://www.digtheoutside.com/'>Dig the Outside</a></li>
<li><a href='http://dovegreyreader.typepad.com/dovegreyreader_scribbles/'>dovegreyreader scribbles</a></li>
<li><a href='http://www.growveg.info/'>Grow Veg</a></li>
<li><a href='http://lombredemonombre.blogspot.com/'>l'ombre de mon ombre</a></li>
<li><a href='http://www.bibbity-bob.blogspot.com/'>Le monde voit l'avenir en rose</a></li>
<li><a href='http://marn.diaryland.com/'>Marn's Big Adventure</a></li>
<li><a href='http://knittingbunny.blogspot.com/'>Miss Wooly Knits</a></li>
<li><a href='http://planetmithi.blogspot.com/index.html'>Mithi's Creative Journey</a></li>
<li><a href='http://www.xanga.com/ukmaggie45'>My other Blog</a></li>
<li><a href='http://myseasidegarden.blogspot.com/'>My Seaside Garden</a></li>
<li><a href='http://oldageisabitch.blogspot.com/'>Old Age is a Bitch</a></li>
<li><a href='http://artjournaler.typepad.com/pomegranatesandpaper/'>Pomegranates and Paper</a></li>
<li><a href='http://restyledhome.blogspot.com/'>Restyled Home</a></li>
<li><a href='http://improbableoptimisms.blogspot.com/'>Rickety Contrivances of Doing Good</a></li>
<li><a href='http://www.schuylersmonsterblog.com/'>Schuyler's Monster: The Blog</a></li>
<li><a href='http://www.seedparade.co.uk/'>Seed Parade</a></li>
<li><a href='http://the2yearproject.blogspot.com/'>The 2-year project</a></li>
<li><a href='http://newoldage.blogs.nytimes.com/'>The New Old Age</a></li>
<li><a href='http://batsgirl.blogspot.com/'>This is my blog</a></li>
<li><a href='http://westbroke.blogspot.com/'>Westbroke</a></li>
<li><a href='http://www.willa.com/journal/'>Willa'a Journal</a></li>
<li><a href='http://woodlandsworld.blogspot.com/'>Woodlands World</a></li>
<li><a href='http://woodlandsworld2.blogspot.com/'>Woodlands World 2</a></li>
</ul>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=LinkList&widgetId=LinkList1&action=editWidget&sectionId=sidebar' onclick='return _WidgetManager._PopupConfig(document.getElementById("LinkList1"));' rel='nofollow' target='configLinkList1' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div>
</div><div class='widget HTML' data-version='1' id='HTML4'>
<h2 class='title'>Red Duck</h2>
<div class='widget-content'>
<bunnyhero pet start/>
<div style="width: 250px; padding: 0; margin: 0; text-align: center">
<embed pluginspage="http://www.macromedia.com/go/getflashplayer" quality="high" flashvars="cn=ruddy%20duck&an=maggie&clr=0xcb0d1a" type="application/x-shockwave-flash" height="300" src="http://petswf.bunnyherolabs.com/adopt/swf/duck" bgcolor="ffffff" width="250">
</embed><br/>
<small><a href="http://bunnyherolabs.com/adopt/">adopt your own virtual pet!</a></small>
</div>
<bunnyhero pet end/></bunnyhero></bunnyhero>
</div>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=HTML&widgetId=HTML4&action=editWidget&sectionId=sidebar' onclick='return _WidgetManager._PopupConfig(document.getElementById("HTML4"));' rel='nofollow' target='configHTML4' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div><div class='widget LinkList' data-version='1' id='LinkList2'>
<h2>My med posts/rants</h2>
<div class='widget-content'>
<ul>
<li><a href='http://liverpool-leftovers.blogspot.com/2007/05/international-mecfs-day-2007.html'>International ME/CFS Awareness Day 2007</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2007/04/slugs-and-snails-and-other-tales.html'>Slugs and snails and other tales</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2007/04/we-have-had-number-of-very-bizarre.html'>Bizarre</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2007/03/tele-medicine.html'>Tele-medicine</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2007/02/quacktitioners-and-quackometer.html'>Quacktitioners and the Quackometer</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2007/02/snow-and-now-fog.html'>Snow and now fog</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2007/01/here-we-go-again.html'>Here we go again</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2007/01/how-to-part-patients-from-their-money.html'>How to part patients from their money</a></li>
<li><a href='http://liverpool-leftovers.blogspot.com/2006/11/nice-is-nasty-and-nhs-plus-is-too.html'>Nice is nasty and NHS Plus is too.</a></li>
</ul>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=LinkList&widgetId=LinkList2&action=editWidget&sectionId=sidebar' onclick='return _WidgetManager._PopupConfig(document.getElementById("LinkList2"));' rel='nofollow' target='configLinkList2' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div>
</div>
<div class='widget HTML' data-version='1' id='HTML8'>
<h2 class='title'>Blogshares</h2>
<div class='widget-content'>
<a href="http://blogshares.com/blogs.php?blog=http%3A%2F%2Fliverpool-leftovers.blogspot.com%2F&user=57002"><img alt="Listed on BlogShares" width="117" src="http://blogshares.com/images/blogshares.jpg" height="23"/></a>
</div>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=HTML&widgetId=HTML8&action=editWidget&sectionId=sidebar' onclick='return _WidgetManager._PopupConfig(document.getElementById("HTML8"));' rel='nofollow' target='configHTML8' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div></div>
</div>
<!-- spacer for skins that want sidebar and main to be the same height-->
<div class='clear'>&#160;</div>
</div>
<!-- end content-wrapper -->
<div id='footer-wrapper'>
<div class='footer section' id='footer'><div class='widget BloggerButton' data-version='1' id='BloggerButton1'>
<div class='widget-content'>
<a href='https://www.blogger.com'><img alt='Powered By Blogger' src='https://www.blogger.com/buttons/blogger-simple-kahki.gif'/></a>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=BloggerButton&widgetId=BloggerButton1&action=editWidget&sectionId=footer' onclick='return _WidgetManager._PopupConfig(document.getElementById("BloggerButton1"));' rel='nofollow' target='configBloggerButton1' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div>
</div><div class='widget HTML' data-version='1' id='HTML10'>
<h2 class='title'>Who links to me?</h2>
<div class='widget-content'>
<a href="http://wholinkstome.com/url/liverpool-leftovers.blogspot.com"><img border="0" src="http://wholinkstome.com/images/wltm_1.png"/></a>
</div>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=HTML&widgetId=HTML10&action=editWidget&sectionId=footer' onclick='return _WidgetManager._PopupConfig(document.getElementById("HTML10"));' rel='nofollow' target='configHTML10' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div><div class='widget HTML' data-version='1' id='HTML1'>
<h2 class='title'>Statcounter</h2>
<div class='widget-content'>
<!-- Start of StatCounter Code -->
<script language="javascript" type="text/javascript">
var sc_project=622121;
var sc_invisible=0;
var sc_partition=3;
var sc_security="77879d64";
</script>

<script language="javascript" src="http://www.statcounter.com/counter/counter.js" type="text/javascript"></script><noscript><a href="http://www.statcounter.com/" target="_blank"><img border="0" alt="free hit counter code" src="http://c4.statcounter.com/counter.php?sc_project=622121&java=0&security=77879d64&invisible=0"/></a> </noscript>
<!-- End of StatCounter Code -->
</div>
<div class='clear'></div>
<span class='widget-item-control'>
<span class='item-control blog-admin'>
<a class='quickedit' href='//www.blogger.com/rearrange?blogID=10847768&widgetType=HTML&widgetId=HTML1&action=editWidget&sectionId=footer' onclick='return _WidgetManager._PopupConfig(document.getElementById("HTML1"));' rel='nofollow' target='configHTML1' title='Edit'>
<img alt='' height='18' src='https://resources.blogblog.com/img/icon18_wrench_allbkg.png' width='18'/>
</a>
</span>
</span>
<div class='clear'></div>
</div></div>
</div>
</div></div>
<!-- end outer-wrapper -->
<script src='https://apis.google.com/js/plusone.js' type='text/javascript'></script>

<script type="text/javascript" src="https://www.blogger.com/static/v1/widgets/389203291-widgets.js"></script>
<script type='text/javascript'>
window['__wavt'] = 'AOuZoY61vrq4JN2PahUaqLj0gUgmW34WAw:1602613569964';_WidgetManager._Init('//www.blogger.com/rearrange?blogID\x3d10847768','//liverpool-leftovers.blogspot.com/','10847768');
_WidgetManager._SetDataContext([{'name': 'blog', 'data': {'blogId': '10847768', 'title': 'Liverpool Leftovers', 'url': 'http://liverpool-leftovers.blogspot.com/', 'canonicalUrl': 'http://liverpool-leftovers.blogspot.com/', 'homepageUrl': 'http://liverpool-leftovers.blogspot.com/', 'searchUrl': 'http://liverpool-leftovers.blogspot.com/search', 'canonicalHomepageUrl': 'http://liverpool-leftovers.blogspot.com/', 'blogspotFaviconUrl': 'http://liverpool-leftovers.blogspot.com/favicon.ico', 'bloggerUrl': 'https://www.blogger.com', 'hasCustomDomain': false, 'httpsEnabled': true, 'enabledCommentProfileImages': true, 'gPlusViewType': 'FILTERED_POSTMOD', 'adultContent': false, 'analyticsAccountNumber': '', 'encoding': 'UTF-8', 'locale': 'en-GB', 'localeUnderscoreDelimited': 'en_gb', 'languageDirection': 'ltr', 'isPrivate': false, 'isMobile': false, 'isMobileRequest': false, 'mobileClass': '', 'isPrivateBlog': false, 'isDynamicViewsAvailable': true, 'feedLinks': '\x3clink rel\x3d\x22alternate\x22 type\x3d\x22application/atom+xml\x22 title\x3d\x22Liverpool Leftovers - Atom\x22 href\x3d\x22http://liverpool-leftovers.blogspot.com/feeds/posts/default\x22 /\x3e\n\x3clink rel\x3d\x22alternate\x22 type\x3d\x22application/rss+xml\x22 title\x3d\x22Liverpool Leftovers - RSS\x22 href\x3d\x22http://liverpool-leftovers.blogspot.com/feeds/posts/default?alt\x3drss\x22 /\x3e\n\x3clink rel\x3d\x22service.post\x22 type\x3d\x22application/atom+xml\x22 title\x3d\x22Liverpool Leftovers - Atom\x22 href\x3d\x22https://www.blogger.com/feeds/10847768/posts/default\x22 /\x3e\n', 'meTag': '\x3clink rel\x3d\x22me\x22 href\x3d\x22https://www.blogger.com/profile/13630530599678517169\x22 /\x3e\n', 'adsenseHostId': 'ca-host-pub-1556223355139109', 'adsenseHasAds': false, 'view': '', 'dynamicViewsCommentsSrc': '//www.blogblog.com/dynamicviews/4224c15c4e7c9321/js/comments.js', 'dynamicViewsScriptSrc': '//www.blogblog.com/dynamicviews/6465efe1e2987800', 'plusOneApiSrc': 'https://apis.google.com/js/plusone.js', 'disableGComments': true, 'sharing': {'platforms': [{'name': 'Get link', 'key': 'link', 'shareMessage': 'Get link', 'target': ''}, {'name': 'Facebook', 'key': 'facebook', 'shareMessage': 'Share to Facebook', 'target': 'facebook'}, {'name': 'BlogThis!', 'key': 'blogThis', 'shareMessage': 'BlogThis!', 'target': 'blog'}, {'name': 'Twitter', 'key': 'twitter', 'shareMessage': 'Share to Twitter', 'target': 'twitter'}, {'name': 'Pinterest', 'key': 'pinterest', 'shareMessage': 'Share to Pinterest', 'target': 'pinterest'}, {'name': 'Email', 'key': 'email', 'shareMessage': 'Email', 'target': 'email'}], 'disableGooglePlus': true, 'googlePlusShareButtonWidth': 300, 'googlePlusBootstrap': '\x3cscript type\x3d\x22text/javascript\x22\x3ewindow.___gcfg \x3d {\x27lang\x27: \x27en_GB\x27};\x3c/script\x3e'}, 'hasCustomJumpLinkMessage': false, 'jumpLinkMessage': 'Read more', 'pageType': 'index', 'pageName': '', 'pageTitle': 'Liverpool Leftovers'}}, {'name': 'features', 'data': {'sharing_get_link_dialog': 'true', 'sharing_native': 'false'}}, {'name': 'messages', 'data': {'edit': 'Edit', 'linkCopiedToClipboard': 'Link copied to clipboard', 'ok': 'OK', 'postLink': 'Post link'}}, {'name': 'template', 'data': {'name': 'custom', 'localizedName': 'Custom', 'isResponsive': false, 'isAlternateRendering': false, 'isCustom': true}}, {'name': 'view', 'data': {'classic': {'name': 'classic', 'url': '?view\x3dclassic'}, 'flipcard': {'name': 'flipcard', 'url': '?view\x3dflipcard'}, 'magazine': {'name': 'magazine', 'url': '?view\x3dmagazine'}, 'mosaic': {'name': 'mosaic', 'url': '?view\x3dmosaic'}, 'sidebar': {'name': 'sidebar', 'url': '?view\x3dsidebar'}, 'snapshot': {'name': 'snapshot', 'url': '?view\x3dsnapshot'}, 'timeslide': {'name': 'timeslide', 'url': '?view\x3dtimeslide'}, 'isMobile': false, 'title': 'Liverpool Leftovers', 'description': '', 'url': 'http://liverpool-leftovers.blogspot.com/', 'type': 'feed', 'isSingleItem': false, 'isMultipleItems': true, 'isError': false, 'isPage': false, 'isPost': false, 'isHomepage': true, 'isArchive': false, 'isLabelSearch': false}}]);
_WidgetManager._RegisterWidget('_NavbarView', new _WidgetInfo('Navbar1', 'navbar', document.getElementById('Navbar1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HeaderView', new _WidgetInfo('Header1', 'header', document.getElementById('Header1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_BlogView', new _WidgetInfo('Blog1', 'main', document.getElementById('Blog1'), {'cmtInteractionsEnabled': false, 'lightboxEnabled': true, 'lightboxModuleUrl': 'https://www.blogger.com/static/v1/jsbin/2075230313-lbx__en_gb.js', 'lightboxCssUrl': 'https://www.blogger.com/static/v1/v-css/368954415-lightbox_bundle.css'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_ImageView', new _WidgetInfo('Image1', 'sidebar', document.getElementById('Image1'), {'resize': true}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_ProfileView', new _WidgetInfo('Profile1', 'sidebar', document.getElementById('Profile1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML9', 'sidebar', document.getElementById('HTML9'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList4', 'sidebar', document.getElementById('LinkList4'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FollowersView', new _WidgetInfo('Followers1', 'sidebar', document.getElementById('Followers1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_BlogSearchView', new _WidgetInfo('BlogSearch1', 'sidebar', document.getElementById('BlogSearch1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_BlogArchiveView', new _WidgetInfo('BlogArchive1', 'sidebar', document.getElementById('BlogArchive1'), {'languageDirection': 'ltr', 'loadingMessage': 'Loading\x26hellip;'}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList1', 'sidebar', document.getElementById('LinkList1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML4', 'sidebar', document.getElementById('HTML4'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList2', 'sidebar', document.getElementById('LinkList2'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML8', 'sidebar', document.getElementById('HTML8'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_BloggerButtonView', new _WidgetInfo('BloggerButton1', 'footer', document.getElementById('BloggerButton1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML10', 'footer', document.getElementById('HTML10'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML1', 'footer', document.getElementById('HTML1'), {}, 'displayModeFull'));
</script>
</body>
</html>