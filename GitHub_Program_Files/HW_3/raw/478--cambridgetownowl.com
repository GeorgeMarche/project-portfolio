<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="profile" href="https://gmpg.org/xfn/11" />
	<title>The Cambridge Town Owl &#8211; A Cambridge town-based blog</title>

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
		+ "&origin=aHR0cHM6Ly9jYW1icmlkZ2V0b3dub3dsLmNvbQ%3D%3D"
		+ "&wpcomid=180518617"
		+ "&time=1602700549";
	document.body.appendChild( iframe );
}, false );
</script>
<link rel='dns-prefetch' href='//s0.wp.com' />
<link rel='dns-prefetch' href='//cambridgetownowl.wordpress.com' />
<link rel='dns-prefetch' href='//wordpress.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel="alternate" type="application/rss+xml" title="The Cambridge Town Owl &raquo; Feed" href="https://cambridgetownowl.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="The Cambridge Town Owl &raquo; Comments Feed" href="https://cambridgetownowl.com/comments/feed/" />
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
	<link rel='stylesheet' id='all-css-0-1' href='https://s0.wp.com/_static/??-eJylkfFqAyEMxl9oXnotlPaPsWdRL7h0RsVEyr39vFs7SildYQhCPv19JPngXIzPSTEpcDMltkBJ4Fx8ZiNMEee7avAib3CDXZnQeumwhv5SEY7DOIzgGsUJXMz+y0Ry1dYZROeI/7fRT+RXbFZK4IRa7ILbOTc1odL0cid3FtUqpSB/4D5fsO3QD0wk+quZx+hNAsvwXedidfnBOJHF2CdO+gz7icq5UlHE9JupsVlXtSb3we/jfjPu9ofdYXv6BuoYvfY=?cssminify=yes' type='text/css' media='all' />
