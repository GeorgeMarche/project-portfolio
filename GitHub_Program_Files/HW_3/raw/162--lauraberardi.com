<!DOCTYPE html>
<!--[if IE 6]>
<html id="ie6" lang="it-IT">
<![endif]-->
<!--[if IE 7]>
<html id="ie7" lang="it-IT">
<![endif]-->
<!--[if IE 8]>
<html id="ie8" lang="it-IT">
<![endif]-->
<!--[if !(IE 6) & !(IE 7) & !(IE 8)]><!-->
<html lang="it-IT">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" />
<title>Laura Berardi | La vita è un uragano di emozioni</title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="stylesheet" type="text/css" media="all" href="https://s0.wp.com/wp-content/themes/pub/twentyeleven/style.css" />
<link rel="pingback" href="https://lauraberardi.com/xmlrpc.php">
<!--[if lt IE 9]>
<script src="https://s0.wp.com/wp-content/themes/pub/twentyeleven/js/html5.js" type="text/javascript"></script>
<![endif]-->
<script type="text/javascript">
  WebFontConfig = {"google":{"families":["Lora:r:latin,latin-ext"]}};
  (function() {
    var wf = document.createElement('script');
    wf.src = 'https://s0.wp.com/wp-content/plugins/custom-fonts/js/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
	})();
</script><style id="jetpack-custom-fonts-css">.wf-active #site-title{font-family:"Lora",serif;font-style:normal;font-weight:400}.wf-active #site-title a{font-size:39px;font-weight:400;font-style:normal}@media print{.wf-active #site-title a{font-size:27.3pt;font-style:normal;font-weight:400}}.wf-active h1, .wf-active h2, .wf-active h3, .wf-active h4, .wf-active h5, .wf-active h6{font-family:"Lora",serif;font-size:130%;font-style:normal;font-weight:400}.wf-active .page-title{font-size:13px;font-weight:400;font-style:normal}.wf-active .entry-title{font-size:33.8px;font-weight:400;font-style:normal}.wf-active .comment-content h1, .wf-active .comment-content h2, .wf-active .entry-content h1, .wf-active .entry-content h2{font-weight:400;font-style:normal}.wf-active .comment-content h3, .wf-active .entry-content h3{font-size:13px;font-style:normal;font-weight:400}.wf-active #author-description h2{font-size:19.5px;font-weight:400;font-style:normal}.wf-active .singular .entry-title{font-size:46.8px;font-weight:400;font-style:normal}.wf-active .error404 .widgettitle{font-size:13px;font-style:normal;font-weight:400}.wf-active h1.showcase-heading{font-size:13px;font-weight:400;font-style:normal}.wf-active section.recent-posts .other-recent-posts .entry-title{font-size:22.1px;font-style:normal;font-weight:400}.wf-active .widget-title{font-size:13px;font-weight:400;font-style:normal}.wf-active .widget_twentyeleven_ephemera .widget-entry-title{font-size:19.5px;font-weight:400;font-style:normal}.wf-active #comments-title{font-size:13px;font-weight:400;font-style:normal}.wf-active #reply-title{font-size:31.2px;font-weight:400;font-style:normal}@media print{.wf-active .entry-title, .wf-active .singular .entry-title{font-size:27.3pt;font-style:normal;font-weight:400}}</style>

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
		+ "&origin=aHR0cHM6Ly9sYXVyYWJlcmFyZGkuY29t"
		+ "&wpcomid=74941530"
		+ "&time=1602700174";
	document.body.appendChild( iframe );
}, false );
</script>
<link rel='dns-prefetch' href='//s0.wp.com' />
<link rel='dns-prefetch' href='//lauraberardi102.wordpress.com' />
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
<link rel="alternate" type="application/rss+xml" title="Laura Berardi &raquo; Feed" href="https://lauraberardi.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="Laura Berardi &raquo; Feed dei commenti" href="https://lauraberardi.com/comments/feed/" />
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
	<link rel='stylesheet' id='all-css-0-1' href='https://s0.wp.com/_static/??-eJylkttOAyEQhl9IFndNanphfBYOI07LKcyQhreXRa2b1tQmhoQww//NCeQpC5MiQ2QZqsi+OowkT9mkICigh3ZhTYboQW4w7ZP7AVOxypJ0Pmnlr7SbFB6PQPIAnJU5imHdkmN8w4jczocr8bfS1W5qKK7fFJD7aZ5mqSt6u5Y6cumiSpPEzcP/w/A7hHvCDGrTsWqpsnAF7d2VXIQoijE6+gM36Qtbpr6kReKzT/yObua+Nt/9ISteFQEsKvC948i3sM8vo3UuQCT6HrAGMUY1nvk1vMy7x2W3X+an58MH53vxrA==?cssminify=yes' type='text/css' media='all' />
