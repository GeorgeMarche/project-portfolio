<!DOCTYPE html>
<html lang="fr-FR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="https://eniort.com/xmlrpc.php">

<title>E.Niort &#8211; Toujours sur la Brèche</title>

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
		+ "&origin=aHR0cHM6Ly9lbmlvcnQuY29t"
		+ "&wpcomid=34499549"
		+ "&time=1602701134";
	document.body.appendChild( iframe );
}, false );
</script>
<link rel='dns-prefetch' href='//s0.wp.com' />
<link rel='dns-prefetch' href='//eniort.wordpress.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.pubmine.com' />
<link rel='dns-prefetch' href='//x.bidswitch.net' />
<link rel='dns-prefetch' href='//static.criteo.net' />
<link rel='dns-prefetch' href='//ib.adnxs.com' />
<link rel='dns-prefetch' href='//aax.amazon-adsystem.com' />
<link rel='dns-prefetch' href='//bidder.criteo.com' />
<link rel='dns-prefetch' href='//cas.criteo.com' />
<link rel='dns-prefetch' href='//gum.criteo.com' />
<link rel='dns-prefetch' href='//ads.pubmatic.com' />
<link rel='dns-prefetch' href='//gads.pubmatic.com' />
<link rel='dns-prefetch' href='//tpc.googlesyndication.com' />
<link rel='dns-prefetch' href='//ad.doubleclick.net' />
<link rel='dns-prefetch' href='//googleads.g.doubleclick.net' />
<link rel='dns-prefetch' href='//www.googletagservices.com' />
<link rel='dns-prefetch' href='//cdn.switchadhub.com' />
<link rel='dns-prefetch' href='//delivery.g.switchadhub.com' />
<link rel='dns-prefetch' href='//delivery.swid.switchadhub.com' />
<link rel='dns-prefetch' href='//a.teads.tv' />
<link rel='dns-prefetch' href='//prebid.media.net' />
<link rel='dns-prefetch' href='//adserver-us.adtech.advertising.com' />
<link rel='dns-prefetch' href='//fastlane.rubiconproject.com' />
<link rel='dns-prefetch' href='//prebid-server.rubiconproject.com' />
<link rel='dns-prefetch' href='//hb-api.omnitagjs.com' />
<link rel='dns-prefetch' href='//mtrx.go.sonobi.com' />
<link rel='dns-prefetch' href='//apex.go.sonobi.com' />
<link rel='dns-prefetch' href='//u.openx.net' />
<link rel="alternate" type="application/rss+xml" title="E.Niort &raquo; Flux" href="https://eniort.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="E.Niort &raquo; Flux des commentaires" href="https://eniort.com/comments/feed/" />
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
	<link rel='stylesheet' id='all-css-0-1' href='https://s0.wp.com/_static/??-eJydketKQzEMgF/InniOMNkP8Vl6iTWzN5qU0be3Z27z4ERFCqVJvy+hDRyLsjkJJoHYVAnNU2I4Fpuj4kgB+5dossx3sNFMyP5TzNVpx+BDNjrcsJsWlF4okfTr4Qa+kL6N0GD146Yi7Kd5msE0Cm7tbd9UIFN17cDSA/6hzMliOKAUveq65ybKV3L/LVG1UPL8i27zWVumscARyzWnvlc3H7Y+fuRj0bISER1pDBgH9pP2MTxjSkVmNfZILSp5HeJpls/xad7dL7v9Mj88Ht4Bzq/GEQ==?cssminify=yes' type='text/css' media='all' />
