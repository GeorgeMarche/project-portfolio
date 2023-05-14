



















































































































































































































































































































































































































































































































<!DOCTYPE html>
<html lang="en-US"
	prefix="og: https://ogp.me/ns#" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link rel="profile" href="http://gmpg.org/xfn/11" />
    <link rel="pingback" href="http://metrobali.com/xmlrpc.php">
	<title>metrobali.com | Selangkah Lebih Awal</title>

<!-- All In One SEO Pack 3.6.2[283,294] -->
<script type="application/ld+json" class="aioseop-schema">{"@context":"https://schema.org","@graph":[{"@type":"Organization","@id":"http://metrobali.com/#organization","url":"http://metrobali.com/","name":"metrobali.com","sameAs":[]},{"@type":"WebSite","@id":"http://metrobali.com/#website","url":"http://metrobali.com/","name":"metrobali.com","publisher":{"@id":"http://metrobali.com/#organization"},"potentialAction":{"@type":"SearchAction","target":"http://metrobali.com/?s={search_term_string}","query-input":"required name=search_term_string"}},{"@type":"WebPage","@id":"http://metrobali.com#webpage","url":"http://metrobali.com","inLanguage":"en-US","name":"metrobali.com","isPartOf":{"@id":"http://metrobali.com/#website"},"breadcrumb":{"@id":"http://metrobali.com#breadcrumblist"},"description":"Selangkah Lebih Awal","datePublished":"2017-07-14T03:18:22+00:00","dateModified":"2020-10-05T07:10:44+00:00","about":{"@id":"http://metrobali.com/#organization"}},{"@type":"BreadcrumbList","@id":"http://metrobali.com#breadcrumblist","itemListElement":[{"@type":"ListItem","position":1,"item":{"@type":"WebPage","@id":"http://metrobali.com/","url":"http://metrobali.com/","name":"metrobali.com"}}]}]}</script>
<link rel="canonical" href="http://metrobali.com/" />
<meta property="og:type" content="website" />
<meta property="og:title" content="metrobali.com | Selangkah Lebih Awal" />
<meta property="og:description" content="Selangkah Lebih Awal" />
<meta property="og:url" content="http://metrobali.com/" />
<meta property="og:site_name" content="metrobali.com" />
<meta property="og:image" content="http://metrobali.com/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:title" content="metrobali.com | Selangkah Lebih Awal" />
<meta name="twitter:description" content="Selangkah Lebih Awal" />
<meta name="twitter:image" content="http://metrobali.com/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png" />
<!-- All In One SEO Pack -->
<link rel='dns-prefetch' href='//pagead2.googlesyndication.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="metrobali.com &raquo; Feed" href="http://metrobali.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="metrobali.com &raquo; Comments Feed" href="http://metrobali.com/comments/feed/" />
<meta name="description" content="" />
<meta name="keywords" content="metrobali.com" />
<meta name="robots" content="index,follow,noodp,noydir" />
<link rel="canonical" href="http://metrobali.com/" />
<!-- This site uses the Google Analytics by MonsterInsights plugin v7.11.0 - Using Analytics tracking - https://www.monsterinsights.com/ -->
<script type="text/javascript" data-cfasync="false">
	var mi_version         = '7.11.0';
	var mi_track_user      = true;
	var mi_no_track_reason = '';
	
	var disableStr = 'ga-disable-UA-122476278-1';

	/* Function to detect opted out users */
	function __gaTrackerIsOptedOut() {
		return document.cookie.indexOf(disableStr + '=true') > -1;
	}

	/* Disable tracking if the opt-out cookie exists. */
	if ( __gaTrackerIsOptedOut() ) {
		window[disableStr] = true;
	}

	/* Opt-out function */
	function __gaTrackerOptout() {
	  document.cookie = disableStr + '=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/';
	  window[disableStr] = true;
	}

	if ( 'undefined' === typeof gaOptout ) {
		function gaOptout() {
			__gaTrackerOptout();
		}
	}
	
	if ( mi_track_user ) {
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','__gaTracker');

		__gaTracker('create', 'UA-122476278-1', 'auto');
		__gaTracker('set', 'forceSSL', true);
		__gaTracker('require', 'displayfeatures');
		__gaTracker('send','pageview');
	} else {
		console.log( "" );
		(function() {
			/* https://developers.google.com/analytics/devguides/collection/analyticsjs/ */
			var noopfn = function() {
				return null;
			};
			var noopnullfn = function() {
				return null;
			};
			var Tracker = function() {
				return null;
			};
			var p = Tracker.prototype;
			p.get = noopfn;
			p.set = noopfn;
			p.send = noopfn;
			var __gaTracker = function() {
				var len = arguments.length;
				if ( len === 0 ) {
					return;
				}
				var f = arguments[len-1];
				if ( typeof f !== 'object' || f === null || typeof f.hitCallback !== 'function' ) {
					console.log( 'Not running function __gaTracker(' + arguments[0] + " ....) because you are not being tracked. " + mi_no_track_reason );
					return;
				}
				try {
					f.hitCallback();
				} catch (ex) {

				}
			};
			__gaTracker.create = function() {
				return new Tracker();
			};
			__gaTracker.getByName = noopnullfn;
			__gaTracker.getAll = function() {
				return [];
			};
			__gaTracker.remove = noopfn;
			window['__gaTracker'] = __gaTracker;
					})();
		}
</script>
<!-- / Google Analytics by MonsterInsights -->
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/11\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/11\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/metrobali.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.9.15"}};
			!function(a,b,c){function d(a,b){var c=String.fromCharCode;l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,a),0,0);var d=k.toDataURL();l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,b),0,0);var e=k.toDataURL();return d===e}function e(a){var b;if(!l||!l.fillText)return!1;switch(l.textBaseline="top",l.font="600 32px Arial",a){case"flag":return!(b=d([55356,56826,55356,56819],[55356,56826,8203,55356,56819]))&&(b=d([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]),!b);case"emoji":return b=d([55358,56760,9792,65039],[55358,56760,8203,9792,65039]),!b}return!1}function f(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var g,h,i,j,k=b.createElement("canvas"),l=k.getContext&&k.getContext("2d");for(j=Array("flag","emoji"),c.supports={everything:!0,everythingExceptFlag:!0},i=0;i<j.length;i++)c.supports[j[i]]=e(j[i]),c.supports.everything=c.supports.everything&&c.supports[j[i]],"flag"!==j[i]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[j[i]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(h=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",h,!1),a.addEventListener("load",h,!1)):(a.attachEvent("onload",h),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),g=c.source||{},g.concatemoji?f(g.concatemoji):g.wpemoji&&g.twemoji&&(f(g.twemoji),f(g.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='sb_instagram_styles-css'  href='http://metrobali.com/wp-content/plugins/instagram-feed/css/sb-instagram-2-2.min.css?ver=2.4.5'  media='all' />
<link rel='stylesheet' id='fontawesome-five-css-css'  href='http://metrobali.com/wp-content/plugins/accesspress-social-counter/css/fontawesome-all.css?ver=1.8.8'  media='all' />
<link rel='stylesheet' id='apsc-frontend-css-css'  href='http://metrobali.com/wp-content/plugins/accesspress-social-counter/css/frontend.css?ver=1.8.8'  media='all' />
<link rel='stylesheet' id='contact-form-7-css'  href='http://metrobali.com/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.1.1'  media='all' />
<link rel='stylesheet' id='core-front-css'  href='http://metrobali.com/wp-content/plugins/theme-core/assets/css/na-core-front.css?ver=1.0'  media='all' />
<link rel='stylesheet' id='wpccp-css'  href='http://metrobali.com/wp-content/plugins/wp-content-copy-protection/assets/css/style.min.css?ver=1594911162'  media='all' />
<link rel='stylesheet' id='social_likes_style_classic-css'  href='http://metrobali.com/wp-content/plugins/wp-social-likes/css/social-likes_classic.css?ver=4.9.15'  media='all' />
<link rel='stylesheet' id='nerubian_fonts-css'  href='https://fonts.googleapis.com/css?family=Roboto%3A300%2C300i%2C400%2C500%2C700%2C900%7COswald%3A400%2C500%2C700&#038;subset=latin%2Clatin-ext'  media='all' />
<link rel='stylesheet' id='bootstrap-css'  href='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/css/bootstrap.min.css?ver=3.0.2%20'  media='all' />
<link rel='stylesheet' id='awesome-font-css'  href='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/css/font-awesome.min.css?ver=4.6.3'  media='all' />
<link rel='stylesheet' id='jquery-ui-css'  href='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/css/jquery-ui.min.css?ver=1.11.4'  media='all' />
<link rel='stylesheet' id='themify-icons-css'  href='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/css/themify-icons.css'  media='all' />
<link rel='stylesheet' id='photoswipe-css'  href='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/css/photoswipe.css'  media='all' />
<link rel='stylesheet' id='default-skin-css'  href='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/css/default-skin/default-skin.css'  media='all' />
<link rel='stylesheet' id='nerubian-main-css'  href='http://metrobali.com/wp-content/themes/nerubian/nerubian/style.css'  media='all' />
<link rel='stylesheet' id='nerubian-css-css'  href='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/css/style-default.min.css?ver=4.9.15'  media='all' />
<style id='nerubian-css-inline-css' type='text/css'>

		/* Custom  color title  */
		#nerubian-header,.header-drawer #nerubian-header,.header-content-menu{
		    background:#0c0c0c;
		}

	

		/* Custom  color title  */
		.menu-drawer #na-menu-primary ul.mega-menu > li > a,
		#na-menu-primary ul > li[class*="-has-children"] > a::before,
		.menu-drawer #na-menu-primary ul > li[class*="-has-children"] > a::before,
		.btn-mini-search, .na-cart .icon-cart,
		.nerubian_icon-bar,
        #na-menu-primary ul.mega-menu > li > a
		{
		    color:#528cbf;
		}

	
</style>
<link rel='stylesheet' id='js_composer_front-css'  href='http://metrobali.com/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=5.4.5'  media='all' />
<link rel='stylesheet' id='addtoany-css'  href='http://metrobali.com/wp-content/plugins/add-to-any/addtoany.min.css?ver=1.15'  media='all' />
<script type='text/javascript'>
/* <![CDATA[ */
var monsterinsights_frontend = {"js_events_tracking":"true","download_extensions":"doc,pdf,ppt,zip,xls,docx,pptx,xlsx","inbound_paths":"[]","home_url":"http:\/\/metrobali.com","hash_tracking":"false"};
/* ]]> */
</script>
<script  src='http://metrobali.com/wp-content/plugins/google-analytics-for-wordpress/assets/js/frontend.min.js?ver=7.11.0'></script>
<script  src='http://metrobali.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script  src='http://metrobali.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script  src='http://metrobali.com/wp-content/plugins/add-to-any/addtoany.min.js?ver=1.1'></script>
<script  src='http://metrobali.com/wp-content/plugins/wp-social-likes/js/social-likes.min.js?ver=4.9.15'></script>
<link rel='https://api.w.org/' href='http://metrobali.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://metrobali.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://metrobali.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 4.9.15" />
<link rel='shortlink' href='http://metrobali.com/' />
<link rel="alternate" type="application/json+oembed" href="http://metrobali.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fmetrobali.com%2F" />
<link rel="alternate" type="text/xml+oembed" href="http://metrobali.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fmetrobali.com%2F&#038;format=xml" />

<script data-cfasync="false">
window.a2a_config=window.a2a_config||{};a2a_config.callbacks=[];a2a_config.overlays=[];a2a_config.templates={};
(function(d,s,a,b){a=d.createElement(s);b=d.getElementsByTagName(s)[0];a.async=1;a.src="https://static.addtoany.com/menu/page.js";b.parentNode.insertBefore(a,b);})(document,"script");
</script>
    <meta property="fb:app_id" content="" />
    <meta property="fb:app_id" content="" />
<meta name="generator" content="Powered by WPBakery Page Builder - drag and drop page builder for WordPress."/>
<!--[if lte IE 9]><link rel="stylesheet" type="text/css" href="http://metrobali.com/wp-content/plugins/js_composer/assets/css/vc_lte_ie9.min.css" media="screen"><![endif]--><link rel="icon" href="http://metrobali.com/wp-content/uploads/2018/03/cropped-logo-mb-png-1-32x32.jpg" sizes="32x32" />
<link rel="icon" href="http://metrobali.com/wp-content/uploads/2018/03/cropped-logo-mb-png-1-192x192.jpg" sizes="192x192" />
<link rel="apple-touch-icon-precomposed" href="http://metrobali.com/wp-content/uploads/2018/03/cropped-logo-mb-png-1-180x180.jpg" />
<meta name="msapplication-TileImage" content="http://metrobali.com/wp-content/uploads/2018/03/cropped-logo-mb-png-1-270x270.jpg" />
<noscript><style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript>
<div align="center">
	<noscript>
		<div style="position:fixed; top:0px; left:0px; z-index:3000; height:100%; width:100%; background-color:#FFFFFF">
			<br/><br/>
			<div style="font-family: Tahoma; font-size: 14px; background-color:#FFFFCC; border: 1pt solid Black; padding: 10pt;">
				Sorry, you have Javascript Disabled! To see this page as it is meant to appear, please enable your Javascript! See instructions <a href="http://www.enable-javascript.com/">here</a>
			</div>
		</div>
	</noscript>
</div>
   <script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-1781044259527275",
    enable_page_level_ads: false
  });