<style id='wp-block-library-inline-css'>
.has-text-align-justify {
	text-align:justify;
}
</style>
<style id='global-styles-inline-css'>
:root{--wp--preset--color--blue:#1982d1;--wp--preset--color--black:#000;--wp--preset--color--dark-gray:#373737;--wp--preset--color--medium-gray:#666;--wp--preset--color--light-gray:#e2e2e2;--wp--preset--color--white:#fff;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple:linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan:linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange:linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red:linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray:linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum:linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple:linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux:linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk:linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean:linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass:linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight:linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--font-size--small:13;--wp--preset--font-size--normal:16;--wp--preset--font-size--medium:20;--wp--preset--font-size--large:36;--wp--preset--font-size--huge:42;}
</style>
<link rel='stylesheet' id='all-css-2-1' href='https://s0.wp.com/_static/??-eJyNkEsOwjAMRC9EMEUqKgvEWdzghtD81DhEvT0pm4IQUXdje97INuQgpHdMjoHvZClCSD1wLo2ZDD3JQW+8HONexriDDfbIsyGRg/T2h7FJBJOUdhGyviniCJTK1I+ahMEMTDYY5JL7jtkSUDSjmtCuqoYp8qIchKy9+yrEYFBPNXSi8gpVpILi+ihrkHaDdprnf/+qsSiXxXqcVrXYr/bStOdDc2qPXfd4AZJ5quw=?cssminify=yes' type='text/css' media='all' />
<style id='jetpack-global-styles-frontend-style-inline-css'>
:root { --font-headings: unset; --font-base: unset; --font-headings-default: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif; --font-base-default: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif;}
</style>
<link rel='stylesheet' id='all-css-4-1' href='https://s0.wp.com/_static/??-eJxti8sKgCAQAH8oW6KHdoi+xcTUWF1pjX4/OnSIOg0DM3BmYSgVmwrEQ2Q8XEgMmbiIFXXYgb3eQ3IPa8Ncwf/FZIJGgeToLZ+peBstg+/AIS0a72COU9OPUg69atV2AWWKN+I=?cssminify=yes' type='text/css' media='all' />
<script type='text/javascript' src='https://s0.wp.com/_static/??/wp-includes/js/jquery/jquery.js,/wp-content/js/mobile-useragent-info.js?m=1558356653j'></script>
<link rel='stylesheet' id='all-css-0-2' href='https://s0.wp.com/wp-content/mu-plugins/highlander-comments/style.css?m=1530132353h&cssminify=yes' type='text/css' media='all' />
<!--[if lt IE 8]>
<link rel='stylesheet' id='highlander-comments-ie7-css'  href='https://s0.wp.com/wp-content/mu-plugins/highlander-comments/style-ie7.css?m=1351637563h&#038;ver=20110606' media='all' />
<![endif]-->
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://lauraberardi102.wordpress.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://s0.wp.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress.com" />
<link rel='shortlink' href='https://wp.me/54rIm' />

<!-- Jetpack Open Graph Tags -->
<meta property="og:type" content="website" />
<meta property="og:title" content="Laura Berardi" />
<meta property="og:description" content="La vita è un uragano di emozioni" />
<meta property="og:url" content="https://lauraberardi.com/" />
<meta property="og:site_name" content="Laura Berardi" />
<meta property="og:image" content="https://lauraberardi102.files.wordpress.com/2020/08/cropped-logo-sito-1.png?w=200" />
<meta property="og:image:width" content="200" />
<meta property="og:image:height" content="200" />
<meta property="og:locale" content="it_IT" />
<meta name="twitter:creator" content="@LauraBerardi10" />
<meta name="twitter:site" content="@LauraBerardi10" />

<!-- End Jetpack Open Graph Tags -->
<link rel='openid.server' href='https://lauraberardi.com/?openidserver=1' />
<link rel='openid.delegate' href='https://lauraberardi.com/' />
<link rel="search" type="application/opensearchdescription+xml" href="https://lauraberardi.com/osd.xml" title="Laura Berardi" />
<link rel="search" type="application/opensearchdescription+xml" href="https://s1.wp.com/opensearch.xml" title="WordPress.com" />
		<style type="text/css">
			.recentcomments a {
				display: inline !important;
				padding: 0 !important;
				margin: 0 !important;
			}

			table.recentcommentsavatartop img.avatar, table.recentcommentsavatarend img.avatar {
				border: 0px;
				margin: 0;
			}

			table.recentcommentsavatartop a, table.recentcommentsavatarend a {
				border: 0px !important;
				background-color: transparent !important;
			}

			td.recentcommentsavatarend, td.recentcommentsavatartop {
				padding: 0px 0px 1px 0px;
				margin: 0px;
			}

			td.recentcommentstextend {
				border: none !important;
				padding: 0px 0px 2px 10px;
			}

			.rtl td.recentcommentstextend {
				padding: 0px 10px 2px 0px;
			}

			td.recentcommentstexttop {
				border: none;
				padding: 0px 0px 0px 10px;
			}

			.rtl td.recentcommentstexttop {
				padding: 0px 10px 0px 0px;
			}
		</style>
		<meta name="application-name" content="Laura Berardi" /><meta name="msapplication-window" content="width=device-width;height=device-height" /><meta name="msapplication-tooltip" content="La vita è un uragano di emozioni" /><meta name="msapplication-task" content="name=Iscriviti;action-uri=https://lauraberardi.com/feed/;icon-uri=https://lauraberardi102.files.wordpress.com/2020/08/cropped-logo-sito-1.png?w=16" /><meta name="msapplication-task" content="name=Iscriviti per un blog gratis;action-uri=http://wordpress.com/signup/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=Supporto WordPress.com;action-uri=http://support.wordpress.com/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="msapplication-task" content="name=Forums WordPress.com;action-uri=http://forums.wordpress.com/;icon-uri=https://s0.wp.com/i/favicon.ico" /><meta name="description" content="La vita è un uragano di emozioni" />
		<script type="text/javascript">
		function __ATA_CC() {var v = document.cookie.match('(^|;) ?personalized-ads-consent=([^;]*)(;|$)');return v ? 1 : 0;}
		var __ATA_PP = { pt: 0, ht: 1, tn: 'twentyeleven', amp: false, siteid: 74941530, consent: __ATA_CC() };
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
		</script><link rel="icon" href="https://lauraberardi102.files.wordpress.com/2020/08/cropped-logo-sito-1.png?w=32" sizes="32x32" />
<link rel="icon" href="https://lauraberardi102.files.wordpress.com/2020/08/cropped-logo-sito-1.png?w=192" sizes="192x192" />
<link rel="apple-touch-icon" href="https://lauraberardi102.files.wordpress.com/2020/08/cropped-logo-sito-1.png?w=180" />
<meta name="msapplication-TileImage" content="https://lauraberardi102.files.wordpress.com/2020/08/cropped-logo-sito-1.png?w=270" />
</head>

<body class="home blog wp-embed-responsive customizer-styles-applied single-author two-column right-sidebar highlander-enabled highlander-light">
			<div id="atatags-749415302-5f87438e59b1d"></div>
			
			<script>
				__ATA.cmd.push(function() {
					__ATA.initDynamicSlot({
						id: 'atatags-749415302-5f87438e59b1d',
						location: 110,
						formFactor: '002',
						label: {
							text: 'Annunci',
						},
						creative: {
							reportAd: {
								text: 'Segnala questo annuncio',
							},
							privacySettings: {
								text: 'Impostazioni sulla privacy',
							}
						}
					});
				});
			</script><div id="page" class="hfeed">
	<header id="branding" role="banner">
			<hgroup>
				<h1 id="site-title"><span><a href="https://lauraberardi.com/" rel="home">Laura Berardi</a></span></h1>
				<h2 id="site-description">La vita è un uragano di emozioni</h2>
			</hgroup>

						<a href="https://lauraberardi.com/">
									<img src="https://lauraberardi102.files.wordpress.com/2019/09/cropped-640e4eca-61f3-4dde-98b6-26a5f51b18ec-e1567410935179-3.jpg" width="1000" height="341" alt="" />
							</a>
			
								<form method="get" id="searchform" action="https://lauraberardi.com/">
		<label for="s" class="assistive-text">Cerca</label>
		<input type="text" class="field" name="s" id="s" placeholder="Cerca" />
		<input type="submit" class="submit" name="submit" id="searchsubmit" value="Cerca" />
	</form>
			
			<nav id="access" role="navigation">
				<h3 class="assistive-text">Menu principale</h3>
								<div class="skip-link"><a class="assistive-text" href="#content">Vai al contenuto principale</a></div>
									<div class="skip-link"><a class="assistive-text" href="#secondary">Vai al contenuto secondario</a></div>
												<div class="menu-menu-container"><ul id="menu-menu" class="menu"><li id="menu-item-428" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-428"><a href="https://lauraberardi.com/" aria-current="page">Home</a></li>
<li id="menu-item-429" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-429"><a href="https://lauraberardi.com/chi-sono/">About me</a></li>
<li id="menu-item-436" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-436"><a href="https://lauraberardi.com/category/io-penso/">Io penso&#8230;</a></li>
<li id="menu-item-435" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-435"><a href="https://lauraberardi.com/category/poesie/">Poesie</a></li>
<li id="menu-item-482" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-482"><a href="https://lauraberardi.com/contatti/">Contatti</a></li>
</ul></div>			</nav><!-- #access -->
	</header><!-- #branding -->


	<div id="main">

		<div id="primary">
			<div id="content" role="main">

			
						<nav id="nav-above">
			<h3 class="assistive-text">Navigazione articolo</h3>
			<div class="nav-previous"><a href="https://lauraberardi.com/page/2/" ><span class="meta-nav">&larr;</span> Articoli più vecchi</a></div>
			<div class="nav-next"></div>
		</nav><!-- #nav-above -->
	
								
					
	<article id="post-693" class="post-693 post type-post status-publish format-standard hentry category-io-penso tag-benessere tag-cambiamenti tag-cambiare tag-condizione tag-confusione tag-coronavirus tag-critiche tag-egoismo tag-emozioni tag-esistenza tag-esperienza tag-giudizio tag-immaginazione tag-indifferenza tag-lamentele tag-lettura tag-liberta tag-libri tag-menefreghismo tag-pandemia tag-parole tag-paura tag-pensieri tag-pregiudizio tag-problemi tag-riflessioni tag-scelta tag-scrittura tag-sensazioni tag-sopravvivere tag-specchio tag-superficialita tag-virus tag-vita">
		<header class="entry-header">
						<h1 class="entry-title"><a href="https://lauraberardi.com/2020/10/12/il-mondo-e-cosi/" rel="bookmark">Il mondo è&nbsp;così</a></h1>
			
						<div class="entry-meta">
				<span class="sep">Posted on </span><a href="https://lauraberardi.com/2020/10/12/il-mondo-e-cosi/" title="19:59" rel="bookmark"><time class="entry-date" datetime="2020-10-12T19:59:05+02:00">12 ottobre 2020</time></a><span class="by-author"> <span class="sep"> by </span> <span class="author vcard"><a class="url fn n" href="https://lauraberardi.com/author/lauraberardi102/" title="Vedi tutti gli articoli di Laura Berardi" rel="author">Laura Berardi</a></span></span>			</div><!-- .entry-meta -->
			
						<div class="comments-link">
				<a href="https://lauraberardi.com/2020/10/12/il-mondo-e-cosi/#comments">9</a>			</div>
					</header><!-- .entry-header -->

				<div class="entry-content">
			
<p>Quante parole, quante lamentele, quanti problemi nati nella mente dell’essere umano per nascondere i veri drammi della vita. In questo periodo ascolto quotidianamente ogni genere di critica verso qualunque cosa e nei confronti di chiunque. Tutti a giudicare le azioni degli altri e mai nessuno che si faccia qualche domanda in più su se stesso, forse per paura di guardarsi allo specchio e mettersi in discussione. Per carità, è sacrosanto poter esprimere la propria opinione in piena libertà, ma credo che negli ultimi tempi abbia dilagato una confusione generale che non ha fatto altro che peggiorare una situazione già di per sé critica. Ho già detto in altri articoli come la penso sulla prevenzione sanitaria e non sto qui a ripeterlo. Ma sicuramente una cosa che ho capito in questi mesi è che l’essere umano è la creatura che meno si adatta ai cambiamenti. La maggior parte delle persone pensa soltanto al benessere proprio ed è sempre pronta all&#8217;attacco. Giudica senza conoscere, senza pensare minimamente alla salvaguardia degli altri, a come sono costretti a vivere alcuni, quelli che davvero non hanno libertà di scelta e sono condannati ad un’esistenza priva di emozioni, anche la più semplice.<br>I cambiamenti spaventano un po’ tutti, questo è vero. Eppure basterebbe un po’ di buona volontà per comprenderli fino in fondo. Alcuni peggiorano la nostra quotidianità, altri addirittura la migliorano, regalandoci esperienze e sensazioni che non avremmo mai pensato di provare. <br>Ma ho capito anche che il mondo troverà sempre una ragione per lamentarsi e criticare l’operato altrui. E, nonostante a volte sia impossibile non reagire e non provare un’immensa angoscia, l’unica arma per difendersi è l’indifferenza. Prima mi sorprendevo di tanta superficialità. Mi logoravo (e ammetto che ancora mi logoro, troppo spesso purtroppo) per cercare di capire cosa spinge certe persone a giudicare tutto e tutti. Sto imparando lentamente a non ascoltarli più, perché non vale la pena perdere tempo con chi parla sempre a sproposito. E sopravvivo nel mio piccolo mondo, colmo di amore per la Natura, per i libri, per la scrittura, protetto e custodito dalla costante forza dell’immaginazione. Perché è quest’ultima la mia più grande fonte di vita.</p>
			<div id="atatags-749415301-5f87438e5d08c"></div>
			
			<script>
				__ATA.cmd.push(function() {
					__ATA.initDynamicSlot({
						id: 'atatags-749415301-5f87438e5d08c',
						location: 120,
						formFactor: '001',
						label: {
							text: 'Annunci',
						},
						creative: {
							reportAd: {
								text: 'Segnala questo annuncio',
							},
							privacySettings: {
								text: 'Impostazioni sulla privacy',
							}
						}
					});
				});
			</script><div id="jp-post-flair" class="sharedaddy sd-like-enabled sd-sharing-enabled"><div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Condividi:</h3><div class="sd-content"><ul><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-693" class="share-twitter sd-button share-icon" href="https://lauraberardi.com/2020/10/12/il-mondo-e-cosi/?share=twitter" target="_blank" title="Fai clic qui per condividere su Twitter"><span>Twitter</span></a></li><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-693" class="share-facebook sd-button share-icon" href="https://lauraberardi.com/2020/10/12/il-mondo-e-cosi/?share=facebook" target="_blank" title="Fai clic per condividere su Facebook"><span>Facebook</span></a></li><li class="share-end"></li></ul></div></div></div><div class='sharedaddy sd-block sd-like jetpack-likes-widget-wrapper jetpack-likes-widget-unloaded' id='like-post-wrapper-74941530-693-5f87438e5d6cc' data-src='//widgets.wp.com/likes/index.html?ver=20200826#blog_id=74941530&amp;post_id=693&amp;origin=lauraberardi102.wordpress.com&amp;obj_id=74941530-693-5f87438e5d6cc&amp;domain=lauraberardi.com' data-name='like-post-frame-74941530-693-5f87438e5d6cc'><h3 class='sd-title'>Mi piace:</h3><div class='likes-widget-placeholder post-likes-widget-placeholder' style='height: 55px;'><span class='button'><span>Mi piace</span></span> <span class="loading">Caricamento...</span></div><span class='sd-text-color'></span><a class='sd-link-color'></a></div></div>					</div><!-- .entry-content -->
		
		<footer class="entry-meta">
												<span class="cat-links">
				<span class="entry-utility-prep entry-utility-prep-cat-links">Pubblicato in</span> <a href="https://lauraberardi.com/category/io-penso/" rel="category tag">Io penso...</a>			</span>
															<span class="sep"> | </span>
							<span class="tag-links">
				<span class="entry-utility-prep entry-utility-prep-tag-links">Contrassegnato</span> <a href="https://lauraberardi.com/tag/benessere/" rel="tag">benessere</a>, <a href="https://lauraberardi.com/tag/cambiamenti/" rel="tag">cambiamenti</a>, <a href="https://lauraberardi.com/tag/cambiare/" rel="tag">cambiare</a>, <a href="https://lauraberardi.com/tag/condizione/" rel="tag">condizione</a>, <a href="https://lauraberardi.com/tag/confusione/" rel="tag">confusione</a>, <a href="https://lauraberardi.com/tag/coronavirus/" rel="tag">Coronavirus</a>, <a href="https://lauraberardi.com/tag/critiche/" rel="tag">critiche</a>, <a href="https://lauraberardi.com/tag/egoismo/" rel="tag">egoismo</a>, <a href="https://lauraberardi.com/tag/emozioni/" rel="tag">emozioni</a>, <a href="https://lauraberardi.com/tag/esistenza/" rel="tag">esistenza</a>, <a href="https://lauraberardi.com/tag/esperienza/" rel="tag">esperienza</a>, <a href="https://lauraberardi.com/tag/giudizio/" rel="tag">giudizio</a>, <a href="https://lauraberardi.com/tag/immaginazione/" rel="tag">immaginazione</a>, <a href="https://lauraberardi.com/tag/indifferenza/" rel="tag">indifferenza</a>, <a href="https://lauraberardi.com/tag/lamentele/" rel="tag">lamentele</a>, <a href="https://lauraberardi.com/tag/lettura/" rel="tag">lettura</a>, <a href="https://lauraberardi.com/tag/liberta/" rel="tag">libertà</a>, <a href="https://lauraberardi.com/tag/libri/" rel="tag">libri</a>, <a href="https://lauraberardi.com/tag/menefreghismo/" rel="tag">menefreghismo</a>, <a href="https://lauraberardi.com/tag/pandemia/" rel="tag">pandemia</a>, <a href="https://lauraberardi.com/tag/parole/" rel="tag">parole</a>, <a href="https://lauraberardi.com/tag/paura/" rel="tag">paura</a>, <a href="https://lauraberardi.com/tag/pensieri/" rel="tag">pensieri</a>, <a href="https://lauraberardi.com/tag/pregiudizio/" rel="tag">pregiudizio</a>, <a href="https://lauraberardi.com/tag/problemi/" rel="tag">problemi</a>, <a href="https://lauraberardi.com/tag/riflessioni/" rel="tag">riflessioni</a>, <a href="https://lauraberardi.com/tag/scelta/" rel="tag">scelta</a>, <a href="https://lauraberardi.com/tag/scrittura/" rel="tag">scrittura</a>, <a href="https://lauraberardi.com/tag/sensazioni/" rel="tag">sensazioni</a>, <a href="https://lauraberardi.com/tag/sopravvivere/" rel="tag">sopravvivere</a>, <a href="https://lauraberardi.com/tag/specchio/" rel="tag">specchio</a>, <a href="https://lauraberardi.com/tag/superficialita/" rel="tag">superficialità</a>, <a href="https://lauraberardi.com/tag/virus/" rel="tag">virus</a>, <a href="https://lauraberardi.com/tag/vita/" rel="tag">vita</a>			</span>
						
									<span class="sep"> | </span>
						<span class="comments-link"><a href="https://lauraberardi.com/2020/10/12/il-mondo-e-cosi/#comments"><b>9</b> Risposte</a></span>
			
					</footer><!-- .entry-meta -->
	</article><!-- #post-693 -->

				
					
	<article id="post-686" class="post-686 post type-post status-publish format-standard hentry category-poesie tag-angoscia tag-battiti tag-componimenti tag-componimento tag-coraggio tag-cuore tag-emozioni tag-esistenza tag-incubi tag-incubo tag-laura-berardi tag-lauraberardi tag-malinconia tag-morte tag-notte tag-passione tag-passioni tag-paura tag-paure tag-poesia tag-poesie tag-profondo tag-respiro tag-sensazioni tag-sogni tag-sogno tag-solitudine tag-vita tag-viva-2 tag-vivere">
		<header class="entry-header">
						<h1 class="entry-title"><a href="https://lauraberardi.com/2020/09/29/viva/" rel="bookmark">Viva</a></h1>
			
						<div class="entry-meta">
				<span class="sep">Posted on </span><a href="https://lauraberardi.com/2020/09/29/viva/" title="19:22" rel="bookmark"><time class="entry-date" datetime="2020-09-29T19:22:00+02:00">29 settembre 2020</time></a><span class="by-author"> <span class="sep"> by </span> <span class="author vcard"><a class="url fn n" href="https://lauraberardi.com/author/lauraberardi102/" title="Vedi tutti gli articoli di Laura Berardi" rel="author">Laura Berardi</a></span></span>			</div><!-- .entry-meta -->
			
						<div class="comments-link">
				<a href="https://lauraberardi.com/2020/09/29/viva/#comments">9</a>			</div>
					</header><!-- .entry-header -->

				<div class="entry-content">
			
<p><em>Emozioni improbabili<br>e vivide<br>che muoiono<br>ancor prima<br>di sbocciare,<br>sensazioni terrene<br>e fisiche<br>che lasciano<br>senza fiato<br>anche<br>l’essere vivente<br>più intrepido<br>del mondo,<br>paure terrorizzanti<br>capaci di fermare<br>istantaneamente<br>i battiti di un cuore<br>coraggioso.<br>Notte mia,<br>non abbandonarmi mai,<br>ché le inverosimili<br>passioni,<br>gli spaventosi incubi<br>e i meravigliosi sogni<br>mi donano<br>pura vita,<br>l’unica che<br>riesco a vivere<br>fino all’ultimo<br>profondo respiro.</em></p>



<p>Laura Berardi, 29 settembre 2020</p>
<div id="jp-post-flair" class="sharedaddy sd-like-enabled sd-sharing-enabled"><div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Condividi:</h3><div class="sd-content"><ul><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-686" class="share-twitter sd-button share-icon" href="https://lauraberardi.com/2020/09/29/viva/?share=twitter" target="_blank" title="Fai clic qui per condividere su Twitter"><span>Twitter</span></a></li><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-686" class="share-facebook sd-button share-icon" href="https://lauraberardi.com/2020/09/29/viva/?share=facebook" target="_blank" title="Fai clic per condividere su Facebook"><span>Facebook</span></a></li><li class="share-end"></li></ul></div></div></div><div class='sharedaddy sd-block sd-like jetpack-likes-widget-wrapper jetpack-likes-widget-unloaded' id='like-post-wrapper-74941530-686-5f87438e5fead' data-src='//widgets.wp.com/likes/index.html?ver=20200826#blog_id=74941530&amp;post_id=686&amp;origin=lauraberardi102.wordpress.com&amp;obj_id=74941530-686-5f87438e5fead&amp;domain=lauraberardi.com' data-name='like-post-frame-74941530-686-5f87438e5fead'><h3 class='sd-title'>Mi piace:</h3><div class='likes-widget-placeholder post-likes-widget-placeholder' style='height: 55px;'><span class='button'><span>Mi piace</span></span> <span class="loading">Caricamento...</span></div><span class='sd-text-color'></span><a class='sd-link-color'></a></div></div>					</div><!-- .entry-content -->
		
		<footer class="entry-meta">
												<span class="cat-links">
				<span class="entry-utility-prep entry-utility-prep-cat-links">Pubblicato in</span> <a href="https://lauraberardi.com/tag/poesie/" rel="category tag">Poesie</a>			</span>
															<span class="sep"> | </span>
							<span class="tag-links">
				<span class="entry-utility-prep entry-utility-prep-tag-links">Contrassegnato</span> <a href="https://lauraberardi.com/tag/angoscia/" rel="tag">angoscia</a>, <a href="https://lauraberardi.com/tag/battiti/" rel="tag">battiti</a>, <a href="https://lauraberardi.com/tag/componimenti/" rel="tag">componimenti</a>, <a href="https://lauraberardi.com/tag/componimento/" rel="tag">componimento</a>, <a href="https://lauraberardi.com/tag/coraggio/" rel="tag">coraggio</a>, <a href="https://lauraberardi.com/tag/cuore/" rel="tag">cuore</a>, <a href="https://lauraberardi.com/tag/emozioni/" rel="tag">emozioni</a>, <a href="https://lauraberardi.com/tag/esistenza/" rel="tag">esistenza</a>, <a href="https://lauraberardi.com/tag/incubi/" rel="tag">incubi</a>, <a href="https://lauraberardi.com/tag/incubo/" rel="tag">incubo</a>, <a href="https://lauraberardi.com/tag/laura-berardi/" rel="tag">Laura Berardi</a>, <a href="https://lauraberardi.com/tag/lauraberardi/" rel="tag">LauraBerardi</a>, <a href="https://lauraberardi.com/tag/malinconia/" rel="tag">malinconia</a>, <a href="https://lauraberardi.com/tag/morte/" rel="tag">morte</a>, <a href="https://lauraberardi.com/tag/notte/" rel="tag">notte</a>, <a href="https://lauraberardi.com/tag/passione/" rel="tag">passione</a>, <a href="https://lauraberardi.com/tag/passioni/" rel="tag">passioni</a>, <a href="https://lauraberardi.com/tag/paura/" rel="tag">paura</a>, <a href="https://lauraberardi.com/tag/paure/" rel="tag">paure</a>, <a href="https://lauraberardi.com/tag/poesia/" rel="tag">poesia</a>, <a href="https://lauraberardi.com/tag/poesie/" rel="tag">Poesie</a>, <a href="https://lauraberardi.com/tag/profondo/" rel="tag">profondo</a>, <a href="https://lauraberardi.com/tag/respiro/" rel="tag">respiro</a>, <a href="https://lauraberardi.com/tag/sensazioni/" rel="tag">sensazioni</a>, <a href="https://lauraberardi.com/tag/sogni/" rel="tag">Sogni</a>, <a href="https://lauraberardi.com/tag/sogno/" rel="tag">sogno</a>, <a href="https://lauraberardi.com/tag/solitudine/" rel="tag">solitudine</a>, <a href="https://lauraberardi.com/tag/vita/" rel="tag">vita</a>, <a href="https://lauraberardi.com/tag/viva-2/" rel="tag">viva</a>, <a href="https://lauraberardi.com/tag/vivere/" rel="tag">vivere</a>			</span>
						
									<span class="sep"> | </span>
						<span class="comments-link"><a href="https://lauraberardi.com/2020/09/29/viva/#comments"><b>9</b> Risposte</a></span>
			
					</footer><!-- .entry-meta -->
	</article><!-- #post-686 -->

				
					
	<article id="post-679" class="post-679 post type-post status-publish format-standard hentry category-poesie tag-attimo tag-brevita tag-brillante tag-buio tag-componimenti tag-componimento tag-desiderio tag-diamante tag-dolore tag-esistenza tag-insoddisfazione tag-laura-berardi tag-lauraberardi tag-life tag-magia tag-malinconia tag-momenti tag-nulla tag-ostacoli tag-paura tag-pensieri tag-pietra tag-poesia tag-poesie tag-prezioso tag-ricerca tag-riflessioni tag-sofferenza tag-vita tag-voglia">
		<header class="entry-header">
						<h1 class="entry-title"><a href="https://lauraberardi.com/2020/09/15/diamante/" rel="bookmark">Diamante</a></h1>
			
						<div class="entry-meta">
				<span class="sep">Posted on </span><a href="https://lauraberardi.com/2020/09/15/diamante/" title="22:14" rel="bookmark"><time class="entry-date" datetime="2020-09-15T22:14:20+02:00">15 settembre 2020</time></a><span class="by-author"> <span class="sep"> by </span> <span class="author vcard"><a class="url fn n" href="https://lauraberardi.com/author/lauraberardi102/" title="Vedi tutti gli articoli di Laura Berardi" rel="author">Laura Berardi</a></span></span>			</div><!-- .entry-meta -->
			
						<div class="comments-link">
				<a href="https://lauraberardi.com/2020/09/15/diamante/#comments">3</a>			</div>
					</header><!-- .entry-header -->

				<div class="entry-content">
			
<p><em>In ogni istante,<br>in ogni momento,<br>sembriamo<br>alla ricerca<br>di qualcosa<br>di magico,<br>della pietra<br>più brillante,<br>nascosta<br>in una fitta<br>e buia<br>grotta,<br>colma di paure,<br>ma ricca di desideri<br>che scalpitano,<br>che pulsano<br>di una vita appagata.<br>Eppure<br>più la cerchiamo,<br>più non la troviamo,<br>più cresce in noi<br>un&#8217;immensa<br>insoddisfazione,<br>a volte giustificata<br>da ostacoli<br>insormontabili,<br>altre volte<br>alimentata dal nulla<br>ché non ci accorgiamo<br>che probabilmente<br>il diamante<br>più prezioso<br>è proprio<br>dentro di noi.</em></p>



<p>Laura Berardi, 15 settembre 2020</p>
<div id="jp-post-flair" class="sharedaddy sd-like-enabled sd-sharing-enabled"><div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Condividi:</h3><div class="sd-content"><ul><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-679" class="share-twitter sd-button share-icon" href="https://lauraberardi.com/2020/09/15/diamante/?share=twitter" target="_blank" title="Fai clic qui per condividere su Twitter"><span>Twitter</span></a></li><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-679" class="share-facebook sd-button share-icon" href="https://lauraberardi.com/2020/09/15/diamante/?share=facebook" target="_blank" title="Fai clic per condividere su Facebook"><span>Facebook</span></a></li><li class="share-end"></li></ul></div></div></div><div class='sharedaddy sd-block sd-like jetpack-likes-widget-wrapper jetpack-likes-widget-unloaded' id='like-post-wrapper-74941530-679-5f87438e61f7b' data-src='//widgets.wp.com/likes/index.html?ver=20200826#blog_id=74941530&amp;post_id=679&amp;origin=lauraberardi102.wordpress.com&amp;obj_id=74941530-679-5f87438e61f7b&amp;domain=lauraberardi.com' data-name='like-post-frame-74941530-679-5f87438e61f7b'><h3 class='sd-title'>Mi piace:</h3><div class='likes-widget-placeholder post-likes-widget-placeholder' style='height: 55px;'><span class='button'><span>Mi piace</span></span> <span class="loading">Caricamento...</span></div><span class='sd-text-color'></span><a class='sd-link-color'></a></div></div>					</div><!-- .entry-content -->
		
		<footer class="entry-meta">
												<span class="cat-links">
				<span class="entry-utility-prep entry-utility-prep-cat-links">Pubblicato in</span> <a href="https://lauraberardi.com/tag/poesie/" rel="category tag">Poesie</a>			</span>
															<span class="sep"> | </span>
							<span class="tag-links">
				<span class="entry-utility-prep entry-utility-prep-tag-links">Contrassegnato</span> <a href="https://lauraberardi.com/tag/attimo/" rel="tag">attimo</a>, <a href="https://lauraberardi.com/tag/brevita/" rel="tag">brevità</a>, <a href="https://lauraberardi.com/tag/brillante/" rel="tag">brillante</a>, <a href="https://lauraberardi.com/tag/buio/" rel="tag">buio</a>, <a href="https://lauraberardi.com/tag/componimenti/" rel="tag">componimenti</a>, <a href="https://lauraberardi.com/tag/componimento/" rel="tag">componimento</a>, <a href="https://lauraberardi.com/tag/desiderio/" rel="tag">desiderio</a>, <a href="https://lauraberardi.com/tag/diamante/" rel="tag">Diamante</a>, <a href="https://lauraberardi.com/tag/dolore/" rel="tag">dolore</a>, <a href="https://lauraberardi.com/tag/esistenza/" rel="tag">esistenza</a>, <a href="https://lauraberardi.com/tag/insoddisfazione/" rel="tag">insoddisfazione</a>, <a href="https://lauraberardi.com/tag/laura-berardi/" rel="tag">Laura Berardi</a>, <a href="https://lauraberardi.com/tag/lauraberardi/" rel="tag">LauraBerardi</a>, <a href="https://lauraberardi.com/tag/life/" rel="tag">life</a>, <a href="https://lauraberardi.com/tag/magia/" rel="tag">magia</a>, <a href="https://lauraberardi.com/tag/malinconia/" rel="tag">malinconia</a>, <a href="https://lauraberardi.com/tag/momenti/" rel="tag">momenti</a>, <a href="https://lauraberardi.com/tag/nulla/" rel="tag">nulla</a>, <a href="https://lauraberardi.com/tag/ostacoli/" rel="tag">ostacoli</a>, <a href="https://lauraberardi.com/tag/paura/" rel="tag">paura</a>, <a href="https://lauraberardi.com/tag/pensieri/" rel="tag">pensieri</a>, <a href="https://lauraberardi.com/tag/pietra/" rel="tag">pietra</a>, <a href="https://lauraberardi.com/tag/poesia/" rel="tag">poesia</a>, <a href="https://lauraberardi.com/tag/poesie/" rel="tag">Poesie</a>, <a href="https://lauraberardi.com/tag/prezioso/" rel="tag">prezioso</a>, <a href="https://lauraberardi.com/tag/ricerca/" rel="tag">ricerca</a>, <a href="https://lauraberardi.com/tag/riflessioni/" rel="tag">riflessioni</a>, <a href="https://lauraberardi.com/tag/sofferenza/" rel="tag">sofferenza</a>, <a href="https://lauraberardi.com/tag/vita/" rel="tag">vita</a>, <a href="https://lauraberardi.com/tag/voglia/" rel="tag">voglia</a>			</span>
						
									<span class="sep"> | </span>
						<span class="comments-link"><a href="https://lauraberardi.com/2020/09/15/diamante/#comments"><b>3</b> Risposte</a></span>
			
					</footer><!-- .entry-meta -->
	</article><!-- #post-679 -->

				
					
	<article id="post-670" class="post-670 post type-post status-publish format-standard hentry category-io-penso tag-aggressione tag-attualita tag-brutalita tag-bullismo tag-cattiveria tag-cronaca tag-discriminazione tag-dominio tag-fratellanza tag-giovani tag-gioventu tag-giustizia tag-intolleranza tag-malvagita tag-mondo tag-morte tag-odio tag-pensieri tag-razzismo tag-riflessioni tag-rispetto tag-roma tag-societa tag-tortura tag-uguaglianza tag-umanita tag-violenza tag-vita tag-willy">
		<header class="entry-header">
						<h1 class="entry-title"><a href="https://lauraberardi.com/2020/09/09/willy/" rel="bookmark">Willy</a></h1>
			
						<div class="entry-meta">
				<span class="sep">Posted on </span><a href="https://lauraberardi.com/2020/09/09/willy/" title="14:25" rel="bookmark"><time class="entry-date" datetime="2020-09-09T14:25:00+02:00">9 settembre 2020</time></a><span class="by-author"> <span class="sep"> by </span> <span class="author vcard"><a class="url fn n" href="https://lauraberardi.com/author/lauraberardi102/" title="Vedi tutti gli articoli di Laura Berardi" rel="author">Laura Berardi</a></span></span>			</div><!-- .entry-meta -->
			
						<div class="comments-link">
				<a href="https://lauraberardi.com/2020/09/09/willy/#comments">8</a>			</div>
					</header><!-- .entry-header -->

				<div class="entry-content">
			
<figure class="wp-block-image size-large is-resized"><img loading="lazy" data-attachment-id="672" data-permalink="https://lauraberardi.com/image-3/" data-orig-file="https://lauraberardi102.files.wordpress.com/2020/09/image.png" data-orig-size="950,684" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="image" data-image-description="" data-medium-file="https://lauraberardi102.files.wordpress.com/2020/09/image.png?w=300" data-large-file="https://lauraberardi102.files.wordpress.com/2020/09/image.png?w=584" src="https://lauraberardi102.files.wordpress.com/2020/09/image.png?w=950" alt="" class="wp-image-672" width="614" height="442" srcset="https://lauraberardi102.files.wordpress.com/2020/09/image.png?w=614 614w, https://lauraberardi102.files.wordpress.com/2020/09/image.png?w=150 150w, https://lauraberardi102.files.wordpress.com/2020/09/image.png?w=300 300w, https://lauraberardi102.files.wordpress.com/2020/09/image.png?w=768 768w, https://lauraberardi102.files.wordpress.com/2020/09/image.png 950w" sizes="(max-width: 614px) 100vw, 614px" /></figure>



<p>Venti minuti. Questo è il tempo dell&#8217;interminabile agonia che ha dovuto patire Willy Monteiro Duarte, un ragazzo di soli 21 anni, per aver cercato di sedare una rissa e di difendere il suo amico da coloro che lo stavano picchiando. Nella notte tra il 5 e il 6 settembre, a Colleferro, Willy è stato circondato da quattro o cinque persone e pestato con una violenza brutale che non conosce limiti, che va oltre l’inimmaginabile, fino all’ultimo colpo che gli è stato fatale.<br>Non c’è stato nulla da fare per Willy, un giovane che voleva fare il cuoco e che sognava di giocare nella Roma, di cui era un grandissimo tifoso. Un ragazzo che voleva semplicemente vivere la sua vita. Un ragazzo che ha avuto la sfortuna di imbattersi in esseri che fanno della violenza una ragione di vivere.<br>Ed è proprio questo che ha ucciso Willy. L’intolleranza verso l&#8217;altro, la macabra voglia di supremazia e di dominio, il desiderio di essere a capo di un mondo senza scrupoli, utilizzando ogni strumento, anche i social network. L’odio verso chi, secondo la loro orrida visione, è più ”debole”.<br>Qui la politica non c&#8217;entra nulla. Si tratta soltanto di umanità. Ed è enormemente disumano dividere la società in mere e squallide categorie. Non esistono esseri umani deboli o forti. Esistono unicamente le persone. Siamo tutti delle persone che cercano di vivere la loro vita come meglio possono, sempre nel rispetto degli altri. Sì, perché è proprio il rispetto la base su cui poggia il mondo. Se viene a mancare, ogni equilibrio si spezza e tutto si stravolge. Nel peggiore dei modi, in questo caso.<br>Chiunque sia stato l’autore di questo abominevole orrore, deve pagare. Perché questi deplorevoli casi non si ripetano più. Perché non si può vivere in un mondo popolato da individui che creano distruzione e odio intorno a loro. Perché la vita di Willy è stata spezzata da un&#8217;infinita mole di cattiveria e malvagità. Nulla lo riporterà indietro, ma lui e la sua famiglia meritano giustizia. Ora più che mai.</p>
<div id="jp-post-flair" class="sharedaddy sd-like-enabled sd-sharing-enabled"><div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Condividi:</h3><div class="sd-content"><ul><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-670" class="share-twitter sd-button share-icon" href="https://lauraberardi.com/2020/09/09/willy/?share=twitter" target="_blank" title="Fai clic qui per condividere su Twitter"><span>Twitter</span></a></li><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-670" class="share-facebook sd-button share-icon" href="https://lauraberardi.com/2020/09/09/willy/?share=facebook" target="_blank" title="Fai clic per condividere su Facebook"><span>Facebook</span></a></li><li class="share-end"></li></ul></div></div></div><div class='sharedaddy sd-block sd-like jetpack-likes-widget-wrapper jetpack-likes-widget-unloaded' id='like-post-wrapper-74941530-670-5f87438e64a1a' data-src='//widgets.wp.com/likes/index.html?ver=20200826#blog_id=74941530&amp;post_id=670&amp;origin=lauraberardi102.wordpress.com&amp;obj_id=74941530-670-5f87438e64a1a&amp;domain=lauraberardi.com' data-name='like-post-frame-74941530-670-5f87438e64a1a'><h3 class='sd-title'>Mi piace:</h3><div class='likes-widget-placeholder post-likes-widget-placeholder' style='height: 55px;'><span class='button'><span>Mi piace</span></span> <span class="loading">Caricamento...</span></div><span class='sd-text-color'></span><a class='sd-link-color'></a></div></div>					</div><!-- .entry-content -->
		
		<footer class="entry-meta">
												<span class="cat-links">
				<span class="entry-utility-prep entry-utility-prep-cat-links">Pubblicato in</span> <a href="https://lauraberardi.com/category/io-penso/" rel="category tag">Io penso...</a>			</span>
															<span class="sep"> | </span>
							<span class="tag-links">
				<span class="entry-utility-prep entry-utility-prep-tag-links">Contrassegnato</span> <a href="https://lauraberardi.com/tag/aggressione/" rel="tag">aggressione</a>, <a href="https://lauraberardi.com/tag/attualita/" rel="tag">attualità</a>, <a href="https://lauraberardi.com/tag/brutalita/" rel="tag">brutalità</a>, <a href="https://lauraberardi.com/tag/bullismo/" rel="tag">bullismo</a>, <a href="https://lauraberardi.com/tag/cattiveria/" rel="tag">cattiveria</a>, <a href="https://lauraberardi.com/tag/cronaca/" rel="tag">cronaca</a>, <a href="https://lauraberardi.com/tag/discriminazione/" rel="tag">discriminazione</a>, <a href="https://lauraberardi.com/tag/dominio/" rel="tag">dominio</a>, <a href="https://lauraberardi.com/tag/fratellanza/" rel="tag">fratellanza</a>, <a href="https://lauraberardi.com/tag/giovani/" rel="tag">giovani</a>, <a href="https://lauraberardi.com/tag/gioventu/" rel="tag">gioventù</a>, <a href="https://lauraberardi.com/tag/giustizia/" rel="tag">giustizia</a>, <a href="https://lauraberardi.com/tag/intolleranza/" rel="tag">intolleranza</a>, <a href="https://lauraberardi.com/tag/malvagita/" rel="tag">malvagità</a>, <a href="https://lauraberardi.com/tag/mondo/" rel="tag">mondo</a>, <a href="https://lauraberardi.com/tag/morte/" rel="tag">morte</a>, <a href="https://lauraberardi.com/tag/odio/" rel="tag">odio</a>, <a href="https://lauraberardi.com/tag/pensieri/" rel="tag">pensieri</a>, <a href="https://lauraberardi.com/tag/razzismo/" rel="tag">razzismo</a>, <a href="https://lauraberardi.com/tag/riflessioni/" rel="tag">riflessioni</a>, <a href="https://lauraberardi.com/tag/rispetto/" rel="tag">rispetto</a>, <a href="https://lauraberardi.com/tag/roma/" rel="tag">Roma</a>, <a href="https://lauraberardi.com/tag/societa/" rel="tag">società</a>, <a href="https://lauraberardi.com/tag/tortura/" rel="tag">tortura</a>, <a href="https://lauraberardi.com/tag/uguaglianza/" rel="tag">uguaglianza</a>, <a href="https://lauraberardi.com/tag/umanita/" rel="tag">umanità</a>, <a href="https://lauraberardi.com/tag/violenza/" rel="tag">violenza</a>, <a href="https://lauraberardi.com/tag/vita/" rel="tag">vita</a>, <a href="https://lauraberardi.com/tag/willy/" rel="tag">willy</a>			</span>
						
									<span class="sep"> | </span>
						<span class="comments-link"><a href="https://lauraberardi.com/2020/09/09/willy/#comments"><b>8</b> Risposte</a></span>
			
					</footer><!-- .entry-meta -->
	</article><!-- #post-670 -->

				
					
	<article id="post-666" class="post-666 post type-post status-publish format-standard hentry category-io-penso tag-adolescenza tag-attualita tag-consapevolezza tag-contagi tag-coronavirus tag-cronaca tag-egoismo tag-esistenza tag-giovani tag-gioventu tag-governo tag-ignoranza tag-inadeguatezza tag-liberta tag-menefreghismo tag-morte tag-movida tag-natura tag-normalita tag-pandemia tag-pensieri tag-periodo tag-previdenza tag-responsabilita tag-riflessioni tag-rispetto tag-superficialita tag-umanita tag-virus tag-vita">
		<header class="entry-header">
						<h1 class="entry-title"><a href="https://lauraberardi.com/2020/09/05/menefreghismo-o-ignoranza/" rel="bookmark">Menefreghismo o ignoranza?</a></h1>
			
						<div class="entry-meta">
				<span class="sep">Posted on </span><a href="https://lauraberardi.com/2020/09/05/menefreghismo-o-ignoranza/" title="10:30" rel="bookmark"><time class="entry-date" datetime="2020-09-05T10:30:40+02:00">5 settembre 2020</time></a><span class="by-author"> <span class="sep"> by </span> <span class="author vcard"><a class="url fn n" href="https://lauraberardi.com/author/lauraberardi102/" title="Vedi tutti gli articoli di Laura Berardi" rel="author">Laura Berardi</a></span></span>			</div><!-- .entry-meta -->
			
						<div class="comments-link">
				<a href="https://lauraberardi.com/2020/09/05/menefreghismo-o-ignoranza/#comments">10</a>			</div>
					</header><!-- .entry-header -->

				<div class="entry-content">
			
<p>Mai come quest’anno ho visto emergere la vera natura dell&#8217;essere umano. Egoista, superficiale, ma soprattutto incurante degli altri. Per carità, fortunatamente esistono le eccezioni e non sono tutti così, altrimenti il mondo sarebbe un agglomerato di gente dedita soltanto a seguire le mode del momento e a tuffarsi nel consumismo più sfrenato. Ognuno è libero di fare quello che vuole, questo è sacrosanto, ma pensavo che la pandemia avesse fatto riflettere su molti aspetti dell’esistenza e avesse fatto capire quali sono i veri valori di una vita “normale”, invece ho visto la maggior parte delle persone lamentarsi per qualsiasi decisione prendesse il governo e trovare sempre un pretesto per criticare tutto e tutti. È vero, c’è sempre da migliorare. Ma quest’estate si sono raggiunti livelli estremi. Molti si lamentano, pochissimi fanno qualcosa. Qualche settimana fa c’è stata la chiusura delle discoteche e ho potuto costatare che per alcuni è una questione di vita e di morte, come se la loro esistenza dipendesse da un semplice locale, senza considerare che molte persone non hanno mai avuto la libertà di andarci nemmeno da giovanissimi.<br>Economia a parte, penso che i contagi non sarebbero affatto risaliti se ci fosse stata più oculatezza e prevenzione. Non è molto, se ci pensiamo bene. Basterebbe un po’ di buon senso e attenzione. E meno menefreghismo, perché in una società il rispetto dell’altro è fondamentale.<br>Eppure, di fronte a quest’estate in cui quasi tutti si sono comportati come se il Coronavirus fosse una pura fantasia dei medici, non posso fare a meno di chiedermi se quest’atteggiamento sia dettato non solo dallo stesso menefreghismo, ma anche da una profonda ignoranza. Non culturale, ma nel vero senso del termine, ossia la non considerazione di tutto ciò che si svolge intorno a sé. Quando si è adolescenti difficilmente si pensa alle conseguenze delle azioni che si compiono. È tutto nuovo e si ha soltanto voglia di scoprire il mondo in ogni sua sfumatura. E più si hanno regole, più si ha il desiderio di trasgredirle. Ma in questo caso non si tratta di regole. Si tratta di semplice prevenzione, che anche un bambino piccolo capirebbe, eppure si preferisce quasi sempre dare la colpa agli altri del proprio comportamento irrispettoso, spogliandosi totalmente di ogni responsabilità.<br>Insomma, un misto di superficialità, menefreghismo e ignoranza. Un mix che può essere letale per il mondo. Ma in pochi lo capiscono, purtroppo.</p>
<div id="jp-post-flair" class="sharedaddy sd-like-enabled sd-sharing-enabled"><div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Condividi:</h3><div class="sd-content"><ul><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-666" class="share-twitter sd-button share-icon" href="https://lauraberardi.com/2020/09/05/menefreghismo-o-ignoranza/?share=twitter" target="_blank" title="Fai clic qui per condividere su Twitter"><span>Twitter</span></a></li><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-666" class="share-facebook sd-button share-icon" href="https://lauraberardi.com/2020/09/05/menefreghismo-o-ignoranza/?share=facebook" target="_blank" title="Fai clic per condividere su Facebook"><span>Facebook</span></a></li><li class="share-end"></li></ul></div></div></div><div class='sharedaddy sd-block sd-like jetpack-likes-widget-wrapper jetpack-likes-widget-unloaded' id='like-post-wrapper-74941530-666-5f87438e662db' data-src='//widgets.wp.com/likes/index.html?ver=20200826#blog_id=74941530&amp;post_id=666&amp;origin=lauraberardi102.wordpress.com&amp;obj_id=74941530-666-5f87438e662db&amp;domain=lauraberardi.com' data-name='like-post-frame-74941530-666-5f87438e662db'><h3 class='sd-title'>Mi piace:</h3><div class='likes-widget-placeholder post-likes-widget-placeholder' style='height: 55px;'><span class='button'><span>Mi piace</span></span> <span class="loading">Caricamento...</span></div><span class='sd-text-color'></span><a class='sd-link-color'></a></div></div>					</div><!-- .entry-content -->
		
		<footer class="entry-meta">
												<span class="cat-links">
				<span class="entry-utility-prep entry-utility-prep-cat-links">Pubblicato in</span> <a href="https://lauraberardi.com/category/io-penso/" rel="category tag">Io penso...</a>			</span>
															<span class="sep"> | </span>
							<span class="tag-links">
				<span class="entry-utility-prep entry-utility-prep-tag-links">Contrassegnato</span> <a href="https://lauraberardi.com/tag/adolescenza/" rel="tag">adolescenza</a>, <a href="https://lauraberardi.com/tag/attualita/" rel="tag">attualità</a>, <a href="https://lauraberardi.com/tag/consapevolezza/" rel="tag">consapevolezza</a>, <a href="https://lauraberardi.com/tag/contagi/" rel="tag">contagi</a>, <a href="https://lauraberardi.com/tag/coronavirus/" rel="tag">Coronavirus</a>, <a href="https://lauraberardi.com/tag/cronaca/" rel="tag">cronaca</a>, <a href="https://lauraberardi.com/tag/egoismo/" rel="tag">egoismo</a>, <a href="https://lauraberardi.com/tag/esistenza/" rel="tag">esistenza</a>, <a href="https://lauraberardi.com/tag/giovani/" rel="tag">giovani</a>, <a href="https://lauraberardi.com/tag/gioventu/" rel="tag">gioventù</a>, <a href="https://lauraberardi.com/tag/governo/" rel="tag">governo</a>, <a href="https://lauraberardi.com/tag/ignoranza/" rel="tag">ignoranza</a>, <a href="https://lauraberardi.com/tag/inadeguatezza/" rel="tag">inadeguatezza</a>, <a href="https://lauraberardi.com/tag/liberta/" rel="tag">libertà</a>, <a href="https://lauraberardi.com/tag/menefreghismo/" rel="tag">menefreghismo</a>, <a href="https://lauraberardi.com/tag/morte/" rel="tag">morte</a>, <a href="https://lauraberardi.com/tag/movida/" rel="tag">movida</a>, <a href="https://lauraberardi.com/tag/natura/" rel="tag">natura</a>, <a href="https://lauraberardi.com/tag/normalita/" rel="tag">normalità</a>, <a href="https://lauraberardi.com/tag/pandemia/" rel="tag">pandemia</a>, <a href="https://lauraberardi.com/tag/pensieri/" rel="tag">pensieri</a>, <a href="https://lauraberardi.com/tag/periodo/" rel="tag">periodo</a>, <a href="https://lauraberardi.com/tag/previdenza/" rel="tag">previdenza</a>, <a href="https://lauraberardi.com/tag/responsabilita/" rel="tag">responsabilità</a>, <a href="https://lauraberardi.com/tag/riflessioni/" rel="tag">riflessioni</a>, <a href="https://lauraberardi.com/tag/rispetto/" rel="tag">rispetto</a>, <a href="https://lauraberardi.com/tag/superficialita/" rel="tag">superficialità</a>, <a href="https://lauraberardi.com/tag/umanita/" rel="tag">umanità</a>, <a href="https://lauraberardi.com/tag/virus/" rel="tag">virus</a>, <a href="https://lauraberardi.com/tag/vita/" rel="tag">vita</a>			</span>
						
									<span class="sep"> | </span>
						<span class="comments-link"><a href="https://lauraberardi.com/2020/09/05/menefreghismo-o-ignoranza/#comments"><b>10</b> Risposte</a></span>
			
					</footer><!-- .entry-meta -->
	</article><!-- #post-666 -->

				
					
	<article id="post-656" class="post-656 post type-post status-publish format-standard hentry category-poesie tag-acqua tag-attimi tag-attimo tag-brutalita tag-buio tag-cattiveria tag-cielo tag-componimenti tag-componimento tag-egoismo tag-esistenza tag-fiore tag-fugacita tag-futilita tag-istante tag-istanti tag-laura-berardi tag-lauraberardi tag-lentamente tag-luce tag-malvagita tag-menefreghismo tag-mondo tag-morte tag-nero tag-pensieri tag-poesie tag-preziosita tag-raggio tag-riflessioni tag-societa tag-sole tag-speranza tag-tempo tag-tenebre tag-umanita tag-vita">
		<header class="entry-header">
						<h1 class="entry-title"><a href="https://lauraberardi.com/2020/08/20/lentamente/" rel="bookmark">Lentamente</a></h1>
			
						<div class="entry-meta">
				<span class="sep">Posted on </span><a href="https://lauraberardi.com/2020/08/20/lentamente/" title="19:26" rel="bookmark"><time class="entry-date" datetime="2020-08-20T19:26:47+02:00">20 agosto 2020</time></a><span class="by-author"> <span class="sep"> by </span> <span class="author vcard"><a class="url fn n" href="https://lauraberardi.com/author/lauraberardi102/" title="Vedi tutti gli articoli di Laura Berardi" rel="author">Laura Berardi</a></span></span>			</div><!-- .entry-meta -->
			
						<div class="comments-link">
				<a href="https://lauraberardi.com/2020/08/20/lentamente/#comments">4</a>			</div>
					</header><!-- .entry-header -->

				<div class="entry-content">
			
<p><em>Lentamente<br>la speranza<br>muore<br>disidratata<br>e annientata<br>dalle atroci malvagità<br>e dall&#8217;immenso<br>menefreghismo<br>che sovrasta<br>questo mondo,<br>come un velo<br>di puro egoismo<br>che devasta<br>e colora il cielo<br>di nero,<br>rendendo buio<br>ogni elemento,<br>anche il più luminoso.<br>Quel velo che<br>diventa sempre più<br>ingombrante,<br>fino a coprire<br>l’ultimo raggio<br>di sole.<br>E soltanto guardando<br>quello spicchio<br>splendente rimpicciolirsi<br>e scomparire nel nulla,<br>molti umani,<br>ormai avvolti<br>nelle tenebre,<br>si accorgeranno<br>di quanto<br>quella luce<br>fosse essenziale,<br>come acqua<br>per un fiore appassito,<br>e di quanto tempo<br>hanno sprecato<br>lamentandosi<br>di banali futilità,<br>e forse<br>saranno consapevoli<br>della preziosità<br>di ogni attimo,<br>di ogni istante,<br>di una vita intera.</em></p>



<p>Laura Berardi, 20 agosto 2020</p>
<div id="jp-post-flair" class="sharedaddy sd-like-enabled sd-sharing-enabled"><div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Condividi:</h3><div class="sd-content"><ul><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-656" class="share-twitter sd-button share-icon" href="https://lauraberardi.com/2020/08/20/lentamente/?share=twitter" target="_blank" title="Fai clic qui per condividere su Twitter"><span>Twitter</span></a></li><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-656" class="share-facebook sd-button share-icon" href="https://lauraberardi.com/2020/08/20/lentamente/?share=facebook" target="_blank" title="Fai clic per condividere su Facebook"><span>Facebook</span></a></li><li class="share-end"></li></ul></div></div></div><div class='sharedaddy sd-block sd-like jetpack-likes-widget-wrapper jetpack-likes-widget-unloaded' id='like-post-wrapper-74941530-656-5f87438e67e22' data-src='//widgets.wp.com/likes/index.html?ver=20200826#blog_id=74941530&amp;post_id=656&amp;origin=lauraberardi102.wordpress.com&amp;obj_id=74941530-656-5f87438e67e22&amp;domain=lauraberardi.com' data-name='like-post-frame-74941530-656-5f87438e67e22'><h3 class='sd-title'>Mi piace:</h3><div class='likes-widget-placeholder post-likes-widget-placeholder' style='height: 55px;'><span class='button'><span>Mi piace</span></span> <span class="loading">Caricamento...</span></div><span class='sd-text-color'></span><a class='sd-link-color'></a></div></div>					</div><!-- .entry-content -->
		
		<footer class="entry-meta">
												<span class="cat-links">
				<span class="entry-utility-prep entry-utility-prep-cat-links">Pubblicato in</span> <a href="https://lauraberardi.com/tag/poesie/" rel="category tag">Poesie</a>			</span>
															<span class="sep"> | </span>
							<span class="tag-links">
				<span class="entry-utility-prep entry-utility-prep-tag-links">Contrassegnato</span> <a href="https://lauraberardi.com/tag/acqua/" rel="tag">acqua</a>, <a href="https://lauraberardi.com/tag/attimi/" rel="tag">attimi</a>, <a href="https://lauraberardi.com/tag/attimo/" rel="tag">attimo</a>, <a href="https://lauraberardi.com/tag/brutalita/" rel="tag">brutalità</a>, <a href="https://lauraberardi.com/tag/buio/" rel="tag">buio</a>, <a href="https://lauraberardi.com/tag/cattiveria/" rel="tag">cattiveria</a>, <a href="https://lauraberardi.com/tag/cielo/" rel="tag">cielo</a>, <a href="https://lauraberardi.com/tag/componimenti/" rel="tag">componimenti</a>, <a href="https://lauraberardi.com/tag/componimento/" rel="tag">componimento</a>, <a href="https://lauraberardi.com/tag/egoismo/" rel="tag">egoismo</a>, <a href="https://lauraberardi.com/tag/esistenza/" rel="tag">esistenza</a>, <a href="https://lauraberardi.com/tag/fiore/" rel="tag">fiore</a>, <a href="https://lauraberardi.com/tag/fugacita/" rel="tag">fugacità</a>, <a href="https://lauraberardi.com/tag/futilita/" rel="tag">futilità</a>, <a href="https://lauraberardi.com/tag/istante/" rel="tag">istante</a>, <a href="https://lauraberardi.com/tag/istanti/" rel="tag">istanti</a>, <a href="https://lauraberardi.com/tag/laura-berardi/" rel="tag">Laura Berardi</a>, <a href="https://lauraberardi.com/tag/lauraberardi/" rel="tag">LauraBerardi</a>, <a href="https://lauraberardi.com/tag/lentamente/" rel="tag">Lentamente</a>, <a href="https://lauraberardi.com/tag/luce/" rel="tag">luce</a>, <a href="https://lauraberardi.com/tag/malvagita/" rel="tag">malvagità</a>, <a href="https://lauraberardi.com/tag/menefreghismo/" rel="tag">menefreghismo</a>, <a href="https://lauraberardi.com/tag/mondo/" rel="tag">mondo</a>, <a href="https://lauraberardi.com/tag/morte/" rel="tag">morte</a>, <a href="https://lauraberardi.com/tag/nero/" rel="tag">nero</a>, <a href="https://lauraberardi.com/tag/pensieri/" rel="tag">pensieri</a>, <a href="https://lauraberardi.com/tag/poesie/" rel="tag">Poesie</a>, <a href="https://lauraberardi.com/tag/preziosita/" rel="tag">preziosità</a>, <a href="https://lauraberardi.com/tag/raggio/" rel="tag">raggio</a>, <a href="https://lauraberardi.com/tag/riflessioni/" rel="tag">riflessioni</a>, <a href="https://lauraberardi.com/tag/societa/" rel="tag">società</a>, <a href="https://lauraberardi.com/tag/sole/" rel="tag">sole</a>, <a href="https://lauraberardi.com/tag/speranza/" rel="tag">speranza</a>, <a href="https://lauraberardi.com/tag/tempo/" rel="tag">tempo</a>, <a href="https://lauraberardi.com/tag/tenebre/" rel="tag">tenebre</a>, <a href="https://lauraberardi.com/tag/umanita/" rel="tag">umanità</a>, <a href="https://lauraberardi.com/tag/vita/" rel="tag">vita</a>			</span>
						
									<span class="sep"> | </span>
						<span class="comments-link"><a href="https://lauraberardi.com/2020/08/20/lentamente/#comments"><b>4</b> Risposte</a></span>
			
					</footer><!-- .entry-meta -->
	</article><!-- #post-656 -->

				
					
	<article id="post-643" class="post-643 post type-post status-publish format-standard hentry category-io-penso tag-angoscia tag-cattiveria tag-circostanze tag-coraggio tag-desiderio tag-disuguaglianza tag-dolore tag-equilibrio tag-esistenza tag-esperienza tag-eventi tag-forza tag-inadeguatezza tag-ingiustizia tag-liberta tag-malinconia tag-mistero tag-mondo tag-pensieri tag-possibilita tag-riflessioni tag-scelta tag-situazione tag-societa tag-sofferenza tag-sogni tag-spietato tag-squilibrio tag-verita tag-vita">
		<header class="entry-header">
						<h1 class="entry-title"><a href="https://lauraberardi.com/2020/08/13/squilibrio/" rel="bookmark">Squilibrio</a></h1>
			
						<div class="entry-meta">
				<span class="sep">Posted on </span><a href="https://lauraberardi.com/2020/08/13/squilibrio/" title="11:55" rel="bookmark"><time class="entry-date" datetime="2020-08-13T11:55:34+02:00">13 agosto 2020</time></a><span class="by-author"> <span class="sep"> by </span> <span class="author vcard"><a class="url fn n" href="https://lauraberardi.com/author/lauraberardi102/" title="Vedi tutti gli articoli di Laura Berardi" rel="author">Laura Berardi</a></span></span>			</div><!-- .entry-meta -->
			
						<div class="comments-link">
				<a href="https://lauraberardi.com/2020/08/13/squilibrio/#comments">15</a>			</div>
					</header><!-- .entry-header -->

				<div class="entry-content">
			
<p>Spesso mi domando perché la vita sia così buona con alcuni e spietata con altri. È un quesito che mi perseguita da sempre, forse per le circostanze in cui sono costretta a vivere, per tutti i frammenti di puzzle che mi mancheranno sempre. Forse più per semplice constatazione.<br>A volte mi ci incaponisco, fino a non trovare alcuna risposta soddisfacente. Perché la verità è che non c’è nulla che possa spiegare alcuni eventi della vita. Accadono e basta. E questo vale sia per le cose belle sia per quelle meno belle, soltanto che quasi sempre ci si sofferma sulle brutte esperienze, per il semplice motivo che lasciano una scia di dolore che non se ne va facilmente. Ed è così per tutti. Alcuni di più, altri di meno. Penso che la vita metta a dura prova proprio per imparare. Se non ci fossero gli eventi negativi, si avrebbero meno occasioni per imparare dagli errori o da esperienze traumatiche.<br>Il problema nasce quando non c’è equilibrio tra eventi positivi e negativi. Quando si vivono situazioni senza via d’uscita, senza alcuna possibilità di fuggire. Quando capita di imbattersi in una circostanza troppo ingombrante e troppo forte da tollerare. C’è chi ci riesce benissimo, chi no. Ma non perché non sia forte o si lasci sopraffare dalla vigliaccheria. Semplicemente non ce la fa. Per quanto si sforzi, non è in grado di superare con leggerezza certe cose. Non è capace di vivere in una società che quasi sempre impone di seguire le mode e in cui la ricerca della perfezione costituisce l’obiettivo principale. Si sente inadeguato pensando alle immense disuguaglianze economiche e sociali che ci sono. Ma soprattutto non riesce a capire come mai certi eventi stravolgono la vita di alcuni, mentre ignora totalmente quella di altri. È e resterà sempre il mistero occulto dell’esistenza, che nessun filosofo potrà mai risolvere.<br>Tutti sostengono che dovremmo prenderci la vita così come viene, senza guardare gli altri. È assolutamente vero e insindacabile. Ma è altrettanto vero che a volte la vita può essere così spietata da non avere nemmeno la possibilità di reagire e di esprimersi al meglio, di fare ciò che si desidera, anche la cosa più semplice. Ed è questa la cattiveria più grande che una vita possa compiere: annientare la libertà di scelta e chiudere in una gabbia i desideri e i sogni di qualcuno, senza che questi possa avere il diritto di replicare o di fare qualcosa che lo renda felice, perché impossibilitato dalle circostanze avverse che la vita gli ha riservato.</p>
<div id="jp-post-flair" class="sharedaddy sd-like-enabled sd-sharing-enabled"><div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Condividi:</h3><div class="sd-content"><ul><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-643" class="share-twitter sd-button share-icon" href="https://lauraberardi.com/2020/08/13/squilibrio/?share=twitter" target="_blank" title="Fai clic qui per condividere su Twitter"><span>Twitter</span></a></li><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-643" class="share-facebook sd-button share-icon" href="https://lauraberardi.com/2020/08/13/squilibrio/?share=facebook" target="_blank" title="Fai clic per condividere su Facebook"><span>Facebook</span></a></li><li class="share-end"></li></ul></div></div></div><div class='sharedaddy sd-block sd-like jetpack-likes-widget-wrapper jetpack-likes-widget-unloaded' id='like-post-wrapper-74941530-643-5f87438e697a0' data-src='//widgets.wp.com/likes/index.html?ver=20200826#blog_id=74941530&amp;post_id=643&amp;origin=lauraberardi102.wordpress.com&amp;obj_id=74941530-643-5f87438e697a0&amp;domain=lauraberardi.com' data-name='like-post-frame-74941530-643-5f87438e697a0'><h3 class='sd-title'>Mi piace:</h3><div class='likes-widget-placeholder post-likes-widget-placeholder' style='height: 55px;'><span class='button'><span>Mi piace</span></span> <span class="loading">Caricamento...</span></div><span class='sd-text-color'></span><a class='sd-link-color'></a></div></div>					</div><!-- .entry-content -->
		
		<footer class="entry-meta">
												<span class="cat-links">
				<span class="entry-utility-prep entry-utility-prep-cat-links">Pubblicato in</span> <a href="https://lauraberardi.com/category/io-penso/" rel="category tag">Io penso...</a>			</span>
															<span class="sep"> | </span>
							<span class="tag-links">
				<span class="entry-utility-prep entry-utility-prep-tag-links">Contrassegnato</span> <a href="https://lauraberardi.com/tag/angoscia/" rel="tag">angoscia</a>, <a href="https://lauraberardi.com/tag/cattiveria/" rel="tag">cattiveria</a>, <a href="https://lauraberardi.com/tag/circostanze/" rel="tag">circostanze</a>, <a href="https://lauraberardi.com/tag/coraggio/" rel="tag">coraggio</a>, <a href="https://lauraberardi.com/tag/desiderio/" rel="tag">desiderio</a>, <a href="https://lauraberardi.com/tag/disuguaglianza/" rel="tag">disuguaglianza</a>, <a href="https://lauraberardi.com/tag/dolore/" rel="tag">dolore</a>, <a href="https://lauraberardi.com/tag/equilibrio/" rel="tag">equilibrio</a>, <a href="https://lauraberardi.com/tag/esistenza/" rel="tag">esistenza</a>, <a href="https://lauraberardi.com/tag/esperienza/" rel="tag">esperienza</a>, <a href="https://lauraberardi.com/tag/eventi/" rel="tag">eventi</a>, <a href="https://lauraberardi.com/tag/forza/" rel="tag">forza</a>, <a href="https://lauraberardi.com/tag/inadeguatezza/" rel="tag">inadeguatezza</a>, <a href="https://lauraberardi.com/tag/ingiustizia/" rel="tag">ingiustizia</a>, <a href="https://lauraberardi.com/tag/liberta/" rel="tag">libertà</a>, <a href="https://lauraberardi.com/tag/malinconia/" rel="tag">malinconia</a>, <a href="https://lauraberardi.com/tag/mistero/" rel="tag">mistero</a>, <a href="https://lauraberardi.com/tag/mondo/" rel="tag">mondo</a>, <a href="https://lauraberardi.com/tag/pensieri/" rel="tag">pensieri</a>, <a href="https://lauraberardi.com/tag/possibilita/" rel="tag">possibilità</a>, <a href="https://lauraberardi.com/tag/riflessioni/" rel="tag">riflessioni</a>, <a href="https://lauraberardi.com/tag/scelta/" rel="tag">scelta</a>, <a href="https://lauraberardi.com/tag/situazione/" rel="tag">situazione</a>, <a href="https://lauraberardi.com/tag/societa/" rel="tag">società</a>, <a href="https://lauraberardi.com/tag/sofferenza/" rel="tag">sofferenza</a>, <a href="https://lauraberardi.com/tag/sogni/" rel="tag">Sogni</a>, <a href="https://lauraberardi.com/tag/spietato/" rel="tag">spietato</a>, <a href="https://lauraberardi.com/tag/squilibrio/" rel="tag">squilibrio</a>, <a href="https://lauraberardi.com/tag/verita/" rel="tag">verità</a>, <a href="https://lauraberardi.com/tag/vita/" rel="tag">vita</a>			</span>
						
									<span class="sep"> | </span>
						<span class="comments-link"><a href="https://lauraberardi.com/2020/08/13/squilibrio/#comments"><b>15</b> Risposte</a></span>
			
					</footer><!-- .entry-meta -->
	</article><!-- #post-643 -->

				
					
	<article id="post-633" class="post-633 post type-post status-publish format-standard hentry category-poesie tag-amore tag-animo tag-bimbo tag-brutalita tag-componimenti tag-componimento tag-cuore tag-curiosita tag-dolore tag-emozioni tag-esistenza tag-fanciullezza tag-felicita tag-gioia tag-giorno tag-infanzia tag-laura-berardi tag-lauraberardi tag-meraviglia tag-meraviglie tag-mondo tag-natura tag-occhi tag-pensieri tag-poesia tag-poesie tag-purezza tag-raggio tag-ricordi tag-riflessioni tag-societa tag-sofferenza tag-speranza tag-spietato tag-universo tag-uomo tag-vita">
		<header class="entry-header">
						<h1 class="entry-title"><a href="https://lauraberardi.com/2020/07/27/curiosita/" rel="bookmark">Curiosità</a></h1>
			
						<div class="entry-meta">
				<span class="sep">Posted on </span><a href="https://lauraberardi.com/2020/07/27/curiosita/" title="18:17" rel="bookmark"><time class="entry-date" datetime="2020-07-27T18:17:46+02:00">27 luglio 2020</time></a><span class="by-author"> <span class="sep"> by </span> <span class="author vcard"><a class="url fn n" href="https://lauraberardi.com/author/lauraberardi102/" title="Vedi tutti gli articoli di Laura Berardi" rel="author">Laura Berardi</a></span></span>			</div><!-- .entry-meta -->
			
						<div class="comments-link">
				<a href="https://lauraberardi.com/2020/07/27/curiosita/#comments">5</a>			</div>
					</header><!-- .entry-header -->

				<div class="entry-content">
			
<p><em>‪Se tutto‬<br>‪si osservasse‬<br>‪con gli occhi‬<br>‪di un fanciullo curioso,<br>‪il mondo sarebbe‬<br>‪un raggio di felicità‬<br>‪in un universo‬<br>‪d’amore‬<br>‪e dolce speranza‬<br>‪capace<br>di alimentare‬<br>‪anche un’esistenza‬<br>‪povera<br>di emozioni‬,<br>trafitta<br>dal dolore‬<br>‪più spietato<br>e dalla più brutale<br>sofferenza.<br>Eppure<br>la natura umana<br>preferisce cresce‬re<br>‪lasciandosi alle spalle‬<br>‪i ricordi‬<br>‪di quell&#8217;infinita<br>curiosità,‬<br>‪invece di nutrirla‬<br>‪giorno‬<br>‪dopo giorno,‬<br>‪conservando‬<br>‪la purezza‬<br>‪dell&#8217;animo ‬<br>‪di un bimbo‬<br>‪alla scoperta‬<br>‪di semplici‬<br>‪meraviglie‬<br>‪che riempiono‬<br>‪il suo cuore‬<br>‪di autentica gioia.‬</em></p>



<p>Laura Berardi, 27 luglio 2020</p>
<div id="jp-post-flair" class="sharedaddy sd-like-enabled sd-sharing-enabled"><div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Condividi:</h3><div class="sd-content"><ul><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-633" class="share-twitter sd-button share-icon" href="https://lauraberardi.com/2020/07/27/curiosita/?share=twitter" target="_blank" title="Fai clic qui per condividere su Twitter"><span>Twitter</span></a></li><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-633" class="share-facebook sd-button share-icon" href="https://lauraberardi.com/2020/07/27/curiosita/?share=facebook" target="_blank" title="Fai clic per condividere su Facebook"><span>Facebook</span></a></li><li class="share-end"></li></ul></div></div></div><div class='sharedaddy sd-block sd-like jetpack-likes-widget-wrapper jetpack-likes-widget-unloaded' id='like-post-wrapper-74941530-633-5f87438e6b6f7' data-src='//widgets.wp.com/likes/index.html?ver=20200826#blog_id=74941530&amp;post_id=633&amp;origin=lauraberardi102.wordpress.com&amp;obj_id=74941530-633-5f87438e6b6f7&amp;domain=lauraberardi.com' data-name='like-post-frame-74941530-633-5f87438e6b6f7'><h3 class='sd-title'>Mi piace:</h3><div class='likes-widget-placeholder post-likes-widget-placeholder' style='height: 55px;'><span class='button'><span>Mi piace</span></span> <span class="loading">Caricamento...</span></div><span class='sd-text-color'></span><a class='sd-link-color'></a></div></div>					</div><!-- .entry-content -->
		
		<footer class="entry-meta">
												<span class="cat-links">
				<span class="entry-utility-prep entry-utility-prep-cat-links">Pubblicato in</span> <a href="https://lauraberardi.com/tag/poesie/" rel="category tag">Poesie</a>			</span>
															<span class="sep"> | </span>
							<span class="tag-links">
				<span class="entry-utility-prep entry-utility-prep-tag-links">Contrassegnato</span> <a href="https://lauraberardi.com/tag/amore/" rel="tag">amore</a>, <a href="https://lauraberardi.com/tag/animo/" rel="tag">animo</a>, <a href="https://lauraberardi.com/tag/bimbo/" rel="tag">bimbo</a>, <a href="https://lauraberardi.com/tag/brutalita/" rel="tag">brutalità</a>, <a href="https://lauraberardi.com/tag/componimenti/" rel="tag">componimenti</a>, <a href="https://lauraberardi.com/tag/componimento/" rel="tag">componimento</a>, <a href="https://lauraberardi.com/tag/cuore/" rel="tag">cuore</a>, <a href="https://lauraberardi.com/tag/curiosita/" rel="tag">curiosità</a>, <a href="https://lauraberardi.com/tag/dolore/" rel="tag">dolore</a>, <a href="https://lauraberardi.com/tag/emozioni/" rel="tag">emozioni</a>, <a href="https://lauraberardi.com/tag/esistenza/" rel="tag">esistenza</a>, <a href="https://lauraberardi.com/tag/fanciullezza/" rel="tag">fanciullezza</a>, <a href="https://lauraberardi.com/tag/felicita/" rel="tag">felicità</a>, <a href="https://lauraberardi.com/tag/gioia/" rel="tag">gioia</a>, <a href="https://lauraberardi.com/tag/giorno/" rel="tag">giorno</a>, <a href="https://lauraberardi.com/tag/infanzia/" rel="tag">infanzia</a>, <a href="https://lauraberardi.com/tag/laura-berardi/" rel="tag">Laura Berardi</a>, <a href="https://lauraberardi.com/tag/lauraberardi/" rel="tag">LauraBerardi</a>, <a href="https://lauraberardi.com/tag/meraviglia/" rel="tag">meraviglia</a>, <a href="https://lauraberardi.com/tag/meraviglie/" rel="tag">meraviglie</a>, <a href="https://lauraberardi.com/tag/mondo/" rel="tag">mondo</a>, <a href="https://lauraberardi.com/tag/natura/" rel="tag">natura</a>, <a href="https://lauraberardi.com/tag/occhi/" rel="tag">occhi</a>, <a href="https://lauraberardi.com/tag/pensieri/" rel="tag">pensieri</a>, <a href="https://lauraberardi.com/tag/poesia/" rel="tag">poesia</a>, <a href="https://lauraberardi.com/tag/poesie/" rel="tag">Poesie</a>, <a href="https://lauraberardi.com/tag/purezza/" rel="tag">purezza</a>, <a href="https://lauraberardi.com/tag/raggio/" rel="tag">raggio</a>, <a href="https://lauraberardi.com/tag/ricordi/" rel="tag">ricordi</a>, <a href="https://lauraberardi.com/tag/riflessioni/" rel="tag">riflessioni</a>, <a href="https://lauraberardi.com/tag/societa/" rel="tag">società</a>, <a href="https://lauraberardi.com/tag/sofferenza/" rel="tag">sofferenza</a>, <a href="https://lauraberardi.com/tag/speranza/" rel="tag">speranza</a>, <a href="https://lauraberardi.com/tag/spietato/" rel="tag">spietato</a>, <a href="https://lauraberardi.com/tag/universo/" rel="tag">universo</a>, <a href="https://lauraberardi.com/tag/uomo/" rel="tag">uomo</a>, <a href="https://lauraberardi.com/tag/vita/" rel="tag">vita</a>			</span>
						
									<span class="sep"> | </span>
						<span class="comments-link"><a href="https://lauraberardi.com/2020/07/27/curiosita/#comments"><b>5</b> Risposte</a></span>
			
					</footer><!-- .entry-meta -->
	</article><!-- #post-633 -->

				
					
	<article id="post-628" class="post-628 post type-post status-publish format-standard hentry category-io-penso tag-abitudine tag-angoscia tag-cambiamento tag-cambiare tag-carattere tag-circostanze tag-condizione tag-conoscenza tag-coraggio tag-coronavirus tag-dolore tag-esistenza tag-estate tag-gioia tag-giorno tag-liberta tag-lockdown tag-malinconia tag-mondo tag-normalita tag-paura tag-pensieri tag-personalita tag-psicologia tag-quarantena tag-riflessioni tag-scelta tag-societa tag-sofferenza tag-tristezza tag-virus tag-vita">
		<header class="entry-header">
						<h1 class="entry-title"><a href="https://lauraberardi.com/2020/07/21/questione-di-personalita/" rel="bookmark">Questione di personalità</a></h1>
			
						<div class="entry-meta">
				<span class="sep">Posted on </span><a href="https://lauraberardi.com/2020/07/21/questione-di-personalita/" title="19:29" rel="bookmark"><time class="entry-date" datetime="2020-07-21T19:29:37+02:00">21 luglio 2020</time></a><span class="by-author"> <span class="sep"> by </span> <span class="author vcard"><a class="url fn n" href="https://lauraberardi.com/author/lauraberardi102/" title="Vedi tutti gli articoli di Laura Berardi" rel="author">Laura Berardi</a></span></span>			</div><!-- .entry-meta -->
			
						<div class="comments-link">
				<a href="https://lauraberardi.com/2020/07/21/questione-di-personalita/#comments">16</a>			</div>
					</header><!-- .entry-header -->

				<div class="entry-content">
			
<p>Spesso mi sento dire che le persone non gradiscono la mia compagnia a causa del mio pessimo carattere e non per le circostanze avverse. Sicuramente è così, lo so bene. Conosco la mia personalità e confesso che la maggior parte delle volte non la tollero nemmeno io. Vi domanderete, come si fa a far fatica a stare con se stessi? Eppure è così, che lo lo voglia o no.<br>È terribilmente complicato vivere in questo mondo per persone come me, che non si sentono mai a loro agio, neanche con chi li accetta così com’è, con pregi e difetti. So che la vita è un dono meraviglioso della natura, ma io non sono mai stata capace di apprezzarlo. E a volte la malinconia cresce fino a soffocarmi. Soprattutto in questo periodo, in cui tutti sembrano divertirsi e lasciarsi ogni problema alle spalle. Per via delle mie particolari condizioni, io non ho mai vissuto le gioie dell’estate, nemmeno da piccola. È per questo che adesso mi sembra tutto molto più difficile del solito. Ed è per questo che l’angoscia raddoppia e mi devasta come se fossi costantemente investita da un mezzo pesante. Ma la cosa buffa è che ciò che mi tormenta non è tanto quello che non posso fare, perché ormai credo di averci fatto il callo. Almeno quasi sempre. Vedere davanti ai miei occhi certe situazioni che io non vivrò mai mi fa ancora male, devo ammetterlo. A volte è un’agonia vera e propria.<br>Quello che mi tortura di più è l’impossibilità di scegliere. Durante il lockdown tutti sembravano impazziti perché non avevano la libertà di poter uscire e fare tutto ciò che &#8220;normalmente&#8221; fanno. Ci sono certe persone che non avranno mai questa libertà, quarantena o no, tra cui metto anche me stessa. Per me non è cambiato nulla e non ho sentito alcuna forzatura nel chiudermi dentro casa, perché praticamente è la mia vita da sempre, più per il mio carattere che per le circostanze. Sono sicura che al mio posto la maggioranza delle persone farebbe molte più cose e si butterebbe di più nelle situazioni, anche quelle che sembrano impossibili da attuare. Non avrebbero per niente paura. Anzi, sfiderebbero ogni timore fino a vederlo stramazzato al suolo e se potessero gli darebbero anche il colpo di grazia. Effettivamente è così che dovrebbe essere. Sempre e comunque. Non bisognerebbe mai fuggire dalle avversità, ma cercare di sconfiggerle giorno per giorno, anche se si parte da una condizione svantaggiata. Ecco, io so per certo che non sarò mai così coraggiosa. La paura mi accompagnerà ogni giorno e ogni minuto della mia vita. Sicuramente posso migliorare, ma difficilmente la mia natura vigliacca cambierà. La mia personalità è questa ed emerge sempre, nonostante gli infiniti sforzi effettuati per modificarla.<br>Eppure l’impossibilità di scelta continua a torturare il mio animo, come se non fossi per niente abituata e avessi condotto un&#8217;esistenza &#8220;normale&#8221; fino a ieri. Dovrei essermi adeguata ad alcune cose. La verità è che non mi adeguerò mai, perché, per quanto mi convinca di essermi adattata, evidentemente non ci si abitua mai a certe circostanze e a certi eventi devastanti della vita.</p>
<div id="jp-post-flair" class="sharedaddy sd-like-enabled sd-sharing-enabled"><div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Condividi:</h3><div class="sd-content"><ul><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-628" class="share-twitter sd-button share-icon" href="https://lauraberardi.com/2020/07/21/questione-di-personalita/?share=twitter" target="_blank" title="Fai clic qui per condividere su Twitter"><span>Twitter</span></a></li><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-628" class="share-facebook sd-button share-icon" href="https://lauraberardi.com/2020/07/21/questione-di-personalita/?share=facebook" target="_blank" title="Fai clic per condividere su Facebook"><span>Facebook</span></a></li><li class="share-end"></li></ul></div></div></div><div class='sharedaddy sd-block sd-like jetpack-likes-widget-wrapper jetpack-likes-widget-unloaded' id='like-post-wrapper-74941530-628-5f87438e6d8f6' data-src='//widgets.wp.com/likes/index.html?ver=20200826#blog_id=74941530&amp;post_id=628&amp;origin=lauraberardi102.wordpress.com&amp;obj_id=74941530-628-5f87438e6d8f6&amp;domain=lauraberardi.com' data-name='like-post-frame-74941530-628-5f87438e6d8f6'><h3 class='sd-title'>Mi piace:</h3><div class='likes-widget-placeholder post-likes-widget-placeholder' style='height: 55px;'><span class='button'><span>Mi piace</span></span> <span class="loading">Caricamento...</span></div><span class='sd-text-color'></span><a class='sd-link-color'></a></div></div>					</div><!-- .entry-content -->
		
		<footer class="entry-meta">
												<span class="cat-links">
				<span class="entry-utility-prep entry-utility-prep-cat-links">Pubblicato in</span> <a href="https://lauraberardi.com/category/io-penso/" rel="category tag">Io penso...</a>			</span>
															<span class="sep"> | </span>
							<span class="tag-links">
				<span class="entry-utility-prep entry-utility-prep-tag-links">Contrassegnato</span> <a href="https://lauraberardi.com/tag/abitudine/" rel="tag">abitudine</a>, <a href="https://lauraberardi.com/tag/angoscia/" rel="tag">angoscia</a>, <a href="https://lauraberardi.com/tag/cambiamento/" rel="tag">cambiamento</a>, <a href="https://lauraberardi.com/tag/cambiare/" rel="tag">cambiare</a>, <a href="https://lauraberardi.com/tag/carattere/" rel="tag">carattere</a>, <a href="https://lauraberardi.com/tag/circostanze/" rel="tag">circostanze</a>, <a href="https://lauraberardi.com/tag/condizione/" rel="tag">condizione</a>, <a href="https://lauraberardi.com/tag/conoscenza/" rel="tag">conoscenza</a>, <a href="https://lauraberardi.com/tag/coraggio/" rel="tag">coraggio</a>, <a href="https://lauraberardi.com/tag/coronavirus/" rel="tag">Coronavirus</a>, <a href="https://lauraberardi.com/tag/dolore/" rel="tag">dolore</a>, <a href="https://lauraberardi.com/tag/esistenza/" rel="tag">esistenza</a>, <a href="https://lauraberardi.com/tag/estate/" rel="tag">estate</a>, <a href="https://lauraberardi.com/tag/gioia/" rel="tag">gioia</a>, <a href="https://lauraberardi.com/tag/giorno/" rel="tag">giorno</a>, <a href="https://lauraberardi.com/tag/liberta/" rel="tag">libertà</a>, <a href="https://lauraberardi.com/tag/lockdown/" rel="tag">lockdown</a>, <a href="https://lauraberardi.com/tag/malinconia/" rel="tag">malinconia</a>, <a href="https://lauraberardi.com/tag/mondo/" rel="tag">mondo</a>, <a href="https://lauraberardi.com/tag/normalita/" rel="tag">normalità</a>, <a href="https://lauraberardi.com/tag/paura/" rel="tag">paura</a>, <a href="https://lauraberardi.com/tag/pensieri/" rel="tag">pensieri</a>, <a href="https://lauraberardi.com/tag/personalita/" rel="tag">personalità</a>, <a href="https://lauraberardi.com/tag/psicologia/" rel="tag">psicologia</a>, <a href="https://lauraberardi.com/tag/quarantena/" rel="tag">quarantena</a>, <a href="https://lauraberardi.com/tag/riflessioni/" rel="tag">riflessioni</a>, <a href="https://lauraberardi.com/tag/scelta/" rel="tag">scelta</a>, <a href="https://lauraberardi.com/tag/societa/" rel="tag">società</a>, <a href="https://lauraberardi.com/tag/sofferenza/" rel="tag">sofferenza</a>, <a href="https://lauraberardi.com/tag/tristezza/" rel="tag">tristezza</a>, <a href="https://lauraberardi.com/tag/virus/" rel="tag">virus</a>, <a href="https://lauraberardi.com/tag/vita/" rel="tag">vita</a>			</span>
						
									<span class="sep"> | </span>
						<span class="comments-link"><a href="https://lauraberardi.com/2020/07/21/questione-di-personalita/#comments"><b>16</b> Risposte</a></span>
			
					</footer><!-- .entry-meta -->
	</article><!-- #post-628 -->

				
					
	<article id="post-619" class="post-619 post type-post status-publish format-standard hentry category-poesie tag-angoscia tag-cielo tag-componimenti tag-componimento tag-dolore tag-esistenza tag-estate tag-freddo tag-frustrazione tag-gioia tag-inverno tag-laura-berardi tag-lauraberardi tag-malinconia tag-mondo tag-pensieri tag-poesia tag-poesie tag-riflessioni tag-sensibilita tag-serenita tag-societa tag-sofferenza tag-sole tag-solitudine tag-sorriso tag-speranza tag-tristezza tag-vita">
		<header class="entry-header">
						<h1 class="entry-title"><a href="https://lauraberardi.com/2020/07/12/estate/" rel="bookmark">Estate</a></h1>
			
						<div class="entry-meta">
				<span class="sep">Posted on </span><a href="https://lauraberardi.com/2020/07/12/estate/" title="22:34" rel="bookmark"><time class="entry-date" datetime="2020-07-12T22:34:39+02:00">12 luglio 2020</time></a><span class="by-author"> <span class="sep"> by </span> <span class="author vcard"><a class="url fn n" href="https://lauraberardi.com/author/lauraberardi102/" title="Vedi tutti gli articoli di Laura Berardi" rel="author">Laura Berardi</a></span></span>			</div><!-- .entry-meta -->
			
						<div class="comments-link">
				<a href="https://lauraberardi.com/2020/07/12/estate/#comments">5</a>			</div>
					</header><!-- .entry-header -->

				<div class="entry-content">
			
<p><em>‪Cielo sereno‬<br>‪o nero di nubi,‬<br>‪pelle nutrita‬<br>‪dai raggi‬<br>‪di un sole‬<br>‪caldissimo,‬<br>‪capace‬<br>‪di inondare‬<br>‪alcuni‬<br>‪di sorrisi pieni<br>di vita,<br>‪di spensieratezza<br>totale‬<br>‪e di immensa<br>speranza,‬<br>‪altri‬<br>‪di malinconia,‬<br>‪di un cumulo‬<br>‪di tristezza‬<br>‪che cresce‬<br>‪sempre di più,‬<br>‪che invade‬<br>‪corpi‬<br>‪già deboli,‬<br>‪ma rinvigoriti‬<br>‪soltanto‬<br>‪dal pungente‬<br>‪freddo‬<br>‪e dalle infinite<br>cripte segrete<br>delle gioie altrui,<br>celate<br>‪dietro le mura<br>di un lungo‬<br>‪inverno.</em></p>



<p>Laura Berardi, 12 luglio 2020</p>
<div id="jp-post-flair" class="sharedaddy sd-like-enabled sd-sharing-enabled"><div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Condividi:</h3><div class="sd-content"><ul><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-619" class="share-twitter sd-button share-icon" href="https://lauraberardi.com/2020/07/12/estate/?share=twitter" target="_blank" title="Fai clic qui per condividere su Twitter"><span>Twitter</span></a></li><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-619" class="share-facebook sd-button share-icon" href="https://lauraberardi.com/2020/07/12/estate/?share=facebook" target="_blank" title="Fai clic per condividere su Facebook"><span>Facebook</span></a></li><li class="share-end"></li></ul></div></div></div><div class='sharedaddy sd-block sd-like jetpack-likes-widget-wrapper jetpack-likes-widget-unloaded' id='like-post-wrapper-74941530-619-5f87438e6f4e4' data-src='//widgets.wp.com/likes/index.html?ver=20200826#blog_id=74941530&amp;post_id=619&amp;origin=lauraberardi102.wordpress.com&amp;obj_id=74941530-619-5f87438e6f4e4&amp;domain=lauraberardi.com' data-name='like-post-frame-74941530-619-5f87438e6f4e4'><h3 class='sd-title'>Mi piace:</h3><div class='likes-widget-placeholder post-likes-widget-placeholder' style='height: 55px;'><span class='button'><span>Mi piace</span></span> <span class="loading">Caricamento...</span></div><span class='sd-text-color'></span><a class='sd-link-color'></a></div></div>					</div><!-- .entry-content -->
		
		<footer class="entry-meta">
												<span class="cat-links">
				<span class="entry-utility-prep entry-utility-prep-cat-links">Pubblicato in</span> <a href="https://lauraberardi.com/tag/poesie/" rel="category tag">Poesie</a>			</span>
															<span class="sep"> | </span>
							<span class="tag-links">
				<span class="entry-utility-prep entry-utility-prep-tag-links">Contrassegnato</span> <a href="https://lauraberardi.com/tag/angoscia/" rel="tag">angoscia</a>, <a href="https://lauraberardi.com/tag/cielo/" rel="tag">cielo</a>, <a href="https://lauraberardi.com/tag/componimenti/" rel="tag">componimenti</a>, <a href="https://lauraberardi.com/tag/componimento/" rel="tag">componimento</a>, <a href="https://lauraberardi.com/tag/dolore/" rel="tag">dolore</a>, <a href="https://lauraberardi.com/tag/esistenza/" rel="tag">esistenza</a>, <a href="https://lauraberardi.com/tag/estate/" rel="tag">estate</a>, <a href="https://lauraberardi.com/tag/freddo/" rel="tag">freddo</a>, <a href="https://lauraberardi.com/tag/frustrazione/" rel="tag">frustrazione</a>, <a href="https://lauraberardi.com/tag/gioia/" rel="tag">gioia</a>, <a href="https://lauraberardi.com/tag/inverno/" rel="tag">inverno</a>, <a href="https://lauraberardi.com/tag/laura-berardi/" rel="tag">Laura Berardi</a>, <a href="https://lauraberardi.com/tag/lauraberardi/" rel="tag">LauraBerardi</a>, <a href="https://lauraberardi.com/tag/malinconia/" rel="tag">malinconia</a>, <a href="https://lauraberardi.com/tag/mondo/" rel="tag">mondo</a>, <a href="https://lauraberardi.com/tag/pensieri/" rel="tag">pensieri</a>, <a href="https://lauraberardi.com/tag/poesia/" rel="tag">poesia</a>, <a href="https://lauraberardi.com/tag/poesie/" rel="tag">Poesie</a>, <a href="https://lauraberardi.com/tag/riflessioni/" rel="tag">riflessioni</a>, <a href="https://lauraberardi.com/tag/sensibilita/" rel="tag">sensibilità</a>, <a href="https://lauraberardi.com/tag/serenita/" rel="tag">serenità</a>, <a href="https://lauraberardi.com/tag/societa/" rel="tag">società</a>, <a href="https://lauraberardi.com/tag/sofferenza/" rel="tag">sofferenza</a>, <a href="https://lauraberardi.com/tag/sole/" rel="tag">sole</a>, <a href="https://lauraberardi.com/tag/solitudine/" rel="tag">solitudine</a>, <a href="https://lauraberardi.com/tag/sorriso/" rel="tag">sorriso</a>, <a href="https://lauraberardi.com/tag/speranza/" rel="tag">speranza</a>, <a href="https://lauraberardi.com/tag/tristezza/" rel="tag">tristezza</a>, <a href="https://lauraberardi.com/tag/vita/" rel="tag">vita</a>			</span>
						
									<span class="sep"> | </span>
						<span class="comments-link"><a href="https://lauraberardi.com/2020/07/12/estate/#comments"><b>5</b> Risposte</a></span>
			
					</footer><!-- .entry-meta -->
	</article><!-- #post-619 -->

				
						<nav id="nav-below">
			<h3 class="assistive-text">Navigazione articolo</h3>
			<div class="nav-previous"><a href="https://lauraberardi.com/page/2/" ><span class="meta-nav">&larr;</span> Articoli più vecchi</a></div>
			<div class="nav-next"></div>
		</nav><!-- #nav-above -->
	
			
			</div><!-- #content -->
		</div><!-- #primary -->

		<div id="secondary" class="widget-area" role="complementary">
					<aside id="twitter_timeline-2" class="widget widget_twitter_timeline"><h3 class="widget-title">Seguimi su Twitter</h3><a class="twitter-timeline" data-theme="light" data-border-color="#e8e8e8" data-tweet-limit="2" data-lang="IT" data-partner="jetpack" href="https://twitter.com/lauraberardi10" href="https://twitter.com/lauraberardi10">I miei Cinguettii</a></aside><aside id="wpcom_instagram_widget-3" class="widget widget_wpcom_instagram_widget"><h3 class="widget-title">Seguimi su Instagram</h3><div class="wpcom-instagram-images wpcom-instagram-columns-2">
<a href="https://www.instagram.com/p/CEzJf-_IKpc/" target="_self"><div class="sq-bg-image" style="background-image: url(https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/118776973_959794637832610_2729912597973585384_n.jpg?_nc_cat=107&#038;_nc_sid=8ae9d6&#038;_nc_ohc=YhoKsotzBXYAX8s3zyJ&#038;_nc_ht=scontent-iad3-1.cdninstagram.com&#038;oh=d8c50dfcfe543287d81a4655a7637460&#038;oe=5FAC1351)"><span class="screen-reader-text"></span></div></a>
<a href="https://www.instagram.com/p/CD_X-0RokMb/" target="_self"><div class="sq-bg-image" style="background-image: url(https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/117641813_4288287451245207_8677137181741494460_n.jpg?_nc_cat=105&#038;_nc_sid=8ae9d6&#038;_nc_ohc=w3CAZ4sIVOwAX9DZPNG&#038;_nc_ht=scontent-iad3-1.cdninstagram.com&#038;oh=9b9d5dd2a747d4be7b24321d9e0a857f&#038;oe=5FAB013C)"><span class="screen-reader-text"></span></div></a>
<a href="https://www.instagram.com/p/CCMQ1--omrn/" target="_self"><div class="sq-bg-image" style="background-image: url(https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/107146380_117375569794030_4822172289270935791_n.jpg?_nc_cat=102&#038;_nc_sid=8ae9d6&#038;_nc_ohc=AqxfC1l9L0QAX87nSlE&#038;_nc_ht=scontent-iad3-1.cdninstagram.com&#038;oh=9995ef421dc3e89370e4972664e1162c&#038;oe=5FAC0D1D)"><span class="screen-reader-text"></span></div></a>
<a href="https://www.instagram.com/p/CBicmJpIvHz/" target="_self"><div class="sq-bg-image" style="background-image: url(https://scontent-iad3-1.cdninstagram.com/v/t51.29350-15/104445804_964038250693271_7843771081492585907_n.jpg?_nc_cat=105&#038;_nc_sid=8ae9d6&#038;_nc_ohc=TQEhXKhwqBIAX9-Y1Wp&#038;_nc_ht=scontent-iad3-1.cdninstagram.com&#038;oh=849961735d15b5f3a0d38cf08fe80a50&#038;oe=5FAEBC7B)"><span class="screen-reader-text"></span></div></a>
<a href="https://www.instagram.com/p/B_Kt4k5osOe/" target="_self"><div class="sq-bg-image" style="background-image: url(https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/93569432_538000600443637_1626354103000460600_n.jpg?_nc_cat=102&#038;_nc_sid=8ae9d6&#038;_nc_ohc=Pxe8b8iyR7cAX_VN3qi&#038;_nc_oc=AQlOHvovhnoC1sCHOp1SoW8fTfjBoa30A5s9VNw-7mO-8QCM_sZWhWLZzvTR9zgLTgY&#038;_nc_ht=scontent-iad3-1.cdninstagram.com&#038;oh=c39906d56c1f70b888d78dbb54e9296e&#038;oe=5FAB7025)"><span class="screen-reader-text"></span></div></a>
<a href="https://www.instagram.com/p/B9pZ6_LIUXm/" target="_self"><div class="sq-bg-image" style="background-image: url(https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/89701656_194279315229622_5229278977572230300_n.jpg?_nc_cat=101&#038;_nc_sid=8ae9d6&#038;_nc_ohc=wRkwSnxvfMEAX8GFYLr&#038;_nc_ht=scontent-iad3-1.cdninstagram.com&#038;oh=c3ee851883f52fd93bc6d67e9c4a575e&#038;oe=5FAD559F)"><span class="screen-reader-text"></span></div></a>
<a href="https://www.instagram.com/p/B9d2X_fpfwx/" target="_self"><div class="sq-bg-image" style="background-image: url(https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/88929169_194821218407915_103438686798690556_n.jpg?_nc_cat=110&#038;_nc_sid=8ae9d6&#038;_nc_ohc=MGNPukCr0XUAX_oygVq&#038;_nc_ht=scontent-iad3-1.cdninstagram.com&#038;oh=0269473ecd6ea0247ba4f0d81667589f&#038;oe=5FAE371E)"><span class="screen-reader-text"></span></div></a>
<a href="https://www.instagram.com/p/B9Khk-HIXOC/" target="_self"><div class="sq-bg-image" style="background-image: url(https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/87631470_228144098355331_5454435918009707926_n.jpg?_nc_cat=102&#038;_nc_sid=8ae9d6&#038;_nc_ohc=LrAr_1vZvYQAX9FsuT7&#038;_nc_ht=scontent-iad3-1.cdninstagram.com&#038;oh=b227f793adaf39dbdec00a8f589ad66c&#038;oe=5FAD7922)"><span class="screen-reader-text"></span></div></a>
</div>
</aside><aside id="follow_button_widget-2" class="widget widget_follow_button_widget">
		<a class="wordpress-follow-button" href="https://lauraberardi.com" data-blog="74941530" data-lang="it" >Follow Laura Berardi on WordPress.com</a>
		<script type="text/javascript">(function(d){var f = d.getElementsByTagName('SCRIPT')[0], p = d.createElement('SCRIPT');p.type = 'text/javascript';p.async = true;p.src = '//widgets.wp.com/platform.js';f.parentNode.insertBefore(p,f);}(document));</script>

		</aside><aside id="blog_subscription-3" class="widget widget_blog_subscription jetpack_subscription_widget"><h3 class="widget-title"><label for="subscribe-field">Segui il blog via e-mail</label></h3>
			<form
				action="https://subscribe.wordpress.com"
				method="post"
				accept-charset="utf-8"
				id=""
			>
									<p>Inserisci il tuo indirizzo e-mail per seguire questo blog e ricevere le notifiche per i nuovi articoli via e-mail.</p>
					<p id="subscribe-email">
						<label
							id="subscribe-field-label"
							for="subscribe-field"
							class="screen-reader-text"
						>
							Indirizzo email:						</label>

						<input
								type="text"
								name="email"
								
								style="width: 95%; padding: 1px 10px"
								placeholder="Inserisci il tuo indirizzo e-mail"
								value=""
								id="subscribe-field"
							/>					</p>
				
				<p id="subscribe-submit">
                    <input type="hidden" name="action" value="subscribe"/>
                    <input type="hidden" name="blog_id" value="74941530"/>
                    <input type="hidden" name="source" value="https://lauraberardi.com/"/>
                    <input type="hidden" name="sub-type" value="widget"/>
                    <input type="hidden" name="redirect_fragment" value="blog_subscription-3"/>
					<input type="hidden" id="_wpnonce" name="_wpnonce" value="157fc70bb1" />                    <button type="submit"
	                    		                	                >
	                    Segui il blog                    </button>
                </p>
            </form>
			
</aside>
		<aside id="recent-posts-5" class="widget widget_recent_entries">
		<h3 class="widget-title">Articoli recenti</h3>
		<ul>
											<li>
					<a href="https://lauraberardi.com/2020/10/12/il-mondo-e-cosi/">Il mondo è&nbsp;così</a>
									</li>
											<li>
					<a href="https://lauraberardi.com/2020/09/29/viva/">Viva</a>
									</li>
											<li>
					<a href="https://lauraberardi.com/2020/09/15/diamante/">Diamante</a>
									</li>
											<li>
					<a href="https://lauraberardi.com/2020/09/09/willy/">Willy</a>
									</li>
											<li>
					<a href="https://lauraberardi.com/2020/09/05/menefreghismo-o-ignoranza/">Menefreghismo o ignoranza?</a>
									</li>
					</ul>

		</aside>		</div><!-- #secondary .widget-area -->
<script type='text/javascript'>
								var _gaq = _gaq || [];
								_gaq.push(['_setAccount', 'UA-164611018-1']);
_gaq.push(['_trackPageview']);

								(function() {
									var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
									ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
									var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
								})();
							</script>

	</div><!-- #main -->

	<footer id="colophon" role="contentinfo">

			

			<div id="site-generator">
				 								<a href="https://wordpress.com/?ref=footer_blog" rel="nofollow">Blog su WordPress.com.</a>
			</div>
	</footer><!-- #colophon -->
</div><!-- #page -->

		<script type="text/javascript">
		//<![CDATA[
		var infiniteScroll = JSON.parse( decodeURIComponent( '%7B%22settings%22%3A%7B%22id%22%3A%22content%22%2C%22ajaxurl%22%3A%22https%3A%5C%2F%5C%2Flauraberardi.com%5C%2F%3Finfinity%3Dscrolling%22%2C%22type%22%3A%22scroll%22%2C%22wrapper%22%3Atrue%2C%22wrapper_class%22%3A%22infinite-wrap%22%2C%22footer%22%3A%22page%22%2C%22click_handle%22%3A%221%22%2C%22text%22%3A%22Articoli%20pi%5Cu00f9%20vecchi%22%2C%22totop%22%3A%22Scorri%20in%20alto%22%2C%22currentday%22%3A%2212.07.20%22%2C%22order%22%3A%22DESC%22%2C%22scripts%22%3A%5B%5D%2C%22styles%22%3A%5B%5D%2C%22google_analytics%22%3Afalse%2C%22offset%22%3A1%2C%22history%22%3A%7B%22host%22%3A%22lauraberardi.com%22%2C%22path%22%3A%22%5C%2Fpage%5C%2F%25d%5C%2F%22%2C%22use_trailing_slashes%22%3Atrue%2C%22parameters%22%3A%22%22%7D%2C%22query_args%22%3A%7B%22error%22%3A%22%22%2C%22m%22%3A%22%22%2C%22p%22%3A0%2C%22post_parent%22%3A%22%22%2C%22subpost%22%3A%22%22%2C%22subpost_id%22%3A%22%22%2C%22attachment%22%3A%22%22%2C%22attachment_id%22%3A0%2C%22name%22%3A%22%22%2C%22pagename%22%3A%22%22%2C%22page_id%22%3A0%2C%22second%22%3A%22%22%2C%22minute%22%3A%22%22%2C%22hour%22%3A%22%22%2C%22day%22%3A0%2C%22monthnum%22%3A0%2C%22year%22%3A0%2C%22w%22%3A0%2C%22category_name%22%3A%22%22%2C%22tag%22%3A%22%22%2C%22cat%22%3A%22%22%2C%22tag_id%22%3A%22%22%2C%22author%22%3A%22%22%2C%22author_name%22%3A%22%22%2C%22feed%22%3A%22%22%2C%22tb%22%3A%22%22%2C%22paged%22%3A0%2C%22meta_key%22%3A%22%22%2C%22meta_value%22%3A%22%22%2C%22preview%22%3A%22%22%2C%22s%22%3A%22%22%2C%22sentence%22%3A%22%22%2C%22title%22%3A%22%22%2C%22fields%22%3A%22%22%2C%22menu_order%22%3A%22%22%2C%22embed%22%3A%22%22%2C%22category__in%22%3A%5B%5D%2C%22category__not_in%22%3A%5B%5D%2C%22category__and%22%3A%5B%5D%2C%22post__in%22%3A%5B%5D%2C%22post__not_in%22%3A%5B%5D%2C%22post_name__in%22%3A%5B%5D%2C%22tag__in%22%3A%5B%5D%2C%22tag__not_in%22%3A%5B%5D%2C%22tag__and%22%3A%5B%5D%2C%22tag_slug__in%22%3A%5B%5D%2C%22tag_slug__and%22%3A%5B%5D%2C%22post_parent__in%22%3A%5B%5D%2C%22post_parent__not_in%22%3A%5B%5D%2C%22author__in%22%3A%5B%5D%2C%22author__not_in%22%3A%5B%5D%2C%22lazy_load_term_meta%22%3Afalse%2C%22posts_per_page%22%3A10%2C%22ignore_sticky_posts%22%3Afalse%2C%22suppress_filters%22%3Afalse%2C%22cache_results%22%3Afalse%2C%22update_post_term_cache%22%3Atrue%2C%22update_post_meta_cache%22%3Atrue%2C%22post_type%22%3A%22%22%2C%22nopaging%22%3Afalse%2C%22comments_per_page%22%3A%2250%22%2C%22no_found_rows%22%3Afalse%2C%22order%22%3A%22DESC%22%7D%2C%22query_before%22%3A%222020-10-14%2020%3A29%3A34%22%2C%22last_post_date%22%3A%222020-07-12%2022%3A34%3A39%22%2C%22body_class%22%3A%22infinite-scroll%20neverending%22%2C%22loading_text%22%3A%22Caricamento%20della%20nuova%20pagina%22%2C%22stats%22%3A%22blog%3D74941530%26v%3Dwpcom%26tz%3D2%26user_id%3D0%26subd%3Dlauraberardi102%26x_pagetype%3Dinfinite%22%7D%7D' ) );
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
var HighlanderComments = {"loggingInText":"Accesso in corso\u2026","submittingText":"Pubblicazione del commento...","postCommentText":"Pubblica un commento","connectingToText":"Connessione a %s...","commentingAsText":"%1$s: Stai commentando usando il tuo account %2$s.","logoutText":"Esci","loginText":"Accedi","connectURL":"https:\/\/lauraberardi102.wordpress.com\/public.api\/connect\/?action=request&domain=lauraberardi.com","logoutURL":"https:\/\/lauraberardi102.wordpress.com\/wp-login.php?action=logout&_wpnonce=f94afa5c87","homeURL":"https:\/\/lauraberardi.com\/","postID":"693","gravDefault":"mystery","enterACommentError":"Per favore inserisci un commento","enterEmailError":"Inserisci il tuo indirizzo e-mail qui","invalidEmailError":"Indirizzo e-mail non valido","enterAuthorError":"Inserisci il tuo nome qui","gravatarFromEmail":"Questa immagine sar\u00e0 mostrata ogni volta che lasci un commento. Clicca per personalizzarla.","logInToExternalAccount":"Accedi per utilizzare i dati di uno di questi account.","change":"Modifica","changeAccount":"Cambia account","comment_registration":"","userIsLoggedIn":"","isJetpack":"","text_direction":"ltr"};
</script>
<script type='text/javascript' src='https://s0.wp.com/_static/??/wp-content/js/jquery/jquery.autoresize.js,/wp-content/mu-plugins/highlander-comments/script.js?m=1573483029j'></script>
		<div id="infinite-footer">
			<div class="container">
				<div class="blog-info">
					<a id="infinity-blog-title" href="https://lauraberardi.com/" rel="home">
						Laura Berardi					</a>
				</div>
				<div class="blog-credits">
					<a href="https://wordpress.com/?ref=footer_blog" rel="nofollow">Blog su WordPress.com.</a> 				</div>
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
	<script type="text/javascript">
		window.WPCOM_sharing_counts = {"https:\/\/lauraberardi.com\/2020\/10\/12\/il-mondo-e-cosi\/":693,"https:\/\/lauraberardi.com\/2020\/09\/29\/viva\/":686,"https:\/\/lauraberardi.com\/2020\/09\/15\/diamante\/":679,"https:\/\/lauraberardi.com\/2020\/09\/09\/willy\/":670,"https:\/\/lauraberardi.com\/2020\/09\/05\/menefreghismo-o-ignoranza\/":666,"https:\/\/lauraberardi.com\/2020\/08\/20\/lentamente\/":656,"https:\/\/lauraberardi.com\/2020\/08\/13\/squilibrio\/":643,"https:\/\/lauraberardi.com\/2020\/07\/27\/curiosita\/":633,"https:\/\/lauraberardi.com\/2020\/07\/21\/questione-di-personalita\/":628,"https:\/\/lauraberardi.com\/2020\/07\/12\/estate\/":619};
	</script>
				
	<div id="carousel-reblog-box">
		<form action="#" name="carousel-reblog">
			<textarea id="carousel-reblog-content" name="carousel-reblog-content" placeholder="Scrivi qui i tuoi pensieri... (facoltativo)"></textarea>
			<label for="carousel-reblog-to-blog-id" id="carousel-reblog-lblogid">Pubblica su</label>
			<select name="carousel-reblog-to-blog-id" id="carousel-reblog-to-blog-id">
						</select>

			<div class="submit">
				<span class="canceltext"><a href="#" class="cancel">Annulla</a></span>
				<input type="submit" name="carousel-reblog-submit" class="button" id="carousel-reblog-submit" value="Ripubblica l&#039;articolo" />
				<input type="hidden" id="carousel-reblog-blog-id" value="74941530" />
				<input type="hidden" id="carousel-reblog-blog-url" value="https://lauraberardi.com" />
				<input type="hidden" id="carousel-reblog-blog-title" value="Laura Berardi" />
				<input type="hidden" id="carousel-reblog-post-url" value="" />
				<input type="hidden" id="carousel-reblog-post-title" value="" />
			</div>

			<input type="hidden" id="_wpnonce" name="_wpnonce" value="95aa48c830" /><input type="hidden" name="_wp_http_referer" value="/" />		</form>

		<div class="arrow"></div>
	</div>
<link rel='stylesheet' id='all-css-0-3' href='https://s0.wp.com/_static/??/wp-content/mu-plugins/carousel/jetpack-carousel.css,/wp-content/mu-plugins/tiled-gallery/tiled-gallery.css?m=1592560282j&cssminify=yes' type='text/css' media='all' />
<script id='wpcom-actionbar-bar-js-extra'>
var actionbardata = {"siteID":"74941530","siteName":"Laura Berardi","siteURL":"https:\/\/lauraberardi.com","icon":"<img alt='' src='https:\/\/lauraberardi102.files.wordpress.com\/2020\/08\/cropped-logo-sito-1.png?w=50' class='avatar avatar-50' height='50' width='50' \/>","canManageOptions":"","canCustomizeSite":"","isFollowing":"","themeSlug":"pub\/twentyeleven","signupURL":"https:\/\/wordpress.com\/start\/","loginURL":"https:\/\/wordpress.com\/log-in?redirect_to=https%3A%2F%2Flauraberardi.com%2F2020%2F10%2F12%2Fil-mondo-e-cosi%2F&signup_flow=account&domain=lauraberardi.com","themeURL":"https:\/\/wordpress.com\/theme\/twentyeleven\/","xhrURL":"https:\/\/lauraberardi.com\/wp-admin\/admin-ajax.php","nonce":"b8980fe656","isSingular":"","isFolded":"","isLoggedIn":"","isMobile":"","subscribeNonce":"<input type=\"hidden\" id=\"_wpnonce\" name=\"_wpnonce\" value=\"157fc70bb1\" \/>","referer":"https:\/\/lauraberardi.com\/","canFollow":"1","feedID":"99345146","statusMessage":"","customizeLink":"https:\/\/lauraberardi102.wordpress.com\/wp-admin\/customize.php?url=https%3A%2F%2Flauraberardi102.wordpress.com%2F","i18n":{"view":"Visualizza il sito","follow":"Segui","following":"Siti che segui","edit":"Modifica","login":"Accedi","signup":"Registrati","customize":"Personalizza","report":"Segnala questo contenuto","themeInfo":"Ottieni tema: Twenty Eleven","shortlink":"Copia shortlink","copied":"Copiato","followedText":"I nuovi articoli da questo sito saranno ora visibili nel tuo <a href=\"https:\/\/wordpress.com\/\">Reader<\/a>","foldBar":"Comprimi questa barra","unfoldBar":"Espandi questa barra","editSubs":"Gestisci abbonamenti","viewReader":"Visualizza il sito nel Reader","viewReadPost":"View post in Reader","subscribe":"Registrami","enterEmail":"Inserisci il tuo indirizzo e-mail","followers":"Segui assieme ad altri 588 follower","alreadyUser":"Hai gi\u00e0 un account WordPress.com? <a href=\"https:\/\/wordpress.com\/log-in?redirect_to=https%3A%2F%2Flauraberardi.com%2F2020%2F10%2F12%2Fil-mondo-e-cosi%2F&signup_flow=account&domain=lauraberardi.com\">Accedi ora.<\/a>","stats":"Statistiche"}};
</script>
<script id='jetpack-carousel-js-extra'>
var jetpackCarouselStrings = {"widths":[370,700,1000,1200,1400,2000],"is_logged_in":"","lang":"it","ajaxurl":"https:\/\/lauraberardi.com\/wp-admin\/admin-ajax.php","nonce":"b0482a7261","display_exif":"1","display_comments":"1","display_geo":"1","single_image_gallery":"1","single_image_gallery_media_file":"","background_color":"black","comment":"Commento","post_comment":"Pubblica un commento","write_comment":"Scrivi un Commento...","loading_comments":"Caricamento commenti...","download_original":"Vedi immagine a grandezza originale<span class=\"photo-size\">{0}<span class=\"photo-size-times\">\u00d7<\/span>{1}<\/span>","no_comment_text":"Assicurati di scrivere del testo nel commento.","no_comment_email":"Fornisci un indirizzo e-mail per commentare.","no_comment_author":"Fornisci il tuo nome per commentare.","comment_post_error":"Si \u00e8 verificato un problema durante la pubblicazione del commento. Riprova pi\u00f9 tardi.","comment_approved":"Il tuo commento \u00e8 stato approvato.","comment_unapproved":"Il tuo commento deve venire moderato.","camera":"Fotocamera","aperture":"Apertura","shutter_speed":"Velocit\u00e0 di scatto","focal_length":"Lunghezza focale","copyright":"Copyright","comment_registration":"0","require_name_email":"0","login_url":"https:\/\/lauraberardi102.wordpress.com\/wp-login.php?redirect_to=https%3A%2F%2Flauraberardi.com%2F2020%2F09%2F09%2Fwilly%2F","blog_id":"74941530","meta_data":["camera","aperture","shutter_speed","focal_length","copyright"],"local_comments_commenting_as":"<fieldset><label for=\"email\">E-mail<\/label> <input type=\"text\" name=\"email\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-email-field\" \/><\/fieldset><fieldset><label for=\"author\">Nome<\/label> <input type=\"text\" name=\"author\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-author-field\" \/><\/fieldset><fieldset><label for=\"url\">Sito web<\/label> <input type=\"text\" name=\"url\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-url-field\" \/><\/fieldset>","reblog":"Ripubblica","reblogged":"Ripubblicato","reblog_add_thoughts":"Scrivi qui i tuoi pensieri... (facoltativo)","reblogging":"Ripubblicazione in corso...","post_reblog":"Ripubblica l'articolo","stats_query_args":"blog=74941530&v=wpcom&tz=2&user_id=0&subd=lauraberardi102","is_public":"1","reblog_enabled":""};
</script>
<script id='sharing-js-js-extra'>
var sharing_js_options = {"lang":"en","counts":"1","is_stats_active":"1"};
</script>
<script type='text/javascript' src='https://s0.wp.com/_static/??-eJyVUttOwzAM/SGysCEN8YD4FOSlbucsN2KnZXw9qdRW2kBBPMWXc058EuspKRODYBBtWXc4ksH0ubP8oG9bKbJ4ZIYBf+naj4L5uhw7CiPh9CfMoiQwF5WR6euHqi8quTJQYO3ogqwrqeAZQucwN8AUegok1y1oYCfqBhTWWGo3XgiVg0kL+uRA8K7e0Fmc6HcKRstEIpiVkEdHoWUMOk9BnSBrD1w5NVJxxJypq7dvtX8qSK6zcItkhGKYSVvUQBvIsTC61aVaCyunmnZlHrj+ME99PFk0ci+4qo3VWtTAPL+7XfJUV6A1sJDDTg3g3Lw+N1mDNa+s6h1Q1nyGTGFYz0p686/74+Ph+HLYPz3bbzqTJPY='></script>
<script type='text/javascript'>
var windowOpen;
			jQuery( document.body ).on( 'click', 'a.share-twitter', function() {
				// If there's another sharing window open, close it.
				if ( 'undefined' !== typeof windowOpen ) {
					windowOpen.close();
				}
				windowOpen = window.open( jQuery( this ).attr( 'href' ), 'wpcomtwitter', 'menubar=1,resizable=1,width=600,height=350' );
				return false;
			});
var windowOpen;
			jQuery( document.body ).on( 'click', 'a.share-facebook', function() {
				// If there's another sharing window open, close it.
				if ( 'undefined' !== typeof windowOpen ) {
					windowOpen.close();
				}
				windowOpen = window.open( jQuery( this ).attr( 'href' ), 'wpcomfacebook', 'menubar=1,resizable=1,width=600,height=400' );
				return false;
			});
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
				extend( window.infiniteScroll.settings.scripts, ["jquery-core","jquery","mobile-useragent-info","grofiles-cards","wpgroho","jquery.autoresize","highlander-comments","devicepx","postmessage","jquery_inview","jetpack_resize","jetpack_likes_queuehandler","the-neverending-homepage","eu-cookie-law-script","jetpack-twitter-timeline","wpcom-masterbar-js","wpcom-masterbar-tracks-js","wpcom-actionbar-bar","jetpack-carousel","swfobject","videopress","tiled-gallery","sharing-js"] );
				extend( window.infiniteScroll.settings.styles, ["wpcom-smileys","wordads-global","jetpack_likes","the-neverending-homepage","wp-block-library","wp-block-library-theme","jetpack-layout-grid","jetpack-ratings","coblocks-frontend","wpcom-core-compat-playlist-styles","wpcom-bbpress2-staff-css","twentyeleven-block-style","twentyeleven-wpcom-style","eu-cookie-law-style","wpcom_instagram_widget","geo-location-flair","reblogging","infinity-twentyeleven","wpcom-actionbar-bar","sharedaddy","social-logos","h4-global","global-styles","jetpack-global-styles-frontend-style","highlander-comments","highlander-comments-ie7","jetpack-carousel","tiled-gallery"] );
			})();
		</script>
				<span id="infinite-aria" aria-live="polite"></span>
				<iframe src='https://widgets.wp.com/likes/master.html?ver=20200826#ver=20200826&amp;lang=it' scrolling='no' id='likes-master' name='likes-master' style='display:none;'></iframe>
		<div id='likes-other-gravatars'><div class="likes-text"><span>%d</span> blogger hanno fatto clic su Mi Piace per questo: </div><ul class="wpl-avatars sd-like-gravatars"></ul></div>