<style id='wp-block-library-inline-css'>
.has-text-align-justify {
	text-align:justify;
}
</style>
<style id='global-styles-inline-css'>
:root{--wp--preset--color--black:#000000;--wp--preset--color--cyan-bluish-gray:#abb8c3;--wp--preset--color--white:#ffffff;--wp--preset--color--pale-pink:#f78da7;--wp--preset--color--vivid-red:#cf2e2e;--wp--preset--color--luminous-vivid-orange:#ff6900;--wp--preset--color--luminous-vivid-amber:#fcb900;--wp--preset--color--light-green-cyan:#7bdcb5;--wp--preset--color--vivid-green-cyan:#00d084;--wp--preset--color--pale-cyan-blue:#8ed1fc;--wp--preset--color--vivid-cyan-blue:#0693e3;--wp--preset--color--vivid-purple:#9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple:linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan:linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange:linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red:linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray:linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum:linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple:linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux:linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk:linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean:linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass:linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight:linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--font-size--small:13;--wp--preset--font-size--normal:16;--wp--preset--font-size--medium:20;--wp--preset--font-size--large:36;--wp--preset--font-size--huge:42;}
</style>
<link rel='stylesheet' id='all-css-2-1' href='https://s0.wp.com/wp-content/themes/pub/cerauno/style.css?m=1464100514h&cssminify=yes' type='text/css' media='all' />
<link crossorigin="anonymous" rel='stylesheet' id='cerauno-fonts-css'  href='https://fonts.googleapis.com/css?family=Karla%3A400%2C400italic%2C700%2C700italic%7CMontserrat%3A400%2C700&#038;subset=latin%2Clatin-ext' media='all' />
<link rel='stylesheet' id='all-css-4-1' href='https://s0.wp.com/_static/??-eJyNjd0KwjAMRl/IGhUm80J8lqxmta5tSn+ovr1xNyrC2E044cv5Ai0qzaFQKFBu5ClDrANoSlgDwyhRnqfCRpk9bXXOG1i2bNCQy9ORalGz/1N8VdFVY0OGZq+G5AVVSXmypBw2KOSjwyK1c82aghE1DdKgnJ0EHutN4YImof/QkmaIlWONxXL4WdTo0KYlNdHg2AgakKuv9S1d/HnfnXb7Y3fo+/sLAAuZkw==?cssminify=yes' type='text/css' media='all' />
<link rel='stylesheet' id='print-css-5-1' href='https://s0.wp.com/wp-content/mu-plugins/global-print/global-print.css?m=1465851035h&cssminify=yes' type='text/css' media='print' />
<link rel='stylesheet' id='all-css-6-1' href='https://s0.wp.com/wp-content/mu-plugins/actionbar/actionbar.css?m=1560469195h&cssminify=yes' type='text/css' media='all' />
<style id='jetpack-global-styles-frontend-style-inline-css'>
:root { --font-headings: unset; --font-base: unset; --font-headings-default: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif; --font-base-default: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif;}
</style>
<link rel='stylesheet' id='all-css-8-1' href='https://s0.wp.com/wp-content/themes/h4/global.css?m=1420737423h&cssminify=yes' type='text/css' media='all' />
<script type='text/javascript' src='https://s0.wp.com/_static/??/wp-includes/js/jquery/jquery.js,/wp-content/js/postmessage.js,/wp-content/js/mobile-useragent-info.js?m=1558356653j'></script>
<link rel='stylesheet' id='all-css-0-2' href='https://s0.wp.com/wp-content/mu-plugins/highlander-comments/style.css?m=1530132353h&cssminify=yes' type='text/css' media='all' />
<!--[if lt IE 8]>
<link rel='stylesheet' id='highlander-comments-ie7-css'  href='https://s0.wp.com/wp-content/mu-plugins/highlander-comments/style-ie7.css?m=1351637563h&#038;ver=20110606' media='all' />
<![endif]-->
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://eniort.wordpress.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://s0.wp.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress.com" />
<link rel='shortlink' href='https://wp.me/2kKUl' />

<!-- Jetpack Open Graph Tags -->
<meta property="og:type" content="website" />
<meta property="og:title" content="E.Niort" />
<meta property="og:description" content="Toujours sur la Brèche" />
<meta property="og:url" content="https://eniort.com/" />
<meta property="og:site_name" content="E.Niort" />
<meta property="og:image" content="https://eniort.files.wordpress.com/2020/05/image.jpg?w=200" />
<meta property="og:image:width" content="200" />
<meta property="og:image:height" content="200" />
<meta property="og:locale" content="fr_FR" />
<meta name="twitter:site" content="@wordpressdotcom" />

<!-- End Jetpack Open Graph Tags -->
<link rel='openid.server' href='https://eniort.com/?openidserver=1' />
<link rel='openid.delegate' href='https://eniort.com/' />
<link rel="search" type="application/opensearchdescription+xml" href="https://eniort.com/osd.xml" title="E.Niort" />
<link rel="search" type="application/opensearchdescription+xml" href="https://s1.wp.com/opensearch.xml" title="WordPress.com" />
<meta name="application-name" content="E.Niort" /><meta name="msapplication-window" content="width=device-width;height=device-height" /><meta name="msapplication-tooltip" content="Toujours sur la Brèche" /><meta name="msapplication-task" content="name=Souscrire;action-uri=https://eniort.com/feed/;icon-uri=https://eniort.files.wordpress.com/2020/05/image.jpg?w=16" /><meta name="msapplication-task" content="name=Inscrivez-vous pour créer un blog gratuitement;action-uri=http://wordpress.com/signup/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=Assistance WordPress.com;action-uri=http://support.wordpress.com/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=Forums WordPress.com;action-uri=http://forums.wordpress.com/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="description" content="Toujours sur la Brèche" />

		<style type="text/css" id="custom-header-image">
			.site-branding:before {
				background-image: url( https://eniort.files.wordpress.com/2015/07/cropped-fond-charlie1.jpg);
				background-position: center;
				background-repeat: no-repeat;
				background-size: cover;
				content: "";
				display: block;
				opacity: 0.2;
				position: absolute;
					top: 0;
					left: 0;
				width: 100%;
				height: 100%;
				z-index: -1;
			}
		</style>
			<script type="text/javascript">
		function __ATA_CC() {var v = document.cookie.match('(^|;) ?personalized-ads-consent=([^;]*)(;|$)');return v ? 1 : 0;}
		var __ATA_PP = { pt: 0, ht: 1, tn: 'cerauno', amp: false, siteid: 34499549, consent: __ATA_CC() };
		var __ATA = __ATA || {};
		__ATA.cmd = __ATA.cmd || [];
		__ATA.criteo = __ATA.criteo || {};
		__ATA.criteo.cmd = __ATA.criteo.cmd || [];
		</script>
		<script type="text/javascript">
		(function(){var g=Date.now||function(){return+new Date};function h(a,b){a:{for(var c=a.length,d="string"==typeof a?a.split(""):a,e=0;e<c;e++)if(e in d&&b.call(void 0,d[e],e,a)){b=e;break a}b=-1}return 0>b?null:"string"==typeof a?a.charAt(b):a[b]};function k(a,b,c){c=null!=c?"="+encodeURIComponent(String(c)):"";if(b+=c){c=a.indexOf("#");0>c&&(c=a.length);var d=a.indexOf("?");if(0>d||d>c){d=c;var e=""}else e=a.substring(d+1,c);a=[a.substr(0,d),e,a.substr(c)];c=a[1];a[1]=b?c?c+"&"+b:b:c;a=a[0]+(a[1]?"?"+a[1]:"")+a[2]}return a};var l=0;function m(a,b){var c=document.createElement("script");c.src=a;c.onload=function(){b&&b(void 0)};c.onerror=function(){b&&b("error")};a=document.getElementsByTagName("head");var d;a&&0!==a.length?d=a[0]:d=document.documentElement;d.appendChild(c)}function n(a){var b=void 0===b?document.cookie:b;return(b=h(b.split("; "),function(c){return-1!=c.indexOf(a+"=")}))?b.split("=")[1]:""}function p(a){return"string"==typeof a&&0<a.length}
		function r(a,b,c){b=void 0===b?"":b;c=void 0===c?".":c;var d=[];Object.keys(a).forEach(function(e){var f=a[e],q=typeof f;"object"==q&&null!=f||"function"==q?d.push(r(f,b+e+c)):null!==f&&void 0!==f&&(e=encodeURIComponent(b+e),d.push(e+"="+encodeURIComponent(f)))});return d.filter(p).join("&")}function t(a,b){a||((window.__ATA||{}).config=b.c,m(b.url))}var u=Math.floor(1E13*Math.random()),v=window.__ATA||{};window.__ATA=v;window.__ATA.cmd=v.cmd||[];v.rid=u;v.createdAt=g();var w=window.__ATA||{},x="s.pubmine.com";
		w&&w.serverDomain&&(x=w.serverDomain);var y="//"+x+"/conf",z=window.top===window,A=window.__ATA_PP&&window.__ATA_PP.gdpr_applies,B="boolean"===typeof A?Number(A):null,C=window.__ATA_PP||null,D=z?document.referrer?document.referrer:null:null,E=z?window.location.href:document.referrer?document.referrer:null,F,G=n("__ATA_tuuid");F=G?G:null;var H=window.innerWidth+"x"+window.innerHeight,I=n("usprivacy"),J=r({gdpr:B,pp:C,rid:u,src:D,ref:E,tuuid:F,vp:H,us_privacy:I?I:null},"",".");
		(function(a){var b=void 0===b?"cb":b;l++;var c="callback__"+g().toString(36)+"_"+l.toString(36);a=k(a,b,c);window[c]=function(d){t(void 0,d)};m(a,function(d){d&&t(d)})})(y+"?"+J);}).call(this);
		</script><link rel="icon" href="https://eniort.files.wordpress.com/2020/05/image.jpg?w=32" sizes="32x32" />
<link rel="icon" href="https://eniort.files.wordpress.com/2020/05/image.jpg?w=192" sizes="192x192" />
<link rel="apple-touch-icon" href="https://eniort.files.wordpress.com/2020/05/image.jpg?w=180" />
<meta name="msapplication-TileImage" content="https://eniort.files.wordpress.com/2020/05/image.jpg?w=270" />
</head>

<body class="home blog customizer-styles-applied highlander-enabled highlander-light">
<div id="page" class="hfeed site">
	<a class="skip-link screen-reader-text" href="#content">Accéder au contenu principal</a>

	<header id="masthead" class="site-header" role="banner">
		<nav id="site-navigation" class="main-navigation clear" role="navigation">
			<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false">Menu</button>
			<div id="primary-menu" class="menu"><ul>
<li class="page_item page-item-2"><a href="https://eniort.com/about/">A propos</a></li>
<li class="page_item page-item-708"><a href="https://eniort.com/accueil/">Accueil</a></li>
</ul></div>

					</nav><!-- #site-navigation -->

		<div class="site-branding">
						<h1 class="site-title"><a href="https://eniort.com/" rel="home">E.Niort</a></h1>
			<h2 class="site-description">Toujours sur la Brèche</h2>
		</div><!-- .site-branding -->
	</header><!-- #masthead -->

	<div id="content" class="site-content">

	
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

		
						
				
<article id="post-3592" class="post-3592 post type-post status-publish format-standard has-post-thumbnail hentry category-commerce category-niort category-pratique tag-commerce tag-niort tag-pratique">
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://eniort.com/2020/08/15/15-aout-2020-ce-qui-est-ouvert-ou-ferme-a-niort/" rel="bookmark">15 août 2020 : ce qui est ouvert ou fermé à&nbsp;Niort</a></h1>
					<div class="featured-image">
				<a href="https://eniort.com/2020/08/15/15-aout-2020-ce-qui-est-ouvert-ou-ferme-a-niort/" title="15 août 2020 : ce qui est ouvert ou fermé à&nbsp;Niort"><img width="600" height="299" src="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600&amp;h=299&amp;crop=1" class="attachment-cerauno-home size-cerauno-home wp-post-image" alt="Niort ouvert ou fermé" loading="lazy" srcset="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg 600w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=150&amp;h=75&amp;crop=1 150w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300&amp;h=150&amp;crop=1 300w" sizes="(max-width: 600px) 100vw, 600px" data-attachment-id="698" data-permalink="https://eniort.com/2015/11/11/11-novembre-loisirs-culture-grandes-surfaces-ce-qui-est-ouvert-ou-ferme-a-niort/ouvert-ferme-coupe/" data-orig-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg" data-orig-size="600,299" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="ouvert fermé coupé" data-image-description="" data-medium-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300" data-large-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600" /></a>
			</div>
			</header><!-- .entry-header -->

	<div class="entry-summary">
		<p>Transports: Les bus du réseau TANLIB ne circulent pas aujourd’hui. Loisirs et Culture: Niort: Le Donjon:                                  Ouvert de 14h00 à 19h00 Musée d’Agesci:                        Ouvert de 14h00 à 19h00&hellip; <a class="more-link" href="https://eniort.com/2020/08/15/15-aout-2020-ce-qui-est-ouvert-ou-ferme-a-niort/">Lire la suite <span class="screen-reader-text">15 août 2020 : ce qui est ouvert ou fermé à&nbsp;Niort</span></a></p>
	</div><!-- .entry-excerpt -->

			<div class="entry-meta">
			<span class="posted-on"><a href="https://eniort.com/2020/08/15/15-aout-2020-ce-qui-est-ouvert-ou-ferme-a-niort/" rel="bookmark"><time class="entry-date published updated" datetime="2020-08-15T05:20:31+00:00">août 15, 2020</time></a></span><span class="byline"> <span class="author vcard"><a class="url fn n" href="https://eniort.com/author/eniort/">eniort</a></span></span><span class="comments-link"><a href="https://eniort.com/2020/08/15/15-aout-2020-ce-qui-est-ouvert-ou-ferme-a-niort/#respond">Laisser un commentaire</a></span>		</div><!-- .entry-meta -->
	
</article><!-- #post-## -->

			
				
<article id="post-3580" class="post-3580 post type-post status-publish format-standard has-post-thumbnail hentry category-actualites-2 category-niort category-pratique tag-actualites tag-niort">
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://eniort.com/2020/08/02/covid-19-operations-de-depistage-gratuit-a-niort-et-en-deux-sevres/" rel="bookmark">Covid-19 : opérations de dépistage gratuit à Niort et en&nbsp;Deux-Sèvres</a></h1>
					<div class="featured-image">
				<a href="https://eniort.com/2020/08/02/covid-19-operations-de-depistage-gratuit-a-niort-et-en-deux-sevres/" title="Covid-19 : opérations de dépistage gratuit à Niort et en&nbsp;Deux-Sèvres"><img width="900" height="300" src="https://eniort.files.wordpress.com/2020/08/covid-19-test.jpg?w=900&amp;h=300&amp;crop=1" class="attachment-cerauno-home size-cerauno-home wp-post-image" alt="covid 19 test" loading="lazy" srcset="https://eniort.files.wordpress.com/2020/08/covid-19-test.jpg?w=900&amp;h=300&amp;crop=1 900w, https://eniort.files.wordpress.com/2020/08/covid-19-test.jpg?w=150&amp;h=50&amp;crop=1 150w, https://eniort.files.wordpress.com/2020/08/covid-19-test.jpg?w=300&amp;h=100&amp;crop=1 300w, https://eniort.files.wordpress.com/2020/08/covid-19-test.jpg?w=768&amp;h=256&amp;crop=1 768w, https://eniort.files.wordpress.com/2020/08/covid-19-test.jpg?w=1024&amp;h=342&amp;crop=1 1024w" sizes="(max-width: 900px) 100vw, 900px" data-attachment-id="3583" data-permalink="https://eniort.com/2020/08/02/covid-19-operations-de-depistage-gratuit-a-niort-et-en-deux-sevres/covid-19-test/" data-orig-file="https://eniort.files.wordpress.com/2020/08/covid-19-test.jpg" data-orig-size="1280,654" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;1.8&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D600&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;85&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.025&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}" data-image-title="covid 19 test" data-image-description="" data-medium-file="https://eniort.files.wordpress.com/2020/08/covid-19-test.jpg?w=300" data-large-file="https://eniort.files.wordpress.com/2020/08/covid-19-test.jpg?w=900" /></a>
			</div>
			</header><!-- .entry-header -->

	<div class="entry-summary">
		<p>Dans le cadre de la stratégie nationale de tests, l’ARS Nouvelle-Aquitaine a décidé d&rsquo;organiser plusieurs actions de dépistage au Covid19. La participation de la population au dépistage permet d’évaluer le niveau de circulation du virus sur le territoire, de repérer le cas échéant des cas positifs, de déclencher la recherche de personnes contacts de ces&hellip; <a class="more-link" href="https://eniort.com/2020/08/02/covid-19-operations-de-depistage-gratuit-a-niort-et-en-deux-sevres/">Lire la suite <span class="screen-reader-text">Covid-19 : opérations de dépistage gratuit à Niort et en&nbsp;Deux-Sèvres</span></a></p>
	</div><!-- .entry-excerpt -->

			<div class="entry-meta">
			<span class="posted-on"><a href="https://eniort.com/2020/08/02/covid-19-operations-de-depistage-gratuit-a-niort-et-en-deux-sevres/" rel="bookmark"><time class="entry-date published" datetime="2020-08-02T09:49:12+00:00">août 2, 2020</time><time class="updated" datetime="2020-08-03T14:48:20+00:00">août 3, 2020</time></a></span><span class="byline"> <span class="author vcard"><a class="url fn n" href="https://eniort.com/author/eniort/">eniort</a></span></span><span class="comments-link"><a href="https://eniort.com/2020/08/02/covid-19-operations-de-depistage-gratuit-a-niort-et-en-deux-sevres/#respond">Laisser un commentaire</a></span>		</div><!-- .entry-meta -->
	
</article><!-- #post-## -->

			
				
<article id="post-3574" class="post-3574 post type-post status-publish format-standard has-post-thumbnail hentry category-commerce category-niort category-pratique tag-commerce tag-niort tag-pratique">
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://eniort.com/2020/07/14/14-juillet-2020-ce-qui-est-ouvert-ou-ferme-a-niort/" rel="bookmark">14 juillet 2020 : ce qui est ouvert ou fermé à&nbsp;Niort</a></h1>
					<div class="featured-image">
				<a href="https://eniort.com/2020/07/14/14-juillet-2020-ce-qui-est-ouvert-ou-ferme-a-niort/" title="14 juillet 2020 : ce qui est ouvert ou fermé à&nbsp;Niort"><img width="600" height="299" src="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600&amp;h=299&amp;crop=1" class="attachment-cerauno-home size-cerauno-home wp-post-image" alt="Niort ouvert ou fermé" loading="lazy" srcset="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg 600w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=150&amp;h=75&amp;crop=1 150w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300&amp;h=150&amp;crop=1 300w" sizes="(max-width: 600px) 100vw, 600px" data-attachment-id="698" data-permalink="https://eniort.com/2015/11/11/11-novembre-loisirs-culture-grandes-surfaces-ce-qui-est-ouvert-ou-ferme-a-niort/ouvert-ferme-coupe/" data-orig-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg" data-orig-size="600,299" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="ouvert fermé coupé" data-image-description="" data-medium-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300" data-large-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600" /></a>
			</div>
			</header><!-- .entry-header -->

	<div class="entry-summary">
		<p>Transports: Les bus du réseau TANLIB ne circulent pas aujourd’hui. Loisirs et Culture: Niort: Le Donjon:                                  Ouvert de 10h00 à 12h00 et de 14h00 à 18h00 Musée d’Agesci:                       &hellip; <a class="more-link" href="https://eniort.com/2020/07/14/14-juillet-2020-ce-qui-est-ouvert-ou-ferme-a-niort/">Lire la suite <span class="screen-reader-text">14 juillet 2020 : ce qui est ouvert ou fermé à&nbsp;Niort</span></a></p>
	</div><!-- .entry-excerpt -->

			<div class="entry-meta">
			<span class="posted-on"><a href="https://eniort.com/2020/07/14/14-juillet-2020-ce-qui-est-ouvert-ou-ferme-a-niort/" rel="bookmark"><time class="entry-date published" datetime="2020-07-14T05:54:13+00:00">juillet 14, 2020</time><time class="updated" datetime="2020-07-14T08:21:28+00:00">juillet 14, 2020</time></a></span><span class="byline"> <span class="author vcard"><a class="url fn n" href="https://eniort.com/author/eniort/">eniort</a></span></span><span class="comments-link"><a href="https://eniort.com/2020/07/14/14-juillet-2020-ce-qui-est-ouvert-ou-ferme-a-niort/#respond">Laisser un commentaire</a></span>		</div><!-- .entry-meta -->
	
</article><!-- #post-## -->

			
				
<article id="post-3570" class="post-3570 post type-post status-publish format-standard has-post-thumbnail hentry category-commerce category-niort tag-commerce tag-niort">
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://eniort.com/2020/06/01/lundi-de-pentecote-2020-ce-qui-est-ouvert-ou-ferme-a-niort/" rel="bookmark">Lundi de Pentecôte 2020 : ce qui est ouvert ou fermé à&nbsp;Niort</a></h1>
					<div class="featured-image">
				<a href="https://eniort.com/2020/06/01/lundi-de-pentecote-2020-ce-qui-est-ouvert-ou-ferme-a-niort/" title="Lundi de Pentecôte 2020 : ce qui est ouvert ou fermé à&nbsp;Niort"><img width="600" height="299" src="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600&amp;h=299&amp;crop=1" class="attachment-cerauno-home size-cerauno-home wp-post-image" alt="Niort ouvert ou fermé" loading="lazy" srcset="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg 600w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=150&amp;h=75&amp;crop=1 150w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300&amp;h=150&amp;crop=1 300w" sizes="(max-width: 600px) 100vw, 600px" data-attachment-id="698" data-permalink="https://eniort.com/2015/11/11/11-novembre-loisirs-culture-grandes-surfaces-ce-qui-est-ouvert-ou-ferme-a-niort/ouvert-ferme-coupe/" data-orig-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg" data-orig-size="600,299" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="ouvert fermé coupé" data-image-description="" data-medium-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300" data-large-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600" /></a>
			</div>
			</header><!-- .entry-header -->

	<div class="entry-summary">
		<p>Transports: Les bus du réseau TANLIB ne circulent pas aujourd’hui. Loisirs et Culture: En application de la décision gouvernementale du samedi 14 mars 2020 suite à la pandémie de la Covid-19, tous les événements culturels et sportifs sont suspendus. Niort: Le Donjon:                           &hellip; <a class="more-link" href="https://eniort.com/2020/06/01/lundi-de-pentecote-2020-ce-qui-est-ouvert-ou-ferme-a-niort/">Lire la suite <span class="screen-reader-text">Lundi de Pentecôte 2020 : ce qui est ouvert ou fermé à&nbsp;Niort</span></a></p>
	</div><!-- .entry-excerpt -->

			<div class="entry-meta">
			<span class="posted-on"><a href="https://eniort.com/2020/06/01/lundi-de-pentecote-2020-ce-qui-est-ouvert-ou-ferme-a-niort/" rel="bookmark"><time class="entry-date published updated" datetime="2020-06-01T04:17:40+00:00">juin 1, 2020</time></a></span><span class="byline"> <span class="author vcard"><a class="url fn n" href="https://eniort.com/author/eniort/">eniort</a></span></span><span class="comments-link"><a href="https://eniort.com/2020/06/01/lundi-de-pentecote-2020-ce-qui-est-ouvert-ou-ferme-a-niort/#respond">Laisser un commentaire</a></span>		</div><!-- .entry-meta -->
	
</article><!-- #post-## -->

			
				
<article id="post-3549" class="post-3549 post type-post status-publish format-standard has-post-thumbnail hentry category-commerce category-niort category-pratique tag-commerce tag-niort tag-pratique">
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://eniort.com/2020/05/21/jeudi-de-lascension-2020-ce-qui-est-ouvert-ou-ferme-a-niort/" rel="bookmark">Jeudi de l&rsquo;ascension 2020 : ce qui est ouvert ou fermé à&nbsp;Niort</a></h1>
					<div class="featured-image">
				<a href="https://eniort.com/2020/05/21/jeudi-de-lascension-2020-ce-qui-est-ouvert-ou-ferme-a-niort/" title="Jeudi de l&rsquo;ascension 2020 : ce qui est ouvert ou fermé à&nbsp;Niort"><img width="600" height="299" src="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600&amp;h=299&amp;crop=1" class="attachment-cerauno-home size-cerauno-home wp-post-image" alt="Niort ouvert ou fermé" loading="lazy" srcset="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg 600w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=150&amp;h=75&amp;crop=1 150w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300&amp;h=150&amp;crop=1 300w" sizes="(max-width: 600px) 100vw, 600px" data-attachment-id="698" data-permalink="https://eniort.com/2015/11/11/11-novembre-loisirs-culture-grandes-surfaces-ce-qui-est-ouvert-ou-ferme-a-niort/ouvert-ferme-coupe/" data-orig-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg" data-orig-size="600,299" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="ouvert fermé coupé" data-image-description="" data-medium-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300" data-large-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600" /></a>
			</div>
			</header><!-- .entry-header -->

	<div class="entry-summary">
		<p>Transports: Les bus du réseau TANLIB ne circulent pas aujourd’hui. Loisirs et Culture: En application de la décision gouvernementale du samedi 14 mars 2020 suite à la pandémie de la Covid-19, tous les événements culturels et sportifs sont suspendus. Depuis le mardi 12 mai, le public peut de nouveau visiter le musée Bernard d&rsquo;Agesci. Niort:&hellip; <a class="more-link" href="https://eniort.com/2020/05/21/jeudi-de-lascension-2020-ce-qui-est-ouvert-ou-ferme-a-niort/">Lire la suite <span class="screen-reader-text">Jeudi de l&rsquo;ascension 2020 : ce qui est ouvert ou fermé à&nbsp;Niort</span></a></p>
	</div><!-- .entry-excerpt -->

			<div class="entry-meta">
			<span class="posted-on"><a href="https://eniort.com/2020/05/21/jeudi-de-lascension-2020-ce-qui-est-ouvert-ou-ferme-a-niort/" rel="bookmark"><time class="entry-date published" datetime="2020-05-21T05:44:59+00:00">mai 21, 2020</time><time class="updated" datetime="2020-05-21T10:19:02+00:00">mai 21, 2020</time></a></span><span class="byline"> <span class="author vcard"><a class="url fn n" href="https://eniort.com/author/eniort/">eniort</a></span></span><span class="comments-link"><a href="https://eniort.com/2020/05/21/jeudi-de-lascension-2020-ce-qui-est-ouvert-ou-ferme-a-niort/#comments">1 commentaire</a></span>		</div><!-- .entry-meta -->
	
</article><!-- #post-## -->

			
				
<article id="post-3536" class="post-3536 post type-post status-publish format-standard has-post-thumbnail hentry category-actualites-2 category-niort tag-actualites tag-niort">
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://eniort.com/2020/05/13/inter-mutuelles-assistance-a-realise-la-deuxieme-plus-forte-journee-de-son-histoire/" rel="bookmark">Inter Mutuelles Assistance a réalisé la deuxième plus forte journée de son&nbsp;histoire</a></h1>
					<div class="featured-image">
				<a href="https://eniort.com/2020/05/13/inter-mutuelles-assistance-a-realise-la-deuxieme-plus-forte-journee-de-son-histoire/" title="Inter Mutuelles Assistance a réalisé la deuxième plus forte journée de son&nbsp;histoire"><img width="599" height="300" src="https://eniort.files.wordpress.com/2016/07/ima-3.jpg?w=599&amp;h=300&amp;crop=1" class="attachment-cerauno-home size-cerauno-home wp-post-image" alt="inter mutuelles assistance niort" loading="lazy" srcset="https://eniort.files.wordpress.com/2016/07/ima-3.jpg?w=599&amp;h=300&amp;crop=1 599w, https://eniort.files.wordpress.com/2016/07/ima-3.jpg?w=150&amp;h=75&amp;crop=1 150w, https://eniort.files.wordpress.com/2016/07/ima-3.jpg?w=300&amp;h=150&amp;crop=1 300w" sizes="(max-width: 599px) 100vw, 599px" data-attachment-id="1191" data-permalink="https://eniort.com/2016/07/15/attentat-de-nice-les-mutuelles-niortaises-se-mobilisent/ima-3/" data-orig-file="https://eniort.files.wordpress.com/2016/07/ima-3.jpg" data-orig-size="599,317" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}" data-image-title="inter mutuelles assistance" data-image-description="" data-medium-file="https://eniort.files.wordpress.com/2016/07/ima-3.jpg?w=300" data-large-file="https://eniort.files.wordpress.com/2016/07/ima-3.jpg?w=599" /></a>
			</div>
			</header><!-- .entry-header -->

	<div class="entry-summary">
		<p>Les équipes d&rsquo;IMA présentes au siège pour le premier jour du déconfinement ont répondu à un flux d’appels historique. En effet, ce lundi 11 mai, premier jour du déconfinement en France, le Groupe IMA, qui propose des solutions d’assistance et de services adaptés, a repris ses activités sur les sites de Niort, Rouen et Nantes. &hellip; <a class="more-link" href="https://eniort.com/2020/05/13/inter-mutuelles-assistance-a-realise-la-deuxieme-plus-forte-journee-de-son-histoire/">Lire la suite <span class="screen-reader-text">Inter Mutuelles Assistance a réalisé la deuxième plus forte journée de son&nbsp;histoire</span></a></p>
	</div><!-- .entry-excerpt -->

			<div class="entry-meta">
			<span class="posted-on"><a href="https://eniort.com/2020/05/13/inter-mutuelles-assistance-a-realise-la-deuxieme-plus-forte-journee-de-son-histoire/" rel="bookmark"><time class="entry-date published" datetime="2020-05-13T05:57:52+00:00">mai 13, 2020</time><time class="updated" datetime="2020-05-13T06:04:46+00:00">mai 13, 2020</time></a></span><span class="byline"> <span class="author vcard"><a class="url fn n" href="https://eniort.com/author/eniort/">eniort</a></span></span><span class="comments-link"><a href="https://eniort.com/2020/05/13/inter-mutuelles-assistance-a-realise-la-deuxieme-plus-forte-journee-de-son-histoire/#respond">Laisser un commentaire</a></span>		</div><!-- .entry-meta -->
	
