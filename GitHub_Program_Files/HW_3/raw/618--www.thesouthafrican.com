<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en-US"> <![endif]-->
<!--[if IE 9]>    <html class="no-js lt-ie10" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en-US"> <!--<![endif]-->
<head>
<!-- mf2020910 -->
<script data-mrf-script="garda" data-mrf-host="live.mrf.io" src="https://live.mrf.io/statics/marfeel/gardac-sync.js" data-cfasync="false"></script>
<!-- BEGIN NARRATIIVE CODE -->
<!-- COPYRIGHT NARRATIIVE -->
<script type="text/javascript">
   (function(t,r,a,c,k,n,o,w){t['em_ns']=k;w=1*new Date();t[k]=t[k]||function(){
     (t[k].q=t[k].q||[]).push(arguments)},t[k].t=w;n=r.createElement(a);n.async=1;
     n.src=c+'/tag'+(t.addEventListener&&'.'||'_.')+'js?'+parseInt(w/1e9, 10);
     o=r.getElementsByTagName(a)[0];o.parentNode.insertBefore(n,o)
   })(window,document,'script','https://t1.effectivemeasure.net','_em');
</script>
<!-- END NARRATIIVE CODE -->
<script async src="https://cdn.onthe.io/io.js/UYsxw4IYrWV8"></script>
	<script>
	window._io_config = window._io_config || {};
	window._io_config["0.2.0"] = window._io_config["0.2.0"] || [];
	window._io_config["0.2.0"].push({
		page_url: "https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/",
		page_url_canonical: "https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/",
		page_title: "Map reveals &#8216;worst COVID super-spreader events&#8217; &#8211; SA has had two of them",
		page_type: "article",
		page_language: "en",
		article_authors: ["Tom Head"],
		article_categories: ["News"],
		article_subcategories: [],
		article_type: "longread",
		article_word_count: "430",
		article_publication_date: "Thu, Oct 8 18:45:30 UTC"
	});
	</script>
	<!-- Quantcast Choice. Consent Manager Tag v2.0 (for TCF 2.0) -->
<script type="text/javascript" async=true>
(function() {
  var host = window.location.hostname;
  var element = document.createElement('script');
  var firstScript = document.getElementsByTagName('script')[0];
  var url = 'https://quantcast.mgr.consensu.org'
    .concat('/choice/', 'e73V9mAz4F-AR', '/', host, '/choice.js')
  var uspTries = 0;
  var uspTriesLimit = 3;
  element.async = true;
  element.type = 'text/javascript';
  element.src = url;

  firstScript.parentNode.insertBefore(element, firstScript);

  function makeStub() {
    var TCF_LOCATOR_NAME = '__tcfapiLocator';
    var queue = [];
    var win = window;
    var cmpFrame;

    function addFrame() {
      var doc = win.document;
      var otherCMP = !!(win.frames[TCF_LOCATOR_NAME]);

      if (!otherCMP) {
        if (doc.body) {
          var iframe = doc.createElement('iframe');

          iframe.style.cssText = 'display:none';
          iframe.name = TCF_LOCATOR_NAME;
          doc.body.appendChild(iframe);
        } else {
          setTimeout(addFrame, 5);
        }
      }
      return !otherCMP;
    }

    function tcfAPIHandler() {
      var gdprApplies;
      var args = arguments;

      if (!args.length) {
        return queue;
      } else if (args[0] === 'setGdprApplies') {
        if (
          args.length > 3 &&
          args[2] === 2 &&
          typeof args[3] === 'boolean'
        ) {
          gdprApplies = args[3];
          if (typeof args[2] === 'function') {
            args[2]('set', true);
          }
        }
      } else if (args[0] === 'ping') {
        var retr = {
          gdprApplies: gdprApplies,
          cmpLoaded: false,
          cmpStatus: 'stub'
        };

        if (typeof args[2] === 'function') {
          args[2](retr);
        }
      } else {
        queue.push(args);
      }
    }

    function postMessageEventHandler(event) {
      var msgIsString = typeof event.data === 'string';
      var json = {};

      try {
        if (msgIsString) {
          json = JSON.parse(event.data);
        } else {
          json = event.data;
        }
      } catch (ignore) {}

      var payload = json.__tcfapiCall;

      if (payload) {
        window.__tcfapi(
          payload.command,
          payload.version,
          function(retValue, success) {
            var returnMsg = {
              __tcfapiReturn: {
                returnValue: retValue,
                success: success,
                callId: payload.callId
              }
            };
            if (msgIsString) {
              returnMsg = JSON.stringify(returnMsg);
            }
            event.source.postMessage(returnMsg, '*');
          },
          payload.parameter
        );
      }
    }

    while (win) {
      try {
        if (win.frames[TCF_LOCATOR_NAME]) {
          cmpFrame = win;
          break;
        }
      } catch (ignore) {}

      if (win === window.top) {
        break;
      }
      win = win.parent;
    }
    if (!cmpFrame) {
      addFrame();
      win.__tcfapi = tcfAPIHandler;
      win.addEventListener('message', postMessageEventHandler, false);
    }
  };

  makeStub();

  var uspStubFunction = function() {
    var arg = arguments;
    if (typeof window.__uspapi !== uspStubFunction) {
      setTimeout(function() {
        if (typeof window.__uspapi !== 'undefined') {
          window.__uspapi.apply(window.__uspapi, arg);
        }
      }, 500);
    }
  };

  var checkIfUspIsReady = function() {
    uspTries++;
    if (window.__uspapi === uspStubFunction && uspTries < uspTriesLimit) {
      console.warn('USP is not accessible');
    } else {
      clearInterval(uspInterval);
    }
  };

  if (typeof window.__uspapi === 'undefined') {
    window.__uspapi = uspStubFunction;
    var uspInterval = setInterval(checkIfUspIsReady, 6000);
  }
})();
</script>
<!-- End Quantcast Choice. Consent Manager Tag v2.0 (for TCF 2.0) -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name='viewport' content='width=device-width, initial-scale=1, user-scalable=yes' />
    <link rel="profile" href="http://gmpg.org/xfn/11" />
    <link rel="pingback" href="https://www.thesouthafrican.com/xmlrpc.php" />
    			<script type="text/javascript">
              var jnews_ajax_url = '/?ajax-request=jnews'
			</script>
			
	<!-- This site is optimized with the Yoast SEO Premium plugin v15.1.1 - https://yoast.com/wordpress/plugins/seo/ -->
	<title>Map reveals &#039;worst COVID super-spreader events&#039;: SA has had two of them</title>
	<meta name="description" content="Super-spreader events are identified as gatherings that have intensified the spread of COVID-19 - and yes, they&#039;ve happened in South Africa." />
	<meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1" />
	<link rel="canonical" href="https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/" />
	<meta property="og:locale" content="en_US" />
	<meta property="og:type" content="article" />
	<meta property="og:title" content="Map reveals &#039;worst COVID super-spreader events&#039;: SA has had two of them" />
	<meta property="og:description" content="Super-spreader events are identified as gatherings that have intensified the spread of COVID-19 - and yes, they&#039;ve happened in South Africa." />
	<meta property="og:url" content="https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/" />
	<meta property="og:site_name" content="The South African" />
	<meta property="article:publisher" content="https://www.facebook.com/thesouthafrican/" />
	<meta property="article:author" content="https://www.facebook.com/tom.head.14" />
	<meta property="article:published_time" content="2020-10-08T16:45:30+00:00" />
	<meta property="article:modified_time" content="2020-10-08T16:45:46+00:00" />
	<meta property="og:image" content="https://gcs.thesouthafrican.com/2020/10/b8b6edf5-super-spreader-events-sa-38.png" />
	<meta property="og:image:width" content="1200" />
	<meta property="og:image:height" content="848" />
	<meta property="fb:app_id" content="812113065486179" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:creator" content="@https://twitter.com/WiggumCharm" />
	<meta name="twitter:site" content="@TheSAnews" />
	<script type="application/ld+json" class="yoast-schema-graph">{"@context":"https://schema.org","@graph":[{"@type":"Organization","@id":"https://www.thesouthafrican.com/#organization","name":"The South African","url":"https://www.thesouthafrican.com/","sameAs":["https://www.facebook.com/thesouthafrican/","https://www.instagram.com/the.south.african/","https://www.linkedin.com/company/the-south-african/","https://www.youtube.com/c/TheSouthAfrican-tv","https://www.pinterest.com/thesouthafrican/","https://en.wikipedia.org/wiki/The_South_African","https://twitter.com/TheSAnews"],"logo":{"@type":"ImageObject","@id":"https://www.thesouthafrican.com/#logo","inLanguage":"en-US","url":"https://gcs.thesouthafrican.com/2016/09/thesouthafrican_logo.png","width":150,"height":86,"caption":"The South African"},"image":{"@id":"https://www.thesouthafrican.com/#logo"}},{"@type":"WebSite","@id":"https://www.thesouthafrican.com/#website","url":"https://www.thesouthafrican.com/","name":"The South African","description":"South Africa News","publisher":{"@id":"https://www.thesouthafrican.com/#organization"},"potentialAction":[{"@type":"SearchAction","target":"https://www.thesouthafrican.com/?s={search_term_string}","query-input":"required name=search_term_string"}],"inLanguage":"en-US"},{"@type":"ImageObject","@id":"https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/#primaryimage","inLanguage":"en-US","url":"https://gcs.thesouthafrican.com/2020/10/b8b6edf5-super-spreader-events-sa-38.png","width":1200,"height":848,"caption":"Photo: London School of Hygiene & Tropical Medicine / Kepler"},{"@type":"WebPage","@id":"https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/#webpage","url":"https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/","name":"Map reveals 'worst COVID super-spreader events': SA has had two of them","isPartOf":{"@id":"https://www.thesouthafrican.com/#website"},"primaryImageOfPage":{"@id":"https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/#primaryimage"},"datePublished":"2020-10-08T16:45:30+00:00","dateModified":"2020-10-08T16:45:46+00:00","description":"Super-spreader events are identified as gatherings that have intensified the spread of COVID-19 - and yes, they've happened in South Africa.","inLanguage":"en-US","potentialAction":[{"@type":"ReadAction","target":["https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/"]}]},{"@type":["Article","NewsArticle"],"@id":"https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/#article","isPartOf":{"@id":"https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/#webpage"},"author":{"@id":"https://www.thesouthafrican.com/#/schema/person/4051380a57c8c2fe6101525be5d5d079"},"headline":"Map reveals &#8216;worst COVID super-spreader events&#8217; &#8211; SA has had two of them","datePublished":"2020-10-08T16:45:30+00:00","dateModified":"2020-10-08T16:45:46+00:00","mainEntityOfPage":{"@id":"https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/#webpage"},"publisher":{"@id":"https://www.thesouthafrican.com/#organization"},"image":{"@id":"https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/#primaryimage"},"keywords":"BSC,coronavirus,COVID-19,South Africa","articleSection":"News","inLanguage":"en-US","copyrightYear":"2020","copyrightHolder":{"@id":"https://www.thesouthafrican.com/#organization"}},{"@type":"Person","@id":"https://www.thesouthafrican.com/#/schema/person/4051380a57c8c2fe6101525be5d5d079","name":"Tom Head","image":{"@type":"ImageObject","@id":"https://www.thesouthafrican.com/#personlogo","inLanguage":"en-US","url":"https://secure.gravatar.com/avatar/5fbed6359ea3f684189f8b8bb60f409b?s=96&d=mm&r=g","caption":"Tom Head"},"description":"Writer of political and lifestyle content. Background in sports writing and local British news. Journalism graduate from the University of Leeds. Part of thesouthafrican.com team since March 2017. Nottingham Forest fan.","sameAs":["https://www.thesouthafrican.com/author/tom-head/","https://www.facebook.com/tom.head.14","https://twitter.com/https://twitter.com/WiggumCharm"]}]}</script>
	<!-- / Yoast SEO Premium plugin. -->


<link rel="amphtml" href="https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/amp/" /><meta name="generator" content="AMP for WP 1.0.64.1"/><link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="The South African &raquo; Feed" href="https://www.thesouthafrican.com/feed/" />
<!-- This site uses the Google Analytics by MonsterInsights plugin v7.12.2 - Using Analytics tracking - https://www.monsterinsights.com/ -->
<script type="text/javascript" data-cfasync="false">
	var mi_version         = '7.12.2';
	var mi_track_user      = true;
	var mi_no_track_reason = '';
	
	var disableStr = 'ga-disable-UA-7425587-1';

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

window.ga = __gaTracker;		__gaTracker('create', 'UA-7425587-1', 'auto');
		__gaTracker('set', 'forceSSL', true);
		__gaTracker('require', 'displayfeatures');
		__gaTracker('require', 'linkid', 'linkid.js');
		__gaTracker('set', 'dimension1', 'Tom Head');
		__gaTracker('set', 'dimension2', 'News');
		__gaTracker('set', 'dimension5', 'BSC,coronavirus,COVID-19,South Africa');
		__gaTracker('send','pageview', location.pathname + location.search + location.hash);
		__gaTracker( function() { window.ga = __gaTracker; } );
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
			window.ga = __gaTracker;		})();
		}
</script>
<!-- / Google Analytics by MonsterInsights -->
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/13.0.0\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/13.0.0\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/www.thesouthafrican.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=5.5.1"}};
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
	<link rel='stylesheet' id='wp-block-library-css'  href='https://www.thesouthafrican.com/wp-includes/css/dist/block-library/style.min.css?ver=5.5.1' type='text/css' media='all' />
