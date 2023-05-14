<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="https://spiritueljoy.com/xmlrpc.php">

<title>Spirituel Joy &#8211; by Neha Joy Chauhan</title>

<!-- Async WordPress.com Remote Login -->
<script id="wpcom_remote_login_js">
var wpcom_remote_login_extra_auth = '';
function wpcom_remote_login_remove_dom_node_id( element_id ) {
	var dom_node = document.getElementById( element_id );
	if ( dom_node ) { dom_node.remove(); }
}
function wpcom_remote_login_remove_dom_node_classes( class_name ) {
	var dom_nodes = document.querySelectorAll( '.' + class_name );
	for ( var i = 0; i < dom_nodes.length; i++ ) {
		dom_nodes[i].remove();
	}
}
function wpcom_remote_login_final_cleanup() {
	wpcom_remote_login_remove_dom_node_classes( "wpcom_remote_login_msg" );
	wpcom_remote_login_remove_dom_node_id( "wpcom_remote_login_key" );
	wpcom_remote_login_remove_dom_node_id( "wpcom_remote_login_validate" );
	wpcom_remote_login_remove_dom_node_id( "wpcom_remote_login_js" );
	wpcom_remote_login_remove_dom_node_id( "wpcom_request_access_iframe" );
	wpcom_remote_login_remove_dom_node_id( "wpcom_request_access_styles" );
}

// Watch for messages back from the remote login
window.addEventListener( "message", function( e ) {
	if ( e.origin === "https://r-login.wordpress.com" ) {
		var data = {};
		try {
			data = JSON.parse( e.data );
		} catch( e ) {
			wpcom_remote_login_final_cleanup();
			return;
		}

		if ( data.msg === 'LOGIN' ) {
			// Clean up the login check iframe
			wpcom_remote_login_remove_dom_node_id( "wpcom_remote_login_key" );

			var id_regex = new RegExp( /^[0-9]+$/ );
			var token_regex = new RegExp( /^.*|.*|.*$/ );
			if (
				token_regex.test( data.token )
				&& id_regex.test( data.wpcomid )
			) {
				// We have everything we need to ask for a login
				var script = document.createElement( "script" );
				script.setAttribute( "id", "wpcom_remote_login_validate" );
				script.src = '/remote-login.php?wpcom_remote_login=validate'
					+ '&wpcomid=' + data.wpcomid
					+ '&token=' + encodeURIComponent( data.token )
					+ '&host=' + window.location.protocol
						+ '//' + window.location.hostname;
				document.body.appendChild( script );
			}

			return;
		}

		// Safari ITP, not logged in, so redirect
		if ( data.msg === 'LOGIN-REDIRECT' ) {
			window.location = 'https://wordpress.com/log-in?redirect_to=' + window.location.href;
			return;
		}

		// Safari ITP, storage access failed, remove the request
		if ( data.msg === 'LOGIN-REMOVE' ) {
			var css_zap = 'html { -webkit-transition: margin-top 1s; transition: margin-top 1s; } /* 9001 */ html { margin-top: 0 !important; } * html body { margin-top: 0 !important; } @media screen and ( max-width: 782px ) { html { margin-top: 0 !important; } * html body { margin-top: 0 !important; } }';
			var style_zap = document.createElement( 'style' );
			style_zap.type = 'text/css';
			style_zap.appendChild( document.createTextNode( css_zap ) );
			document.body.appendChild( style_zap );

			var e = document.getElementById( 'wpcom_request_access_iframe' );
			e.parentNode.removeChild( e );

			document.cookie = 'wordpress_com_login_access=denied; path=/; max-age=31536000';

			return;
		}

		// Safari ITP
		if ( data.msg === 'REQUEST_ACCESS' ) {
			console.log( 'request access: safari' );

			// Check ITP iframe enable/disable knob
			if ( wpcom_remote_login_extra_auth !== 'safari_itp_iframe' ) {
				return;
			}

			// If we are in a "private window" there is no ITP.
			var private_window = false;
			try {
				var opendb = window.openDatabase( null, null, null, null );
			} catch( e ) {
				private_window = true;
			}

			if ( private_window ) {
				console.log( 'private window' );
				return;
			}

			var iframe = document.createElement( 'iframe' );
			iframe.id = 'wpcom_request_access_iframe';
			iframe.setAttribute( 'scrolling', 'no' );
			iframe.setAttribute( 'sandbox', 'allow-storage-access-by-user-activation allow-scripts allow-same-origin allow-top-navigation-by-user-activation' );
			iframe.src = 'https://r-login.wordpress.com/remote-login.php?wpcom_remote_login=request_access&origin=' + encodeURIComponent( data.origin ) + '&wpcomid=' + encodeURIComponent( data.wpcomid );

			var css = 'html { -webkit-transition: margin-top 1s; transition: margin-top 1s; } /* 9001 */ html { margin-top: 46px !important; } * html body { margin-top: 46px !important; } @media screen and ( max-width: 660px ) { html { margin-top: 71px !important; } * html body { margin-top: 71px !important; } #wpcom_request_access_iframe { display: block; height: 71px !important; } } #wpcom_request_access_iframe { border: 0px; height: 46px; position: fixed; top: 0; left: 0; width: 100%; min-width: 100%; z-index: 99999; background: #23282d; } ';

			var style = document.createElement( 'style' );
			style.type = 'text/css';
			style.id = 'wpcom_request_access_styles';
			style.appendChild( document.createTextNode( css ) );
			document.body.appendChild( style );

			document.body.appendChild( iframe );
		}

		if ( data.msg === 'DONE' ) {
			wpcom_remote_login_final_cleanup();
		}
	}
}, false );