</script>
</head>
<head>
	<script data-ad-client="ca-pub-1781044259527275" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
</head>
<body class="home page-template-default page page-id-110 page-parent wpb-js-composer js-comp-ver-5.4.5 vc_responsive">
<div id="page" class="wrapper site">
    <div class="canvas-overlay"></div>
    
<header id="masthead" class="site-header header-left global" style = "background-image: url(&quot;http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/bg_default_menu.jpg&quot;)">
    <div id="nerubian-header">
                    <div class="header-topbar">
                <div id="nerubian-top-navbar" class="top-navbar">
    <div class="container">
        <div class="row">
            <div class="topbar-left col-xs-12 col-sm-6 col-md-6">
                <div class="na-topbar clearfix">
                                            <nav id="na-top-navigation" class="collapse navbar-collapse">
                                                    </nav>
                    
                </div>
            </div>
            <div class="topbar-right hidden-xs col-sm-6 col-md-6 clearfix">
                <div id="nerubian_social-3" class="widget first nerubian_social"><div class="nerubian-social-icon clearfix"><a href="https://www.facebook.com/themenano/" target="_blank" title="ion-social-facebook" class="ion-social-facebook"><i class="fa fa-facebook"></i></a><a href="https://plus.google.com/" target="_blank" title="ion-social-googleplus" class="ion-social-googleplus"><i class="fa fa-google-plus"></i></a><a href="https://twitter.com/nanoagency2017" target="_blank" title="ion-social-twitter" class="ion-social-twitter"><i class="fa fa-twitter"></i></a><a href="https://www.instagram.com/" target="_blank" title="ion-social-instagram" class="ion-social-instagram"><i class="fa fa-instagram"></i></a></div></div>            </div>

        </div>
    </div>
</div>            </div>
        
        <div class="header-content-logo container">
                    <div class="site-logo" id="logo">
        <a href="http://metrobali.com/" rel="home">
                            <img src="http://metrobali.com/wp-content/uploads/2019/06/logo-mb-baru.png" alt="metrobali.com" />
            

        </a>
    </div>
                        <div class="header-middle">
                    <div id="custom_html-2" class="widget_text widget first widget_custom_html"><div class="textwidget custom-html-widget"><script data-ad-client="ca-pub-7431505704721831" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script></div></div>                </div>
        </div>
        <div class="header-content-right hidden-md hidden-lg">
            <div class="searchform-mini searchform-moblie hidden-md hidden-lg">
                <button class="btn-mini-search"><i class="ti-search"></i></button>
            </div>
            <div class="searchform-wrap search-transition-wrap nerubian-hidden">
                <div class="search-transition-inner">
                    <form method="get"  class="searchform" action="http://metrobali.com/">

    <div class="input-group">
        <input type="text" class="form-control" placeholder="Search ... " value="" name="s" />
        <span class="input-group-btn">
            <button class="btn btn-primary"><i class="ti-search"></i></button>
        </span>
    </div>

</form>                    <button class="btn-mini-close pull-right"><i class="fa fa-close"></i></button>
                </div>
            </div>
        </div>

        <div class="header-content bar header-fixed">
                <div class="nerubian-header-content container">
                    <!-- Menu-->
                    <div id="na-menu-primary" class="nav-menu clearfix">
                        <nav class="text-center na-menu-primary clearfix">
                            <ul id="menu-metro-life-style" class="nav navbar-nav na-menu mega-menu"><li id="menu-item-292374" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-292374"><a href="http://metrobali.com">Home</a></li>
<li id="menu-item-292842" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-292842"><a href="http://metrobali.com/news/">News</a>
<ul class="sub-menu">
	<li id="menu-item-292844" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292844"><a href="http://metrobali.com/category/ekonomi/">Ekonomi</a></li>
	<li id="menu-item-327671" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-327671"><a href="http://metrobali.com/category/entertainment-arts/">Entertainment &#038; Arts</a></li>
	<li id="menu-item-292843" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292843"><a href="http://metrobali.com/category/politik/">Politik</a></li>
	<li id="menu-item-292846" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292846"><a href="http://metrobali.com/category/senidanbudaya/">Seni dan Budaya</a></li>
	<li id="menu-item-327668" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-327668"><a href="http://metrobali.com/category/pendidikan/">Pendidikan</a></li>
	<li id="menu-item-292845" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292845"><a href="http://metrobali.com/category/hukum/">Hukum</a></li>
	<li id="menu-item-292847" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292847"><a href="http://metrobali.com/category/sport/">Sport</a></li>
	<li id="menu-item-327669" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-327669"><a href="http://metrobali.com/category/sosok/">Sosok</a></li>
	<li id="menu-item-295520" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-295520"><a href="http://metrobali.com/home/prnewswire/">PRNEWSWIRE</a></li>
</ul>
</li>
<li id="menu-item-292555" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-292555"><a href="#">Daerah</a>
<ul class="sub-menu">
	<li id="menu-item-292583" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292583"><a href="http://metrobali.com/category/daerah/denpasar/">Denpasar</a></li>
	<li id="menu-item-292369" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292369"><a href="http://metrobali.com/category/daerah/badung/">Badung</a></li>
	<li id="menu-item-292582" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292582"><a href="http://metrobali.com/category/daerah/buleleng/">Buleleng</a></li>
	<li id="menu-item-292581" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292581"><a href="http://metrobali.com/category/daerah/bangli/">Bangli</a></li>
	<li id="menu-item-292584" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292584"><a href="http://metrobali.com/category/daerah/gianyar/">Gianyar</a></li>
	<li id="menu-item-292585" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292585"><a href="http://metrobali.com/category/daerah/karangasem/">Karangasem</a></li>
	<li id="menu-item-292586" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292586"><a href="http://metrobali.com/category/daerah/klungkung/">Klungkung</a></li>
	<li id="menu-item-292372" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292372"><a href="http://metrobali.com/category/daerah/jembrana/">Jembrana</a></li>
	<li id="menu-item-292587" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292587"><a href="http://metrobali.com/category/daerah/tabanan/">Tabanan</a></li>
</ul>
</li>
<li id="menu-item-292836" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292836"><a href="http://metrobali.com/category/nusantara/">Nusantara</a></li>
<li id="menu-item-292848" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-292848"><a href="http://metrobali.com/category/life-style/">Lifestyle</a>
<ul class="sub-menu">
	<li id="menu-item-327670" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-327670"><a href="http://metrobali.com/category/lingkungan/">Lingkungan</a></li>
	<li id="menu-item-292849" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292849"><a href="http://metrobali.com/category/sosok/">Sosok</a></li>
	<li id="menu-item-292850" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292850"><a href="http://metrobali.com/category/otomotif/">Otomotif</a></li>
	<li id="menu-item-292851" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292851"><a href="http://metrobali.com/category/teknologi/">Teknologi</a></li>
	<li id="menu-item-362715" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-362715"><a href="http://metrobali.com/category/life-style/event/">Event</a></li>
