<!DOCTYPE html>
<html lang="es-ES">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="https://unfakingnews.com/xmlrpc.php">

<title>UnfakingNews &#8211; UnfakingNews. Cómo combatir la desinformación</title>
<script type="text/javascript">
  WebFontConfig = {"google":{"families":["Karla:b:latin,latin-ext","Exo+2:r,i,b,bi:latin,latin-ext"]}};
  (function() {
    var wf = document.createElement('script');
    wf.src = 'https://s0.wp.com/wp-content/plugins/custom-fonts/js/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
	})();
</script><style id="jetpack-custom-fonts-css">.wf-active body, .wf-active button, .wf-active input, .wf-active select, .wf-active textarea{font-family:"Exo 2",sans-serif}.wf-active h1, .wf-active h2, .wf-active h3, .wf-active h4, .wf-active h5, .wf-active h6{font-weight:700;font-family:"Karla",sans-serif;font-style:normal}.wf-active h1{font-style:normal;font-weight:700}.wf-active h2{font-style:normal;font-weight:700}.wf-active h3{font-style:normal;font-weight:700}.wf-active h4{font-style:normal;font-weight:700}.wf-active h5{font-style:normal;font-weight:700}.wf-active h6{font-style:normal;font-weight:700}.wf-active .entry-title{font-style:normal;font-weight:700}.wf-active .front-testimonials .hentry .entry-title{font-style:normal;font-weight:700}.wf-active .recent-posts .recent-posts-title{font-weight:700;font-style:normal}.wf-active .recent-posts .entry-title{font-style:normal;font-weight:700}.wf-active .site-title{font-family:"Karla",sans-serif;font-weight:700;font-style:normal}.wf-active .comment-reply-title, .wf-active .comments-title{font-style:normal;font-weight:700}.wf-active .widget-title{font-style:normal;font-weight:700}.wf-active .site-content .full-width-widget-area .widget-title{font-weight:700;font-style:normal}@media screen and (min-width: 768px){.wf-active .site-title{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active .front-testimonials .hentry .entry-title{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active .recent-posts .recent-posts-title{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active .recent-posts .entry-title{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active .entry-title{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active .widget-title{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active .site-content .full-width-widget-area .widget-title{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active .comment-reply-title, .wf-active .comments-title{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active h1{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active h2{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active h3{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active h4{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active h5{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active h6{font-style:normal;font-weight:700}}@media screen and (min-width: 768px){.wf-active .sticking .site-title{font-style:normal;font-weight:700}}</style>

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
		+ "&origin=aHR0cHM6Ly91bmZha2luZ25ld3MuY29t"
		+ "&wpcomid=147792552"
		+ "&time=1602700067";
	document.body.appendChild( iframe );
}, false );
</script>
<link rel='dns-prefetch' href='//s0.wp.com' />
<link rel='dns-prefetch' href='//unfakingnews.wordpress.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel="alternate" type="application/rss+xml" title="UnfakingNews &raquo; Feed" href="https://unfakingnews.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="UnfakingNews &raquo; RSS de los comentarios" href="https://unfakingnews.com/comments/feed/" />
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
	<link rel='stylesheet' id='all-css-0-1' href='https://s0.wp.com/_static/??-eJyd0f1qAyEMAPAXWi69Fkr3x9iz+BFsOj3FRG739vOOdpQxujIEMdFfRINzAZcnpUkxNSixBZ4E5+JyAkkcafkRDU7kBe/YzYTWQ0s19J1K+DqMw4i2cfRoY3YfENlWUxcUXSI9UWZTghfSYlZultwUQmX/3xLVKE9B/uAuX9l+6AM9i37n4Hd693Xr43s+FaPriUSeDUVK/dgjNrMPpJ3LbQ1Kn4/J1hZrSyUR6HPilkDP/a6tS+/pbTzuxsPxdDjtL1+D9bd9?cssminify=yes' type='text/css' media='all' />
<style id='wp-block-library-inline-css'>
.has-text-align-justify {
	text-align:justify;
}
</style>
<style id='global-styles-inline-css'>
:root{--wp--preset--color--black:#333333;--wp--preset--color--medium-gray:#999999;--wp--preset--color--light-gray:#dddddd;--wp--preset--color--white:#ffffff;--wp--preset--color--purple:#6636cc;--wp--preset--color--dark-purple:#471e9e;--wp--preset--color--green:#85cc36;--wp--preset--color--dark-green:#609d1b;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple:linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan:linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange:linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red:linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray:linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum:linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple:linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux:linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk:linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean:linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass:linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight:linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--font-size--small:13;--wp--preset--font-size--normal:16;--wp--preset--font-size--medium:20;--wp--preset--font-size--large:36;--wp--preset--font-size--huge:42;}
</style>
<link rel='stylesheet' id='all-css-2-1' href='https://s0.wp.com/_static/??/wp-content/themes/pub/karuna/style.css,/wp-content/themes/pub/karuna/blocks.css?m=1549503214j&cssminify=yes' type='text/css' media='all' />
<link crossorigin="anonymous" rel='stylesheet' id='karuna-fonts-css'  href='https://fonts.googleapis.com/css?family=Karla%3A400%2C400italic%2C700%2C700italic&#038;subset=latin%2Clatin-ext' media='all' />
<link rel='stylesheet' id='all-css-4-1' href='https://s0.wp.com/_static/??-eJx9jUsOwjAMRC9EMJVopS4QZ3EtEwKJHeWjqrcnXdEK0d0bed4Y5mhIpbAUCNVEX62TDJaFk2uHP3imnE+wccuTA2eIdYI3pioITghyWTybOZKGH2P3TY1XwuJUdsE8PLp0pCaevNqGFlprE48kpHV8wvSltX4Pt64fLtdh7Mb+9QFrr2mc?cssminify=yes' type='text/css' media='all' />
<style id='jetpack-global-styles-frontend-style-inline-css'>
:root { --font-headings: unset; --font-base: unset; --font-headings-default: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif; --font-base-default: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif;}
</style>
<link rel='stylesheet' id='all-css-6-1' href='https://s0.wp.com/wp-content/themes/h4/global.css?m=1420737423h&cssminify=yes' type='text/css' media='all' />
<script type='text/javascript' src='https://s0.wp.com/_static/??/wp-includes/js/jquery/jquery.js,/wp-content/js/postmessage.js,/wp-content/js/mobile-useragent-info.js?m=1558356653j'></script>
<link rel='stylesheet' id='all-css-0-2' href='https://s0.wp.com/wp-content/mu-plugins/highlander-comments/style.css?m=1530132353h&cssminify=yes' type='text/css' media='all' />
<!--[if lt IE 8]>
<link rel='stylesheet' id='highlander-comments-ie7-css'  href='https://s0.wp.com/wp-content/mu-plugins/highlander-comments/style-ie7.css?m=1351637563h&#038;ver=20110606' media='all' />
<![endif]-->
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://unfakingnews.wordpress.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://s0.wp.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress.com" />
<link rel='shortlink' href='https://wp.me/a07AQ' />

<!-- Jetpack Open Graph Tags -->
<meta property="og:type" content="website" />
<meta property="og:title" content="UnfakingNews" />
<meta property="og:description" content="UnfakingNews. Cómo combatir la desinformación" />
<meta property="og:url" content="https://unfakingnews.com/" />
<meta property="og:site_name" content="UnfakingNews" />
<meta property="og:image" content="https://unfakingnews.files.wordpress.com/2018/06/cropped-logotwitter_pequec3b1o21.jpg?w=200" />
<meta property="og:image:width" content="200" />
<meta property="og:image:height" content="200" />
<meta property="og:locale" content="es_ES" />
<meta name="twitter:site" content="@wordpressdotcom" />

<!-- End Jetpack Open Graph Tags -->
<link rel="search" type="application/opensearchdescription+xml" href="https://unfakingnews.com/osd.xml" title="UnfakingNews" />
<link rel="search" type="application/opensearchdescription+xml" href="https://s1.wp.com/opensearch.xml" title="WordPress.com" />
<meta name="application-name" content="UnfakingNews" /><meta name="msapplication-window" content="width=device-width;height=device-height" /><meta name="msapplication-tooltip" content="UnfakingNews. Cómo combatir la desinformación" /><meta name="msapplication-task" content="name=Suscribirse;action-uri=https://unfakingnews.com/feed/;icon-uri=https://unfakingnews.files.wordpress.com/2018/06/cropped-logotwitter_pequec3b1o21.jpg?w=16" /><meta name="msapplication-task" content="name=Registrar un blog gratuito;action-uri=http://wordpress.com/signup/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=Ayuda de WordPress.com;action-uri=http://support.wordpress.com/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=Foros de WordPress.com;action-uri=http://forums.wordpress.com/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="description" content="UnfakingNews. Cómo combatir la desinformación" />
	<style type="text/css">
			.site-title,
		.site-description {
			position: absolute;
			clip: rect(1px, 1px, 1px, 1px);
		}
		</style>
	<link rel="icon" href="https://unfakingnews.files.wordpress.com/2018/06/cropped-logotwitter_pequec3b1o21.jpg?w=32" sizes="32x32" />
<link rel="icon" href="https://unfakingnews.files.wordpress.com/2018/06/cropped-logotwitter_pequec3b1o21.jpg?w=192" sizes="192x192" />
<link rel="apple-touch-icon" href="https://unfakingnews.files.wordpress.com/2018/06/cropped-logotwitter_pequec3b1o21.jpg?w=180" />
<meta name="msapplication-TileImage" content="https://unfakingnews.files.wordpress.com/2018/06/cropped-logotwitter_pequec3b1o21.jpg?w=270" />
</head>

<body class="home blog wp-embed-responsive customizer-styles-applied hfeed no-top-bar highlander-enabled highlander-light">
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content">Saltar al contenido</a>

	<header id="masthead" class="site-header" role="banner">

		<div class="top-bar">
	<div class="top-bar-wrapper">
					<p class="site-description">UnfakingNews. Cómo combatir la desinformación</p>
		
			</div><!-- .top-bar-wrapper -->
</div><!-- .top-bar -->
		<div class="sticky-wrapper">
	<div class="site-branding-wrapper">
		<div class="site-branding">
										<h1 class="site-title"><a href="https://unfakingnews.com/" rel="home">UnfakingNews</a></h1>
					</div><!-- .site-branding -->

		<nav id="site-navigation" class="main-navigation" role="navigation">
	<button class="menu-toggle" aria-controls="top-menu" aria-expanded="false"><span class="genericon genericon-menu"></span>Menú</button>
	<div id="top-menu" class="menu"><ul>
<li class="page_item page-item-202"><a href="https://unfakingnews.com/unfakingnews-como-combatir-la-desinformacion/">&#8220;UnfakingNews. Cómo combatir la desinformación&#8221;</a></li>
<li class="page_item page-item-192"><a href="https://unfakingnews.com/desinformacion-y-pandemia-la-nueva-realidad/">Desinformación y pandemia. La nueva&nbsp;realidad</a></li>
<li class="page_item page-item-3"><a href="https://unfakingnews.com/contacto/">El proyecto Unfaking&nbsp;News</a></li>
</ul></div>
</nav><!-- #site-navigation -->
			</div><!-- .site-branding-wrapper -->
</div><!-- .sticky-wrapper -->
					<img src="https://unfakingnews.files.wordpress.com/2020/09/cropped-portadas.jpg" width="2000" height="800" alt="" class="custom-header">
		
		
	</header>
	<div id="content" class="site-content">	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

		
<article id="post-204" class="post-204 post type-post status-publish format-standard hentry category-uncategorized">
	
	<header class="entry-header">
		<h2 class="entry-title"><a href="https://unfakingnews.com/2020/09/29/desinformacion-y-pandemia-la-nueva-realidad/" rel="bookmark">Desinformación y pandemia. La nueva&nbsp;realidad</a></h2>				<div class="entry-meta">
			<span class="posted-on"><a href="https://unfakingnews.com/2020/09/29/desinformacion-y-pandemia-la-nueva-realidad/" rel="bookmark"><time class="entry-date published" datetime="2020-09-29T15:00:30+00:00">septiembre 29, 2020</time><time class="updated" datetime="2020-09-29T15:50:56+00:00">septiembre 29, 2020</time></a></span><span class="byline"> por <span class="author vcard"><a class="url fn n" href="https://unfakingnews.com/author/unfakingnews/">unfakingnews</a></span></span>		</div><!-- .entry-meta -->			</header>
	<div class="entry-content">
		
<p>Si la realidad se detuvo cuando empezamos a comprender la importancia de la pandemia, la resaca del tsunami de desinformación nos ha permitido captar una visión panorámica de sus procesos, de sus formas de distribución y circulación, pero también de sus motivaciones y primeras consecuencias. </p>



<p>Vivimos un momento de normalización de todos los procesos de desinformación en la esfera pública. No asistimos solo a un fenómeno que afecta únicamente a la desinformación de carácter político sino, y quizá sea más importante, a los bulos relacionados con la inmigración o la ciencia. </p>



<p>En este escenario, la mediatización extrema generada por el confinamiento reforzó la idea de que el miedo y la desinformación están estrechamente vinculados. Cuanto menos se puede ver y comprobar la realidad físicamente, más dudas aparecen sobre el contenido cierto de los acontecimientos pero también de sus consecuencias. </p>



<p>Este libro se centra en el ecosistema informativo como una ventana desde la cual intentar relacionar y explicar las demás. La normalización de los procesos de desinformación, el miedo como impulsor de sobredosis informativas, el cansancio y la fatiga como mecanismo generador de autoprotección informativa o la polarización como herramienta estratégica de distorsión de la realidad se plantean como las problemáticas más evidentes. La batalla contra la desinformación no solo está en detener su viralización o hacer más sexy la verdad, también está en la capacidad para generar de forma rápida dudas en la ciudadanía que hagan que esta decida no compartir una información no contrastada. </p>



<p>En este contexto, y durante las primeras semanas de la pandemia, fue más importante detener la desinformación que dar una información (parcial e incompleta) de la evolución de la crisis.</p>



<figure class="wp-block-image"><img data-attachment-id="190" data-permalink="https://unfakingnews.com/portada-final/" data-orig-file="https://unfakingnews.files.wordpress.com/2020/09/portada-final-e1601365195578.jpg" data-orig-size="562,844" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="portada-final-" data-image-description="" data-medium-file="https://unfakingnews.files.wordpress.com/2020/09/portada-final-e1601365195578.jpg?w=200" data-large-file="https://unfakingnews.files.wordpress.com/2020/09/portada-final-e1601365195578.jpg?w=562" src="https://unfakingnews.files.wordpress.com/2020/09/portada-final-e1601365195578.jpg" alt="portada-final-" class="wp-image-190" /></figure>



<p>A la venta a partir del 1 de octubre de 2020. Más información en el siguiente<a href="https://www.edicionespiramide.es/libro.php?id=6502873"> enlace.</a></p>
	</div>
		<footer class="entry-footer">
		<span class="comments-link"><a href="https://unfakingnews.com/2020/09/29/desinformacion-y-pandemia-la-nueva-realidad/#respond">Deja un comentario</a></span>	</footer><!-- .entry-footer -->
	</article><!-- #post-## -->
		</main>
	</div>

<aside id="secondary" class="widget-area" role="complementary">
	<section id="text-1" class="widget widget_text">			<div class="textwidget"></div>
		</section><section id="twitter_timeline-3" class="widget widget_twitter_timeline"><h2 class="widget-title">Sígueme en Twitter</h2><a class="twitter-timeline" data-height="400" data-theme="light" data-border-color="#e8e8e8" data-lang="ES" data-partner="jetpack" href="https://twitter.com/unfakingnews" href="https://twitter.com/unfakingnews">Mis tuits</a></section></aside>
			</div><!-- #content -->
	<footer id="colophon" class="site-footer" role="contentinfo">
				<div class="site-info">
	<a href="https://wordpress.com/?ref=footer_blog" rel="nofollow">Blog de WordPress.com.</a>
	
	</div><!-- .site-info -->	</footer>
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
	</div>
<script id='highlander-comments-js-extra'>
var HighlanderComments = {"loggingInText":"Iniciando sesi\u00f3n\u2026","submittingText":"Publicando comentario\u2026","postCommentText":"Publicar comentario","connectingToText":"Conectando a %s","commentingAsText":"%1$s: Est\u00e1s comentando usando tu cuenta de %2$s.","logoutText":"Cerrar sesi\u00f3n","loginText":"Acceder","connectURL":"https:\/\/unfakingnews.wordpress.com\/public.api\/connect\/?action=request&domain=unfakingnews.com","logoutURL":"https:\/\/unfakingnews.wordpress.com\/wp-login.php?action=logout&_wpnonce=f94afa5c87","homeURL":"https:\/\/unfakingnews.com\/","postID":"204","gravDefault":"identicon","enterACommentError":"Por favor, introduce un comentario","enterEmailError":"Por favor introduce tu direcci\u00f3n de correo electr\u00f3nico aqu\u00ed","invalidEmailError":"Direcci\u00f3n de correo electr\u00f3nico no v\u00e1lida","enterAuthorError":"Por favor, introduce tu nombre aqu\u00ed","gravatarFromEmail":"Esta imagen se mostrar\u00e1 cuando dejes un comentario. Haz clic para cambiarla.","logInToExternalAccount":"Inicia sesi\u00f3n para usar los datos de una de estas cuentas.","change":"Cambiar","changeAccount":"Cambiar cuenta","comment_registration":"0","userIsLoggedIn":"","isJetpack":"","text_direction":"ltr"};
</script>
<script type='text/javascript' src='https://s0.wp.com/_static/??/wp-content/js/jquery/jquery.autoresize.js,/wp-content/mu-plugins/highlander-comments/script.js?m=1573483029j'></script>

	<div id="carousel-reblog-box">
		<form action="#" name="carousel-reblog">
			<textarea id="carousel-reblog-content" name="carousel-reblog-content" placeholder="Añade tus pensamientos aquí... (opcional)"></textarea>
			<label for="carousel-reblog-to-blog-id" id="carousel-reblog-lblogid">Publicar en</label>
			<select name="carousel-reblog-to-blog-id" id="carousel-reblog-to-blog-id">
						</select>

			<div class="submit">
				<span class="canceltext"><a href="#" class="cancel">Cancelar</a></span>
				<input type="submit" name="carousel-reblog-submit" class="button" id="carousel-reblog-submit" value="Rebloguear entrada" />
				<input type="hidden" id="carousel-reblog-blog-id" value="147792552" />
				<input type="hidden" id="carousel-reblog-blog-url" value="https://unfakingnews.com" />
				<input type="hidden" id="carousel-reblog-blog-title" value="UnfakingNews" />
				<input type="hidden" id="carousel-reblog-post-url" value="" />
				<input type="hidden" id="carousel-reblog-post-title" value="" />
			</div>

			<input type="hidden" id="_wpnonce" name="_wpnonce" value="95aa48c830" /><input type="hidden" name="_wp_http_referer" value="/" />		</form>

		<div class="arrow"></div>
	</div>
<link rel='stylesheet' id='all-css-0-3' href='https://s0.wp.com/wp-content/mu-plugins/carousel/jetpack-carousel.css?m=1592560282h&cssminify=yes' type='text/css' media='all' />
<script id='wpcom-actionbar-bar-js-extra'>
var actionbardata = {"siteID":"147792552","siteName":"UnfakingNews","siteURL":"https:\/\/unfakingnews.com","icon":"<img alt='' src='https:\/\/unfakingnews.files.wordpress.com\/2018\/06\/cropped-logotwitter_pequec3b1o21.jpg?w=50' class='avatar avatar-50' height='50' width='50' \/>","canManageOptions":"","canCustomizeSite":"","isFollowing":"","themeSlug":"pub\/karuna","signupURL":"https:\/\/wordpress.com\/start\/","loginURL":"https:\/\/wordpress.com\/log-in?redirect_to=https%3A%2F%2Funfakingnews.com%2F2020%2F09%2F29%2Fdesinformacion-y-pandemia-la-nueva-realidad%2F&signup_flow=account&domain=unfakingnews.com","themeURL":"https:\/\/wordpress.com\/theme\/karuna\/","xhrURL":"https:\/\/unfakingnews.com\/wp-admin\/admin-ajax.php","nonce":"b8980fe656","isSingular":"","isFolded":"","isLoggedIn":"","isMobile":"","subscribeNonce":"<input type=\"hidden\" id=\"_wpnonce\" name=\"_wpnonce\" value=\"ce252fc289\" \/>","referer":"https:\/\/unfakingnews.com\/","canFollow":"1","feedID":"84018130","statusMessage":"","customizeLink":"https:\/\/unfakingnews.wordpress.com\/wp-admin\/customize.php?url=https%3A%2F%2Funfakingnews.wordpress.com%2F","i18n":{"view":"Ver sitio web","follow":"Seguir","following":"Siguiendo","edit":"Editar","login":"Acceder","signup":"Reg\u00edstrate","customize":"Personalizar","report":"Denunciar este contenido","themeInfo":"Obtener el tema: Karuna","shortlink":"Copiar enlace corto","copied":"Copiado","followedText":"Las entradas nuevas de este sitio aparecer\u00e1n ahora en tu <a href=\"https:\/\/wordpress.com\/read\">Lector<\/a>","foldBar":"Contraer esta barra","unfoldBar":"Expandir esta barra","editSubs":"Gestionar las suscripciones","viewReader":"Ver sitio web en el Lector","viewReadPost":"View post in Reader","subscribe":"Suscr\u00edbeme","enterEmail":"Introduce tu email","followers":"","alreadyUser":"\u00bfYa tienes una cuenta de WordPress.com? <a href=\"https:\/\/wordpress.com\/log-in?redirect_to=https%3A%2F%2Funfakingnews.com%2F2020%2F09%2F29%2Fdesinformacion-y-pandemia-la-nueva-realidad%2F&signup_flow=account&domain=unfakingnews.com\">Accede ahora<\/a>.","stats":"Estad\u00edsticas"}};
</script>
<script id='jetpack-carousel-js-extra'>
var jetpackCarouselStrings = {"widths":[370,700,1000,1200,1400,2000],"is_logged_in":"","lang":"es","ajaxurl":"https:\/\/unfakingnews.com\/wp-admin\/admin-ajax.php","nonce":"b0482a7261","display_exif":"1","display_comments":"1","display_geo":"1","single_image_gallery":"1","single_image_gallery_media_file":"","background_color":"black","comment":"Comentario","post_comment":"Publicar comentario","write_comment":"Escribe un comentario...","loading_comments":"Cargando comentarios...","download_original":"Ver tama\u00f1o completo <span class=\"photo-size\">{0}<span class=\"photo-size-times\">\u00d7<\/span>{1}<\/span>","no_comment_text":"Por favor, aseg\u00farate de enviar el texto con tu comentario.","no_comment_email":"Por favor, proporciona una direcci\u00f3n de correo electr\u00f3nico para comentar.","no_comment_author":"Por favor, a\u00f1ade tu nombre al comentario.","comment_post_error":"Lo sentimos, pero ha habido un error al publicar tu comentario. Por favor, vuelve a intentarlo m\u00e1s tarde.","comment_approved":"Se ha aprobado tu comentario.","comment_unapproved":"Tu comentario est\u00e1 en moderaci\u00f3n.","camera":"C\u00e1mara","aperture":"Abertura","shutter_speed":"Velocidad de obturaci\u00f3n","focal_length":"Longitud focal","copyright":"Derechos de autor","comment_registration":"0","require_name_email":"1","login_url":"https:\/\/unfakingnews.wordpress.com\/wp-login.php?redirect_to=https%3A%2F%2Funfakingnews.com%2F2020%2F09%2F29%2Fdesinformacion-y-pandemia-la-nueva-realidad%2F","blog_id":"147792552","meta_data":["camera","aperture","shutter_speed","focal_length","copyright"],"local_comments_commenting_as":"<fieldset><label for=\"email\">Correo electr\u00f3nico (Obligatorio)<\/label> <input type=\"text\" name=\"email\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-email-field\" \/><\/fieldset><fieldset><label for=\"author\">Nombre (Obligatorio)<\/label> <input type=\"text\" name=\"author\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-author-field\" \/><\/fieldset><fieldset><label for=\"url\">Web<\/label> <input type=\"text\" name=\"url\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-url-field\" \/><\/fieldset>","reblog":"Rebloguear","reblogged":"Reblogueado","reblog_add_thoughts":"A\u00f1ade tus pensamientos aqu\u00ed... (opcional)","reblogging":"Reblogueando...","post_reblog":"Reblog de entrada","stats_query_args":"blog=147792552&v=wpcom&tz=0&user_id=0&subd=unfakingnews","is_public":"1","reblog_enabled":""};
</script>
<script type='text/javascript' src='https://s0.wp.com/_static/??-eJyVj+FqwzAMhF9ortZAYf0x9ihDcZRUSSwbS077+HMKKWODQNAfcfanu4N7cj6KkRiMCh0t7Ck9TqO+wa+nNJeBRcHHdo5+UmhOdaBjfWKb7GYebtbGf7zdKJBCKi1MmIsgoCqZrrDgwgMaRzlC6cSp2snk+uiLup4PmfZF/Gqpf6FQ3FZ2JEvoJ/hm8WB3NqPsjANVW9rhsAssrsUMAbUydXNxoZy5q3Fe2sELlmuWvbj4LLRCr23nt8cci9K8tXSbUJmv8Hm+XD/ez9fm0ow/lVLMkA=='></script>
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
_tkq.push(['storeContext', {'blog_id':'147792552','blog_tz':'0','user_lang':'es','blog_lang':'es','user_id':'0'}]);
_stq.push(['view', {'blog':'147792552','v':'wpcom','tz':'0','user_id':'0','subd':'unfakingnews'}]);
_stq.push(['extra', {'crypt':'UE40eW5QN0p8M2Y/RE1TaVhzUzFMbjdWNHpwZGhTayxPSUFCMGNrd29+Smw0TDhnZmRTK0hlRi9QSGh6bi9GXVhBJWIlZlR5U1JMLU8/MkNtblkvY1dxbnU5TVFnOHpCK2csXVsmcjIxMHMmRFNDV0dxSHM4K1VhZVhyQ1FOeE5ndWllZGFhU1t3K01RXy8vZ2N6SEYxTHxiM1ZvdWR+SDVTW2NiLGgwSGFZfEIwZGJVejFiRUVMZkRzMklPX3wldHkxTTkyNG5LeVtXPUZnUVFlfGJoYVpYWVtDVVRaYVlyaVhsTlp8N25lP0VxYTgsa3R8WG85S2hpfklnNkQseG9tZnNuSHx3R2lzSWhMLTkzcGJsb0k3ejQv'}]);
_stq.push([ 'clickTrackerInit', '147792552', '0' ]);
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
<!--
	generated in 0.209 seconds
	38501 bytes batcached for 300 seconds
-->