<script src="//stats.wp.com/w.js?61" type="text/javascript" async defer></script>
<script type="text/javascript">
_tkq = window._tkq || [];
_stq = window._stq || [];
_tkq.push(['storeContext', {'blog_id':'74941530','blog_tz':'2','user_lang':'it','blog_lang':'it','user_id':'0'}]);
_stq.push(['view', {'blog':'74941530','v':'wpcom','tz':'2','user_id':'0','subd':'lauraberardi102'}]);
_stq.push(['extra', {'crypt':'UE5tW3cvZGQ/JUs1UEo3MlhbTHVDVTRvbmM3RkxTeCYyZkRrdlg4VD89RlVOfklKMXJDLC8rSVpBRGo1eFBUcltbfkMvbjdrUC9td1BTNGttVzNFSFFHb2Z1TF9oJlY2cDlGSnAmVC5YSVJ8QSY0LHdXby1VM2FHTkZ3SkYzV290LmRqJlNxU3VNY2J3SFJUUHNHLUNhdTI9V11YLnlfPy0xW0J+TWp2W0VleDMmR3k1QzErXzkwYjRrZ1k/L2RweD1qZ10tOXBlQzE4UEs1Wi55JkVXNlJXWSY0XVhvbFs/K0x3aWlkbV9KdE5oMnllTmlzOWR5eQ=='}]);
_stq.push([ 'clickTrackerInit', '74941530', '0' ]);
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