</article><!-- #post-## -->

			
				
<article id="post-3528" class="post-3528 post type-post status-publish format-standard has-post-thumbnail hentry category-niort tag-emploi tag-niort">
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://eniort.com/2020/02/05/jobs-dete-chez-inter-mutuelles-assistance-pour-la-saison-estivale-2020/" rel="bookmark">Jobs d&rsquo;été chez Inter Mutuelles Assistance pour la saison estivale&nbsp;2020</a></h1>
					<div class="featured-image">
				<a href="https://eniort.com/2020/02/05/jobs-dete-chez-inter-mutuelles-assistance-pour-la-saison-estivale-2020/" title="Jobs d&rsquo;été chez Inter Mutuelles Assistance pour la saison estivale&nbsp;2020"><img width="599" height="300" src="https://eniort.files.wordpress.com/2016/07/ima-3.jpg?w=599&amp;h=300&amp;crop=1" class="attachment-cerauno-home size-cerauno-home wp-post-image" alt="inter mutuelles assistance niort" loading="lazy" srcset="https://eniort.files.wordpress.com/2016/07/ima-3.jpg?w=599&amp;h=300&amp;crop=1 599w, https://eniort.files.wordpress.com/2016/07/ima-3.jpg?w=150&amp;h=75&amp;crop=1 150w, https://eniort.files.wordpress.com/2016/07/ima-3.jpg?w=300&amp;h=150&amp;crop=1 300w" sizes="(max-width: 599px) 100vw, 599px" data-attachment-id="1191" data-permalink="https://eniort.com/2016/07/15/attentat-de-nice-les-mutuelles-niortaises-se-mobilisent/ima-3/" data-orig-file="https://eniort.files.wordpress.com/2016/07/ima-3.jpg" data-orig-size="599,317" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}" data-image-title="inter mutuelles assistance" data-image-description="" data-medium-file="https://eniort.files.wordpress.com/2016/07/ima-3.jpg?w=300" data-large-file="https://eniort.files.wordpress.com/2016/07/ima-3.jpg?w=599" /></a>
			</div>
			</header><!-- .entry-header -->

	<div class="entry-summary">
		<p>Inter Mutuelles Assistance propose des contrats saisonniers pour cet été 2020. Le groupe d&rsquo;assistance niortais recherche, cette année, des chargé(e)s d&rsquo;assistance. Les contrats sont proposés sous forme d&rsquo;un CDD de 3 mois consécutifs à temps partiel (80%) entre le 1er juin et le 30 septembre 2020 (dont le mois d&rsquo;août obligatoirement). Si vous parlez une&hellip; <a class="more-link" href="https://eniort.com/2020/02/05/jobs-dete-chez-inter-mutuelles-assistance-pour-la-saison-estivale-2020/">Lire la suite <span class="screen-reader-text">Jobs d&rsquo;été chez Inter Mutuelles Assistance pour la saison estivale&nbsp;2020</span></a></p>
	</div><!-- .entry-excerpt -->

			<div class="entry-meta">
			<span class="posted-on"><a href="https://eniort.com/2020/02/05/jobs-dete-chez-inter-mutuelles-assistance-pour-la-saison-estivale-2020/" rel="bookmark"><time class="entry-date published" datetime="2020-02-05T06:56:02+00:00">février 5, 2020</time><time class="updated" datetime="2020-02-05T07:03:28+00:00">février 5, 2020</time></a></span><span class="byline"> <span class="author vcard"><a class="url fn n" href="https://eniort.com/author/eniort/">eniort</a></span></span><span class="comments-link"><a href="https://eniort.com/2020/02/05/jobs-dete-chez-inter-mutuelles-assistance-pour-la-saison-estivale-2020/#respond">Laisser un commentaire</a></span>		</div><!-- .entry-meta -->
	