<style id='wp-block-library-inline-css'>
.has-text-align-justify {
	text-align:justify;
}
</style>
<style id='global-styles-inline-css'>
:root{--wp--preset--color--primary:#1279BE;--wp--preset--color--secondary:#FFB302;--wp--preset--color--foreground-dark:#101010;--wp--preset--color--foreground:#303030;--wp--preset--color--foreground-light:#757575;--wp--preset--color--background-dark:#C5C5C5;--wp--preset--color--background-light:#F8F8F8;--wp--preset--color--background:#FFFFFF;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple:linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan:linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange:linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red:linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray:linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum:linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple:linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux:linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk:linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean:linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass:linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight:linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--font-size--small:17.3914;--wp--preset--font-size--normal:23;--wp--preset--font-size--large:26.45;--wp--preset--font-size--huge:30.4174;}
</style>
<link rel='stylesheet' id='all-css-2-1' href='https://s0.wp.com/_static/??/wp-content/mu-plugins/comment-likes/css/comment-likes.css,/i/noticons/noticons.css?m=1436783281j&cssminify=yes' type='text/css' media='all' />
<link rel='stylesheet' id='print-css-3-1' href='https://s0.wp.com/wp-content/themes/pub/varia/print.css?m=1571655471h&cssminify=yes' type='text/css' media='print' />
<link rel='stylesheet' id='all-css-4-1' href='https://s0.wp.com/_static/??-eJx9i0EKAjEMAD9kTRVd8CC+pRtiN9ImpWl38feueFEUbzMwA0txqNJIGrSJMhmUPsJEM1Wwdk+0RbMN/M7mUDkAC75StxTU/DXk7krqkcUgkrqkGBqrfIi7psD131ppTBpXjLBWb/qcLvm8G7w/DYej398ejPZOuw==?cssminify=yes' type='text/css' media='all' />
<link crossorigin="anonymous" rel='stylesheet' id='hever-fonts-css'  href='https://fonts.googleapis.com/css?family=PT+Sans%3A400%2C400i%2C700%2C700i&#038;subset=latin%2Clatin-ext&#038;display=swap' media='all' />
<link rel='stylesheet' id='all-css-6-1' href='https://s0.wp.com/_static/??/wp-content/themes/pub/hever/style.css,/wp-content/mu-plugins/actionbar/actionbar.css?m=1600964502j&cssminify=yes' type='text/css' media='all' />
<style id='jetpack-global-styles-frontend-style-inline-css'>
:root { --font-headings: unset; --font-base: unset; --font-headings-default: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif; --font-base-default: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif;}
</style>
<link rel='stylesheet' id='all-css-8-1' href='https://s0.wp.com/_static/??-eJxti8sKgCAQAH8oW6KHdoi+xcTUWF1pjX4/OnSIOg0DM3BmYSgVmwrEQ2Q8XEgMmbiIFXXYgb3eQ3IPa8Ncwf/FZIJGgeToLZ+peBstg+/AIS0a72COU9OPUg69atV2AWWKN+I=?cssminify=yes' type='text/css' media='all' />
<script type='text/javascript' src='https://s0.wp.com/_static/??/wp-includes/js/jquery/jquery.js,/wp-content/js/postmessage.js,/wp-content/js/mobile-useragent-info.js?m=1558356653j'></script>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://cambridgetownowl.wordpress.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://s0.wp.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress.com" />
<link rel="canonical" href="https://cambridgetownowl.com/" />
<link rel='shortlink' href='https://wp.me/Pcdr8B-5' />
<link rel="alternate" type="application/json+oembed" href="https://public-api.wordpress.com/oembed/?format=json&amp;url=https%3A%2F%2Fcambridgetownowl.com%2F&amp;for=wpcom-auto-discovery" /><link rel="alternate" type="application/xml+oembed" href="https://public-api.wordpress.com/oembed/?format=xml&amp;url=https%3A%2F%2Fcambridgetownowl.com%2F&amp;for=wpcom-auto-discovery" />
<!-- Jetpack Open Graph Tags -->
<meta property="og:type" content="website" />
<meta property="og:title" content="The Cambridge Town Owl" />
<meta property="og:description" content="A Cambridge town-based blog" />
<meta property="og:url" content="https://cambridgetownowl.com/" />
<meta property="og:site_name" content="The Cambridge Town Owl" />
<meta property="og:image" content="https://cambridgetownowl.files.wordpress.com/2020/07/cropped-200721-dusk-cambridge-town-owl-image-1.jpg" />
<meta property="og:image:width" content="512" />
<meta property="og:image:height" content="512" />
<meta property="og:locale" content="en_US" />
<meta name="twitter:site" content="@wordpressdotcom" />
<meta name="twitter:text:title" content="Home" />
<meta name="twitter:image" content="https://cambridgetownowl.files.wordpress.com/2020/07/cropped-200721-dusk-cambridge-town-owl-image-1.jpg?w=640" />
<meta name="twitter:card" content="summary_large_image" />
<meta property="article:publisher" content="https://www.facebook.com/WordPresscom" />

<!-- End Jetpack Open Graph Tags -->
<link rel="search" type="application/opensearchdescription+xml" href="https://cambridgetownowl.com/osd.xml" title="The Cambridge Town Owl" />
<link rel="search" type="application/opensearchdescription+xml" href="https://s1.wp.com/opensearch.xml" title="WordPress.com" />
<meta name="application-name" content="The Cambridge Town Owl" /><meta name="msapplication-window" content="width=device-width;height=device-height" /><meta name="msapplication-tooltip" content="A Cambridge town-based blog" /><meta name="msapplication-task" content="name=Subscribe;action-uri=https://cambridgetownowl.com/feed/;icon-uri=https://cambridgetownowl.files.wordpress.com/2020/07/cropped-200721-dusk-cambridge-town-owl-image-square.jpg?w=16" /><meta name="msapplication-task" content="name=Sign up for a free blog;action-uri=http://wordpress.com/signup/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=WordPress.com Support;action-uri=http://support.wordpress.com/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=WordPress.com Forums;action-uri=http://forums.wordpress.com/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="description" content="There&#039;s an old owl in town.... Latest from the Blog" />
<link rel="icon" href="https://cambridgetownowl.files.wordpress.com/2020/07/cropped-200721-dusk-cambridge-town-owl-image-square.jpg?w=32" sizes="32x32" />
<link rel="icon" href="https://cambridgetownowl.files.wordpress.com/2020/07/cropped-200721-dusk-cambridge-town-owl-image-square.jpg?w=192" sizes="192x192" />
<link rel="apple-touch-icon" href="https://cambridgetownowl.files.wordpress.com/2020/07/cropped-200721-dusk-cambridge-town-owl-image-square.jpg?w=180" />
<meta name="msapplication-TileImage" content="https://cambridgetownowl.files.wordpress.com/2020/07/cropped-200721-dusk-cambridge-town-owl-image-square.jpg?w=270" />
		<link rel="stylesheet" id="custom-css-css" type="text/css" href="https://s0.wp.com/?custom-css=1&#038;csblog=cdr8B&#038;cscache=6&#038;csrev=2" />
		</head>

<body class="home page-template-default page page-id-5 wp-embed-responsive customizer-styles-applied singular image-filters-enabled hide-homepage-title highlander-enabled highlander-light">

	
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content">Skip to content</a>

	
		<header id="masthead" class="site-header responsive-max-width">

			

			<p class="site-title"><a href="https://cambridgetownowl.com/" rel="home">The Cambridge Town Owl</a></p>
	
		<p class="site-description">
			A Cambridge town-based blog		</p>

							<nav id="site-navigation" class="main-navigation" aria-label="Main Navigation">
					<input type="checkbox" role="button" aria-haspopup="true" id="toggle" class="hide-visually">
					<label for="toggle" id="toggle-menu" class="button">
						Menu						<span class="dropdown-icon open">+</span>
						<span class="dropdown-icon close">&times;</span>
						<span class="hide-visually expanded-text">expanded</span>
						<span class="hide-visually collapsed-text">collapsed</span>
					</label>
					<div class="menu-primary-container"><ul id="menu-primary" class="main-menu" aria-label="submenu"><li id="menu-item-19" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-5 current_page_item menu-item-19"><a href="https://cambridgetownowl.com/" aria-current="page">Home</a></li>
<li id="menu-item-21" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-21"><a href="https://cambridgetownowl.com/about/">About</a></li>
<li id="menu-item-22" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-22"><a href="https://cambridgetownowl.com/contact/">Contact</a></li>
</ul></div>				</nav><!-- #site-navigation -->
			
							<nav class="social-navigation" aria-label="Social Links Menu">
					<div class="menu-social-container"><ul id="menu-social" class="social-links-menu"><li id="menu-item-23" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-23"><a href="https://www.facebook.com/DemocracyCambridge"><span class="screen-reader-text">Facebook</span><svg class="svg-icon" width="26" height="26" aria-hidden="true" role="img" focusable="false" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M20.007,3H3.993C3.445,3,3,3.445,3,3.993v16.013C3,20.555,3.445,21,3.993,21h8.621v-6.971h-2.346v-2.717h2.346V9.31 c0-2.325,1.42-3.591,3.494-3.591c0.993,0,1.847,0.074,2.096,0.107v2.43l-1.438,0.001c-1.128,0-1.346,0.536-1.346,1.323v1.734h2.69 l-0.35,2.717h-2.34V21h4.587C20.555,21,21,20.555,21,20.007V3.993C21,3.445,20.555,3,20.007,3z"></path></svg></a></li>
<li id="menu-item-24" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-24"><a href="https://twitter.com/ACarpenDigital"><span class="screen-reader-text">Twitter</span><svg class="svg-icon" width="26" height="26" aria-hidden="true" role="img" focusable="false" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M22.23,5.924c-0.736,0.326-1.527,0.547-2.357,0.646c0.847-0.508,1.498-1.312,1.804-2.27 c-0.793,0.47-1.671,0.812-2.606,0.996C18.324,4.498,17.257,4,16.077,4c-2.266,0-4.103,1.837-4.103,4.103 c0,0.322,0.036,0.635,0.106,0.935C8.67,8.867,5.647,7.234,3.623,4.751C3.27,5.357,3.067,6.062,3.067,6.814 c0,1.424,0.724,2.679,1.825,3.415c-0.673-0.021-1.305-0.206-1.859-0.513c0,0.017,0,0.034,0,0.052c0,1.988,1.414,3.647,3.292,4.023 c-0.344,0.094-0.707,0.144-1.081,0.144c-0.264,0-0.521-0.026-0.772-0.074c0.522,1.63,2.038,2.816,3.833,2.85 c-1.404,1.1-3.174,1.756-5.096,1.756c-0.331,0-0.658-0.019-0.979-0.057c1.816,1.164,3.973,1.843,6.29,1.843 c7.547,0,11.675-6.252,11.675-11.675c0-0.178-0.004-0.355-0.012-0.531C20.985,7.47,21.68,6.747,22.23,5.924z"></path></svg></a></li>
<li id="menu-item-25" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-25"><a href="https://www.youtube.com/antonycarpen"><span class="screen-reader-text">Youtube</span><svg class="svg-icon" width="26" height="26" aria-hidden="true" role="img" focusable="false" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M21.8,8.001c0,0-0.195-1.378-0.795-1.985c-0.76-0.797-1.613-0.801-2.004-0.847c-2.799-0.202-6.997-0.202-6.997-0.202 h-0.009c0,0-4.198,0-6.997,0.202C4.608,5.216,3.756,5.22,2.995,6.016C2.395,6.623,2.2,8.001,2.2,8.001S2,9.62,2,11.238v1.517 c0,1.618,0.2,3.237,0.2,3.237s0.195,1.378,0.795,1.985c0.761,0.797,1.76,0.771,2.205,0.855c1.6,0.153,6.8,0.201,6.8,0.201 s4.203-0.006,7.001-0.209c0.391-0.047,1.243-0.051,2.004-0.847c0.6-0.607,0.795-1.985,0.795-1.985s0.2-1.618,0.2-3.237v-1.517 C22,9.62,21.8,8.001,21.8,8.001z M9.935,14.594l-0.001-5.62l5.404,2.82L9.935,14.594z"></path></svg></a></li>
</ul></div>				</nav><!-- .social-navigation -->
			
		</header><!-- #masthead -->

	
	<div id="content" class="site-content">

	<section id="primary" class="content-area">
		<main id="main" class="site-main">

			
<article id="post-5" class="post-5 page type-page status-publish has-post-thumbnail hentry entry">

	<header class="entry-header responsive-max-width">
		
<h1 class="entry-title">Home</h1>
	</header>

	<div class="entry-content">
		<div class="wp-block-cover alignfull has-background-dim-10 has-background-dim" style="background-image: url('https://cambridgetownowl.files.wordpress.com/2020/07/owlcockerillguildhallclock.jpg');"><div class="wp-block-cover__inner-container"><div class="wp-block-jetpack-layout-grid alignfull column1-desktop-grid__span-8 column1-desktop-grid__start-3 column1-desktop-grid__row-1 column1-tablet-grid__span-8 column1-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1 column1-desktop-grid__span-8 column1-desktop-grid__start-3 column1-desktop-grid__row-1 column1-tablet-grid__span-8 column1-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1"><div class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none">
<h1 class="has-text-align-center">There&#8217;s an old owl in town&#8230;.</h1>



<p class="has-text-align-center"></p>
</div></div>


<p></p>
</div></div>


<div class="wp-block-group alignfull has-background-background-color has-background"><div class="wp-block-group__inner-container"><div class="wp-block-jetpack-layout-grid alignfull column1-desktop-grid__span-12 column1-desktop-grid__row-1 column1-tablet-grid__span-8 column1-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1 column1-desktop-grid__span-12 column1-desktop-grid__row-1 column1-tablet-grid__span-8 column1-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1"><div class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none">
<h4>Latest from the Blog</h4>


<div class="wp-block-newspack-blocks-homepage-articles wpnbha is-grid columns-3 show-image image-aligntop ts-3 is-3 is-uncropped wp-block-a8c-blog-posts" style="">
			<div data-posts>
								
	<article data-post-id="1035" class="category-uncategorized">
		
		<div class="entry-wrapper">
			<h2 class="entry-title"><a href="https://cambridgetownowl.com/2020/10/14/when-will-this-be-over-something-more-of-us-are-asking/" rel="bookmark">When will this be over? Something more of us are asking.</a></h2>						<p>This is what the 20thC world wars must have felt like There are a couple of student mental health nurses I’ve started following in recent weeks as the toll on our collective mental health continues to rise. Some of those cases have inevitably been in Cambridge with a spike announced only a few hours ago.<a class="more-link" href="https://cambridgetownowl.com/2020/10/14/when-will-this-be-over-something-more-of-us-are-asking/">Continue reading <span class="screen-reader-text">“When will this be over? Something more of us are asking.”</span></a></p>
				<div class="entry-meta">
					<time class="entry-date published updated" datetime="2020-10-14T00:50:56+01:00">October 14, 2020</time>				</div><!-- .entry-meta -->
					</div><!-- .entry-wrapper -->
	</article>

		
	<article data-post-id="1002" class="category-uncategorized">
		
		<div class="entry-wrapper">
			<h2 class="entry-title"><a href="https://cambridgetownowl.com/2020/10/10/samantha-jane-davies-mbe-for-services-to-the-community-in-queen-ediths-cambridge-esp-during-covid19/" rel="bookmark">Samantha Jane Davies MBE – for services to the community in Queen Edith’s, Cambridge – esp during CoVID19</a></h2>						<p>It’s official The media embargo on the list from Cabinet Office was lifted late last night. If you know someone who deserves to be recognised for their work in their community, you can nominate them. See Cabinet Office here. And a thoroughly well-deserved honour it is. To get an idea of the work she undertook<a class="more-link" href="https://cambridgetownowl.com/2020/10/10/samantha-jane-davies-mbe-for-services-to-the-community-in-queen-ediths-cambridge-esp-during-covid19/">Continue reading <span class="screen-reader-text">“Samantha Jane Davies MBE – for services to the community in Queen Edith’s, Cambridge – esp during CoVID19”</span></a></p>
				<div class="entry-meta">
					<time class="entry-date published" datetime="2020-10-10T16:00:37+01:00">October 10, 2020</time><time class="updated" datetime="2020-10-10T16:09:39+01:00">October 10, 2020</time>				</div><!-- .entry-meta -->
					</div><!-- .entry-wrapper -->
	</article>

		
	<article data-post-id="989" class="category-uncategorized">
		
		<div class="entry-wrapper">
			<h2 class="entry-title"><a href="https://cambridgetownowl.com/2020/10/05/solo-living-in-a-pandemic-is-not-fun-and-now-the-cinemas-are-going/" rel="bookmark">Solo living in a pandemic is not fun – and now the cinemas are going</a></h2>						<p>Hannah Miller of ITN gave a textbook example of how to interview an under-pressure minister. She had clearly done her homework. The Prime Minister had not. See the link here if above does not play. I’m not going to pretend to be a regular cinema goer. I never have been, though I have in adulthood<a class="more-link" href="https://cambridgetownowl.com/2020/10/05/solo-living-in-a-pandemic-is-not-fun-and-now-the-cinemas-are-going/">Continue reading <span class="screen-reader-text">“Solo living in a pandemic is not fun – and now the cinemas are going”</span></a></p>
				<div class="entry-meta">
					<time class="entry-date published updated" datetime="2020-10-05T00:35:45+01:00">October 5, 2020</time>				</div><!-- .entry-meta -->
					</div><!-- .entry-wrapper -->
	</article>

					</div>
			
		</div></div></div></div></div>
	</div><!-- .entry-content -->

	</article><!-- #post-5 -->

		</main><!-- #main -->
	</section><!-- #primary -->


	</div><!-- #content -->

		<footer id="colophon" class="site-footer responsive-max-width">
	
	<aside class="widget-area responsive-max-width" role="complementary" aria-label="Footer">
		<section id="archives-3" class="widget widget_archive"><h2 class="widget-title">Archives</h2>		<label class="screen-reader-text" for="archives-dropdown-3">Archives</label>
		<select id="archives-dropdown-3" name="archive-dropdown">
			
			<option value="">Select Month</option>
				<option value='https://cambridgetownowl.com/2020/10/'> October 2020 </option>
	<option value='https://cambridgetownowl.com/2020/09/'> September 2020 </option>
	<option value='https://cambridgetownowl.com/2020/08/'> August 2020 </option>
	<option value='https://cambridgetownowl.com/2020/07/'> July 2020 </option>

		</select>

<script type="text/javascript">
/* <![CDATA[ */
(function() {
	var dropdown = document.getElementById( "archives-dropdown-3" );
	function onSelectChange() {
		if ( dropdown.options[ dropdown.selectedIndex ].value !== '' ) {
			document.location.href = this.options[ this.selectedIndex ].value;
		}
	}
	dropdown.onchange = onSelectChange;
})();
/* ]]> */
</script>
			</section><section id="twitter_timeline-3" class="widget widget_twitter_timeline"><h2 class="widget-title">Follow me on Twitter</h2><a class="twitter-timeline" data-width="220" data-height="200" data-theme="light" data-border-color="#e8e8e8" data-lang="EN" data-partner="jetpack" href="https://twitter.com/https://twitter.com/ACarpenDigital" href="https://twitter.com/https://twitter.com/ACarpenDigital">My Tweets</a></section><section id="search-2" class="widget widget_search"><h2 class="widget-title">Search</h2><form role="search" method="get" class="search-form" action="https://cambridgetownowl.com/">
				<label>
					<span class="screen-reader-text">Search for:</span>
					<input type="search" class="search-field" placeholder="Search &hellip;" value="" name="s" />
				</label>
				<input type="submit" class="search-submit" value="Search" />
			</form></section>	</aside><!-- .widget-area -->


		<div class="site-info">
										<a class="site-name" href="https://cambridgetownowl.com/" rel="home">The Cambridge Town Owl</a><span class="comma">,</span>
						<a href="https://wordpress.com/?ref=footer_custom_svg" title="Create a website or blog at WordPress.com" rel="nofollow"><svg style="fill: currentColor; position: relative; top: 1px;" width="14px" height="15px" viewBox="0 0 14 15" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-labelledby="title" role="img">
				<desc id="title">Create a website or blog at WordPress.com</desc>
				<path d="M12.5225848,4.97949746 C13.0138466,5.87586309 13.2934037,6.90452431 13.2934037,7.99874074 C13.2934037,10.3205803 12.0351007,12.3476807 10.1640538,13.4385638 L12.0862862,7.88081544 C12.4453251,6.98296834 12.5648813,6.26504621 12.5648813,5.62667922 C12.5648813,5.39497674 12.549622,5.17994084 12.5225848,4.97949746 L12.5225848,4.97949746 Z M7.86730089,5.04801561 C8.24619178,5.02808979 8.58760099,4.98823815 8.58760099,4.98823815 C8.9267139,4.94809022 8.88671369,4.44972248 8.54745263,4.46957423 C8.54745263,4.46957423 7.52803983,4.54957381 6.86996227,4.54957381 C6.25158863,4.54957381 5.21247202,4.46957423 5.21247202,4.46957423 C4.87306282,4.44972248 4.83328483,4.96816418 5.17254589,4.98823815 C5.17254589,4.98823815 5.49358462,5.02808979 5.83269753,5.04801561 L6.81314716,7.73459399 L5.43565839,11.8651647 L3.14394256,5.04801561 C3.52312975,5.02808979 3.86416859,4.98823815 3.86416859,4.98823815 C4.20305928,4.94809022 4.16305906,4.44972248 3.82394616,4.46957423 C3.82394616,4.46957423 2.80475558,4.54957381 2.14660395,4.54957381 C2.02852925,4.54957381 1.88934333,4.54668493 1.74156477,4.54194422 C2.86690406,2.83350881 4.80113651,1.70529256 6.99996296,1.70529256 C8.638342,1.70529256 10.1302017,2.33173369 11.2498373,3.35765419 C11.222726,3.35602457 11.1962815,3.35261718 11.1683554,3.35261718 C10.5501299,3.35261718 10.1114609,3.89113285 10.1114609,4.46957423 C10.1114609,4.98823815 10.4107217,5.42705065 10.7296864,5.94564049 C10.969021,6.36482346 11.248578,6.90326506 11.248578,7.68133501 C11.248578,8.21992476 11.0413918,8.84503256 10.7696866,9.71584277 L10.1417574,11.8132391 L7.86730089,5.04801561 Z M6.99996296,14.2927074 C6.38218192,14.2927074 5.78595654,14.2021153 5.22195356,14.0362644 L7.11048207,8.54925635 L9.04486267,13.8491542 C9.05760348,13.8802652 9.07323319,13.9089317 9.08989995,13.9358945 C8.43574834,14.1661896 7.73285573,14.2927074 6.99996296,14.2927074 L6.99996296,14.2927074 Z M0.706448182,7.99874074 C0.706448182,7.08630113 0.902152921,6.22015756 1.25141403,5.43749503 L4.25357806,13.6627848 C2.15393732,12.6427902 0.706448182,10.4898387 0.706448182,7.99874074 L0.706448182,7.99874074 Z M6.99996296,0.999 C3.14016476,0.999 0,4.13905746 0,7.99874074 C0,11.8585722 3.14016476,14.999 6.99996296,14.999 C10.8596871,14.999 14,11.8585722 14,7.99874074 C14,4.13905746 10.8596871,0.999 6.99996296,0.999 L6.99996296,0.999 Z" id="wordpress-logo-simplified-cmyk" stroke="none" fill=“currentColor” fill-rule="evenodd"></path>
			</svg></a>					</div><!-- .site-info -->
	</footer><!-- #colophon -->

</div><!-- #page -->

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
	<div class="grofile-hash-map-4de6b8c0549e0b77a14451c1809ca40a">
	</div>
	</div>
<link rel='stylesheet' id='all-css-0-2' href='https://s0.wp.com/_static/??-eJxtjU0SgjAMhS9kTBWnO8ezQAmdQG07TQrj7S3C0uX7+x5uGVyKSlExh+o5Cvra5EDFwxCSWwRn0ty7BUL/SVXBFx7xjKbSxlcncsE/pKmGAMJKQCMrRw9Hgp2xxj6s6TDSJj/4CRxZdIe3ahKVw4aVadtfXu/nzZq7tW1q5i9l9ESZ?cssminify=yes' type='text/css' media='all' />
<script id='comment-like-js-extra'>
var comment_like_text = {"loading":"Loading..."};
</script>
<script id='wpcom-actionbar-bar-js-extra'>
var actionbardata = {"siteID":"180518617","siteName":"The Cambridge Town Owl","siteURL":"https:\/\/cambridgetownowl.com","icon":"<img alt='' src='https:\/\/cambridgetownowl.files.wordpress.com\/2020\/07\/cropped-200721-dusk-cambridge-town-owl-image-square.jpg?w=50' class='avatar avatar-50' height='50' width='50' \/>","canManageOptions":"","canCustomizeSite":"","isFollowing":"","themeSlug":"pub\/hever","signupURL":"https:\/\/wordpress.com\/start\/","loginURL":"https:\/\/wordpress.com\/log-in?redirect_to=https%3A%2F%2Fcambridgetownowl.com%2F&signup_flow=account&domain=cambridgetownowl.com","themeURL":"https:\/\/wordpress.com\/theme\/hever\/","xhrURL":"https:\/\/cambridgetownowl.com\/wp-admin\/admin-ajax.php","nonce":"b8980fe656","isSingular":"1","isFolded":"","isLoggedIn":"","isMobile":"","subscribeNonce":"<input type=\"hidden\" id=\"_wpnonce\" name=\"_wpnonce\" value=\"3527328260\" \/>","referer":"https:\/\/cambridgetownowl.com\/","canFollow":"1","feedID":"107644389","statusMessage":"","customizeLink":"https:\/\/cambridgetownowl.wordpress.com\/wp-admin\/customize.php?url=https%3A%2F%2Fcambridgetownowl.wordpress.com%2F","postID":"5","shortlink":"https:\/\/wp.me\/Pcdr8B-5","canEditPost":"","editLink":"https:\/\/wordpress.com\/block-editor\/page\/cambridgetownowl.com\/5","statsLink":"https:\/\/wordpress.com\/stats\/post\/5\/cambridgetownowl.com","i18n":{"view":"View site","follow":"Follow","following":"Following","edit":"Edit","login":"Log in","signup":"Sign up","customize":"Customize","report":"Report this content","themeInfo":"Get theme: Hever","shortlink":"Copy shortlink","copied":"Copied","followedText":"New posts from this site will now appear in your <a href=\"https:\/\/wordpress.com\/read\">Reader<\/a>","foldBar":"Collapse this bar","unfoldBar":"Expand this bar","editSubs":"Manage subscriptions","viewReader":"View site in Reader","viewReadPost":"View post in Reader","subscribe":"Sign me up","enterEmail":"Enter your email address","followers":"","alreadyUser":"Already have a WordPress.com account? <a href=\"https:\/\/wordpress.com\/log-in?redirect_to=https%3A%2F%2Fcambridgetownowl.com%2F&signup_flow=account&domain=cambridgetownowl.com\">Log in now.<\/a>","stats":"Stats"}};
</script>
<script type='text/javascript' src='https://s0.wp.com/_static/??-eJyVUMtOw0AM/CG2DhTtDfEpKNl1K6feh9ZOAn+Po7RV4RCpt9HY87BhqS6UrJgVRoGIMwWs34dRXuBhlCZXeTpTFgglJaMc0wVl1TANIAtVfEb0h9gRjqi1Dxf4ohxAF1LF5pQSMuW9wD4mym7oG6ReTGPIlRlbo2gF7tyTDtqsy17dPiiVvIru6LZtB/AUt+sjicKMOZa2jmrhnxMxHyzxv/nN+TQxOyFFh5GU8vmaCcfOd/7dd0fIuMj6LDdwsZpbimFbLaKy0W4mXCzkM328+u7Ne1N24y/ElMDT'></script>
<script type='text/javascript'>
( 'fetch' in window ) || document.write( '<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-fetch.min.js?m=1573572739h&#038;ver=3.0.0"></scr' + 'ipt>' );( document.contains ) || document.write( '<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-node-contains.min.js?m=1540208548h&#038;ver=3.42.0"></scr' + 'ipt>' );( window.DOMRect ) || document.write( '<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-dom-rect.min.js?m=1585663916h&#038;ver=3.42.0"></scr' + 'ipt>' );( window.URL && window.URL.prototype && window.URLSearchParams ) || document.write( '<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-url.min.js?m=1585663916h&#038;ver=3.6.4"></scr' + 'ipt>' );( window.FormData && window.FormData.prototype.keys ) || document.write( '<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-formdata.min.js?m=1550600082h&#038;ver=3.0.12"></scr' + 'ipt>' );( Element.prototype.matches && Element.prototype.closest ) || document.write( '<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-element-closest.min.js?m=1540208548h&#038;ver=2.0.2"></scr' + 'ipt>' );
</script>
	<script>
	/(trident|msie)/i.test(navigator.userAgent)&&document.getElementById&&window.addEventListener&&window.addEventListener("hashchange",function(){var t,e=location.hash.substring(1);/^[A-z0-9_-]+$/.test(e)&&(t=document.getElementById(e))&&(/^(?:a|select|input|button|textarea)$/i.test(t.tagName)||(t.tabIndex=-1),t.focus())},!1);
	</script>
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
</script><script src="//stats.wp.com/w.js?61" type="text/javascript" async defer></script>
<script type="text/javascript">
_tkq = window._tkq || [];
_stq = window._stq || [];
_tkq.push(['storeContext', {'blog_id':'180518617','blog_tz':'1','user_lang':'en','blog_lang':'en','user_id':'0'}]);
_stq.push(['view', {'blog':'180518617','v':'wpcom','tz':'1','user_id':'0','post':'5','subd':'cambridgetownowl'}]);
_stq.push(['extra', {'crypt':'UE40eW5QN0p8M2Y/RE1TaVhzUzFMbjdWNHpwZGhTayxPSUFCMGNrd29+Smw0TDhnZmRTK0hlRi9QSGh6bi9GXVhBJWIlZlR5U1JMLU8/MkNtblkvY1ctQWQrXWNNWz9QOGFUaXZQT0xsZGZiWUZuMl0/WUl0XWFpRiZuT054fG9vLlg4XSx4RE8uWFlRUXZ4Rm5sbi4/ZnomWzdTdHwyV3RtM25VTEE0Sm50bFozWEt5VWJ5UDU4Nk0rTEd1ejFbamRDdjdrW3RJUn5jaFdjaVZKP0ssY01saixYXzlRWXAzVktxSi9uK3VXZFcsdT8mX01BdHxqQWdyJl1FLEI9VjNSdkhFcjNGYXdbV2NQdDkuUWdffFd6bWk0fHZmWWdfZ2RZKyUsUHV+NUk1eFZt'}]);
_stq.push([ 'clickTrackerInit', '180518617', '5' ]);
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