</ul>
</li>
<li id="menu-item-292567" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-292567"><a href="http://metrobali.com/redaksi/">Redaksi</a></li>
<li id="menu-item-292590" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-292590"><a href="http://metrobali.com/contact-us/">Contact Us</a></li>
</ul>                        </nav>
                    </div>
                    <!--Seacrch & Cart-->
                    <div class="header-content-right">
                        <div class="searchform-mini ">
                            <button class="btn-mini-search"><i class="ti-search"></i></button>
                        </div>
                        <div class="searchform-wrap search-transition-wrap nerubian-hidden">
                            <div class="search-transition-inner">
                                <form method="get"  class="searchform" action="http://metrobali.com/">

    <div class="input-group">
        <input type="text" class="form-control" placeholder="Search ... " value="" name="s" />
        <span class="input-group-btn">
            <button class="btn btn-primary"><i class="ti-search"></i></button>
        </span>
    </div>

</form>                                <button class="btn-mini-close pull-right"><i class="fa fa-close"></i></button>
                            </div>
                        </div>

                    </div>
                </div>
        </div>
    </div>
</header><!-- .site-header -->    <div id="content" class="site-content">
<div class="container">
    <div class="row">
        <div class="site-main page-content col-sm-12 " role="main">
                                                    <div class="page-container clearfix">
		<div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-8"><div class="vc_column-inner "><div class="wpb_wrapper">      <div class="box-sliders sliders-column1">
            <div class="article-carousel" data-rtl="false"  data-table="1" data-number="1" data-mobile = "1" data-mobilemin = "1" data-dots="false" data-arrows="true">
                
<article class="post-item post-tran clearfix post-429660 post type-post status-publish format-standard has-post-thumbnail hentry category-daerah category-denpasar category-pendidikan category-top-news">
    <div class="article-tran hover-share-item">
                                                        <div class="post-image lazy" style = "background-image:url(&#039;http://metrobali.com/wp-content/uploads/2020/10/IMG_20201014_211833.jpg&#039;)">
                        <a href="http://metrobali.com/dekan-fikom-dwijendra-ajak-lulusannya-kampanyekan-gerakan-indonesiabicarabaik-dan-lawan-hoaks/"></a>
                    </div>
                                <span class="bg-rgb"></span>
                <div class="article-content">
                    <span class="post-cat">                <a href="http://metrobali.com/category/daerah/"   title="" >Daerah</a>
                            ,                 <a href="http://metrobali.com/category/daerah/denpasar/"  title="" >Denpasar</a>
            ,                 <a href="http://metrobali.com/category/pendidikan/"  title="" >Pendidikan</a>
            ,                 <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/dekan-fikom-dwijendra-ajak-lulusannya-kampanyekan-gerakan-indonesiabicarabaik-dan-lawan-hoaks/" rel="bookmark">Dekan Fikom Dwijendra Ajak Lulusannya Kampanyekan Gerakan #IndonesiaBicaraBaik dan Lawan Hoaks</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/sutiawan/">Metro Bali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/dekan-fikom-dwijendra-ajak-lulusannya-kampanyekan-gerakan-indonesiabicarabaik-dan-lawan-hoaks/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-15T01:44:42+00:00">October 15, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                </div>
                        </div>

</article><!-- #post-## -->

<article class="post-item post-tran clearfix post-429640 post type-post status-publish format-standard has-post-thumbnail hentry category-nusantara category-politik category-top-news">
    <div class="article-tran hover-share-item">
                                                        <div class="post-image lazy" style = "background-image:url(&#039;http://metrobali.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-14-at-20.50.47.jpeg&#039;)">
                        <a href="http://metrobali.com/survei-kedaikopi-kinerja-menteri-bumn-paling-diapresiasi-menko-pmk-mesti-kerja-lebih-keras/"></a>
                    </div>
                                <span class="bg-rgb"></span>
                <div class="article-content">
                    <span class="post-cat">                <a href="http://metrobali.com/category/nusantara/"   title="" >Nusantara</a>
                            ,                 <a href="http://metrobali.com/category/politik/"  title="" >Politik</a>
            ,                 <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/survei-kedaikopi-kinerja-menteri-bumn-paling-diapresiasi-menko-pmk-mesti-kerja-lebih-keras/" rel="bookmark">Survei KedaiKOPI: Kinerja Menteri BUMN Paling Diapresiasi, Menko PMK Mesti Kerja Lebih Keras</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/metrobali/">metrobali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/survei-kedaikopi-kinerja-menteri-bumn-paling-diapresiasi-menko-pmk-mesti-kerja-lebih-keras/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-14T23:11:38+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                </div>
                        </div>

</article><!-- #post-## -->

<article class="post-item post-tran clearfix post-429637 post type-post status-publish format-standard has-post-thumbnail hentry category-daerah category-jembrana category-politik category-top-news">
    <div class="article-tran hover-share-item">
                                                        <div class="post-image lazy" style = "background-image:url(&#039;http://metrobali.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-14-at-21.07.11.jpeg&#039;)">
                        <a href="http://metrobali.com/pasca-banjir-pengambengan-bupati-arta-fokuskan-percepatan-pemulihan/"></a>
                    </div>
                                <span class="bg-rgb"></span>
                <div class="article-content">
                    <span class="post-cat">                <a href="http://metrobali.com/category/daerah/"   title="" >Daerah</a>
                            ,                 <a href="http://metrobali.com/category/daerah/jembrana/"  title="" >Jembrana</a>
            ,                 <a href="http://metrobali.com/category/politik/"  title="" >Politik</a>
            ,                 <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/pasca-banjir-pengambengan-bupati-arta-fokuskan-percepatan-pemulihan/" rel="bookmark">Pasca Banjir Pengambengan, Bupati Arta Fokuskan Percepatan Pemulihan</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/metrobali/">metrobali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/pasca-banjir-pengambengan-bupati-arta-fokuskan-percepatan-pemulihan/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-14T23:06:03+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                </div>
                        </div>

</article><!-- #post-## -->

<article class="post-item post-tran clearfix post-429628 post type-post status-publish format-standard has-post-thumbnail hentry category-entertainment-arts category-hukum category-top-news">
    <div class="article-tran hover-share-item">
                                                        <div class="post-image lazy" style = "background-image:url(&#039;http://metrobali.com/wp-content/uploads/2020/10/IMG_20201014_222227.jpg&#039;)">
                        <a href="http://metrobali.com/totalitas-perjuangkan-keadilan-untuk-personel-duo-bunga-law-firm-togar-situmorang-diundang-program-rumpi-no-secret/"></a>
                    </div>
                                <span class="bg-rgb"></span>
                <div class="article-content">
                    <span class="post-cat">                <a href="http://metrobali.com/category/entertainment-arts/"   title="" >Entertainment &amp; Arts</a>
                            ,                 <a href="http://metrobali.com/category/hukum/"  title="" >Hukum</a>
            ,                 <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/totalitas-perjuangkan-keadilan-untuk-personel-duo-bunga-law-firm-togar-situmorang-diundang-program-rumpi-no-secret/" rel="bookmark">Totalitas Perjuangkan Keadilan untuk Personel Duo Bunga, Law Firm Togar Situmorang Diundang Program Rumpi No Secret</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/sutiawan/">Metro Bali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/totalitas-perjuangkan-keadilan-untuk-personel-duo-bunga-law-firm-togar-situmorang-diundang-program-rumpi-no-secret/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-14T22:27:06+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                </div>
                        </div>

</article><!-- #post-## -->

<article class="post-item post-tran clearfix post-429620 post type-post status-publish format-standard has-post-thumbnail hentry category-daerah category-denpasar category-pendidikan category-top-news">
    <div class="article-tran hover-share-item">
                                                        <div class="post-image lazy" style = "background-image:url(&#039;http://metrobali.com/wp-content/uploads/2020/10/IMG_20201014_211807.jpg&#039;)">
                        <a href="http://metrobali.com/yudisium-ke-32-fikom-dwijendra-lahirkan-sarjana-ilmu-komunikasi-di-tengah-pandemi-harus-kreatif-tangkap-peluang-kerja-dan-wirausaha/"></a>
                    </div>
                                <span class="bg-rgb"></span>
                <div class="article-content">
                    <span class="post-cat">                <a href="http://metrobali.com/category/daerah/"   title="" >Daerah</a>
                            ,                 <a href="http://metrobali.com/category/daerah/denpasar/"  title="" >Denpasar</a>
            ,                 <a href="http://metrobali.com/category/pendidikan/"  title="" >Pendidikan</a>
            ,                 <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/yudisium-ke-32-fikom-dwijendra-lahirkan-sarjana-ilmu-komunikasi-di-tengah-pandemi-harus-kreatif-tangkap-peluang-kerja-dan-wirausaha/" rel="bookmark">Yudisium ke-32, Fikom Dwijendra Lahirkan Sarjana Ilmu Komunikasi di Tengah Pandemi, Harus Kreatif Tangkap Peluang Kerja dan Wirausaha</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/sutiawan/">Metro Bali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/yudisium-ke-32-fikom-dwijendra-lahirkan-sarjana-ilmu-komunikasi-di-tengah-pandemi-harus-kreatif-tangkap-peluang-kerja-dan-wirausaha/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-14T21:22:42+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                </div>
                        </div>

</article><!-- #post-## -->
            </div>
      </div>
    