</article><!-- #post-## -->

			
				
<article id="post-3519" class="post-3519 post type-post status-publish format-standard has-post-thumbnail hentry category-commerce category-niort category-pratique tag-commerce tag-niort tag-pratique">
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://eniort.com/2019/12/29/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-29-decembre-2019/" rel="bookmark">Niort : Fêtes de fin d’année : des commerces ouverts ce dimanche 29 décembre&nbsp;2019</a></h1>
					<div class="featured-image">
				<a href="https://eniort.com/2019/12/29/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-29-decembre-2019/" title="Niort : Fêtes de fin d’année : des commerces ouverts ce dimanche 29 décembre&nbsp;2019"><img width="600" height="299" src="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600&amp;h=299&amp;crop=1" class="attachment-cerauno-home size-cerauno-home wp-post-image" alt="Niort ouvert ou fermé" loading="lazy" srcset="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg 600w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=150&amp;h=75&amp;crop=1 150w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300&amp;h=150&amp;crop=1 300w" sizes="(max-width: 600px) 100vw, 600px" data-attachment-id="698" data-permalink="https://eniort.com/2015/11/11/11-novembre-loisirs-culture-grandes-surfaces-ce-qui-est-ouvert-ou-ferme-a-niort/ouvert-ferme-coupe/" data-orig-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg" data-orig-size="600,299" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="ouvert fermé coupé" data-image-description="" data-medium-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300" data-large-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600" /></a>
			</div>
			</header><!-- .entry-header -->

	<div class="entry-summary">
		<p>Pour bien préparer le passage à la nouvelle année, des commerces sont ouverts ce 29 décembre, à Niort. Voici une liste non exhaustive de boutiques et grandes surfaces ouvertes aujourd&rsquo;hui. &nbsp; Grandes surfaces Niort: Carrefour Atlantique:                                 Ouvert de 8h30 à&hellip; <a class="more-link" href="https://eniort.com/2019/12/29/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-29-decembre-2019/">Lire la suite <span class="screen-reader-text">Niort : Fêtes de fin d’année : des commerces ouverts ce dimanche 29 décembre&nbsp;2019</span></a></p>
	</div><!-- .entry-excerpt -->

			<div class="entry-meta">
			<span class="posted-on"><a href="https://eniort.com/2019/12/29/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-29-decembre-2019/" rel="bookmark"><time class="entry-date published updated" datetime="2019-12-29T05:57:05+00:00">décembre 29, 2019</time></a></span><span class="byline"> <span class="author vcard"><a class="url fn n" href="https://eniort.com/author/eniort/">eniort</a></span></span><span class="comments-link"><a href="https://eniort.com/2019/12/29/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-29-decembre-2019/#respond">Laisser un commentaire</a></span>		</div><!-- .entry-meta -->
	