// Inject the remote login iframe after the page has had a chance to load
// more critical resources
window.addEventListener( "DOMContentLoaded", function( e ) {
	var iframe = document.createElement( "iframe" );
	iframe.style.display = "none";
	iframe.setAttribute( "scrolling", "no" );
	iframe.setAttribute( "id", "wpcom_remote_login_key" );
	iframe.src = "https://r-login.wordpress.com/remote-login.php"
		+ "?wpcom_remote_login=key"
		+ "&origin=aHR0cHM6Ly9zcGlyaXR1ZWxqb3kuY29t"
		+ "&wpcomid=165475608"
		+ "&time=1602700812";
	document.body.appendChild( iframe );
}, false );
</script>
<link rel='dns-prefetch' href='//s0.wp.com' />
<link rel='dns-prefetch' href='//joyvillehome.wordpress.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel="alternate" type="application/rss+xml" title="Spirituel Joy &raquo; Feed" href="https://spiritueljoy.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="Spirituel Joy &raquo; Comments Feed" href="https://spiritueljoy.com/comments/feed/" />
	<script type="text/javascript">
		/* <![CDATA[ */
		function addLoadEvent(func) {
			var oldonload = window.onload;
			if (typeof window.onload != 'function') {
				window.onload = func;
			} else {
				window.onload = function () {
					oldonload();
					func();
				}
			}
		}
		/* ]]> */
	</script>
			<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s0.wp.com\/wp-content\/mu-plugins\/wpcom-smileys\/twemoji\/2\/72x72\/","ext":".png","svgUrl":"https:\/\/s0.wp.com\/wp-content\/mu-plugins\/wpcom-smileys\/twemoji\/2\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/s0.wp.com\/wp-includes\/js\/wp-emoji-release.min.js?m=1596548281h&ver=5.5-wpcom-48929"}};
			!function(e,a,t){var r,n,o,i,p=a.createElement("canvas"),s=p.getContext&&p.getContext("2d");function c(e,t){var a=String.fromCharCode;s.clearRect(0,0,p.width,p.height),s.fillText(a.apply(this,e),0,0);var r=p.toDataURL();return s.clearRect(0,0,p.width,p.height),s.fillText(a.apply(this,t),0,0),r===p.toDataURL()}function l(e){if(!s||!s.fillText)return!1;switch(s.textBaseline="top",s.font="600 32px Arial",e){case"flag":return!c([127987,65039,8205,9895,65039],[127987,65039,8203,9895,65039])&&(!c([55356,56826,55356,56819],[55356,56826,8203,55356,56819])&&!c([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]));case"emoji":return!c([55357,56424,8205,55356,57212],[55357,56424,8203,55356,57212])}return!1}function d(e){var t=a.createElement("script");t.src=e,t.defer=t.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(t)}for(i=Array("flag","emoji"),t.supports={everything:!0,everythingExceptFlag:!0},o=0;o<i.length;o++)t.supports[i[o]]=l(i[o]),t.supports.everything=t.supports.everything&&t.supports[i[o]],"flag"!==i[o]&&(t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&t.supports[i[o]]);t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&!t.supports.flag,t.DOMReady=!1,t.readyCallback=function(){t.DOMReady=!0},t.supports.everything||(n=function(){t.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",n,!1),e.addEventListener("load",n,!1)):(e.attachEvent("onload",n),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&t.readyCallback()})),(r=t.source||{}).concatemoji?d(r.concatemoji):r.wpemoji&&r.twemoji&&(d(r.twemoji),d(r.wpemoji)))}(window,document,window._wpemojiSettings);
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
	<link rel='stylesheet' id='all-css-0-1' href='https://s0.wp.com/_static/??-eJydkf9KAzEMx1/IXrwTNvaH+CxtL3aZTVualNG3tzd1iA4VCYT8+H4CSeBcjM9JMSlwMyW2QEngXHxmI0wR+5ds8iJ3cBuj9EyJtF+Db+IPZWgjdVjD6FSEwzRPM7hGcQUXs38xkVy1tYNoj/iHMRdK4IRa7IbbnpuaUGn974hqlVKQX3Cf37FlGgYriV5r5jb66WDb8qPOxeqmYFzJYkQesp+wt4c4VyqKmOGZGhs9DvDynyd+nHf3y+6wzA/70yvKD7Vr?cssminify=yes' type='text/css' media='all' />
<style id='wp-block-library-inline-css'>
.has-text-align-justify {
	text-align:justify;
}
</style>
<style id='global-styles-inline-css'>
:root{--wp--preset--color--black:#000000;--wp--preset--color--cyan-bluish-gray:#abb8c3;--wp--preset--color--white:#ffffff;--wp--preset--color--pale-pink:#f78da7;--wp--preset--color--vivid-red:#cf2e2e;--wp--preset--color--luminous-vivid-orange:#ff6900;--wp--preset--color--luminous-vivid-amber:#fcb900;--wp--preset--color--light-green-cyan:#7bdcb5;--wp--preset--color--vivid-green-cyan:#00d084;--wp--preset--color--pale-cyan-blue:#8ed1fc;--wp--preset--color--vivid-cyan-blue:#0693e3;--wp--preset--color--vivid-purple:#9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple:linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan:linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange:linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red:linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray:linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum:linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple:linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux:linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk:linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean:linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass:linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight:linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--font-size--small:13;--wp--preset--font-size--normal:16;--wp--preset--font-size--medium:20;--wp--preset--font-size--large:36;--wp--preset--font-size--huge:42;}
</style>
<link rel='stylesheet' id='all-css-2-1' href='https://s0.wp.com/wp-content/themes/pub/cols/style.css?m=1532379290h&cssminify=yes' type='text/css' media='all' />
<!--[if lt IE 9]>
<link rel='stylesheet' id='cols-ie-css'  href='https://s0.wp.com/wp-content/themes/pub/cols/css/ie.css?m=1413894689h&#038;ver=20142110' media='all' />
<![endif]-->
<link crossorigin="anonymous" rel='stylesheet' id='cols-sourcesans-css'  href='//fonts.googleapis.com/css?family=Source+Sans+Pro%3A300%2C400%2C500%2C600%2C700&#038;subset=latin%2Clatin-ext' media='all' />
<link crossorigin="anonymous" rel='stylesheet' id='cols-sourceserif-css'  href='//fonts.googleapis.com/css?family=Source+Serif+Pro%3A300%2C400%2C500%2C600%2C700&#038;subset=latin%2Clatin-ext' media='all' />
<link rel='stylesheet' id='all-css-8-1' href='https://s0.wp.com/_static/??-eJx9jUsOgzAMBS9EMH+VBepZwHJDKieOcCKuD+2GsuluRnqjB3s0KCFRSJBW8qQQ8wIorICqsEcUX55UwM/SZxM5WxcULIlhwTk5CTcxL57d9i/daGGxJ9rv1aWf6OmnunsMVT/WbfM+AJvUPVs=?cssminify=yes' type='text/css' media='all' />
<link rel='stylesheet' id='print-css-9-1' href='https://s0.wp.com/wp-content/mu-plugins/global-print/global-print.css?m=1465851035h&cssminify=yes' type='text/css' media='print' />
<link rel='stylesheet' id='all-css-10-1' href='https://s0.wp.com/wp-content/mu-plugins/actionbar/actionbar.css?m=1560469195h&cssminify=yes' type='text/css' media='all' />
<style id='jetpack-global-styles-frontend-style-inline-css'>
:root { --font-headings: unset; --font-base: unset; --font-headings-default: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif; --font-base-default: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif;}
</style>
<link rel='stylesheet' id='all-css-12-1' href='https://s0.wp.com/wp-content/themes/h4/global.css?m=1420737423h&cssminify=yes' type='text/css' media='all' />
<script type='text/javascript' src='https://s0.wp.com/_static/??/wp-includes/js/jquery/jquery.js,/wp-content/js/postmessage.js,/wp-content/js/mobile-useragent-info.js?m=1558356653j'></script>
<link rel='stylesheet' id='all-css-0-2' href='https://s0.wp.com/wp-content/mu-plugins/highlander-comments/style.css?m=1530132353h&cssminify=yes' type='text/css' media='all' />
<!--[if lt IE 8]>
<link rel='stylesheet' id='highlander-comments-ie7-css'  href='https://s0.wp.com/wp-content/mu-plugins/highlander-comments/style-ie7.css?m=1351637563h&#038;ver=20110606' media='all' />
<![endif]-->
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://joyvillehome.wordpress.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://s0.wp.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress.com" />
<link rel='shortlink' href='https://wp.me/bcjLq' />

<!-- Jetpack Open Graph Tags -->
<meta property="og:type" content="website" />
<meta property="og:title" content="Spirituel Joy" />
<meta property="og:description" content="by Neha Joy Chauhan" />
<meta property="og:url" content="https://spiritueljoy.com/" />
<meta property="og:site_name" content="Spirituel Joy" />
<meta property="og:image" content="https://joyvillehome.files.wordpress.com/2020/06/cropped-spirituel-joy.png?w=200" />
<meta property="og:image:width" content="200" />
<meta property="og:image:height" content="200" />
<meta property="og:locale" content="en_US" />
<meta name="twitter:site" content="@wordpressdotcom" />

<!-- End Jetpack Open Graph Tags -->
<link rel="search" type="application/opensearchdescription+xml" href="https://spiritueljoy.com/osd.xml" title="Spirituel Joy" />
<link rel="search" type="application/opensearchdescription+xml" href="https://s1.wp.com/opensearch.xml" title="WordPress.com" />
<meta name="application-name" content="Spirituel Joy" /><meta name="msapplication-window" content="width=device-width;height=device-height" /><meta name="msapplication-tooltip" content="by Neha Joy Chauhan" /><meta name="msapplication-task" content="name=Subscribe;action-uri=https://spiritueljoy.com/feed/;icon-uri=https://joyvillehome.files.wordpress.com/2020/06/cropped-spirituel-joy.png?w=16" /><meta name="msapplication-task" content="name=Sign up for a free blog;action-uri=http://wordpress.com/signup/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=WordPress.com Support;action-uri=http://support.wordpress.com/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=WordPress.com Forums;action-uri=http://forums.wordpress.com/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="description" content="by Neha Joy Chauhan" />
<link rel="icon" href="https://joyvillehome.files.wordpress.com/2020/06/cropped-spirituel-joy.png?w=32" sizes="32x32" />
<link rel="icon" href="https://joyvillehome.files.wordpress.com/2020/06/cropped-spirituel-joy.png?w=192" sizes="192x192" />
<link rel="apple-touch-icon" href="https://joyvillehome.files.wordpress.com/2020/06/cropped-spirituel-joy.png?w=180" />
<meta name="msapplication-TileImage" content="https://joyvillehome.files.wordpress.com/2020/06/cropped-spirituel-joy.png?w=270" />
</head>

<body class="home blog custom-background customizer-styles-applied highlander-enabled highlander-dark">
<div id="page" class="hfeed site">
	<a class="skip-link screen-reader-text" href="#content">Skip to content</a>

	<header id="masthead" class="site-header" role="banner">
		<div class="site-branding">
			<h1 class="site-title"><a href="https://spiritueljoy.com/" rel="home">Spirituel Joy</a></h1>
			<h2 class="site-description">by Neha Joy Chauhan</h2>
		</div>

		<nav id="site-navigation" class="main-navigation" role="navigation">
			<button class="menu-toggle">Menu</button>
			<div class="menu-new-menu-container"><ul id="menu-new-menu" class="menu"><li id="menu-item-976" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-976"><a href="https://spiritueljoy.com/category/musings/">Musings</a></li>
<li id="menu-item-977" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-977"><a href="https://spiritueljoy.com/category/verse/">Verse</a></li>
<li id="menu-item-978" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-978"><a href="https://spiritueljoy.com/category/spiritual/">Spiritual</a></li>
</ul></div>		</nav><!-- #site-navigation -->
	</header><!-- #masthead -->

	<div id="content" class="site-content">

		
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

		
						
				
<article id="post-980" class="post-980 post type-post status-publish format-standard has-post-thumbnail hentry category-musings tag-musings tag-philosophy">

	
	<a class="post-thumbnail" href="https://spiritueljoy.com/2020/06/11/pigeons-and-metros/">
		<img width="560" height="315" src="https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png?w=560" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" loading="lazy" srcset="https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png 560w, https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png?w=150 150w, https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png?w=300 300w" sizes="(max-width: 560px) 100vw, 560px" data-attachment-id="981" data-permalink="https://spiritueljoy.com/pigeons-and-metros/" data-orig-file="https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png" data-orig-size="560,315" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="Pigeons And Metros" data-image-description="" data-medium-file="https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png?w=300" data-large-file="https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png?w=560" />	</a>

	
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://spiritueljoy.com/2020/06/11/pigeons-and-metros/" rel="bookmark">Pigeons And Metros</a></h1>
				<div class="entry-meta">
			<span class="posted-on">Posted on <a href="https://spiritueljoy.com/2020/06/11/pigeons-and-metros/" rel="bookmark"><time class="entry-date published" datetime="2020-06-11T21:46:08+05:30">June 11, 2020</time><time class="updated" datetime="2020-06-11T21:38:50+05:30">June 11, 2020</time></a></span><span class="byline"> by <span class="author vcard"><a class="url fn n" href="https://spiritueljoy.com/author/nehajoychauhan/">NehaJoyChauhan</a></span></span>		</div><!-- .entry-meta -->
			</header><!-- .entry-header -->

	<div class="entry-content">
		
<figure class="wp-block-image size-large"><img data-attachment-id="981" data-permalink="https://spiritueljoy.com/pigeons-and-metros/" data-orig-file="https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png" data-orig-size="560,315" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="Pigeons And Metros" data-image-description="" data-medium-file="https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png?w=300" data-large-file="https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png?w=560" src="https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png?w=560" class="wp-image-981" srcset="https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png 560w, https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png?w=150 150w, https://joyvillehome.files.wordpress.com/2020/06/pigeons-and-metros.png?w=300 300w" sizes="(max-width: 560px) 100vw, 560px" /></figure>



<p>It was 11:30 am in the morning. An exceptionally sunny day for cold December. If you live in the Himalayas, then sunny days and December are cool. If you live in the polluted NCR and work a corporate job, then sunny days are like little miracles in December and then in January. I hadn&#8217;t seen the sun since days, weeks maybe. My hair was wet. I wanted to go to the office rooftop and just enjoy the sun for a few minutes. Too bad, I had to wait about one and a half hours to do so.</p>



<p>Anyway, I was there in the sun. The maddening sun that I love. It was a dirty rooftop. Yuck! Like rooftops always are, in such crumpled old and dirty buildings. I hate such buildings. They can be old but not that dirty. I hate dirty things like this. It makes me feel disturbed.</p>



<p>The office boy is always unwilling to work. Things are always lying around. He never picks them up. He hates it actually.</p>



<p>Coming back to my aversion to dirty places. The office is weird I say. So messed up that I instantly lose motivation entering that space. It is as if I have been thrown into some place bad. I just don’t want to be there. </p>



<p>That smell. That weird smell this place has. Like something is slowly degenerating. Slowly losing animation. Everything is lying everywhere. Everything is messed up. </p>



<p>Everything looks like it was a piece of someone&#8217;s soul, brutally snatched and preserved for no reason other than a sense of achievement. I always feel like that when I look at hundreds of visiting cards lying on the tables.</p>



<p>At least the office can be cleaned once in a while. This rooftop is beyond hope. There is nothing that can be done about it. Dirt and dust everywhere. The railing was full of dust. Some old dust, some pigeon shit on the dust and the some more dust on the pigeon shit. </p>



<p>More such specimens lying on the railing. I can&#8217;t lean on that railing. I have this maddening urge to lean on railings, let my hair fall down and then just look at the ground and imagine what would happen if I fell down. Sounds like fun, hope that never happens. </p>



<p>The metro is barely a few meters away from this railing. In fact, this building is a triangle on the side. On one end, the distance between the metro line and the building becomes so small that you could easily do some small timey stunt stuff on a bike and expect to be dead the next moment unless there is a net down there, waiting to catch you when you fall. </p>



<p>Too bad, life is not about finding nets that catch you when you fall. Nets have a life and emotions and all and they are not always available for instant help. They may come later though, when you are dead and long gone. A net may not be in the right mood to be where it was needed, long, long ago.</p>



<p>Then I look at the pigeons. Oh those weird birds sitting on those weird wires. These metro wires. Pigeons are always sitting on wires. They don&#8217;t have another job. Just sit on wires. I am not fond of pigeons I say. Sitting and shitting is all they do. I wonder what do they even find to eat in this dirty place. </p>



<p>Are they all domesticated? They can fly. They have wings. They just take a small round flight over the metro rail wires and come back to where they started. </p>



<p>Why don&#8217;t they fly away? What keeps them glued to the wires? Do they like being domesticated? Are they afraid of the world beyond this small section of the metro wires they call home? Do they stay by choice or because they have no other choice?</p>



<p>The sun has almost burnt my back by now. My hair is not just dry, it is literally fuming. I have to go down to the weird smelly space again. There is ginger tea waiting for me down there. A relief or smell and taste in an otherwise tasteless, smelly world.</p>

			</div><!-- .entry-content -->

	<footer class="entry-footer">
		<span class="cat-links">Posted in <a href="https://spiritueljoy.com/category/musings/" rel="category tag">Musings</a></span><span class="tags-links">Tagged <a href="https://spiritueljoy.com/tag/musings/" rel="tag">Musings</a> <a href="https://spiritueljoy.com/tag/philosophy/" rel="tag">philosophy</a></span><span class="comments-link"><a href="https://spiritueljoy.com/2020/06/11/pigeons-and-metros/#respond">Leave a comment</a></span>	</footer><!-- .entry-footer -->
</article><!-- #post-## -->

			
				
<article id="post-963" class="post-963 post type-post status-publish format-standard has-post-thumbnail hentry category-pcos tag-pcos tag-pcos-help tag-pcos-weight-loss">

	
	<a class="post-thumbnail" href="https://spiritueljoy.com/2019/11/17/lose-some-weight-woman-or-maybe-not/">
		<img width="560" height="315" src="https://joyvillehome.files.wordpress.com/2019/11/lose-some-weight-woman.png?w=560" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" loading="lazy" srcset="https://joyvillehome.files.wordpress.com/2019/11/lose-some-weight-woman.png 560w, https://joyvillehome.files.wordpress.com/2019/11/lose-some-weight-woman.png?w=150 150w, https://joyvillehome.files.wordpress.com/2019/11/lose-some-weight-woman.png?w=300 300w" sizes="(max-width: 560px) 100vw, 560px" data-attachment-id="968" data-permalink="https://spiritueljoy.com/lose-some-weight-woman/" data-orig-file="https://joyvillehome.files.wordpress.com/2019/11/lose-some-weight-woman.png" data-orig-size="560,315" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="lose-some-weight-woman" data-image-description="" data-medium-file="https://joyvillehome.files.wordpress.com/2019/11/lose-some-weight-woman.png?w=300" data-large-file="https://joyvillehome.files.wordpress.com/2019/11/lose-some-weight-woman.png?w=560" />	</a>

	
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://spiritueljoy.com/2019/11/17/lose-some-weight-woman-or-maybe-not/" rel="bookmark">Lose Some Weight Woman! (Or Maybe Not)</a></h1>
				<div class="entry-meta">
			<span class="posted-on">Posted on <a href="https://spiritueljoy.com/2019/11/17/lose-some-weight-woman-or-maybe-not/" rel="bookmark"><time class="entry-date published" datetime="2019-11-17T19:28:51+05:30">November 17, 2019</time><time class="updated" datetime="2019-11-17T19:52:00+05:30">November 17, 2019</time></a></span><span class="byline"> by <span class="author vcard"><a class="url fn n" href="https://spiritueljoy.com/author/nehajoychauhan/">NehaJoyChauhan</a></span></span>		</div><!-- .entry-meta -->
			</header><!-- .entry-header -->

	<div class="entry-content">
		
<p class="has-normal-font-size">I know several women with PCOS. Most of them struggle with weight gain. There are countless others who remain slim but struggle with the same problems as us- the overweight ones. I don&#8217;t know what to tell them when they ask questions. I don&#8217;t know how to explain that I wanted to lose weight and maybe look like them. I am wrong, I know. </p>



<p>PCOS is crippling whether you are slim or overweight. It wouldn&#8217;t really matter what your scale says as long as you constantly lose hair, your skin becomes an arid desert and your periods keep playing hide and seek with you. </p>



<p>I wanted to write a post about PCOS weight loss but decided to take a more balanced approach to weight issues this time. My trigger was an enthusiastic Instagrammer who was constantly posting images of her food, trying to tell the world about a PCOS-friendly diet. I must say that I was impressed. What she is doing is truly commendable and we must all support her in her endeavor. However, my only problem was that her PCOS-friendly food matched with my conventional wisdom, but not my insights into Ayurveda. My little ghost of personal experience shouted in my ear- this won&#8217;t work. </p>



<p>&#8220;This won&#8217;t work&#8221;</p>



<p>I thought that I should tell her that these things didnt work for me but I didnt want to kill her enthusiasm. She is suffering, just like me and I dont have the heart to tell her that the things she is working so hard for never worked for me or for anyone else I knew. And secretly, I prayed that it worked for her because PCOS is that bad. </p>



<h2>Understanding food</h2>



<p>Before I start talking about my personal experience and an entire decade of research I have done into PCOS, I feel obliged to tell you something honestly. I haven&#8217;t yet found a diet that works perfectly for me. There is no food category that I have not given up on, only to find that the scale staying stubbornly where it was before I started the diet. What I have found is that PCOS doesn&#8217;t spring from one root cause and that&#8217;s why you need a multi-pronged approach to handle this problem. </p>



<p>So let&#8217;s understand it now. What is food?</p>



<p>Food is nourishment. When I was younger, I tried to understand food in terms of calories. Anything below 200 calories is good, anything over 200 calories is bad. I was going crazy about negative calories, salads and food hacks hoping that it would help me lose weight. It didn&#8217;t. </p>



<p>So let&#8217;s just chuck the calorie-counting system. 300 calories of almonds and 300 calories of chicken are not the same because they are not the same thing. Also, you shouldn&#8217;t believe that you will magically replace calories with seemingly &#8220;healthier foods&#8221; and get better periods or hormone health. It doesn&#8217;t work that way. IT JUST DOESN&#8217;T. </p>



<h3>Looking at food qualitatively</h3>



<p>My first advice to any girl suffering from PCOS is to look at food qualitatively, not quantitatively. Our body is a biological system, not a mechanical one. So don&#8217;t believe that 300 calories of chicken will have the same effect as 300 calories of almonds. Of course, the calories are the same but the impact is completely different. </p>



<p>To look at food qualitatively, my first weapon was to understand chemical composition. You know how it went- really bad. Then I turned to Ayurveda and found my answers. </p>



<p>Now, Ayurveda suggests that there are three elements or humors-</p>



<p>Vata- predominantly air</p>



<p>Pitta- predominantly fire</p>



<p>Kapha- predominantly water</p>



<p>I will explain how these humors work in great detail in the next post. For now, we must understand that foods, just like our body, have three qualities- vata, pitta and kapha. The idea is to balance these three qualities and ensure that we remain healthy. </p>



<h2>What should you eat?</h2>



<p>I can&#8217;t give you a Bible for the right food for PCOS and expect you to follow it like a religion. Every body is different. Every situation is different and every geographical location is different. </p>



<p>What? Where did geography come in PCOS? Read on to know. </p>



<h3>Focus on local staples</h3>



<p>The first thing is to check what kind of food is staple in your part of the world. This is the kind of food that is best suited to your lifestyle. For instance, I live in a Himalayan valley where we don&#8217;t use coconut oil for cooking. We experience winter for at least a quarter of an year so cooking with coconut oil is a no-no. (BTW, I have had a number of arguments with North Americans on Twitter who believe that using tropical oils like coconut oil for cooking will magically heal them. Sorry! You live in a relatively colder environment. Coconut oil isn&#8217;t natural for your body and cannot become a staple.)</p>



<p>Here, we use mustard oil primarily. Ghee is also common. Now, if you are living in Southern India, please don&#8217;t listen to stuff like healthy rice bran oil, canola oil and what not. If coconut oil is the staple oil, don&#8217;t go anywhere else. </p>



<p>There is one other great point to note here. South India is a tropical paradise where there is heat and humidity. Coconut oil brings a &#8220;thandi taseer&#8221; or coolness to food which works well in that environment. In Northern India, applying coconut oil on your head is a punishment in winter. Because it is so cold during some months, we would rather use mustard oil which is locally sourced, available in plenty and has a &#8220;garam taseer&#8221; or warmth. </p>



<h2>Understand vata, pitta, kapha</h2>



<p>According to Ayurveda, PCOS is primarily a kapha disorder. However, whenever we treat a disease by Ayurvedic means, we first try to balance air, which is the lightest element. </p>



<p>Vata also carries your prana or life force or your breath. If vata is aggravated, you will find typical symptoms of dryness like flaky scalp and skin, dehydrated skin, constipation etc. Vata aggravation also leads to sleep troubles in many women. </p>



<p>Pitta is your life fire or your digestive fire or jathar agni. Pitta aggravation leads to heat build up. fevers, pimples etc.  Excessive acidity, belching, breakouts etc. are all pitta issues. </p>



<p>Kapha is the holy water content of your body. Kapha aggravation causes heaviness, digestive issues, slow metabolism, sluggishness, fatigue etc. It makes it hard to get out of bed. </p>



<p>Understand what specific types of symptoms you are facing and wait for my next article. If you cant, DM me on Instagram. </p>



<h2>Don&#8217;t listen to shitty advice</h2>



<p>The market is full of crooks who just want to sell you a product and make a buck. They will tell you a tea balances your hormones, a superfood combats period problems and a customized shampoo will magically solve all your hair troubles from the first wash. This is not how it works. Trust me. </p>



<p>They will tell you rice bran oil is good for weight loss or that green matcha beans (or whatever they are called) are great for staying in shape. None of this matters. You don&#8217;t need to eat oatmeal and quinoa. You don&#8217;t need to spend a fortune on buying food that tastes like absolute BS and doesn&#8217;t give you any satisfaction. </p>



<p>You just need to focus on locally sourced, locally viable. Just eat what you regularly eat. Eat what is cooked at home and make sure that you eat seasonally. That&#8217;s it. There is no other way to be healthy and if you need to lose some weight, you have to do it this way. </p>



<h2>Come on, you are being stupid now</h2>



<p>I knew you would say this. I knew you would think this is stupid. We have been conditioned to believe certain things and you are not the only one who is struggling to understand how the regular daal-roti will make you lose weight and stay healthy. I struggled too. But the heart of the matter is that no diet that you come across can be continued everyday, forever. One day you will break and the devastation will be enough to break an artificial cycle and bring you back on the path of bloating, fat gain and probably a lot of pains and aches. </p>



<p>Take food as a means of sustenance. Don&#8217;t just change your food, change your relationship with food. Taking up a new diet every time you fail at a previous one, thinking that a new diet would somehow be more surreal is like jumping from one failed relationship to another without taking a step back and thinking why each of our relationships fail. </p>



<p>I could go on writing, you know. But let&#8217;s save it for next Monday. 🙂</p>

			</div><!-- .entry-content -->

	<footer class="entry-footer">
		<span class="cat-links">Posted in <a href="https://spiritueljoy.com/tag/pcos/" rel="category tag">PCOS</a></span><span class="tags-links">Tagged <a href="https://spiritueljoy.com/tag/pcos/" rel="tag">PCOS</a> <a href="https://spiritueljoy.com/tag/pcos-help/" rel="tag">PCOS help</a> <a href="https://spiritueljoy.com/tag/pcos-weight-loss/" rel="tag">PCOS weight loss</a></span><span class="comments-link"><a href="https://spiritueljoy.com/2019/11/17/lose-some-weight-woman-or-maybe-not/#respond">Leave a comment</a></span>	</footer><!-- .entry-footer -->
</article><!-- #post-## -->

			
				
<article id="post-921" class="post-921 post type-post status-publish format-standard has-post-thumbnail hentry category-pcos tag-hirsutism tag-pcos tag-polycystic-ovarian-syndrome tag-polycystic-ovaries">

	
	<a class="post-thumbnail" href="https://spiritueljoy.com/2019/11/10/the-dirty-secrets-behind-a-life-with-pcos/">
		<img width="560" height="315" src="https://joyvillehome.files.wordpress.com/2019/11/art-exhibit-blog-banner.png?w=560" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" loading="lazy" srcset="https://joyvillehome.files.wordpress.com/2019/11/art-exhibit-blog-banner.png 560w, https://joyvillehome.files.wordpress.com/2019/11/art-exhibit-blog-banner.png?w=150 150w, https://joyvillehome.files.wordpress.com/2019/11/art-exhibit-blog-banner.png?w=300 300w" sizes="(max-width: 560px) 100vw, 560px" data-attachment-id="923" data-permalink="https://spiritueljoy.com/art-exhibit-blog-banner/" data-orig-file="https://joyvillehome.files.wordpress.com/2019/11/art-exhibit-blog-banner.png" data-orig-size="560,315" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="art-exhibit-blog-banner" data-image-description="" data-medium-file="https://joyvillehome.files.wordpress.com/2019/11/art-exhibit-blog-banner.png?w=300" data-large-file="https://joyvillehome.files.wordpress.com/2019/11/art-exhibit-blog-banner.png?w=560" />	</a>

	
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://spiritueljoy.com/2019/11/10/the-dirty-secrets-behind-a-life-with-pcos/" rel="bookmark">The Dirty Secrets Behind a Life With PCOS</a></h1>
				<div class="entry-meta">
			<span class="posted-on">Posted on <a href="https://spiritueljoy.com/2019/11/10/the-dirty-secrets-behind-a-life-with-pcos/" rel="bookmark"><time class="entry-date published updated" datetime="2019-11-10T17:28:25+05:30">November 10, 2019</time></a></span><span class="byline"> by <span class="author vcard"><a class="url fn n" href="https://spiritueljoy.com/author/nehajoychauhan/">NehaJoyChauhan</a></span></span>		</div><!-- .entry-meta -->
			</header><!-- .entry-header -->

	<div class="entry-content">
		
<p>
The idea of feminity &amp; womanhood is rooted in our beauty and our ability to bear children. Unfortunately, when you are diagnosed with PCOS, both these ideas go down the drain. At the&nbsp;risk of being repetitive here is what I want to say-<br>PCOS Sucks!<br>Waking up every day with an&nbsp;unexplained pain and a stubble that would rival your brother’s is not a pleasant experience. The weighing machine doesn’t add to your confidence either. It appears that the scale could only move in one direction- right. Like the arrow of time, it keeps moving indefinitely in one direction no matter how hard you try to slim down. </p>



<p>And the acne? Don’t even get me started. If I have time after counting all the hair follicles I lost, I will tackle the acne issue. </p>



<h2>It starts with this</h2>



<p>I was first diagnosed with PCOS 10 years ago when my periods suddenly threw a tantrum. It baffled me. My period was as serious about its job as a 9 to 5 employee on a Monday. It lasted only a few hours, and it scared me. As a college student living away from home, this was a nightmare. The first thing I did was rush back home and visit the gynae with my mother. </p>



<p>The result was shocking- I had PCOS, a weird syndrome that messes up with your periods, literally f****s your entire system and doesn’t let you conceive. I was not disenchanted or shattered. I was confused. How did this happen? Why me? What the hell did I do to deserve this?</p>



<p><br>I will share the emotional toll it took on me on some other day. Long story short- I was a confused, disappointed and anxious teen who was taking tons of medications and didn’t know if there was a way out. </p>



<p>Honestly speaking, THERE ISN’T. </p>



<p>There is hope</p>



<p>The good news is that the last decade made me suffer so much that I have finally found a routine I could stick to. It is sustainable, doesn’t make me starve and doesn’t let me live solely on medications. Previously, I have written a few articles about PCOS and also shared my personal experiences on Quora. However, I think now is the opportune time for me to share more. With so hundreds of girls being diagnosed with PCOS, it would be futile for me to watch from the sidelines. </p>



<p>I have seen tons of PCOS related blogs, YouTube videos and Instagram posts. They all sell magical remedies and solutions and believe that if you could just lessen your carbs, or just walk for 30 minutes or just stop using chemical-infused products, your PCOS will be magically cured. </p>



<p>Again, THIS IS NOT TRUE. </p>



<p>The number of such articles and videos is growing at a rapid pace. I think a girl going through emotional turmoil and psychological issues related to PCOS should not drown herself in stupid and discouraging messages. You should also not stick to false hopes. </p>



<p>I have had PCOS for 10 years and it feels like I have only started to understand my body and condition now. </p>



<p>In the next few posts, I will share all the nitty-gritties of my experience with you. For now, I will focus only on the most devastating parts of PCOS. </p>



<h2>How PCOS literally ruins your life</h2>



<p><br>Everybody has a life-altering moment and mine was a PCOS diagnosis. This happened before I started my business, before I started working on my dreams and before I had my first job. </p>



<p>“Why so soon?,” I asked. All the stories I read were about people hustling, living their life, working tirelessly on their dreams and finally realizing that their health has suffered. </p>



<p>My health? Well, it suffered long before I could even properly lay the foundation to my career. It was devastating. </p>



<p>Here is all I faced, in all its ugly glory. </p>



<h3>All my hair problems</h3>



<p>There are two things I hate the most about having PCOS- facial hair and hair loss. It is a vicious cycle &#8211; you are losing your precious mane from the head while growing a manly, coarse, and dark beard. Mine wasn’t exactly a full beard but the hair on the chin was enough to make me go crazy. </p>



<p>I used everything I possibly&nbsp;could- wax, trimmers, epilators and even hair removal creams. Yeah! I know they are not to be used on the face but I used them. I just wanted to get rid of that hair. Sometimes I would trim my facial hair at night only to find a slightly longer stubble in the morning. It breaks you. </p>



<p>At the same time,&nbsp;the hair on your head is falling. There is no way you can hide a bald patch on the hair. You can’t do any creative hairstyles to hide it, because it would break more hair. You can’t wear caps. Damn! you can’t even comb your hair. The more you comb, the more hair you lose. It is futile to share the problem with people. You are literally going bald and all everyone can do is tell you different home remedies that never work. </p>



<h3>The period issue</h3>



<p>You never really realize how important something is unless it&#8217;s gone. I realized that with my period. I didn&#8217;t hate my period as such. It was never an inconvenience. It never hurt. I barely felt any cramps. My period date was just another day in my life. But then it all changed. I started keeping track of every period, waiting anxiously for the next one. </p>



<p>I would spend my days in stress, wondering what must be going on in my ovaries. I would constantly think about having better periods and bringing things back to normal. They never really came back to normal. </p>



<p>I was taking HRT (hormonal replacement therapy) or birth control pills that were making my acne worse. My periods were on time but they smelled foul, ached like hell, and crippled me partially for three days each month. If you saw me during the medication phase, you would have pitied me- a lot. </p>



<h3>The constant stress</h3>



<p>At one point I felt like I wasn’t a proper woman, but not quite a man. I felt like I was trapped somewhere in between. It was chipping away at my mental peace. I wanted to build a business and the stress of handling it was already big enough. Coupled with my bad health, it was truly a bad place to be. </p>



<p>The headaches were rough and frequent and my eyes were constantly watery. Talking to several people, ensuring that work was good quality, and that everyone was paid on time all the while praying to get my period on time was nothing&nbsp;short of&nbsp;a herculean task. </p>



<p>Now I realize I was a fool to try to accomplish so many things together. I should have taken some time out, given by dreams the back seat and worked on myself before everything else. </p>



<p>The worse of it all was seeing pregnant women or newborns. I was never thrilled about the&nbsp;idea&nbsp;of&nbsp;motherhood. I always thought that&nbsp;it would happen at the right time and I will focus on it if and when&nbsp;I get married. But at that time&nbsp;I was crying. </p>



<p>I didn&#8217;t feel jealous of any woman, no. I felt inadequate, incomplete. </p>



<p>At one time, I desperately wanted to have a baby to make myself believe that I am worth it. To make myself believe that I wasn‘t inadequate, that I was complete. </p>



<p>I thank myself for slapping some sense back to me and not making any radical decisions that would hurt me even more. Even if I had a child then, I would still be terrible. A child is a huge responsibility and I couldn’t have been a good mother then. </p>



<h2>This journey doesn’t end here</h2>



<p>I shared with you my three dirty secrets of living with PCOS in brief. There is a lot more to talk about and a lot more to share. I will try to post regularly. Though I initially thought about posting two articles every week, I now think that my busy work schedule may not allow me to write such long posts twice a week. I will write at least once a week and if I write more, I will update you. To best keep track of these posts, subscribe to my blog or just follow my Instagram @cosmicjuni  </p>

			</div><!-- .entry-content -->

	<footer class="entry-footer">
		<span class="cat-links">Posted in <a href="https://spiritueljoy.com/tag/pcos/" rel="category tag">PCOS</a></span><span class="tags-links">Tagged <a href="https://spiritueljoy.com/tag/hirsutism/" rel="tag">hirsutism</a> <a href="https://spiritueljoy.com/tag/pcos/" rel="tag">PCOS</a> <a href="https://spiritueljoy.com/tag/polycystic-ovarian-syndrome/" rel="tag">Polycystic Ovarian Syndrome</a> <a href="https://spiritueljoy.com/tag/polycystic-ovaries/" rel="tag">polycystic ovaries</a></span><span class="comments-link"><a href="https://spiritueljoy.com/2019/11/10/the-dirty-secrets-behind-a-life-with-pcos/#respond">Leave a comment</a></span>	</footer><!-- .entry-footer -->
</article><!-- #post-## -->

			
				
<article id="post-917" class="post-917 post type-post status-publish format-standard has-post-thumbnail hentry category-musings tag-dystopia tag-fables tag-millennial tag-short-story">

	
	<a class="post-thumbnail" href="https://spiritueljoy.com/2019/09/16/its-dark-outside/">
		<img width="680" height="383" src="https://joyvillehome.files.wordpress.com/2019/09/city-1487891_1920.jpg?w=680" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" loading="lazy" srcset="https://joyvillehome.files.wordpress.com/2019/09/city-1487891_1920.jpg?w=680 680w, https://joyvillehome.files.wordpress.com/2019/09/city-1487891_1920.jpg?w=1360 1360w, https://joyvillehome.files.wordpress.com/2019/09/city-1487891_1920.jpg?w=150 150w, https://joyvillehome.files.wordpress.com/2019/09/city-1487891_1920.jpg?w=300 300w, https://joyvillehome.files.wordpress.com/2019/09/city-1487891_1920.jpg?w=768 768w, https://joyvillehome.files.wordpress.com/2019/09/city-1487891_1920.jpg?w=1024 1024w" sizes="(max-width: 680px) 100vw, 680px" data-attachment-id="919" data-permalink="https://spiritueljoy.com/2019/09/16/its-dark-outside/city-1487891_1920/" data-orig-file="https://joyvillehome.files.wordpress.com/2019/09/city-1487891_1920.jpg" data-orig-size="1920,1080" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;1.8&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D3100&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;50&quot;,&quot;iso&quot;:&quot;1600&quot;,&quot;shutter_speed&quot;:&quot;0.01&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="city-1487891_1920" data-image-description="" data-medium-file="https://joyvillehome.files.wordpress.com/2019/09/city-1487891_1920.jpg?w=300" data-large-file="https://joyvillehome.files.wordpress.com/2019/09/city-1487891_1920.jpg?w=680" />	</a>

	
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://spiritueljoy.com/2019/09/16/its-dark-outside/" rel="bookmark">It&#8217;s Dark Outside</a></h1>
				<div class="entry-meta">
			<span class="posted-on">Posted on <a href="https://spiritueljoy.com/2019/09/16/its-dark-outside/" rel="bookmark"><time class="entry-date published" datetime="2019-09-16T19:20:27+05:30">September 16, 2019</time><time class="updated" datetime="2019-09-16T19:23:34+05:30">September 16, 2019</time></a></span><span class="byline"> by <span class="author vcard"><a class="url fn n" href="https://spiritueljoy.com/author/nehajoychauhan/">NehaJoyChauhan</a></span></span>		</div><!-- .entry-meta -->
			</header><!-- .entry-header -->

	<div class="entry-content">
		
<p>Light plays with our brain like a kid plays with his least favorite, but only toy. A few hours ago I entered this building. The sun had just started to shine in its full glory and as I entered the building, my eyes took a little time to adjust to the lights that somehow shine brighter than the sun, within this old and crappy building. </p>



<p>I spend the day working- noticing a thin layer of dust on the window sill, experiencing the bland taste of the food I eat, feeling the cold stainless steel touch my tongue and lips as I eat with a spoon, staring at the yellow, crooked teeth of the person sitting right in front of me. Uh! If there is anything I hate in this world, it is crooked teeth, especially when they are stained yellow because of constant smoking. This dull, bland food and your crooked teeth&#8230; uggghh&#8230; my eyes need cleansing. I need acid. </p>



<p>I went to pick up some stationery in the supply room and just as I got my hands  on the on the rim of white paper, I noticed a spider web on the top right corner of this weird old shelf.  I looked around to find something to clear it and found nothing. So I carefully removed one piece of shiny, bright, spotless white paper to gently swipe the web away. </p>



<p>Blame the short height, I had to stand on my toes to reach the corner. I couldn&#8217;t, it seemed obvious. But in my effort to reach the crappy old right corner of that crappy old shelf, I almost fell right on the shelf. Pixie dust sprinkled from the crappy old top of the shelf right on my head and powdered the tip of my nose along with the white papers. Just then, out of pure instinct mixed with disgust, I wiped my nose and then the paper.</p>



<p>What a mess! Now I don&#8217;t have dust particles on my face and papers, I have dust waves. </p>



<p>The day passes like it never existed and light in this crappy old building made me believe it was still daytime.  What? 6 p.m. already? I need to go out of this building. There may still be some sunshine. I haven&#8217;t lost my sunshine yet. It is exactly how I left it when I entered this crappy old building. I pack my bag in haste and rush outside only to find that its dark outside. </p>



<p>A lightening bolt hit my heavy heart. </p>



<p>&#8220;It&#8217;s 6 p.m. woman. What did you expect?&#8221;</p>



<p>I expected sunshine but it&#8217;s dark outside. </p>

			</div><!-- .entry-content -->

	<footer class="entry-footer">
		<span class="cat-links">Posted in <a href="https://spiritueljoy.com/category/musings/" rel="category tag">Musings</a></span><span class="tags-links">Tagged <a href="https://spiritueljoy.com/tag/dystopia/" rel="tag">dystopia</a> <a href="https://spiritueljoy.com/tag/fables/" rel="tag">fables</a> <a href="https://spiritueljoy.com/tag/millennial/" rel="tag">millennial</a> <a href="https://spiritueljoy.com/tag/short-story/" rel="tag">short story</a></span><span class="comments-link"><a href="https://spiritueljoy.com/2019/09/16/its-dark-outside/#respond">Leave a comment</a></span>	</footer><!-- .entry-footer -->
</article><!-- #post-## -->

			
				
<article id="post-913" class="post-913 post type-post status-publish format-standard hentry category-musings tag-generation-gap tag-millennial tag-movie tag-obligations tag-sick-society tag-social-norms tag-society">

	
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://spiritueljoy.com/2019/09/15/its-a-hard-knock-life/" rel="bookmark">It&#8217;s A Hard Knock Life</a></h1>
				<div class="entry-meta">
			<span class="posted-on">Posted on <a href="https://spiritueljoy.com/2019/09/15/its-a-hard-knock-life/" rel="bookmark"><time class="entry-date published" datetime="2019-09-15T20:29:28+05:30">September 15, 2019</time><time class="updated" datetime="2019-09-15T20:33:25+05:30">September 15, 2019</time></a></span><span class="byline"> by <span class="author vcard"><a class="url fn n" href="https://spiritueljoy.com/author/nehajoychauhan/">NehaJoyChauhan</a></span></span>		</div><!-- .entry-meta -->
			</header><!-- .entry-header -->

	<div class="entry-content">
		
<p>There is a movie called &#8220;Annie&#8221; that I so dearly love. It is about an orphan named Annie, who is adventurous, courageous and scarily optimistic about life. Sometimes she gets sad but when adversity knocks her door, Annie finishes her chores like a boss, sings &#8220;It&#8217;s a Hard Knock Life&#8221; and plans her escape from the orphanage. </p>



<p>Here is the song, just in case-</p>



<figure class="wp-block-embed-youtube wp-block-embed is-type-rich wp-embed-aspect-16-9 wp-has-aspect-ratio"><div class="wp-block-embed__wrapper">
<div class="jetpack-video-wrapper"><span class="embed-youtube" style="text-align:center; display: block;"><iframe class='youtube-player' width='680' height='383' src='https://www.youtube.com/embed/-0bOH8ABpco?version=3&#038;rel=1&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;fs=1&#038;hl=en&#038;autohide=2&#038;wmode=transparent' allowfullscreen='true' style='border:0;' sandbox='allow-scripts allow-same-origin allow-popups allow-presentation'></iframe></span></div>
</div></figure>



<p>I must say I have a thing for musicals but this is my favorite. </p>



<p>So why am I talking about a hard knock life on a September Sunday, when the temperatures seem to fluctuate more often than a PMSing woman&#8217;s moods? </p>



<p>It&#8217;s because I want to talk about it today. It&#8217;s because I have a newfound appreciation for what I write and its because I have started to realize that I need to write more than I think. To get some background on that state of mind, click to read <a href="https://joyville.home.blog/2019/09/07/the-right-shift-at-an-opportune-moment/">&#8220;The Right Shift At An Opportune Moment.&#8221;</a></p>



<p>Anyway, let&#8217;s get back to topic. </p>



<h2>Why is this a hard knock life?</h2>



<p>It is no longer about responsibilities. Humans are pretty adept at handling responsibilities, especially if you are an Indian. We are aware about our &#8220;responsibilities&#8221; in life from a very young age and grow very comfortable with them as we grow older.  Responsibilities are not making life harder. </p>



<p>That job is reserved for &#8220;obligations.&#8221;</p>



<p>Sooo many different types of obligation hovering over these responsible shoulders that sometimes it becomes difficult to find the self- just like it becomes difficult to find a needle in the haystack. </p>



<p>Don&#8217;t get me wrong. I am not demeaning the struggles of millions of poor and underprivileged people. They are being served the shorter end of the stick. I am talking about the uneasiness of a privileged life. We don&#8217;t sleep empty belly, we have clothes to wear, more than a couple of shoe pairs and maybe festive dresses too that we don&#8217;t like to repeat. </p>



<p>I am talking about that emptiness you feel in your heart when your belly is full and so is your mind. Even after fulfilling all the responsibilities and obligations that come our way, we still have to feel this emptiness, this void. </p>



<h2>An obligation after an obligation</h2>



<p>I am obliged to laugh at my boss&#8217; jokes. Alright, understandable. That guy signs my paychecks. </p>



<p>I am obliged to tell my wife that she is looking pretty. Alright, understandable. She is my wife after all and it is my duty to keep her happy. </p>



<p>I am obliged to tell my husband I love him and don&#8217;t look at another man. Alright, understandable. Men have feelings and they are sensitive too. </p>



<p>I am obliged to tell my parents that I love them and sometimes I will give in to some of their demands that make zero sense to me. Alright, understandable. They are my parents after all. </p>



<p>But why I do I have to share condolence messages on social media every time a celebrity dies? It doesn&#8217;t make a difference to my life. If they had a profound impact on my psyche, that&#8217;s a totally different thing but not everyone does that. </p>



<p>Why am I obliged to wish you Happy Birthday. I don&#8217;t even know you. </p>



<p>Why am I obliged to see pictures of film stars getting married? WTF, take it out of my sight. </p>



<p>These obligations are not always self-imposed. They are imposed by the media and this huge market we are living in where we are both the consumer and the consumed. So if some random celeb gets married, my timeline is filled with their pictures. Why? Oh god, why? My curiosity about your wedding is non-existent and even if it exists, it can be satiated with a couple of pictures. I don&#8217;t want to feel obliged to see their pictures because a random algorithm decides that this is what people of my age and gender. living in my particular locality will be interested in. </p>



<p>There is a constant obligation to conform to some norms. You have to look a certain way, draw your eyebrows a certain way (draw your ****ing eyebrows?), wear a certain color because of my complexion, a certain style because of my body shape, use a certain shampoo because of my hair type&#8230; WHY?</p>



<p>Why am I obliged to watch news that consists of useless panels of guests screaming at each other,shouting their propaganda?</p>



<p>Why am I obliged to participate in this mess?</p>



<h2>Life is hard you know</h2>



<p>The life that our parents and grandparents lived wasn&#8217;t easier in any way. It involved labor and toil and struggles and what not. I can&#8217;t romaticize the past. It is worthless. Every decade, every generation has its problems. Ours is that of an &#8220;over-occupied mind.&#8221;</p>



<p>Our problem is that our mind is like a Boeing Jet. It is overbooked and all passengers show up for the flight. You are stuck in a state of inertia because too many people are waiting for their flight. They WANT YOUR ATTENTION and you are obliged to give it to them. So you overload the flight with extra passengers and luggage, praying to any Holy spirit, any god, any higher power to safely land at your destination. </p>



<p>In the evening, you eventually reach the destination but your jet is suddenly emptied of its load and now it is feeling exhausted. Your mind is so tired that you can&#8217;t fall asleep. So you do what good jet pilots do- surf social media networks. </p>



<p>Next day, you are tired, your jet is quite exhausted and lo and behold! the flight is overbooked again. </p>



<p>You are smart enough to realize what will happen to that jet and that pilot, right?</p>



<p>The same is happening with our minds. So many obligations arising out of nowhere, everything demanding your attention. Oh! that Diwali sale! oh EOSS! oh! 50% off. Oh! this, Oh! that. </p>



<p>It feels crazy because you are not in control of these obligations. It would take a lot of effort to ensure that they bother you a little less and who has the energy to achieve one more task on an otherwise busy day. </p>



<p>Shradhs have started. Navratri is upcoming. </p>



<p>Remember that one guy/girl who you have never met in your life and don&#8217;t intend to get to know in the future? They are getting married and you have to buy new clothes and shoes for your family so you can attend that wedding. You know why? Because obligations. </p>



<p>Good luck!</p>

			</div><!-- .entry-content -->

	<footer class="entry-footer">
		<span class="cat-links">Posted in <a href="https://spiritueljoy.com/category/musings/" rel="category tag">Musings</a></span><span class="tags-links">Tagged <a href="https://spiritueljoy.com/tag/generation-gap/" rel="tag">generation gap</a> <a href="https://spiritueljoy.com/tag/millennial/" rel="tag">millennial</a> <a href="https://spiritueljoy.com/tag/movie/" rel="tag">movie</a> <a href="https://spiritueljoy.com/tag/obligations/" rel="tag">obligations</a> <a href="https://spiritueljoy.com/tag/sick-society/" rel="tag">sick society</a> <a href="https://spiritueljoy.com/tag/social-norms/" rel="tag">social norms</a> <a href="https://spiritueljoy.com/tag/society/" rel="tag">society</a></span><span class="comments-link"><a href="https://spiritueljoy.com/2019/09/15/its-a-hard-knock-life/#respond">Leave a comment</a></span>	</footer><!-- .entry-footer -->
</article><!-- #post-## -->

			
				
<article id="post-906" class="post-906 post type-post status-publish format-standard hentry category-uncategorized tag-change tag-thoughts">

	
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://spiritueljoy.com/2019/09/07/the-right-shift-at-an-opportune-moment/" rel="bookmark">The Right Shift At An Opportune Moment</a></h1>
				<div class="entry-meta">
			<span class="posted-on">Posted on <a href="https://spiritueljoy.com/2019/09/07/the-right-shift-at-an-opportune-moment/" rel="bookmark"><time class="entry-date published updated" datetime="2019-09-07T10:00:43+05:30">September 7, 2019</time></a></span><span class="byline"> by <span class="author vcard"><a class="url fn n" href="https://spiritueljoy.com/author/nehajoychauhan/">NehaJoyChauhan</a></span></span>		</div><!-- .entry-meta -->
			</header><!-- .entry-header -->

	<div class="entry-content">
		
<p>It is interesting how things change with time. It is interesting how change sometimes is not a &#8216;force&#8217; but a gradual transition towards what you ultimately desire. </p>



<p>In April this year, I took down my original website because it was getting harder by the day to ensure that I was writing frequently. I was finding it harder to connect, harder to share, harder to express. No doubt there was also some kind of hesitancy. Then there is always that excuse &#8221; I didn&#8217;t have the time.&#8221;</p>



<p>But the time between April and August was the only time in my life (since 2010 i believe) that I did not have an active running blog. It first felt liberating. No more items to check off. One less responsibility but eventually it felt like a void that I would always be unable to fulfill. That is where this blog comes into play. </p>



<p>With 28 years of my life, now things seem to have finally reached a destination where I can say that yes, I can now describe what I do, what I aspire for and who I really am. Anything that happened before this was sometimes a foolish attempt to make mistakes that I would be proud of or a desperate attempt to fit in with the crowd. Everything. </p>



<p>But now things will change. And yes, they will change for sure. I will write about things that I have known and felt, things that I stand for and things that I REALLY want to share with the world. I am not sure yet if I want to publish any more of my poems and fables online but hopefully I will get some clarity on that soon. </p>



<p>Some people will say that my writing style is unusual. Trust me, I have tried to change but this is where it eventually ends up.  I know why this is important to me to stick to how I write. I write with my heart. I don&#8217;t really &#8220;plan&#8221; things when I write. I just know that I have to. Something strikes my mind, evokes emotions and words in my heart and creates a mighty hurricane that has to hit land (in this case a paper or this screen). </p>



<blockquote class="wp-block-quote"><p>I write because I write because I write. </p></blockquote>



<p>For the past 8 years (well almost 8 years) I have written countless articles for clients- all structured well in advance, all great to read, all paid well for. But the problem is that those articles don&#8217;t define my thought process properly. So yes, if these articles that I write in moments of frenzy are scattered, haywire and such- so be it. </p>

			</div><!-- .entry-content -->

	<footer class="entry-footer">
		<span class="cat-links">Posted in <a href="https://spiritueljoy.com/category/uncategorized/" rel="category tag">Uncategorized</a></span><span class="tags-links">Tagged <a href="https://spiritueljoy.com/tag/change/" rel="tag">change</a> <a href="https://spiritueljoy.com/tag/thoughts/" rel="tag">thoughts</a></span><span class="comments-link"><a href="https://spiritueljoy.com/2019/09/07/the-right-shift-at-an-opportune-moment/#respond">Leave a comment</a></span>	</footer><!-- .entry-footer -->
</article><!-- #post-## -->

			
				
<article id="post-895" class="post-895 post type-post status-publish format-standard has-post-thumbnail hentry category-musings category-spiritual tag-love tag-poet tag-rumi tag-sufi">

	
	<a class="post-thumbnail" href="https://spiritueljoy.com/2019/03/14/7-favorite-rumi-quotes-my-musings/">
			</a>

	
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://spiritueljoy.com/2019/03/14/7-favorite-rumi-quotes-my-musings/" rel="bookmark">7 Favorite Rumi Quotes &amp; My Musings</a></h1>
				<div class="entry-meta">
			<span class="posted-on">Posted on <a href="https://spiritueljoy.com/2019/03/14/7-favorite-rumi-quotes-my-musings/" rel="bookmark"><time class="entry-date published updated" datetime="2019-03-14T10:10:11+05:30">March 14, 2019</time></a></span><span class="byline"> by <span class="author vcard"><a class="url fn n" href="https://spiritueljoy.com/author/nehajoychauhan/">NehaJoyChauhan</a></span></span>		</div><!-- .entry-meta -->
			</header><!-- .entry-header -->

	<div class="entry-content">
		
<p>Rumi is of
internet&#8217;s most famous poets. This Persian poet has done a lot for the
romantics, giving them hope, helping them solve life troubles and even get the
courage to face life. The courage and confidence that Rumi quotes can instill
in you are par excellence. I first came into contact with his writings when I
had just started exploring Sufism- a mystical branch of Islam. Some call it
esoteric while the other define it as mystical, magical.</p>



<p>Rumi quotes are all
around the internet now. Everyone knows &#8216;what you seek is seeking you&#8217;. The
west is somehow enthralled with the idea of some magical romantic poet who
existed centuries ago. Sufism should not be confused with primitive
romanticism, even though they share some similarities. When you read about
Sufism a little more, you find that the roots of this practice is in fact a
service to the almighty. If you think Rumi quotes only define a certain aspect
of life, like love, you may want to think again.</p>



<p>Everybody will have a different meaning for whatever they have heard or read about Rumi. An essential part of <strong>writing</strong> and expressing through any art form is to let the viewer, listener or your audience define a meaning for what they have read, seen or heard. I will be dedicating this post to 7 of my favorite Rumi quotes and what they mean to me.</p>



<h2><strong>Life is a balance between holding on and letting go</strong></h2>



<figure class="wp-block-image"><img data-attachment-id="897" data-permalink="https://spiritueljoy.com/2012/09/02/glorifying-victimization/victim/" data-orig-file="https://joyvillehome.files.wordpress.com/2012/09/2269c-victim.jpg" data-orig-size="284,178" data-comments-opened="0" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="victim" data-image-description="" data-medium-file="https://joyvillehome.files.wordpress.com/2012/09/2269c-victim.jpg?w=284" data-large-file="https://joyvillehome.files.wordpress.com/2012/09/2269c-victim.jpg?w=284" src="https://i0.wp.com/nehajoychauhan.com/wp-content/uploads/2019/03/1.png" alt="" class="wp-image-897" /></figure>



<p>Life indeed is about
balance. You will often come across feelings that are no longer serving their
purpose and people who are not important in your life. No, it is not about you
being a bad person. People change and so do circumstances. All the people we
know have a certain role to play in our lives and hence, they must all be
acknowledged for it. However, it makes no sense to keep holding on to them,
long after they are gone. Hold on to what is important now. Hold on to what
your heart thinks is dear to you right now and leave the old aside.</p>



<p>We cannot walk with dead weight on our shoulders. Why are walking with emotional baggage then? Let it go.</p>



<h2><strong>The only lasting beauty is the beauty of the heart</strong></h2>



<figure class="wp-block-image"><img data-attachment-id="898" data-permalink="https://spiritueljoy.com/2012/04/12/same-old-things/images3/" data-orig-file="https://joyvillehome.files.wordpress.com/2012/04/1afcb-images3.jpg" data-orig-size="275,183" data-comments-opened="0" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="images+(3)" data-image-description="" data-medium-file="https://joyvillehome.files.wordpress.com/2012/04/1afcb-images3.jpg?w=275" data-large-file="https://joyvillehome.files.wordpress.com/2012/04/1afcb-images3.jpg?w=275" src="https://i0.wp.com/nehajoychauhan.com/wp-content/uploads/2019/03/2.png" alt="" class="wp-image-898" /></figure>



<p>The beauty of the
face will fade with time. Your body will start experiencing troubles. You will
never be the same when you grow older. It will all fade away and we will become
a monument to our former selves, suggesting nothing but what &#8216;had been&#8217;. Why run
after the beauty of the skin then? Real beauty lies right inside your heart. It
will last forever.</p>



<p>A pure heart must
not be contaminated with the vices of the world.</p>



<p>The heart must learn
to love and be loved by others too. The heart must know that its goodness
cannot be corrupted by anyone else. It needs nothing but a steady supply of
love and compassion to grow into a beautiful space for the loved one to live
in.</p>



<p>No matter how old your body gets, the heart will continue to shine. If you love deeply and truly, the heart will age backwards. Trust me. This happens. You can live a wonderful live, a healthy and happy life, only if you maintain the beauty of your heart.</p>



<h2><strong>It is rain that grows flowers, not thunder</strong></h2>



<figure class="wp-block-image"><img src="https://i1.wp.com/nehajoychauhan.com/wp-content/uploads/2019/03/3.png" alt="" class="wp-image-899" /></figure>



<p>What is the
difference between building a room and planting flowers? Have you ever imagined
what could be the only difference between these two similar practices that
create a beautiful, living flower and a building where people can go to work
but with no life of its own?</p>



<p>The construction
worker and the gardener work with equal strength, equal patience and equal hard
work. They use the materials made of mother earth to get the end result and
yet, one gets life and the other is lifeless. Why?</p>



<p>It is because the
gardener is providing something more human to the plant. He is nurturing the
flower with love. You must have come across gardeners who are not as dedicated
to their plants. People who don&#8217;t love their plants do not produce that sweet
smelling rose that can enlighten a lover&#8217;s heart. You can use all your craft to
create a beautiful plantation or a beautiful building, but it is the feeling of
nurturing care that would make your flower look and smell beautiful.</p>



<p>This Rumi quote has helped me understand relationships and parenting. Truly, you need to nurture whatever you have with all the love and care in the world. It could thunder a little while it is raining, but it will not rain a little when it is thundering all the time. You can decide. How do you want your relationships to move further? Do you want thunder or rain?</p>



<h2><strong>The art of knowing is knowing what to ignore</strong></h2>



<figure class="wp-block-image"><img src="https://i0.wp.com/nehajoychauhan.com/wp-content/uploads/2019/03/4.png" alt="" class="wp-image-900" /></figure>



<p>Do we really know
all that is there to know in the world? No.</p>



<p>The idea that I
received from this quote was to ensure that I stay away from negative people
and negative talk in my life. There is an overwhelming amount of fear and
negativity in the air. There are toxic people, toxic thoughts, toxic ideologies
and poisoning exchange of words between people. Can I really make my way
through this maze? Yes I can.</p>



<p>I choose to ignore
what harms my balance. No, I do not ignore criticism. If you know better than
me and want to help me in bettering myself, you are most welcome. We will
create something that is good for everyone. I might fight for my ideas and you
can fight for them too. We can talk, we can share ideas. However, I will not
let you fill my mind with toxic thoughts about myself. You can&#8217;t feed me
negative news, full of fear and hatred and expect me to react. I won&#8217;t. I don&#8217;t
feed myself such thoughts. As a result, now I only read news. I barely ever
watch news. I am more selective with what the mass media is trying to feed my
brain. Hence, I feel good.</p>



<h2><strong>Don&#8217;t grieve. Anything you lose comes around in another form</strong></h2>



<figure class="wp-block-image"><img src="https://i2.wp.com/nehajoychauhan.com/wp-content/uploads/2019/03/5.png" alt="" class="wp-image-901" /></figure>



<p>In many mystical
Indian traditions, the human body is referred to as &#8216;mitti&#8217;. This hindi word
means &#8216;earth&#8217;. The human is made of mitti or earth and when he dies, he goes
back to the earth. His body becomes one with the land he was born in. His soul
then recreates another human form with the same earth.</p>



<p>No matter how
mystical and philosophical it sounds, it is true. Matter can neither be
created, nor be destroyed. Things only change their form. When water freezes to
become ice, the composition of the new hardened mass remains the same- H2O.</p>



<p>Should we not grieve
at all? What happens when we lose people we love, when relationships break?</p>



<p>I think grief is
natural and must be allowed some time to seep in and go away. Think of grief as
water. It must be consumed and then, it must be eliminated from the body. If
you stop grief, you will be toxic. If you continue living in grief, you will be
toxic. Strike a balance. Anything and everything that you have lost till date
deserves a moment of grief. Just don&#8217;t make it a lifetime of a grief-struck
lonely heart. Move on. Matter changes form. The human body has merely been
destroyed for the soul to enter a new body. So many ancient cultures believe in
rebirth. The soul is eternal and it leaves all earthly bonds behind with death.</p>



<p>Read my <a href="http://nehajoychauhan.com/2012/09/death-is-beautiful/">thoughts on death</a> and how it affected my life when I lost someone who I loved so dearly. Many more people ask about death and the feelings of guilt and grief associated with it. Will be writing a post on it soon.</p>



<h2><strong>Whatever you love, you are</strong></h2>



<figure class="wp-block-image"><img src="https://i0.wp.com/nehajoychauhan.com/wp-content/uploads/2019/03/6.png" alt="" class="wp-image-902" /></figure>



<p>Believe me. What you
truly, deeply, passionately love is what defines you. What you do when you are
in love defines your character more than anything else. Do you know why? Love
is this basic, carnal, primitive emotion. It is probably the only emotion that
makes us so human. What would humans be without love? Where will ambition,
desire and even hatred reside if there is no love in our hearts.</p>



<p>If you love chocolate cakes, you may be a lover of comforts. You may be in deep need of comfort from a human that is being fulfilled by a big cake. If you love exercise, you may be in need of self-appreciation. You may want to feel better, get better self-esteem. You may love money because you love the comfort, the luxuries and even the notoriety associated with money. No don&#8217;t judge me with what I am saying here. This is the truth, isn&#8217;t it?</p>



<h2><strong>A thousand half-loves must be foresaken to take one
whole heart home</strong></h2>



<figure class="wp-block-image"><img data-attachment-id="903" data-permalink="https://spiritueljoy.com/hinduism-1633815_1920/" data-orig-file="https://joyvillehome.files.wordpress.com/2019/08/hinduism-1633815_1920.jpg" data-orig-size="1920,960" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="hinduism-1633815_1920" data-image-description="" data-medium-file="https://joyvillehome.files.wordpress.com/2019/08/hinduism-1633815_1920.jpg?w=300" data-large-file="https://joyvillehome.files.wordpress.com/2019/08/hinduism-1633815_1920.jpg?w=680" src="https://i0.wp.com/nehajoychauhan.com/wp-content/uploads/2019/03/7.png" alt="" class="wp-image-903" /></figure>



<p>Love is the most
natural feeling known to man and yet, we are all entangled in relationships
that do nothing for our affections. When you look back in life, you will find
many half-loves, many instances where a rush of emotions made you feel like you
are falling head over heels for someone. You will remember moments when you
felt like you are crushing over someone so hard that you will eventually be
broken into pieces.</p>



<p>Truth be told. We
are all broken into pieces. We should learn to add a premium on love.</p>



<p>Anybody who appears
attractive to the eye may not be the one you love.</p>



<p>Let it last. Let it
brew. Let it simmer.</p>



<p>Let it develop like
a perfume. Don&#8217;t go barging on cheap fragrances just because they are
available. Wait. You may not be in love more than once in a lifetime. That love
is the truest, deepest form of passion that your heart will feel. The others
may be companions, people you spend time with, people you simply &#8216;want&#8217; to get.
I think we should give love some time. Don&#8217;t just jump into it. Wait. You will
be saved from many heartbreaks and save the affection for the one who truly
deserves it.</p>



<p>These were my
thoughts and musings on my 7 favorite Rumi quotes. You can perceive them
differently or even like what I just said. The idea is to understand that the
Life Makeover I am talking about isn&#8217;t all about making your hair thicker and
your skin younger. It is also about growing mentally, emotionally and
spiritually. I want all of us to expose us to the beauty of books and poetry,
the love of literature and even economics and combine all of this to grow a
better person each day.</p>



<p>Do these Rumi quotes make you feel romantic and long for the one you love? I have captured a few shades of love in my previous posts and poetry. Read them and let me know what you think about them.</p>



<p><a href="http://nehajoychauhan.com/2013/01/when-i-said-i-love-you/">When I Said I
Love You</a></p>



<p><a href="http://nehajoychauhan.com/2016/06/finding-convenient-love-story/">Finding
A Convenient Love Story</a></p>



<p><a href="http://nehajoychauhan.com/2016/10/anxious-bipolar-love/">Anxious Bipolar
Love</a></p>



<p><a href="http://nehajoychauhan.com/2017/01/love-love-love-alone/">Love, Love, Love
Alone</a></p>

			</div><!-- .entry-content -->

	<footer class="entry-footer">
		<span class="cat-links">Posted in <a href="https://spiritueljoy.com/category/musings/" rel="category tag">Musings</a>, <a href="https://spiritueljoy.com/category/spiritual/" rel="category tag">Spiritual</a></span><span class="tags-links">Tagged <a href="https://spiritueljoy.com/tag/love/" rel="tag">love</a> <a href="https://spiritueljoy.com/tag/poet/" rel="tag">poet</a> <a href="https://spiritueljoy.com/tag/rumi/" rel="tag">rumi</a> <a href="https://spiritueljoy.com/tag/sufi/" rel="tag">sufi</a></span><span class="comments-link"><a href="https://spiritueljoy.com/2019/03/14/7-favorite-rumi-quotes-my-musings/#respond">Leave a comment</a></span>	</footer><!-- .entry-footer -->
</article><!-- #post-## -->

			
				
<article id="post-883" class="post-883 post type-post status-publish format-standard has-post-thumbnail hentry category-musings category-verse">

	
	<a class="post-thumbnail" href="https://spiritueljoy.com/2019/03/04/only-winter-morning-remember/">
			</a>

	
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://spiritueljoy.com/2019/03/04/only-winter-morning-remember/" rel="bookmark">The Only Winter Morning I Remember</a></h1>
				<div class="entry-meta">
			<span class="posted-on">Posted on <a href="https://spiritueljoy.com/2019/03/04/only-winter-morning-remember/" rel="bookmark"><time class="entry-date published updated" datetime="2019-03-04T12:45:24+05:30">March 4, 2019</time></a></span><span class="byline"> by <span class="author vcard"><a class="url fn n" href="https://spiritueljoy.com/author/nehajoychauhan/">NehaJoyChauhan</a></span></span>		</div><!-- .entry-meta -->
			</header><!-- .entry-header -->

	<div class="entry-content">
		
<p>When winter comes knocking on my door every year, it refreshes my memory with one faint moment in my history that holds more regard for me than ever. It is not just one memory per say. It’s more like a compound memory- invoking a few more faint, very faint memories associated with winter.</p>



<p>In a quaint little town in the foothill of Himalayas, with Eucalyptus trees, tea estates and several buildings reminiscent of the days of the British Raj, lies my memory- unhurt, unchanged by the way this place has changed over the years. It’s a winter morning and I am walking back home. I am with the guy who was the first and only one who touched my heart in ways I could never imagine. I know it now because I never felt a connection like that before, or ever again.</p>



<p>We were similar, but so different. He-the effervescent fawn, I the quiet river. He bubbling with joy, while I… I was just those silent types back in the day. Everything you could imagine in a 16-year-old with glasses on, who spends most of her time reading books and watching the Discovery Channel. We shared so many interests- reading, writing, eloquence. So much that he almost seemed like a perfect fit for me.</p>



<p>And no… I wasn’t even thinking long term back in the day. We were very <a href="http://Neha Joy Chauhan- The Only Winter Morning I Remember">good friends</a> but never anything more than that. I just felt comfortable in his presence- almost as comfortable as I was with my books.</p>



<p>It is the same road, rather small. Empty, as it used to be back in the day. The sun is shy, not quite ready to show its glorious face to the world. And an 10 am, two teens, dressed like they were stuck in an avalanche, were walking side by side. The morning was quiet, the rush and madness of the early morning hours had passed and we saw no vehicles, heard no people. All I saw around me were tall boundary walls of beautiful homes, laden with beautiful deep pink flowers.</p>



<p>It was difficult to focus on the road, difficult to focus on anything else. I wasn’t stepping on concrete, I was walking on the clouds. Happy, and I don’t know for what. I could see the flowers all around me, the trees, the houses- all in the background of my little, momentary paradise.</p>



<p>I could smell someone burning leaves somewhere down the road. And I have loved the smell of those burning leaves since I was a child. I had walked down the same path with my grandfather and brother, when we were little kids and had to write an exam to enter my new school. The smell of those leaves never changes- its earthy, beautiful, almost therapeutic.</p>



<p>I could hear our footsteps like I always have and I am walking fast, faster, faster than my much taller counterpart who is strolling his way with hands in his pockets and smiling. The whole world looks like a 3D painting in oil. Colors are bleeding into each other till they are no longer distinctly identifiable and suddenly time stops.</p>



<p>I am walking faster, now unaware of his presence.</p>



<p>Such a small memory, emerging from the dead every year like it was yesterday. I barely remember anything about him or me or the times in which we lived together, in our complex teen years. All that I remember is that every year, when winter says hello and the mornings refuse to show me the sunshine, I remember me walking on the road by your side and it means so much to me that I have never spoken about it before. I will never speak about it again.</p>



<p> <br>Note- The post was originally published on Medium. You can click to <a href="https://medium.com/@nehajoy28/the-only-winter-morning-i-remember-9e7f0f28305d">read it here</a> <br></p>

			</div><!-- .entry-content -->

	<footer class="entry-footer">
		<span class="cat-links">Posted in <a href="https://spiritueljoy.com/category/musings/" rel="category tag">Musings</a>, <a href="https://spiritueljoy.com/category/verse/" rel="category tag">Verse</a></span><span class="comments-link"><a href="https://spiritueljoy.com/2019/03/04/only-winter-morning-remember/#respond">Leave a comment</a></span>	</footer><!-- .entry-footer -->
</article><!-- #post-## -->

			
				
<article id="post-784" class="post-784 post type-post status-publish format-standard has-post-thumbnail hentry category-musings tag-couples tag-love tag-relationships">

	
	<a class="post-thumbnail" href="https://spiritueljoy.com/2019/02/27/love-love-love-alone/">
			</a>

	
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://spiritueljoy.com/2019/02/27/love-love-love-alone/" rel="bookmark">Love, Love, Love Alone (Or Maybe More)</a></h1>
				<div class="entry-meta">
			<span class="posted-on">Posted on <a href="https://spiritueljoy.com/2019/02/27/love-love-love-alone/" rel="bookmark"><time class="entry-date published updated" datetime="2019-02-27T12:27:42+05:30">February 27, 2019</time></a></span><span class="byline"> by <span class="author vcard"><a class="url fn n" href="https://spiritueljoy.com/author/nehajoychauhan/">NehaJoyChauhan</a></span></span>		</div><!-- .entry-meta -->
			</header><!-- .entry-header -->

	<div class="entry-content">
		
<p>He asked me what love is. In my insecurity and my inability to talk about such emotional matters, I just said, &#8216;I don&#8217;t know&#8217;. </p>



<p>The answer to the question was simple. I was always following the lead. I always felt I knew what the answer was but in the bid to be my capitalist, authoritarian, &#8216;what-feelings?&#8217; self, I forgot that there is a sensitive side to me that needs to be nourished and cared for, every now and then. As I said, this year is going to be a completely new experience for me. I am slowly but surely detangling emotional locks, finding the keys one at a time.</p>



<p>The biggest problem
with me? Love.</p>



<p>There are many
people around me who claim to love me. Some tell me that they have a great time
with me, some like the conversations. Some also liked to be bossed around by me
(no kidding). All claim to love me. All of them. But, it never really feels like
I am being loved. I can easily live without the company and affection of about
80% people in my life. Sure, enjoying company is one thing. Sure, talking
regularly is one thing. But love, is it love when you talk to someone regularly
and enjoy their presence?</p>



<p>Absolutely not. Love
is no more a feeling or a verb. It is just an experience that is coming too
cheap. Why? People have started associating love with short-term affections,
attractions and plain admiration. Remember how people tell you that they
absolutely &#8216;LOVE&#8217; your hair, your new shirt or dress? They don&#8217;t &#8216;LOVE&#8217; it.
They are just using love as a superlative to &#8216;like&#8217; or &#8216;admire&#8217;. So what is
love in the end? What does it mean to love? Is carnal, physical, sexual or
romantic love different than that of parental love?</p>



<p>If you ask me, I
will say NO. </p>



<h2><strong>So what is love?</strong></h2>



<p><strong>Love is attachment + forgiveness coupled with time.</strong></p>



<p>Looks like a simple
equation, doesn&#8217;t it? It is not and this is what you have to understand. </p>



<h3><strong>Attachment</strong></h3>



<p>Attachment is a
feeling. When two people are united to each other like nothing else. It is not
essential for your thoughts to be my thoughts, even though it is quite
possible. When we feel attachment, we will mostly want to be close. We will
want to spend as much time together as possible. We will go into the territory
of the beloved, unhindered. We might also become obsessed with the object of
our desire. Some people, however, react differently. They want to give
themselves &#8216;space&#8217;. They want to let themselves know that they are not fusing
into someone else&#8217;s identity. They, hence, try to create as much distance as
possible while never really going away. Both the conditions are all because of
the insecurities of the individual. I may be clingy because I am afraid you may
go and I may be distant because… because I am afraid you may go and I will be
hurt. </p>



<p>And yet, we all make
the same mistakes, time and again. </p>



<p>When you are in
love, the insecurities of the individual dissolve into the security of a
couple. You control each other&#8217;s moods, life decisions and even the heart
bearts. It may sound like a threat to a person like me but this is what happens
when you are in love. There is truly nothing wrong or cheesy about two hearts
becoming one- this is the ultimate truth about love. Your sweetheart is the one
that can lift your mood, make you feel deeply sad or just enjoy a romcom
without feeling guilty for the action-thriller your missed (or vice versa). </p>



<p>When you are around
someone, all your insecurities actually go down the drain. All you are focused
on is the one you love. Now, there is no barrier, no insecurity. A hug can tell
you if your beloved is sad or happy or excited or how their day went. There
will never be a need to ask questions. A hug will say it all. I have known
this, I have felt this. The heart that loves you will send these small signals
to you (science may explain this in detail, but in another post, soon) that
will tell you what it has felt. I felt he was bothered. I felt something was
wrong and I shrugged it off my shoulder, thinking that I am just hallucinating.
Thinking that I may come across as nagging. I should have asked. Maybe he told
me, maybe he could have been comforted. But then again, our actions are fueled
by our insecurities.</p>



<p>When you feel a deep
sense of attachment, you will not have to &#8216;talk&#8217; about love. That is stupid.
Talking about love only makes it feel like news, good today but stale tomorrow.
Love must be felt, right till the abyss of your heart turns into a cozy bed for
the beloved. It must be felt till it breaks all chains, breaks barriers and
helps you become a soul, united with another. </p>



<h3><strong>Forgiveness</strong></h3>



<p>We forgive those we
love, often. We don&#8217;t talk about how many times we have forgiven them. We don&#8217;t
talk about why we have forgiven them. We forgive, then we forget. When you come
home late, you are forgiven for the endless worries that may have gone through
while you were away. When you cannot make enough time for them, your are
forgiven because they think you are genuinely busy. When you cannot fulfill
your promises, you are forgiven because they believe that something might have
genuinely demanded your time. It is not like they are not hurt. They are. They
don&#8217;t talk about it. They forgive you. Now you know why your boss never
forgives you for being late. He hates you. LOL.</p>



<p>How many times
during the day do we get angry on the world and claim that everyone is a jerk
while we are angels walking the earth? Today, think about how many times you
were forgiven by the one(s) you love for all the small discomforts and extreme
emotional anxiety that you caused them. Think about all the times you have not
been there for them when they needed you. Think about all the times when you
distanced yourself from them when they wanted to cry, pour their heart out to
you. My love lies somewhere in the corner. Waiting. A feeling, personified,
waiting.</p>



<p>What happens when
big mistakes are committed? Of course things change then. People who love you
will still forgive you but they might move on too, just like you. It is
difficult to hold a grudge for too long. I wonder how people are able to manage
that kinda stuff. How long can you hate someone? Often, we do not forgive
people for what they have done if we do not practice self-compassion. If we
hate ourselves, we will hate everyone and we will hold a grudge till the last
breath. But love, it teaches us compassion. A compassionate person forgives.
Where there is no forgiveness, there is no love. I have forgiven you a few
small discomforts because I love you. </p>



<p>They say that when
you love someone, you give them the power to hurt you. What a stupid statement.
You think you are a saint? You hurt people too. People hurt you. It is all a
game where the tables keep turning. I am sorry if I ever hurt you or didn&#8217;t fulfill
your expectations. It happens. I try my best though. I know you are trying your
best too. Like I said in the last post, making an effort is important but
effort is sexy. Whatever the results, the fact that you made an effort to be by
my side makes all the difference to my life. </p>



<h3><strong>Time</strong></h3>



<p>But I just said that
spending time with someone or enjoying their company isn&#8217;t love? Am I moving
into my bipolar phase again. No I am not.&nbsp;
</p>



<p>I remember telling
my best friend once- <strong>Time is the best friend of
love, just like you and I. A relationship that blooms slowly with time is the
strongest relationship in the world.</strong></p>



<p>It was probably the
best words I uttered that year. Time is indeed the best friend of love, in both
its qualitative and quantitative aspects. Qualitative, because spending time
with your beloved makes you closer. Qualitative, because even if you are away,
your heart thinks about them. </p>



<p>You know what is the
most intrinsic quality of love? When you fall in love, the beloved is always on
your mind. Even though you are physically not with them, you are spending time
with them in your memory. Their name catches your attention wherever you go.
You start associating things with them. Some place, some memory, some perfume,
some sight- you have already formed deep associations with the person and these
triggers in your mind. </p>



<p>You are spending
time with them even when you are not with them. Trust me, when the love is
strong, they feel it too. They dream of you, they think of you too. No matter
how metaphysical or impractical it sounds, it is true. You have to experience
it to believe it. Yes, I am saying this because it is true. It is beyond
reason, not because it is false but because reason isn&#8217;t powerful enough to
reach it yet. </p>



<p>Time makes the
attachment stronger. Time makes forgiveness easier to bestow upon your beloved.
Times makes it all worth the while. Yet, when you are with the one you love,
time literally stops. </p>



<p>I am dropping
another piece of wisdom here (I have already written this on my about.me
profile but repeating)-</p>



<blockquote class="wp-block-quote"><p><strong>If you don&#8217;t have to look at your watch or phone while you are with them, it is love.</strong></p></blockquote>



<p>Any why shouldn&#8217;t it
be. Time gives proof to love (just like it gives proof to matter) but time is
virtually non-existent when love takes over. It just isn&#8217;t there. It becomes
irrelevant. 10 minutes will feel like eternity for lovers. Sometimes they may actually
get insecure and scared of how much time has passed (of course we sell our time
for money, more about this in later posts). They are usually in for a shock.
Either more time has passed than they thought or it has just been those 10
minutes. Damn! You lose sense of time. As love grows stronger, as bonds grow
stronger, time slowly loses its relevance. Words are of no use. You start
communicating at a different level.</p>



<p>Haha! And I say this
often while talking to my other self, <strong>love is
all powerful, it can make you an alien.</strong> LOL. </p>



<p>It does make you an
alien. You don&#8217;t have to communicate with people through words. Sounds, smells,
touches do the talking. Hugging is a conversation. Kissing a heavenly dance.
Sex a cosmic ritual. You become your highest self. You are no longer human my
dear. You are a real alien. LOL</p>



<p>You don&#8217;t have to be
&#8216;wired&#8217; differently to love. You just have to connect with people differently.
It is a pity that we are born human and die human, not the aliens I mentioned
above. It is a shame that we all are so capable of loving but never really love.
It is a shame that we are not able to love people for their souls. It is
disgraceful of how many times we give up on love and opportunities for true
connection only because of your insecurity (You can read my last post- A Child
Trapped In An Adult Body- to read a little more about this). </p>



<p>In the end, all I
would like to say is that love is simply attachment and forgiveness, coupled
with time. </p>



<p><strong>If it is love, it must nourish your soul</strong>. If it
does anything other than this, you are in a delusion of a relationship. Get
over it! </p>



<p>BTW, the concept of
love can be applied to any relationship. Yes, any relationship where there is
love will follow this concept. Not convinced yet? Reason with yourself. Let me
know if your findings are any different. </p>



<p>It feels like I am
not my usual self this morning. The other, softer and more sensitive side has
taken over. Listening to Tangled Up In You- Staind</p>

			</div><!-- .entry-content -->

	<footer class="entry-footer">
		<span class="cat-links">Posted in <a href="https://spiritueljoy.com/category/musings/" rel="category tag">Musings</a></span><span class="tags-links">Tagged <a href="https://spiritueljoy.com/tag/couples/" rel="tag">couples</a> <a href="https://spiritueljoy.com/tag/love/" rel="tag">love</a> <a href="https://spiritueljoy.com/tag/relationships/" rel="tag">relationships</a></span><span class="comments-link"><a href="https://spiritueljoy.com/2019/02/27/love-love-love-alone/#comments">5 Comments</a></span>	</footer><!-- .entry-footer -->
</article><!-- #post-## -->

			
				
<article id="post-775" class="post-775 post type-post status-publish format-standard has-post-thumbnail hentry category-musings tag-cheater tag-cheating tag-cheating-men">

	
	<a class="post-thumbnail" href="https://spiritueljoy.com/2019/02/24/a-post-for-men-who-cheat-and-their-wives-girlfriends/">
			</a>

	
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://spiritueljoy.com/2019/02/24/a-post-for-men-who-cheat-and-their-wives-girlfriends/" rel="bookmark">A Post For Men Who Cheat (And Their Wives/Girlfriends)</a></h1>
				<div class="entry-meta">
			<span class="posted-on">Posted on <a href="https://spiritueljoy.com/2019/02/24/a-post-for-men-who-cheat-and-their-wives-girlfriends/" rel="bookmark"><time class="entry-date published updated" datetime="2019-02-24T12:30:59+05:30">February 24, 2019</time></a></span><span class="byline"> by <span class="author vcard"><a class="url fn n" href="https://spiritueljoy.com/author/nehajoychauhan/">NehaJoyChauhan</a></span></span>		</div><!-- .entry-meta -->
			</header><!-- .entry-header -->

	<div class="entry-content">
		
<p>Cheating men come a dime a dozen. Now I wont suggest that all men are cheaters and perverts, but I am not suggesting otherwise either. Women are always pitched against each other. You will see how. </p>



<p>Many men, not all- but many who I have met are looking for sympathy. No matter how much they talk about women being emotional and shit, they want their sympathy. <strong>Some even believe that women will sympathetically get into their bed.</strong></p>



<h2>The Hunt Begins</h2>



<p><em>&#8220;Oh look! What a poor chap he is. Life has totally run him down. Let me fuck him and cheer him up.&#8221;</em></p>



<p>That is the only
porn movie running in the minds of these men, over and over and over again. And let me tell you, a majority of these men- a mind boggling majority, are <strong>happily married with kids. </strong></p>



<p>They will portray on
the outside that everything is right with them. They will show how much they
love their wife and their kids and their family. A woman will find him
harmless. </p>



<p><em>&#8220;hmm.. He is happily married. He is not hitting on me. He is totally harmless.&#8221;, she thinks. </em></p>



<p>So she feels somewhat secure with him. This man shows compassion and presents himself as a great figure to look up to. Damn, if only your husband or boyfriend or future boyfriend or future husband was like that. </p>



<p>Women have their guards down with these men. They know that he will not make inappropriate jokes with her, he will be a true gentleman and so on and so forth. </p>



<p><em>&#8220;What an exemplary man!&#8221;</em></p>



<p><em>&#8220;Chivalry is not dead!&#8221;</em></p>



<p>I will tell you something. It is dead indeed. </p>



<h2>The Next Step</h2>



<p>So when this man finds out that you have your guard down and you don’t see him as a threat, he slowly opens up to you. You have no idea of how perverted this man is. You don’t know his phone is filled with pornography and he shares them on groups with at least 50 other men. You don’t know the kind of super perverted jokes he shares. You don’t know anything about his woman. I bet even his wife doesn’t know a lot about him. </p>



<p>Superheroes may have double lives, but so do super villains, right? After all, having an affair could be quite a nice way to kill time on the side. </p>



<p>Slowly, this man will make a plan. He will try to be his sweet, gentlemanly self and try to woo you with his chivalrous charm. Then slowly, he will try to show you that his life is not as perfect as it seems. </p>



<h2>A comprehensive guide to what married men always say</h2>



<blockquote class="wp-block-quote"><p><em>&#8220;It is a loveless, sexless marriage. All she is busy with is the kids. I have bills to pay. I have a family to keep. How will I do all this alone? I wish she was more supportive and understood my &#8220;EMOTIONAL&#8221; needs.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;It was an arranged marriage. She is a nice woman you know. She is a very good wife but not quite the woman I wanted her to be. I wanted to spend my life with any intelligent, smart woman who was more than just a wife. You know… I… I wish I met you before.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;I love her. I truly love her. I just don’t like a few things about her. She… she is just _________ (add some made up shit here). &#8220;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;She doesn’t understand me.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;I wish she understood me like you do.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;Sometimes, I feel like I want to break free and live my life for a moment.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;I am going through so much. It is so difficult to keep a straight face but I try really hard.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;For people, I am just a happily married guy. No one knows what is going on inside. &#8220;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;I have never opened up to anyone like I have opened up to you. It is like I am letting go of my emotional bondage. You have set me free.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;We share a deep bond. We can&#8217;t really label this relationship that we share. It is just different. It is beautiful and I wish it remains this way forever.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;We just live in the same house. We don’t even talk to each other.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;You know. I have wanted a divorce on a number of occassions. But then I thought I will wreck my household and that will have a great impact on my children. My parents, her parents, our families- they all will be shattered. So I wait for things to get better. I just manage with whatever I have.&#8221;</em></p></blockquote>



<p>Yada! Yada! Yada!</p>



<p>Whatever!</p>



<h2>And you are falling</h2>



<p>Listening to all this could make you feel special. <strong>You feel a kind of sympathy for him.</strong> You feel that he is going through so much and still being strong. You feel that he deserves something good. You admire that he can open up to you. What do women want? They want someone who can talk to them. </p>



<p>This guy talks to you. I swear if he had any problems and if he talked like that to his wife, she would have certainly listened and solved those problems. <strong>He shouldn&#8217;t be telling you what is wrong. </strong></p>



<p>All the while he
pretends to be a strong guy with a soft interior. He will tell you that he has
feelings too. He will also tell you that he has bottled up his feelings for too
long and now he cannot contain them any longer. </p>



<p>Then, when you are fully prepped, he will take you.</p>



<p><strong>Talking is the best foreplay for women, I swear.</strong> </p>



<p>He has talked
enough. Now all he craves for is a hug. </p>



<p>Then he
instinctively leans on to kiss (or so you think).</p>



<p>That is the moment.
You have lost. He has won. </p>



<p>After he is done, he
will put up the same face of the gentleman. </p>



<p>A real gentleman
will never cheat on his wife. </p>



<p>You have been duped. He will probably do that again. With you and other women maybe. All the while he will make you believe that he is a happily married person who won&#8217;t ever cheat on his wife. He will also make you believe that what you share with him is something divine. Yeah! Sure!</p>



<h2>The trouble with the wife</h2>



<p>And then there are
the wives. </p>



<p>Oh my god! There is a reason you will constantly be duped by the husband. See, the &#8216;other woman&#8217; that you think stole your husband, was also duped by him. </p>



<p>But I know what you
will do. </p>



<p>You will think that
this &#8216;other woman&#8217; stole your man away from you. </p>



<p><strong>Damn it! Damn it! Damn HIM and damn YOU!</strong></p>



<p>If the wife and the
other woman are both fools, the wife who thinks her man has been stolen is the
bigger fool. You know why? Because you are in denial. </p>



<p>Tell me. </p>



<p>Is your husband a
toy?</p>



<p><strong>Is your husband a limited edition antique dick on an auction?</strong></p>



<p>Is your husband a
child who was lured by her?</p>



<p>Tell me what do you think?</p>



<blockquote class="wp-block-quote"><p>How can someone steal your husband away from you if he doesn’t want it to happen? Worst so, how can she be allowed in his life romantically or sexually if he is not opening up to her or, in most scenarios, guiding her there. Leading her on.  </p></blockquote>



<p>How can someone
steal your husband away from you if he doesn’t want it to happen? Worst so, how
can she be allowed in his life romantically or sexually if he is not opening up
to her or, in most scenario, guiding her there. Leading her on. </p>



<p>Sex is not as
sacred. Seriously. You must have got a chance to hop on a dick and ride it like
a pony before you got married. Maybe you still get opportunities. Maybe there
are men in your office, in your neighborhood and in your friend circle who
would want to get it on with you. </p>



<p>But, you don’t go. </p>



<p>It is your conscious
decision to stay loyal to your partner. </p>



<p>Why can&#8217;t your
husband take this decision?</p>



<p>Why can&#8217;t somebody
steal you away from him?</p>



<p>Any answer?</p>



<p>The answer is simple and very clear. When you are in a relationship, you commit to each other. You vow in front of the world to stay loyal to each other. If you have the chance of staying loyal (let me also point out that women, on an average will find sex more conveniently than men), why can&#8217;t he?</p>



<p>Now you will ask
questions.</p>



<blockquote class="wp-block-quote"><p><em>&#8220;Oh she is a homewrecker.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;But she knew he was married. Why did she sleep with him.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;She wanted to steal my husband away. She should have known her boundaries.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p><em>&#8220;I know these filthy sluts. They just want to sleep their way to the top. They don’t have any morals or shame.&#8221;</em></p></blockquote>



<blockquote class="wp-block-quote"><p>Oh yeah! She should have known her boundaries.  TRUE. </p></blockquote>



<p>She should have taught your husband some morals and shame too when he was shamelessly painting you as an inefficient wife. TRUE.</p>



<p>She should have been smart enough to understand that married men who approach her are merely interested in gaining sympathy and.. And her body. TRUE.</p>



<p>Understood. Fine. You are right here. Women can be such fools when it comes to love. Like her and YOU. </p>



<p>But you know who
exactly stepped out of the marital boundaries? Your husband or the other woman?</p>



<p>Who is responsible
to stay loyal to you and love you? Your husband or the other woman?</p>



<p>Who broke
promises?&nbsp; Your husband or the other
woman?</p>



<p>And finally, who
will stick to his sorry ass for a lifetime? You or the other woman?</p>



<p>He has done it once
and he will do it again. </p>



<p>He will do it
because you were in denial. </p>



<p>Affairs don’t just happen. They are made to happen. <strong>Women are wooed, charmed and made to believe that the man who is after her is somewhat divine. They are lied to.</strong> They are kept in a dungeon where she is bonded, but she always finds a garden of roses on the outside. This makes her womanly heart happy. She is happy that there are roses in the garden. She thinks it is HER garden and then she wants to protect it like a fierce lioness- NEVER understanding that the male is toying around behind her back. And this happens to both you women- the &#8216;wife&#8217; and the &#8216;other woman/side chick&#8217;. </p>



<p>And no. This doesnt
happen to the other woman alone. This is happening to you as well.</p>



<p>You, the wife. </p>



<p>You are both women. You both have your own soft corners. You both have your own sensibilities. You both are emotional and these emotions are often used against you, to make you fall. </p>



<p>I am sure that the
percentage of real &#8216;home wreckers&#8217; and &#8216;husband stealers&#8217; is really less in the
world, if they are present at all. </p>



<p>Most women &#8211; wives,
girlfriends or &#8216;other women&#8217;, are just that, they are women. </p>



<p>And then there is a
man who thinks he can conquer it all. </p>



<p>You know who is at
fault now?</p>



<p>You see who is the
culprit?</p>



<p>The other woman may
leave him. Of course, you will try your best to screw her emotionally,
financially and more. She will be broken and she will leave. </p>



<p><strong>What about you? </strong></p>



<p><strong>What are you left with? What did you fight for?</strong></p>



<p><strong>Is it worth fighting for?</strong></p>

			</div><!-- .entry-content -->

	<footer class="entry-footer">
		<span class="cat-links">Posted in <a href="https://spiritueljoy.com/category/musings/" rel="category tag">Musings</a></span><span class="tags-links">Tagged <a href="https://spiritueljoy.com/tag/cheater/" rel="tag">cheater</a> <a href="https://spiritueljoy.com/tag/cheating/" rel="tag">cheating</a> <a href="https://spiritueljoy.com/tag/cheating-men/" rel="tag">cheating men</a></span><span class="comments-link"><a href="https://spiritueljoy.com/2019/02/24/a-post-for-men-who-cheat-and-their-wives-girlfriends/#respond">Leave a comment</a></span>	</footer><!-- .entry-footer -->
</article><!-- #post-## -->

			
				<nav class="navigation paging-navigation" role="navigation">
		<h1 class="screen-reader-text">Posts navigation</h1>
		<div class="nav-links">

						<div class="nav-previous"><a href="https://spiritueljoy.com/page/2/" ><span class="meta-nav">&larr;</span> Older posts</a></div>
			
			
		</div><!-- .nav-links -->
	</nav><!-- .navigation -->
	
		
		</main><!-- #main -->
	</div><!-- #primary -->


<div id="secondary" class="widget-area" role="complementary">
	
		<aside id="recent-posts-3" class="widget widget_recent_entries">
		<h1 class="widget-title">Recent Posts</h1>
		<ul>
											<li>
					<a href="https://spiritueljoy.com/2020/06/11/pigeons-and-metros/">Pigeons And Metros</a>
									</li>
											<li>
					<a href="https://spiritueljoy.com/2019/11/17/lose-some-weight-woman-or-maybe-not/">Lose Some Weight Woman! (Or Maybe Not)</a>
									</li>
											<li>
					<a href="https://spiritueljoy.com/2019/11/10/the-dirty-secrets-behind-a-life-with-pcos/">The Dirty Secrets Behind a Life With PCOS</a>
									</li>
											<li>
					<a href="https://spiritueljoy.com/2019/09/16/its-dark-outside/">It&#8217;s Dark Outside</a>
									</li>
											<li>
					<a href="https://spiritueljoy.com/2019/09/15/its-a-hard-knock-life/">It&#8217;s A Hard Knock Life</a>
									</li>
					</ul>

		</aside></div><!-- #secondary -->

	</div><!-- #content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="site-info">
			<a href="https://wordpress.com/?ref=footer_custom_powered" rel="nofollow">Powered by WordPress.com</a>.
			
					</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- #page -->

		<script type="text/javascript">
		//<![CDATA[
		var infiniteScroll = JSON.parse( decodeURIComponent( '%7B%22settings%22%3A%7B%22id%22%3A%22main%22%2C%22ajaxurl%22%3A%22https%3A%5C%2F%5C%2Fspiritueljoy.com%5C%2F%3Finfinity%3Dscrolling%22%2C%22type%22%3A%22click%22%2C%22wrapper%22%3Atrue%2C%22wrapper_class%22%3A%22infinite-wrap%22%2C%22footer%22%3A%22page%22%2C%22click_handle%22%3A%221%22%2C%22text%22%3A%22Older%20posts%22%2C%22totop%22%3A%22Scroll%20back%20to%20top%22%2C%22currentday%22%3A%2224.02.19%22%2C%22order%22%3A%22DESC%22%2C%22scripts%22%3A%5B%5D%2C%22styles%22%3A%5B%5D%2C%22google_analytics%22%3Afalse%2C%22offset%22%3A1%2C%22history%22%3A%7B%22host%22%3A%22spiritueljoy.com%22%2C%22path%22%3A%22%5C%2Fpage%5C%2F%25d%5C%2F%22%2C%22use_trailing_slashes%22%3Atrue%2C%22parameters%22%3A%22%22%7D%2C%22query_args%22%3A%7B%22error%22%3A%22%22%2C%22m%22%3A%22%22%2C%22p%22%3A0%2C%22post_parent%22%3A%22%22%2C%22subpost%22%3A%22%22%2C%22subpost_id%22%3A%22%22%2C%22attachment%22%3A%22%22%2C%22attachment_id%22%3A0%2C%22name%22%3A%22%22%2C%22pagename%22%3A%22%22%2C%22page_id%22%3A0%2C%22second%22%3A%22%22%2C%22minute%22%3A%22%22%2C%22hour%22%3A%22%22%2C%22day%22%3A0%2C%22monthnum%22%3A0%2C%22year%22%3A0%2C%22w%22%3A0%2C%22category_name%22%3A%22%22%2C%22tag%22%3A%22%22%2C%22cat%22%3A%22%22%2C%22tag_id%22%3A%22%22%2C%22author%22%3A%22%22%2C%22author_name%22%3A%22%22%2C%22feed%22%3A%22%22%2C%22tb%22%3A%22%22%2C%22paged%22%3A0%2C%22meta_key%22%3A%22%22%2C%22meta_value%22%3A%22%22%2C%22preview%22%3A%22%22%2C%22s%22%3A%22%22%2C%22sentence%22%3A%22%22%2C%22title%22%3A%22%22%2C%22fields%22%3A%22%22%2C%22menu_order%22%3A%22%22%2C%22embed%22%3A%22%22%2C%22category__in%22%3A%5B%5D%2C%22category__not_in%22%3A%5B%5D%2C%22category__and%22%3A%5B%5D%2C%22post__in%22%3A%5B%5D%2C%22post__not_in%22%3A%5B%5D%2C%22post_name__in%22%3A%5B%5D%2C%22tag__in%22%3A%5B%5D%2C%22tag__not_in%22%3A%5B%5D%2C%22tag__and%22%3A%5B%5D%2C%22tag_slug__in%22%3A%5B%5D%2C%22tag_slug__and%22%3A%5B%5D%2C%22post_parent__in%22%3A%5B%5D%2C%22post_parent__not_in%22%3A%5B%5D%2C%22author__in%22%3A%5B%5D%2C%22author__not_in%22%3A%5B%5D%2C%22lazy_load_term_meta%22%3Afalse%2C%22posts_per_page%22%3A10%2C%22ignore_sticky_posts%22%3Afalse%2C%22suppress_filters%22%3Afalse%2C%22cache_results%22%3Afalse%2C%22update_post_term_cache%22%3Atrue%2C%22update_post_meta_cache%22%3Atrue%2C%22post_type%22%3A%22%22%2C%22nopaging%22%3Afalse%2C%22comments_per_page%22%3A%2250%22%2C%22no_found_rows%22%3Afalse%2C%22order%22%3A%22DESC%22%7D%2C%22query_before%22%3A%222020-10-15%2000%3A10%3A13%22%2C%22last_post_date%22%3A%222019-02-24%2012%3A30%3A59%22%2C%22body_class%22%3A%22infinite-scroll%22%2C%22loading_text%22%3A%22Loading%20new%20page%22%2C%22stats%22%3A%22blog%3D165475608%26v%3Dwpcom%26tz%3D5%26user_id%3D0%26subd%3Djoyvillehome%26x_pagetype%3Dinfinite-click%22%7D%7D' ) );
		//]]>
		</script>
		<!--  -->
<script src='//0.gravatar.com/js/gprofiles.js?ver=202042y' id='grofiles-cards-js'></script>
<script id='wpgroho-js-extra'>
var WPGroHo = {"my_hash":""};
</script>
<script type='text/javascript' src='https://s0.wp.com/wp-content/mu-plugins/gravatar-hovercards/wpgroho.js?m=1380573781h'></script>

	<script>
		//initialize and attach hovercards to all gravatars
		jQuery( document ).ready( function( $ ) {

			if (typeof Gravatar === "undefined"){
				return;
			}

			if ( typeof Gravatar.init !== "function" ) {
				return;
			}			

			Gravatar.profile_cb = function( hash, id ) {
				WPGroHo.syncProfileData( hash, id );
			};
			Gravatar.my_hash = WPGroHo.my_hash;
			Gravatar.init( 'body', '#wp-admin-bar-my-account' );
		});
	</script>

		<div style="display:none">
	</div>
<script id='highlander-comments-js-extra'>
var HighlanderComments = {"loggingInText":"Logging In\u2026","submittingText":"Posting Comment\u2026","postCommentText":"Post Comment","connectingToText":"Connecting to %s","commentingAsText":"%1$s: You are commenting using your %2$s account.","logoutText":"Log Out","loginText":"Log In","connectURL":"https:\/\/joyvillehome.wordpress.com\/public.api\/connect\/?action=request&domain=spiritueljoy.com","logoutURL":"https:\/\/joyvillehome.wordpress.com\/wp-login.php?action=logout&_wpnonce=f94afa5c87","homeURL":"https:\/\/spiritueljoy.com\/","postID":"980","gravDefault":"identicon","enterACommentError":"Please enter a comment","enterEmailError":"Please enter your email address here","invalidEmailError":"Invalid email address","enterAuthorError":"Please enter your name here","gravatarFromEmail":"This picture will show whenever you leave a comment. Click to customize it.","logInToExternalAccount":"Log in to use details from one of these accounts.","change":"Change","changeAccount":"Change Account","comment_registration":"0","userIsLoggedIn":"","isJetpack":"","text_direction":"ltr"};
</script>
<script type='text/javascript' src='https://s0.wp.com/_static/??/wp-content/js/jquery/jquery.autoresize.js,/wp-content/mu-plugins/highlander-comments/script.js?m=1573483029j'></script>

	<div id="carousel-reblog-box">
		<form action="#" name="carousel-reblog">
			<textarea id="carousel-reblog-content" name="carousel-reblog-content" placeholder="Add your thoughts here... (optional)"></textarea>
			<label for="carousel-reblog-to-blog-id" id="carousel-reblog-lblogid">Post to</label>
			<select name="carousel-reblog-to-blog-id" id="carousel-reblog-to-blog-id">
						</select>

			<div class="submit">
				<span class="canceltext"><a href="#" class="cancel">Cancel</a></span>
				<input type="submit" name="carousel-reblog-submit" class="button" id="carousel-reblog-submit" value="Reblog Post" />
				<input type="hidden" id="carousel-reblog-blog-id" value="165475608" />
				<input type="hidden" id="carousel-reblog-blog-url" value="https://spiritueljoy.com" />
				<input type="hidden" id="carousel-reblog-blog-title" value="Spirituel Joy" />
				<input type="hidden" id="carousel-reblog-post-url" value="" />
				<input type="hidden" id="carousel-reblog-post-title" value="" />
			</div>

			<input type="hidden" id="_wpnonce" name="_wpnonce" value="95aa48c830" /><input type="hidden" name="_wp_http_referer" value="/" />		</form>

		<div class="arrow"></div>
	</div>
<link rel='stylesheet' id='all-css-0-3' href='https://s0.wp.com/_static/??-eJx9y0EKgCAQQNELNU0JRS2is4gNYU0qjhbdPlq0CKLl//DwCGC8S+QSbhkC59k6QaOjz0KMC6WgzQrPKI1Igd8okgTvxO4Eu53If5w/nizTBLNmpni+62bjNtRNr5q2Up1aLoqSROA=?cssminify=yes' type='text/css' media='all' />
<script id='wpcom-actionbar-bar-js-extra'>
var actionbardata = {"siteID":"165475608","siteName":"Spirituel Joy","siteURL":"https:\/\/spiritueljoy.com","icon":"<img alt='' src='https:\/\/joyvillehome.files.wordpress.com\/2020\/06\/cropped-spirituel-joy.png?w=50' class='avatar avatar-50' height='50' width='50' \/>","canManageOptions":"","canCustomizeSite":"","isFollowing":"","themeSlug":"pub\/cols","signupURL":"https:\/\/wordpress.com\/start\/","loginURL":"https:\/\/wordpress.com\/log-in?redirect_to=https%3A%2F%2Fspiritueljoy.com%2F2020%2F06%2F11%2Fpigeons-and-metros%2F&signup_flow=account&domain=spiritueljoy.com","themeURL":"https:\/\/wordpress.com\/theme\/cols\/","xhrURL":"https:\/\/spiritueljoy.com\/wp-admin\/admin-ajax.php","nonce":"b8980fe656","isSingular":"","isFolded":"","isLoggedIn":"","isMobile":"","subscribeNonce":"<input type=\"hidden\" id=\"_wpnonce\" name=\"_wpnonce\" value=\"b4efc9fd13\" \/>","referer":"https:\/\/spiritueljoy.com\/","canFollow":"1","feedID":"106724124","statusMessage":"","customizeLink":"https:\/\/joyvillehome.wordpress.com\/wp-admin\/customize.php?url=https%3A%2F%2Fjoyvillehome.wordpress.com%2F","i18n":{"view":"View site","follow":"Follow","following":"Following","edit":"Edit","login":"Log in","signup":"Sign up","customize":"Customize","report":"Report this content","themeInfo":"Get theme: Cols","shortlink":"Copy shortlink","copied":"Copied","followedText":"New posts from this site will now appear in your <a href=\"https:\/\/wordpress.com\/read\">Reader<\/a>","foldBar":"Collapse this bar","unfoldBar":"Expand this bar","editSubs":"Manage subscriptions","viewReader":"View site in Reader","viewReadPost":"View post in Reader","subscribe":"Sign me up","enterEmail":"Enter your email address","followers":"","alreadyUser":"Already have a WordPress.com account? <a href=\"https:\/\/wordpress.com\/log-in?redirect_to=https%3A%2F%2Fspiritueljoy.com%2F2020%2F06%2F11%2Fpigeons-and-metros%2F&signup_flow=account&domain=spiritueljoy.com\">Log in now.<\/a>","stats":"Stats"}};
</script>
<script id='jetpack-carousel-js-extra'>
var jetpackCarouselStrings = {"widths":[370,700,1000,1200,1400,2000],"is_logged_in":"","lang":"en","ajaxurl":"https:\/\/spiritueljoy.com\/wp-admin\/admin-ajax.php","nonce":"b0482a7261","display_exif":"1","display_comments":"1","display_geo":"1","single_image_gallery":"1","single_image_gallery_media_file":"","background_color":"black","comment":"Comment","post_comment":"Post Comment","write_comment":"Write a Comment...","loading_comments":"Loading Comments...","download_original":"View full size <span class=\"photo-size\">{0}<span class=\"photo-size-times\">\u00d7<\/span>{1}<\/span>","no_comment_text":"Please be sure to submit some text with your comment.","no_comment_email":"Please provide an email address to comment.","no_comment_author":"Please provide your name to comment.","comment_post_error":"Sorry, but there was an error posting your comment. Please try again later.","comment_approved":"Your comment was approved.","comment_unapproved":"Your comment is in moderation.","camera":"Camera","aperture":"Aperture","shutter_speed":"Shutter Speed","focal_length":"Focal Length","copyright":"Copyright","comment_registration":"0","require_name_email":"1","login_url":"https:\/\/joyvillehome.wordpress.com\/wp-login.php?redirect_to=https%3A%2F%2Fspiritueljoy.com%2F2020%2F06%2F11%2Fpigeons-and-metros%2F","blog_id":"165475608","meta_data":["camera","aperture","shutter_speed","focal_length","copyright"],"local_comments_commenting_as":"<fieldset><label for=\"email\">Email (Required)<\/label> <input type=\"text\" name=\"email\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-email-field\" \/><\/fieldset><fieldset><label for=\"author\">Name (Required)<\/label> <input type=\"text\" name=\"author\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-author-field\" \/><\/fieldset><fieldset><label for=\"url\">Website<\/label> <input type=\"text\" name=\"url\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-url-field\" \/><\/fieldset>","reblog":"Reblog","reblogged":"Reblogged","reblog_add_thoughts":"Add your thoughts here... (optional)","reblogging":"Reblogging...","post_reblog":"Post Reblog","stats_query_args":"blog=165475608&v=wpcom&tz=5&user_id=0&subd=joyvillehome","is_public":"1","reblog_enabled":""};
</script>
<script type='text/javascript' src='https://s0.wp.com/_static/??-eJyVUVtuhDAMvFCDu6y0VT+qniUEwxpCHMUO2719AxKoT9QqP/ZkZuxJ4BaN46AYFAaBFmdyGN+qQR7gw9WUTfS5pyBAoaNAet+Lr9yN6Ljx7EaBuioHWpJ1xAYbT/1VG/42S684oUDMTeF6WTTBztRbJQ5/IMtIsZiH0XTsspiOjuLYdqJgGptgsqKYSmV4xpSoLb479k8HTbZEPBK5Jc0i2qsDtrOJs6CHATUWZ7MBB5qEEjkIzWjmkoV/QKqy+OZAwfm8RF5e8NZxM6DT3752lYMVQV0Fax+L/1FkJY+t6a33mO6fu6J6nV5Ol8f68lyfzk/DO3US+NE='></script>
<script type="text/javascript">
// <![CDATA[
(function() {
try{
  if ( window.external &&'msIsSiteMode' in window.external) {
    if (window.external.msIsSiteMode()) {
      var jl = document.createElement('script');
      jl.type='text/javascript';
      jl.async=true;
      jl.src='/wp-content/plugins/ie-sitemode/custom-jumplist.php';
      var s = document.getElementsByTagName('script')[0];
      s.parentNode.insertBefore(jl, s);
    }
  }
}catch(e){}
})();
// ]]>
</script><script type="text/javascript">
			(function() {
				var extend = function(out) {
					out = out || {};

					for (var i = 1; i < arguments.length; i++) {
						if (!arguments[i])
						continue;

						for (var key in arguments[i]) {
						if (arguments[i].hasOwnProperty(key))
							out[key] = arguments[i][key];
						}
					}

					return out;
				};
				extend( window.infiniteScroll.settings.scripts, ["jquery-core","jquery","postmessage","mobile-useragent-info","grofiles-cards","wpgroho","jquery.autoresize","highlander-comments","devicepx","the-neverending-homepage","coblocks-lightbox","cols-navigation","cols-skip-link-focus-fix","wpcom-masterbar-js","wpcom-masterbar-tracks-js","wpcom-actionbar-bar","jetpack-carousel","jetpack-responsive-videos-min-script","swfobject","videopress","tiled-gallery"] );
				extend( window.infiniteScroll.settings.styles, ["wpcom-smileys","the-neverending-homepage","wp-block-library","jetpack-layout-grid","jetpack-ratings","coblocks-frontend","wpcom-core-compat-playlist-styles","wpcom-bbpress2-staff-css","cols-style","cols-wpcom","geo-location-flair","reblogging","a8c-global-print","wpcom-actionbar-bar","h4-global","global-styles","cols-ie","cols-sourcesans","cols-sourceserif","jetpack-global-styles-frontend-style","highlander-comments","highlander-comments-ie7","jetpack-carousel","jetpack-responsive-videos-style","tiled-gallery"] );
			})();
		</script>
				<span id="infinite-aria" aria-live="assertive"></span>
		<script src="//stats.wp.com/w.js?61" type="text/javascript" async defer></script>
<script type="text/javascript">
_tkq = window._tkq || [];
_stq = window._stq || [];
_tkq.push(['storeContext', {'blog_id':'165475608','blog_tz':'5','user_lang':'en','blog_lang':'en','user_id':'0'}]);
_stq.push(['view', {'blog':'165475608','v':'wpcom','tz':'5','user_id':'0','subd':'joyvillehome'}]);
_stq.push(['extra', {'crypt':'UE40eW5QN0p8M2Y/RE1TaVhzUzFMbjdWNHpwZGhTayxPSUFCMGNrd29+Smw0TDhnZmRTK0hlRi9QSGh6bi9GXVhBJWIlZlR5U1JMLU8/MkNtblkvY1d6eVBCd3EyaC9OMnFdeGJQSUxWaltdTGIlWFN6LTBwP0gwbkFVVkxSUVhdRFYmT0t4TlovK2FXemRaM0x2cV1NX3pIVVlCLXlKSDdsLDRVSzQwSm4/SzVpU11bLGNGME9Ga1BKNiZbflEzR3ZNdElFLF1yP3EuNFYrNHd+ZGR0dHNJS2hRMjNFSFJERDcsNy9UUnRnNUttZ11nM11GRC41bXdnbw=='}]);
_stq.push([ 'clickTrackerInit', '165475608', '0' ]);
	</script>
<noscript><img src="https://pixel.wp.com/b.gif?v=noscript" style="height:0px;width:0px;overflow:hidden" alt="" /></noscript>
<script>
if ( 'object' === typeof wpcom_mobile_user_agent_info ) {

	wpcom_mobile_user_agent_info.init();
	var mobileStatsQueryString = "";
	
	if( false !== wpcom_mobile_user_agent_info.matchedPlatformName )
		mobileStatsQueryString += "&x_" + 'mobile_platforms' + '=' + wpcom_mobile_user_agent_info.matchedPlatformName;
	
	if( false !== wpcom_mobile_user_agent_info.matchedUserAgentName )
		mobileStatsQueryString += "&x_" + 'mobile_devices' + '=' + wpcom_mobile_user_agent_info.matchedUserAgentName;
	
	if( wpcom_mobile_user_agent_info.isIPad() )
		mobileStatsQueryString += "&x_" + 'ipad_views' + '=' + 'views';

	if( "" != mobileStatsQueryString ) {
		new Image().src = document.location.protocol + '//pixel.wp.com/g.gif?v=wpcom-no-pv' + mobileStatsQueryString + '&baba=' + Math.random();
	}
	
}
</script>
</body>
</html>