<div class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text vc_sep_color_grey" ><span class="vc_sep_holder vc_sep_holder_l"><span  class="vc_sep_line"></span></span><span class="vc_sep_holder vc_sep_holder_r"><span  class="vc_sep_line"></span></span>
</div>
	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- LEADERBORD -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-1781044259527275"
     data-ad-slot="9355733890"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>
		</div>
	</div>

	<div  class="wpb_single_image wpb_content_element vc_align_center">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img width="660" height="660" src="http://metrobali.com/wp-content/uploads/2020/10/55c30fe5-139b-4998-bef2-e6310ccaac45-1024x1024.jpg" class="vc_single_image-img attachment-large" alt="" srcset="http://metrobali.com/wp-content/uploads/2020/10/55c30fe5-139b-4998-bef2-e6310ccaac45-1024x1024.jpg 1024w, http://metrobali.com/wp-content/uploads/2020/10/55c30fe5-139b-4998-bef2-e6310ccaac45-150x150.jpg 150w, http://metrobali.com/wp-content/uploads/2020/10/55c30fe5-139b-4998-bef2-e6310ccaac45-300x300.jpg 300w, http://metrobali.com/wp-content/uploads/2020/10/55c30fe5-139b-4998-bef2-e6310ccaac45-768x768.jpg 768w, http://metrobali.com/wp-content/uploads/2020/10/55c30fe5-139b-4998-bef2-e6310ccaac45.jpg 1280w" sizes="(max-width: 660px) 100vw, 660px" /></div>
		</figure>
	</div>

	<div  class="wpb_single_image wpb_content_element vc_align_center">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img width="660" height="466" src="http://metrobali.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-01-at-09.22.09-1024x723.jpeg" class="vc_single_image-img attachment-large" alt="" srcset="http://metrobali.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-01-at-09.22.09-1024x723.jpeg 1024w, http://metrobali.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-01-at-09.22.09-300x212.jpeg 300w, http://metrobali.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-01-at-09.22.09-768x542.jpeg 768w, http://metrobali.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-01-at-09.22.09.jpeg 1280w" sizes="(max-width: 660px) 100vw, 660px" /></div>
		</figure>
	</div>

	<div  class="wpb_single_image wpb_content_element vc_align_center">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img width="660" height="772" src="http://metrobali.com/wp-content/uploads/2020/09/0001-e1601518207127-875x1024.jpg" class="vc_single_image-img attachment-large" alt="" srcset="http://metrobali.com/wp-content/uploads/2020/09/0001-e1601518207127-875x1024.jpg 875w, http://metrobali.com/wp-content/uploads/2020/09/0001-e1601518207127-256x300.jpg 256w, http://metrobali.com/wp-content/uploads/2020/09/0001-e1601518207127-768x899.jpg 768w" sizes="(max-width: 660px) 100vw, 660px" /></div>
		</figure>
	</div>

	<div  class="wpb_single_image wpb_content_element vc_align_center">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img width="660" height="220" src="http://metrobali.com/wp-content/uploads/2020/09/WhatsApp-Image-2020-09-11-at-18.51.14-1024x341.jpeg" class="vc_single_image-img attachment-large" alt="" srcset="http://metrobali.com/wp-content/uploads/2020/09/WhatsApp-Image-2020-09-11-at-18.51.14-1024x341.jpeg 1024w, http://metrobali.com/wp-content/uploads/2020/09/WhatsApp-Image-2020-09-11-at-18.51.14-300x100.jpeg 300w, http://metrobali.com/wp-content/uploads/2020/09/WhatsApp-Image-2020-09-11-at-18.51.14-768x256.jpeg 768w, http://metrobali.com/wp-content/uploads/2020/09/WhatsApp-Image-2020-09-11-at-18.51.14.jpeg 1280w" sizes="(max-width: 660px) 100vw, 660px" /></div>
		</figure>
	</div>

	<div  class="wpb_single_image wpb_content_element vc_align_center">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img width="660" height="472" src="http://metrobali.com/wp-content/uploads/2020/09/2020-GALUNGAN-KUNINGAN-3-1024x732.jpg" class="vc_single_image-img attachment-large" alt="" srcset="http://metrobali.com/wp-content/uploads/2020/09/2020-GALUNGAN-KUNINGAN-3-1024x732.jpg 1024w, http://metrobali.com/wp-content/uploads/2020/09/2020-GALUNGAN-KUNINGAN-3-300x214.jpg 300w, http://metrobali.com/wp-content/uploads/2020/09/2020-GALUNGAN-KUNINGAN-3-768x549.jpg 768w" sizes="(max-width: 660px) 100vw, 660px" /></div>
		</figure>
	</div>

	<div  class="wpb_single_image wpb_content_element vc_align_center">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img width="660" height="367" src="http://metrobali.com/wp-content/uploads/2020/09/75e04d73-867e-4a1d-a7fa-ba69f99ca906-1-1024x569.jpg" class="vc_single_image-img attachment-large" alt="" srcset="http://metrobali.com/wp-content/uploads/2020/09/75e04d73-867e-4a1d-a7fa-ba69f99ca906-1-1024x569.jpg 1024w, http://metrobali.com/wp-content/uploads/2020/09/75e04d73-867e-4a1d-a7fa-ba69f99ca906-1-300x167.jpg 300w, http://metrobali.com/wp-content/uploads/2020/09/75e04d73-867e-4a1d-a7fa-ba69f99ca906-1-768x427.jpg 768w, http://metrobali.com/wp-content/uploads/2020/09/75e04d73-867e-4a1d-a7fa-ba69f99ca906-1.jpg 1280w" sizes="(max-width: 660px) 100vw, 660px" /></div>
		</figure>
	</div>
<div class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text vc_sep_color_grey" ><span class="vc_sep_holder vc_sep_holder_l"><span  class="vc_sep_line"></span></span><span class="vc_sep_holder vc_sep_holder_r"><span  class="vc_sep_line"></span></span>
</div>
                <div class="box-cats wrapper-posts layout-box6 hidden-cate" data-layout="box6" data-typePost="news"  data-dates="-2 year" data-paged="12817" data-col="col-xs-6 col-sm-6 col-md-6" data-cat="badung,bangli,buleleng,denpasar,gianyar,jembrana,karangasem,klungkung" data-number="4">
                            <div class="box-title clearfix">
                    <h2 class="title-left">Bali Region</h2>
                    
                        <div class="box-filter clearfix">
                            <ul class="wrapper-filter" data-filter="true">
                                <li class="active"><span class="cat-item" data-catfilter="allCat-57">All</span></li><li><span class="cat-item"  data-catfilter="badung" >Badung</span></li><li><span class="cat-item"  data-catfilter="bangli" >Bangli</span></li><li><span class="cat-item"  data-catfilter="buleleng" >Buleleng</span></li><li><span class="cat-item"  data-catfilter="denpasar" >Denpasar</span></li><li><span class="cat-item"  data-catfilter="gianyar" >Gianyar</span></li>                            </ul>
                                                            <div class="wrapper-more">
                                    <span class="filter-more">...</span>
                                    <ul class="wrapper-filter more" data-filter="true">
                                        <li><span class="cat-item"  data-catfilter="jembrana" >Jembrana</span></li><li><span class="cat-item"  data-catfilter="karangasem" >Karangasem</span></li><li><span class="cat-item"  data-catfilter="klungkung" >Klungkung</span></li>                                    </ul>
                                </div>
                                                    </div>
                                                        </div>
                        <span class="agr-loading"></span>
            <div class="tab-content">
                <div id="allCat-57" class="box-blog archive-blog active row large-vertical clearfix">
                                                                        <div class="col-md-12 col-sm-12 col-xs-12 box-large">
                                <article  class="post-item post-list post-list-large clearfix post-429660 post type-post status-publish format-standard has-post-thumbnail hentry category-daerah category-denpasar category-pendidikan category-top-news">
    <div class="article-image">
                                <div class="post-image">
                <span class="bgr-item"></span>
                <a href="http://metrobali.com/dekan-fikom-dwijendra-ajak-lulusannya-kampanyekan-gerakan-indonesiabicarabaik-dan-lawan-hoaks/">
                    <img  class="lazy" src="http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/layzyload-list-large.jpg"  data-original="http://metrobali.com/wp-content/uploads/2020/10/IMG_20201014_211833-435x290.jpg" data-src="http://metrobali.com/wp-content/uploads/2020/10/IMG_20201014_211833-435x290.jpg" alt="post-image"/>
                </a>
                            </div>

                
    </div>
    <div class="article-content ">

        <div class="entry-header clearfix">
            <span class="post-cat">                <a href="http://metrobali.com/category/daerah/"   title="" >Daerah</a>
                                             <a href="http://metrobali.com/category/daerah/denpasar/"  title="" >Denpasar</a>
                             <a href="http://metrobali.com/category/pendidikan/"  title="" >Pendidikan</a>
                             <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
            <header class="entry-header-title">
                <h3 class="entry-title"><a href="http://metrobali.com/dekan-fikom-dwijendra-ajak-lulusannya-kampanyekan-gerakan-indonesiabicarabaik-dan-lawan-hoaks/" rel="bookmark">Dekan Fikom Dwijendra Ajak Lulusannya Kampanyekan Gerakan #IndonesiaBicaraBaik dan Lawan Hoaks</a></h3>            </header>
        </div>
        <div class="article-meta clearfix">
            <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/sutiawan/">Metro Bali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/dekan-fikom-dwijendra-ajak-lulusannya-kampanyekan-gerakan-indonesiabicarabaik-dan-lawan-hoaks/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-15T01:44:42+00:00">October 15, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

        </div>
        <div class="entry-content">
            Foto: Dekan Fakultas Ilmu Komunikasi Universitas Dwijendra, Drs. I Wayan Kotaniartha, S.H., M.H.,M.IKom. Denpasar (Metrobali.com)- Mahasiswa dan sarjana ilmu komunikasi diharapkan mampu memegang peranan penting memberikan pemahaman dan edukasi...
        </div>

    </div>
</article><!-- #post-## -->
                            </div>
                                                                                                    <div class="col-md-4 col-sm-4 col-xs-12 box-small hidden-meta hidden-description">
                                