</article><!-- #post-## -->

			
				
<article id="post-3514" class="post-3514 post type-post status-publish format-standard has-post-thumbnail hentry category-commerce category-niort category-pratique tag-commerce tag-niort tag-pratique">
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://eniort.com/2019/12/22/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-22-decembre-2019/" rel="bookmark">Niort : Fêtes de fin d’année : des commerces ouverts ce dimanche 22 décembre&nbsp;2019</a></h1>
					<div class="featured-image">
				<a href="https://eniort.com/2019/12/22/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-22-decembre-2019/" title="Niort : Fêtes de fin d’année : des commerces ouverts ce dimanche 22 décembre&nbsp;2019"><img width="600" height="299" src="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600&amp;h=299&amp;crop=1" class="attachment-cerauno-home size-cerauno-home wp-post-image" alt="Niort ouvert ou fermé" loading="lazy" srcset="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg 600w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=150&amp;h=75&amp;crop=1 150w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300&amp;h=150&amp;crop=1 300w" sizes="(max-width: 600px) 100vw, 600px" data-attachment-id="698" data-permalink="https://eniort.com/2015/11/11/11-novembre-loisirs-culture-grandes-surfaces-ce-qui-est-ouvert-ou-ferme-a-niort/ouvert-ferme-coupe/" data-orig-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg" data-orig-size="600,299" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="ouvert fermé coupé" data-image-description="" data-medium-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300" data-large-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600" /></a>
			</div>
			</header><!-- .entry-header -->

	<div class="entry-summary">
		<p>Les fêtes de fin d&rsquo;année s&rsquo;approchent et c&rsquo;est le dernier dimanche pour faire ses achats de Noël, Pour cela, de nombreux commerces sont ouverts ce 22 décembre, à Niort. Voici une liste non exhaustive de boutiques et grandes surfaces ouvertes aujourd&rsquo;hui. De plus, les bus Tanlib circulent ce dimanche 22 décembre à Niort. Retrouvez les&hellip; <a class="more-link" href="https://eniort.com/2019/12/22/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-22-decembre-2019/">Lire la suite <span class="screen-reader-text">Niort : Fêtes de fin d’année : des commerces ouverts ce dimanche 22 décembre&nbsp;2019</span></a></p>
	</div><!-- .entry-excerpt -->

			<div class="entry-meta">
			<span class="posted-on"><a href="https://eniort.com/2019/12/22/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-22-decembre-2019/" rel="bookmark"><time class="entry-date published updated" datetime="2019-12-22T06:32:34+00:00">décembre 22, 2019</time></a></span><span class="byline"> <span class="author vcard"><a class="url fn n" href="https://eniort.com/author/eniort/">eniort</a></span></span><span class="comments-link"><a href="https://eniort.com/2019/12/22/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-22-decembre-2019/#respond">Laisser un commentaire</a></span>		</div><!-- .entry-meta -->
	
</article><!-- #post-## -->

			
				
<article id="post-3495" class="post-3495 post type-post status-publish format-standard has-post-thumbnail hentry category-commerce category-niort category-pratique tag-commerce tag-niort tag-pratique">
	<header class="entry-header">
		<h1 class="entry-title"><a href="https://eniort.com/2019/12/15/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-15-decembre-2019/" rel="bookmark">Niort : Fêtes de fin d’année : des commerces ouverts ce dimanche 15 décembre&nbsp;2019</a></h1>
					<div class="featured-image">
				<a href="https://eniort.com/2019/12/15/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-15-decembre-2019/" title="Niort : Fêtes de fin d’année : des commerces ouverts ce dimanche 15 décembre&nbsp;2019"><img width="600" height="299" src="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600&amp;h=299&amp;crop=1" class="attachment-cerauno-home size-cerauno-home wp-post-image" alt="Niort ouvert ou fermé" loading="lazy" srcset="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg 600w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=150&amp;h=75&amp;crop=1 150w, https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300&amp;h=150&amp;crop=1 300w" sizes="(max-width: 600px) 100vw, 600px" data-attachment-id="698" data-permalink="https://eniort.com/2015/11/11/11-novembre-loisirs-culture-grandes-surfaces-ce-qui-est-ouvert-ou-ferme-a-niort/ouvert-ferme-coupe/" data-orig-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg" data-orig-size="600,299" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="ouvert fermé coupé" data-image-description="" data-medium-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=300" data-large-file="https://eniort.files.wordpress.com/2015/11/ouvert-fermc3a9-coupc3a9.jpg?w=600" /></a>
			</div>
			</header><!-- .entry-header -->

	<div class="entry-summary">
		<p>Les fêtes de fin d&rsquo;année approchent et pour faciliter les achats, des commerces sont ouverts ce dimanche 8 décembre, à Niort. Voici une liste non exhaustive de boutiques et grandes surfaces ouvertes aujourd&rsquo;hui. De plus, les bus Tanlib circulent ce dimanche 15 décembre à Niort. Retrouvez les horaires des lignes en cliquant sur le lien&hellip; <a class="more-link" href="https://eniort.com/2019/12/15/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-15-decembre-2019/">Lire la suite <span class="screen-reader-text">Niort : Fêtes de fin d’année : des commerces ouverts ce dimanche 15 décembre&nbsp;2019</span></a></p>
	</div><!-- .entry-excerpt -->

			<div class="entry-meta">
			<span class="posted-on"><a href="https://eniort.com/2019/12/15/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-15-decembre-2019/" rel="bookmark"><time class="entry-date published updated" datetime="2019-12-15T06:21:20+00:00">décembre 15, 2019</time></a></span><span class="byline"> <span class="author vcard"><a class="url fn n" href="https://eniort.com/author/eniort/">eniort</a></span></span><span class="comments-link"><a href="https://eniort.com/2019/12/15/niort-fetes-de-fin-dannee-des-commerces-ouverts-ce-dimanche-15-decembre-2019/#respond">Laisser un commentaire</a></span>		</div><!-- .entry-meta -->
	
</article><!-- #post-## -->

			
			
	<nav class="navigation posts-navigation" role="navigation" aria-label="Articles">
		<h2 class="screen-reader-text">Navigation des articles</h2>
		<div class="nav-links"><div class="nav-previous"><a href="https://eniort.com/page/2/" >Articles Pr&eacute;c&eacute;dents</a></div></div>
	</nav>
		
		</main><!-- #main -->
	</div><!-- #primary -->