<link rel='stylesheet' id='advanced-floating-content-css'  href='https://www.thesouthafrican.com/wp-content/plugins/advanced-floating-content-lite/public/css/advanced-floating-content-public.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='jnews-parent-style-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews/style.css?ver=5.5.1' type='text/css' media='all' />
<link rel='stylesheet' id='mediaelement-css'  href='https://www.thesouthafrican.com/wp-includes/js/mediaelement/mediaelementplayer-legacy.min.css?ver=4.2.13-9993131' type='text/css' media='all' />
<link rel='stylesheet' id='wp-mediaelement-css'  href='https://www.thesouthafrican.com/wp-includes/js/mediaelement/wp-mediaelement.min.css?ver=5.5.1' type='text/css' media='all' />
<link rel='stylesheet' id='font-awesome-css'  href='https://www.thesouthafrican.com/wp-content/plugins/elementor/assets/lib/font-awesome/css/font-awesome.min.css?ver=4.7.0' type='text/css' media='all' />
<link rel='stylesheet' id='jnews-icon-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/fonts/jegicon/jegicon.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='jscrollpane-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/css/jquery.jscrollpane.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='oknav-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/css/okayNav.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='magnific-popup-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/css/magnific-popup.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='chosen-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/css/chosen/chosen.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='owl-carousel2-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/owl-carousel2/assets/owl.carousel.min.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='jnews-main-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/css/main.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='jnews-responsive-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/css/responsive.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='jnews-pb-temp-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/css/pb-temp.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='jnews-elementor-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/css/elementor-frontend.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='jnews-style-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews-child/style.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='jnews-darkmode-css'  href='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/css/darkmode.css?ver=1.0.0' type='text/css' media='all' />
<script type='text/javascript' id='monsterinsights-frontend-script-js-extra'>
/* <![CDATA[ */
var monsterinsights_frontend = {"js_events_tracking":"true","download_extensions":"doc,pdf,ppt,zip,xls,docx,pptx,xlsx","inbound_paths":"[]","home_url":"https:\/\/www.thesouthafrican.com","hash_tracking":"true"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/plugins/google-analytics-premium/assets/js/frontend.min.js?ver=7.12.2' id='monsterinsights-frontend-script-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-includes/js/jquery/jquery.js?ver=1.12.4-wp' id='jquery-core-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/plugins/advanced-floating-content-lite/public/js/advanced-floating-content-public.js?ver=1.0.0' id='advanced-floating-content-js'></script>
<link rel="https://api.w.org/" href="https://www.thesouthafrican.com/wp-json/" /><link rel="alternate" type="application/json" href="https://www.thesouthafrican.com/wp-json/wp/v2/posts/753469" /><link rel="alternate" type="application/json+oembed" href="https://www.thesouthafrican.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.thesouthafrican.com%2Fnews%2Fworld-map-where-worst-super-spreader-events-south-africa-covid-19-cases%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://www.thesouthafrican.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.thesouthafrican.com%2Fnews%2Fworld-map-where-worst-super-spreader-events-south-africa-covid-19-cases%2F&#038;format=xml" />
<!-- Schema optimized by Schema Pro --><script type="application/ld+json">{"@context":"https:\/\/schema.org","@type":"NewsArticle","mainEntityOfPage":{"@type":"WebPage","@id":"https:\/\/www.thesouthafrican.com\/news\/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases\/"},"headline":"Map reveals 'worst COVID super-spreader events' - SA has had two of them","image":{"@type":"ImageObject","url":"https:\/\/gcs.thesouthafrican.com\/2020\/10\/b8b6edf5-super-spreader-events-sa-38.png","width":1200,"height":848},"datePublished":"2020-10-08T18:45:30+0000","dateModified":"2020-10-08T18:45:46+0000","author":{"@type":"Person","name":"Tom Head"},"publisher":{"@type":"Organization","name":"The South African","logo":{"@type":"ImageObject","url":"https:\/\/gcs.thesouthafrican.com\/2016\/09\/thesouthafrican_logo.png"}},"description":"Super-spreader events are identified as gatherings that have intensified the spread of COVID-19 - and yes, they've happened in South Africa."}</script><!-- / Schema optimized by Schema Pro --><!-- site-navigation-element Schema optimized by Schema Pro --><script type="application/ld+json">{"@context":"https:\/\/schema.org","@graph":[{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"News","url":"https:\/\/www.thesouthafrican.com\/news\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"South Africa (ALL)","url":"https:\/\/www.thesouthafrican.com\/news\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Opinion","url":"https:\/\/www.thesouthafrican.com\/opinion\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Weather","url":"https:\/\/www.thesouthafrican.com\/news\/weather\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Traffic Report","url":"https:\/\/www.thesouthafrican.com\/traffic-report\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"World","url":"https:\/\/www.thesouthafrican.com\/news\/world-news\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Africa","url":"https:\/\/www.thesouthafrican.com\/news\/africa\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Botswana","url":"https:\/\/www.thesouthafrican.com\/news\/botswana\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Kenya","url":"https:\/\/www.thesouthafrican.com\/news\/kenya\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Mozambique","url":"https:\/\/www.thesouthafrican.com\/news\/mozambique\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Namibia","url":"https:\/\/www.thesouthafrican.com\/news\/namibia\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Zambia","url":"https:\/\/www.thesouthafrican.com\/news\/zambia\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Zimbabwe","url":"https:\/\/www.thesouthafrican.com\/news\/zimbabwe\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Offbeat","url":"https:\/\/www.thesouthafrican.com\/news\/offbeat\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Finance","url":"https:\/\/www.thesouthafrican.com\/news\/finance\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Sport","url":"https:\/\/www.thesouthafrican.com\/sport\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Soccer","url":"https:\/\/www.thesouthafrican.com\/sport\/soccer\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Premier Soccer League","url":"https:\/\/www.thesouthafrican.com\/sport\/soccer\/psl-south-africa\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"English Premier League","url":"https:\/\/www.thesouthafrican.com\/sport\/soccer\/epl\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Rugby","url":"https:\/\/www.thesouthafrican.com\/sport\/rugby\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Motorsport","url":"https:\/\/www.thesouthafrican.com\/motoring\/motorsport\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Rugby World Cup","url":"https:\/\/www.thesouthafrican.com\/sport\/rugby-world-cup\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Cricket","url":"https:\/\/www.thesouthafrican.com\/sport\/cricket\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Cycling","url":"https:\/\/www.thesouthafrican.com\/sport\/cycling\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Lifestyle","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Health & Fitness","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/health-fitness\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Entertainment","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/entertainment\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"SA TV & Film","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/sa-tv-film\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Food","url":"https:\/\/www.thesouthafrican.com\/food\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Recipes","url":"https:\/\/www.thesouthafrican.com\/food\/recipes\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Parenting & Kids","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/kids-parenting\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Art & Artists","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/art-artists\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Horoscopes","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/horoscopes\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Property","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/property\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Lotto Results","url":"https:\/\/www.thesouthafrican.com\/lotto-results\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Marketplace","url":"#"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Money Transfers","url":"https:\/\/www.thesouthafrican.com\/marketplace\/money-transfers\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Tech","url":"https:\/\/www.thesouthafrican.com\/technology\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"All Tech News","url":"https:\/\/www.thesouthafrican.com\/technology\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Online","url":"https:\/\/www.thesouthafrican.com\/technology\/online\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Mobile","url":"https:\/\/www.thesouthafrican.com\/technology\/mobile\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Gaming","url":"https:\/\/www.thesouthafrican.com\/technology\/gaming\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Science","url":"https:\/\/www.thesouthafrican.com\/technology\/science\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Space","url":"https:\/\/www.thesouthafrican.com\/technology\/space\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Crypto","url":"https:\/\/www.thesouthafrican.com\/technology\/cryptocurrencies\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Travel","url":"https:\/\/www.thesouthafrican.com\/travel\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"All Travel News","url":"https:\/\/www.thesouthafrican.com\/travel\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Travel South Africa","url":"https:\/\/www.thesouthafrican.com\/travel-south-africa\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Eastern Cape","url":"https:\/\/www.thesouthafrican.com\/travel-south-africa\/eastern-cape\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Free State","url":"https:\/\/www.thesouthafrican.com\/travel-south-africa\/free-state\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Gauteng","url":"https:\/\/www.thesouthafrican.com\/travel-south-africa\/gauteng\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"KwaZulu-Natal","url":"https:\/\/www.thesouthafrican.com\/travel-south-africa\/kwazulu-natal\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Limpopo","url":"https:\/\/www.thesouthafrican.com\/travel-south-africa\/limpopo\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Mpumalanga","url":"https:\/\/www.thesouthafrican.com\/travel-south-africa\/mpumalanga\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Northern Cape","url":"https:\/\/www.thesouthafrican.com\/travel-south-africa\/northern-cape\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"North West","url":"https:\/\/www.thesouthafrican.com\/travel-south-africa\/north-west\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Western Cape","url":"https:\/\/www.thesouthafrican.com\/travel-south-africa\/western-cape\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Travel Southern Africa","url":"https:\/\/www.thesouthafrican.com\/travel-southern-africa\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Motoring","url":"https:\/\/www.thesouthafrican.com\/motoring\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"SA Abroad","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/south-africans-abroad\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"South Africans Abroad News","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/south-africans-abroad\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Move To ALL","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/move-to\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Move to Australia","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/move-to\/move-to-australia\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Move to Canada","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/move-to\/move-to-canada\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Move to New Zealand","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/move-to\/move-to-new-zealand\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Move to South Africa","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/move-to\/move-to-south-africa\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Move to the UK","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/move-to\/move-to-uk\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Move to USA","url":"https:\/\/www.thesouthafrican.com\/lifestyle\/move-to\/move-to-usa\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Jobs","url":"https:\/\/jobs.thesouthafrican.com\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"#studentlife","url":"https:\/\/www.thesouthafrican.com\/studentlife\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Studentlife News","url":"https:\/\/www.thesouthafrican.com\/tag\/studentlife\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Studentlife Entertainment","url":"https:\/\/www.thesouthafrican.com\/tag\/studentlife-entertainment\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Studentlife Food","url":"https:\/\/www.thesouthafrican.com\/tag\/studentlife-food\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Studentlife Health and Fitness","url":"https:\/\/www.thesouthafrican.com\/tag\/studentlife-health-fitness\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Studentlife Lifestyle","url":"https:\/\/www.thesouthafrican.com\/tag\/studentlife-lifestyle\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Studentlife Opinion","url":"https:\/\/www.thesouthafrican.com\/tag\/studentlife-opinion\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Studentlife Sport","url":"https:\/\/www.thesouthafrican.com\/tag\/studentlife-sport\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Studentlife Tech","url":"https:\/\/www.thesouthafrican.com\/tag\/studentlife-tech\/"},{"@context":"https:\/\/schema.org","@type":"SiteNavigationElement","id":"site-navigation","name":"Student Jobs","url":"https:\/\/www.thesouthafrican.com\/studentlife-c\/student-jobs\/"}]}</script><!-- / site-navigation-element Schema optimized by Schema Pro --><!-- breadcrumb Schema optimized by Schema Pro --><script type="application/ld+json">{"@context":"https:\/\/schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"item":{"@id":"https:\/\/www.thesouthafrican.com\/","name":"Home"}},{"@type":"ListItem","position":2,"item":{"@id":"https:\/\/www.thesouthafrican.com\/news\/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases\/","name":"Map reveals &#8216;worst COVID super-spreader events&#8217; &#8211; SA has had two of them"}}]}</script><!-- / breadcrumb Schema optimized by Schema Pro --><link rel="icon" href="https://gcs.thesouthafrican.com/2018/08/cropped-south_african_news_online-32x32.png" sizes="32x32" />
<link rel="icon" href="https://gcs.thesouthafrican.com/2018/08/cropped-south_african_news_online-192x192.png" sizes="192x192" />
<link rel="apple-touch-icon" href="https://gcs.thesouthafrican.com/2018/08/cropped-south_african_news_online-180x180.png" />
<meta name="msapplication-TileImage" content="https://gcs.thesouthafrican.com/2018/08/cropped-south_african_news_online-270x270.png" />
<style id="jeg_dynamic_css" type="text/css" data-type="jeg_custom-css">.jeg_topbar .jeg_nav_row, .jeg_topbar .jeg_search_no_expand .jeg_search_input { line-height : 29px; } .jeg_topbar .jeg_nav_row, .jeg_topbar .jeg_nav_icon { height : 29px; } .jeg_topbar, .jeg_topbar.dark, .jeg_topbar.custom { background : #ffffff; } .jeg_midbar { height : 118px; } .jeg_header .jeg_bottombar.jeg_navbar,.jeg_bottombar .jeg_nav_icon { height : 38px; } .jeg_header .jeg_bottombar.jeg_navbar, .jeg_header .jeg_bottombar .jeg_main_menu:not(.jeg_menu_style_1) > li > a, .jeg_header .jeg_bottombar .jeg_menu_style_1 > li, .jeg_header .jeg_bottombar .jeg_menu:not(.jeg_main_menu) > li > a { line-height : 38px; } .jeg_header .jeg_bottombar, .jeg_header .jeg_bottombar.jeg_navbar_dark, .jeg_bottombar.jeg_navbar_boxed .jeg_nav_row, .jeg_bottombar.jeg_navbar_dark.jeg_navbar_boxed .jeg_nav_row { border-top-width : 0px; } .jeg_stickybar, .jeg_stickybar.dark { border-bottom-width : 0px; } .jeg_stickybar, .jeg_stickybar.dark, .jeg_stickybar.jeg_navbar_boxed .jeg_nav_row { border-bottom-color : #000000; } .jeg_mobile_midbar, .jeg_mobile_midbar.dark { background : #ffffff; color : #000000; } .jeg_mobile_midbar a, .jeg_mobile_midbar.dark a { color : #000000; } .jeg_header .socials_widget > a > i.fa:before { color : #000000; } .jeg_aside_item.socials_widget > a > i.fa:before { color : #000000; } .jnews .jeg_header .jeg_menu.jeg_top_menu > li > a { color : #000000; } .jnews .jeg_menu.jeg_top_menu li > ul { background-color : #ffffff; } .jeg_post_title, .entry-header .jeg_post_title, .jeg_single_tpl_2 .entry-header .jeg_post_title, .jeg_single_tpl_3 .entry-header .jeg_post_title, .jeg_single_tpl_6 .entry-header .jeg_post_title { color : #000000;  } .jeg_post_excerpt p, .content-inner p { font-size: 16px; line-height: 25px; color : #000000;  } </style><style type="text/css">
					.no_thumbnail .jeg_thumb,
					.thumbnail-container.no_thumbnail {
					    display: none !important;
					}
					.jeg_search_result .jeg_pl_xs_3.no_thumbnail .jeg_postblock_content,
					.jeg_sidefeed .jeg_pl_xs_3.no_thumbnail .jeg_postblock_content,
					.jeg_pl_sm.no_thumbnail .jeg_postblock_content {
					    margin-left: 0;
					}
					.jeg_postblock_11 .no_thumbnail .jeg_postblock_content,
					.jeg_postblock_12 .no_thumbnail .jeg_postblock_content,
					.jeg_postblock_12.jeg_col_3o3 .no_thumbnail .jeg_postblock_content  {
					    margin-top: 0;
					}
					.jeg_postblock_15 .jeg_pl_md_box.no_thumbnail .jeg_postblock_content,
					.jeg_postblock_19 .jeg_pl_md_box.no_thumbnail .jeg_postblock_content,
					.jeg_postblock_24 .jeg_pl_md_box.no_thumbnail .jeg_postblock_content,
					.jeg_sidefeed .jeg_pl_md_box .jeg_postblock_content {
					    position: relative;
					}
					.jeg_postblock_carousel_2 .no_thumbnail .jeg_post_title a,
					.jeg_postblock_carousel_2 .no_thumbnail .jeg_post_title a:hover,
					.jeg_postblock_carousel_2 .no_thumbnail .jeg_post_meta .fa {
					    color: #212121 !important;
					} 
				</style>		<style type="text/css" id="wp-custom-css">
			/* sb */
@media only screen and (max-width: 767px) {
.jeg_sidebar {display: none;}
.jeg_footer_content {display: none;}
}
/* ol */
.jeg_viewport {
    width: 100%;
}
body {
	height: auto !important;
} 
/* leftal */
.jeg_container {
	text-align:left
}
/* tbw */
@media only screen and (min-width: 1280px) {
.jeg_boxed .jeg_container {
    width: 1170px;
	}
} 
@media (min-width:1200px) {
	.jeg_viewport {
    width: 1170px;
    margin: 0 auto;
	}
} 
.jeg_boxed .jeg_container .jeg_navbar_wrapper.jeg_sticky_nav {
    width: 1170px;
}
/* tbw2 */
@media (min-width: 992px) {
.container, .jeg_vc_content>.vc_element>.vc_row, .jeg_vc_content>.vc_element>.vc_row[data-vc-full-width=true]>.jeg-vc-wrapper, .jeg_vc_content>.vc_row, .jeg_vc_content>.vc_row[data-vc-full-width=true]>.jeg-vc-wrapper {
    width: auto;
}
}
/* pbw */
.container, .vc_column_container {
    padding-right: 15px;
    padding-left: 15px;
}

/* log */
.jeg_nav_left .jeg_logo:last-child {
    margin-right: 10px;
}
/* si */
.jeg_search_wrapper {
    margin-left: 10px;
}
/* mcm */
@media only screen and (min-width: 650px) {
.incads {display: none;}
}
/* sp */
.content-inner {
	margin-top:15px
}
.entry-header {
    margin: 0 0 10px;
}
.jeg_content {
    padding: 20px 0 40px;
}
.jeg_singlepage .jeg_breadcrumbs {
    margin: -10px auto 5px;
}
.jeg_featured {
    margin-bottom: 15px;
}
/* sph */
.jeg_single_tpl_2 .entry-header .jeg_post_title, .jeg_single_tpl_3 .entry-header .jeg_post_title, .jeg_single_tpl_6 .entry-header .jeg_post_title {
	font-size: 35px;
	line-height: 1.5;
}
.entry-header .jeg_post_title {
    margin: 0 0 .2em;
}
/* w */
/* ht */
.wthide .jeg_block_heading {
	display:none;
}
/* mc */
.mchimpwidget .jeg_main_content .mc4wp-form {
  padding: 0px;
	margin-bottom: 10px; 
	border: 0px solid #eee; 
}
.mchimpwidget .jeg_sidebar .mc4wp-form, .widget .mc4wp-form {
	padding: 0px 0px; 
	border: 0px solid #eee;
	background: #ffffff;
}
.mchimpwidget .jeg_block_heading_5 {
    margin-bottom: 5px;
}
.mchimpwidget {
    margin-bottom: 20px;
}
/* ah */
.jnews_header_top_ads {
    background: transparent;
	margin-bottom:5px;
	margin-top:5px;
}
/* sw */
.jnews_search_content_wrapper {
	text-align:left
}
/* ol */
.content-inner ol {
  padding:0;
  counter-reset:item;
}
.content-inner ol>li {
  margin:0;
  padding:0 0 0 2em;
  text-indent:-2em;
  list-style-type:none;
  counter-increment:item;
}
.content-inner ol>li:before {
  display:inline-block;
  width:1.5em;
  padding-right:0.5em;
  font-weight:bold;
  text-align:right;
  content:counter(item) ".";
}
/* lrm */
.lotterymodule .jeg_pl_sm_2 {
    margin-bottom: 0;
	}
.lotterymodule .jeg_pl_sm_2:after {
    content: "";
    margin-top: 0;
    width: 300px;
}
.lotterymodule .jeg_block_heading_6:after {}
/* sw */
/* p */
@media (min-width: 992px) {
.col-md-4 {width: 26%;padding-right: 0px;}
.col-md-8 {width:74%;}
.jeg_sidebar {padding-left: 0;}
.col-md-3 {width:27.5%}
.col-md-9 {width:72.5%}
}
/* c */
@media (min-width: 767px){
.col-sm-4 {width: 26%;}
.col-sm-8 {width: 74%;}
.jeg_sidebar {padding-left: 0;}
}
/* ap */
.page-id-68070 .jnews_header_top_ads {
    background: transparent;
    margin-top: 0px;
	  margin-bottom: 0px;
}
/* termp */
.page-id-141111 .jeg_featured {
    display: none;
}
/* mtp */
.page-id-321484 .jeg_featured {
    display: none;
}
/* sb */
#afc_sidebar_476714 {
    padding: 0px!important;
	  max-height:90px;
}
.afc_popup .img {
    right: 5px!important;
}
/* mi */
.lockdownlifei .jeg_font_menu {
    margin-right: 5px;
}
/* fc */
.fb_iframe_widget_fluid_desktop iframe {width: 100%!important;}
/* tf */
.jeg_inner_content .entry-content h2 {text-transform:uppercase;font-size:23px;background-color:#fafafa;padding: 5px;margin-right:2px;}
.jeg_inner_content .entry-content h3 {text-transform:uppercase;font-size:20px;background-color:#fafafa;padding: 5px;margin-right:2px}
.jeg_inner_content .entry-content h4 {text-transform:uppercase;font-size:18px;}
.jeg_post_subtitle {text-transform:none} 
/** rs **/
h3.cta-text-title {background-color:transparent!important;}
.ingredient-item-group-title {text-transform:uppercase}
h2.recipe-card-title {text-transform:capitalize!important;}
.wp-block-wpzoom-recipe-card-block-recipe-card.is-style-default .recipe-card-image figure::before {background: none!important;}
/* ft */
.footer-message {
	background-color: #f2f2f2;
  padding: 8px 10px 8px 10px;
  font-weight: 700;
  margin-left: auto;
  margin-right: auto;
	text-align: center;
	margin: 2px 0 5px 0;}
}
/** mc2 */
#mc-embedded-subscribe {
    clear: both;
    width: 100% !important;
    display: block;
}
.btn, .button3, input[type=submit] {
    border: none;
    border-radius: 0;
    background: #f70d28;
    color: #fff;
    padding: 0 90px;
	  width: 100% !IMPORTANT;
    line-height: 40px;
    height: 40px;
	margin: 0em 0 0em 0% !important;
    display: inline-block;
    cursor: pointer;
    text-transform: uppercase;
    font-size: 13px;
    font-weight: 700;
    letter-spacing: 1px;
    outline: 0;
    -webkit-appearance: none;
    -webkit-transition: .3s ease;
    transition: .3s ease;
}
/** gd **/
@media only screen and (max-width: 700px) {
.qc-cmp2-persistent-link {
	top:0;
	max-height:22px!important;
  padding: 5px 5px!important;
	}
/** adt **/
	.at-share-dock.atss {
		bottom: 50px!important;
		z-index: 100000!important;
	}
	.afc_popup .img {
		display:none;
	}
}
/** mf **/
.mrf-marfeelBadge {display:none!important;}		</style>
			<!-- ch -->
						<!-- mfcc -->
								    <!-- nomfcc -->
						<!-- dm -->
									<style type="text/css">#enhancedtextwidget-6 {display:none;}</style>												<!-- s -->
                 <!-- kv -->
<!-- kvc "news" T "bsc","coronavirus","covid-19","south africa"  -->
<!-- gh -->
<script async src='https://securepubads.g.doubleclick.net/tag/js/gpt.js'></script>
<script>
  window.googletag = window.googletag || {cmd: []};
  googletag.cmd.push(function() {
	var mapping1 = googletag.sizeMapping()
		.addSize([320, 100], [])
		.addSize([480, 100], [])
		.addSize([640, 100], [])
		.addSize([730, 100], [[728, 90], [468, 60]])
		.addSize([972, 100], [[970, 90], [728, 90]])
		.addSize([1200, 100], [[728, 90], [970, 90], [1200, 90]])
		.build();
	var mapping2 = googletag.sizeMapping()
		.addSize([320, 100], [[320, 50], [320, 100], [300, 250], [300, 600], [336, 280]])
		.addSize([480, 100], [[320, 50], [320, 100], [300, 250], [300, 600], [336, 280]])
		.addSize([640, 100], [[320, 50], [320, 100], [300, 250], [300, 600], [336, 280]])
		.addSize([730, 100], [[320, 50], [320, 100], [300, 250], [300, 600], [336, 280]])
		.addSize([972, 100], [])
		.addSize([1200, 100], [])
		.build();
	var mapping3 = googletag.sizeMapping()
		.addSize([320, 100], [])
		.addSize([480, 100], [])
		.addSize([640, 100], [])
		.addSize([730, 100], [])
		.addSize([972, 100], [[970, 250]])
		.addSize([1200, 100], [[970, 250]])
		.build();
	var mapping4 = googletag.sizeMapping()
		.addSize([320, 100], [[320, 50]])
		.addSize([480, 100], [[320, 50]])
		.addSize([640, 100], [[320, 50]])
		.addSize([730, 100], [[320, 50]])
		.addSize([972, 100], [])
		.addSize([1200, 100], [])
		.build();
	
	    	  googletag.defineSlot('/1245037/thesouthafrican_leaders/news', [[728, 90],[970, 90]], 'leaderd').addService(googletag.pubads());
		googletag.defineSlot('/1245037/thesouthafrican_mpu/news-1', [[300, 600], [300, 250], [160, 600]], 'mpud-1').addService(googletag.pubads());
		googletag.defineSlot('/1245037/thesouthafrican_mpu/news-2', [[300, 600], [300, 250], [160, 600]], 'mpud-2').addService(googletag.pubads());
	  googletag.defineSlot('/1245037/tsa-d/mpu3-d', [[160, 600], [300, 600], [300, 250]], 'mpu3-d').addService(googletag.pubads());
	   googletag.defineSlot('/1245037/tsa-d/mpu4-d', [[160, 600], [300, 600], [300, 250]], 'mpu4-d').addService(googletag.pubads());
		googletag.defineSlot('/1245037/thesouthafircan_desktop_sticky/news', [[970, 90], [1200, 90], [728, 90]], 'desktop-sticky')
		.defineSizeMapping(mapping1)
		.addService(googletag.pubads());
		googletag.defineOutOfPageSlot('/1245037/thesouthafrican_takeover/news', 'takeover').addService(googletag.pubads());
		googletag.defineSlot('/1245037/tsa-m/mpu1', [[336, 280], [300, 100], [300, 250], [300, 600]], 'm-mpu1')
		.defineSizeMapping(mapping2)
		.addService(googletag.pubads());
		googletag.defineSlot('/1245037/tsa-m/mpu2', [[336, 280], [300, 100], [300, 250], [300, 600]], 'm-mpu2')
		.defineSizeMapping(mapping2)
		.addService(googletag.pubads());
		googletag.defineSlot('/1245037/tsa-m/mpu3', [[336, 280], [300, 100], [300, 250], [300, 600]], 'm-mpu3')
		.defineSizeMapping(mapping2)
		.addService(googletag.pubads());
		googletag.defineSlot('/1245037/thesouthafrican_mobile/thesouthafrican_mobile_sticky_solo', [320, 50], 'mobile-sticky')
		.defineSizeMapping(mapping4)
		.addService(googletag.pubads());
		googletag.pubads().disableInitialLoad();
		googletag.pubads().enableSingleRequest();
		googletag.pubads().collapseEmptyDivs();
		googletag.pubads().setCentering(true);
		googletag.pubads().setTargeting("category", ["news"] );
	  			googletag.pubads().setTargeting("tags", ["bsc","coronavirus","covid-19","south africa"] );
				googletag.enableServices();
	  });
</script>
<script>
	//load the apstag.js library
	!function(a9,a,p,s,t,A,g){if(a[a9])return;function q(c,r){a[a9]._Q.push([c,r])}a[a9]={init:function(){q("i",arguments)},fetchBids:function(){q("f",arguments)},setDisplayBids:function(){},targetingKeys:function(){return[]},_Q:[]};A=p.createElement(s);A.async=!0;A.src=t;g=p.getElementsByTagName(s)[0];g.parentNode.insertBefore(A,g)}("apstag",window,document,"script","//c.amazon-adsystem.com/aax2/apstag.js");

	//initialize the apstag.js library on the page to allow bidding
	apstag.init({
		 pubID: 'bb88f475-fa25-4f16-9db9-1d3824067192', //enter your pub ID here as shown above, it must within quotes
		 adServer: 'googletag'
	});
	apstag.fetchBids({
		 slots: [{
			 slotID: 'leaderd',
			 slotName: '/1245037/thesouthafrican_leaders/news',
			 sizes: [[728, 90],[970, 90]]
		 },{
			 slotID: 'mpud-1',
			 slotName: '/1245037/thesouthafrican_mpu/news-1',
			 sizes: [[300, 600], [300, 250], [160, 600]]
		 },{
			 slotID: 'mpud-2',
			 slotName: '/1245037/thesouthafrican_mpu/news-2',
			 sizes: [[300, 600], [300, 250], [160, 600]]
		 },{
			 slotID: 'desktop-sticky',
			 slotName: '/1245037/thesouthafircan_desktop_sticky/news',
			 sizes: [[970, 90], [728, 90]]
		},{
			slotID: 'mobile-sticky',
			slotName: '/1245037/thesouthafrican_mobile/thesouthafrican_mobile_sticky_solo',
			sizes: [[320, 50], [320, 100]]
		}
		 ],
		 timeout: 2e3
	}, function(bids) {
		 // set apstag targeting on googletag, then trigger the first DFP request in googletag's disableInitialLoad integration
		 googletag.cmd.push(function(){
			 apstag.setDisplayBids();
			 googletag.pubads().setTargeting("category", ["news"] );
			 googletag.pubads().refresh();
		 });
	}); 
</script>
<!-- /gh -->
		<!-- taboola header -->
		<script type="text/javascript">
		  window._taboola = window._taboola || [];
		  _taboola.push({article:'auto'});
		  !function (e, f, u, i) {
			if (!document.getElementById(i)){
			  e.async = 1;
			  e.src = u;
			  e.id = i;
			  f.parentNode.insertBefore(e, f);
			}
		  }(document.createElement('script'),
		  document.getElementsByTagName('script')[0],
		  '//cdn.taboola.com/libtrc/bluesky-thesouthafrican/loader.js',
		  'tb_loader_script');
		  if(window.performance && typeof window.performance.mark == 'function')
			{window.performance.mark('tbl_ic');}
		</script>
		<!-- verify -->
		<meta name="B-verify" content="b51c2fdaa5ce86600834f9b2d649257f311edd65" />
		<meta name="p:domain_verify" content="45c12905f2cebf3a0c4d8ff5829fa74b"/>
		<meta property="fb:pages" content="61886450809" />
	<!-- /ch -->
		
<!-- Begin ContainR GroupM -->
<script type='application/javascript'>!function(n,t,a,i){n.mpfContainr||(n.mpfContainr=function(){a.push(arguments)},mpfContainr.q=a,(i=t.createElement('script')).type='application/javascript',i.async=!0,i.src='//cdn.mookie1.com/containr.js',t.head.appendChild(i))}(window,document,[]);
mpfContainr('V2_626089',{'host': 'za-gmtdmp.mookie1.com', 'tagType': 'learn','src.rand': '[timestamp]', 'src.id' : '[add_sourceid_here]' });
</script>
<noscript>
<iframe src='//za-gmtdmp.mookie1.com/t/v2?tagid=V2_626089&isNoScript&src.rand=[timestamp]&src.id=[add_sourceid_here]' height='0' width='0' style='display:none;visibility:hidden'></iframe>
</noscript>
<!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '702111707209594');
  fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=702111707209594&ev=PageView&noscript=1"/></noscript>
<!-- End Facebook Pixel Code -->
<!-- st -->
    <script type='text/javascript' src='https://platform-api.sharethis.com/js/sharethis.js#property=5f699d54b9384100126571b0&product=inline-share-buttons' async='async'></script>
</head>
<body class="post-template-default single single-post postid-753469 single-format-standard wp-embed-responsive wp-schema-pro-2.1.2 jeg_toggle_dark jeg_single_tpl_2 jnews jeg_boxed jsc_normal elementor-default elementor-kit-756337">
	<!-- cb -->
	<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v5.0&appId=812113065486179&autoLogAppEvents=1"></script>
    <!-- iot -->
								</div data-io-article-url="https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/">
                     <!-- /iot -->
	<!-- /cb -->
    
    
    <div class="jeg_ad jeg_ad_top jnews_header_top_ads">
        <div class='ads-wrapper  '></div>    </div>

    <!-- The Main Wrapper
    ============================================= -->
    <div class="jeg_viewport">

        
        <div class="jeg_header_wrapper">
            <div class="jeg_header_instagram_wrapper">
    </div>

<!-- HEADER -->
<div class="jeg_header normal">
    <div class="jeg_topbar jeg_container normal">
    <div class="container">
        <div class="jeg_nav_row">
            
                <div class="jeg_nav_col jeg_nav_left  jeg_nav_grow">
                    <div class="item_wrap jeg_nav_alignleft">
                        <div class="jeg_nav_item jeg_nav_html">
    <a href="/news/us/"><img src="https://gcs.thesouthafrican.com/2020/10/911e8017-elections-header-button.jpg" ></a></div><div class="jeg_nav_item">
	<ul class="jeg_menu jeg_top_menu"><li id="menu-item-73489" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-73489"><a title="Find advertising rates and contact us to advertise in the South African newspaper and on our website." href="https://www.thesouthafrican.com/advertise/">Advertise</a></li>
<li id="menu-item-157240" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-157240"><a href="https://www.thesouthafrican.com/about-us/">About us</a></li>
<li id="menu-item-382099" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-privacy-policy menu-item-382099"><a href="https://www.thesouthafrican.com/terms-and-conditions/">Terms, Conditions, Privacy &#038; GDPR</a></li>
<li id="menu-item-64719" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-64719"><a title="Contact the South African newspaper in London to advertise, ask a question or send us a story idea." href="https://www.thesouthafrican.com/contact-us/">Contact us</a></li>
</ul></div>                    </div>
                </div>

                
                <div class="jeg_nav_col jeg_nav_center  jeg_nav_normal">
                    <div class="item_wrap jeg_nav_aligncenter">
                        			<div
				class="jeg_nav_item socials_widget jeg_social_icon_block nobg">
				<a href="https://www.facebook.com/thesouthafrican/" target='_blank' class="jeg_facebook"><i class="fa fa-facebook"></i> </a><a href="https://twitter.com/thesanews" target='_blank' class="jeg_twitter"><i class="fa fa-twitter"></i> </a><a href="https://www.instagram.com/the.south.african/" target='_blank' class="jeg_instagram"><i class="fa fa-instagram"></i> </a><a href="https://www.youtube.com/c/TheSouthAfrican-tv?sub_confirmation=1" target='_blank' class="jeg_youtube"><i class="fa fa-youtube-play"></i> </a><a href="https://www.linkedin.com/company/the-south-african/about/" target='_blank' class="jeg_linkedin"><i class="fa fa-linkedin"></i> </a><a href="https://flipboard.com/@thesouthafrica" target='_blank' class="jeg_rss"><i class="fa fa-rss"></i> </a>			</div>
			                    </div>
                </div>

                
                <div class="jeg_nav_col jeg_nav_right  jeg_nav_normal">
                    <div class="item_wrap jeg_nav_alignright">
                                            </div>
                </div>

                        </div>
    </div>
</div><!-- /.jeg_container --><div class="jeg_midbar jeg_container normal">
    <div class="container">
        <div class="jeg_nav_row">
            
                <div class="jeg_nav_col jeg_nav_left jeg_nav_normal">
                    <div class="item_wrap jeg_nav_alignleft">
                        <div class="jeg_nav_item jeg_logo jeg_desktop_logo">
			<div class="site-title">
	    	<a href="https://www.thesouthafrican.com/" style="padding: 0 0 0 0;">
	    	    <img class='jeg_logo_img' src="https://www.thesouthafrican.com/wp-content/uploads/2018/08/south_african_news_online.png"  alt="News The South African "data-light-src="https://www.thesouthafrican.com/wp-content/uploads/2018/08/south_african_news_online.png" data-light-srcset="https://www.thesouthafrican.com/wp-content/uploads/2018/08/south_african_news_online.png 1x,  2x" data-dark-src="https://www.thesouthafrican.com/wp-content/themes/jnews/assets/img/logo_darkmode.png" data-dark-srcset="https://www.thesouthafrican.com/wp-content/themes/jnews/assets/img/logo_darkmode.png 1x, https://www.thesouthafrican.com/wp-content/themes/jnews/assets/img/logo_darkmode@2x.png 2x">	    	</a>
	    </div>
	</div>                    </div>
                </div>

                
                <div class="jeg_nav_col jeg_nav_center jeg_nav_normal">
                    <div class="item_wrap jeg_nav_aligncenter">
                                            </div>
                </div>

                
                <div class="jeg_nav_col jeg_nav_right jeg_nav_grow">
                    <div class="item_wrap jeg_nav_alignright">
                        <div class="jeg_nav_item jeg_ad jeg_ad_top jnews_header_ads">
    <div class='ads-wrapper  '><div class='ads_shortcode'><div id='leaderd'><script>googletag.cmd.push(function() { googletag.display('leaderd'); });</script></div></div></div></div>                    </div>
                </div>

                        </div>
    </div>
</div><div class="jeg_bottombar jeg_navbar jeg_container jeg_navbar_wrapper  jeg_navbar_fitwidth jeg_navbar_normal">
    <div class="container">
        <div class="jeg_nav_row">
            
                <div class="jeg_nav_col jeg_nav_left jeg_nav_grow">
                    <div class="item_wrap jeg_nav_alignleft">
                        <div class="jeg_main_menu_wrapper">
<div class="jeg_nav_item jeg_mainmenu_wrap"><ul class="jeg_menu jeg_main_menu jeg_menu_style_1" data-animation="none"><li id="menu-item-165779" class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor current-menu-parent current-post-parent menu-item-has-children menu-item-165779 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/">News</a>
<ul class="sub-menu">
	<li id="menu-item-542587" class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor current-menu-parent current-post-parent menu-item-542587 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/">South Africa (ALL)</a></li>
	<li id="menu-item-157628" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-157628 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/opinion/">Opinion</a></li>
	<li id="menu-item-521632" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521632 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/weather/">Weather</a></li>
	<li id="menu-item-467969" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-467969 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/traffic-report/">Traffic Report</a></li>
	<li id="menu-item-542533" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542533 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/world-news/">World</a></li>
	<li id="menu-item-556309" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-556309 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/africa/">Africa</a></li>
	<li id="menu-item-542529" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542529 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/botswana/">Botswana</a></li>
	<li id="menu-item-542530" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542530 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/kenya/">Kenya</a></li>
	<li id="menu-item-542531" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542531 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/mozambique/">Mozambique</a></li>
	<li id="menu-item-542532" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542532 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/namibia/">Namibia</a></li>
	<li id="menu-item-542534" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542534 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/zambia/">Zambia</a></li>
	<li id="menu-item-542535" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542535 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/zimbabwe/">Zimbabwe</a></li>
	<li id="menu-item-550009" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-550009 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/offbeat/">Offbeat</a></li>
</ul>
</li>
<li id="menu-item-263822" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-263822 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/finance/">Finance</a></li>
<li id="menu-item-64674" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-64674 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/">Sport</a>
<ul class="sub-menu">
	<li id="menu-item-416467" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-416467 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/soccer/">Soccer</a>
	<ul class="sub-menu">
		<li id="menu-item-262227" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-262227 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/soccer/psl-south-africa/">Premier Soccer League</a></li>
		<li id="menu-item-416469" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-416469 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/soccer/epl/">English Premier League</a></li>
	</ul>
</li>
	<li id="menu-item-319764" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-319764 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/rugby/">Rugby</a></li>
	<li id="menu-item-595796" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-595796 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/motoring/motorsport/">Motorsport</a></li>
	<li id="menu-item-521170" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521170 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/rugby-world-cup/">Rugby World Cup</a></li>
	<li id="menu-item-319767" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-319767 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/cricket/">Cricket</a></li>
	<li id="menu-item-416468" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-416468 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/cycling/">Cycling</a></li>
</ul>
</li>
<li id="menu-item-170416" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-170416 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/">Lifestyle</a>
<ul class="sub-menu">
	<li id="menu-item-249524" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-249524 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/health-fitness/">Health &#038; Fitness</a></li>
	<li id="menu-item-594836" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-594836 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/entertainment/">Entertainment</a></li>
	<li id="menu-item-206553" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-206553 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/sa-tv-film/">SA TV &#038; Film</a></li>
	<li id="menu-item-514576" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-514576 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/food/">Food</a>
	<ul class="sub-menu">
		<li id="menu-item-623840" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-623840 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/food/recipes/">Recipes</a></li>
	</ul>
</li>
	<li id="menu-item-624212" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-624212 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/kids-parenting/">Parenting &#038; Kids</a></li>
	<li id="menu-item-206552" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-206552 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/art-artists/">Art &#038; Artists</a></li>
	<li id="menu-item-521177" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521177 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/horoscopes/">Horoscopes</a></li>
	<li id="menu-item-239668" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-239668 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/property/">Property</a></li>
	<li id="menu-item-256507" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-256507 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lotto-results/">Lotto Results</a></li>
	<li id="menu-item-517224" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-517224 bgnav" data-item-row="default" ><a href="#">Marketplace</a>
	<ul class="sub-menu">
		<li id="menu-item-525979" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-525979 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/marketplace/money-transfers/">Money Transfers</a></li>
	</ul>
</li>
</ul>
</li>
<li id="menu-item-642137" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-642137 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/food/recipes/">Recipes</a></li>
<li id="menu-item-460265" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-460265 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/">Tech</a>
<ul class="sub-menu">
	<li id="menu-item-521178" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521178 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/">All Tech News</a></li>
	<li id="menu-item-521173" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521173 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/online/">Online</a></li>
	<li id="menu-item-521172" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521172 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/mobile/">Mobile</a></li>
	<li id="menu-item-521171" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521171 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/gaming/">Gaming</a></li>
	<li id="menu-item-521175" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521175 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/science/">Science</a></li>
	<li id="menu-item-521176" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521176 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/space/">Space</a></li>
	<li id="menu-item-460394" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-460394 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/cryptocurrencies/">Crypto</a></li>
</ul>
</li>
<li id="menu-item-171850" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-171850 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel/">Travel</a>
<ul class="sub-menu">
	<li id="menu-item-522445" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-522445 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel/">All Travel News</a></li>
	<li id="menu-item-522446" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-522446 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/">Travel South Africa</a>
	<ul class="sub-menu">
		<li id="menu-item-522469" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522469 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/eastern-cape/">Eastern Cape</a></li>
		<li id="menu-item-522480" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522480 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/free-state/">Free State</a></li>
		<li id="menu-item-522464" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522464 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/gauteng/">Gauteng</a></li>
		<li id="menu-item-522470" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522470 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/kwazulu-natal/">KwaZulu-Natal</a></li>
		<li id="menu-item-522471" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522471 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/limpopo/">Limpopo</a></li>
		<li id="menu-item-522472" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522472 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/mpumalanga/">Mpumalanga</a></li>
		<li id="menu-item-522448" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522448 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/northern-cape/">Northern Cape</a></li>
		<li id="menu-item-522447" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522447 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/north-west/">North West</a></li>
		<li id="menu-item-522457" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522457 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/western-cape/">Western Cape</a></li>
	</ul>
</li>
	<li id="menu-item-522452" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522452 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-southern-africa/">Travel Southern Africa</a></li>
</ul>
</li>
<li id="menu-item-460405" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-460405 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/motoring/">Motoring</a></li>
<li id="menu-item-157618" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-157618 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/south-africans-abroad/">SA Abroad</a>
<ul class="sub-menu">
	<li id="menu-item-517216" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-517216 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/south-africans-abroad/">South Africans Abroad News</a></li>
	<li id="menu-item-157590" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-157590 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/">Move To ALL</a></li>
	<li id="menu-item-306223" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306223 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-australia/">Move to Australia</a></li>
	<li id="menu-item-324562" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-324562 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-canada/">Move to Canada</a></li>
	<li id="menu-item-306224" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306224 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-new-zealand/">Move to New Zealand</a></li>
	<li id="menu-item-306225" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306225 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-south-africa/">Move to South Africa</a></li>
	<li id="menu-item-306226" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306226 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-uk/">Move to the UK</a></li>
	<li id="menu-item-306227" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306227 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-usa/">Move to USA</a></li>
</ul>
</li>
<li id="menu-item-740082" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-740082 bgnav" data-item-row="default" ><a target="_blank" href="https://jobs.thesouthafrican.com/">Jobs</a></li>
<li id="menu-item-650897" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-650897 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/studentlife/">#studentlife</a>
<ul class="sub-menu">
	<li id="menu-item-666836" class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666836 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife/">Studentlife News</a></li>
	<li id="menu-item-666828" class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666828 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-entertainment/">Studentlife Entertainment</a></li>
	<li id="menu-item-666829" class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666829 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-food/">Studentlife Food</a></li>
	<li id="menu-item-666830" class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666830 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-health-fitness/">Studentlife Health and Fitness</a></li>
	<li id="menu-item-666831" class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666831 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-lifestyle/">Studentlife Lifestyle</a></li>
	<li id="menu-item-666832" class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666832 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-opinion/">Studentlife Opinion</a></li>
	<li id="menu-item-666833" class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666833 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-sport/">Studentlife Sport</a></li>
	<li id="menu-item-666834" class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666834 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-tech/">Studentlife Tech</a></li>
	<li id="menu-item-655736" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-655736 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/studentlife-c/student-jobs/">Student Jobs</a></li>
</ul>
</li>
</ul></div></div>
                    </div>
                </div>

                
                <div class="jeg_nav_col jeg_nav_center jeg_nav_normal">
                    <div class="item_wrap jeg_nav_alignright">
                                            </div>
                </div>

                
                <div class="jeg_nav_col jeg_nav_right jeg_nav_normal">
                    <div class="item_wrap jeg_nav_alignright">
                        <!-- Search Icon -->
<div class="jeg_nav_item jeg_search_wrapper search_icon jeg_search_popup_expand">
    <a href="#" class="jeg_search_toggle"><i class="fa fa-search"></i></a>
    <div class="jeg_search_form" target="_top">
 <script async src="https://cse.google.com/cse.js?cx=partner-pub-4139580975123521:1190203337"></script>
<div class="gcse-searchbox-only"></div>
</div>

<!-- jeg_search_hide with_result no_result -->
<div class="jeg_search_result jeg_search_hide with_result">
    <div class="search-result-wrapper">
    </div>
    <div class="search-link search-noresult">
        No Result    </div>
    <div class="search-link search-all-button">
        <i class="fa fa-search"></i> View All Result    </div>
</div>
<style>

.jeg_bottombar form.gsc-search-box.gsc-search-box-tools {
    opacity: 0;
    transition: ease all 1s;
}

 .jeg_search_expanded.jeg_bottombar form.gsc-search-box.gsc-search-box-tools {
    opacity: 1;
    transition: ease all 1s;
}

.jeg_bottombar form.gsc-search-box input {
    width: 100%;
    box-shadow: inset 0 0 15px 0 rgba(0,0,0,.08);
    padding: 0;
    margin: 0;
    border: 1px solid #eee !IMPORTANT;
}

.jeg_bottombar table.gsc-search-box td {
    padding: 0;
}

.jeg_bottombar .gsc-input-box {
    border: none;
}

.jeg_bottombar form.gsc-search-box input[type="text"] {
    background: none !important;
    text-indent: 9px !important;
    height: 36px  !important;
}

.jeg_bottombar .gsc-control-cse {
    padding: 0;
}

.jeg_bottombar button.gsc-search-button.gsc-search-button-v2 {
    padding: 0;
    background: no-repeat;
    color: #222;
    border: navajowhite;
}
	button.gsc-search-button.gsc-search-button-v2{cursor:pointer;}
.jeg_bottombar button.gsc-search-button.gsc-search-button-v2 svg {
    fill: #888;
}

.jeg_bottombar tbody {
    position: relative;
}

.jeg_bottombar td.gsc-search-button {
    right: 16px;
    position: absolute;
    top: 19px;
}
.jeg_bottombar td.gsc-search-button {
    width: auto;
}
.jeg_bottombar .gsc-search-box-tools .gsc-search-box .gsc-input {
    padding: 0;
}

.jeg_bottombar td.gsib_b {
    display: none;
}

.jeg_bottombar input[type="text"]:focus {
box-shadow: inset 0 2px 2px rgba(0,0,0,.05);
}



::placeholder {
    font-size: 13px !important;
}
.widget_search form.gsc-search-box.gsc-search-box-tools {
    opacity: 1;
}
 .widget_search td.gsc-search-button {
    width: auto;
    right: 15px;
    position: absolute;
    top: 12px;
}
.widget_search form.gsc-search-box input {
    box-shadow: inset 0 0 15px 0 rgba(0,0,0,.0);
    border: 1px solid #eee !IMPORTANT;
}
.jeg_archive_search form.gsc-search-box.gsc-search-box-tools {
    opacity: 1;
}

.jeg_archive_search form.gsc-search-box input {
    box-shadow: none;
}

.jeg_archive_search td.gsc-search-button {
    position: static;
    width: auto;
}

.jeg_archive_search button.gsc-search-button.gsc-search-button-v2 {
    background: red;
    color: #fff;
    height: 35px;
    line-height: normal;
    width: 100%;
}

.jeg_archive_search button.gsc-search-button.gsc-search-button-v2 svg {
    fill: #fff;
}

.jeg_archive_search td.gsc-search-button {
    width: 45px;
}

.jeg_archive_search .gsc-search-box-tools .gsc-search-box .gsc-input:focus {
    box-shadow:  inset 0 2px 2px rgba(0,0,0,.05);
}

.cstmsrc .gsc-search-box input{
height: 31px !important;
}

.cstmsrc .gsc-search-button-v2 {
    height: 40px;
    margin: 0;
    line-height: 28px;
    padding: 13px 17px !IMPORTANT;
}

.cstmsrc .gsc-search-button-v2 svg {
    font-size: 27px !important;
    width: 22px;
    height: 16px;
}
</style></div>                    </div>
                </div>

                        </div>
    </div>
</div></div><!-- /.jeg_header -->        </div>

        <div class="jeg_header_sticky">
            <div class="sticky_blankspace"></div>
<div class="jeg_header full">
    <div class="jeg_container">
        <div data-mode="fixed" class="jeg_stickybar jeg_navbar jeg_navbar_wrapper  jeg_navbar_fitwidth jeg_navbar_dark">
            <div class="container">
    <div class="jeg_nav_row">
        
            <div class="jeg_nav_col jeg_nav_left jeg_nav_grow">
                <div class="item_wrap jeg_nav_alignleft">
                    <div class="jeg_main_menu_wrapper">
<div class="jeg_nav_item jeg_mainmenu_wrap"><ul class="jeg_menu jeg_main_menu jeg_menu_style_1" data-animation="none"><li class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor current-menu-parent current-post-parent menu-item-has-children menu-item-165779 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/">News</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor current-menu-parent current-post-parent menu-item-542587 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/">South Africa (ALL)</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-157628 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/opinion/">Opinion</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521632 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/weather/">Weather</a></li>
	<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-467969 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/traffic-report/">Traffic Report</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542533 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/world-news/">World</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-556309 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/africa/">Africa</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542529 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/botswana/">Botswana</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542530 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/kenya/">Kenya</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542531 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/mozambique/">Mozambique</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542532 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/namibia/">Namibia</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542534 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/zambia/">Zambia</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542535 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/zimbabwe/">Zimbabwe</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-550009 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/offbeat/">Offbeat</a></li>
</ul>
</li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-263822 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/news/finance/">Finance</a></li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-64674 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/">Sport</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-416467 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/soccer/">Soccer</a>
	<ul class="sub-menu">
		<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-262227 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/soccer/psl-south-africa/">Premier Soccer League</a></li>
		<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-416469 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/soccer/epl/">English Premier League</a></li>
	</ul>
</li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-319764 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/rugby/">Rugby</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-595796 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/motoring/motorsport/">Motorsport</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521170 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/rugby-world-cup/">Rugby World Cup</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-319767 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/cricket/">Cricket</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-416468 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/sport/cycling/">Cycling</a></li>
</ul>
</li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-170416 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/">Lifestyle</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-249524 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/health-fitness/">Health &#038; Fitness</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-594836 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/entertainment/">Entertainment</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-206553 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/sa-tv-film/">SA TV &#038; Film</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-514576 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/food/">Food</a>
	<ul class="sub-menu">
		<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-623840 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/food/recipes/">Recipes</a></li>
	</ul>
</li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-624212 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/kids-parenting/">Parenting &#038; Kids</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-206552 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/art-artists/">Art &#038; Artists</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521177 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/horoscopes/">Horoscopes</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-239668 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/property/">Property</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-256507 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lotto-results/">Lotto Results</a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-517224 bgnav" data-item-row="default" ><a href="#">Marketplace</a>
	<ul class="sub-menu">
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-525979 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/marketplace/money-transfers/">Money Transfers</a></li>
	</ul>
</li>
</ul>
</li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-642137 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/food/recipes/">Recipes</a></li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-460265 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/">Tech</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521178 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/">All Tech News</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521173 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/online/">Online</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521172 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/mobile/">Mobile</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521171 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/gaming/">Gaming</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521175 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/science/">Science</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521176 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/space/">Space</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-460394 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/technology/cryptocurrencies/">Crypto</a></li>
</ul>
</li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-171850 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel/">Travel</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-522445 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel/">All Travel News</a></li>
	<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-522446 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/">Travel South Africa</a>
	<ul class="sub-menu">
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522469 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/eastern-cape/">Eastern Cape</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522480 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/free-state/">Free State</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522464 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/gauteng/">Gauteng</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522470 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/kwazulu-natal/">KwaZulu-Natal</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522471 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/limpopo/">Limpopo</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522472 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/mpumalanga/">Mpumalanga</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522448 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/northern-cape/">Northern Cape</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522447 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/north-west/">North West</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522457 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-south-africa/western-cape/">Western Cape</a></li>
	</ul>
</li>
	<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522452 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/travel-southern-africa/">Travel Southern Africa</a></li>
</ul>
</li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-460405 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/motoring/">Motoring</a></li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-157618 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/south-africans-abroad/">SA Abroad</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-517216 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/south-africans-abroad/">South Africans Abroad News</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-157590 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/">Move To ALL</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306223 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-australia/">Move to Australia</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-324562 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-canada/">Move to Canada</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306224 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-new-zealand/">Move to New Zealand</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306225 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-south-africa/">Move to South Africa</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306226 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-uk/">Move to the UK</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306227 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-usa/">Move to USA</a></li>
</ul>
</li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-740082 bgnav" data-item-row="default" ><a target="_blank" href="https://jobs.thesouthafrican.com/">Jobs</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-650897 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/studentlife/">#studentlife</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666836 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife/">Studentlife News</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666828 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-entertainment/">Studentlife Entertainment</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666829 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-food/">Studentlife Food</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666830 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-health-fitness/">Studentlife Health and Fitness</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666831 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-lifestyle/">Studentlife Lifestyle</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666832 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-opinion/">Studentlife Opinion</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666833 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-sport/">Studentlife Sport</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666834 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/tag/studentlife-tech/">Studentlife Tech</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-655736 bgnav" data-item-row="default" ><a href="https://www.thesouthafrican.com/studentlife-c/student-jobs/">Student Jobs</a></li>
</ul>
</li>
</ul></div></div>
                </div>
            </div>

            
            <div class="jeg_nav_col jeg_nav_center jeg_nav_normal">
                <div class="item_wrap jeg_nav_aligncenter">
                                    </div>
            </div>

            
            <div class="jeg_nav_col jeg_nav_right jeg_nav_normal">
                <div class="item_wrap jeg_nav_alignright">
                                    </div>
            </div>

                </div>
</div>        </div>
    </div>
</div>
        </div>

        <div class="jeg_navbar_mobile_wrapper">
            <div class="jeg_navbar_mobile" data-mode="scroll">
    <div class="jeg_mobile_bottombar jeg_mobile_midbar jeg_container normal">
    <div class="container">
        <div class="jeg_nav_row">
            
                <div class="jeg_nav_col jeg_nav_left jeg_nav_normal">
                    <div class="item_wrap jeg_nav_alignleft">
                        <div class="jeg_nav_item">
    <a href="#" class="toggle_btn jeg_mobile_toggle"><i class="fa fa-bars"></i></a>
</div>                    </div>
                </div>

                
                <div class="jeg_nav_col jeg_nav_center jeg_nav_grow">
                    <div class="item_wrap jeg_nav_aligncenter">
                        <div class="jeg_nav_item jeg_mobile_logo">
			<div class="site-title">
	    	<a href="https://www.thesouthafrican.com/">
		        <img class='jeg_logo_img' src="https://www.thesouthafrican.com/wp-content/uploads/2018/08/south_african_news_online.png" srcset="https://www.thesouthafrican.com/wp-content/uploads/2018/08/south_african_news_online.png 1x, https://www.thesouthafrican.com/wp-content/uploads/2018/08/south_african_news_online.png 2x" alt="The South African"data-light-src="https://www.thesouthafrican.com/wp-content/uploads/2018/08/south_african_news_online.png" data-light-srcset="https://www.thesouthafrican.com/wp-content/uploads/2018/08/south_african_news_online.png 1x, https://www.thesouthafrican.com/wp-content/uploads/2018/08/south_african_news_online.png 2x" data-dark-src="https://www.thesouthafrican.com/wp-content/themes/jnews/assets/img/logo_darkmode.png" data-dark-srcset="https://www.thesouthafrican.com/wp-content/themes/jnews/assets/img/logo_darkmode.png 1x, https://www.thesouthafrican.com/wp-content/themes/jnews/assets/img/logo_darkmode@2x.png 2x">		    </a>
	    </div>
	</div><div class="jeg_nav_item jeg_nav_html">
    <div style="font-size:12px;"><a href="https://www.thesouthafrican.com/terms-and-conditions/" target="_blank" rel="noopener noreferrer nofollow">T&C's</a></div></div>                    </div>
                </div>

                
                <div class="jeg_nav_col jeg_nav_right jeg_nav_normal">
                    <div class="item_wrap jeg_nav_alignright">
                        <div class="jeg_nav_item jeg_search_wrapper jeg_search_popup_expand">
    <a href="#" class="jeg_search_toggle"><i class="fa fa-search"></i></a>
	<div class="jeg_search_form" target="_top">
 <script async src="https://cse.google.com/cse.js?cx=partner-pub-4139580975123521:1190203337"></script>
<div class="gcse-searchbox-only"></div>
</div>

<!-- jeg_search_hide with_result no_result -->
<div class="jeg_search_result jeg_search_hide with_result">
    <div class="search-result-wrapper">
    </div>
    <div class="search-link search-noresult">
        No Result    </div>
    <div class="search-link search-all-button">
        <i class="fa fa-search"></i> View All Result    </div>
</div>
<style>

.jeg_bottombar form.gsc-search-box.gsc-search-box-tools {
    opacity: 0;
    transition: ease all 1s;
}

 .jeg_search_expanded.jeg_bottombar form.gsc-search-box.gsc-search-box-tools {
    opacity: 1;
    transition: ease all 1s;
}

.jeg_bottombar form.gsc-search-box input {
    width: 100%;
    box-shadow: inset 0 0 15px 0 rgba(0,0,0,.08);
    padding: 0;
    margin: 0;
    border: 1px solid #eee !IMPORTANT;
}

.jeg_bottombar table.gsc-search-box td {
    padding: 0;
}

.jeg_bottombar .gsc-input-box {
    border: none;
}

.jeg_bottombar form.gsc-search-box input[type="text"] {
    background: none !important;
    text-indent: 9px !important;
    height: 36px  !important;
}

.jeg_bottombar .gsc-control-cse {
    padding: 0;
}

.jeg_bottombar button.gsc-search-button.gsc-search-button-v2 {
    padding: 0;
    background: no-repeat;
    color: #222;
    border: navajowhite;
}
	button.gsc-search-button.gsc-search-button-v2{cursor:pointer;}
.jeg_bottombar button.gsc-search-button.gsc-search-button-v2 svg {
    fill: #888;
}

.jeg_bottombar tbody {
    position: relative;
}

.jeg_bottombar td.gsc-search-button {
    right: 16px;
    position: absolute;
    top: 19px;
}
.jeg_bottombar td.gsc-search-button {
    width: auto;
}
.jeg_bottombar .gsc-search-box-tools .gsc-search-box .gsc-input {
    padding: 0;
}

.jeg_bottombar td.gsib_b {
    display: none;
}

.jeg_bottombar input[type="text"]:focus {
box-shadow: inset 0 2px 2px rgba(0,0,0,.05);
}



::placeholder {
    font-size: 13px !important;
}
.widget_search form.gsc-search-box.gsc-search-box-tools {
    opacity: 1;
}
 .widget_search td.gsc-search-button {
    width: auto;
    right: 15px;
    position: absolute;
    top: 12px;
}
.widget_search form.gsc-search-box input {
    box-shadow: inset 0 0 15px 0 rgba(0,0,0,.0);
    border: 1px solid #eee !IMPORTANT;
}
.jeg_archive_search form.gsc-search-box.gsc-search-box-tools {
    opacity: 1;
}

.jeg_archive_search form.gsc-search-box input {
    box-shadow: none;
}

.jeg_archive_search td.gsc-search-button {
    position: static;
    width: auto;
}

.jeg_archive_search button.gsc-search-button.gsc-search-button-v2 {
    background: red;
    color: #fff;
    height: 35px;
    line-height: normal;
    width: 100%;
}

.jeg_archive_search button.gsc-search-button.gsc-search-button-v2 svg {
    fill: #fff;
}

.jeg_archive_search td.gsc-search-button {
    width: 45px;
}

.jeg_archive_search .gsc-search-box-tools .gsc-search-box .gsc-input:focus {
    box-shadow:  inset 0 2px 2px rgba(0,0,0,.05);
}

.cstmsrc .gsc-search-box input{
height: 31px !important;
}

.cstmsrc .gsc-search-button-v2 {
    height: 40px;
    margin: 0;
    line-height: 28px;
    padding: 13px 17px !IMPORTANT;
}

.cstmsrc .gsc-search-button-v2 svg {
    font-size: 27px !important;
    width: 22px;
    height: 16px;
}
</style></div>                    </div>
                </div>

                        </div>
    </div>
</div></div>
<div class="sticky_blankspace" style="height: 60px;"></div>        </div>    <div class="post-wrapper">

        <div class="post-wrap" >

            
            <div class="jeg_main ">
                <div class="jeg_container">
                    <div class="jeg_content jeg_singlepage">
    <div class="container">

        <div class="jeg_ad jeg_article_top jnews_article_top_ads">
            <div class='ads-wrapper  jeg_ads_hide_desktop'></div>        </div>

        
                        <div class="jeg_breadcrumbs jeg_breadcrumb_container">
                <div id="breadcrumbs"><span class="">
                <a href="https://www.thesouthafrican.com">Home</a>
            </span><i class="fa fa-angle-right"></i><span class="breadcrumb_last_link">
                <a href="https://www.thesouthafrican.com/news/">News</a>
            </span></div>            </div>
            
            <div class="entry-header">
	            
                <h1 class="jeg_post_title">Map reveals &#8216;worst COVID super-spreader events&#8217; &#8211; SA has had two of them</h1>

                                    <h2 class="jeg_post_subtitle">Super-spreader events are identified as gatherings that have intensified the spread of COVID-19 - and yes, they&#039;ve happened in South Africa.</h2>
                
                <div class="jeg_meta_container"><div class="jeg_post_meta jeg_post_meta_2">

						<div class="jeg_meta_author">
				<img alt='Tom Head' src='https://secure.gravatar.com/avatar/5fbed6359ea3f684189f8b8bb60f409b?s=80&#038;d=mm&#038;r=g' srcset='https://secure.gravatar.com/avatar/5fbed6359ea3f684189f8b8bb60f409b?s=160&#038;d=mm&#038;r=g 2x' class='avatar avatar-80 photo' height='80' width='80' loading='lazy'/>				<span class="meta_text">by</span>
				<a href="https://www.thesouthafrican.com/author/tom-head/">Tom Head</a>			</div>
			
			<div class="jeg_meta_date">
			<a href="https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/">2020-10-08 18:45</a>
		</div>
	
			<div class="jeg_meta_category">
			<span><span class="meta_text">in</span>
				<a href="https://www.thesouthafrican.com/news/" rel="category tag">News</a>			</span>
		</div>
	
	
	<div class="meta_right">
					</div>
</div>
</div>
            </div>

            <div class="row">
                <div class="jeg_main_content col-md-8">

                    <div class="jeg_inner_content">
                        <div class="jeg_featured featured_image"><div class="thumbnail-container" style="padding-bottom:70.667%"><img width="1200" height="848" src="https://gcs.thesouthafrican.com/2020/10/b8b6edf5-super-spreader-events-sa-38.png" class="attachment-jnews-750x536 size-jnews-750x536 wp-post-image wp-stateless-item" alt="SUPER-SPREADER EVENTS SA 38" loading="lazy" srcset="https://gcs.thesouthafrican.com/2020/10/b8b6edf5-super-spreader-events-sa-38.png 1200w, https://gcs.thesouthafrican.com/2020/10/b8b6edf5-super-spreader-events-sa-38-768x543.png 768w, https://gcs.thesouthafrican.com/2020/10/b8b6edf5-super-spreader-events-sa-38-750x530.png 750w, https://gcs.thesouthafrican.com/2020/10/b8b6edf5-super-spreader-events-sa-38-120x86.png 120w" sizes="(max-width: 1200px) 100vw, 1200px" data-image-size="jnews-750x536" data-stateless-media-bucket="gcs.thesouthafrican.com" data-stateless-media-name="2020/10/b8b6edf5-super-spreader-events-sa-38.png" /></div><p class="wp-caption-text">Photo: London School of Hygiene & Tropical Medicine / Kepler</p></div>
                        
                        <div class="jeg_ad jeg_article jnews_content_top_ads "><div class='ads-wrapper  '><div class='ads_code'><div class="sharethis-inline-share-buttons"></div>
</div></div></div>
                        <div class="entry-content no-share">
                            <div class="jeg_share_button share-float jeg_sticky_share clearfix share-monocrhome">
                                                            </div>

                            <div class="content-inner ">
                                
<p>Over one million people have died of COVID-19 since the pandemic began at the start of the year. This deadly disease is highly contagious, but some gatherings or incidents can help create an explosion in new cases. These are known as &#8216;super-spreader events&#8217; &#8211; <a href="https://superspreadingdatabase.github.io/sse/sse-bubble-map.html" target="_blank" rel="noreferrer noopener">and the London School of Hygiene and Tropical Medicine has been mapping them all</a>.</p>



<h2 id="h-mapping-the-covid-19-outbreak">Mapping the COVID-19 outbreak</h2>



<p>Hundreds of these &#8216;red dots&#8217; have popped up on the map since the end of February &#8211; one was even added this week. The visual data is alarming, to say the least, and it reveals that South Africa has hosted two super-spreader events itself.</p>



<p>It&#8217;s also worth noting&#8230;</p><div class="jeg_ad jeg_ad_article jnews_content_inline_ads  "><div class='ads-wrapper align-center '><div class='ads_code'><div id='m-mpu1'>
<script>
googletag.cmd.push(function() { googletag.display('m-mpu1'); });
</script>
</div></div></div></div>



<ul><li>The US has had dozens of these deadly events, more than any other nation on Earth. Not really a surprise, hey?</li><li>The single biggest &#8216;super-spreading case&#8217; registered was in Milan, Italy: Around 7 000 people tested positive after attending the same football match in March.</li><li>On Tuesday 6 October, Germany declared the map&#8217;s most recent super-spreading incident. About 1 400 people at a meat processing plant in Gutersloh have been infected with COVID-19.</li><li>Super-spreader events occurred in both the Arctic Circle (Tromso in Norway) and one of the most southerly towns in the world (Ushuaia, Argentina). Both were caused by disembarking crews from sea vessels.</li></ul>



<h2 id="h-map-where-have-super-spreading-events-taken-place">Map: Where have super-spreading events taken place?</h2>



<figure class="wp-block-image size-large"><img loading="lazy" width="1290" height="614" src="https://gcs.thesouthafrican.com/2020/10/b52ad39d-super-spreader-events-sa.png" alt="" class="wp-image-753498" srcset="https://gcs.thesouthafrican.com/2020/10/b52ad39d-super-spreader-events-sa.png 1290w, https://gcs.thesouthafrican.com/2020/10/b52ad39d-super-spreader-events-sa-1200x571.png 1200w, https://gcs.thesouthafrican.com/2020/10/b52ad39d-super-spreader-events-sa-768x366.png 768w, https://gcs.thesouthafrican.com/2020/10/b52ad39d-super-spreader-events-sa-750x357.png 750w" sizes="(max-width: 1290px) 100vw, 1290px" /><figcaption>Photo: London School of Hygiene &amp; Tropical Medicine / Kepler</figcaption></figure>



<h2 id="h-covid-19-super-spreading-in-south-africa"><strong>COVID-19: Super-spreading in South Africa</strong> </h2>



<h2 id="h-jerusalem-prayer-breakfast-bloemfontein"><em>Jerusalem Prayer Breakfast, Bloemfontein</em></h2>



<p>Our first serious brush with COVID-19 occurred in March. It was the month our &#8216;patient zero&#8217; was discovered, and cases slowly began to increase in the first couple of weeks. But the spread of the virus was kicked into fifth gear by this now-infamous prayer breakfast, held in Bloemfontein. <a href="https://www.thesouthafrican.com/news/kenneth-meshoe-acdp-covid-19-positive/">Two senior ACDP members were also in attendance</a>.</p>



<p>A total of 67 cases were traced to this religious event, shaping the government&#8217;s lockdown laws on worship.</p>



<h2 id="h-funeral-gathering-nelson-mandela-bay"><em>Funeral gathering, Nelson Mandela Bay</em></h2>



<p>On Saturday 4 April, dozens of mourners risked spreading the grief as well as the deadly onset of COVID-19, when 54 people who tested positive for the disease were found to have attended the same funeral. This was reported just days after SA&#8217;s first coronavirus death was registered, and it could have been much worse had it happened during flu season.</p>



<h2 id="h-there-was-one-other-super-spreader-event-in-africa"><em>There was one other &#8216;super-spreader event&#8217; in Africa</em></h2>



<p>The city of Tema in Ghana is the only other location on the continent with a super-spreader event, and it dwarves anything that was seen in SA. An outbreak at a fish-processing plant infected 533 people on Monday 20 April. The virus was able to thrive in a poorly-ventilated indoor setting.</p><div class="jeg_ad jeg_ad_article jnews_content_inline_2_ads  "><div class='ads-wrapper align-center '><div class='ads_code'><div id='m-mpu2'>
<script>
googletag.cmd.push(function() { googletag.display('m-mpu2'); });
</script>
</div></div></div></div>
                                
	                            								<div class="footer-message">Help support journalists, the guardians of independent journalism, through our <strong>student media initiative that gives a voice to students and their generation! <a href="https://www.backabuddy.co.za/champion/project/the-south-african" target="_blank" rel="nofollow">Find out more...</a></div>                                                                    <div class="jeg_post_tags"><span>Tags:</span> <a href="https://www.thesouthafrican.com/tag/bsc/" rel="tag">BSC</a><a href="https://www.thesouthafrican.com/tag/coronavirus/" rel="tag">coronavirus</a><a href="https://www.thesouthafrican.com/tag/covid-19/" rel="tag">COVID-19</a><a href="https://www.thesouthafrican.com/tag/south-africa/" rel="tag">South Africa</a></div>
                                								<a href="//www.dmca.com/Protection/Status.aspx?ID=90d9fe89-9b80-44a3-ad45-523ce9cb9615"  title="DMCA.com Protection Status" class="dmca-badge"> <img src ="https://images.dmca.com/Badges/dmca_protected_sml_120aj.png?ID=90d9fe89-9b80-44a3-ad45-523ce9cb9615"  alt="DMCA.com Protection Status" /></a>  <script src="https://images.dmca.com/Badges/DMCABadgeHelper.min.js"> </script>
<div class="fb-comments" data-href="https://www.thesouthafrican.com/news/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases/" data-width="100%" data-numposts="2"></div>
<div id="taboola-below-article-thumbnails"></div>                             </div>

                            
                                                    </div>

                        <div class="jeg_ad jeg_article jnews_content_bottom_ads jeg_ads_hide_desktop jeg_ads_hide_tab"><div class='ads-wrapper  jeg_ads_hide_desktop jeg_ads_hide_tab'></div></div><div class="jnews_prev_next_container"></div><div class="jnews_author_box_container "></div><div class="jnews_related_post_container"></div><div class="jnews_popup_post_container"></div><div class="jnews_comment_container"></div>                    </div>

                </div>
                
<div class="jeg_sidebar   col-md-4">
    <div class="widget_text widget wthide widget_custom_html" id="custom_html-26"><div class="jeg_block_heading jeg_block_heading_6 jnews_5f8745aaebdca"><h3 class="jeg_block_title"><span>mpu1</span></h3></div><div class="textwidget custom-html-widget"><div id='mpud-1'>
<script>
googletag.cmd.push(function() { googletag.display('mpud-1'); });
</script>
</div></div></div><div class="widget widget_mc4wp_form_widget" id="mc4wp_form_widget-3"><script>(function() {
	window.mc4wp = window.mc4wp || {
		listeners: [],
		forms: {
			on: function(evt, cb) {
				window.mc4wp.listeners.push(
					{
						event   : evt,
						callback: cb
					}
				);
			}
		}
	}
})();
</script><!-- Mailchimp for WordPress v4.8.1 - https://wordpress.org/plugins/mailchimp-for-wp/ --><form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-245806" method="post" data-id="245806" data-name="Subscribe to our newsletter" ><div class="mc4wp-form-fields"><h3>
  SUBSCRIBE to our Newsletter
</h3>
<p>
	<input type="email" name="EMAIL" placeholder="Your email address" required />
</p>

<p>
  <input type="submit" value="Subscribe" />
</p>
<p style="margin-top:-10px;">
  <span style="font-size:11px;font-weight:normal">
<a href="/terms-and-conditions/" target="_blank" rel="nofollow">Terms and Conditions</a>
</span>
</p>
</div><label style="display: none !important;">Leave this field empty if you're human: <input type="text" name="_mc4wp_honeypot" value="" tabindex="-1" autocomplete="off" /></label><input type="hidden" name="_mc4wp_timestamp" value="1602700714" /><input type="hidden" name="_mc4wp_form_id" value="245806" /><input type="hidden" name="_mc4wp_form_element_id" value="mc4wp-form-1" /><div class="mc4wp-response"></div></form><!-- / Mailchimp for WordPress Plugin --></div><div class="widget_text widget wthide widget_custom_html" id="custom_html-27"><div class="jeg_block_heading jeg_block_heading_6 jnews_5f8745aaec4ec"><h3 class="jeg_block_title"><span>mpu2</span></h3></div><div class="textwidget custom-html-widget"><div id='mpud-2'>
<script>
googletag.cmd.push(function() { googletag.display('mpud-2'); });
</script>
</div></div></div><div class="widget widget_jnews_module_block_1" id="jnews_module_block_1-2"><div  class="jeg_postblock_1 jeg_postblock jeg_module_hook jeg_pagination_disable jeg_col_1o3 jnews_module_753469_0_5f8745aaeca1f  jeg_pb_boxed normal " data-unique="jnews_module_753469_0_5f8745aaeca1f">
                <div class="jeg_block_heading jeg_block_heading_6 jeg_subcat_right">
                    <h3 class="jeg_block_title"><span>Latest <strong>Posts</strong></span></h3>
                    
                </div>
                <div class="jeg_block_container jeg_load_more_flag">
                
                <div class="jeg_posts">
                <article class="jeg_post jeg_pl_lg_1 format-standard">
                    <div class="jeg_thumb">
                
                <a href="https://www.thesouthafrican.com/lifestyle/sa-tv-film/watch-the-latest-on-uzalo-wednesday-14-october-2020-e158-s6/"><div class="thumbnail-container  size-500 "><img width="360" height="180" src="https://gcs.thesouthafrican.com/2020/10/80cdd3ea-uzalo-episode-wednesday-360x180.jpg" class="attachment-jnews-360x180 size-jnews-360x180 wp-post-image wp-stateless-item" alt="Wednesday&#039;s Episode of Uzalo." loading="lazy" data-image-size="jnews-360x180" data-stateless-media-bucket="gcs.thesouthafrican.com" data-stateless-media-name="2020/10/80cdd3ea-uzalo-episode-wednesday.jpg" /></div></a>
                <div class="jeg_post_category">
                    <span><a href="https://www.thesouthafrican.com/lifestyle/sa-tv-film/" class="category-sa-tv-film">SA TV and Film</a></span>
                </div>
            </div>
            <div class="jeg_postblock_content">
                <h3 property="headline" class="jeg_post_title">
                    <a href="https://www.thesouthafrican.com/lifestyle/sa-tv-film/watch-the-latest-on-uzalo-wednesday-14-october-2020-e158-s6/">WATCH: The latest on Uzalo, Wednesday 14 October 2020 &#8211; E158 S6</a>
                </h3>
                <div class="jeg_post_meta"><div class="jeg_meta_author"><span class="by">by</span> <a href="https://www.thesouthafrican.com/author/tvsa/">SA TV and Soapies</a></div><div class="jeg_meta_date"><a href="https://www.thesouthafrican.com/lifestyle/sa-tv-film/watch-the-latest-on-uzalo-wednesday-14-october-2020-e158-s6/"><i class="fa fa-clock-o"></i> 2020-10-14 20:15</a></div></div>
                <div class="jeg_post_excerpt">
                    <p>Don't get left behind, catch up on Uzalo now!</p>
                    <a href="https://www.thesouthafrican.com/lifestyle/sa-tv-film/watch-the-latest-on-uzalo-wednesday-14-october-2020-e158-s6/" class="jeg_readmore">Read more</a>
                </div>
            </div>
                </article>
                <div class="jeg_postsmall">
                    <article class="jeg_post jeg_pl_sm format-standard">
                <div class="jeg_thumb">
                    
                    <a href="https://www.thesouthafrican.com/technology/space/nasa-artemis-eight-nation-space-coalition/">
                        <div class="thumbnail-container  size-715 "><img width="120" height="86" src="https://gcs.thesouthafrican.com/2020/10/b63fdaf8-nasa-artemis-120x86.jpg" class="attachment-jnews-120x86 size-jnews-120x86 wp-post-image wp-stateless-item" alt="NASA Artemis Project" loading="lazy" srcset="https://gcs.thesouthafrican.com/2020/10/b63fdaf8-nasa-artemis-120x86.jpg 120w, https://gcs.thesouthafrican.com/2020/10/b63fdaf8-nasa-artemis-1200x858.jpg 1200w, https://gcs.thesouthafrican.com/2020/10/b63fdaf8-nasa-artemis-350x250.jpg 350w" sizes="(max-width: 120px) 100vw, 120px" data-image-size="jnews-120x86" data-stateless-media-bucket="gcs.thesouthafrican.com" data-stateless-media-name="2020/10/b63fdaf8-nasa-artemis-scaled.jpg" /></div>
                    </a>
                </div>
                <div class="jeg_postblock_content">
                    <h3 class="jeg_post_title">
                        <a href="https://www.thesouthafrican.com/technology/space/nasa-artemis-eight-nation-space-coalition/">Artemis Accords: NASA announces eight-nation space coalition</a>
                    </h3>
                    <div class="jeg_post_meta"><div class="jeg_meta_date"><a href="https://www.thesouthafrican.com/technology/space/nasa-artemis-eight-nation-space-coalition/" ><i class="fa fa-clock-o"></i> 2020-10-14 20:13</a></div></div>
                </div>
            </article><article class="jeg_post jeg_pl_sm format-standard">
                <div class="jeg_thumb">
                    
                    <a href="https://www.thesouthafrican.com/technology/gaming/fall-guys-season-2-update/">
                        <div class="thumbnail-container  size-715 "><img width="120" height="86" src="https://gcs.thesouthafrican.com/2020/10/e518c7b3-fall-guys-2-120x86.jpg" class="attachment-jnews-120x86 size-jnews-120x86 wp-post-image wp-stateless-item" alt="Fall Guys 2" loading="lazy" srcset="https://gcs.thesouthafrican.com/2020/10/e518c7b3-fall-guys-2-120x86.jpg 120w, https://gcs.thesouthafrican.com/2020/10/e518c7b3-fall-guys-2-1200x858.jpg 1200w, https://gcs.thesouthafrican.com/2020/10/e518c7b3-fall-guys-2-350x250.jpg 350w" sizes="(max-width: 120px) 100vw, 120px" data-image-size="jnews-120x86" data-stateless-media-bucket="gcs.thesouthafrican.com" data-stateless-media-name="2020/10/e518c7b3-fall-guys-2.jpg" /></div>
                    </a>
                </div>
                <div class="jeg_postblock_content">
                    <h3 class="jeg_post_title">
                        <a href="https://www.thesouthafrican.com/technology/gaming/fall-guys-season-2-update/">Fall Guys Season 2: New major update is here</a>
                    </h3>
                    <div class="jeg_post_meta"><div class="jeg_meta_date"><a href="https://www.thesouthafrican.com/technology/gaming/fall-guys-season-2-update/" ><i class="fa fa-clock-o"></i> 2020-10-14 20:00</a></div></div>
                </div>
            </article>
                </div>
            </div>
                <div class='module-overlay'>
                <div class='preloader_type preloader_dot'>
                    <div class="module-preloader jeg_preloader dot">
                        <span></span><span></span><span></span>
                    </div>
                    <div class="module-preloader jeg_preloader circle">
                        <div class="jnews_preloader_circle_outer">
                            <div class="jnews_preloader_circle_inner"></div>
                        </div>
                    </div>
                    <div class="module-preloader jeg_preloader square">
                        <div class="jeg_square"><div class="jeg_square_inner"></div></div>
                    </div>
                </div>
            </div>
            </div>
            <div class="jeg_block_navigation">
                <div class='navigation_overlay'><div class='module-preloader jeg_preloader'><span></span><span></span><span></span></div></div>
                
                
            </div>
                
                <script>var jnews_module_753469_0_5f8745aaeca1f = {"header_icon":"","first_title":"Latest ","second_title":"Posts","url":"","header_type":"heading_6","header_background":"","header_secondary_background":"","header_text_color":"","header_line_color":"","header_accent_color":"","header_filter_category":"","header_filter_author":"","header_filter_tag":"","header_filter_text":"All","post_type":"post","content_type":"all","number_post":"3","post_offset":"0","unique_content":"disable","include_post":"","exclude_post":"","include_category":"","exclude_category":"183438","include_author":"","include_tag":"","exclude_tag":"270586","sort_by":"latest","date_format":"custom","date_format_custom":"Y-m-d H:i","excerpt_length":"20","excerpt_ellipsis":"...","force_normal_image_load":"","pagination_mode":"disable","pagination_nextprev_showtext":"","pagination_number_post":"5","pagination_scroll_limit":"0","boxed":"1","boxed_shadow":"","el_id":"","el_class":"","scheme":"normal","column_width":"auto","title_color":"","accent_color":"","alt_color":"","excerpt_color":"","css":"","post_tag":"","tribe_events_cat":"","paged":1,"column_class":"jeg_col_1o3","class":"jnews_block_1"};</script>
            </div></div><div class="widget_text widget wthide widget_custom_html" id="custom_html-42"><div class="jeg_block_heading jeg_block_heading_6 jnews_5f8745ab14597"><h3 class="jeg_block_title"><span>mpu3</span></h3></div><div class="textwidget custom-html-widget"><div id='mpu3-d'>
<script>
googletag.cmd.push(function() { googletag.display('mpu3-d'); });
</script>
</div></div></div><div class="widget_text widget wthide widget_custom_html" id="custom_html-41"><div class="jeg_block_heading jeg_block_heading_6 jnews_5f8745ab14619"><h3 class="jeg_block_title"><span>mpu4</span></h3></div><div class="textwidget custom-html-widget"><div id='mpu4-d'>
<script>
googletag.cmd.push(function() { googletag.display('mpu4-d'); });
</script>
</div></div></div></div>            </div>

        
        <div class="jeg_ad jeg_article jnews_article_bottom_ads">
            <div class='ads-wrapper  '></div>        </div>

    </div>

</div>
                </div>
            </div>

            <div id="post-body-class" class="post-template-default single single-post postid-753469 single-format-standard wp-embed-responsive wp-schema-pro-2.1.2 jeg_toggle_dark jeg_single_tpl_2 jnews jeg_boxed jsc_normal elementor-default elementor-kit-756337"></div>

            
        </div>

        <div class="post-ajax-overlay">
    <div class="preloader_type preloader_dot">
        <div class="newsfeed_preloader jeg_preloader dot">
            <span></span><span></span><span></span>
        </div>
        <div class="newsfeed_preloader jeg_preloader circle">
            <div class="jnews_preloader_circle_outer">
                <div class="jnews_preloader_circle_inner"></div>
            </div>
        </div>
        <div class="newsfeed_preloader jeg_preloader square">
            <div class="jeg_square"><div class="jeg_square_inner"></div></div>
        </div>
    </div>
</div>
    </div>
        <div class="footer-holder" id="footer" data-id="footer">
            <div class="jeg_footer jeg_footer_1 dark">
    <div class="jeg_footer_container jeg_container">
        <div class="jeg_footer_content">
            <div class="container">

                <div class="row">
                    <div class="jeg_footer_primary clearfix">
                        <div class="col-md-4 footer_column">
                            <div class="footer_widget widget_text" id="text-2">			<div class="textwidget"><p>TheSouthAfrican.com is all about South Africa and the stories that affect South Africans, wherever they are in the world.</p>
<p>We&#8217;re independent.<br />
No agenda.<br />
No Bias.</p>
</div>
		</div><div class="footer_widget widget_jnews_social" id="jnews_social-2">
        <div class="jeg_social_wrap ">
			                <p>
					<strong>Follow Us</strong>                </p>
			
            <div class="socials_widget   rounded">
				<a href="https://www.facebook.com/thesouthafrican/" target="_blank" class="jeg_facebook">
                                            <i class="fa fa-facebook"></i>
                                            
                                        </a><a href="https://twitter.com/thesanews" target="_blank" class="jeg_twitter">
                                            <i class="fa fa-twitter"></i>
                                            
                                        </a><a href="https://www.instagram.com/the.south.african.za/" target="_blank" class="jeg_instagram">
                                            <i class="fa fa-instagram"></i>
                                            
                                        </a><a href="https://www.youtube.com/c/TheSouthAfrican-tv?sub_confirmation=1" target="_blank" class="jeg_youtube">
                                            <i class="fa fa-youtube-play"></i>
                                            
                                        </a>            </div>

						<style scoped></style>        </div>

		</div><div class="widget_text footer_widget widget_custom_html" id="custom_html-34"><div class="textwidget custom-html-widget">Follow us on <a href="https://flipboard.com/@thesouthafrica" target="_blank" rel="noopener noreferrer">Flipboard</a> or visit our <a href="https://en.wikipedia.org/wiki/The_South_African" target="_blank" rel="noopener noreferrer">Wikipedia Page</a></div></div>                        </div>
                        <div class="col-md-4 footer_column">
                            <div class="widget_text footer_widget widget_custom_html" id="custom_html-21"><div class="textwidget custom-html-widget"><div style=""><a title="IAB South Africa formely DMMA" href="https://www.iabsa.net/" target="blank" rel="nofollow noopener noreferrer"> <img src="https://gcs.thesouthafrican.com/2017/06/iab_south_africa.jpg" alt="IAB South Africa"/></a></div>
<div style="max-width:250px;margin-top:20px;"><a title="Press Council" href="https://www.presscouncil.org.za/" target="blank" rel="nofollow noopener noreferrer"> <img src="https://gcs.thesouthafrican.com/2020/08/b326225b-press-council-south-africa.jpg" alt="IAB South Africa"/></a></div></div></div>                        </div>
                        <div class="col-md-4 footer_column">
                            <div class="footer_widget widget_text" id="text-3">			<div class="textwidget"><p><strong>Our offices are for administrative purposes only, no visitors will be accepted without an appointment.</strong></p>
<p><strong>South Africa</strong>&#8211; Blue Sky Publications (Pty) Ltd T/A TheSouthAfrican Number: 2005/028472/07.<br />
Address: Regus Business Centre<br />
1st Floor, Block B, North Park, Black River Park, 2 Fir Street, Observatory, Cape Town, 7925, South Africa<br />
Postal: Blue Sky Publications (Pty) Ltd T/A TheSouthAfrican, PO Box 44354, Claremont, 7735, South Africa</p>
<p><strong>United Kingdom</strong>– Blue Sky Publications Ltd – Company Registration Number: 04683692.<br />
Address: Riverbank House, 1 Putney Bridge Approach, London, SW6 4TJ</p>
</div>
		</div>                        </div>
                    </div>
                </div>


                
                <div class="jeg_footer_secondary clearfix">

                    <!-- secondary footer right -->

                    <div class="footer_right">

                        
                        
                                                    <p class="copyright"> <a href="https://en.wikipedia.org/wiki/The_South_African" target="_blank">The South African Wikipedia</a><br>
Copyright © Blue Sky Publications Ltd. All Rights Reserved. <br>thesouthafrican.com is
a division of Blue Sky Publications Ltd. 
Reproduction without permission prohibited. <a href="//www.dmca.com/Protection/Status.aspx?ID=90d9fe89-9b80-44a3-ad45-523ce9cb9615" title="DMCA.com Protection Status" class="dmca-badge"> <img src="https://images.dmca.com/Badges/dmca_protected_sml_120aj.png?ID=90d9fe89-9b80-44a3-ad45-523ce9cb9615" alt="DMCA.com Protection Status" /></a>   <br><br><br> </p>
                        
                    </div>

                    <!-- secondary footer left -->

                    
                    
                    
                </div> <!-- secondary menu -->

                

            </div>
        </div>
    </div>
</div><!-- /.footer -->
        </div>

        <div class="jscroll-to-top">
        	<a href="#back-to-top" class="jscroll-to-top_link"><i class="fa fa-angle-up"></i></a>
        </div>
    </div>

    <!-- Mobile Navigation
    ============================================= -->
<div id="jeg_off_canvas" class="normal">
    <a href="#" class="jeg_menu_close"><i class="jegicon-cross"></i></a>
    <div class="jeg_bg_overlay"></div>
    <div class="jeg_mobile_wrapper">
        <div class="nav_wrap">
    <div class="item_main">
        <!-- Search Form -->
<div class="jeg_aside_item jeg_search_wrapper jeg_search_no_expand round">
    <a href="#" class="jeg_search_toggle"><i class="fa fa-search"></i></a>
    <div class="jeg_search_form" target="_top">
 <script async src="https://cse.google.com/cse.js?cx=partner-pub-4139580975123521:1190203337"></script>
<div class="gcse-searchbox-only"></div>
</div>

<!-- jeg_search_hide with_result no_result -->
<div class="jeg_search_result jeg_search_hide with_result">
    <div class="search-result-wrapper">
    </div>
    <div class="search-link search-noresult">
        No Result    </div>
    <div class="search-link search-all-button">
        <i class="fa fa-search"></i> View All Result    </div>
</div>
<style>

.jeg_bottombar form.gsc-search-box.gsc-search-box-tools {
    opacity: 0;
    transition: ease all 1s;
}

 .jeg_search_expanded.jeg_bottombar form.gsc-search-box.gsc-search-box-tools {
    opacity: 1;
    transition: ease all 1s;
}

.jeg_bottombar form.gsc-search-box input {
    width: 100%;
    box-shadow: inset 0 0 15px 0 rgba(0,0,0,.08);
    padding: 0;
    margin: 0;
    border: 1px solid #eee !IMPORTANT;
}

.jeg_bottombar table.gsc-search-box td {
    padding: 0;
}

.jeg_bottombar .gsc-input-box {
    border: none;
}

.jeg_bottombar form.gsc-search-box input[type="text"] {
    background: none !important;
    text-indent: 9px !important;
    height: 36px  !important;
}

.jeg_bottombar .gsc-control-cse {
    padding: 0;
}

.jeg_bottombar button.gsc-search-button.gsc-search-button-v2 {
    padding: 0;
    background: no-repeat;
    color: #222;
    border: navajowhite;
}
	button.gsc-search-button.gsc-search-button-v2{cursor:pointer;}
.jeg_bottombar button.gsc-search-button.gsc-search-button-v2 svg {
    fill: #888;
}

.jeg_bottombar tbody {
    position: relative;
}

.jeg_bottombar td.gsc-search-button {
    right: 16px;
    position: absolute;
    top: 19px;
}
.jeg_bottombar td.gsc-search-button {
    width: auto;
}
.jeg_bottombar .gsc-search-box-tools .gsc-search-box .gsc-input {
    padding: 0;
}

.jeg_bottombar td.gsib_b {
    display: none;
}

.jeg_bottombar input[type="text"]:focus {
box-shadow: inset 0 2px 2px rgba(0,0,0,.05);
}



::placeholder {
    font-size: 13px !important;
}
.widget_search form.gsc-search-box.gsc-search-box-tools {
    opacity: 1;
}
 .widget_search td.gsc-search-button {
    width: auto;
    right: 15px;
    position: absolute;
    top: 12px;
}
.widget_search form.gsc-search-box input {
    box-shadow: inset 0 0 15px 0 rgba(0,0,0,.0);
    border: 1px solid #eee !IMPORTANT;
}
.jeg_archive_search form.gsc-search-box.gsc-search-box-tools {
    opacity: 1;
}

.jeg_archive_search form.gsc-search-box input {
    box-shadow: none;
}

.jeg_archive_search td.gsc-search-button {
    position: static;
    width: auto;
}

.jeg_archive_search button.gsc-search-button.gsc-search-button-v2 {
    background: red;
    color: #fff;
    height: 35px;
    line-height: normal;
    width: 100%;
}

.jeg_archive_search button.gsc-search-button.gsc-search-button-v2 svg {
    fill: #fff;
}

.jeg_archive_search td.gsc-search-button {
    width: 45px;
}

.jeg_archive_search .gsc-search-box-tools .gsc-search-box .gsc-input:focus {
    box-shadow:  inset 0 2px 2px rgba(0,0,0,.05);
}

.cstmsrc .gsc-search-box input{
height: 31px !important;
}

.cstmsrc .gsc-search-button-v2 {
    height: 40px;
    margin: 0;
    line-height: 28px;
    padding: 13px 17px !IMPORTANT;
}

.cstmsrc .gsc-search-button-v2 svg {
    font-size: 27px !important;
    width: 22px;
    height: 16px;
}
</style></div><div class="jeg_aside_item">
    <ul class="jeg_mobile_menu"><li class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor current-menu-parent current-post-parent menu-item-has-children menu-item-165779"><a href="https://www.thesouthafrican.com/news/">News</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor current-menu-parent current-post-parent menu-item-542587"><a href="https://www.thesouthafrican.com/news/">South Africa (ALL)</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-157628"><a href="https://www.thesouthafrican.com/opinion/">Opinion</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521632"><a href="https://www.thesouthafrican.com/news/weather/">Weather</a></li>
	<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-467969"><a href="https://www.thesouthafrican.com/traffic-report/">Traffic Report</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542533"><a href="https://www.thesouthafrican.com/news/world-news/">World</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-556309"><a href="https://www.thesouthafrican.com/news/africa/">Africa</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542529"><a href="https://www.thesouthafrican.com/news/botswana/">Botswana</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542530"><a href="https://www.thesouthafrican.com/news/kenya/">Kenya</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542531"><a href="https://www.thesouthafrican.com/news/mozambique/">Mozambique</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542532"><a href="https://www.thesouthafrican.com/news/namibia/">Namibia</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542534"><a href="https://www.thesouthafrican.com/news/zambia/">Zambia</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-542535"><a href="https://www.thesouthafrican.com/news/zimbabwe/">Zimbabwe</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-550009"><a href="https://www.thesouthafrican.com/news/offbeat/">Offbeat</a></li>
</ul>
</li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-263822"><a href="https://www.thesouthafrican.com/news/finance/">Finance</a></li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-64674"><a href="https://www.thesouthafrican.com/sport/">Sport</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-416467"><a href="https://www.thesouthafrican.com/sport/soccer/">Soccer</a>
	<ul class="sub-menu">
		<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-262227"><a href="https://www.thesouthafrican.com/sport/soccer/psl-south-africa/">Premier Soccer League</a></li>
		<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-416469"><a href="https://www.thesouthafrican.com/sport/soccer/epl/">English Premier League</a></li>
	</ul>
</li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-319764"><a href="https://www.thesouthafrican.com/sport/rugby/">Rugby</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-595796"><a href="https://www.thesouthafrican.com/motoring/motorsport/">Motorsport</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521170"><a href="https://www.thesouthafrican.com/sport/rugby-world-cup/">Rugby World Cup</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-319767"><a href="https://www.thesouthafrican.com/sport/cricket/">Cricket</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-416468"><a href="https://www.thesouthafrican.com/sport/cycling/">Cycling</a></li>
</ul>
</li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-170416"><a href="https://www.thesouthafrican.com/lifestyle/">Lifestyle</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-249524"><a href="https://www.thesouthafrican.com/lifestyle/health-fitness/">Health &#038; Fitness</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-594836"><a href="https://www.thesouthafrican.com/lifestyle/entertainment/">Entertainment</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-206553"><a href="https://www.thesouthafrican.com/lifestyle/sa-tv-film/">SA TV &#038; Film</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-514576"><a href="https://www.thesouthafrican.com/food/">Food</a>
	<ul class="sub-menu">
		<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-623840"><a href="https://www.thesouthafrican.com/food/recipes/">Recipes</a></li>
	</ul>
</li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-624212"><a href="https://www.thesouthafrican.com/lifestyle/kids-parenting/">Parenting &#038; Kids</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-206552"><a href="https://www.thesouthafrican.com/lifestyle/art-artists/">Art &#038; Artists</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521177"><a href="https://www.thesouthafrican.com/lifestyle/horoscopes/">Horoscopes</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-239668"><a href="https://www.thesouthafrican.com/lifestyle/property/">Property</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-256507"><a href="https://www.thesouthafrican.com/lotto-results/">Lotto Results</a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-517224"><a href="#">Marketplace</a>
	<ul class="sub-menu">
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-525979"><a href="https://www.thesouthafrican.com/marketplace/money-transfers/">Money Transfers</a></li>
	</ul>
</li>
</ul>
</li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-642137"><a href="https://www.thesouthafrican.com/food/recipes/">Recipes</a></li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-460265"><a href="https://www.thesouthafrican.com/technology/">Tech</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521178"><a href="https://www.thesouthafrican.com/technology/">All Tech News</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521173"><a href="https://www.thesouthafrican.com/technology/online/">Online</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521172"><a href="https://www.thesouthafrican.com/technology/mobile/">Mobile</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521171"><a href="https://www.thesouthafrican.com/technology/gaming/">Gaming</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521175"><a href="https://www.thesouthafrican.com/technology/science/">Science</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-521176"><a href="https://www.thesouthafrican.com/technology/space/">Space</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-460394"><a href="https://www.thesouthafrican.com/technology/cryptocurrencies/">Crypto</a></li>
</ul>
</li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-171850"><a href="https://www.thesouthafrican.com/travel/">Travel</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-522445"><a href="https://www.thesouthafrican.com/travel/">All Travel News</a></li>
	<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-522446"><a href="https://www.thesouthafrican.com/travel-south-africa/">Travel South Africa</a>
	<ul class="sub-menu">
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522469"><a href="https://www.thesouthafrican.com/travel-south-africa/eastern-cape/">Eastern Cape</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522480"><a href="https://www.thesouthafrican.com/travel-south-africa/free-state/">Free State</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522464"><a href="https://www.thesouthafrican.com/travel-south-africa/gauteng/">Gauteng</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522470"><a href="https://www.thesouthafrican.com/travel-south-africa/kwazulu-natal/">KwaZulu-Natal</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522471"><a href="https://www.thesouthafrican.com/travel-south-africa/limpopo/">Limpopo</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522472"><a href="https://www.thesouthafrican.com/travel-south-africa/mpumalanga/">Mpumalanga</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522448"><a href="https://www.thesouthafrican.com/travel-south-africa/northern-cape/">Northern Cape</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522447"><a href="https://www.thesouthafrican.com/travel-south-africa/north-west/">North West</a></li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522457"><a href="https://www.thesouthafrican.com/travel-south-africa/western-cape/">Western Cape</a></li>
	</ul>
</li>
	<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522452"><a href="https://www.thesouthafrican.com/travel-southern-africa/">Travel Southern Africa</a></li>
</ul>
</li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-460405"><a href="https://www.thesouthafrican.com/motoring/">Motoring</a></li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-157618"><a href="https://www.thesouthafrican.com/lifestyle/south-africans-abroad/">SA Abroad</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-517216"><a href="https://www.thesouthafrican.com/lifestyle/south-africans-abroad/">South Africans Abroad News</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-157590"><a href="https://www.thesouthafrican.com/lifestyle/move-to/">Move To ALL</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306223"><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-australia/">Move to Australia</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-324562"><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-canada/">Move to Canada</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306224"><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-new-zealand/">Move to New Zealand</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306225"><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-south-africa/">Move to South Africa</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306226"><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-uk/">Move to the UK</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-306227"><a href="https://www.thesouthafrican.com/lifestyle/move-to/move-to-usa/">Move to USA</a></li>
</ul>
</li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-740082"><a target="_blank" rel="noopener noreferrer" href="https://jobs.thesouthafrican.com/">Jobs</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-650897"><a href="https://www.thesouthafrican.com/studentlife/">#studentlife</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666836"><a href="https://www.thesouthafrican.com/tag/studentlife/">Studentlife News</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666828"><a href="https://www.thesouthafrican.com/tag/studentlife-entertainment/">Studentlife Entertainment</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666829"><a href="https://www.thesouthafrican.com/tag/studentlife-food/">Studentlife Food</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666830"><a href="https://www.thesouthafrican.com/tag/studentlife-health-fitness/">Studentlife Health and Fitness</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666831"><a href="https://www.thesouthafrican.com/tag/studentlife-lifestyle/">Studentlife Lifestyle</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666832"><a href="https://www.thesouthafrican.com/tag/studentlife-opinion/">Studentlife Opinion</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666833"><a href="https://www.thesouthafrican.com/tag/studentlife-sport/">Studentlife Sport</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-666834"><a href="https://www.thesouthafrican.com/tag/studentlife-tech/">Studentlife Tech</a></li>
	<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-655736"><a href="https://www.thesouthafrican.com/studentlife-c/student-jobs/">Student Jobs</a></li>
</ul>
</li>
</ul></div>    </div>
    <div class="item_bottom">
        <div class="jeg_aside_item socials_widget nobg">
    <a href="https://www.facebook.com/thesouthafrican/" target='_blank' class="jeg_facebook"><i class="fa fa-facebook"></i> </a><a href="https://twitter.com/thesanews" target='_blank' class="jeg_twitter"><i class="fa fa-twitter"></i> </a><a href="https://www.instagram.com/the.south.african/" target='_blank' class="jeg_instagram"><i class="fa fa-instagram"></i> </a><a href="https://www.youtube.com/c/TheSouthAfrican-tv?sub_confirmation=1" target='_blank' class="jeg_youtube"><i class="fa fa-youtube-play"></i> </a><a href="https://www.linkedin.com/company/the-south-african/about/" target='_blank' class="jeg_linkedin"><i class="fa fa-linkedin"></i> </a><a href="https://flipboard.com/@thesouthafrica" target='_blank' class="jeg_rss"><i class="fa fa-rss"></i> </a></div><div class="jeg_aside_item jeg_aside_copyright">
	<p><a href="https://en.wikipedia.org/wiki/The_South_African" target="_blank">The South African Wikipedia</a><br>
Copyright © Blue Sky Publications Ltd. All Rights Reserved. <br>thesouthafrican.com is
a division of Blue Sky Publications Ltd. 
Reproduction without permission prohibited. <a href="//www.dmca.com/Protection/Status.aspx?ID=90d9fe89-9b80-44a3-ad45-523ce9cb9615" title="DMCA.com Protection Status" class="dmca-badge"> <img src="https://images.dmca.com/Badges/dmca_protected_sml_120aj.png?ID=90d9fe89-9b80-44a3-ad45-523ce9cb9615" alt="DMCA.com Protection Status" /></a>   <br><br><br></p>
</div>    </div>
</div>    </div>
</div><script type="text/javascript">var jfla = []</script><style type="text/css">#afc_sidebar_476714{background:#ffffff;position:fixed;bottom:0px;left:0px;width:100%;margin:0px autopx 0px autopx;z-index:999999;padding:10px;color:#ffffff;}
.afc_popup .img{position:absolute; top:-15px; right:-15px;}@media screen and (min-width:481px) and (max-width:768px){}@media only screen and (min-width: 321px) and (max-width: 480px) {.afc_popup{margin:0 !important;}.afc_popup iframe{width:100% !important;}}@media only screen and (max-width: 320px) {.afc_popup{margin:0 !important;}.afc_popup iframe{width:100% !important;}}</style><div id="afc_sidebar_476714" class="afc_popup"><a href="javascript:void()" class="afc_close_content"><img src="https://www.thesouthafrican.com/wp-content/plugins/advanced-floating-content-lite/public/images/close.png" class="img" alt="" /></a><div id="desktop-sticky" style="max-width: 1200px; margin-left: auto; margin-right: auto; text-align: center;"><script>googletag.cmd.push(function() { googletag.display('desktop-sticky'); });</script></div>
<div id="mobile-sticky" style="background:#000000;max-height: 60px; text-align: center;"><script>googletag.cmd.push(function() { googletag.display('mobile-sticky'); });</script></div></div><script type='text/javascript'>
	(function ($) {
		$('.afc_close_content').click(function(){			
			var afc_content_id = $(this).closest('div').attr('id');
			$('#'+afc_content_id).hide();
		});
	})(jQuery);
</script><script>(function() {function maybePrefixUrlField() {
	if (this.value.trim() !== '' && this.value.indexOf('http') !== 0) {
		this.value = "http://" + this.value;
	}
}

var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');
if (urlFields) {
	for (var j=0; j < urlFields.length; j++) {
		urlFields[j].addEventListener('blur', maybePrefixUrlField);
	}
}
})();</script><div class="jeg_read_progress_wrapper"></div><script type="text/javascript">
		/* MonsterInsights Scroll Tracking */
			if ( typeof(jQuery) !== 'undefined' ) {
				jQuery( document ).ready(function(){
					function monsterinsights_scroll_tracking_load() {
						if ( typeof(__gaTracker) !== 'undefined' && __gaTracker && __gaTracker.hasOwnProperty( "loaded" ) && __gaTracker.loaded == true ) {
							(function(factory) {
								factory(jQuery);
							}(function($) {

								/* Scroll Depth */
								"use strict";
								var defaults = {
									percentage: true
								};

								var $window = $(window),
									cache = [],
									scrollEventBound = false,
									lastPixelDepth = 0;

								/*
								 * Plugin
								 */

								$.scrollDepth = function(options) {

									var startTime = +new Date();

									options = $.extend({}, defaults, options);

									/*
									 * Functions
									 */

									function sendEvent(action, label, scrollDistance, timing) {

										var fieldsArray = {
											hitType       : 'event',
											eventCategory : 'Scroll Depth',
											eventAction   : action,
											eventLabel    : label,
											eventValue    : 1,
											nonInteraction: 1
										};

										if ( 'undefined' === typeof MonsterInsightsObject || 'undefined' === typeof MonsterInsightsObject.sendEvent ) {
											return;
										}

										MonsterInsightsObject.sendEvent( fieldsArray );
										if (arguments.length > 3) {
											fieldsArray = {
												hitType        : 'timing',
												timingCategory : 'Scroll Depth',
												timingVar      : action,
												timingValue    : timing,
												timingLabel    : label,
												nonInteraction: 1
											};
											MonsterInsightsObject.sendEvent( fieldsArray );
										}
									}

									function calculateMarks(docHeight) {
										return {
											'25%' : parseInt(docHeight * 0.25, 10),
											'50%' : parseInt(docHeight * 0.50, 10),
											'75%' : parseInt(docHeight * 0.75, 10),
											/* Cushion to trigger 100% event in iOS */
											'100%': docHeight - 5
										};
									}

									function checkMarks(marks, scrollDistance, timing) {
										/* Check each active mark */
										$.each(marks, function(key, val) {
											if ( $.inArray(key, cache) === -1 && scrollDistance >= val ) {
												sendEvent('Percentage', key, scrollDistance, timing);
												cache.push(key);
											}
										});
									}

									function rounded(scrollDistance) {
										/* Returns String */
										return (Math.floor(scrollDistance/250) * 250).toString();
									}

									function init() {
										bindScrollDepth();
									}

									/*
									 * Public Methods
									 */

									/* Reset Scroll Depth with the originally initialized options */
									$.scrollDepth.reset = function() {
										cache = [];
										lastPixelDepth = 0;
										$window.off('scroll.scrollDepth');
										bindScrollDepth();
									};

									/* Add DOM elements to be tracked */
									$.scrollDepth.addElements = function(elems) {

										if (typeof elems == "undefined" || !$.isArray(elems)) {
											return;
										}

										$.merge(options.elements, elems);

										/* If scroll event has been unbound from window, rebind */
										if (!scrollEventBound) {
											bindScrollDepth();
										}

									};

									/* Remove DOM elements currently tracked */
									$.scrollDepth.removeElements = function(elems) {

										if (typeof elems == "undefined" || !$.isArray(elems)) {
											return;
										}

										$.each(elems, function(index, elem) {

											var inElementsArray = $.inArray(elem, options.elements);
											var inCacheArray = $.inArray(elem, cache);

											if (inElementsArray != -1) {
												options.elements.splice(inElementsArray, 1);
											}

											if (inCacheArray != -1) {
												cache.splice(inCacheArray, 1);
											}

										});

									};

									/*
									 * Throttle function borrowed from:
									 * Underscore.js 1.5.2
									 * http://underscorejs.org
									 * (c) 2009-2013 Jeremy Ashkenas, DocumentCloud and Investigative Reporters & Editors
									 * Underscore may be freely distributed under the MIT license.
									 */

									function throttle(func, wait) {
										var context, args, result;
										var timeout = null;
										var previous = 0;
										var later = function() {
											previous = new Date;
											timeout = null;
											result = func.apply(context, args);
										};
										return function() {
											var now = new Date;
											if (!previous) previous = now;
											var remaining = wait - (now - previous);
											context = this;
											args = arguments;
											if (remaining <= 0) {
												clearTimeout(timeout);
												timeout = null;
												previous = now;
												result = func.apply(context, args);
											} else if (!timeout) {
												timeout = setTimeout(later, remaining);
											}
											return result;
										};
									}

									/*
									 * Scroll Event
									 */

									function bindScrollDepth() {

										scrollEventBound = true;

										$window.on('scroll.scrollDepth', throttle(function() {
											/*
											 * We calculate document and window height on each scroll event to
											 * account for dynamic DOM changes.
											 */

											var docHeight = $(document).height(),
												winHeight = window.innerHeight ? window.innerHeight : $window.height(),
												scrollDistance = $window.scrollTop() + winHeight,

												/* Recalculate percentage marks */
												marks = calculateMarks(docHeight),

												/* Timing */
												timing = +new Date - startTime;

											checkMarks(marks, scrollDistance, timing);
										}, 500));

									}

									init();
								};

								/* UMD export */
								return $.scrollDepth;

							}));

							jQuery.scrollDepth();
						} else {
							setTimeout(monsterinsights_scroll_tracking_load, 200);
						}
					}
					monsterinsights_scroll_tracking_load();
				});
			}
		/* End MonsterInsights Scroll Tracking */
		
</script><script type='text/javascript' id='mediaelement-core-js-before'>
var mejsL10n = {"language":"en","strings":{"mejs.download-file":"Download File","mejs.install-flash":"You are using a browser that does not have Flash player enabled or installed. Please turn on your Flash player plugin or download the latest version from https:\/\/get.adobe.com\/flashplayer\/","mejs.fullscreen":"Fullscreen","mejs.play":"Play","mejs.pause":"Pause","mejs.time-slider":"Time Slider","mejs.time-help-text":"Use Left\/Right Arrow keys to advance one second, Up\/Down arrows to advance ten seconds.","mejs.live-broadcast":"Live Broadcast","mejs.volume-help-text":"Use Up\/Down Arrow keys to increase or decrease volume.","mejs.unmute":"Unmute","mejs.mute":"Mute","mejs.volume-slider":"Volume Slider","mejs.video-player":"Video Player","mejs.audio-player":"Audio Player","mejs.captions-subtitles":"Captions\/Subtitles","mejs.captions-chapters":"Chapters","mejs.none":"None","mejs.afrikaans":"Afrikaans","mejs.albanian":"Albanian","mejs.arabic":"Arabic","mejs.belarusian":"Belarusian","mejs.bulgarian":"Bulgarian","mejs.catalan":"Catalan","mejs.chinese":"Chinese","mejs.chinese-simplified":"Chinese (Simplified)","mejs.chinese-traditional":"Chinese (Traditional)","mejs.croatian":"Croatian","mejs.czech":"Czech","mejs.danish":"Danish","mejs.dutch":"Dutch","mejs.english":"English","mejs.estonian":"Estonian","mejs.filipino":"Filipino","mejs.finnish":"Finnish","mejs.french":"French","mejs.galician":"Galician","mejs.german":"German","mejs.greek":"Greek","mejs.haitian-creole":"Haitian Creole","mejs.hebrew":"Hebrew","mejs.hindi":"Hindi","mejs.hungarian":"Hungarian","mejs.icelandic":"Icelandic","mejs.indonesian":"Indonesian","mejs.irish":"Irish","mejs.italian":"Italian","mejs.japanese":"Japanese","mejs.korean":"Korean","mejs.latvian":"Latvian","mejs.lithuanian":"Lithuanian","mejs.macedonian":"Macedonian","mejs.malay":"Malay","mejs.maltese":"Maltese","mejs.norwegian":"Norwegian","mejs.persian":"Persian","mejs.polish":"Polish","mejs.portuguese":"Portuguese","mejs.romanian":"Romanian","mejs.russian":"Russian","mejs.serbian":"Serbian","mejs.slovak":"Slovak","mejs.slovenian":"Slovenian","mejs.spanish":"Spanish","mejs.swahili":"Swahili","mejs.swedish":"Swedish","mejs.tagalog":"Tagalog","mejs.thai":"Thai","mejs.turkish":"Turkish","mejs.ukrainian":"Ukrainian","mejs.vietnamese":"Vietnamese","mejs.welsh":"Welsh","mejs.yiddish":"Yiddish"}};
</script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-includes/js/mediaelement/mediaelement-and-player.min.js?ver=4.2.13-9993131' id='mediaelement-core-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-includes/js/mediaelement/mediaelement-migrate.min.js?ver=5.5.1' id='mediaelement-migrate-js'></script>
<script type='text/javascript' id='mediaelement-js-extra'>
/* <![CDATA[ */
var _wpmejsSettings = {"pluginPath":"\/wp-includes\/js\/mediaelement\/","classPrefix":"mejs-","stretching":"responsive"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-includes/js/mediaelement/wp-mediaelement.min.js?ver=5.5.1' id='wp-mediaelement-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-includes/js/hoverIntent.min.js?ver=1.8.1' id='hoverIntent-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-includes/js/imagesloaded.min.js?ver=4.1.4' id='imagesloaded-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/isotope.js?ver=1.0.0' id='isotope-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/lazysizes.js?ver=1.0.0' id='lazysizes-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/ls.bgset.js?ver=1.0.0' id='bgset-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/owl-carousel2/owl.carousel.js?ver=1.0.0' id='owlcarousel-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/superfish.js?ver=1.0.0' id='superfish-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/theia-sticky-sidebar.js?ver=1.0.0' id='theia-sticky-sidebar-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/jquery.waypoints.js?ver=1.0.0' id='waypoint-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/jquery.scrollTo.js?ver=1.0.0' id='scrollto-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/jquery.parallax.js?ver=1.0.0' id='parallax-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/jquery.okayNav.js?ver=1.0.0' id='okaynav-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/jquery.mousewheel.js?ver=1.0.0' id='mousewheel-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/modernizr-custom.js?ver=1.0.0' id='modernizr-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/jquery.smartresize.js?ver=1.0.0' id='smartresize-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/chosen.jquery.js?ver=1.0.0' id='chosen-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/jquery.magnific-popup.js?ver=1.0.0' id='magnific-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/jquery.jnewsgif.js?ver=1.0.0' id='jnews-gif-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/jquery.jowlslider.js?ver=1.0.0' id='jnews-owlslider-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/jquery.jsticky.js?ver=1.0.0' id='jnews-sticky-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/jquery.transit.min.js?ver=1.0.0' id='jquery-transit-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/jquery.module.js?ver=1.0.0' id='jnews-landing-module-js'></script>
<script type='text/javascript' id='jnews-main-js-extra'>
/* <![CDATA[ */
var jnewsoption = {"login_reload":"https:\/\/www.thesouthafrican.com\/news\/world-map-where-worst-super-spreader-events-south-africa-covid-19-cases","popup_script":"disable","single_gallery":"","ismobile":"","isie":"","sidefeed_ajax":"","language":"en_US","module_prefix":"jnews_module_ajax_","live_search":"","postid":"753469","isblog":"1","admin_bar":"0","follow_video":"","follow_position":"top_right","rtl":"0","gif":"","lang":{"invalid_recaptcha":"Invalid Recaptcha!","empty_username":"Please enter your username!","empty_email":"Please enter your email!","empty_password":"Please enter your password!"},"recaptcha":"0","site_slug":"\/","site_domain":"www.thesouthafrican.com","zoom_button":"0"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/main.js?ver=1.0.0' id='jnews-main-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/zoom-button.js?ver=1.0.0' id='jnews-zoom-button-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/popup-post.js?ver=1.0.0' id='jnews-popup-post-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/darkmode.js?ver=1.0.0' id='jnews-darkmode-js'></script>
<!--[if lt IE 9]>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/themes/jnews/assets/js/html5shiv.min.js?ver=1.0.0' id='html5shiv-js'></script>
<![endif]-->
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-includes/js/wp-embed.min.js?ver=5.5.1' id='wp-embed-js'></script>
<script type='text/javascript' src='https://www.thesouthafrican.com/wp-content/plugins/mailchimp-for-wp/assets/js/forms.min.js?ver=4.8.1' id='mc4wp-forms-api-js'></script>
<div class="jeg_ad jnews_mobile_sticky_ads "></div><!-- fc -->
		<!-- gt -->
			<div id='takeover'>
				<script>
					googletag.cmd.push(function() { googletag.display('takeover'); });
				</script>
			</div>
			<!-- s -->
									<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-57daab7d6b1ad628"></script>
        			<!-- tba -->
        				<script type="text/javascript">
        				  window._taboola = window._taboola || [];
        				  _taboola.push({
        					mode: 'thumbnails-a',
        					container: 'taboola-below-article-thumbnails',
        					placement: 'Below Article Thumbnails',
        					target_type: 'mix'
        				  });
        				</script>
        			<!-- tf -->
        				<script type="text/javascript">
        				   window._taboola = window._taboola || [];
        				   _taboola.push({flush: true});
        				</script>
				</body>
</html>