<article class="post-item post-grid disss clearfix post-429637 post type-post status-publish format-standard has-post-thumbnail hentry category-daerah category-jembrana category-politik category-top-news">
    <div class="article-tran hover-share-item">
                                                                            <div class="post-image">
                        <a href="http://metrobali.com/pasca-banjir-pengambengan-bupati-arta-fokuskan-percepatan-pemulihan/" class="bgr-item"></a>
                        <a href=" http://metrobali.com/pasca-banjir-pengambengan-bupati-arta-fokuskan-percepatan-pemulihan/">
                            <img  class="lazy" src="http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/layzyload-grid.jpg"  data-lazy="http://metrobali.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-14-at-21.07.11-510x290.jpeg" data-src="http://metrobali.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-14-at-21.07.11-510x290.jpeg" alt="post-image"/>
                        </a>
                                                <span class="post-cat">                <a href="http://metrobali.com/category/daerah/"   title="" >Daerah</a>
                                             <a href="http://metrobali.com/category/daerah/jembrana/"  title="" >Jembrana</a>
                             <a href="http://metrobali.com/category/politik/"  title="" >Politik</a>
                             <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    </div>
                                <div class="article-content">
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/pasca-banjir-pengambengan-bupati-arta-fokuskan-percepatan-pemulihan/" rel="bookmark">Pasca Banjir Pengambengan, Bupati Arta Fokuskan Percepatan Pemulihan</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/metrobali/">metrobali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/pasca-banjir-pengambengan-bupati-arta-fokuskan-percepatan-pemulihan/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-14T23:06:03+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                    <div class="entry-content">
                        &nbsp; Jembrana,  (Metrobali.com)- &nbsp; Bupati Jembrana I Putu Artha turun langsung meninjau kondisi rumah warga terdampak banjir di Banjar Ketapang Muara tepatnya depan Politeknik...
                    </div>
                </div>
                        </div>

</article><!-- #post-## -->
                            </div>
                                                                                                    <div class="col-md-4 col-sm-4 col-xs-12 box-small hidden-meta hidden-description">
                                
<article class="post-item post-grid disss clearfix post-429620 post type-post status-publish format-standard has-post-thumbnail hentry category-daerah category-denpasar category-pendidikan category-top-news">
    <div class="article-tran hover-share-item">
                                                                            <div class="post-image">
                        <a href="http://metrobali.com/yudisium-ke-32-fikom-dwijendra-lahirkan-sarjana-ilmu-komunikasi-di-tengah-pandemi-harus-kreatif-tangkap-peluang-kerja-dan-wirausaha/" class="bgr-item"></a>
                        <a href=" http://metrobali.com/yudisium-ke-32-fikom-dwijendra-lahirkan-sarjana-ilmu-komunikasi-di-tengah-pandemi-harus-kreatif-tangkap-peluang-kerja-dan-wirausaha/">
                            <img  class="lazy" src="http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/layzyload-grid.jpg"  data-lazy="http://metrobali.com/wp-content/uploads/2020/10/IMG_20201014_211807-510x290.jpg" data-src="http://metrobali.com/wp-content/uploads/2020/10/IMG_20201014_211807-510x290.jpg" alt="post-image"/>
                        </a>
                                                <span class="post-cat">                <a href="http://metrobali.com/category/daerah/"   title="" >Daerah</a>
                                             <a href="http://metrobali.com/category/daerah/denpasar/"  title="" >Denpasar</a>
                             <a href="http://metrobali.com/category/pendidikan/"  title="" >Pendidikan</a>
                             <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    </div>
                                <div class="article-content">
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/yudisium-ke-32-fikom-dwijendra-lahirkan-sarjana-ilmu-komunikasi-di-tengah-pandemi-harus-kreatif-tangkap-peluang-kerja-dan-wirausaha/" rel="bookmark">Yudisium ke-32, Fikom Dwijendra Lahirkan Sarjana Ilmu Komunikasi di Tengah Pandemi, Harus Kreatif Tangkap Peluang Kerja dan Wirausaha</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/sutiawan/">Metro Bali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/yudisium-ke-32-fikom-dwijendra-lahirkan-sarjana-ilmu-komunikasi-di-tengah-pandemi-harus-kreatif-tangkap-peluang-kerja-dan-wirausaha/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-14T21:22:42+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                    <div class="entry-content">
                        Foto: Yudisium dan Pelepasan Sarjana ke-32 Fakultas Ilmu Komunikasi Universitas Dwijendra, Rabu (14/10/2020). Denpasar (Metrobali.com)- Fakultas Ilmu Komunikasi Universitas Dwijendra (Fikom Dwijendra) menggelar Yudisium...
                    </div>
                </div>
                        </div>

</article><!-- #post-## -->
                            </div>
                                                                                                    <div class="col-md-4 col-sm-4 col-xs-12 box-small hidden-meta hidden-description">
                                
<article class="post-item post-grid disss clearfix post-429611 post type-post status-publish format-standard has-post-thumbnail hentry category-daerah category-jembrana category-politik category-top-news">
    <div class="article-tran hover-share-item">
                                                                            <div class="post-image">
                        <a href="http://metrobali.com/kpu-jembrana-tetapkan-desain-su-su-dan-alat-bantu-coblos-pilkada-jembrana/" class="bgr-item"></a>
                        <a href=" http://metrobali.com/kpu-jembrana-tetapkan-desain-su-su-dan-alat-bantu-coblos-pilkada-jembrana/">
                            <img  class="lazy" src="http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/layzyload-grid.jpg"  data-lazy="http://metrobali.com/wp-content/uploads/2020/10/IMG-20201014-WA0095-510x290.jpg" data-src="http://metrobali.com/wp-content/uploads/2020/10/IMG-20201014-WA0095-510x290.jpg" alt="post-image"/>
                        </a>
                                                <span class="post-cat">                <a href="http://metrobali.com/category/daerah/"   title="" >Daerah</a>
                                             <a href="http://metrobali.com/category/daerah/jembrana/"  title="" >Jembrana</a>
                             <a href="http://metrobali.com/category/politik/"  title="" >Politik</a>
                             <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    </div>
                                <div class="article-content">
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/kpu-jembrana-tetapkan-desain-su-su-dan-alat-bantu-coblos-pilkada-jembrana/" rel="bookmark">KPU Jembrana Tetapkan Desain Su-Su dan Alat Bantu Coblos Pilkada Jembrana</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/sutiawan/">Metro Bali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/kpu-jembrana-tetapkan-desain-su-su-dan-alat-bantu-coblos-pilkada-jembrana/" rel="bookmark"><time class="entry-date published" datetime="2020-10-14T20:30:21+00:00">October 14, 2020</time><time class="updated" datetime="2020-10-14T20:30:22+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                    <div class="entry-content">
                        &nbsp; Jembrana (Metrobali.com)- Komisi Pemilihan Umum (KPU) Jembrana, Rabu (14/10) menetapkan desain surat surat (Su-Su) dan alat bantu coblos bagi tuna netra Pemilihan Bupati...
                    </div>
                </div>
                        </div>

</article><!-- #post-## -->
                            </div>
                                                                </div>

            </div>
        </div>
        
	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- LEADERBORD -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-1781044259527275"
     data-ad-slot="9355733890"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>
		</div>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-4"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div  class="wpb_single_image wpb_content_element vc_align_left">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img width="660" height="660" src="http://metrobali.com/wp-content/uploads/2020/09/bf161a2e-95f8-4522-bb34-49568b1d62f2-1024x1024.jpg" class="vc_single_image-img attachment-large" alt="" srcset="http://metrobali.com/wp-content/uploads/2020/09/bf161a2e-95f8-4522-bb34-49568b1d62f2-1024x1024.jpg 1024w, http://metrobali.com/wp-content/uploads/2020/09/bf161a2e-95f8-4522-bb34-49568b1d62f2-150x150.jpg 150w, http://metrobali.com/wp-content/uploads/2020/09/bf161a2e-95f8-4522-bb34-49568b1d62f2-300x300.jpg 300w, http://metrobali.com/wp-content/uploads/2020/09/bf161a2e-95f8-4522-bb34-49568b1d62f2-768x768.jpg 768w, http://metrobali.com/wp-content/uploads/2020/09/bf161a2e-95f8-4522-bb34-49568b1d62f2.jpg 1280w" sizes="(max-width: 660px) 100vw, 660px" /></div>
		</figure>
	</div>
<div  class="vc_wp_posts wpb_content_element">		<div class="widget widget_recent_entries">		<h2 class="widgettitle">Berita Terkini</h2>		<ul>
											<li>
					<a href="http://metrobali.com/dekan-fikom-dwijendra-ajak-lulusannya-kampanyekan-gerakan-indonesiabicarabaik-dan-lawan-hoaks/">Dekan Fikom Dwijendra Ajak Lulusannya Kampanyekan Gerakan #IndonesiaBicaraBaik dan Lawan Hoaks</a>
											<span class="post-date">October 15, 2020</span>
									</li>
											<li>
					<a href="http://metrobali.com/survei-kedaikopi-kinerja-menteri-bumn-paling-diapresiasi-menko-pmk-mesti-kerja-lebih-keras/">Survei KedaiKOPI: Kinerja Menteri BUMN Paling Diapresiasi, Menko PMK Mesti Kerja Lebih Keras</a>
											<span class="post-date">October 14, 2020</span>
									</li>
											<li>
					<a href="http://metrobali.com/pasca-banjir-pengambengan-bupati-arta-fokuskan-percepatan-pemulihan/">Pasca Banjir Pengambengan, Bupati Arta Fokuskan Percepatan Pemulihan</a>
											<span class="post-date">October 14, 2020</span>
									</li>
											<li>
					<a href="http://metrobali.com/totalitas-perjuangkan-keadilan-untuk-personel-duo-bunga-law-firm-togar-situmorang-diundang-program-rumpi-no-secret/">Totalitas Perjuangkan Keadilan untuk Personel Duo Bunga, Law Firm Togar Situmorang Diundang Program Rumpi No Secret</a>
											<span class="post-date">October 14, 2020</span>
									</li>
											<li>
					<a href="http://metrobali.com/yudisium-ke-32-fikom-dwijendra-lahirkan-sarjana-ilmu-komunikasi-di-tengah-pandemi-harus-kreatif-tangkap-peluang-kerja-dan-wirausaha/">Yudisium ke-32, Fikom Dwijendra Lahirkan Sarjana Ilmu Komunikasi di Tengah Pandemi, Harus Kreatif Tangkap Peluang Kerja dan Wirausaha</a>
											<span class="post-date">October 14, 2020</span>
									</li>
											<li>
					<a href="http://metrobali.com/ketua-apkasi-soroti-kewenangan-daerah-pada-uu-cipta-kerja/">Ketua Apkasi soroti kewenangan daerah pada UU Cipta Kerja</a>
											<span class="post-date">October 14, 2020</span>
									</li>
					</ul>
		</div></div><div class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text vc_sep_color_grey" ><span class="vc_sep_holder vc_sep_holder_l"><span  class="vc_sep_line"></span></span><span class="vc_sep_holder vc_sep_holder_r"><span  class="vc_sep_line"></span></span>