<div id="secondary" class="widget-area sidebar-left" role="complementary">
				<div id="atatags-344995493-5f87474e68adb"></div>
			
			<script>
				__ATA.cmd.push(function() {
					__ATA.initDynamicSlot({
						id: 'atatags-344995493-5f87474e68adb',
						location: 140,
						formFactor: '003',
						label: {
							text: 'Publicités',
						},
						creative: {
							reportAd: {
								text: 'Report this Ad',
							},
							privacySettings: {
								text: 'Paramètres de confidentialité',
							}
						}
					});
				});
			</script><aside id="twitter_timeline-3" class="widget widget_twitter_timeline"><h1 class="widget-title">L&rsquo;info en continu</h1><a class="twitter-timeline" data-height="400" data-theme="light" data-border-color="#e8e8e8" data-lang="FR" data-partner="jetpack" href="https://twitter.com/@e_niort" href="https://twitter.com/@e_niort">Mes Tweets</a></aside><aside id="facebook-likebox-3" class="widget widget_facebook_likebox"><h1 class="widget-title"><a href="https://www.facebook.com/eniort.info">E Niort infos</a></h1>		<div id="fb-root"></div>
		<div class="fb-page" data-href="https://www.facebook.com/eniort.info" data-width="340"  data-height="130" data-hide-cover="false" data-show-facepile="false" data-tabs="false" data-hide-cta="false" data-small-header="false">
		<div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/eniort.info"><a href="https://www.facebook.com/eniort.info">E Niort infos</a></blockquote></div>
		</div>
		</aside><aside id="search-2" class="widget widget_search"><form role="search" method="get" class="search-form" action="https://eniort.com/">
				<label>
					<span class="screen-reader-text">Rechercher&nbsp;:</span>
					<input type="search" class="search-field" placeholder="Recherche&hellip;" value="" name="s" />
				</label>
				<input type="submit" class="search-submit" value="Rechercher" />
			</form></aside><aside id="calendar-2" class="widget widget_calendar"><div id="calendar_wrap" class="calendar_wrap"><table id="wp-calendar" class="wp-calendar-table">
	<caption>octobre 2020</caption>
	<thead>
	<tr>
		<th scope="col" title="lundi">L</th>
		<th scope="col" title="mardi">M</th>
		<th scope="col" title="mercredi">M</th>
		<th scope="col" title="jeudi">J</th>
		<th scope="col" title="vendredi">V</th>
		<th scope="col" title="samedi">S</th>
		<th scope="col" title="dimanche">D</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td colspan="3" class="pad">&nbsp;</td><td>1</td><td>2</td><td>3</td><td>4</td>
	</tr>
	<tr>
		<td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td>
	</tr>
	<tr>
		<td>12</td><td>13</td><td id="today">14</td><td>15</td><td>16</td><td>17</td><td>18</td>
	</tr>
	<tr>
		<td>19</td><td>20</td><td>21</td><td>22</td><td>23</td><td>24</td><td>25</td>
	</tr>
	<tr>
		<td>26</td><td>27</td><td>28</td><td>29</td><td>30</td><td>31</td>
		<td class="pad" colspan="1">&nbsp;</td>
	</tr>
	</tbody>
	</table><nav aria-label="Mois précédents et suivants" class="wp-calendar-nav">
		<span class="wp-calendar-nav-prev"><a href="https://eniort.com/2020/08/">&laquo; Août</a></span>
		<span class="pad">&nbsp;</span>
		<span class="wp-calendar-nav-next">&nbsp;</span>
	</nav></div></aside>
		<aside id="recent-posts-2" class="widget widget_recent_entries">
		<h1 class="widget-title">Articles récents</h1>
		<ul>
											<li>
					<a href="https://eniort.com/2020/08/15/15-aout-2020-ce-qui-est-ouvert-ou-ferme-a-niort/">15 août 2020 : ce qui est ouvert ou fermé à&nbsp;Niort</a>
									</li>
											<li>
					<a href="https://eniort.com/2020/08/02/covid-19-operations-de-depistage-gratuit-a-niort-et-en-deux-sevres/">Covid-19 : opérations de dépistage gratuit à Niort et en&nbsp;Deux-Sèvres</a>
									</li>
											<li>
					<a href="https://eniort.com/2020/07/14/14-juillet-2020-ce-qui-est-ouvert-ou-ferme-a-niort/">14 juillet 2020 : ce qui est ouvert ou fermé à&nbsp;Niort</a>
									</li>
											<li>
					<a href="https://eniort.com/2020/06/01/lundi-de-pentecote-2020-ce-qui-est-ouvert-ou-ferme-a-niort/">Lundi de Pentecôte 2020 : ce qui est ouvert ou fermé à&nbsp;Niort</a>
									</li>
											<li>
					<a href="https://eniort.com/2020/05/21/jeudi-de-lascension-2020-ce-qui-est-ouvert-ou-ferme-a-niort/">Jeudi de l&rsquo;ascension 2020 : ce qui est ouvert ou fermé à&nbsp;Niort</a>
									</li>
					</ul>

		</aside><aside id="archives-2" class="widget widget_archive"><h1 class="widget-title">Archives</h1>
			<ul>
					<li><a href='https://eniort.com/2020/08/'>août 2020</a></li>
	<li><a href='https://eniort.com/2020/07/'>juillet 2020</a></li>
	<li><a href='https://eniort.com/2020/06/'>juin 2020</a></li>
	<li><a href='https://eniort.com/2020/05/'>mai 2020</a></li>
	<li><a href='https://eniort.com/2020/02/'>février 2020</a></li>
	<li><a href='https://eniort.com/2019/12/'>décembre 2019</a></li>
	<li><a href='https://eniort.com/2019/11/'>novembre 2019</a></li>
	<li><a href='https://eniort.com/2019/09/'>septembre 2019</a></li>
	<li><a href='https://eniort.com/2019/08/'>août 2019</a></li>
	<li><a href='https://eniort.com/2019/07/'>juillet 2019</a></li>
	<li><a href='https://eniort.com/2019/06/'>juin 2019</a></li>
	<li><a href='https://eniort.com/2019/05/'>mai 2019</a></li>
	<li><a href='https://eniort.com/2019/04/'>avril 2019</a></li>
	<li><a href='https://eniort.com/2019/02/'>février 2019</a></li>
	<li><a href='https://eniort.com/2019/01/'>janvier 2019</a></li>
	<li><a href='https://eniort.com/2018/12/'>décembre 2018</a></li>
	<li><a href='https://eniort.com/2018/11/'>novembre 2018</a></li>
	<li><a href='https://eniort.com/2018/09/'>septembre 2018</a></li>
	<li><a href='https://eniort.com/2018/08/'>août 2018</a></li>
	<li><a href='https://eniort.com/2018/07/'>juillet 2018</a></li>
	<li><a href='https://eniort.com/2018/05/'>mai 2018</a></li>
	<li><a href='https://eniort.com/2018/04/'>avril 2018</a></li>
	<li><a href='https://eniort.com/2018/03/'>mars 2018</a></li>
	<li><a href='https://eniort.com/2018/02/'>février 2018</a></li>
	<li><a href='https://eniort.com/2018/01/'>janvier 2018</a></li>
	<li><a href='https://eniort.com/2017/12/'>décembre 2017</a></li>
	<li><a href='https://eniort.com/2017/11/'>novembre 2017</a></li>
	<li><a href='https://eniort.com/2017/10/'>octobre 2017</a></li>
	<li><a href='https://eniort.com/2017/09/'>septembre 2017</a></li>
	<li><a href='https://eniort.com/2017/08/'>août 2017</a></li>
	<li><a href='https://eniort.com/2017/07/'>juillet 2017</a></li>
	<li><a href='https://eniort.com/2017/06/'>juin 2017</a></li>
	<li><a href='https://eniort.com/2017/05/'>mai 2017</a></li>
	<li><a href='https://eniort.com/2017/04/'>avril 2017</a></li>
	<li><a href='https://eniort.com/2017/02/'>février 2017</a></li>
	<li><a href='https://eniort.com/2017/01/'>janvier 2017</a></li>
	<li><a href='https://eniort.com/2016/12/'>décembre 2016</a></li>
	<li><a href='https://eniort.com/2016/11/'>novembre 2016</a></li>
	<li><a href='https://eniort.com/2016/10/'>octobre 2016</a></li>
	<li><a href='https://eniort.com/2016/09/'>septembre 2016</a></li>
	<li><a href='https://eniort.com/2016/08/'>août 2016</a></li>
	<li><a href='https://eniort.com/2016/07/'>juillet 2016</a></li>
	<li><a href='https://eniort.com/2016/05/'>mai 2016</a></li>
	<li><a href='https://eniort.com/2016/04/'>avril 2016</a></li>
	<li><a href='https://eniort.com/2016/03/'>mars 2016</a></li>
	<li><a href='https://eniort.com/2016/02/'>février 2016</a></li>
	<li><a href='https://eniort.com/2016/01/'>janvier 2016</a></li>
	<li><a href='https://eniort.com/2015/12/'>décembre 2015</a></li>
	<li><a href='https://eniort.com/2015/11/'>novembre 2015</a></li>
	<li><a href='https://eniort.com/2015/10/'>octobre 2015</a></li>
	<li><a href='https://eniort.com/2015/08/'>août 2015</a></li>
	<li><a href='https://eniort.com/2015/07/'>juillet 2015</a></li>
			</ul>

			</aside>			<div id="atatags-344995493-5f87474e6a88a"></div>
			
			<script>
				__ATA.cmd.push(function() {
					__ATA.initDynamicSlot({
						id: 'atatags-344995493-5f87474e6a88a',
						location: 140,
						formFactor: '003',
						label: {
							text: 'Publicités',
						},
						creative: {
							reportAd: {
								text: 'Report this Ad',
							},
							privacySettings: {
								text: 'Paramètres de confidentialité',
							}
						}
					});
				});
			</script></div><!-- #secondary -->