</div>
	<div  class="wpb_single_image wpb_content_element vc_align_left">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img width="660" height="843" src="http://metrobali.com/wp-content/uploads/2020/09/WhatsApp-Image-2020-09-24-at-16.57.41-802x1024.jpeg" class="vc_single_image-img attachment-large" alt="" srcset="http://metrobali.com/wp-content/uploads/2020/09/WhatsApp-Image-2020-09-24-at-16.57.41-802x1024.jpeg 802w, http://metrobali.com/wp-content/uploads/2020/09/WhatsApp-Image-2020-09-24-at-16.57.41-235x300.jpeg 235w, http://metrobali.com/wp-content/uploads/2020/09/WhatsApp-Image-2020-09-24-at-16.57.41-768x981.jpeg 768w, http://metrobali.com/wp-content/uploads/2020/09/WhatsApp-Image-2020-09-24-at-16.57.41.jpeg 1002w" sizes="(max-width: 660px) 100vw, 660px" /></div>
		</figure>
	</div>

	<div  class="wpb_single_image wpb_content_element vc_align_left">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img width="660" height="991" src="http://metrobali.com/wp-content/uploads/2020/09/1b0f6e86-ecfd-46bc-8cab-69b8f9f663c5-682x1024.jpg" class="vc_single_image-img attachment-large" alt="" srcset="http://metrobali.com/wp-content/uploads/2020/09/1b0f6e86-ecfd-46bc-8cab-69b8f9f663c5-682x1024.jpg 682w, http://metrobali.com/wp-content/uploads/2020/09/1b0f6e86-ecfd-46bc-8cab-69b8f9f663c5-200x300.jpg 200w, http://metrobali.com/wp-content/uploads/2020/09/1b0f6e86-ecfd-46bc-8cab-69b8f9f663c5-768x1152.jpg 768w, http://metrobali.com/wp-content/uploads/2020/09/1b0f6e86-ecfd-46bc-8cab-69b8f9f663c5.jpg 853w" sizes="(max-width: 660px) 100vw, 660px" /></div>
		</figure>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper">
                <div class="box-cats wrapper-posts layout-box9 show-cate" data-layout="box9"  data-meta="hidden-meta" data-typePost="news"  data-dates="-2 year" data-paged="670" data-col="col-xs-6 col-sm-6 col-md-6" data-cat="beritacovid19" data-number="5">
                            <div class="box-title clearfix">
                    <h2 class="title-left">Update COVID-19</h2>
                                                        </div>
                        <span class="agr-loading"></span>
            <div class="tab-content">
                <div id="allCat-13" class="box-blog archive-blog active row large-vertical clearfix">
                    
                                                    <div class="col-md-6 col-sm-6 col-xs-6 box-large hidden-meta hidden-description">
                                
<article class="post-item post-grid disss clearfix post-429602 post type-post status-publish format-standard has-post-thumbnail hentry category-beritacovid19 category-daerah category-top-news">
    <div class="article-tran hover-share-item">
                                                                            <div class="post-image">
                        <a href="http://metrobali.com/10-perusuh-pada-demo-8-oktober-positif-covid-19/" class="bgr-item"></a>
                        <a href=" http://metrobali.com/10-perusuh-pada-demo-8-oktober-positif-covid-19/">
                            <img  class="lazy" src="http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/layzyload-grid.jpg"  data-lazy="http://metrobali.com/wp-content/uploads/2020/10/20201014_203239-510x290.jpg" data-src="http://metrobali.com/wp-content/uploads/2020/10/20201014_203239-510x290.jpg" alt="post-image"/>
                        </a>
                                                <span class="post-cat">                <a href="http://metrobali.com/category/beritacovid19/"   title="" >Berita COVID-19</a>
                                             <a href="http://metrobali.com/category/daerah/"  title="" >Daerah</a>
                             <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    </div>
                                <div class="article-content">
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/10-perusuh-pada-demo-8-oktober-positif-covid-19/" rel="bookmark">10 perusuh pada demo 8 Oktober positif COVID-19</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/sutiawan/">Metro Bali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/10-perusuh-pada-demo-8-oktober-positif-covid-19/" rel="bookmark"><time class="entry-date published" datetime="2020-10-14T20:17:48+00:00">October 14, 2020</time><time class="updated" datetime="2020-10-14T20:18:48+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                    <div class="entry-content">
                        Jakarta (Metrobali.com) &#8211; Polda Metro Jaya mengungkapkan 10 perusuh pada demonstrasi menolak Omnibus Law Cipta Kerja pada 8 Oktober 2020 positif terinfeksi virus COVID-19....
                    </div>
                </div>
                        </div>

</article><!-- #post-## -->
                            </div>
                                                
                                                    <div class="col-md-6 col-sm-6 col-xs-6 box-large hidden-meta hidden-description">
                                
<article class="post-item post-grid disss clearfix post-429585 post type-post status-publish format-standard has-post-thumbnail hentry category-beritacovid19 category-daerah category-internasional category-top-news">
    <div class="article-tran hover-share-item">
                                                                            <div class="post-image">
                        <a href="http://metrobali.com/bank-dunia-alokasikan-rp1764t-untuk-obat-dan-vaksin-covid-19-%ef%bf%bc/" class="bgr-item"></a>
                        <a href=" http://metrobali.com/bank-dunia-alokasikan-rp1764t-untuk-obat-dan-vaksin-covid-19-%ef%bf%bc/">
                            <img  class="lazy" src="http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/layzyload-grid.jpg"  data-lazy="http://metrobali.com/wp-content/uploads/2020/10/20201014_192433-510x290.jpg" data-src="http://metrobali.com/wp-content/uploads/2020/10/20201014_192433-510x290.jpg" alt="post-image"/>
                        </a>
                                                <span class="post-cat">                <a href="http://metrobali.com/category/beritacovid19/"   title="" >Berita COVID-19</a>
                                             <a href="http://metrobali.com/category/daerah/"  title="" >Daerah</a>
                             <a href="http://metrobali.com/category/internasional/"  title="" >Internasional</a>
                             <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    </div>
                                <div class="article-content">
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/bank-dunia-alokasikan-rp1764t-untuk-obat-dan-vaksin-covid-19-%ef%bf%bc/" rel="bookmark">Bank Dunia alokasikan Rp176,4T untuk obat dan vaksin COVID-19  ￼</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/sutiawan/">Metro Bali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/bank-dunia-alokasikan-rp1764t-untuk-obat-dan-vaksin-covid-19-%ef%bf%bc/" rel="bookmark"><time class="entry-date published" datetime="2020-10-14T19:58:51+00:00">October 14, 2020</time><time class="updated" datetime="2020-10-14T20:00:12+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                    <div class="entry-content">
                        Washington (Metrobali.com) &#8211; Bank Dunia mengatakan dewan eksekutifnya telah menyetujui alokasi dana senilai 12 miliar dolar AS (sekitar Rp176,4 triliun) untuk membantu negara-negara berkembang...
                    </div>
                </div>
                        </div>

</article><!-- #post-## -->
                            </div>
                                                
                                                                                <div class="col-md-4 col-sm-4 col-xs-12 box-small clear hidden-meta hidden-description">
                                
<article class="post-item post-grid disss clearfix post-429576 post type-post status-publish format-standard has-post-thumbnail hentry category-beritacovid19 category-daerah category-denpasar category-top-news">
    <div class="article-tran hover-share-item">
                                                                            <div class="post-image">
                        <a href="http://metrobali.com/update-covid-19-se-bali-bertambah-109-orang-sembuh-141-orang/" class="bgr-item"></a>
                        <a href=" http://metrobali.com/update-covid-19-se-bali-bertambah-109-orang-sembuh-141-orang/">
                            <img  class="lazy" src="http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/layzyload-grid.jpg"  data-lazy="http://metrobali.com/wp-content/uploads/2020/10/IMG-20201014-WA0064-510x290.jpg" data-src="http://metrobali.com/wp-content/uploads/2020/10/IMG-20201014-WA0064-510x290.jpg" alt="post-image"/>
                        </a>
                                                <span class="post-cat">                <a href="http://metrobali.com/category/beritacovid19/"   title="" >Berita COVID-19</a>
                                             <a href="http://metrobali.com/category/daerah/"  title="" >Daerah</a>
                             <a href="http://metrobali.com/category/daerah/denpasar/"  title="" >Denpasar</a>
                             <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    </div>
                                <div class="article-content">
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/update-covid-19-se-bali-bertambah-109-orang-sembuh-141-orang/" rel="bookmark">Update Covid-19 se-Bali : Bertambah 109 Orang, Sembuh 141 Orang</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/sutiawan/">Metro Bali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/update-covid-19-se-bali-bertambah-109-orang-sembuh-141-orang/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-14T19:49:53+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                    <div class="entry-content">
                        &nbsp; Denpasar, (Metrobali.com)- Perkembangan Pandemi Covid-19 di Provinsi Bali per hari ini mencatat pertambahan kasus terkonfirmasi sebanyak 109 orang melalui Transmisi Lokal. Sembuh sebanyak...
                    </div>
                </div>
                        </div>

</article><!-- #post-## -->
                            </div>
                                                
                                                                                <div class="col-md-4 col-sm-4 col-xs-12 box-small  hidden-meta hidden-description">
                                
<article class="post-item post-grid disss clearfix post-429540 post type-post status-publish format-standard has-post-thumbnail hentry category-beritacovid19 category-daerah category-denpasar category-top-news">
    <div class="article-tran hover-share-item">
                                                                            <div class="post-image">
                        <a href="http://metrobali.com/update-covid-19-di-denpasar-2-orang-pasien-meninggal-dunia-kasus-positif-bertambah-30-orang-dan-30-juga-pasien-dinyatakan-sembuh/" class="bgr-item"></a>
                        <a href=" http://metrobali.com/update-covid-19-di-denpasar-2-orang-pasien-meninggal-dunia-kasus-positif-bertambah-30-orang-dan-30-juga-pasien-dinyatakan-sembuh/">
                            <img  class="lazy" src="http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/layzyload-grid.jpg"  data-lazy="http://metrobali.com/wp-content/uploads/2020/10/IMG-20200920-WA0028-4-510x290.jpg" data-src="http://metrobali.com/wp-content/uploads/2020/10/IMG-20200920-WA0028-4-510x290.jpg" alt="post-image"/>
                        </a>
                                                <span class="post-cat">                <a href="http://metrobali.com/category/beritacovid19/"   title="" >Berita COVID-19</a>
                                             <a href="http://metrobali.com/category/daerah/"  title="" >Daerah</a>
                             <a href="http://metrobali.com/category/daerah/denpasar/"  title="" >Denpasar</a>
                             <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    </div>
                                <div class="article-content">
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/update-covid-19-di-denpasar-2-orang-pasien-meninggal-dunia-kasus-positif-bertambah-30-orang-dan-30-juga-pasien-dinyatakan-sembuh/" rel="bookmark">Update Covid-19 di Denpasar, 2 Orang Pasien Meninggal Dunia  Kasus Positif Bertambah 30 Orang dan 30 Juga Pasien Dinyatakan Sembuh</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/metrobali/">metrobali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/update-covid-19-di-denpasar-2-orang-pasien-meninggal-dunia-kasus-positif-bertambah-30-orang-dan-30-juga-pasien-dinyatakan-sembuh/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-14T19:04:33+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                    <div class="entry-content">
                        Ket foto : Juru Bicara Gugus Tugas Percepatan Penanganan Covid-19 Kota Denpasar, I Dewa Gede Rai Denpasar,  (Metrobali.com) Gugus Tugas Percepatan Penanganan Covid-19 Kota...
                    </div>
                </div>
                        </div>

</article><!-- #post-## -->
                            </div>
                                                
                                                                                <div class="col-md-4 col-sm-4 col-xs-12 box-small  hidden-meta hidden-description">
                                
<article class="post-item post-grid disss clearfix post-429501 post type-post status-publish format-standard has-post-thumbnail hentry category-beritacovid19 category-daerah category-hukum category-nusantara category-politik category-top-news">
    <div class="article-tran hover-share-item">
                                                                            <div class="post-image">
                        <a href="http://metrobali.com/polda-metro-jaya-amankan-1-377-pemuda-dan-pelajar-terkait-unjuk-rasa/" class="bgr-item"></a>
                        <a href=" http://metrobali.com/polda-metro-jaya-amankan-1-377-pemuda-dan-pelajar-terkait-unjuk-rasa/">
                            <img  class="lazy" src="http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/layzyload-grid.jpg"  data-lazy="http://metrobali.com/wp-content/uploads/2020/10/20201014_164954-510x290.jpg" data-src="http://metrobali.com/wp-content/uploads/2020/10/20201014_164954-510x290.jpg" alt="post-image"/>
                        </a>
                                                <span class="post-cat">                <a href="http://metrobali.com/category/beritacovid19/"   title="" >Berita COVID-19</a>
                                             <a href="http://metrobali.com/category/daerah/"  title="" >Daerah</a>
                             <a href="http://metrobali.com/category/hukum/"  title="" >Hukum</a>
                             <a href="http://metrobali.com/category/nusantara/"  title="" >Nusantara</a>
                             <a href="http://metrobali.com/category/politik/"  title="" >Politik</a>
                             <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
                    </div>
                                <div class="article-content">
                    <div class="entry-header clearfix">
                        <header class="entry-header-title">
                            <h3 class="entry-title"><a href="http://metrobali.com/polda-metro-jaya-amankan-1-377-pemuda-dan-pelajar-terkait-unjuk-rasa/" rel="bookmark">Polda Metro Jaya amankan 1.377 pemuda dan pelajar terkait unjuk rasa</a></h3>                        </header>
                    </div>
                    <div class="article-meta clearfix">
                        <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/sutiawan/">Metro Bali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/polda-metro-jaya-amankan-1-377-pemuda-dan-pelajar-terkait-unjuk-rasa/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-14T16:38:38+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

                    </div>
                    <div class="entry-content">
                        Jakarta (Metrobali.com) &#8211; Polda Metro Jaya bersama dengan jajaran Polres di wilayah hukumnya mengamankan sebanyak 1.377 pemuda dan pelajar terkait unjuk rasa menolak Undang-Undang...
                    </div>
                </div>
                        </div>

</article><!-- #post-## -->
                            </div>
                                                                </div>

            </div>
        </div>
        <div class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text vc_sep_color_grey" ><span class="vc_sep_holder vc_sep_holder_l"><span  class="vc_sep_line"></span></span><span class="vc_sep_holder vc_sep_holder_r"><span  class="vc_sep_line"></span></span>
</div>
	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- LEADERBORD -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-1781044259527275"
     data-ad-slot="9355733890"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>
		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-8"><div class="vc_column-inner "><div class="wpb_wrapper">
<div class="wrapper-posts box-recent type-pagination layout-list" data-layout="list" data-paged="3981" data-col="col-xs-12 col-1" data-cat="politik" data-number="3" data-ads="large-rectangle">
            <div class="box-title clearfix">
            <h2 class="title-left">Politik</h2>
                    </div>
        <span class="agr-loading"></span>
    <div class="tab-content">
        <div id="allCat" class="archive-blog affect-isotope row active description-show">
                            
                        <div class="col-item col-xs-12 col-1">
                            <article  class="post-item post-list clearfix post-429640 post type-post status-publish format-standard has-post-thumbnail hentry category-nusantara category-politik category-top-news">
    <div class="article-image">
                                <div class="post-image">
                <span class="bgr-item"></span>
                <a href="http://metrobali.com/survei-kedaikopi-kinerja-menteri-bumn-paling-diapresiasi-menko-pmk-mesti-kerja-lebih-keras/">
                    <img  class="lazy" src="http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/layzyload-list.jpg"  data-src="http://metrobali.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-14-at-20.50.47-292x190.jpeg" alt="post-image"/>
                </a>
                            </div>

                
    </div>
    <div class="article-content ">

        <div class="entry-header clearfix">
            <span class="post-cat">                <a href="http://metrobali.com/category/nusantara/"   title="" >Nusantara</a>
                                             <a href="http://metrobali.com/category/politik/"  title="" >Politik</a>
                             <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
            <header class="entry-header-title">
                <h3 class="entry-title"><a href="http://metrobali.com/survei-kedaikopi-kinerja-menteri-bumn-paling-diapresiasi-menko-pmk-mesti-kerja-lebih-keras/" rel="bookmark">Survei KedaiKOPI: Kinerja Menteri BUMN Paling Diapresiasi, Menko PMK Mesti Kerja Lebih Keras</a></h3>            </header>
        </div>
        <div class="article-meta clearfix">
            <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/metrobali/">metrobali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/survei-kedaikopi-kinerja-menteri-bumn-paling-diapresiasi-menko-pmk-mesti-kerja-lebih-keras/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-14T23:11:38+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

        </div>
        <div class="entry-content">
            &nbsp; Jakarta,  (Metrobali.com) Dalam jajak pendapat terkininya, Lembaga Survei KedaiKOPI meminta pekerja, baik ASN, BUMN, dan karyawan swasta di DKI Jakarta untuk menilai kinerja menteri anggota kabinet Indonesia Maju...
        </div>

    </div>
</article><!-- #post-## -->
                        </div>

                        
                        <div class="col-item col-xs-12 col-1">
                            <article  class="post-item post-list clearfix post-429637 post type-post status-publish format-standard has-post-thumbnail hentry category-daerah category-jembrana category-politik category-top-news">
    <div class="article-image">
                                <div class="post-image">
                <span class="bgr-item"></span>
                <a href="http://metrobali.com/pasca-banjir-pengambengan-bupati-arta-fokuskan-percepatan-pemulihan/">
                    <img  class="lazy" src="http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/layzyload-list.jpg"  data-src="http://metrobali.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-14-at-21.07.11-292x190.jpeg" alt="post-image"/>
                </a>
                            </div>

                
    </div>
    <div class="article-content ">

        <div class="entry-header clearfix">
            <span class="post-cat">                <a href="http://metrobali.com/category/daerah/"   title="" >Daerah</a>
                                             <a href="http://metrobali.com/category/daerah/jembrana/"  title="" >Jembrana</a>
                             <a href="http://metrobali.com/category/politik/"  title="" >Politik</a>
                             <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
            <header class="entry-header-title">
                <h3 class="entry-title"><a href="http://metrobali.com/pasca-banjir-pengambengan-bupati-arta-fokuskan-percepatan-pemulihan/" rel="bookmark">Pasca Banjir Pengambengan, Bupati Arta Fokuskan Percepatan Pemulihan</a></h3>            </header>
        </div>
        <div class="article-meta clearfix">
            <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/metrobali/">metrobali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/pasca-banjir-pengambengan-bupati-arta-fokuskan-percepatan-pemulihan/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-14T23:06:03+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

        </div>
        <div class="entry-content">
            &nbsp; Jembrana,  (Metrobali.com)- &nbsp; Bupati Jembrana I Putu Artha turun langsung meninjau kondisi rumah warga terdampak banjir di Banjar Ketapang Muara tepatnya depan Politeknik Kelautan Perikanan di Desa Pengambengan,...
        </div>

    </div>