<div id="tertiary" class="widget-area sidebar-right" role="complementary">
	</div><!-- #tertiary -->

	</div><!-- #content -->

	<footer id="colophon" class="site-footer" role="contentinfo">

		
		<div class="site-info">
			<a href="https://wordpress.com/?ref=footer_blog" rel="nofollow">Propulsé par WordPress.com.</a>
			
					</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- #page -->

		<script type="text/javascript">
		//<![CDATA[
		var infiniteScroll = JSON.parse( decodeURIComponent( '%7B%22settings%22%3A%7B%22id%22%3A%22main%22%2C%22ajaxurl%22%3A%22https%3A%5C%2F%5C%2Feniort.com%5C%2F%3Finfinity%3Dscrolling%22%2C%22type%22%3A%22scroll%22%2C%22wrapper%22%3Atrue%2C%22wrapper_class%22%3A%22infinite-wrap%22%2C%22footer%22%3A%22page%22%2C%22click_handle%22%3A%221%22%2C%22text%22%3A%22Articles%20pr%5Cu00e9c%5Cu00e9dents%22%2C%22totop%22%3A%22Retour%20en%20Haut%22%2C%22currentday%22%3A%2215.12.19%22%2C%22order%22%3A%22DESC%22%2C%22scripts%22%3A%5B%5D%2C%22styles%22%3A%5B%5D%2C%22google_analytics%22%3Afalse%2C%22offset%22%3A1%2C%22history%22%3A%7B%22host%22%3A%22eniort.com%22%2C%22path%22%3A%22%5C%2Fpage%5C%2F%25d%5C%2F%22%2C%22use_trailing_slashes%22%3Atrue%2C%22parameters%22%3A%22%22%7D%2C%22query_args%22%3A%7B%22error%22%3A%22%22%2C%22m%22%3A%22%22%2C%22p%22%3A0%2C%22post_parent%22%3A%22%22%2C%22subpost%22%3A%22%22%2C%22subpost_id%22%3A%22%22%2C%22attachment%22%3A%22%22%2C%22attachment_id%22%3A0%2C%22name%22%3A%22%22%2C%22pagename%22%3A%22%22%2C%22page_id%22%3A0%2C%22second%22%3A%22%22%2C%22minute%22%3A%22%22%2C%22hour%22%3A%22%22%2C%22day%22%3A0%2C%22monthnum%22%3A0%2C%22year%22%3A0%2C%22w%22%3A0%2C%22category_name%22%3A%22%22%2C%22tag%22%3A%22%22%2C%22cat%22%3A%22%22%2C%22tag_id%22%3A%22%22%2C%22author%22%3A%22%22%2C%22author_name%22%3A%22%22%2C%22feed%22%3A%22%22%2C%22tb%22%3A%22%22%2C%22paged%22%3A0%2C%22meta_key%22%3A%22%22%2C%22meta_value%22%3A%22%22%2C%22preview%22%3A%22%22%2C%22s%22%3A%22%22%2C%22sentence%22%3A%22%22%2C%22title%22%3A%22%22%2C%22fields%22%3A%22%22%2C%22menu_order%22%3A%22%22%2C%22embed%22%3A%22%22%2C%22category__in%22%3A%5B%5D%2C%22category__not_in%22%3A%5B%5D%2C%22category__and%22%3A%5B%5D%2C%22post__in%22%3A%5B%5D%2C%22post__not_in%22%3A%5B%5D%2C%22post_name__in%22%3A%5B%5D%2C%22tag__in%22%3A%5B%5D%2C%22tag__not_in%22%3A%5B%5D%2C%22tag__and%22%3A%5B%5D%2C%22tag_slug__in%22%3A%5B%5D%2C%22tag_slug__and%22%3A%5B%5D%2C%22post_parent__in%22%3A%5B%5D%2C%22post_parent__not_in%22%3A%5B%5D%2C%22author__in%22%3A%5B%5D%2C%22author__not_in%22%3A%5B%5D%2C%22lazy_load_term_meta%22%3Afalse%2C%22posts_per_page%22%3A10%2C%22ignore_sticky_posts%22%3Afalse%2C%22suppress_filters%22%3Afalse%2C%22cache_results%22%3Afalse%2C%22update_post_term_cache%22%3Atrue%2C%22update_post_meta_cache%22%3Atrue%2C%22post_type%22%3A%22%22%2C%22nopaging%22%3Afalse%2C%22comments_per_page%22%3A%2250%22%2C%22no_found_rows%22%3Afalse%2C%22order%22%3A%22DESC%22%7D%2C%22query_before%22%3A%222020-10-14%2018%3A45%3A34%22%2C%22last_post_date%22%3A%222019-12-15%2006%3A21%3A20%22%2C%22body_class%22%3A%22infinite-scroll%20neverending%22%2C%22loading_text%22%3A%22Chargement%20d%5Cu2019une%20nouvelle%20page%22%2C%22stats%22%3A%22blog%3D34499549%26v%3Dwpcom%26tz%3D0%26user_id%3D0%26subd%3Deniort%26x_pagetype%3Dinfinite%22%7D%7D' ) );
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
var HighlanderComments = {"loggingInText":"Connexion\u2026","submittingText":"Publication d\u2019un Commentaire\u2026","postCommentText":"Laisser un commentaire","connectingToText":"Connexion \u00e0 %s","commentingAsText":"%1$s: Vous commentez \u00e0 l\u2019aide de votre compte %2$s.","logoutText":"Se d\u00e9connecter","loginText":"Se connecter","connectURL":"https:\/\/eniort.wordpress.com\/public.api\/connect\/?action=request&domain=eniort.com","logoutURL":"https:\/\/eniort.wordpress.com\/wp-login.php?action=logout&_wpnonce=f94afa5c87","homeURL":"https:\/\/eniort.com\/","postID":"3592","gravDefault":"identicon","enterACommentError":"Entrez un commentaire","enterEmailError":"Veuillez entrer votre adresse mail","invalidEmailError":"Adresse email invalide","enterAuthorError":"Veuillez entrer votre nom","gravatarFromEmail":"L\u2019image s\u2019affiche lorsque vous postez un commentaire. Cliquez pour personnaliser.","logInToExternalAccount":"Connectez-vous pour utiliser les informations li\u00e9es \u00e0 un de ces comptes:","change":"Changer","changeAccount":"Changer de compte","comment_registration":"","userIsLoggedIn":"","isJetpack":"","text_direction":"ltr"};
</script>
<script type='text/javascript' src='https://s0.wp.com/_static/??/wp-content/js/jquery/jquery.autoresize.js,/wp-content/mu-plugins/highlander-comments/script.js?m=1573483029j'></script>
		<div id="infinite-footer">
			<div class="container">
				<div class="blog-info">
					<a id="infinity-blog-title" href="https://eniort.com/" rel="home">
						E.Niort					</a>
				</div>
				<div class="blog-credits">
					<a href="https://wordpress.com/?ref=footer_blog" rel="nofollow">Propulsé par WordPress.com.</a> 				</div>
			</div>
		</div><!-- #infinite-footer -->
					<script type="text/javascript">
			( function( $ ) {
				$( document.body ).on( 'post-load', function () {
					if ( typeof __ATA.insertInlineAds === 'function' ) {
						__ATA.insertInlineAds();
					}
				} );
			} )( jQuery );
			</script>
	<div id="carousel-reblog-box">
		<form action="#" name="carousel-reblog">
			<textarea id="carousel-reblog-content" name="carousel-reblog-content" placeholder="Ajoutez votre grain de sel personnel... (facultatif)"></textarea>
			<label for="carousel-reblog-to-blog-id" id="carousel-reblog-lblogid">Publier sur</label>
			<select name="carousel-reblog-to-blog-id" id="carousel-reblog-to-blog-id">
						</select>

			<div class="submit">
				<span class="canceltext"><a href="#" class="cancel">Annuler</a></span>
				<input type="submit" name="carousel-reblog-submit" class="button" id="carousel-reblog-submit" value="Reblog Article" />
				<input type="hidden" id="carousel-reblog-blog-id" value="34499549" />
				<input type="hidden" id="carousel-reblog-blog-url" value="https://eniort.com" />
				<input type="hidden" id="carousel-reblog-blog-title" value="E.Niort" />
				<input type="hidden" id="carousel-reblog-post-url" value="" />
				<input type="hidden" id="carousel-reblog-post-title" value="" />
			</div>

			<input type="hidden" id="_wpnonce" name="_wpnonce" value="95aa48c830" /><input type="hidden" name="_wp_http_referer" value="/" />		</form>

		<div class="arrow"></div>
	</div>