</article><!-- #post-## -->
                        </div>

                        
                        <div class="col-item col-xs-12 col-1">
                            <article  class="post-item post-list clearfix post-429614 post type-post status-publish format-standard has-post-thumbnail hentry category-daerah category-politik category-top-news">
    <div class="article-image">
                                <div class="post-image">
                <span class="bgr-item"></span>
                <a href="http://metrobali.com/ketua-apkasi-soroti-kewenangan-daerah-pada-uu-cipta-kerja/">
                    <img  class="lazy" src="http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/images/layzyload-list.jpg"  data-src="http://metrobali.com/wp-content/uploads/2020/10/20201014_204925-292x190.jpg" alt="post-image"/>
                </a>
                            </div>

                
    </div>
    <div class="article-content ">

        <div class="entry-header clearfix">
            <span class="post-cat">                <a href="http://metrobali.com/category/daerah/"   title="" >Daerah</a>
                                             <a href="http://metrobali.com/category/politik/"  title="" >Politik</a>
                             <a href="http://metrobali.com/category/top-news/"  title="" >Top News</a>
            </span>
            <header class="entry-header-title">
                <h3 class="entry-title"><a href="http://metrobali.com/ketua-apkasi-soroti-kewenangan-daerah-pada-uu-cipta-kerja/" rel="bookmark">Ketua Apkasi soroti kewenangan daerah pada UU Cipta Kerja</a></h3>            </header>
        </div>
        <div class="article-meta clearfix">
            <span class="byline"><i class="fa fa-user" aria-hidden="true"></i><span class="author vcard"><span class="screen-reader-text">Author </span><a class="url fn n" href="http://metrobali.com/author/sutiawan/">Metro Bali</a></span></span><span class="posted-on"><i class="fa fa-clock-o" aria-hidden="true"></i><span class="screen-reader-text">Posted on </span><a href="http://metrobali.com/ketua-apkasi-soroti-kewenangan-daerah-pada-uu-cipta-kerja/" rel="bookmark"><time class="entry-date published updated" datetime="2020-10-14T20:36:57+00:00">October 14, 2020</time></a></span>	<div class="entry-meta-right">
					</div>

        </div>
        <div class="entry-content">
            Jakarta, (Metrobali.com)- Ketua Umum Asosiasi Pemerintah Kabupaten Seluruh Indonesia (Apkasi) Abdullah Azwar Anas mengharapkan Undang-Undang Cipta Kerja (UU Ciptaker) mampu mendukung kemudahan investasi dan perizinan daerah saat diterapkan di...
        </div>

    </div>
</article><!-- #post-## -->
                        </div>

                                            </div>
    </div>

                <div class="navigation pagination clearfix">
                                            <span class="page-numbers current">1</span>
                                                    <a href="http://metrobali.com/page/2/" class="inactive page-numbers">2</a>
                                                        <a href="http://metrobali.com/page/3/" class="inactive page-numbers">3</a>
                                                        <a href="http://metrobali.com/page/4/" class="inactive page-numbers">4</a>
                                                <a class="next page-numbers" href="http://metrobali.com/page/2/"><i class="fa fa-angle-right"></i></a>
                            </div>
            </div></div></div></div><div class="wpb_column vc_column_container vc_col-sm-4"><div class="vc_column-inner "><div class="wpb_wrapper"></div></div></div></div>
</div><!-- #post-## -->
        </div>
    </div>
</div>
        </div><!-- .site-content -->
            <footer id="na-footer" class="na-footer  footer-1">

        <!--    Footer center-->
                    <!--    Footer center-->
            <div class="footer-center clearfix">
                <div class="container">
                    <div class="container-inner">
                        <div class="row">
                            <div class="col-md-4 col-sm-12">
                                <div id="custom_html-3" class="widget_text widget first widget_custom_html"><div class="textwidget custom-html-widget"><script data-ad-client="ca-pub-7431505704721831" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script></div></div><div id="contact_info-1" class="widget first widget_contact_info"><h2 class="widgettitle">Contact info</h2>      <div class="contact-inner clearfix">
                    
          <ul class="contact-info">
                                <li>
                    <b>Address: </b>
                    <span>Jl. Gunung Sari V No. 100X, Denpasar Barat, Bali, Indonesia</span>
                </li>
                
                                  <li>
                      <b>Mobile: </b>
                      <span>08123951589</span>
                  </li>

                                                  <li>
                      <b>Phone: </b>
                      <span>(0361) 482852</span>
                  </li>

                
                
                                    <li>
                        <b>Email: </b>
                        <a href="mailto:metrobali@ymail.com" ><span>metrobali@ymail.com</span></a>
                    </li>
                          </ul>
      </div>
      </div>                            </div>
                            <div class="col-md-4 col-sm-12">
                                                            </div>
                            <div class="col-md-4 col-sm-12">
                                <div id="twitter-1" class="widget first widget_twitter"><h2 class="widgettitle">Latest Tweets</h2>        <div class="nerubian-twitter">
                   <a class="twitter-timeline" href="https://twitter.com/metrobali"
                        data-chrome="noheader noscrollbar nofooter noborders transparent"
                        data-width="300"
                        data-height="250"
                        data-theme="dark" >
                       Tweets by                       metrobali                   </a>
        </div>
        </div>                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
        <!--    Footer bottom-->
        <div class="footer-bottom clearfix">
            <div class="container">
                <div class="container-inner">
                    <div class="row">

                        <div class="col-md-6 col-sm-12">
                            <div class="coppy-right">
                                <span>Copyrights &copy; 2020<a href="http://nerubian.nanoagency.co">  Nerubian Theme. </a> All Rights Reserved.</span>                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 footer-bottom-left">
                            <div id="nerubian_social-2" class="widget first nerubian_social"><div class="nerubian-social-icon clearfix"><a href="https://www.facebook.com/officialmetrobali/" target="_blank" title="ion-social-facebook" class="ion-social-facebook"><i class="fa fa-facebook"></i></a><a href="https://plus.google.com/+metrobalisutiawan" target="_blank" title="ion-social-googleplus" class="ion-social-googleplus"><i class="fa fa-google-plus"></i></a><a href="https://twitter.com/metrobali" target="_blank" title="ion-social-twitter" class="ion-social-twitter"><i class="fa fa-twitter"></i></a><a href="https://www.instagram.com/metrobali/?hl=id" target="_blank" title="ion-social-instagram" class="ion-social-instagram"><i class="fa fa-instagram"></i></a></div></div>                        </div>
                    </div>
                </div>
            </div>
        </div>


    </footer><!-- .site-footer -->
    </div><!-- .site -->

<!-- Instagram Feed JS -->
<script type="text/javascript">
var sbiajaxurl = "http://metrobali.com/wp-admin/admin-ajax.php";
</script>
<script type='text/javascript'>
/* <![CDATA[ */
var wpcf7 = {"apiSettings":{"root":"http:\/\/metrobali.com\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"},"cached":"1"};
/* ]]> */
</script>
<script  src='http://metrobali.com/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=5.1.1'></script>
<script  src='http://metrobali.com/wp-content/plugins/theme-core/assets/js/imagesloaded.pkgd.min.js?ver=3.1.8'></script>
<script  src='http://metrobali.com/wp-content/plugins/theme-core/assets/js/jquery.infinitescroll.min.js?ver=2.1.0'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var NaScript = {"home_url":"http:\/\/metrobali.com\/","ajax_url":"http:\/\/metrobali.com\/wp-admin\/admin-ajax.php?_wpnonce=d403574ff9","admin_theme_url":"http:\/\/metrobali.com\/wp-admin\/themes.php?_wpnonce=d403574ff9"};
/* ]]> */
</script>
<script  src='http://metrobali.com/wp-content/plugins/theme-core/assets/js/dev/na-core-front.js?ver=1.0'></script>
<script  src='http://metrobali.com/wp-content/plugins/theme-core/assets/js/dev/na-core-admin.js?ver=1.0'></script>
<script >
const wpccpMessage = '',wpccpPaste = '',wpccpUrl = 'http://metrobali.com/wp-content/plugins/wp-content-copy-protection/';
</script>
<script  src='http://metrobali.com/wp-content/plugins/wp-content-copy-protection/assets/js/script.min.js?ver=1594911162'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/plugins/bootstrap.min.js?ver=2.2.0'></script>
<script  src='//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?ver=2.2.0'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/plugins/html5.min.js?ver=2.2.0'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/plugins/jquery.slicknav.min.js?ver=2.2.0'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/plugins/skip-link-focus-fix.min.js?ver=2.2.0'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/jquery.sticky-sidebar.js?ver=2.2.0'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/plugins/slick.min.js?ver=2.2.0'></script>
<script  src='http://metrobali.com/wp-content/plugins/js_composer/assets/lib/bower/isotope/dist/isotope.pkgd.min.js?ver=5.4.5'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/plugins/jquery.lazy.js?ver=2.2.0'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/plugins/jquery.nanoscroller.min.js?ver=0.8.7'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/plugins/photoswipe.min.js'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/plugins/photoswipe-ui-default.min.js'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/plugins/jquery.videoController.min.js?ver=2.2.0'></script>
<script  src='http://metrobali.com/wp-includes/js/imagesloaded.min.js?ver=3.2.0'></script>
<script  src='http://metrobali.com/wp-includes/js/masonry.min.js?ver=3.3.2'></script>
<script  src='http://metrobali.com/wp-includes/js/jquery/jquery.masonry.min.js?ver=3.1.2b'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/dev/nerubian-init.js'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/dev/slick-init.js'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/dev/nerubian.js'></script>
<script  src='http://metrobali.com/wp-includes/js/wp-embed.min.js?ver=4.9.15'></script>
<script  src='http://metrobali.com/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=5.4.5'></script>
<script  src='http://metrobali.com/wp-content/themes/nerubian/nerubian/assets/js/plugins/tweets-widgets.min.js?ver=2.3.0'></script>
<script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
</body>
</html>
<!-- Dynamic page generated in 5.193 seconds. -->
<!-- Cached page generated by WP-Super-Cache on 2020-10-15 01:45:10 -->

<!-- Compression = gzip -->
<!-- super cache -->