<link rel='stylesheet' id='all-css-0-3' href='https://s0.wp.com/_static/??/wp-content/mu-plugins/carousel/jetpack-carousel.css,/wp-content/mu-plugins/tiled-gallery/tiled-gallery.css?m=1592560282j&cssminify=yes' type='text/css' media='all' />
<script id='jetpack-facebook-embed-js-extra'>
var jpfbembed = {"appid":"249643311490","locale":"fr_FR"};
</script>
<script id='wpcom-actionbar-bar-js-extra'>
var actionbardata = {"siteID":"34499549","siteName":"E.Niort","siteURL":"https:\/\/eniort.com","icon":"<img alt='' src='https:\/\/eniort.files.wordpress.com\/2020\/05\/image.jpg?w=50' class='avatar avatar-50' height='50' width='50' \/>","canManageOptions":"","canCustomizeSite":"","isFollowing":"","themeSlug":"pub\/cerauno","signupURL":"https:\/\/wordpress.com\/start\/","loginURL":"https:\/\/wordpress.com\/log-in?redirect_to=https%3A%2F%2Feniort.com%2F2020%2F08%2F15%2F15-aout-2020-ce-qui-est-ouvert-ou-ferme-a-niort%2F&signup_flow=account&domain=eniort.com","themeURL":"https:\/\/wordpress.com\/theme\/cerauno\/","xhrURL":"https:\/\/eniort.com\/wp-admin\/admin-ajax.php","nonce":"b8980fe656","isSingular":"","isFolded":"","isLoggedIn":"","isMobile":"","subscribeNonce":"<input type=\"hidden\" id=\"_wpnonce\" name=\"_wpnonce\" value=\"b41c7acd0b\" \/>","referer":"https:\/\/eniort.com\/","canFollow":"1","feedID":"66150938","statusMessage":"","customizeLink":"https:\/\/eniort.wordpress.com\/wp-admin\/customize.php?url=https%3A%2F%2Feniort.wordpress.com%2F","i18n":{"view":"Afficher le site","follow":"Suivre","following":"Abonn\u00e9","edit":"Modifier","login":"Connexion","signup":"S'inscrire","customize":"Personnaliser","report":"Signaler ce contenu","themeInfo":"Obtenir le th\u00e8me: Cerauno","shortlink":"Copier shortlink","copied":"Copi\u00e9","followedText":"Les nouveaux articles de ce site appara\u00eetront d\u00e9sormais dans votre <a href=\"https:\/\/wordpress.com\/\">Lecteur<\/a>","foldBar":"R\u00e9duire cette barre","unfoldBar":"\u00c9tendre cette barre","editSubs":"G\u00e9rer les abonnements","viewReader":"Voir le site dans le Lecteur","viewReadPost":"Voir l\u2019article dans le Lecteur","subscribe":"M\u2019inscrire","enterEmail":"Entrez votre adresse e-mail","followers":"Rejoignez 30 autres abonn\u00e9s","alreadyUser":"Vous disposez d\u00e9j\u00e0 d\u02bcun compte WordPress ? <a href=\"https:\/\/wordpress.com\/log-in?redirect_to=https%3A%2F%2Feniort.com%2F2020%2F08%2F15%2F15-aout-2020-ce-qui-est-ouvert-ou-ferme-a-niort%2F&signup_flow=account&domain=eniort.com\">Connectez-vous maintenant.<\/a>","stats":"Statistiques"}};
</script>
<script id='jetpack-carousel-js-extra'>
var jetpackCarouselStrings = {"widths":[370,700,1000,1200,1400,2000],"is_logged_in":"","lang":"fr","ajaxurl":"https:\/\/eniort.com\/wp-admin\/admin-ajax.php","nonce":"b0482a7261","display_exif":"1","display_comments":"1","display_geo":"1","single_image_gallery":"1","single_image_gallery_media_file":"","background_color":"black","comment":"Commentaire","post_comment":"Laisser un commentaire","write_comment":"\u00c9crire un commentaire...","loading_comments":"Chargement des commentaires\u2026","download_original":"Afficher dans sa taille r\u00e9elle <span class=\"photo-size\">{0}<span class=\"photo-size-times\">\u00d7<\/span>{1}<\/span>.","no_comment_text":"Veuillez ajouter du contenu \u00e0 votre commentaire.","no_comment_email":"Merci de renseigner une adresse e-mail.","no_comment_author":"Merci de renseigner votre nom.","comment_post_error":"Une erreur s'est produite \u00e0 la publication de votre commentaire. Veuillez nous en excuser, et r\u00e9essayer dans quelques instants.","comment_approved":"Votre commentaire a \u00e9t\u00e9 approuv\u00e9.","comment_unapproved":"Votre commentaire est en attente de validation.","camera":"Appareil photo","aperture":"Ouverture","shutter_speed":"Vitesse d'obturation","focal_length":"Focale","copyright":"Copyright","comment_registration":"0","require_name_email":"1","login_url":"https:\/\/eniort.wordpress.com\/wp-login.php?redirect_to=https%3A%2F%2Feniort.com%2F2020%2F02%2F05%2Fjobs-dete-chez-inter-mutuelles-assistance-pour-la-saison-estivale-2020%2F","blog_id":"34499549","meta_data":["camera","aperture","shutter_speed","focal_length","copyright"],"local_comments_commenting_as":"<fieldset><label for=\"email\">E-mail (requis)<\/label> <input type=\"text\" name=\"email\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-email-field\" \/><\/fieldset><fieldset><label for=\"author\">Nom (requis)<\/label> <input type=\"text\" name=\"author\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-author-field\" \/><\/fieldset><fieldset><label for=\"url\">Site web<\/label> <input type=\"text\" name=\"url\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-url-field\" \/><\/fieldset>","reblog":"Reblog","reblogged":"Reblogu\u00e9","reblog_add_thoughts":"Ajoutez votre grain de sel personnel... (facultatif)","reblogging":"Reblogging...","post_reblog":"Relais d\u2019article","stats_query_args":"blog=34499549&v=wpcom&tz=0&user_id=0&subd=eniort","is_public":"1","reblog_enabled":""};
</script>
<script type='text/javascript' src='https://s0.wp.com/_static/??-eJyVkctOxDAMRX+IYGaQBrFAfApyE7e4zUux0zJ/TyrRCmZRDbvrx7m6lmHJxqaoFBVGAUczW8pfj6M8wK9RqCb7OnAU4NhzZL3u4nZXPymQQK4dWCpYY1qdI848oHKK9+3LxNl4jpPpk61iej4KtbAbSAWotmmamIzHBZRC9qh00z/wGUkz2gk+OFro0VLXKEOhI3cvpQurUjHKgVp+OuDQBY6mwwIBpTFNmTRTKexa5r33TwctLYscQXZ9wwrt6mDbYklVyG9Xmq2xMe1oX9fA69eWPnUjWb013NzmdloCFFm/Nf7UuZAcBVb25MyA3lO5/q0a9R7eTpen8+X1fHp+Gb8BIpsPFw=='></script>
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
				extend( window.infiniteScroll.settings.scripts, ["jquery-core","jquery","postmessage","mobile-useragent-info","grofiles-cards","wpgroho","jquery.autoresize","highlander-comments","devicepx","the-neverending-homepage","cerauno-navigation","cerauno-skip-link-focus-fix","eu-cookie-law-script","jetpack-facebook-embed","jetpack-twitter-timeline","wpcom-masterbar-js","wpcom-masterbar-tracks-js","wpcom-actionbar-bar","jetpack-carousel","swfobject","videopress","tiled-gallery"] );
				extend( window.infiniteScroll.settings.styles, ["wpcom-smileys","wordads-global","the-neverending-homepage","wp-block-library","jetpack-layout-grid","jetpack-ratings","coblocks-frontend","wpcom-core-compat-playlist-styles","wpcom-bbpress2-staff-css","cerauno-style","cerauno-fontawesome","cerauno-wpcom","eu-cookie-law-style","jetpack_facebook_likebox","wpcom_instagram_widget","geo-location-flair","reblogging","a8c-global-print","wpcom-actionbar-bar","h4-global","global-styles","cerauno-fonts","jetpack-global-styles-frontend-style","highlander-comments","highlander-comments-ie7","jetpack-carousel","tiled-gallery"] );
			})();
		</script>
				<span id="infinite-aria" aria-live="polite"></span>
		<script src="//stats.wp.com/w.js?61" type="text/javascript" async defer></script>
<script type="text/javascript">
_tkq = window._tkq || [];
_stq = window._stq || [];
_tkq.push(['storeContext', {'blog_id':'34499549','blog_tz':'0','user_lang':'fr','blog_lang':'fr','user_id':'0'}]);
_stq.push(['view', {'blog':'34499549','v':'wpcom','tz':'0','user_id':'0','subd':'eniort'}]);
_stq.push(['extra', {'crypt':'UE5tW3cvZGQ9PzdhTnQ1KytscD9vXVgyLXgxdkg3dTc0Q0FkNkJbaiZ0QkR5cXB4Z0ZJbUstX0RbOG9XRGpoK1dfbn58emRnM01dZi98bFIvTWxvTk9WZ2MtUkhNWnQvZEk0WExkNENocnpsXW9fWFNtNXU3VytNOTUxdXosJWJpNXwvJls4OTN+bjYuPXRYJm1+SVhaOENMLWFQYTdyXzAvNlpEcUcwZUE/TFZCW0J0VS9HbW5wOEJIMzZ5NTdwaE84TXZkUH5vJndPQjUwR3dfZTBhZVhiXytHZz98NQ=='}]);
_stq.push([ 'clickTrackerInit', '34499549', '0' ]);
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
