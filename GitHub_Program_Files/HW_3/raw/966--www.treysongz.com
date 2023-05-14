<!DOCTYPE html>
<html lang="en" dir="ltr" prefix="content: http://purl.org/rss/1.0/modules/content/  dc: http://purl.org/dc/terms/  foaf: http://xmlns.com/foaf/0.1/  og: http://ogp.me/ns#  rdfs: http://www.w3.org/2000/01/rdf-schema#  schema: http://schema.org/  sioc: http://rdfs.org/sioc/ns#  sioct: http://rdfs.org/sioc/types#  skos: http://www.w3.org/2004/02/skos/core#  xsd: http://www.w3.org/2001/XMLSchema# ">
  <head>
    <meta charset="utf-8" /><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"NRJS-1888dd77a01fc8c6df6",applicationID:"277409014"};window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var i=t[n]={exports:{}};e[n][0].call(i.exports,function(t){var i=e[n][1][t];return r(i||t)},i,i.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(e,t,n){function r(){}function i(e,t,n){return function(){return o(e,[u.now()].concat(c(arguments)),t?null:this,n),t?void 0:this}}var o=e("handle"),a=e(6),c=e(7),f=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],p="api-",l=p+"ixn-";a(d,function(e,t){s[t]=i(p+t,!0,"api")}),s.addPageAction=i(p+"addPageAction",!0),s.setCurrentRouteName=i(p+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,i="function"==typeof t;return o(l+"tracer",[u.now(),e,n],r),function(){if(f.emit((i?"":"no-")+"fn-start",[u.now(),r,i],n),i)try{return t.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],n),e}finally{f.emit("fn-end",[u.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=i(l+t)}),newrelic.noticeError=function(e,t){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,t])}},{}],2:[function(e,t,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,c=e(8);t.exports=r,t.exports.offset=a,t.exports.getLastTimestamp=i},{}],3:[function(e,t,n){function r(e,t){var n=e.getEntries();n.forEach(function(e){"first-paint"===e.name?d("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&d("timing",["fcp",Math.floor(e.startTime)])})}function i(e,t){var n=e.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(e){e.getEntries().forEach(function(e){e.hadRecentInput||d("cls",[e])})}function a(e){if(e instanceof m&&!g){var t=Math.round(e.timeStamp),n={type:e.type};t<=p.now()?n.fid=p.now()-t:t>p.offset&&t<=Date.now()?(t-=p.offset,n.fid=p.now()-t):t=p.now(),g=!0,d("timing",["fi",t,n])}}function c(e){d("pageHide",[p.now(),e])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var f,u,s,d=e("handle"),p=e("loader"),l=e(5),m=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){f=new PerformanceObserver(r);try{f.observe({entryTypes:["paint"]})}catch(v){}u=new PerformanceObserver(i);try{u.observe({entryTypes:["largest-contentful-paint"]})}catch(v){}s=new PerformanceObserver(o);try{s.observe({type:"layout-shift",buffered:!0})}catch(v){}}if("addEventListener"in document){var g=!1,y=["click","keydown","mousedown","pointerdown","touchstart"];y.forEach(function(e){document.addEventListener(e,a,!1)})}l(c)}},{}],4:[function(e,t,n){function r(e,t){if(!i)return!1;if(e!==i)return!1;if(!t)return!0;if(!o)return!1;for(var n=o.split("."),r=t.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,f=c.match(a);f&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(i="Safari",o=f[1])}t.exports={agent:i,version:o,match:r}},{}],5:[function(e,t,n){function r(e){function t(){e(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,t,!1)}t.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],6:[function(e,t,n){function r(e,t){var n=[],r="",o=0;for(r in e)i.call(e,r)&&(n[o]=t(r,e[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],7:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,i=n-t||0,o=Array(i<0?0:i);++r<i;)o[r]=e[t+r];return o}t.exports=r},{}],8:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function i(e){function t(e){return e&&e instanceof r?e:e?f(e,c,o):o()}function n(n,r,i,o){if(!p.aborted||o){e&&e(n,r,i);for(var a=t(i),c=v(n),f=c.length,u=0;u<f;u++)c[u].apply(a,r);var d=s[w[n]];return d&&d.push([b,n,r,a]),a}}function l(e,t){h[e]=v(e).concat(t)}function m(e,t){var n=h[e];if(n)for(var r=0;r<n.length;r++)n[r]===t&&n.splice(r,1)}function v(e){return h[e]||[]}function g(e){return d[e]=d[e]||i(n)}function y(e,t){u(e,function(e,n){t=t||"feature",w[n]=t,t in s||(s[t]=[])})}var h={},w={},b={on:l,addEventListener:l,removeEventListener:m,emit:n,get:g,listeners:v,context:t,buffer:y,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(p.aborted=!0,s=p.backlog={})}var c="nr@context",f=e("gos"),u=e(6),s={},d={},p=t.exports=i();p.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(i.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[t]=r,r}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){i.buffer([e],r),i.emit(e,t,n)}var i=e("ee").get("handle");t.exports=r,r.ee=i},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!E++){var e=b.info=NREUM.info,t=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return u.abort();f(h,function(t,n){e[t]||(e[t]=n)});var n=a();c("mark",["onload",n+b.offset],null,"api"),c("timing",["load",n]);var r=p.createElement("script");r.src="https://"+e.agent,t.parentNode.insertBefore(r,t)}}function i(){"complete"===p.readyState&&o()}function o(){c("mark",["domContent",a()+b.offset],null,"api")}var a=e(2),c=e("handle"),f=e(6),u=e("ee"),s=e(4),d=window,p=d.document,l="addEventListener",m="attachEvent",v=d.XMLHttpRequest,g=v&&v.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:v,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var y=""+location,h={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1184.min.js"},w=v&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),b=t.exports={offset:a.getLastTimestamp(),now:a,origin:y,features:{},xhrWrappable:w,userAgent:s};e(1),e(3),p[l]?(p[l]("DOMContentLoaded",o,!1),d[l]("load",r,!1)):(p[m]("onreadystatechange",i),d[m]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var E=0},{}],"wrap-function":[function(e,t,n){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e("ee"),o=e(7),a="nr@original",c=Object.prototype.hasOwnProperty,f=!1;t.exports=function(e,t){function n(e,t,n,i){function nrWrapper(){var r,a,c,f;try{a=this,r=o(arguments),c="function"==typeof n?n(r,a):n||{}}catch(u){p([u,"",[r,a,i],c])}s(t+"start",[r,a,i],c);try{return f=e.apply(a,r)}catch(d){throw s(t+"err",[r,a,d],c),d}finally{s(t+"end",[r,a,f],c)}}return r(e)?e:(t||(t=""),nrWrapper[a]=e,d(e,nrWrapper),nrWrapper)}function u(e,t,i,o){i||(i="");var a,c,f,u="-"===i.charAt(0);for(f=0;f<t.length;f++)c=t[f],a=e[c],r(a)||(e[c]=n(a,u?c+i:i,o,c))}function s(n,r,i){if(!f||t){var o=f;f=!0;try{e.emit(n,r,i,t)}catch(a){p([a,n,r,i])}f=o}}function d(e,t){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(e);return n.forEach(function(n){Object.defineProperty(t,n,{get:function(){return e[n]},set:function(t){return e[n]=t,t}})}),t}catch(r){p([r])}for(var i in e)c.call(e,i)&&(t[i]=e[i]);return t}function p(t){try{e.emit("internal-error",t)}catch(n){}}return e||(e=i),n.inPlace=u,n.flag=a,n}},{}]},{},["loader"]);</script>
<style>/* @see https://github.com/aFarkas/lazysizes#broken-image-symbol */.js img.b-lazy:not([src]) { visibility: hidden; }/* @see https://github.com/aFarkas/lazysizes#automatically-setting-the-sizes-attribute */.js img.lazyloaded[data-sizes=auto] { display: block; width: 100%; }</style>
<link rel="shortlink" href="http://www.treysongz.com/" />
<meta property="og:site_name" content="Trey Songz" />
<meta name="robots" content="index, follow" />
<link rel="canonical" href="http://www.treysongz.com/" />
<meta property="og:type" content="website" />
<meta name="description" content="Official website of Atlantic Records recording artist Trey Songz. ‘Back Home’ Out Now!" />
<meta property="og:url" content="http://www.treysongz.com/" />
<meta property="og:title" content="Trey Songz Official Website" />
<meta name="google-site-verification" content="sgdfhgfh323232gf" />
<meta property="og:description" content="Official website of Atlantic Records recording artist Trey Songz. ‘Back Home’ Out Now!" />
<meta property="og:image" content="http://www.treysongz.com/sites/g/files/g2000011036/files/2020-10/OG_image.jpg" />
<meta name="Generator" content="Drupal 8 (https://www.drupal.org)" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="https://use.typekit.net/xpg6lls.css" async="async" defer="defer" />
<link rel="shortcut icon" href="/sites/g/files/g2000011036/files/Favicon.png" type="image/png" />
<link rel="revision" href="http://www.treysongz.com/home" />
<script type="text/javascript">digitalData={"settings":{"reportSuites":"wmg,wmgatl,wmgtreysongz.com"},"content":{"artist":"Trey Songz","label":"Atlantic Records","sublabel":"None"},"page":{"pageInfo":{"pageName":"Trey Songz:Homepage","server":"Trey Songz:Site","platform":"Drupal 8","devTeam":"WMAS"},"category":{"primaryCategory":"Trey Songz:Home","pageType":"homepage"}}}</script>
<script src="//assets.adobedtm.com/launch-EN302b8a31b75a4dda8ff8df1d0cdb4762.min.js"></script>
<script src="https://libraries.wmgartistservices.com/jslibrary/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js" type="text/javascript"></script>
<script src="https://libraries.wmgartistservices.com/songkick/widget_min.js?gfg"></script>
<script src="https://libraries.wmgartistservices.com/custom-js/mailing-list/plainmailinglist.js"></script>
<script src="https://libraries.wmgartistservices.com/custom-js/mailing-list/validation.js" async="async"></script>
<script src="https://libraries.wmgartistservices.com/custom-js/mailing-list/dtm.js"></script>
<script src="https://libraries.wmgartistservices.com/custom-js/YTDTM/YTFns.js"></script>
<script src="/sites/g/files/g2000011036/files/custom_js_7.js?cache=5f6db0ca9695c"></script>

    <title>Trey Songz Official Website</title>
    <link rel="stylesheet" media="all" href="/sites/g/files/g2000011036/files/css/css_KRYeSb-Rttz-Cjy90iaBnMF9NgyHVrTp_bwAzUVeo08.css" />
<link rel="stylesheet" media="all" href="/sites/g/files/g2000011036/files/css/css_sLUlF51vDK44Dn19bkMvQsDQUii2i7NLhC99i3eXWyM.css" />
<link rel="stylesheet" media="print" href="/sites/g/files/g2000011036/files/css/css_Z5jMg7P_bjcW9iUzujI7oaechMyxQTUqZhHJ_aYSq04.css" />
<link rel="stylesheet" media="all" href="/sites/g/files/g2000011036/files/css/css_tN0EYdwBWve2kaov3tN58Wye_rV74AFRYd5vuJoMrsc.css" />

    
<!--[if lte IE 8]>
<script src="/sites/g/files/g2000011036/files/js/js_VtafjXmRvoUgAzqzYTA3Wrjkx9wcWhjP0G4ZnnqRamA.js"></script>
<![endif]-->

  </head>
  <body class="page-node-1 page-node-type-landing_page layout-no-sidebars path-frontpage page-node-type-landing-page">
        <a href="#main-content" class="visually-hidden focusable skip-link">
      Skip to main content
    </a>
    
      <div class="dialog-off-canvas-main-canvas" data-off-canvas-main-canvas>
    <div id="page-wrapper">
  <div id="page">
    <header id="header" class="header" role="banner">
      <div class="section layout-container clearfix">
        
          <div class="clearfix region region-header">
    <div id="block-gdprcookiebanner" data-block-plugin-id="block_content:9c972978-634d-4b4a-bd09-754fd571a6fc" class="block block-block-content block-block-content9c972978-634d-4b4a-bd09-754fd571a6fc">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><script>
<!--//--><![CDATA[// ><!--

var $jq341 = jQuery.noConflict();

//--><!]]>
</script><script>
<!--//--><![CDATA[// ><!--

  var gdprSiteConfig = {
        label: 'WMN', //(Accepted values - "WR" or "ATL" or "AA" or "WMN" or "WMI" or "RR" or "FBR", or "WMG")
        pp_lightbox: true, //(Accepted values - true or false)
        cookie_banner: true, //(Accepted values - true or false)
        theme: 'dark' // (Accepted values - 'light' or 'dark')
    }

//--><!]]>
</script><script type="text/javascript" src="https://libraries.wmgartistservices.com/gdpr/script_v1.js "></script></div>
      
    </div>
  </div>
<div id="block-consolidatedcssandjs" data-block-plugin-id="block_content:d4729065-e620-4ab3-b78e-02322ae6b71b" class="block block-block-content block-block-contentd4729065-e620-4ab3-b78e-02322ae6b71b">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><link type="text/css" rel="stylesheet" href="//fast.fonts.net/cssapi/a6eb18ba-53c3-4959-8222-a6f0f0bfbf7e.css" /><style>
<!--/*--><![CDATA[/* ><!--*/

  body {
    color: #F1F2ED;
    font-family: 'Bodoni LT W01 Bold';
    background: #000;
    text-transform: uppercase;
  }
  .headerWrapper {
    background: #707070;
  }
  div {
    color: #F1F2ED;
  }
  .region-header .block {
    float: none;
  }
  a{
	transition: all 0.5s;
  }
  a:hover {
    opacity: 0.7;
  }
  .mobileheaderImg{
	display: none;
  }
  .block.block-block-content, .block.block-views{
	padding: 0;
  }
  video#mp4Video {
    display: block;
    object-fit: cover;
    width: 100%;
    height: 100vh;
  }
  .header-wrapper {
    position: absolute;
    top: 2.3vw;
    width: 100%;
    text-align: center;
    z-index: 2;
  }
  .nav-wrapper a {
    font-size: 1.5625vw;
    text-transform: uppercase;
    font-family: 'Bodoni LT W01 Bold';
    padding-right: 3.07vw;
    letter-spacing: 0.039vw;
    color: #F1F2ED;
  }
  .nav-wrapper a:last-child {
    padding: 0;
  }
  img.videothumbnailimage.mobile {
    display: none;
  }
  div#header-callout {
    position: absolute;
    top: 53%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: 2;
    width: 50.9vw;
    text-align: center;
  }
  .headerCopy {
    font-size: 2.08vw;
    text-transform: uppercase;
    text-align: center;
    letter-spacing: 0.052vw;
    padding-top: 1.3vw;
    font-family: 'Bodoni LT W01 Bold';
  }
  .headerbutton {
    max-width: 22.4vw;
    margin: 0 auto;
    text-align: center;
    font-size: 0;
    padding-top: 1vw;
  }
  .headerbutton>div {
    display: inline-block;
    vertical-align: top;
    width: 46.5%;
  }
  .GetitnowBtn {
    margin-right: 6%;
  }
  .headerbutton div a {
    width: 100%;
    display: inline-block;
    height: 2.6vw;
    font-size: 1.04vw;
    color: #000;
    background: #F1F2ED;
    line-height: 2.6vw;
    font-family: proxima-nova, sans-serif;
    font-weight: 700;
  }
  .sideImages {
    position: fixed;
    z-index: 1;
  }
  .leftImg {
    height: 5000px;
  }
  img.sequencer {
    position: fixed;
    bottom: 0;
    left: 0;
    font-size: 0;
    width: 100%;
	height: 100vh;
  }
  .rightImg {
    position: fixed;
    bottom: 0;
    right: 0;
    font-size: 0;
  }
  img.leftsideImg {
    width: 41.2vh;
  }
  img.rightsideImg {
    width: 52vh;
  }
  .btn-4:after {
    background: #ffffff;
    content: "";
    height: 155px;
    left: -75px;
    opacity: 0.7;
    position: absolute;
    top: -50px;
    -webkit-transform: rotate(35deg);
    transform: rotate(35deg);
    -webkit-transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);
    transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);
    width: 40px;
    z-index: 10;
  }
  .btn-4 {
    position: relative;
    overflow: hidden;
  }
  .btn-4:hover:after {
    left: 120%;
    -webkit-transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);
    transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);
  }
  .navmlistFooterWrap{
	display: none;
  }
  .artistLogo{
	display: none;
  }
  /* fade in styles */

	@-webkit-keyframes fade-in-bottom {
	  0% {
		  -webkit-transform: translateY(50px);
		  transform: translateY(50px);
		  opacity: 0;
	  }
	  100% {
		  -webkit-transform: translateY(0);
		  transform: translateY(0);
		  opacity: 1;
	  }
	}

	@keyframes fade-in-bottom {
	  0% {
		  -webkit-transform: translateY(50px);
		  transform: translateY(50px);
		  opacity: 0;
	  }
	  100% {
		  -webkit-transform: translateY(0);
		  transform: translateY(0);
		  opacity: 1;
	  }
	}
  .fade-in-bottom {
    -webkit-animation: fade-in-bottom 0.8s cubic-bezier(0.190, 0.375, 0.565, 1.000) both;
    animation: fade-in-bottom 0.8s cubic-bezier(0.190, 0.375, 0.565, 1.000) both;
  }
  div#block-follownews, #block-views-block-videos-block-3, div#block-follownews,
  div#block-views-block-music-block-1, div#block-plainjsmailinglist{
	opacity: 0;
  }
  div#block-follownews.fade-in-bottom, #block-views-block-videos-block-3.fade-in-bottom, div#block-follownews.fade-in-bottom,
  div#block-views-block-music-block-1.fade-in-bottom, div#block-views-block-merch-block-1.fade-in-bottom,
  div#block-plainjsmailinglist.fade-in-bottom {
	opacity: 1;
	position: relative;
	z-index: 3;
	background: transparent;
  }
  @media only screen and (max-width:1023px) {
	.artistLogo{
		display: block;
		position: absolute;
		top: 24px;
		left: 20px;
		width: 147px;
	}
	.nav-wrapper a {
		padding: 0;
	}
	.navmlistFooterWrap{
		display: block;
		font-size: 0;
	}
    .sideImages {
      display: none;
    }
	.mobileheaderImg {
		display: block;
		position: absolute;
		bottom: -22%;
		right: 0;
		z-index: 1;
	}
	.bgVideo {
		object-fit: cover;
		background: url('https://d2cstorage-a.akamaihd.net/atl/treysongz/TreySongz_BackHomeTrailer.gif') center center;
		-webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;
		height: 100vh;
	}
    .nav-wrapper {
      width: 27px;
      display: inline-block;
    }
	.nav-wrapper .circleFooter{
		padding-bottom: 30px;
	}
	body.nav-clicked {
		overflow: hidden;
	}
    div#nav {
      position: absolute;
      width: 100%;
      left: 0px;
      min-height: 100vh;
      top: 0px;
      height: 100%;
      background: #000000;
      color: #F1F2ED;
      display: none;
	  overflow-y: scroll;
    }
    div#nav-items {
      width: 100%;
      margin: 0 auto;
      text-align: center;
	  padding-top: 105px;
    }
    div#nav-items a {
      display: block;
      text-align: center;
      margin-bottom: 5.5vh;
	  font-size: 24px;
      color: #F1F2ED;
      margin-right: 0px;
      padding: 0;
      letter-spacing: 0.6px;
    }
    div#close-wrapper {
      cursor: pointer;
      position: relative;
      height: 16px;
	  right: 20px;
	  top: 20px;
    }
    span#menu-mob {
      display: inline-block;
	  width: 27px;
	  height: 16px;
    }
    span#menu-mob span {
      transition-duration: 0.5s;
      position: absolute;
      height: 2.25px;
      width: 100%;
      left: 0;
      border-radius: 0;
      background-color: #F1F2ED;
    }
    span#menu-mob span:nth-child(1) {
      top: 0;
    }
    span#menu-mob span:nth-child(2) {
      top: 6px;
    }
    span#menu-mob span:nth-child(3) {
      top: 12px;
    }
    .header-wrapper {
      text-align: right;
      right: 0px;
	  top: 0;
    }
	span#menu-mob.cross-icon span:nth-child(1) {
		top: 8px;
		-webkit-transform: rotateZ(35deg) translate(8px, 12px);
		transform: rotateZ(35deg) translate(8px, 12px);
		left: 2px;
		transform: rotate(-45deg);
	}
	span#menu-mob.cross-icon span:nth-child(2) {
		top: 6px;
		top: 11px;
		-webkit-transform: rotateZ(-31deg) translate(1px, -5px);
		transform: rotateZ(-31deg) translate(1px, -5px);
		left: 6px;
		display: none;
	}
	span#menu-mob.cross-icon span:nth-child(3) {
		top: 8px;
		-webkit-transform: rotateZ(-31deg) translate(1px, -5px);
		transform: rotateZ(-31deg) translate(1px, -5px);
		left: 2px;
		transform: rotate(45deg);
	}
	div#video-imag-wrapper video#mp4Video {
		display: none;
	}
	/* img.videothumbnailimage.mobile {
		display: block;
		height: 100vh;
		width: 100%;
	} */
	div#header-callout {
		width: 375px;
		top: 48%;
		font-size: 0;
		z-index: 1;
	}
	.headerbutton {
		max-width: 340px;
	}
	.headerCopy {
		font-size: 20px;
		letter-spacing: 0.5px;
		padding-top: 30px;
	}
	.headerbutton div a {
		font-size: 16px;
		height: 40px;
		line-height: 40px;
	}
	.headerbutton {
		padding-top: 15px;
	}
	.bgVideo {
		position: relative;
		overflow: hidden;
	}
  }
  @media only screen and (max-width: 767px) and (orientation: landscape) {
	.mobileheaderImg {
		width: 45%;
		bottom: -30%;
	}
  }

/*--><!]]>*/
</style><script>
<!--//--><![CDATA[// ><!--

	jQuery(document).ready(function () {
      jQuery("#menu-mob").on("click", function () {
        if (jQuery("#close-wrapper").hasClass("mob-clicked")) {
          jQuery("body").removeClass("nav-clicked");
          jQuery("#nav").hide();
          jQuery("#close-wrapper").removeClass("mob-clicked");
          jQuery("#menu-mob").removeClass("cross-icon");
          jQuery("#menu-mob").addClass("menu-icon");
        } else {
          jQuery("#nav").show();
          jQuery("body").addClass("nav-clicked");
          jQuery("#close-wrapper").addClass("mob-clicked");
          jQuery("#menu-mob").removeClass("menu-icon");
          jQuery("#menu-mob").addClass("cross-icon");
        }
      });
	  });
  if (window.innerWidth <= 1023) {
  jQuery(document).ready(function () {
      jQuery(".menu-link").click(function () {
        jQuery("#nav").hide();
        jQuery("body").removeClass("nav-clicked");
        jQuery("#close-wrapper").removeClass("mob-clicked");
        jQuery("#menu-mob").removeClass("cross-icon");
        jQuery("#menu-mob").addClass("menu-icon");
      });
	  });
    
  }else{
	jQuery("#nav").show();
  }
  jQuery(window).resize(function () {
    if (window.innerWidth <= 1023) {
		if (jQuery("#close-wrapper").hasClass("mob-clicked")) {
          
        } 
		else{
		  jQuery("body").removeClass("nav-clicked");
          jQuery("#nav").hide();
          jQuery("#close-wrapper").removeClass("mob-clicked");
          jQuery("#menu-mob").removeClass("cross-icon");
          jQuery("#menu-mob").addClass("menu-icon");
		}
    } else {
      jQuery("#nav").show();
    }
  });
    jQuery(window).on('scroll', function() {
	  if(jQuery('body').hasClass('homepage')){
      /*videos*/
      var $elem = jQuery('#block-views-block-videos-block-3');
      var $window = jQuery(window);
      var docViewTop = $window.scrollTop();
      console.info("docViewTop" + docViewTop);
      var docViewBottom = docViewTop + $window.height();
      console.info("docViewBottom" + docViewBottom);
      var elemTop = $elem.offset().top * 1.2;
      console.info("elemTop" + elemTop);
      var elemBottom = elemTop + $elem.height();
      console.info("elemBottom" + elemBottom);
      if (elemTop < docViewBottom) {
          jQuery('#block-views-block-videos-block-3').addClass('fade-in-bottom');
      }
	  
	  /*mlist*/
      var $elem = jQuery('div#block-plainjsmailinglist');
      var $window = jQuery(window);
      var docViewTop = $window.scrollTop();
      console.info("docViewTop" + docViewTop);
      var docViewBottom = docViewTop + $window.height();
      console.info("docViewBottom" + docViewBottom);
      var elemTop = $elem.offset().top * 1.2;
      console.info("elemTop" + elemTop);
      var elemBottom = elemTop + $elem.height();
      console.info("elemBottom" + elemBottom);
      if (elemTop < docViewBottom) {
          jQuery('div#block-plainjsmailinglist').addClass('fade-in-bottom');
      }
	  
	  /*circle*/
      /* var $elem = jQuery('div#block-circlesblock');
      var $window = jQuery(window);
  
      var docViewTop = $window.scrollTop();
      console.info("docViewTop" + docViewTop);
      var docViewBottom = docViewTop + $window.height();
  
      console.info("docViewBottom" + docViewBottom);
      var elemTop = $elem.offset().top * 1.1;
      console.info("elemTop" + elemTop);
      var elemBottom = elemTop + $elem.height();
      console.info("elemBottom" + elemBottom);
      if (elemTop < docViewBottom) {
          jQuery('div#block-circlesblock').addClass('fade-in-bottom');
		  jQuery('div#block-circlesblock').removeClass('fade-in-bottom');
      } */
	  
      /*merch*/
      var $elem = jQuery('div#block-views-block-merch-block-1');
      var $window = jQuery(window);
  
      var docViewTop = $window.scrollTop();
      console.info("docViewTop" + docViewTop);
      var docViewBottom = docViewTop + $window.height();
  
      console.info("docViewBottom" + docViewBottom);
      var elemTop = $elem.offset().top * 1.1;
      console.info("elemTop" + elemTop);
      var elemBottom = elemTop + $elem.height();
      console.info("elemBottom" + elemBottom);
      if (elemTop < docViewBottom) {
          jQuery('div#block-views-block-merch-block-1').addClass('fade-in-bottom');
      }
  
      /*music*/
      var $elem = jQuery('div#block-views-block-music-block-1');
      var $window = jQuery(window);
  
      var docViewTop = $window.scrollTop();
      console.info("docViewTop" + docViewTop);
      var docViewBottom = docViewTop + $window.height();
  
      console.info("docViewBottom" + docViewBottom);
      var elemTop = $elem.offset().top * 1.1;
      console.info("elemTop" + elemTop);
      var elemBottom = elemTop + $elem.height();
      console.info("elemBottom" + elemBottom);
      if (elemTop < docViewBottom) {
          jQuery('div#block-views-block-music-block-1').addClass('fade-in-bottom');
      }
  
      /*footer*/
      var $elem = jQuery('div#block-follownews');
      var $window = jQuery(window);
  
      var docViewTop = $window.scrollTop();
      console.info("docViewTop" + docViewTop);
      var docViewBottom = docViewTop + $window.height();
  
      console.info("docViewBottom" + docViewBottom);
      var elemTop = $elem.offset().top * 1;
      console.info("elemTop" + elemTop);
      var elemBottom = elemTop + $elem.height();
      console.info("elemBottom" + elemBottom);
      if (elemTop < docViewBottom) {
          jQuery('div#block-follownews').addClass('fade-in-bottom');
      }
   }
  });

//--><!]]>
</script></div>
      
    </div>
  </div>
<div id="block-headeranimationblock" data-block-plugin-id="block_content:467b6a82-43ed-497e-b433-071bb4c0d20e" class="block block-block-content block-block-content467b6a82-43ed-497e-b433-071bb4c0d20e">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script><script>
<!--//--><![CDATA[// ><!--

!function (t) { t.fn.sequencer = function (e, n) { var s, r, o, h, i, u = this, c = [], a = 0; "/" === e.path.substr(-1) && (e.path = e.path.substr(0, e.path.length - 1)); for (var p = 0; p <= e.count; p++)c.push(e.path + "/" + p + "." + e.ext); return t("<div class='jquery-sequencer-preload'>").appendTo("body").css("display", "none"), t(c).each(function () { t("<img>").attr("src", this).load(function () { t(this).appendTo("div.jquery-sequencer-preload"), a++, a === c.length && n() }) }), t(window).scroll(function () { s = t(u).height(), r = t(this).height(), o = t(this).scrollTop(), h = 100 * o / (s - r), i = Math.round(h / 100 * e.count), i < e.count && t("img.sequencer").attr("src", c[i]) }), this } }(jQuery);
jQuery(window).load(function () {
//var Height = jQuery(document).height();
var contentHeight = jQuery('div#block-views-block-merch-block-1').height() + jQuery('div#block-circlesblock').height() + jQuery('div#block-headerblock').height(); 
jQuery('.leftImg').css('height',''+ contentHeight +'');
jQuery("div#seqImages").sequencer({
        count: 45,
        path: "https://d2cstorage-a.akamaihd.net/atl/treysongz/animationImages",
        ext: "png"
      }, function() {
        //$("div#preload").hide();
      });
});

//--><!]]>
</script></div>
      
    </div>
  </div>
<div id="block-headerblock" data-block-plugin-id="block_content:65b3256e-2804-406b-bdc7-075baed42502" class="block block-block-content block-block-content65b3256e-2804-406b-bdc7-075baed42502">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><div class="header-wrapper">
	<div class="nav-wrapper">
		<div id="nav" class="stable sticky">
			<div class="artistLogo">
				<a href="/?frontpage=true" class="TSLogo"><img src="/sites/g/files/g2000011036/files/2020-09/TSLogo.png" class="TSLogoImg" /></a>
			</div>
			<div id="nav-items">
				<a id="videos-nav" href="#block-views-block-videos-block-3" class="menu-link">Videos</a>
				<a id="merch-nav" href="#block-views-block-merch-block-1" class="menu-link">Merch</a>
				<a id="music-nav" href="#block-views-block-music-block-1" class="menu-link custom">Music</a>
				<a id="newsfollow-nav" href="#block-follownews" class="menu-link">News + Follow</a>
			</div>
			<div class="navmlistFooterWrap">
				<div class="circleEmail">
					<div class="plain-ml-wrapper dtmlightbox firstMlistForm">
						<div class="mlform">
							<div class="message">
								<p class="message-description"></p>
							</div>
							<form class="mlistFormOne mlform twostep" action="https://signup.wmg.com/register?">
								<div class="email fieldWrap">
									<input data-type="email" data-error-text="Please enter a valid email address" placeholder="Email Address" required="" class="email" name="email" /></div>
								<div class="primary-list-values">
									<input name="Datasource" type="hidden" value="TreySongz_BackHomeOutNow_Standalone_Website" /><input name="newsletterId" type="hidden" value="18751" /></div>
								<div class="submit">
									<input type="submit" class="submit mlistSubmit" value="JOIN" /></div>
							</form>
							<div class="terms">
								<a href="javascript:void(0)" class="terms">terms</a>
								<p class="terms-message fadeOut">
									By submitting my information, I agree to receive personalized updates and marketing messages about Trey Songz based on my information, interests, activities, website visits and device data and in accordance with the <a href="http://www.atlanticrecords.com/privacy-policy/" target="_blank" class="external-link">Privacy Policy</a>. 
 I understand that I can opt-out at any time by emailing <a href="mailto:privacypolicy@wmg.com">privacypolicy@wmg.com</a>.
								</p>
							</div>
						</div>
						<div class="thankyou fadeOut">
							Thank you for signing up!
						</div>
						<div class="secondform fadeOut singleform">
							<span class="secondFormClose">x</span>
							<div class="welcome">
								<p>Welcome <span class="name"></span> to the Trey Songz's mailing list!</p>
							</div>
							<form class="mlistFormTwo mlform" action="https://signup.wmg.com/register?">
								<input type="hidden" class="secondFormEmail" name="email" value="" /><div class="postalcode fieldWrap">
									<label for="postalCode" class="">Postal Code</label>
									<input type="text" name="postalcode" /></div>
								<div class="postal_country">
									<div class="country">
										<label for="country"> Country </label>
										<select class="country form-control" name="country"><option value="">Select A Country</option><option value="Afghanistan">Afghanistan</option><option value="Åland Islands">Åland Islands</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Australia">Australia</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="Botswana">Botswana</option><option value="Bouvet Island">Bouvet Island</option><option value="Brazil">Brazil</option><option value="British Indian Ocean Territory">British Indian Ocean
												Territory</option><option value="Brunei Darussalam">Brunei Darussalam</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Canada">Canada</option><option value="Cape Verde">Cape Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Christmas Island">Christmas Island</option><option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Congo">Congo</option><option value="Congo, The Democratic Republic of The">Congo, The Democratic
												Republic of The
											</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Cote D'ivoire">Cote D'ivoire</option><option value="Croatia">Croatia</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)
											</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="France">France</option><option value="French Guiana">French Guiana</option><option value="French Polynesia">French Polynesia</option><option value="French Southern Territories">French Southern Territories
											</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Greenland">Greenland</option><option value="Grenada">Grenada</option><option value="Guadeloupe">Guadeloupe</option><option value="Guam">Guam</option><option value="Guatemala">Guatemala</option><option value="Guernsey">Guernsey</option><option value="Guinea">Guinea</option><option value="Guinea-bissau">Guinea-bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald
												Islands</option><option value="Holy See (Vatican City State)">Holy See (Vatican City State)
											</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="India">India</option><option value="Indonesia">Indonesia</option><option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Isle of Man">Isle of Man</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jersey">Jersey</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="Korea, Democratic People's Republic of">Korea, Democratic
												People's Republic
												of</option><option value="Korea, Republic of">Korea, Republic of</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Lao People's Democratic Republic">Lao People's Democratic
												Republic</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macao">Macao</option><option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The
												Former Yugoslav
												Republic of
											</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Martinique">Martinique</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mayotte">Mayotte</option><option value="Mexico">Mexico</option><option value="Micronesia, Federated States of">Micronesia, Federated States
												of</option><option value="Moldova, Republic of">Moldova, Republic of</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montenegro">Montenegro</option><option value="Montserrat">Montserrat</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="New Caledonia">New Caledonia</option><option value="New Zealand">New Zealand</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Niue">Niue</option><option value="Norfolk Island">Norfolk Island</option><option value="Northern Mariana Islands">Northern Mariana Islands</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestinian Territory, Occupied">Palestinian Territory,
												Occupied</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Pitcairn">Pitcairn</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Reunion">Reunion</option><option value="Romania">Romania</option><option value="Russian Federation">Russian Federation</option><option value="Rwanda">Rwanda</option><option value="Saint Helena">Saint Helena</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option><option value="Saint Vincent and The Grenadines">Saint Vincent and The
												Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Sao Tome and Principe">Sao Tome and Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Serbia">Serbia</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia">Slovakia</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="South Georgia and The South Sandwich Islands">South Georgia
												and The South
												Sandwich
												Islands</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syrian Arab Republic">Syrian Arab Republic</option><option value="Taiwan, Province of China">Taiwan, Province of China</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania, United Republic of">Tanzania, United Republic of
											</option><option value="Thailand">Thailand</option><option value="Timor-leste">Timor-leste</option><option value="Togo">Togo</option><option value="Tokelau">Tokelau</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Turks and Caicos Islands">Turks and Caicos Islands</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United Kingdom">United Kingdom</option><option value="United States">United States</option><option value="United States Minor Outlying Islands">United States Minor
												Outlying Islands
											</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Venezuela">Venezuela</option><option value="Viet Nam">Viet Nam</option><option value="Virgin Islands, British">Virgin Islands, British</option><option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option><option value="Wallis and Futuna">Wallis and Futuna</option><option value="Western Sahara">Western Sahara</option><option value="Yemen">Yemen</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option></select></div>


								</div>
								<div class="name">
									<div class="first fieldWrap">
										<label for="FirstName" class="">First Name</label>
										<input type="text" class="first" name="firstname" /></div>
								</div>
								<div class="birth-date-title">Birth Date</div>
								<div class="birthday">
									<div class="dobMonth fieldWrap">
										<select name="dobMonth" class=""><option value="">Month</option><option value="1">January</option><option value="2">February</option><option value="3">March</option><option value="4">April</option><option value="5">May</option><option value="6">June</option><option value="7">July</option><option value="8">August</option><option value="9">September</option><option value="10">October</option><option value="11">November</option><option value="12">December</option></select></div>
									<div class="dobDay fieldWrap">
										<select name="dobDay" class=""><option value="">Day</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select></div>
								</div>


								<input name="newsletterId" type="hidden" value="14075551" /><input name="Datasource" type="hidden" value="TreySongz_BackHomeOutNow_Standalone_Website" /><div class="globaloptin fieldWrap">
									<input type="checkbox" name="goptin" id="goptin_checkbox2" value="50" /><label for="goptin_checkbox2" class="goptin_checkbox">Sign me up to discover more
										artists like
										<span>TreySongz</span> and other offers.</label>
								</div>
								<div class="submit">
									<input type="submit" class="submit mlistSubmit" value="SUBMIT" /></div>
								<div class="terms">
									<a href="javascript:void(0)" class="terms">terms</a>
									<p class="terms-message-2 fadeOut">
										By submitting my information, I agree to receive personalized updates and marketing messages about Trey Songz based on my information, interests, activities, website visits and device data and in accordance with the <a href="http://www.atlanticrecords.com/privacy-policy/" target="_blank" class="external-link" rel="nofollow">Privacy Policy</a>. In addition, if I have checked the box above, I agree to receive such updates and messages about similar artists, products and offers. I understand that I can opt-out from messages at any time by emailing <a href="mailto:privacypolicy@wmg.com">privacypolicy@wmg.com</a>.
									</p>
								</div>
						</form></div>

					</div>
				</div>
				<div class="circleFooter">
					<div class="Socialicons">
						<ul class="footer-social"><li class="fs-fb">
								<a data-track="facebook" class="fs-fb-link icon-facebook2" href="https://www.facebook.com/treysongz" target="_blank"></a>
							</li>
							<li class="fs-tw">
								<a data-track="twitter" class="fs-tw-link icon-twitter" href="https://twitter.com/TreySongz" target="_blank"></a>
							</li>
							<li class="fs-ig">
								<a data-track="instagram" class="fs-ig-link icon-instagram" href="https://instagram.com/treysongz" target="_blank"></a>
							</li>
							<li class="fs-yt">
								<a data-track="youtube" class="fs-yt-link icon-youtube" href="https://www.youtube.com/user/TreySongzVideos" target="_blank"></a>
							</li>
							<li class="fs-an">
								<a class="fs-an-link icon-spotify" href="https://open.spotify.com/artist/2iojnBLj0qIMiKPvVhLnsH" data-track="spotify" target="_blank"></a>
							</li>

							<li class="fs-apple">
								<a data-track="apple-music" class="fs-ap-link icon-appleinc" href="https://music.apple.com/us/artist/trey-songz/31733124" target="_blank"></a>
							</li>
						</ul></div>
				</div>
			</div>
		</div>
		<div id="close-wrapper">
			<span id="menu-mob" class="menu-icon">
				<span></span>
				<span></span>
				<span></span>
			</span>
		</div>
	</div>
</div>
<div class="headerWrapper">
	<div class="bgVideo">
		<div class="video-cnt">
			<div id="video-imag-wrapper">
				<video class="video-image" id="mp4Video" autoplay="" loop="" muted=""><source src="https://d2cstorage-a.akamaihd.net/atl/treysongz/TreySongz_BackHomeTrailer_Option 3.mp4" type="video/mp4"></source></video></div>
			<div id="header-callout">
				<img src="/sites/g/files/g2000011036/files/2020-09/Album%20Logo.png" /><div class="headerCopy">The new album out now</div>
				<div class="headerbutton">
					<div class="GetitnowBtn">
						<a href="https://treysongz.lnk.to/BackHomeTrailer" target="_blank" class="getitnow_button btn-4" custom-link-name="Watch Trailer Button Linkfire (header)">Watch Trailer</a>
					</div>
					<div class="listenBtn">
						<a href="https://treysongz.lnk.to/BackHomeAlbum" target="_blank" class="listen_button btn-4" custom-link-name="Back Home Listen Now Button Linkfire (header)">listen now</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="mobileheaderImg">
		<img src="/sites/g/files/g2000011036/files/2020-09/mobheaderImage.png" class="mobheaderImg" /></div>
</div>
<div class="sideImages">
	<div class="leftImg" id="seqImages">
		<img src="https://d2cstorage-a.akamaihd.net/atl/treysongz/animationImages/45.png" class="sequencer" /></div>
	<!-- <div class="rightImg">
		<img src="/sites/g/files/g2000011036/files/2020-09/Right.png" class="rightsideImg" />
	</div> -->
</div>
<script>
<!--//--><![CDATA[// ><!--

jQuery(document).ready(function () {
	jQuery('body').addClass('homepage');
	var hashValue;
    jQuery(function () {
        jQuery(".homepage #nav-items a[href*='#']:not([href='#'])").on("click", function (e) {
            e.preventDefault();
            //if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
            var target = jQuery(this.hash);
            var blockOffset = jQuery('.headerWrapper').height();
            hashValue = this.hash.substr(1);
            var current_width = jQuery(window).width();
            target = target.length ? target : jQuery('[name=' + this.hash.slice(1) + ']');
            console.info("hashValue:"+ hashValue);
            if (hashValue == "block-views-block-videos-block-3") {
                blockOffset = blockOffset + 10;
            } else if (hashValue == "block-circlesblock") {
                blockOffset = blockOffset + 10;
            }else if (hashValue == "block-views-block-merch-block-1") {
                blockOffset = blockOffset + 10;
            }  
            else {
                blockOffset = blockOffset;
            } 

            jQuery('#nav-items a').removeClass("active");
			jQuery(this).addClass("active");
            //jQuery('.menu-wrapper li').removeClass("active");
            //jQuery(this).closest('li').addClass('active');
            var navActiveCurrent = '/#' + hashValue;
            jQuery('#nav-items a[href="' + navActiveCurrent + '"]').addClass("active");
            if (target.length) {
                jQuery('html,body').animate({
                    scrollTop: target.offset().top
                }, 2000);
                return false;
            }
        });
    }); 
});

//--><!]]>
</script></div>
      
    </div>
  </div>
<div id="block-carouselcss" data-block-plugin-id="block_content:090497ce-a7e6-4b77-9850-0a444cf48308" class="block block-block-content block-block-content090497ce-a7e6-4b77-9850-0a444cf48308">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><style>
<!--/*--><![CDATA[/* ><!--*/

/**
 * Owl Carousel v2.3.4
 * Copyright 2013-2018 David Deutsch
 * Licensed under: SEE LICENSE IN https://github.com/OwlCarousel2/OwlCarousel2/blob/master/LICENSE
 */
 .owl-carousel,.owl-carousel .owl-item{-webkit-tap-highlight-color:transparent;position:relative}.owl-carousel{display:none;width:100%;z-index:1}.owl-carousel .owl-stage{position:relative;-ms-touch-action:pan-Y;touch-action:manipulation;-moz-backface-visibility:hidden}.owl-carousel .owl-stage:after{content:".";display:block;clear:both;visibility:hidden;line-height:0;height:0}.owl-carousel .owl-stage-outer{position:relative;overflow:hidden;-webkit-transform:translate3d(0,0,0)}.owl-carousel .owl-item,.owl-carousel .owl-wrapper{-webkit-backface-visibility:hidden;-moz-backface-visibility:hidden;-ms-backface-visibility:hidden;-webkit-transform:translate3d(0,0,0);-moz-transform:translate3d(0,0,0);-ms-transform:translate3d(0,0,0)}.owl-carousel .owl-item{min-height:1px;float:left;-webkit-backface-visibility:hidden;-webkit-touch-callout:none}.owl-carousel .owl-item img{display:block;width:100%}.owl-carousel .owl-dots.disabled,.owl-carousel .owl-nav.disabled{display:none}.no-js .owl-carousel,.owl-carousel.owl-loaded{display:block}.owl-carousel .owl-dot,.owl-carousel .owl-nav .owl-next,.owl-carousel .owl-nav .owl-prev{cursor:pointer;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.owl-carousel .owl-nav button.owl-next,.owl-carousel .owl-nav button.owl-prev,.owl-carousel button.owl-dot{background:0 0;color:inherit;border:none;padding:0!important;font:inherit}.owl-carousel.owl-loading{opacity:0;display:block}.owl-carousel.owl-hidden{opacity:0}.owl-carousel.owl-refresh .owl-item{visibility:hidden}.owl-carousel.owl-drag .owl-item{-ms-touch-action:pan-y;touch-action:pan-y;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.owl-carousel.owl-grab{cursor:move;cursor:grab}.owl-carousel.owl-rtl{direction:rtl}.owl-carousel.owl-rtl .owl-item{float:right}.owl-carousel .animated{animation-duration:1s;animation-fill-mode:both}.owl-carousel .owl-animated-in{z-index:0}.owl-carousel .owl-animated-out{z-index:1}.owl-carousel .fadeOut{animation-name:fadeOut}@keyframes fadeOut{0%{opacity:1}100%{opacity:0}}.owl-height{transition:height .5s ease-in-out}.owl-carousel .owl-item .owl-lazy{opacity:0;transition:opacity .4s ease}.owl-carousel .owl-item .owl-lazy:not([src]),.owl-carousel .owl-item .owl-lazy[src^=""]{max-height:0}.owl-carousel .owl-item img.owl-lazy{transform-style:preserve-3d}.owl-carousel .owl-video-wrapper{position:relative;height:100%;background:#000}.owl-carousel .owl-video-play-icon{position:absolute;height:80px;width:80px;left:50%;top:50%;margin-left:-40px;margin-top:-40px;background:url(owl.video.play.png) no-repeat;cursor:pointer;z-index:1;-webkit-backface-visibility:hidden;transition:transform .1s ease}.owl-carousel .owl-video-play-icon:hover{-ms-transform:scale(1.3,1.3);transform:scale(1.3,1.3)}.owl-carousel .owl-video-playing .owl-video-play-icon,.owl-carousel .owl-video-playing .owl-video-tn{display:none}.owl-carousel .owl-video-tn{opacity:0;height:100%;background-position:center center;background-repeat:no-repeat;background-size:contain;transition:opacity .4s ease}.owl-carousel .owl-video-frame{position:relative;z-index:1;height:100%;width:100%}
/**
 * Owl Carousel v2.3.4
 * Copyright 2013-2018 David Deutsch
 * Licensed under: SEE LICENSE IN https://github.com/OwlCarousel2/OwlCarousel2/blob/master/LICENSE
 */
 .owl-theme .owl-dots,.owl-theme .owl-nav{text-align:center;-webkit-tap-highlight-color:transparent}.owl-theme .owl-nav{margin-top:10px}.owl-theme .owl-nav [class*=owl-]{color:#FFF;font-size:14px;margin:5px;padding:4px 7px;background:#D6D6D6;display:inline-block;cursor:pointer;border-radius:3px}.owl-theme .owl-nav [class*=owl-]:hover{background:#869791;color:#FFF;text-decoration:none}.owl-theme .owl-nav .disabled{opacity:.5;cursor:default}.owl-theme .owl-nav.disabled+.owl-dots{margin-top:10px}.owl-theme .owl-dots .owl-dot{display:inline-block;zoom:1}.owl-theme .owl-dots .owl-dot span{width:10px;height:10px;margin:5px 7px;background:#D6D6D6;display:block;-webkit-backface-visibility:visible;transition:opacity .2s ease;border-radius:30px}.owl-theme .owl-dots .owl-dot.active span,.owl-theme .owl-dots .owl-dot:hover span{background:#869791}

/*--><!]]>*/
</style></div>
      
    </div>
  </div>
<div id="block-videocss" data-block-plugin-id="block_content:9beb4ad1-35b7-481f-89ef-63d7ade43419" class="block block-block-content block-block-content9beb4ad1-35b7-481f-89ef-63d7ade43419">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><style>
<!--/*--><![CDATA[/* ><!--*/

/*** Video section css ***/
.view-all-videos a {
    width: 255px;
    display: block;
    height: 2.6vw;
    font-size: 1.04vw;
    color: #000;
    background: #F1F2ED;
    line-height: 2.6vw;
    font-family: proxima-nova, sans-serif;
    font-weight: 700;
    margin: 0 auto;
    text-align: center;
    margin-top: 40px;
}
#block-views-block-videos-block-3 {
    position: relative;
    overflow: hidden;
    padding-top: 5% !important;
    width: 100%;
    margin: 0 auto;
    background-color: #000;
}
.playButton:hover {
    opacity: 0.6;
}
.videoTitleWrapper .video-title:hover {
    color: #F1F2ED;
 opacity: 0.5;
}
.owl-nav div:hover {
    opacity: 0.5;
}
.videowrap {
    position: relative;
    cursor: pointer;
    padding-bottom: 56.25%;
    width: 100%;
    height: 0;
}

.videowrap iframe {
    position: absolute;
    top: 0;
    width: 100%;
    height: 100%;
    left: 0;
}
.owl-nav .disabled {
    opacity: .5;
}
.playButton.icon-play2::before {
    content: " ";
}
.playButton.icon-play2 {
    background: url(/sites/g/files/g2000011036/files/2020-10/playnew.png) no-repeat scroll 0 0 transparent;
    background-size: 100% auto;
    width: 30px;
    height: 30px;
}
#block-views-block-videos-block-3 .video-block-home.view-display-id-block_3 .video-title {
    font-size: 14px;
    text-align: center;
max-width:98%;
margin:0 auto;
}
.playButton.playicon-play.icon-play2 {
    font-size: 10px;
}

#block-views-block-videos-block-3 > .content {
   width:50.9vw;
margin:0 auto;
padding-bottom:30px;
}

#block-views-block-videos-block-3 .item-list ul {
    position: relative;
    list-style: none;
    padding: 0px;
    margin: 0px;
}

.videowrap {
    position: relative;
    cursor: pointer;
}

.videoWrapper {
    font-size: 0;
}

.videoWrapper img {
    width: 100%;
}

#block-views-block-videos-block-3 .video-block-home {
    max-width: 100%;
    margin: 0 auto;
}

.playButton.icon-play2 {
    font-size: 5vw;
    color: #fff;
    top: 50%;
    -webkit-transform: translate(-50%,-50%);
    -moz-transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
    -o-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
    left: 50%;
    z-index: 100;
    position: absolute;
    transition: all 0.5s ease-in-out;
    -webkit-transition: all 0.5s ease-in-out;
}

.playButton:hover {
    color: rgb(217, 23, 23);
}

/*.videoTitleWrapper {
    background: #fff;
    box-sizing: border-box;
    margin: 0px 0 10px;
}*/
.owl-nav .owl-prev {
    background: url(/sites/g/files/g2000009991/files/2020-02/prev-arrow.svg) no-repeat scroll 0 0 transparent;
    background-size: 100% auto;
    width: 15px;
    height: 30px;
    display: block;
    text-indent: -9999px;
    position: absolute;
    left: -7%;
    top: 50%;
    transform: translate(20% , -45%);
}

.owl-nav .owl-next {
    background: url(/sites/g/files/g2000009991/files/2020-02/next-arrow.svg) no-repeat scroll 0 0 transparent;
    background-size: 100% auto;
    width: 15px;
    height: 30px;
    display: block;
    text-indent: -9999px;
    position: absolute;
    right: -7%;
    top: 50%;
    transform: translate(17% , -45%);
}
#block-views-block-videos-block-3 .item-list ul.featured .playButton.icon-play2 {
    width: 65px;
    height: 65px;
}
.videoTitleWrapper .video-title {
    font-size: 28px;
    color: #ffffff;
    font-weight: bold;
    text-transform: none;
    line-height: 1;
    text-align: center;
    padding: 12px 0;
position:absolute;
    bottom: 5%;
    left: 50%;
    transform: translateX(-50%);
    width: 100%;
}

.videoPlayer.active{
	position: relative;
	padding-bottom: 56.25%;
	height: 0;
	margin: 0 auto;
}

.videoPlayer.active iframe{
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;	
}
.videoHeader {
    font-size: 0;
    margin: 30px 0;
}

#block-views-block-videos-block-3 .view-footer{
	position: relative;
	top: auto;
	bottom: auto;
	transform: none;
	left: auto;
margin-top:2.13vw;
}
#block-views-block-videos-block-3 .view-display-id-block_4 .view-footer {
    margin-top: 4.7vw;
}
#block-views-block-videos-block-3 .view-footer .custom-pager {
    margin-top: 20px;
}

#block-views-block-videos-block-3 .view-footer .custom-pager a.show-more {
    border-bottom: none;
}
#block-views-block-videos-block-3 .item-list ul.video-carousel{
width:90%;
margin:0 auto !important;
}
div.plain-ml-wrapper span#secondFormClose:hover {
    color: #fff;
}
#block-views-block-videos-block-3 .video-block-home.view-display-id-block_3 .featured .video-title {
    text-align: left;
    padding-left: 35px;
    font-size: 22px;
    text-transform: uppercase;
	bottom: 5%;
}
#block-views-block-videos-block-3 .item-list ul.featured .playButton.icon-play2 {
    width: 35px;
    height: 35px;
    top: auto;
    right: 1%;
    left: auto;
    bottom: 1%;
}
#block-views-block-videos-block-3 .video-block-home.view-display-id-block_3 .featured .video-title {
    white-space: nowrap;
    max-width: 100%;
}
#block-views-block-videos-block-3 .video-block-home.view-display-id-block_3 .video-title {
    font-size: 14px;
    text-align: center;
    max-width: 95%;
    white-space: normal;
    margin: 0 auto;
    padding-bottom: 0;
	text-transform: uppercase;
	font-family: 'Bodoni LT W01 Bold';
    color: #F1F2ED;
	bottom: 3%;
}
@media only screen and (min-width:767px) and (max-width:1024px) and (orientation:portrait){
#block-views-block-videos-block-3 .video-block-home.view-display-id-block_3 .video-title{
font-size:11px;
}
}
@media only screen and (max-width:767px){
#block-views-block-videos-block-3 > .content{
width:100%;
}
#block-views-block-videos-block-3 .view-footer {
    margin-top: 20px;
}
#block-views-block-videos-block-3 .view-display-id-block_4 .view-footer {
    margin-top: 30px;
}
#block-views-block-videos-block-3 .video-block-home.view-display-id-block_3 .video-title{
	bottom: 12px;
}
#block-views-block-videos-block-3 .video-block-home.view-display-id-block_3 .featured .video-title {
    font-size: 20px;
	bottom: 14px;
}
#block-views-block-videos-block-3 .item-list ul.featured .playButton.icon-play2 {
    width: 21px;
    height: 21px;
}
.view-all-videos a {
    font-size: 16px;
    height: 40px;
    line-height: 40px;
}
.owl-nav .owl-prev{
			    left: -9%;
				width: 12px;
				height: 29px;
top: 50%;
transform: translate(20% , -50%);

		}
		.owl-nav .owl-next{
			    right: -9%;	
				width: 12px;
				height: 29px;
top: 50%;
transform: translate(17% , -50%);
		}
.owl-carousel .owl-stage-outer{
overflow:visible;
}
}

/* Footer */
footer #footer-block .icon.spotifyfollow {
	width: 90px;
	margin-right: 0;
}
.site-footer .layout-container{
padding:0;
}
@media only screen and (max-width:1023px) {
	div#block-views-block-videos-block-3 {
		padding-top: 195px !important;
	}
}
@media only screen and (min-width:768px) and (max-width:1023px){
#block-views-block-videos-block-3 > .content {
    width: 85%;
}
div#block-views-block-videos-block-3 {
    padding-top: 235px !important;
}
.view-all-videos a {
    width: 249px;
    height: 40px;
    line-height: 40px;
    font-size: 16px;
}
}

/*--><!]]>*/
</style></div>
      
    </div>
  </div>
<div id="block-videojs" data-block-plugin-id="block_content:18ee03db-ee3d-48de-94b4-cfdc5267bb63" class="block block-block-content block-block-content18ee03db-ee3d-48de-94b4-cfdc5267bb63">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script><script>
<!--//--><![CDATA[// ><!--

var $jq341 = jQuery.noConflict();


window.addEventListener('DOMContentLoaded', (event) => {
$jq341('.video-carousel').owlCarousel({
			loop: true,
			nav: true,
			dots: false,
                       margin:20,
 startPosition: 1,
			responsive: {
				
				0: {
				  items: 1,
				  autoHeight: true,
				  mouseDrag: false,
				  touchDrag: true,
stagePadding: 20
				},
				768: {
				  items: 3,
				  autoHeight: true,
				  mouseDrag: false,
				  touchDrag: true
				}
			  }
		});
});	

//--><!]]>
</script></div>
      
    </div>
  </div>
<div id="block-merchjsadmin" data-block-plugin-id="block_content:70a1adac-76cf-4210-96ca-ed34ecae42fb" class="block block-block-content block-block-content70a1adac-76cf-4210-96ca-ed34ecae42fb">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><script>
<!--//--><![CDATA[// ><!--

    jQuery(window).on('scroll', function() {
	  if(jQuery('body').hasClass('homepage')){
	  /*merch*/
      var $elem = jQuery('div#block-views-block-merch-block-1');
      var $window = jQuery(window);
  
      var docViewTop = $window.scrollTop();
      console.info("docViewTop" + docViewTop);
      var docViewBottom = docViewTop + $window.height();
  
      console.info("docViewBottom" + docViewBottom);
      var elemTop = $elem.offset().top * 1.1;
      console.info("elemTop" + elemTop);
      var elemBottom = elemTop + $elem.height();
      console.info("elemBottom" + elemBottom);
      if (elemTop < docViewBottom) {
          jQuery('div#block-views-block-merch-block-1').addClass('fade-in-bottom');
      }
	  }
	  });

//--><!]]>
</script></div>
      
    </div>
  </div>

  </div>

          <div class="region region-primary-menu">
    <div id="block-menucss" data-block-plugin-id="block_content:6553fab9-bee0-45a6-8194-73bb245d9579" class="block block-block-content block-block-content6553fab9-bee0-45a6-8194-73bb245d9579">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><style>
<!--/*--><![CDATA[/* ><!--*/

  div#block-menucss {
    display: none;
  }
  #page,
  #main-wrapper,
  .region-primary-menu .menu-item a.is-active,
  .region-primary-menu .menu-item--active-trail a,
  .region-primary-menu .menu a:hover,
  .region-primary-menu .menu a:focus {
    background: transparent;
  }
  li.menu-item.menu-item--active-trail a,
  .region-primary-menu .menu-item a.is-active {
    color: #0071b3;
  }
  nav,
  nav.sticky {
    position: static;
    background: transparent;
  }
  .region-primary-menu .menu-item a {
    font-size: 25px;
  }

  .region-primary-menu .block-menu .menu {
    margin: 0;
    text-align: right;
    padding: 0px;
  }

  .region-primary-menu .menu a:hover {
    color: #018fe2;
  }
  .region.region-primary-menu {
    position: absolute;
    top: 0px;
    width: 100%;
    text-align: center;
    z-index: 10;
    left: 0px;
    float: none;
  }
  .region.region-primary-menu > div,
  .region.region-primary-menu > nav {
    display: inline-block;
    vertical-align: middle;
    margin: 0px;
    padding: 0px;
  }
  .region.region-primary-menu > div {
    width: 20%;
  }
  .region.region-primary-menu > nav {
    width: 75%;
  }
  div#block-headerlogohtml {
    text-align: left;
  }
  body .region-primary-menu .menu-item,
  body:not(:target) .region-primary-menu .menu-item {
    float: none;
    display: inline-block;
    background: transparent;
    width: auto;
  }
  .region-primary-menu .menu a {
    background: transparent;
    color: #fff;
    font-size: 12px;
    margin-right: 30px;
    letter-spacing: 2px;
    text-transform: uppercase;
  }

  @media only screen and (max-width: 767px) {
    body:not(:target) .region-primary-menu .menu-toggle {
      font-size: 0;
      position: fixed;
      top: 20px;
      right: 10px;
      display: block;
      z-index: 999;
    }
    body:not(:target)
      .region-primary-menu
      .menu-toggle-target-show:target
      ~ .menu-toggle,
    body:not(:target) .region-primary-menu .menu-toggle--hide {
      display: none;
    }
    div#block-headerlogohtml {
      position: relative;
    }
    .region-primary-menu .menu-item a.is-active,
    .region-primary-menu .menu-item a {
      background: #555555;
      text-shadow: none;
      box-sizing: unset;
    }

    .region-primary-menu .menu-item a {
      color: #fff;
    }

    .region-primary-menu .block-menu .menu {
      position: fixed;
      top: 0;
      width: 100%;
      flex-direction: column;
      text-align: center;
      z-index: 111;
      overflow-y: scroll;
    }

    body:not(:target)
      .region-primary-menu
      .menu-toggle.menu-toggle--hide:after {
      background: url("/sites/g/files/g2000009681/files/2020-06/close-mob.png");
      background-repeat: no-repeat;
      width: 22px;
      height: 22px;
      background-size: 100%;
    }

    .region-primary-menu .menu-item,
    body:not(:target) .region-primary-menu .menu-item {
      width: 100%;
      float: none;
    }

    .region-primary-menu .block-menu .menu.menubg {
      background: #555;
      height: 100vh;
      width: 100vw;
      right: 0px;
    }
    body:not(:target)
      .region-primary-menu
      .menu-toggle-target-show:target
      ~ .menu
      .menu-item:first-child {
      margin-top: 15%;
    }

    body:not(:target)
      .region-primary-menu
      .menu-toggle-target-show:target
      ~ .menu-toggle--hide {
      display: block;
    }

    body:not(:target) .region-primary-menu .menu-item {
      display: none;
    }

    body:not(:target)
      .region-primary-menu
      .menu-toggle-target-show:target
      ~ .menu
      .menu-item {
      display: block;
    }
  }

/*--><!]]>*/
</style><script>
<!--//--><![CDATA[// ><!--

  jQuery(document).ready(function () {
    if (jQuery(window).width() <= 767) {
      if (window.location.hash == "#show-block-bartik-main-menu") {
        jQuery(".region-primary-menu .block-menu ul.menu").addClass("menubg");
      }
      jQuery("body:not(:target) .region-primary-menu .menu-toggle").click(
        function () {
          jQuery(".region-primary-menu .block-menu ul.menu").toggleClass(
            "menubg"
          );
        }
      );
    }
  });

//--><!]]>
</script></div>
      
    </div>
  </div>

  </div>

      </div>
    </header>
          <div class="highlighted">
        <aside class="layout-container section clearfix" role="complementary">
            <div class="region region-highlighted">
    <div data-drupal-messages-fallback class="hidden"></div>

  </div>

        </aside>
      </div>
            <div id="main-wrapper" class="layout-main-wrapper layout-container clearfix">
      <div id="main" class="layout-main clearfix">
        
        <main id="content" class="column main-content" role="main">
          <section class="section">
            <a id="main-content" tabindex="-1"></a>
              <div class="region region-content">
    <div class="views-element-container block block-views block-views-blockvideos-block-3" id="block-views-block-videos-block-3" data-block-plugin-id="views_block:videos-block_3">
  
    
      <div class="content">
      <div><div class="video-block-home view view-videos view-id-videos view-display-id-block_3 js-view-dom-id-a052c1ed5d99fa11bd84fe5c1d46c4fd8c41076479977bf074afcad0f7b04c1e">
  
    
      
      <div class="view-content">
      <div class="item-list video-block-list-wrapper">
  
  <ul class="featured">

          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
<div id="yt-player1"></div>
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/video_thumbnails/uCLwFKUuOXM.jpg 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/video_thumbnails/uCLwFKUuOXM.jpg 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/uCLwFKUuOXM.jpg?itok=elc58aAD 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/uCLwFKUuOXM.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayer" video-id="/sites/g/files/g2000011036/files/video_thumbnails/uCLwFKUuOXM.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">I Know A Love</div>
	</div>
</div>

</span></div></li>
    
  </ul>

</div>

    </div>
  
            <div class="view-footer">
      <script>
<!--//--><![CDATA[// ><!--

jQuery(document).ready(function(){
jQuery('#block-views-block-videos-block-3 .item-list ul.featured .videowrap').on('click', function (e) { 
e.preventDefault();
jQuery(this).find('.videoWrapper').hide();
jQuery(this).find('.video-title').hide();
		var playerListID1 = "";
		var youtubeID1 = "";
		var src = jQuery(this).find('.videoPlayer').attr('video-id');
		var tarr = src.split('/');    
		var file = tarr[tarr.length-1];
		var youtubeID1 = file.split('.')[0]; 
        
			var playerID1 = 'yt-player1'; 
			player = new YT.Player(playerID1, {
				height: '390',
				width: '340',
				videoId : youtubeID1,
                                host: 'https://www.youtube-nocookie.com',
							
				events : {
					'onReady' : playyoutubeVideos1,
					'onStateChange' : onPlayerStateChange
				}
			});
});
});
function playyoutubeVideos1(event) {
	event.target.playVideo();
}

//--><!]]>
</script><div class="video-block-home view view-videos view-id-videos view-display-id-block_4 js-view-dom-id-b10a969a13a5f4247343bce526cd90588a4e885344aaf7f798670ce84e17d9fe">
  
    
      
      <div class="view-content">
      <div class="item-list video-block-list-wrapper">
  
  <ul class="owl-carousel video-carousel">

          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/uCLwFKUuOXM.jpg?itok=elc58aAD 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/uCLwFKUuOXM.jpg?itok=_D5T5SQT 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/uCLwFKUuOXM.jpg?itok=atw81Nev 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/uCLwFKUuOXM.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/uCLwFKUuOXM.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">I Know A Love</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/nPO2XNDFWN0.jpg?itok=FA_8to82 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/nPO2XNDFWN0.jpg?itok=ggT3U7j3 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/nPO2XNDFWN0.jpg?itok=OupvRkxr 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/nPO2XNDFWN0.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/nPO2XNDFWN0.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Circles</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/aIcrNxaaI3Y.jpg?itok=UQAPn8WL 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/aIcrNxaaI3Y.jpg?itok=dhB0pTVP 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/aIcrNxaaI3Y.jpg?itok=JxgqV7gD 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/aIcrNxaaI3Y.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/aIcrNxaaI3Y.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">2020 Riots : How Many Times</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/P774fmLrpTk.jpg?itok=oc92pxee 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/P774fmLrpTk.jpg?itok=1OHSGLSJ 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/P774fmLrpTk.jpg?itok=myEiWNnm 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/P774fmLrpTk.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/P774fmLrpTk.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Back Home (feat. Summer Walker)</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/N0a-I8vjBKA.jpg?itok=Yivcnb2L 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/N0a-I8vjBKA.jpg?itok=ExdRNrVF 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/N0a-I8vjBKA.jpg?itok=GNw0aU8n 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/N0a-I8vjBKA.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/N0a-I8vjBKA.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Chi Chi (feat. Chris Brown)</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/v0Gu_Yh_keE.jpg?itok=rtAZKG-L 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/v0Gu_Yh_keE.jpg?itok=J-M8ZIjd 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/v0Gu_Yh_keE.jpg?itok=ZZp0PIhm 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/v0Gu_Yh_keE.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/v0Gu_Yh_keE.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Na Na</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/dXTBbM21plg.jpg?itok=SACG9qvM 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/dXTBbM21plg.jpg?itok=UgL19buk 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/dXTBbM21plg.jpg?itok=Q_cx9g28 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/dXTBbM21plg.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/dXTBbM21plg.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Slow Motion</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/ekAXPCphKXQ.jpg?itok=S0-zbWF7 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/ekAXPCphKXQ.jpg?itok=aMEfNAz8 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/ekAXPCphKXQ.jpg?itok=pPhMlmKq 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/ekAXPCphKXQ.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/ekAXPCphKXQ.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Bottoms Up</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/4r3MZNCGzVY.jpg?itok=5g3wDvhx 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/4r3MZNCGzVY.jpg?itok=PDUYIgIy 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/4r3MZNCGzVY.jpg?itok=vMGtd8Bd 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/4r3MZNCGzVY.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/4r3MZNCGzVY.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Heart Attack</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/3lU_JSby54s.jpg?itok=vaN2SSyT 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/3lU_JSby54s.jpg?itok=f4rgDwlV 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/3lU_JSby54s.jpg?itok=hNTzTl2H 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/3lU_JSby54s.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/3lU_JSby54s.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Animal</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/cEmrvCiEapM.jpg?itok=OZysv1Di 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/cEmrvCiEapM.jpg?itok=VexYDrul 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/cEmrvCiEapM.jpg?itok=0HIr0hwI 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/cEmrvCiEapM.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/cEmrvCiEapM.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Touchin Lovin (feat. Nicki Minaj)</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/cjj2E9dwjjU.jpg?itok=3aNzh3lg 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/cjj2E9dwjjU.jpg?itok=yy4UNShK 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/cjj2E9dwjjU.jpg?itok=33sRb-E- 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/cjj2E9dwjjU.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/cjj2E9dwjjU.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Foreign</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/bzhKarW3ylo.jpg?itok=58uPszy1 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/bzhKarW3ylo.jpg?itok=CnqIeiYi 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/bzhKarW3ylo.jpg?itok=zKPabngc 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/bzhKarW3ylo.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/bzhKarW3ylo.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Love Faces</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/3v5HZTwFBCs.jpg?itok=r2hmJB11 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/3v5HZTwFBCs.jpg?itok=RrWkGwrs 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/3v5HZTwFBCs.jpg?itok=m6KhjMzu 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/3v5HZTwFBCs.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/3v5HZTwFBCs.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Nobody Else But You</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/ArdBI_F1LKo.jpg?itok=su9j2JQi 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/ArdBI_F1LKo.jpg?itok=TIfUSe1C 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/ArdBI_F1LKo.jpg?itok=N69xXa5j 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/ArdBI_F1LKo.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/ArdBI_F1LKo.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Can’t Be Friends</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/Z__FHAG1Jk8.jpg?itok=QFv1mvyA 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/Z__FHAG1Jk8.jpg?itok=JAFaGg9K 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/Z__FHAG1Jk8.jpg?itok=UBcevgs6 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/Z__FHAG1Jk8.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/Z__FHAG1Jk8.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Say Aah</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/E98IYokujSY.jpg?itok=8WTyAw4M 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/E98IYokujSY.jpg?itok=A6h_6JlX 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/E98IYokujSY.jpg?itok=RVCcoS-T 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/E98IYokujSY.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/E98IYokujSY.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Neighbors Know My Name</div>
	</div>
</div>

</span></div></li>
          <li class="views-row"><div class="views-field views-field-nothing"><span class="field-content"><div class="videowrap">
	<div class="videoWrapper">
		<div class="videoImageWrapper" id="video-imag-wrapper"></span></div><div class="views-field views-field-thumbnail__target-id-1"><span class="field-content">    <picture>
                  <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_480/public/video_thumbnails/CGNsJBirnck.jpg?itok=k-3Z6bXT 1x" media="all and (min-width: 851px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_1280/public/video_thumbnails/CGNsJBirnck.jpg?itok=eiGx7oal 1x" media="all and (min-width: 560px) and (max-width: 850px)" type="image/jpeg"/>
              <source srcset="/sites/g/files/g2000011036/files/styles/wmg_default_220/public/video_thumbnails/CGNsJBirnck.jpg?itok=NdwUQsP3 1x" type="image/jpeg"/>
                  <img src="/sites/g/files/g2000011036/files/video_thumbnails/CGNsJBirnck.jpg" alt="" typeof="foaf:Image" />

  </picture>

</span></div><div class="views-field views-field-nothing-1"><span class="field-content">		</div>
		<div class="playButton icon-play2"></div>
		<div class="videoPlayerFeatured" video-id="/sites/g/files/g2000011036/files/video_thumbnails/CGNsJBirnck.jpg"></div>
	</div>
	<div class="videoTitleWrapper">		
		<div class="video-title">Already Taken</div>
	</div>
</div>

</span></div></li>
    
  </ul>

</div>

    </div>
  
            <div class="view-footer">
      <div class="view-all-videos"><a class="btn-4" href="/videos" target="_blank">View All Videos</a></div>
    </div>
    </div>
<script>
<!--//--><![CDATA[// ><!--


jQuery(window).load(function(){
jQuery('.video-block-list-wrapper .owl-item').on('click', function (e) { 
		e.preventDefault();
		var playerListID = "";
		var youtubeID = "";
		var src = jQuery(this).find('.videoPlayerFeatured').attr('video-id');
		var tarr = src.split('/');    
		var file = tarr[tarr.length-1];
		var youtubeID = file.split('.')[0];  
        jQuery('#block-views-block-videos-block-3 .view-content .featured .videoWrapper').hide();
		jQuery('#block-views-block-videos-block-3 .view-content .featured .videoTitleWrapper').hide();
        var iframecontent = jQuery('#block-views-block-videos-block-3 .view-content .featured .videowrap iframe#yt-player1');
		if(iframecontent.length >= 1){ 
			iframecontent.remove(); 
			jQuery('#block-views-block-videos-block-3 .view-content .featured .videowrap').prepend('<div id="yt-player1">');
		};
			var playerID = 'yt-player1'; 
			player = new YT.Player(playerID, {
				height: '390',
				width: '340',
				videoId : youtubeID,
				host: 'https://www.youtube-nocookie.com',			
				events : {
					'onReady' : playyoutubeVideos,
					'onStateChange' : onPlayerStateChange
				}
			});
});	
});
function playyoutubeVideos(event) {
	event.target.playVideo();
}


//--><!]]>
</script>
    </div>
    </div>
</div>

    </div>
  </div>
<div id="block-plainjsmailinglist" data-block-plugin-id="block_content:dff6afa9-94c7-4d83-8678-666481872b7c" class="block block-block-content block-block-contentdff6afa9-94c7-4d83-8678-666481872b7c">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><div class="videomlistFooterWrap">
<div class="circleEmail">
	<div class="plain-ml-wrapper dtmlightbox firstMlistForm">
		<div class="mlform">
			<div class="message">
				<p class="message-description"></p>
			</div>
			<form class="mlistFormOne mlform twostep" action="https://signup.wmg.com/register?">
				<div class="email fieldWrap">
					<input data-type="email" data-error-text="Please enter a valid email address" placeholder="Email Address" required="" class="email" name="email" /></div>
				<div class="primary-list-values">
					<input name="Datasource" type="hidden" value="TreySongz_BackHomeOutNow_Standalone_Website" /><input name="newsletterId" type="hidden" value="18751" /></div>
				<div class="submit">
					<input type="submit" class="submit mlistSubmit" value="JOIN" /></div>
			</form>
			<div class="terms">
				<a href="javascript:void(0)" class="terms">terms</a>
				<p class="terms-message fadeOut">
					By submitting my information, I agree to receive personalized updates and marketing messages about Trey Songz based on my information, interests, activities, website visits and device data and in accordance with the <a href="http://www.atlanticrecords.com/privacy-policy/" target="_blank" class="external-link">Privacy Policy</a>. 
 I understand that I can opt-out at any time by emailing <a href="mailto:privacypolicy@wmg.com">privacypolicy@wmg.com</a>.
				</p>
			</div>
		</div>
		<div class="thankyou fadeOut">
			Thank you for signing up!
		</div>
		<div class="secondform fadeOut singleform">
			<span class="secondFormClose">x</span>
			<div class="welcome">
				<p>Welcome <span class="name"></span> to the Trey Songz's mailing list!</p>
			</div>
			<form class="mlistFormTwo mlform" action="https://signup.wmg.com/register?">
				<input type="hidden" class="secondFormEmail" name="email" value="" /><div class="postalcode fieldWrap">
					<label for="postalCode" class="">Postal Code</label>
					<input type="text" name="postalcode" /></div>
				<div class="postal_country">
					<div class="country">
						<label for="country"> Country </label>
						<select class="country form-control" name="country"><option value="">Select A Country</option><option value="Afghanistan">Afghanistan</option><option value="Åland Islands">Åland Islands</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Australia">Australia</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="Botswana">Botswana</option><option value="Bouvet Island">Bouvet Island</option><option value="Brazil">Brazil</option><option value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="Brunei Darussalam">Brunei Darussalam</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Canada">Canada</option><option value="Cape Verde">Cape Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Christmas Island">Christmas Island</option><option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Congo">Congo</option><option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The
							</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Cote D'ivoire">Cote D'ivoire</option><option value="Croatia">Croatia</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="France">France</option><option value="French Guiana">French Guiana</option><option value="French Polynesia">French Polynesia</option><option value="French Southern Territories">French Southern Territories</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Greenland">Greenland</option><option value="Grenada">Grenada</option><option value="Guadeloupe">Guadeloupe</option><option value="Guam">Guam</option><option value="Guatemala">Guatemala</option><option value="Guernsey">Guernsey</option><option value="Guinea">Guinea</option><option value="Guinea-bissau">Guinea-bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option><option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="India">India</option><option value="Indonesia">Indonesia</option><option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Isle of Man">Isle of Man</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jersey">Jersey</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic
								of</option><option value="Korea, Republic of">Korea, Republic of</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macao">Macao</option><option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav
								Republic of
							</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Martinique">Martinique</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mayotte">Mayotte</option><option value="Mexico">Mexico</option><option value="Micronesia, Federated States of">Micronesia, Federated States of</option><option value="Moldova, Republic of">Moldova, Republic of</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montenegro">Montenegro</option><option value="Montserrat">Montserrat</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="New Caledonia">New Caledonia</option><option value="New Zealand">New Zealand</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Niue">Niue</option><option value="Norfolk Island">Norfolk Island</option><option value="Northern Mariana Islands">Northern Mariana Islands</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Pitcairn">Pitcairn</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Reunion">Reunion</option><option value="Romania">Romania</option><option value="Russian Federation">Russian Federation</option><option value="Rwanda">Rwanda</option><option value="Saint Helena">Saint Helena</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option><option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Sao Tome and Principe">Sao Tome and Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Serbia">Serbia</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia">Slovakia</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="South Georgia and The South Sandwich Islands">South Georgia and The South
								Sandwich
								Islands</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syrian Arab Republic">Syrian Arab Republic</option><option value="Taiwan, Province of China">Taiwan, Province of China</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania, United Republic of">Tanzania, United Republic of</option><option value="Thailand">Thailand</option><option value="Timor-leste">Timor-leste</option><option value="Togo">Togo</option><option value="Tokelau">Tokelau</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Turks and Caicos Islands">Turks and Caicos Islands</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United Kingdom">United Kingdom</option><option value="United States">United States</option><option value="United States Minor Outlying Islands">United States Minor Outlying Islands
							</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Venezuela">Venezuela</option><option value="Viet Nam">Viet Nam</option><option value="Virgin Islands, British">Virgin Islands, British</option><option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option><option value="Wallis and Futuna">Wallis and Futuna</option><option value="Western Sahara">Western Sahara</option><option value="Yemen">Yemen</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option></select></div>


				</div>
				<div class="name">
					<div class="first fieldWrap">
						<label for="FirstName" class="">First Name</label>
						<input type="text" class="first" name="firstname" /></div>
				</div>
				<div class="birth-date-title">Birth Date</div>
				<div class="birthday">
					<div class="dobMonth fieldWrap">
						<select name="dobMonth" class=""><option value="">Month</option><option value="1">January</option><option value="2">February</option><option value="3">March</option><option value="4">April</option><option value="5">May</option><option value="6">June</option><option value="7">July</option><option value="8">August</option><option value="9">September</option><option value="10">October</option><option value="11">November</option><option value="12">December</option></select></div>
					<div class="dobDay fieldWrap">
						<select name="dobDay" class=""><option value="">Day</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select></div>
				</div>


				<input name="newsletterId" type="hidden" value="14075551" /><input name="Datasource" type="hidden" value="TreySongz_BackHomeOutNow_Standalone_Website" /><div class="globaloptin fieldWrap">
					<input type="checkbox" name="goptin" id="goptin_checkbox4" value="50" /><label for="goptin_checkbox4" class="goptin_checkbox">Sign me up to discover more artists like
						<span>Trey Songz</span> and other offers.</label>
				</div>
				<div class="submit">
					<input type="submit" class="submit mlistSubmit" value="SUBMIT" /></div>
				<div class="terms">
					<a href="javascript:void(0)" class="terms">terms</a>
					<p class="terms-message-2 fadeOut">
						By submitting my information, I agree to receive personalized updates and marketing messages about Trey Songz based on my information, interests, activities, website visits and device data and in accordance with the <a href="http://www.atlanticrecords.com/privacy-policy/" target="_blank" class="external-link" rel="nofollow">Privacy Policy</a>. In addition, if I have checked the box above, I agree to receive such updates and messages about similar artists, products and offers. I understand that I can opt-out from messages at any time by emailing <a href="mailto:privacypolicy@wmg.com">privacypolicy@wmg.com</a>.
					</p>
				</div>
		</form></div>

	</div>
</div>
<div class="circleFooter">
	<div class="Socialicons">
		<ul class="footer-social"><li class="fs-fb">
				<a data-track="facebook" class="fs-fb-link icon-facebook2" href="https://www.facebook.com/treysongz" target="_blank"></a>
			</li>
			<li class="fs-tw">
				<a data-track="twitter" class="fs-tw-link icon-twitter" href="https://twitter.com/TreySongz" target="_blank"></a>
			</li>
			<li class="fs-ig">
				<a data-track="instagram" class="fs-ig-link icon-instagram" href="https://instagram.com/treysongz" target="_blank"></a>
			</li>
			<li class="fs-yt">
				<a data-track="youtube" class="fs-yt-link icon-youtube" href="https://www.youtube.com/user/TreySongzVideos" target="_blank"></a>
			</li>
			<li class="fs-an">
				<a class="fs-an-link icon-spotify" href="https://open.spotify.com/artist/2iojnBLj0qIMiKPvVhLnsH" data-track="spotify" target="_blank"></a>
			</li>

			<li class="fs-apple">
				<a data-track="apple-music" class="fs-ap-link icon-appleinc" href="https://music.apple.com/us/artist/trey-songz/31733124" target="_blank"></a>
			</li>
		</ul></div>
</div>
</div>
<style>
<!--/*--><![CDATA[/* ><!--*/

.videomlistFooterWrap{
	font-size: 0;
	position: relative;
    z-index: 3;
}
.circleEmail .plain-ml-wrapper {
    display: block;
    width: 100%;
    max-width: 100%;
}
.circleEmail {
    display: inline-block;
    width: 50%;
    vertical-align: middle;
}

.circleFooter {
    display: inline-block;
    width: 43%;
    vertical-align: top;
    margin-left: 7%;
	padding-top: 10px;
}
.circleEmail form.mlistFormOne {
    display: block;
    width: 100%;
    margin: 0;
	padding: 0;
}
.circleEmail div.mlform {
    max-width: 21vw;
    margin: 0 auto;
    margin-right: 0;
	padding: 0;
}
.circleEmail .plain-ml-wrapper div.email {
    display: inline-block;
    vertical-align: top;
    width: 81.5%;
    margin: 0;
}
.circleEmail .submit {
    display: inline-block;
    vertical-align: top;
    width: 18.5%;
}
.primary-list-values {
    display: none;
}
.circleEmail input.submit.mlistSubmit {
    display: block;
    width: 100%;
	background: url(/sites/g/files/g2000011036/files/2020-09/email-10-icon.png) #F1F2ED;
    background-repeat: no-repeat;
    background-size: cover;
    font-size: 0;
    border: 10px solid #F1F2ED;
}
#block-plainjsmailinglist .plain-ml-wrapper {
    max-width: 100%;
}
.circleEmail .plain-ml-wrapper .terms {
    text-align: left;
    font-size: 10px;
    text-decoration: underline;
    padding-top: 4px;
	text-transform: uppercase;
}
.circleEmail .mlform input {
    height: 3.125vw;
    background: #F1F2ED;
    border: 0;
    color: #000;
	font-style: normal;
	font-size: 1.04vw;
    font-weight: 700;
	text-transform: uppercase;
}
.circleFooter .Socialicons {
    width: 100%;
}
#block-plainjsmailinglist .circleEmail span.input-error, div#nav .circleEmail span.input-error{
    background: transparent;
    position: absolute;
    top: -16px;
    height: 0;
    width: 100%;
    left: 0;
	text-align: left;
	font-size: 9px;
}
.circleEmail .plain-ml-wrapper p.terms-message-2, .circleEmail .plain-ml-wrapper p.terms-message {
    bottom: 20px;
    padding: 5px;
    color: #000 !important;
	background: #F1F2ED;
	line-height: 1.4;
}
.circleEmail .plain-ml-wrapper p.terms-message-2 a, .circleEmail .plain-ml-wrapper p.terms-message a{
	color: #000;
	text-decoration: underline;
}
#block-plainjsmailinglist .mlform p.terms-message a, .circleEmail .mlform p.terms-message a {
    color: #000;
	text-decoration: underline;
}
.circleFooter .Socialicons li a {
    color: #F1F2ED !important;
	margin-right: 1.4vw;
    font-size: 1.7vw;
}
.circleFooter .Socialicons li:last-child a {
    margin: 0;
}
.circleEmail .secondform {
    max-width: 23vw;
    margin: 0 auto;
    margin-right: 0;
    padding: 0;
}
.circleEmail .plain-ml-wrapper label:not(.goptin_checkbox) {
    position: static;
    transform: none;
    text-align: left;
	transition: none;
	font-size: 1vw;
    font-weight: 700;
	color: #F1F2ED;
}
.circleEmail .secondform .birth-date-title {
    font-size: 1vw;
    font-weight: 700;
}
.circleEmail .secondform .postalcode.first, .circleEmail .secondform div.dobMonth.fieldWrap, form.mlistFormTwo .postalcode.fieldWrap {
    margin-right: 4%;
}
.circleEmail form.mlistFormTwo .postal_country, .circleEmail div.postalcode.fieldWrap, .circleEmail form.mlistFormTwo .dobMonth, .circleEmail form.mlistFormTwo .dobDay {
    display: inline-block;
    width: 48%;
}
.circleEmail .plain-ml-wrapper select {
    background: url(/sites/g/files/g2000011036/files/2020-09/DropDown-black.svg) no-repeat right 5% center #F1F2ED;
    background-size: 5%;
	-webkit-appearance: none;
    -moz-appearance: none;
    color: #000;
	font-weight: 700;
	height: 3.125vw;
	font-size: 1.04vw;
	padding-right: 25px;
}
#block-plainjsmailinglist option, div#nav option {
    background: #F1F2ED;
    color: #000;
}
.circleEmail option {
    background: #F1F2ED;
    color: #000;
}
#block-plainjsmailinglist input:-webkit-autofill,#block-plainjsmailinglist select:-webkit-autofill,
div#nav input:-webkit-autofill, div#nav input:-webkit-autofill{
	-webkit-box-shadow:0 0 0px 1000px #F1F2ED inset;
	-webkit-text-fill-color:#000;
}
.circleEmail input:-webkit-autofill,.circleEmail select:-webkit-autofill{
	-webkit-box-shadow:0 0 0px 1000px #F1F2ED inset;
	-webkit-text-fill-color:#000;
}
.circleEmail form.mlistFormTwo input.submit.mlistSubmit {
    font-size: 1.04vw;
    background: #F1F2ED;
    border: 0;
}
.circleEmail form.mlistFormTwo .submit {
    width: 10vw;
}
#block-plainjsmailinglist .plain-ml-wrapper .moveUp{
	position: static;
	transform: none;
    text-align: left;
	transition: none;
}
.circleEmail .secondform .name{
	display: inline;
	color: #F1F2ED;
}
.circleEmail .plain-ml-wrapper form.mlistFormTwo .terms {
    text-align: center;
    color: #F1F2ED;
}
.circleEmail .plain-ml-wrapper form.mlistFormTwo p.terms-message-2{
	margin: 0;
}
.globaloptin input[type="checkbox"]:focus + label::before {
    outline: 0;
}
.circleEmail div.thankyou, .circleEmail .secondform .globaloptin span {
    color: #F1F2ED;
    font-weight: 700;
}
.circleEmail div.thankyou{
	text-align: right;
}
.circleEmail div.plain-ml-wrapper span.secondFormClose{
	font-size: 1vw;
}
.circleEmail .secondform .welcome{
	font-size: 1.2vw;
	font-weight: 700;
}
.circleEmail .secondform .welcome p{
	color: #F1F2ED;
}
.circleEmail .plain-ml-wrapper label.goptin_checkbox {
    font-size: 0.7vw;
    font-weight: 700;
}
input:-moz-placeholder {
	/* Firefox 18- */
	color: #000000;
	-webkit-text-fill-color: #000;
}
input::-moz-placeholder {
	/* Firefox 19+ */
	color: #000000;
	-webkit-text-fill-color: #000;
}
input:-ms-input-placeholder {
	color: #000000;
	-webkit-text-fill-color: #000;
}
input::placeholder {
	color: #000000;
	-webkit-text-fill-color: #000;
}
input, textarea, select{
	font-family: proxima-nova,sans-serif;
	font-weight: 700;
}
.circleEmail div.mlform a.terms {
    padding-left: 10px;
}
.circleFooter ul.footer-social {
    padding: 0;
}
div#block-plainjsmailinglist{
	background: #000;
	padding-top: 6.5vw;
}
@media only screen and (max-width: 1023px) {
.circleEmail {
    display: block;
    width: 100%;
}
.circleFooter {
    display: block;
    width: 100%;
    margin: 0;
	text-align: center;
	padding-top: 40px;
}
.circleEmail div.mlform {
    width: 89.6%;
    margin: 0 auto;
	max-width: 336px
}
.circleEmail .mlform input {
    height: 60px;
    font-size: 16px;
}
.circleEmail input.submit.mlistSubmit {
	border-top: 14px solid #F1F2ED;
    border-bottom: 12px solid #F1F2ED;
    border-left: 14px solid #F1F2ED;
    border-right: 20px solid #F1F2ED;
    padding: 0;
    background-size: 90% auto;
	border-radius: 0;
}
.circleEmail .plain-ml-wrapper div.email {
    width: 74%;
}
.circleEmail .submit {
    width: 26%;
}
.circleEmail .secondform {
    width: 89.6%;
    margin: 0 auto;
	max-width: 336px;
	position: relative;
}
.circleEmail .secondform .welcome {
    font-size: 16px;
}
.circleEmail div.plain-ml-wrapper span.secondFormClose {
    font-size: 16px;
	right: 0;
    top: -10px;
}
.circleEmail .plain-ml-wrapper label:not(.goptin_checkbox) {
    font-size: 15px;
}
.circleEmail .plain-ml-wrapper select {
    font-size: 16px;
    height: 60px;
}
.circleEmail .secondform .birth-date-title {
    font-size: 15px;
}
.circleEmail .plain-ml-wrapper label.goptin_checkbox {
    font-size: 11px;
}
.circleEmail form.mlistFormTwo .submit {
    width: 160px;
}
.circleEmail form.mlistFormTwo input.submit.mlistSubmit {
    font-size: 16px;
}
.circleFooter .Socialicons li a {
    font-size: 28px;
    margin-right: 28px;
}
.circleEmail .plain-ml-wrapper .secondform input[name="goptin"]{
	height: 18px;
}
.circleEmail div.thankyou{
	text-align: center;
}
.circleEmail .plain-ml-wrapper p.terms-message-2 a, .circleEmail .plain-ml-wrapper p.terms-message a{
	color: #000;
	font-family: proxima-nova,sans-serif;
	font-size: 12px;
}
}

/*--><!]]>*/
</style></div>
      
    </div>
  </div>
<div id="block-circlesblock" data-block-plugin-id="block_content:bdbf6875-3bc4-4ab9-9b20-d759acba85d4" class="block block-block-content block-block-contentbdbf6875-3bc4-4ab9-9b20-d759acba85d4">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><div class="circleOuter">
    <div class="mobCircleImg"><img src="/sites/g/files/g2000011036/files/2020-10/circlemobImgnew.png" class="circleMobImg" /></div>
	<div class="videoBG first">
        <div class="videoWrap" style="display: none;">
            <div class="videoContent1">
            </div>
        </div>
        <video class="video-image" id="mp4Video" autoplay="" loop="" muted=""><source src="https://d2cstorage-a.akamaihd.net/atl/treysongz/TreySongz-CirclesHD.mp4" type="video/mp4"></source></video><div class="circleLogo log">
            <img src="/sites/g/files/g2000011036/files/2020-10/circle.png" /></div>
        <div class="linkWrapper">
            <a href="javascript:void(0)" class="watchNow btn-4">WATCH NOW</a>
            <a href="https://TreySongz.lnk.to/Circles" target="_blank" class="listennow btn-4">listen now</a>
        </div>
    </div>
	<div class="mobbottomCircleImg"><img src="/sites/g/files/g2000011036/files/2020-10/circlebottomImg.png" class="circleMobbottomImg" /></div>
</div>
<script>
<!--//--><![CDATA[// ><!--

jQuery(document).ready(function() {
    jQuery('.first a.watchNow').click(function(event) {
		event.preventDefault();
        jQuery('.first .videoWrap').show();
        jQuery('.videoContent1').append('<div class="videoPlayer1" id="ytplayer3" data-video-track="nPO2XNDFWN0">');
        setTimeout(function() {
            var youtubeID = jQuery('.videoPlayer1').attr('data-video-track');
            var playerID = jQuery('.videoPlayer1').attr('id');
            formYoutubePlayernew(playerID, youtubeID);
        }, 500);
    });
});
function formYoutubePlayernew(playerID, youtubeID) {
    new YT.Player(playerID, {
        playerVars: {
            'controls': 1,
            'showinfo': 0,
            'rel': 0,
            'autoplay': 0,
            'loop': 1,
            'mute': 0,
            'modestbranding': 1,
            'iv_load_policy': 3,
            'wmode': 'transparent',
            'html5': 1,
        },
        videoId: youtubeID,
        host: 'https://www.youtube-nocookie.com',
        events: {
            'onReady': playVideo,
            'onStateChange': onPlayerStateChange
        }
    });
}
function playVideo(event) {
    event.target.playVideo();
}

//--><!]]>
</script><style>
<!--/*--><![CDATA[/* ><!--*/

.mobCircleImg, .mobbottomCircleImg{
	display: none;
}
.videoBG.first {
    position: relative;
    width: 100%;
    height: 100vh;
    object-fit: cover;
}
.videoWrap {
    position: absolute;
    height: 100%;
    width: 100%;
    z-index: 3;
}
.video-image {
    display: block;
    object-fit: cover;
    width: 100%;
    height: 100%;
}
.log {
    position: absolute;
    top: 47%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 50%;
    z-index: 1;
}
.linkWrapper {
    position: absolute;
    top: 66%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
    z-index: 1;
	text-align: center;
}
.linkWrapper a {
    background: #FFFFFF;
    color: #000000;
    max-width: 10.416vw;
    height: 2.6vw;
    width: 100%;
    display: inline-block;
    line-height: 2.8vw;
    text-decoration: none;
    font-size: 1.041vw;
    text-transform: uppercase;
	font-family: proxima-nova, sans-serif;
    font-weight: 700;
}
.linkWrapper a {
    margin-right: 1.5625vw;
}
.linkWrapper a:last-child {
    margin-right: 0;
}
.videoWrap iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
div#block-circlesblock {
    margin: 0;
	padding: 0;
	padding-top: 3.65vw;
	background: #000;
}
@media only screen and (max-width: 1024px){
.linkWrapper a {
    max-width: 106px;
    width: 100%;
    height: 33px;
    line-height: 34px;
    font-size: 13px;
    margin-right: 3.3%;
}
.linkWrapper {
    top: 60%;
}
.linkWrapper {
    display: block;
    max-width: 100%;
    width: 100%;
    margin-top: 30px;
}
}
@media only screen and (max-width: 1023px){
.mobCircleImg{
	display: block;
	margin-bottom: -60px;
	padding-top: 50px;
}
.mobCircleImg img {
    width: 100%;
}
.mobbottomCircleImg {
    display: block;
    position: relative;
    width: 223px;
    margin: 0 auto;
    margin-left: 0;
    margin-top: -55px;
}
}
@media only screen and (max-width: 767px) and (orientation: portrait) {
    .linkWrapper {
        top: 55%;
    }
}
@media only screen and (max-width: 767px) and (orientation:landscape) {
	.linkWrapper {
        top: 64%;
    }
}
@media only screen and (max-width:767px) {
    .videoBG.first .video-image {
        display: none
    }
	.log {
        width: 85%;
    }
	.videoBG.first {
        object-fit: cover;
        background: url('/sites/g/files/g2000011036/files/2020-10/TreySongz-Circles-WebSiteHeader-640x1130.gif') center center;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }
}
@media only screen and (max-width: 1024px) and (min-width: 768px){
.log {
    width: 70%;
}
}

/*--><!]]>*/
</style></div>
      
    </div>
  </div>
<div class="views-element-container block block-views block-views-blockmerch-block-1" id="block-views-block-merch-block-1" data-block-plugin-id="views_block:merch-block_1">
  
      <h2>Official Store</h2>
    
      <div class="content">
      <div><div class="in-grid view view-merch view-id-merch view-display-id-block_1 js-view-dom-id-77b5ca4ef44fe64326167b37784030735190477c8c1be258fddf29aac01202bd">
  
    
      
      <div class="view-content">
      <div class="item-list">
  
  <ul class="items">

          <li class="row-"><div class="views-field views-field-field-product-image"><div class="field-content"><a href="https://store.treysongz.com/" target="_blank"><article class="media media--type-image media--view-mode-default">
  
      
            <div class="field field--name-image field--type-image field--label-hidden field__item">  <img src="/sites/g/files/g2000011036/files/2020-10/TreySongz-BackHomeMerch-1100x1100.gif" width="1100" height="1100" alt="Trey Merch" typeof="foaf:Image" />

</div>
      
  </article>
</a></div></div></li>
    
  </ul>

</div>

    </div>
  
            <div class="view-footer">
      <div class="custom-pager"><a data-track="enter-store" href="https://store.treysongz.com/" target="_blank" class="secondary-btn anchor-link btn-4">view all merch</a></div>
<div class="merchBotImg"><img src="/sites/g/files/g2000011036/files/2020-10/MerchBottomImg.png" class="merchmobimg" /></div>
    </div>
    </div>
</div>

    </div>
  </div>
<div id="block-merchblockcss" data-block-plugin-id="block_content:c0ce1ad3-a97b-4ae8-aab9-0b8db549fd9b" class="block block-block-content block-block-contentc0ce1ad3-a97b-4ae8-aab9-0b8db549fd9b">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><style>
<!--/*--><![CDATA[/* ><!--*/

	div#block-views-block-merch-block-1 .in-grid {
		max-width: 48.96vw;
		margin: 0 auto !important;
		padding: 0;
	}
	div#block-views-block-merch-block-1 {
		/*padding: 12.2vw 0 7.5vw;*/
padding:7vw 0;
		background: #000;
	}
	div#block-views-block-merch-block-1 h2 {
		font-family: 'Bodoni LT W01 Bold';
    font-size: 3.125vw;
    padding-bottom: 4.739vw;
    letter-spacing: 0.0781vw;
    color: #F1F2ED;
	}
	a.secondary-btn.anchor-link {
		display: inline-block;
		height: 2.6vw;
		font-size: 1.04vw;
		color: #000;
		background: #F1F2ED;
		line-height: 2.6vw;
		font-family: proxima-nova, sans-serif;
		font-weight: 700;
		padding: 0;
		border: 0 !important;
		border-radius: 0;
		width: 21.6vw;
		letter-spacing: 0;
	}
	div#block-views-block-merch-block-1 .custom-pager {
		margin-top: 4vw;
	}
	[class*="block-views-blockmerch-block-"] .item-list ul.items {
		justify-content: center;
	}
	[class*="block-views-blockmerch-block-"] .item-list ul.items li {
		flex: 0 0 94%;
		margin: 0 3% 3% 0 !important;
	}
	[class*="block-views-blockmerch-block-"] .item-list ul.items li:nth-child(3n) {
		margin: 0 !important;
	}
	div#block-views-block-merch-block-1 img:hover {
		opacity: 0.5;
	}
	div#block-views-block-merch-block-1 img {
		transition: all 0.5s;
		margin: 0;
	}
	.merchBotImg {
		display: none;
	}
	div#block-views-block-merch-block-1 .merchBotImg img:hover {
		opacity: 1;
	}
	@media only screen and (max-width: 1023px) {
		div#block-views-block-merch-block-1 .in-grid {
			max-width: 100%;
			padding: 0;
		}
		div#block-views-block-merch-block-1 .in-grid .view-content {
			max-width: 93%;
			padding: 0;
			margin: 0 auto;
		}
		[class*="block-views-blockmerch-block-"] .item-list ul.items li {
			flex: 0 0 48.5% !important;
		}
		[class*="block-views-blockmerch-block-"] .item-list ul.items li:nth-child(3n) {
			margin: 0 3% 3% 0 !important;
		}
		[class*="block-views-blockmerch-block-"] .item-list ul.items li:nth-child(2n) {
			margin: 0 !important;
		}
		div#block-views-block-merch-block-1 {
			padding: 93px 0 115px;
		}
		div#block-views-block-merch-block-1 .custom-pager {
			margin-top: 30px;
		}
		a.secondary-btn.anchor-link {
			width: 249px;
			height: 40px;
			line-height: 40px;
			font-size: 16px;
		}
		.merchBotImg {
			display: block;
			padding-top: 120px;
		}
		.merchBotImg img {
			width: 100%;
		}
div#block-views-block-merch-block-1 h2{
    font-size: 30px;
    letter-spacing: 0.75px;
    padding-bottom: 53px;
}
	}

/*--><!]]>*/
</style></div>
      
    </div>
  </div>
<div class="views-element-container block block-views block-views-blockmusic-block-1" id="block-views-block-music-block-1" data-block-plugin-id="views_block:music-block_1">
  
      <h2>Music</h2>
    
      <div class="content">
      <div><div class="music-block-home in-grid view view-music view-id-music view-display-id-block_1 js-view-dom-id-3d2c7727dd38ae2688326f82ca6309c05b979439863a589fe338fda4ca31fd78">
  
    
      <div class="view-header">
      <div class="view view-music view-id-music view-display-id-block_2 js-view-dom-id-09ab25b1d0c909dca37fa0efbc205662b0a93a21f7154a7d2fb18ecc12eb4670">
  
    
      
      <div class="view-content">
      <div class="item-list">
  
  <ul class="items">

          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image">  <img src="/sites/g/files/g2000011036/files/2020-10/TREY_BACKHOME_ALBUM_COVER_FINAL.jpg" width="1500" height="1500" typeof="Image" />

</a></div>
    </div>
    <div class="albumTitle">
        BACK HOME
    </div>
	<div class="getitNowBtn">
		<a class="GetitNowLink btn-4" href="https://treysongz.lnk.to/BackHomeAlbum" target="_blank">get it now</a>
	</div>
 </div></span></div></li>
    
  </ul>

</div>

    </div>
  
          </div>

    </div>
      
      <div class="view-content">
      <div class="item-list">
  
  <ul class="items">

          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper musicCarousel">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image"><a class="albumImgLink" href="https://TreySongz.lnk.to/ChiChi" target="_blank">  <img src="/sites/g/files/g2000011036/files/styles/medium/public/2020-10/Trey%20Songz%20_Chi%20Chi_%20Ft.%20Chris%20Brown%20Single%20Art.jpg?itok=uqXAgm4G" width="220" height="220" typeof="Image" class="image-style-medium" />


</a></div>
    </div>
    <div class="albumTitle">
        CHI CHI (feat. Chris Brown) (SINGLE)
    </div>
 </div></span></div></li>
          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper musicCarousel">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image"><a class="albumImgLink" href="https://treysongz.lnk.to/TremaineTheAlbum" target="_blank">  <img src="/sites/g/files/g2000011036/files/styles/medium/public/2020-10/Trey-Songz-Tremaine-The-Album.jpg?itok=meZwymuG" width="220" height="220" typeof="Image" class="image-style-medium" />


</a></div>
    </div>
    <div class="albumTitle">
        TREMAINE THE ALBUM
    </div>
 </div></span></div></li>
          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper musicCarousel">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image"><a class="albumImgLink" href="https://TreySongz.lnk.to/TriggaReloaded" target="_blank">  <img src="/sites/g/files/g2000011036/files/styles/medium/public/2020-10/trigga-5year-still.jpg?itok=ogsyUJ8z" width="220" height="220" typeof="Image" class="image-style-medium" />


</a></div>
    </div>
    <div class="albumTitle">
        TRIGGA RELOADED
    </div>
 </div></span></div></li>
          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper musicCarousel">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image"><a class="albumImgLink" href="https://TreySongz.lnk.to/ChapterVDeluxe" target="_blank">  <img src="/sites/g/files/g2000011036/files/styles/medium/public/2020-10/TREY_COMP_FINAL_GREY_FINAL.jpg?itok=tD5FAkxL" width="200" height="200" typeof="Image" class="image-style-medium" />


</a></div>
    </div>
    <div class="albumTitle">
        CHAPTER V
    </div>
 </div></span></div></li>
          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper musicCarousel">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image"><a class="albumImgLink" href="https://TreySongz.lnk.to/PassionPainPleasure" target="_blank">  <img src="/sites/g/files/g2000011036/files/styles/medium/public/2020-10/Passion-pain-%26-Pleasure.jpg?itok=YEmG-BjI" width="151" height="151" typeof="Image" class="image-style-medium" />


</a></div>
    </div>
    <div class="albumTitle">
        PASSION PAIN &amp; PLEASURE
    </div>
 </div></span></div></li>
          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper musicCarousel">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image"><a class="albumImgLink" href="https://TreySongz.lnk.to/ReadyAlbum" target="_blank">  <img src="/sites/g/files/g2000011036/files/styles/medium/public/2020-10/Trey-Songz-Ready.jpg?itok=Wvcrlq7H" width="200" height="201" typeof="Image" class="image-style-medium" />


</a></div>
    </div>
    <div class="albumTitle">
        READY
    </div>
 </div></span></div></li>
          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper musicCarousel">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image"><a class="albumImgLink" href="https://TreySongz.lnk.to/TreyDay" target="_blank">  <img src="/sites/g/files/g2000011036/files/styles/medium/public/2020-10/Trey-Songz-Trey-Day-Album-Cover.jpg?itok=H5OaICpt" width="151" height="151" typeof="Image" class="image-style-medium" />


</a></div>
    </div>
    <div class="albumTitle">
        TREY DAY
    </div>
 </div></span></div></li>
          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper musicCarousel">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image"><a class="albumImgLink" href="https://TreySongz.lnk.to/IGottaMakeIt" target="_blank">  <img src="/sites/g/files/g2000011036/files/styles/medium/public/2020-10/Trey-IGottaMakeIt.jpg?itok=3kUtiIgg" width="200" height="200" typeof="Image" class="image-style-medium" />


</a></div>
    </div>
    <div class="albumTitle">
        I GOTTA MAKE IT
    </div>
 </div></span></div></li>
          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper musicCarousel">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image"><a class="albumImgLink" href="https://TreySongz.lnk.to/Intermission" target="_blank">  <img src="/sites/g/files/g2000011036/files/styles/medium/public/2020-10/TREY_INTERMISSION_FINAL.jpg?itok=PlSwZ_1_" width="200" height="200" typeof="Image" class="image-style-medium" />


</a></div>
    </div>
    <div class="albumTitle">
        INTERMISSION I &amp; II
    </div>
 </div></span></div></li>
          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper musicCarousel">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image"><a class="albumImgLink" href="https://TreySongz.lnk.to/AnticipationMixtapes" target="_blank">  <img src="/sites/g/files/g2000011036/files/styles/medium/public/2020-10/Anticipation.jpg?itok=U2kEGwO_" width="151" height="151" typeof="Image" class="image-style-medium" />


</a></div>
    </div>
    <div class="albumTitle">
        ANTICIPATION I &amp; II
    </div>
 </div></span></div></li>
          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper musicCarousel">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image"><a class="albumImgLink" href="https://treysongz.lnk.to/28" target="_blank">  <img src="/sites/g/files/g2000011036/files/styles/medium/public/2020-10/Trey-Songz-28.jpg?itok=PHSWBf50" width="220" height="220" typeof="Image" class="image-style-medium" />


</a></div>
    </div>
    <div class="albumTitle">
        28
    </div>
 </div></span></div></li>
          <li><div class="views-field views-field-nothing"><span class="field-content"><div class="musicWrapper musicCarousel">
    <div class="music-left-wrapper album-wrapper">
        <div class="album-image"><a class="albumImgLink" href="https://TreySongz.lnk.to/11" target="_blank">  <img src="/sites/g/files/g2000011036/files/styles/medium/public/2020-10/Trey-Songz-11.jpg?itok=jrP_DyMY" width="220" height="220" typeof="Image" class="image-style-medium" />


</a></div>
    </div>
    <div class="albumTitle">
        11
    </div>
 </div></span></div></li>
    
  </ul>

</div>

    </div>
  
            <div class="view-footer">
      <div class="custom-pager"><a href="/music" target="_blank" class="discBtn anchor-link btn-4">view full discography</a></div>
<div class="Followmob"><img src="/sites/g/files/g2000011036/files/2020-10/followmobImg.png" class="followImgmob" /></div>
    </div>
    </div>
</div>

    </div>
  </div>
<div id="block-musiccssandjs" data-block-plugin-id="block_content:57a3c5dd-9c1c-4f2d-a146-b3e68189e9a2" class="block block-block-content block-block-content57a3c5dd-9c1c-4f2d-a146-b3e68189e9a2">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><script>
<!--//--><![CDATA[// ><!--

$jq341(document).ready(function () {
  $jq341('.music-block-home > .view-content ul.items').addClass('owl-carousel');
  $jq341('.music-block-home > .view-content ul.items').owlCarousel({
			loop: true,
			nav: true,
			dots: false,
            margin:20,
			responsive: {
				
				0: {
				  items: 1,
				  mouseDrag: false,
				  touchDrag: true,
			      stagePadding: 100
				},
				768: {
				  items: 3,
				  mouseDrag: false,
				  touchDrag: true
				},
		1024: {
		  items: 5,
		  margin:30,
		  mouseDrag: false,
		  touchDrag: true
		}
			  }
		});
	});

//--><!]]>
</script><style>
<!--/*--><![CDATA[/* ><!--*/

div#block-views-block-music-block-1 .in-grid {
    max-width: 50.78vw;
    margin: 0 auto;
    padding: 0;
    text-align: center;
}
.Followmob{
	display: none;
}
[class *=" block-views-blockmusic-block-"] .item-list ul.items {
    display: block;
}
div#block-views-block-music-block-1 .in-grid > .view-header .musicWrapper {
    max-width: 23.9vw;
    margin: 0 auto;
	padding-bottom: 2.08vw;
}
div.music-block-home img {
    margin: 0 auto;
    width: 100%;
}
div#block-views-block-music-block-1 h2 {
    display: none;
}
div#block-views-block-music-block-1 {
    padding-bottom: 8vw;
 padding-top: 8vw;
    background: #000;
	position: relative;
    overflow: hidden;
}
.albumTitle {
    font-size: 1.67vw;
    letter-spacing: 0.04px;
    font-family: 'Bodoni LT W01 Bold';
    padding: 1vw 0;
}
.musicWrapper.musicCarousel .albumTitle {
    font-size: 1.04vw;
    letter-spacing: 0;
    padding: 0.9vw 0;
	text-align: left;
}
a.GetitNowLink {
    display: inline-block;
    width: 7.03vw;
    height: 1.77vw;
    line-height: 1.77vw;
    color: #000;
    background: #F1F2ED;
    font-size: 0.68vw;
    font-weight: 700;
}
[class *=" block-views-blockmusic-block-"] .item-list ul.items li{
	margin-bottom: 0 !important;
}
div#block-views-block-music-block-1 .owl-nav .owl-prev {
    background: url(/sites/g/files/g2000009991/files/2020-02/prev-arrow.svg) no-repeat scroll 0 0 transparent;
    background-size: 100% auto;
    width: 1vw;
    height: 60px;
    left: -5%;
    top: 40%;
    transform: translate(-50%, -50%);
}
div#block-views-block-music-block-1 .owl-nav .owl-next {
    background: url(/sites/g/files/g2000009991/files/2020-02/next-arrow.svg) no-repeat scroll 0 0 transparent;
    background-size: 100% auto;
    width: 1vw;
    height: 60px;
    right: -7%;
    top: 40%;
    transform: translate(-50% , -50%);
}
a.discBtn.anchor-link {
    width: 21.67vw;
    display: inline-block;
    height: 2.6vw;
    line-height: 2.6vw;
    background: #F1F2ED;
    color: #000;
    font-size: 1.04vw;
    font-weight: 700;
}
@media only screen and (max-width:1023px) {
div#block-views-block-music-block-1 .in-grid {
    max-width: 100%;
}
div#block-views-block-music-block-1 .owl-carousel .owl-stage:after{
	display: none;
}
.Followmob{
	display: block;
	padding-top: 85px;
}
div#block-views-block-music-block-1 .in-grid > .view-header .musicWrapper {
    width: 86%;
    max-width: 323px;
    padding-bottom: 60px;
}
.albumTitle {
    font-size: 32px;
    letter-spacing: 0.8px;
    padding-top: 21px;
    padding-bottom: 12px;
}
a.GetitNowLink {
    width: 135px;
    height: 34px;
    line-height: 34px;
    font-size: 13px;
    margin: 0 auto;
}
.musicWrapper.musicCarousel .albumTitle {
    font-size: 20px;
    padding-top: 18px;
    padding-bottom: 30px;
}
a.discBtn.anchor-link {
    width: 249px;
    height: 40px;
    line-height: 40px;
    font-size: 16px;
    margin: 0 auto;
}
div#block-views-block-music-block-1 {
    padding-bottom: 60px;
}
}

/*--><!]]>*/
</style></div>
      
    </div>
  </div>
<div id="block-bartik-content" data-block-plugin-id="system_main_block" class="block block-system block-system-main-block">
  
    
      <div class="content">
      
<article role="article" about="/home" class="node node--type-landing-page node--view-mode-full clearfix">
  <header>
    
          
      </header>
  <div class="node__content clearfix">
    
  </div>
</article>

    </div>
  </div>
<div id="block-lightboxmailinglist" data-block-plugin-id="block_content:21de740c-602f-4c42-85f2-8c34e0052448" class="block block-block-content block-block-content21de740c-602f-4c42-85f2-8c34e0052448">
  
      <h2>Lightbox mailing list</h2>
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><script>
<!--//--><![CDATA[// ><!--

    jQuery(document).ready(function() {
        jQuery('a.mlistlightbox').click(function() {
            jQuery('div#block-lightboxmailinglist').addClass("lightboxActive");
            jQuery('div#block-lightboxmailinglist.lightboxActive').show();
        });
        jQuery('div#block-lightboxmailinglist .secondFormCloseWrap.first a').click(function() {
           jQuery('div#block-lightboxmailinglist.lightboxActive').hide();
        });
     //   jQuery('#signupForm3 .termClose a').click(function() {
     //       jQuery('#signupForm3 .termsContent').hide();
     //  });
    });

//--><!]]>
</script><div class="secondFormCloseWrap first">
    <a href="javascript:void(0)" class="glitch" data-text="[x]">[x]</a>
</div>
<div id="LightboxMlist" class="LightboxForm">
<div class="plain-ml-wrapper dtmlightbox firstMlistForm" data-custom-page-name="Lightbox">
<div class="mlform">
            <div class="message">
                <p class="message-description">Join My Mailing List</p>
            </div>
            <form class="mlistFormOne mlform twostep" action="https://signup.wmg.com/register?">
            <div class="email fieldWrap">
                <!--label for="email" class="">Enter your email address</label-->
                <input data-type="email" data-error-text="Please enter a valid email address" placeholder="Email Address" required="" class="email" name="email" /></div>
            <div class="primary-list-values">
                <input name="Datasource" type="hidden" value="TreySongz_BackHomeOutNow_Standalone_Website" /><input name="newsletterId" type="hidden" value="18751" /></div>
            <div class="submit">
                <input type="submit" class="submit mlistSubmit" value="Submit ►" /></div>
            </form>
            <div class="terms">
                <a href="javascript:void(0)" class="terms">terms</a>
                <p class="terms-message fadeOut">
By submitting my information, I agree to receive personalized updates and marketing messages about Trey Songz based on my information, interests, activities, website visits and device data and in accordance with the <a href="http://www.atlanticrecords.com/privacy-policy/" target="_blank" class="external-link">Privacy Policy</a>. 
 I understand that I can opt-out at any time by emailing <a href="mailto:privacypolicy@wmg.com">privacypolicy@wmg.com</a>.
                </p>
            </div>
        </div>
        <div class="thankyou fadeOut">
            Thank you for signing up!
        </div>
        <div class="secondform fadeOut singleform">
<span class="secondFormClose">x</span>
            <div class="welcome">
                <p>
                    <span class="name" style="display:none"></span> Trey would love to know more about you! Customize your notifications for tour dates near your hometown, birthday wishes, or special discounts in our online store!</p>
            </div>
            <form class="mlistFormTwo mlform" action="https://signup.wmg.com/register?">
            <input type="hidden" class="secondFormEmail" name="email" value="" /><div class="postalcode fieldWrap">
                <label for="postalCode" class="">Postal Code</label>
                <input type="text" name="postalcode" placeholder="Postal Code" /></div>
            <div class="postal_country">
			<label for="country" class="">Country</label>
                        <div class="country">
                <select class="country form-control" name="country"><option value="">Select A Country</option><option value="Afghanistan">Afghanistan</option><option value="Åland Islands">Åland Islands</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Australia">Australia</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="Botswana">Botswana</option><option value="Bouvet Island">Bouvet Island</option><option value="Brazil">Brazil</option><option value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="Brunei Darussalam">Brunei Darussalam</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Canada">Canada</option><option value="Cape Verde">Cape Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Christmas Island">Christmas Island</option><option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Congo">Congo</option><option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Cote D'ivoire">Cote D'ivoire</option><option value="Croatia">Croatia</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="France">France</option><option value="French Guiana">French Guiana</option><option value="French Polynesia">French Polynesia</option><option value="French Southern Territories">French Southern Territories</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Greenland">Greenland</option><option value="Grenada">Grenada</option><option value="Guadeloupe">Guadeloupe</option><option value="Guam">Guam</option><option value="Guatemala">Guatemala</option><option value="Guernsey">Guernsey</option><option value="Guinea">Guinea</option><option value="Guinea-bissau">Guinea-bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option><option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="India">India</option><option value="Indonesia">Indonesia</option><option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Isle of Man">Isle of Man</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jersey">Jersey</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option><option value="Korea, Republic of">Korea, Republic of</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macao">Macao</option><option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of
                    </option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Martinique">Martinique</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mayotte">Mayotte</option><option value="Mexico">Mexico</option><option value="Micronesia, Federated States of">Micronesia, Federated States of</option><option value="Moldova, Republic of">Moldova, Republic of</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montenegro">Montenegro</option><option value="Montserrat">Montserrat</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="New Caledonia">New Caledonia</option><option value="New Zealand">New Zealand</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Niue">Niue</option><option value="Norfolk Island">Norfolk Island</option><option value="Northern Mariana Islands">Northern Mariana Islands</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Pitcairn">Pitcairn</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Reunion">Reunion</option><option value="Romania">Romania</option><option value="Russian Federation">Russian Federation</option><option value="Rwanda">Rwanda</option><option value="Saint Helena">Saint Helena</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option><option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Sao Tome and Principe">Sao Tome and Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Serbia">Serbia</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia">Slovakia</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich
                        Islands</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syrian Arab Republic">Syrian Arab Republic</option><option value="Taiwan, Province of China">Taiwan, Province of China</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania, United Republic of">Tanzania, United Republic of</option><option value="Thailand">Thailand</option><option value="Timor-leste">Timor-leste</option><option value="Togo">Togo</option><option value="Tokelau">Tokelau</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Turks and Caicos Islands">Turks and Caicos Islands</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United Kingdom">United Kingdom</option><option value="United States">United States</option><option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Venezuela">Venezuela</option><option value="Viet Nam">Viet Nam</option><option value="Virgin Islands, British">Virgin Islands, British</option><option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option><option value="Wallis and Futuna">Wallis and Futuna</option><option value="Western Sahara">Western Sahara</option><option value="Yemen">Yemen</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option></select></div>
            </div>
            <div class="name">
                 <div class="first fieldWrap">
                    <label for="FirstName" class="">First Name</label>
                    <input type="text" class="first" name="firstname" placeholder="First Name" /></div>
            </div>
                         <div class="birth-date-title">Birth Date</div> 
            <div class="birthday">
            <div class="dobMonth fieldWrap">
            
            <select name="dobMonth" class=""><option value="">Month</option><option value="1">January</option><option value="2">February</option><option value="3">March</option><option value="4">April</option><option value="5">May</option><option value="6">June</option><option value="7">July</option><option value="8">August</option><option value="9">September</option><option value="10">October</option><option value="11">November</option><option value="12">December</option></select></div>
            <div class="dobDay fieldWrap">
            
            <select name="dobDay" class=""><option value="">Day</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select></div>
            </div>


            <input name="newsletterId" type="hidden" value="14075551" /><input name="Datasource" type="hidden" value="TreySongz_BackHomeOutNow_Standalone_Website" /><div class="globaloptin fieldWrap">
                <input type="checkbox" name="goptin" id="goptin_checkbox_lb" value="50" /><label for="goptin_checkbox_lb" class="goptin_checkbox">Sign me up to discover more artists like <span>Trey Songz</span> and other offers.</label>
            </div>
            <div class="submit">
                <input type="submit" class="submit mlistSubmit" value="Submit ►" /></div>
            <div class="terms">
                <a href="javascript:void(0)" class="terms">terms</a>
                <p class="terms-message-2 fadeOut">
By submitting my information, I agree to receive personalized updates and marketing messages about Trey Songz based on my information, interests, activities, website visits and device data and in accordance with the <a href="http://www.atlanticrecords.com/privacy-policy/" target="_blank" class="external-link" rel="nofollow">Privacy Policy</a>. In addition, if I have checked the box above, I agree to receive such updates and messages about similar artists, products and offers. I understand that I can opt-out from messages at any time by emailing <a href="mailto:privacypolicy@wmg.com">privacypolicy@wmg.com</a>.
                </p>
            </div>
        </form></div>
 </div>      
</div>
<style>
<!--/*--><![CDATA[/* ><!--*/

    
    div#block-lightboxmailinglist {
        display: none;
    }
	div#block-lightboxmailinglist h2 {
		display: none;
	}    
    div#block-lightboxmailinglist .mlist-outer-wrapper.lightboxActive {
        position: fixed;
        z-index: 1000002;
        background-color: #363938;
        padding: 10px;
        width: 100%;
    }
    
    div#block-lightboxmailinglist.lightboxActive {
        position: fixed;
        z-index: 1000002;
        background-color: rgba(0, 0, 0, 0.94);
        padding: 10px;
        width: 100%;
        top: 0 !important;
        left: 0 !important;
        height: 100%;
        padding: 0;
        display: block;
    }

    div#block-lightboxmailinglist div#LightboxMlist {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        max-width: 500px;
        width: 100%;
		font-size: 0;
		font-weight:700;
    }
    div#block-lightboxmailinglist .message {
        width:28%;
        display: inline-block;
        vertical-align: bottom;
        font-size: 20px;
        padding: 0;
        /* line-height: 32px; */
		text-align:left;
		font-weight:700;
    }
    
	form.mlistFormOne {
		display: inline-block;
		width: 52%;
		margin-left: 20%;
	}
    
    div#block-lightboxmailinglist fieldset .mlist-submit {
        float: right;
        display: block;
    }
    
    div#block-lightboxmailinglist input#email {
        height: 50px;
        -webkit-text-fill-color: #000;
        font-family: proxima-nova, sans-serif;
		font-weight:700;
        padding-left: 15px;
		text-transform:uppercase;
    }
    div#block-lightboxmailinglist .plain-ml-wrapper form.mlistFormTwo select, div#block-lightboxmailinglist .plain-ml-wrapper form.mlistFormTwo input {
		height: 36px;
		font-size: 12px;
		text-transform: uppercase;
		margin-bottom: 10px;
	}
    div#block-lightboxmailinglist input::placeholder {
        -webkit-text-fill-color: #000;
		font-style:normal;
    }
    
    div#block-lightboxmailinglist input.submit {
		background: transparent;
		border: none;
		font-family: proxima-nova, sans-serif;
		font-weight:700;
		height: auto;
		font-size: 18px;
		color: #F1F2ED;
		text-align: right;
		padding: 0;
		text-transform:uppercase;
    }
	div#block-lightboxmailinglist form.mlistFormTwo .submit {
		float: none;
		text-align: center;
		width: 103px;
		margin: 0 auto;
		height: auto !important;
		font-size: 20px !important;
	}
div#block-lightboxmailinglist .secondform .welcome p {
		font-size: 16px;
		color: #F1F2ED;
	}
	div#block-lightboxmailinglist .message p {
    color: #F1F2ED;
}
    div#block-lightboxmailinglist form.mlistFormOne .submit {
		width: 103px;
		float: right;
	}
    div#block-lightboxmailinglist input {
		font-size: 20px;
		font-style: normal;
		background: #F1F2ED;
		color: #000;
		text-transform: uppercase;
		height: 50px;
		font-family: proxima-nova, sans-serif;
		font-weight: 700;
    }
	div#block-lightboxmailinglist .plain-ml-wrapper select {
		background: url(/sites/g/files/g2000011036/files/2020-09/DropDown-black.svg) no-repeat 96% center #F1F2ED;
		-webkit-appearance: none;
		-moz-appearance: none;
		color: #000;
		font-size: 20px;
		background-size: 8px !important;
	}
	div#block-lightboxmailinglist form.mlistFormTwo .terms a {
		top: 0;
		left: 0;
	}
	div#block-lightboxmailinglist .secondform .welcome {
		width: 98%;
	}
	 div#block-lightboxmailinglist  plain-ml-wrapper select {
		background: url(/sites/g/files/g2000011036/files/2020-09/DropDown-black.svg?df) no-repeat right center transparent;
		-webkit-appearance: none;
		-moz-appearance: none;
	}
    div#block-lightboxmailinglist .terms a {
        color: #F1F2ED;
        text-decoration: underline;
        font-size: 10px;
    }
    
	div#block-lightboxmailinglist .terms a{
		position: relative;
		top: -24px;
		left: 10px;
		float: none;
		font-size: 10px;
		text-transform: uppercase;
		text-decoration: underline !important;
    }
     div#block-lightboxmailinglist .terms .terms-message {
		position: absolute;
		line-height: 17px;
		background: #000;
		color: #F1F2ED;
		font-size: 10px;
		top: 10px;
		text-align: left;
		margin-left: 48%;
		max-width: 52%;
		box-sizing: border-box;
		padding: 1.5%;
		height: auto;
		min-height: 135px;
text-transform:uppercase;
    }
	div#block-lightboxmailinglist span.input-error {
	top: -20px;
    left: 0;
    bottom: auto;
	}

	div#block-lightboxmailinglist .terms .terms-message a {
		top: 0;
		left: 0;
	} 
div#block-lightboxmailinglist div.plain-ml-wrapper span.secondFormClose{
		display:none;
	}
div#block-lightboxmailinglist .plain-ml-wrapper p.terms-message-2 {
	background: #000;
    color: #F1F2ED;
    bottom: 12px;
    text-transform: uppercase;
    font-size: 10px;
    padding: 10px 5px;
}
div#block-lightboxmailinglist .plain-ml-wrapper label.goptin_checkbox {
    font-weight: 700;
}
div#block-lightboxmailinglist form.mlistFormTwo .terms .terms-message-2 a {
    position: relative;
    top: 0;
    font-size: 10px;
}	
.fadeOut {
    display: none !important;
}
     div#block-lightboxmailinglist form.mlistFormTwo .postalcode.fieldWrap{
	  margin-right:2%; 
   }   
    div#block-lightboxmailinglist .secondFormCloseWrap a {
		color: #F1F2ED;
		opacity: 1;
		font-family: proxima-nova, sans-serif;
		font-weight:700;
		font-size: 30px;
		text-align: center;
		width: 50px;
		padding: 0;
		margin: 0 0 0 auto;
		text-transform: uppercase;
		position: absolute;
		top: 1%;
		right: 1%;
    }
	 div#block-lightboxmailinglist .plain-ml-wrapper form.mlistFormTwo input[type="checkbox"] {
		height: auto;
	}   
    div#block-lightboxmailinglist .termsWrapper {
        font-family: proxima-nova, sans-serif;
		font-weight:700;
    }
    
    div#block-lightboxmailinglist .termsContent {
        line-height: 17px;
        background: #000;
        font-size: 10px;
    }
    
    div#block-lightboxmailinglist div#thankyoublock-innerwrapper {
        max-width: 894px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        -webkit-transform: translate(-50%, -50%);
        -moz-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        border: 1px solid #F1F2ED;
        box-sizing: border-box;
        width: 98%;
        z-index: 1;
        background: transparent;
        border: none;
    }
    
    div#block-lightboxmailinglist .thankswelcome-msg {
        font-size: 16px !important;
    }
    
    div#block-lightboxmailinglist div#secondary-list-values {
        max-width: 450px;
    }
    
    div#block-lightboxmailinglist .mlist-dobMonth,
    .mlist-dobDay {
        width: 48%;
        display: inline-block;
    }
    
    div#block-lightboxmailinglist div#secondary-list-values select {
        width: 100%;
    }
    
    div#block-lightboxmailinglist .mlist-dobMonth {
        margin-right: 3.8%;
    }
    
    div#block-lightboxmailinglist div#secondary-list-values input,
    div#secondary-list-values select {
        color: #000;
        font-family: proxima-nova, sans-serif;
		font-weight:700;
        font-size: 18px;
        line-height: 17px;
    }
div#block-lightboxmailinglist .plain-ml-wrapper label:not(.goptin_checkbox) {
    font-size: 12px;
    font-weight: 700;
    position: relative;
    text-align: left;
    -webkit-transition: none;
    transition: none;
    transform: none;
    left: 0;
    top: 0;
    padding-bottom: 5px;
} 
div#block-lightboxmailinglist form.mlistFormTwo.mlform {
    max-width: 450px;
    margin: 0 auto;
}
div#block-lightboxmailinglist .globaloptin label::before {
    background: #F1F2ED;
    top: 0;
}
div#block-lightboxmailinglist div.thankyou {
    font-size: 32px;
}
div#block-lightboxmailinglist .plain-ml-wrapper label.goptin_checkbox{
	width:85%;
}
div#block-lightboxmailinglist .globaloptin input[type="checkbox"]:checked + label::after {color: #000;}
    div#block-lightboxmailinglist div#secondary-list-values select {
        background: url(/sites/g/files/g2000004026/f/202004/DropDown-black.svg) no-repeat right 10px center #F1F2ED !important;
        background-size: 8px !important;
    }
    
    div#block-lightboxmailinglist input:-webkit-autofill,
    div#block-lightboxmailinglist input:-webkit-autofill:hover,
    div#block-lightboxmailinglist input:-webkit-autofill:focus,
    div#block-lightboxmailinglist select:-webkit-autofill,
    div#block-lightboxmailinglist select:-webkit-autofill:hover,
    div#block-lightboxmailinglist select:-webkit-autofill:focus {
        -webkit-text-fill-color: #000;
        -webkit-box-shadow: 0 0 0px 1000px #F1F2ED inset;
    }
    
    div#block-lightboxmailinglist label.global-list:before {
        border-color: #F1F2ED;
        color: #000;
        cursor: pointer;
    }
    
    div#block-lightboxmailinglist div.mlist-outer-wrapper.embedded-inline-list.country-detect .termsWrapper.second .termsContent {
        bottom: 15px;
    }
    
    div#block-lightboxmailinglist .mlist-outer-wrapper.embedded-inline-list.country-detect #thankyouBlock.final-screen .thankyou-message {
        position: absolute;
        top: 50%;
        left: 50%;
        width: 100%;
        transform: translate(-50%, -50%);
        text-align: center;
        font-size: 40px;
    }
    
    div#block-lightboxmailinglist div.mlist-outer-wrapper.embedded-inline-list.country-detect .termsWrapper .termsContent a {
        font-size: 10px;
    }
    
    div#block-lightboxmailinglist .secondFormCloseWrap.first a.glitch:hover::before,
    div#block-lightboxmailinglist .secondFormCloseWrap.first a.glitch:hover::after {
        right: 0;
    }
    
    div#block-lightboxmailinglist .terms a:hover {
        text-decoration: none;
    }
    
    div#block-lightboxmailinglist .mlist-submit-new.glitch:hover::before,
    div#block-lightboxmailinglist .mlist-submit-new.glitch:hover::after {
        font-size: 18px;
        left: 28px;
        top: 3px;
    }
    
    div#block-lightboxmailinglist .mlist-submit-new.glitch:hover {
        margin: 10px auto 5px;
    }
    
    div#block-lightboxmailinglist fieldset .mlist-submit input {
        text-align: right;
        cursor: pointer;
    }
    
    div#block-lightboxmailinglist fieldset .mlist-submit.glitch:hover::before,
    div#block-lightboxmailinglist fieldset .mlist-submit.glitch:hover::after {
        right: 0;
        font-size: 17px;
        text-align: right;
        top: 4px;
    }
    
    div#block-lightboxmailinglist div.mlist-outer-wrapper.embedded-inline-list.country-detect .termsWrapper .termsContent a.glitch:hover::before,
    div#block-lightboxmailinglist div.mlist-outer-wrapper.embedded-inline-list.country-detect .termsWrapper .termsContent a.glitch:hover::after {
        top: -3px;
    }
    
    div#block-lightboxmailinglist div.mlist-outer-wrapper.embedded-inline-list.country-detect .termsWrapper .termsContent a:hover {
        color: #F1F2ED;
    }
    
    @media only screen and (max-width: 767px) {
        div#block-lightboxmailinglist .mlist-header {
            width: 100%;
            display: block;
            margin: 0 auto;
        }
        div#block-lightboxmailinglist fieldset .mlist-field {
            width: 100%;
            display: block;
            margin-top: 4%;
        }
        div#block-lightboxmailinglist .mlist-header br {
            display: none;
        }
        div#block-lightboxmailinglist .termsWrapper.first {
            width: 100%;
            max-width: 100%;
        }
        div#block-lightboxmailinglist div.mlist-outer-wrapper.embedded-inline-list.country-detect .termsWrapper .termsContent {
            max-width: 85%;
        }
        div#block-lightboxmailinglist div.mlist-outer-wrapper.embedded-inline-list.country-detect .termsWrapper.second .termsContent {
            max-width: 100%;
        }
        div#block-lightboxmailinglist .secondFormCloseWrap a {
            font-size: 20px;
            position: fixed;
			}
	div#block-lightboxmailinglist .message {
		width: 100%;
		display: block;
		text-align: center;
	}

		div#block-lightboxmailinglist form.mlistFormOne {
		width: 90%;
		margin: 0 auto;
	}

	div#block-lightboxmailinglist .message p {
		margin: 0;
	}

	div#block-lightboxmailinglist .terms .terms-message {
		max-width: 500px;
		margin: 0 auto;
		width: 90%;
		left: 10px;
	}

		div#block-lightboxmailinglist .plain-ml-wrapper .terms {
		text-align: left;
		margin-left: 5px;
		position: relative;
}
div#block-lightboxmailinglist span.input-error{
	top: -18px;
}
div#block-lightboxmailinglist form.mlistFormTwo .terms {
    text-align: center;
}

div#block-lightboxmailinglist .plain-ml-wrapper p.terms-message-2 {
    left: -10px;
}
div#block-lightboxmailinglist .secondform .welcome {
    width: 90%;
}
div#block-lightboxmailinglist .plain-ml-wrapper form.mlistFormTwo select, div#block-lightboxmailinglist .plain-ml-wrapper form.mlistFormTwo input {
    font-size: 16px;
}
div#block-lightboxmailinglist div.thankyou {
    font-size: 30px;
}
    }
    
    @media only screen and (max-width: 1023px) {
        div#block-lightboxmailinglist.lightboxActive {
            overflow-y: scroll;
        }
        div#block-lightboxmailinglist div#thankyoublock-innerwrapper {
            padding: 5% 0;
        }
    }
div#block-lightboxmailinglist .secondFormCloseWrap a:hover{
opacity: 0.7;
}
div#block-lightboxmailinglist .mlist-checks .global-list{
    margin-top: 14px !important;
}

/*--><!]]>*/
</style></div>
      
    </div>
  </div>
<div id="block-pagetitlecss" data-block-plugin-id="block_content:4f52f456-4cf3-47cc-93ee-98550615c8bb" class="block block-block-content block-block-content4f52f456-4cf3-47cc-93ee-98550615c8bb">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><style>
<!--/*--><![CDATA[/* ><!--*/

  div#block-bartik-page-title {
  //  background: url(/sites/g/files/g2000010176/files/2020-03/InteriorMobile.jpg)
      no-repeat scroll 0 0 transparent;
    padding: 65% 0 27px;
    background-size: 100%;
width:100%;
  }

  h1.page-title {
    font-size: 42px;
    color: #fff;
    margin: 0;
    text-align: left;
    max-width: 83%;
    margin: 0 auto;
  }
  div#block-pagetitlecss {
    display: none;
  }
  @media only screen and (min-width: 768px) {
    div#block-bartik-page-title {
      background-image: url(/sites/g/files/g2000010176/files/2020-03/InteriorDesktop.jpg?itok=PUSRgliP);
      padding-top: 20%;
      padding-bottom: 45px;
      background-size: cover;
    }
    h1.page-title {
      font-size: 85px;
      max-width: 85%;
      margin-left: 7.3%;
    }
  }

/*--><!]]>*/
</style></div>
      
    </div>
  </div>
<div id="block-follownews" data-block-plugin-id="block_content:9b589c56-cd24-4d4e-972a-099d2b7ff590" class="block block-block-content block-block-content9b589c56-cd24-4d4e-972a-099d2b7ff590">
  
      <h2>Follow + News</h2>
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><script type="text/javascript" src="https://cdn.livefyre.com/Livefyre.js"></script><script>
<!--//--><![CDATA[// ><!--

   (function() {
      var col;

      var init;

      if (jQuery(window).width() <= 1023) {
         col = 3;
         init = 9;
      } else {
         col = 3;
         init = 6;
      }
      Livefyre.require([
         'streamhub-wall#5'
      ], function(LiveMediaWall) {
         var wall = window.wall = new LiveMediaWall({
            el: document.getElementById("wall"),
            collection: {
               "app": "main",
               "network": "wmg.fyre.co",
               "siteId": "365227",
               "articleId": "designer-app-1601402000610"
            },
            postButton: true,
            initial: init,
            columns: col,
            minContentWidth: 312
         });
      });
   }());

//--><!]]>
</script><div class="mlistFooterWrap">
<div class="followEmail">
	<div class="plain-ml-wrapper dtmlightbox firstMlistForm">
		<div class="mlform">
			<div class="message">
				<p class="message-description"></p>
			</div>
			<form class="mlistFormOne mlform twostep" action="https://signup.wmg.com/register?">
				<div class="email fieldWrap">
					<input data-type="email" data-error-text="Please enter a valid email address" placeholder="Email Address" required="" class="email" name="email" /></div>
				<div class="primary-list-values">
					<input name="Datasource" type="hidden" value="TreySongz_BackHomeOutNow_Standalone_Website" /><input name="newsletterId" type="hidden" value="18751" /></div>
				<div class="submit">
					<input type="submit" class="submit mlistSubmit" value="JOIN" /></div>
			</form>
			<div class="terms">
				<a href="javascript:void(0)" class="terms">terms</a>
				<p class="terms-message fadeOut">
					By submitting my information, I agree to receive personalized updates and marketing messages about Trey Songz based on my information, interests, activities, website visits and device data and in accordance with the <a href="http://www.atlanticrecords.com/privacy-policy/" target="_blank" class="external-link">Privacy Policy</a>. 
 I understand that I can opt-out at any time by emailing <a href="mailto:privacypolicy@wmg.com">privacypolicy@wmg.com</a>.
				</p>
			</div>
		</div>
		<div class="thankyou fadeOut">
			Thank you for signing up!
		</div>
		<div class="secondform fadeOut singleform">
			<span class="secondFormClose">x</span>
			<div class="welcome">
				<p>Welcome <span class="name"></span> to the Trey Songz's mailing list!</p>
			</div>
			<form class="mlistFormTwo mlform" action="https://signup.wmg.com/register?">
				<input type="hidden" class="secondFormEmail" name="email" value="" /><div class="postalcode fieldWrap">
					<label for="postalCode" class="">Postal Code</label>
					<input type="text" name="postalcode" /></div>
				<div class="postal_country">
					<div class="country">
						<label for="country"> Country </label>
						<select class="country form-control" name="country"><option value="">Select A Country</option><option value="Afghanistan">Afghanistan</option><option value="Åland Islands">Åland Islands</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Australia">Australia</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="Botswana">Botswana</option><option value="Bouvet Island">Bouvet Island</option><option value="Brazil">Brazil</option><option value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="Brunei Darussalam">Brunei Darussalam</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Canada">Canada</option><option value="Cape Verde">Cape Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Christmas Island">Christmas Island</option><option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Congo">Congo</option><option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The
							</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Cote D'ivoire">Cote D'ivoire</option><option value="Croatia">Croatia</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="France">France</option><option value="French Guiana">French Guiana</option><option value="French Polynesia">French Polynesia</option><option value="French Southern Territories">French Southern Territories</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Greenland">Greenland</option><option value="Grenada">Grenada</option><option value="Guadeloupe">Guadeloupe</option><option value="Guam">Guam</option><option value="Guatemala">Guatemala</option><option value="Guernsey">Guernsey</option><option value="Guinea">Guinea</option><option value="Guinea-bissau">Guinea-bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option><option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="India">India</option><option value="Indonesia">Indonesia</option><option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Isle of Man">Isle of Man</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jersey">Jersey</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic
								of</option><option value="Korea, Republic of">Korea, Republic of</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macao">Macao</option><option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav
								Republic of
							</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Martinique">Martinique</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mayotte">Mayotte</option><option value="Mexico">Mexico</option><option value="Micronesia, Federated States of">Micronesia, Federated States of</option><option value="Moldova, Republic of">Moldova, Republic of</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montenegro">Montenegro</option><option value="Montserrat">Montserrat</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="New Caledonia">New Caledonia</option><option value="New Zealand">New Zealand</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Niue">Niue</option><option value="Norfolk Island">Norfolk Island</option><option value="Northern Mariana Islands">Northern Mariana Islands</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Pitcairn">Pitcairn</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Reunion">Reunion</option><option value="Romania">Romania</option><option value="Russian Federation">Russian Federation</option><option value="Rwanda">Rwanda</option><option value="Saint Helena">Saint Helena</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option><option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Sao Tome and Principe">Sao Tome and Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Serbia">Serbia</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia">Slovakia</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="South Georgia and The South Sandwich Islands">South Georgia and The South
								Sandwich
								Islands</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syrian Arab Republic">Syrian Arab Republic</option><option value="Taiwan, Province of China">Taiwan, Province of China</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania, United Republic of">Tanzania, United Republic of</option><option value="Thailand">Thailand</option><option value="Timor-leste">Timor-leste</option><option value="Togo">Togo</option><option value="Tokelau">Tokelau</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Turks and Caicos Islands">Turks and Caicos Islands</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United Kingdom">United Kingdom</option><option value="United States">United States</option><option value="United States Minor Outlying Islands">United States Minor Outlying Islands
							</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Venezuela">Venezuela</option><option value="Viet Nam">Viet Nam</option><option value="Virgin Islands, British">Virgin Islands, British</option><option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option><option value="Wallis and Futuna">Wallis and Futuna</option><option value="Western Sahara">Western Sahara</option><option value="Yemen">Yemen</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option></select></div>


				</div>
				<div class="name">
					<div class="first fieldWrap">
						<label for="FirstName" class="">First Name</label>
						<input type="text" class="first" name="firstname" /></div>
				</div>
				<div class="birth-date-title">Birth Date</div>
				<div class="birthday">
					<div class="dobMonth fieldWrap">
						<select name="dobMonth" class=""><option value="">Month</option><option value="1">January</option><option value="2">February</option><option value="3">March</option><option value="4">April</option><option value="5">May</option><option value="6">June</option><option value="7">July</option><option value="8">August</option><option value="9">September</option><option value="10">October</option><option value="11">November</option><option value="12">December</option></select></div>
					<div class="dobDay fieldWrap">
						<select name="dobDay" class=""><option value="">Day</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select></div>
				</div>


				<input name="newsletterId" type="hidden" value="14075551" /><input name="Datasource" type="hidden" value="TreySongz_BackHomeOutNow_Standalone_Website" /><div class="globaloptin fieldWrap">
					<input type="checkbox" name="goptin" id="goptin_checkbox7" value="50" /><label for="goptin_checkbox7" class="goptin_checkbox">Sign me up to discover more artists like
						<span>Trey Songz</span> and other offers.</label>
				</div>
				<div class="submit">
					<input type="submit" class="submit mlistSubmit" value="SUBMIT" /></div>
				<div class="terms">
					<a href="javascript:void(0)" class="terms">terms</a>
					<p class="terms-message-2 fadeOut">
						By submitting my information, I agree to receive personalized updates and marketing messages about Trey Songz based on my information, interests, activities, website visits and device data and in accordance with the <a href="http://www.atlanticrecords.com/privacy-policy/" target="_blank" class="external-link" rel="nofollow">Privacy Policy</a>. In addition, if I have checked the box above, I agree to receive such updates and messages about similar artists, products and offers. I understand that I can opt-out from messages at any time by emailing <a href="mailto:privacypolicy@wmg.com">privacypolicy@wmg.com</a>.
					</p>
				</div>
		</form></div>

	</div>
</div>
<div class="circleFooter">
	<div class="Socialicons">
		<ul class="footer-social"><li class="fs-fb">
				<a data-track="facebook" class="fs-fb-link icon-facebook2" href="https://www.facebook.com/treysongz" target="_blank"></a>
			</li>
			<li class="fs-tw">
				<a data-track="twitter" class="fs-tw-link icon-twitter" href="https://twitter.com/TreySongz" target="_blank"></a>
			</li>
			<li class="fs-ig">
				<a data-track="instagram" class="fs-ig-link icon-instagram" href="https://instagram.com/treysongz" target="_blank"></a>
			</li>
			<li class="fs-yt">
				<a data-track="youtube" class="fs-yt-link icon-youtube" href="https://www.youtube.com/user/TreySongzVideos" target="_blank"></a>
			</li>
			<li class="fs-an">
				<a class="fs-an-link icon-spotify" href="https://open.spotify.com/artist/2iojnBLj0qIMiKPvVhLnsH" data-track="spotify" target="_blank"></a>
			</li>

			<li class="fs-apple">
				<a data-track="apple-music" class="fs-ap-link icon-appleinc" href="https://music.apple.com/us/artist/trey-songz/31733124" target="_blank"></a>
			</li>
		</ul></div>
</div>
</div>
<div id="instagram">
<div id="wall"></div>
<div class="instaBtn"><a href="https://instagram.com/treysongz" class="instaButton btn-4" target="_blank">view @treysongz</a></div>
</div>
<style>
<!--/*--><![CDATA[/* ><!--*/

.mlistFooterWrap{
	font-size: 0;
}
div#block-follownews h2 {
    font-family: 'Bodoni LT W01 Bold';
    font-size: 3.125vw;
    padding-bottom: 4.739vw;
    letter-spacing: 0.0781vw;
    color: #F1F2ED;
}

div#block-follownews {
    background: #000000;
	padding-bottom: 3.5vw;
}
.followEmail .plain-ml-wrapper {
    display: block;
    width: 100%;
    max-width: 100%;
}
.followEmail {
    display: inline-block;
    width: 50%;
    vertical-align: middle;
}

.circleFooter {
    display: inline-block;
    width: 43%;
    vertical-align: top;
    margin-left: 7%;
	padding-top: 10px;
}
.followEmail form.mlistFormOne {
    display: block;
    width: 100%;
    margin: 0;
	padding: 0;
}
.followEmail div.mlform {
    max-width: 21vw;
    margin: 0 auto;
    margin-right: 0;
	padding: 0;
}
.followEmail .plain-ml-wrapper div.email {
    display: inline-block;
    vertical-align: top;
    width: 81.5%;
    margin: 0;
}
.followEmail .submit {
    display: inline-block;
    vertical-align: top;
    width: 18.5%;
}
.primary-list-values {
    display: none;
}
.followEmail input.submit.mlistSubmit {
    display: block;
    width: 100%;
	background: url(/sites/g/files/g2000011036/files/2020-09/email-10-icon.png) #F1F2ED;
    background-repeat: no-repeat;
    background-size: cover;
    font-size: 0;
    border: 10px solid #F1F2ED;
}
#block-plainjsmailinglist .plain-ml-wrapper {
    max-width: 100%;
}
.followEmail .plain-ml-wrapper .terms {
    text-align: left;
    font-size: 10px;
    text-decoration: underline;
    padding-top: 4px;
	text-transform: uppercase;
}
.followEmail .mlform input {
    height: 3.125vw;
    background: #F1F2ED;
    border: 0;
    color: #000;
	font-style: normal;
	font-size: 1.04vw;
    font-weight: 700;
	text-transform: uppercase;
}
.circleFooter .Socialicons {
    width: 100%;
}
#block-plainjsmailinglist .followEmail span.input-error {
    background: transparent;
    position: absolute;
    top: -16px;
    height: 0;
    width: 100%;
    left: 0;
	text-align: left;
}
.followEmail .plain-ml-wrapper p.terms-message-2, .followEmail .plain-ml-wrapper p.terms-message {
    bottom: 20px;
    padding: 5px;
    color: #000;
	background: #F1F2ED;
	line-height: 1.4
}
#block-plainjsmailinglist .mlform p.terms-message a, .followEmail .mlform p.terms-message a {
    color: #000;
	text-decoration: underline;
}
.followEmail .plain-ml-wrapper p.terms-message-2 a, .followEmail .plain-ml-wrapper p.terms-message a{
	color: #000;
	text-decoration: underline;
}
.circleFooter .Socialicons li a {
    color: #F1F2ED !important;
	margin-right: 1.4vw;
    font-size: 1.7vw;
}
.circleFooter .Socialicons li:last-child a {
    margin: 0;
}
.Socialicons li:last-child a {
    margin: 0;
}
.followEmail .secondform {
    max-width: 23vw;
    margin: 0 auto;
    margin-right: 0;
    padding: 0;
}
.followEmail .plain-ml-wrapper label:not(.goptin_checkbox) {
    position: static;
    transform: none;
    text-align: left;
	transition: none;
	font-size: 1vw;
    font-weight: 700;
	color: #F1F2ED;
}
.followEmail .secondform .birth-date-title {
    font-size: 1vw;
    font-weight: 700;
}
.followEmail .secondform .postalcode.first, .followEmail .secondform div.dobMonth.fieldWrap, form.mlistFormTwo .postalcode.fieldWrap {
    margin-right: 4%;
}
.followEmail form.mlistFormTwo .postal_country, .followEmail div.postalcode.fieldWrap, .followEmail form.mlistFormTwo .dobMonth, .followEmail form.mlistFormTwo .dobDay {
    display: inline-block;
    width: 48%;
}
.followEmail .plain-ml-wrapper select {
    background: url(/sites/g/files/g2000011036/files/2020-09/DropDown-black.svg) no-repeat right 5% center #F1F2ED;
    background-size: 5%;
	-webkit-appearance: none;
    -moz-appearance: none;
    color: #000;
	font-weight: 700;
	height: 3.125vw;
	font-size: 1.04vw;
	padding-right: 25px;
}
#block-plainjsmailinglist option {
    background: #F1F2ED;
    color: #000;
}
.followEmail option {
    background: #F1F2ED;
    color: #000;
}
#block-plainjsmailinglist input:-webkit-autofill,#block-plainjsmailinglist select:-webkit-autofill{
	-webkit-box-shadow:0 0 0px 1000px #F1F2ED inset;
	-webkit-text-fill-color:#000;
}
.followEmail input:-webkit-autofill,.followEmail select:-webkit-autofill{
	-webkit-box-shadow:0 0 0px 1000px #F1F2ED inset;
	-webkit-text-fill-color:#000;
}
.followEmail form.mlistFormTwo input.submit.mlistSubmit {
    font-size: 1.04vw;
    background: #F1F2ED;
    border: 0;
}
.followEmail form.mlistFormTwo .submit {
    width: 10vw;
}
.site-footer .layout-container {
    max-width: 100%;
}
#block-plainjsmailinglist .plain-ml-wrapper .moveUp{
	position: static;
	transform: none;
    text-align: left;
	transition: none;
}
.followEmail .secondform .name{
	display: inline;
	color: #F1F2ED;
}
.followEmail .plain-ml-wrapper form.mlistFormTwo .terms {
    text-align: center;
    color: #F1F2ED;
}
.followEmail .plain-ml-wrapper form.mlistFormTwo p.terms-message-2{
	margin: 0;
}
.globaloptin input[type="checkbox"]:focus + label::before {
    outline: 0;
}
.followEmail div.thankyou, .followEmail .secondform .globaloptin span {
    color: #F1F2ED;
    font-weight: 700;
}
.followEmail div.thankyou{
	text-align: right;
}
.followEmail div.plain-ml-wrapper span.secondFormClose{
	font-size: 1vw;
}
.followEmail .secondform .welcome{
	font-size: 1.2vw;
	font-weight: 700;
}
.followEmail .secondform .welcome p{
	color: #F1F2ED;
}
.followEmail .plain-ml-wrapper label.goptin_checkbox {
    font-size: 0.7vw;
    font-weight: 700;
}
:-moz-placeholder {
	/* Firefox 18- */
	color: #000000;
}
::-moz-placeholder {
	/* Firefox 19+ */
	color: #000000;
}
:-ms-input-placeholder {
	color: #000000;
}
input#email::placeholder {
	color: #000000;
}
.followEmail div.mlform a.terms {
    padding-left: 10px;
}
.circleFooter ul.footer-social {
    padding: 0;
}
div#instagram {
    padding-top: 6.87vw;
	max-width: 50.78vw;
    margin: 0 auto;
}
[data-lf-package~="streamhub-wall#4.3.2"] .content p {
    margin: 16px 0 0;
    color: #000;
    font-size: 20px;
}
[data-lf-package~="streamhub-wall#4.3.2"] .hub-list article.content {
    border-radius: 0;
}
[data-lf-package~="streamhub-wall#4.3.2"] .content a {
    color: #000;
}
[data-lf-package~="streamhub-wall#4.3.2"] .hub-list-more{
	height: 2.6vw;
    font-size: 1.04vw;
    color: #000;
    background: #F1F2ED;
    line-height: 2.6vw;
    font-family: proxima-nova, sans-serif;
    font-weight: 700;
    padding: 0;
    border-radius: 0;
	display: none;
}
.instaBtn {
    text-align: center;
    margin-top: 3vw;
}
a.instaButton {
    height: 2.6vw;
    font-size: 1.04vw;
    color: #000;
    background: #F1F2ED;
    line-height: 2.6vw;
    font-family: proxima-nova, sans-serif;
    font-weight: 700;
    padding: 0;
    border-radius: 0;
    display: inline-block;
    width: 15.3vw;
    text-align: center;
}
div#block-follownews span.input-error {
    background: transparent;
    position: absolute;
    top: -16px;
    height: 0;
    width: 100%;
    left: 0;
    text-align: left;
	font-size: 9px;
}
@media only screen and (max-width: 1023px) {
.followEmail {
    display: block;
    width: 100%;
}
.circleFooter {
    display: block;
    width: 100%;
    margin: 0;
	text-align: center;
	padding-top: 45px;
}
.followEmail div.mlform {
    width: 89.6%;
    margin: 0 auto;
	max-width: 336px
}
.followEmail .mlform input {
    height: 60px;
    font-size: 16px;
}
.followEmail input.submit.mlistSubmit {
	border-top: 14px solid #F1F2ED;
    border-bottom: 12px solid #F1F2ED;
    border-left: 14px solid #F1F2ED;
    border-right: 20px solid #F1F2ED;
    padding: 0;
    background-size: 90% auto;
	border-radius: 0;
}
.followEmail .plain-ml-wrapper div.email {
    width: 74%;
}
.followEmail .submit {
    width: 26%;
}
.followEmail .secondform {
    width: 89.6%;
    margin: 0 auto;
	max-width: 336px;
	position: relative;
}
.followEmail .secondform .welcome {
    font-size: 16px;
}
.followEmail div.plain-ml-wrapper span.secondFormClose {
    font-size: 16px;
	right: 0;
	top: -10px;
}
.followEmail .plain-ml-wrapper label:not(.goptin_checkbox) {
    font-size: 15px;
}
.followEmail .plain-ml-wrapper select {
    font-size: 16px;
    height: 60px;
}
.followEmail .secondform .birth-date-title {
    font-size: 15px;
}
.followEmail .plain-ml-wrapper label.goptin_checkbox {
    font-size: 11px;
}
.followEmail form.mlistFormTwo .submit {
    width: 160px;
}
.followEmail form.mlistFormTwo input.submit.mlistSubmit {
    font-size: 16px;
}
.circleFooter .Socialicons li a {
    font-size: 28px;
    margin-right: 28px;
}
.followEmail .plain-ml-wrapper .secondform input[name="goptin"]{
	height: 18px;
}
.followEmail div.thankyou{
	text-align: center;
}
div#instagram {
    max-width: 95%;
    padding-top: 40px;
}
[data-lf-package~="streamhub-wall#4.3.2"] .content p {
    font-size: 16px;
    line-height: 1.5;
}
[data-lf-package~="streamhub-wall#4.3.2"] .content .content-body>* {
    margin: 16px 10px;
}
div#block-follownews h2 {
    font-size: 30px;
    letter-spacing: 0.75px;
	padding-bottom: 53px;
}
a.instaButton {
    width: 249px;
    height: 40px;
    line-height: 40px;
    font-size: 16px;
}
.instaBtn {
    margin-top: 47px;
}
div#block-follownews {
    padding-bottom: 120px;
}
}

/*--><!]]>*/
</style></div>
      
    </div>
  </div>

  </div>

          </section>
        </main>
                      </div>
    </div>
        <footer class="site-footer">
      <div class="layout-container">
                  <div class="site-footer__top clearfix">
              <div class="region region-footer-first">
    <div id="block-footer" data-block-plugin-id="block_content:13aef617-a584-4454-b29b-7b315c1deb1f" class="block block-block-content block-block-content13aef617-a584-4454-b29b-7b315c1deb1f">
  
    
      <div class="content">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"> <div class="footerWrapper">
    <div class="footerInnerWrapper">
		<div class="Socialicons">
			<ul class="footer-social"><li class="fs-mail">
					<a data-track="Mail" class="fs-mail-link mlistlightbox" href="javascript:void(0)"><img src="/sites/g/files/g2000011036/files/2020-09/email-10-icon_0.svg" alt="email" /></a>
				</li>
				<li class="fs-fb">
					<a data-track="facebook-ftr" class="fs-fb-link icon-facebook2" href="https://www.facebook.com/treysongz" target="_blank"></a>
				</li>
				<li class="fs-tw">
					<a data-track="twitter-ftr" class="fs-tw-link icon-twitter" href="https://twitter.com/TreySongz" target="_blank"></a>
				</li>
				<li class="fs-ig">
					<a data-track="instagram-ftr" class="fs-ig-link icon-instagram" href="https://instagram.com/treysongz" target="_blank"></a>
				</li>
				<li class="fs-yt">
					<a data-track="youtube-ftr" class="fs-yt-link icon-youtube" href="https://www.youtube.com/user/TreySongzVideos" target="_blank"></a>
				</li>
				<li class="fs-an">
					<a class="fs-an-link icon-spotify" href="https://open.spotify.com/artist/2iojnBLj0qIMiKPvVhLnsH" data-track="spotify-ftr" target="_blank"></a>
				</li>

				<li class="fs-apple">
					<a data-track="apple-music-ftr" class="fs-ap-link icon-appleinc" href="https://music.apple.com/us/artist/trey-songz/31733124" target="_blank"></a>
				</li>
			</ul></div>
		<div class="pp_links">© 2020 Atlantic Records<span class="sep">|</span>
		<a target="_blank" href="http://www.atlanticrecords.com/privacy-policy/" data-text="Privacy Policy/Your Privacy Rights" class="glitch">Privacy Policy / Your Privacy Rights</a>
		<span class="sep mob">|</span><br class="mob" /><a target="_blank" href="http://www.atlanticrecords.com/terms-of-use/" data-text="Terms of Use" class="glitch">Terms of Use</a>
		<span class="sep">|</span>
		<a target="_blank" href="//onguardonline.gov/" data-text="OnGuardOnline" class="glitch">OnGuardOnline</a>
		<span class="sep">|</span>
		<a target="_blank" href="http://www.atlanticrecords.com/privacy-policy#adchoices" data-text="Ad Choices" class="glitch">Ad Choices</a>
		<span class="sep">|</span>
		<a target="_blank" href="//www.treysongz.com/forum/we-want-hear-you" data-text="Feedback" class="glitch">Feedback</a>
		<span class="sep">|</span>
		<a target="_blank" href="https://www.wminewmedia.com/cookies-policy/" data-text="Cookies Policy" class="glitch">Cookies Policy</a>
			<!-- <span class="MobSpDn mob hide">&nbsp;|&nbsp;</span><br class="desktop new" /> -->
			<!-- <a class="ot-sdk-show-settings glich" style="cursor:pointer">Cookies&nbsp;Settings</a> -->
		</div>
    </div>
</div>
<style>
<!--/*--><![CDATA[/* ><!--*/


    @font-face {
        font-family: 'icomoontoolkithome';
        src: url('/sites/g/files/g2000011036/files/2020-09/icomoontoolkithome.eot?a7yxd3');
        src: url('/sites/g/files/g2000011036/files/2020-09/icomoontoolkithome.eot?a7yxd3#iefix') format('embedded-opentype'), url('/sites/g/files/g2000011036/files/2020-09/icomoontoolkithome.ttf?a7yxd3') format('truetype'), url('/sites/g/files/g2000011036/files/2020-09/icomoontoolkithome.woff?a7yxd3') format('woff'), url('/sites/g/files/g2000011036/files/2020-09/icomoontoolkithome.svg?a7yxd3#icomoontoolkithome') format('svg');
        font-weight: normal;
        font-style: normal;
        font-display: block;
    }
    
    [class^="icon-"],
    [class*=" icon-"] {
        /* use !important to prevent issues with browser extensions that change fonts */
        font-family: 'icomoontoolkithome' !important;
        speak: none;
        font-style: normal;
        font-weight: normal;
        font-variant: normal;
        text-transform: none;
        line-height: 1;
        /* Better Font Rendering =========== */
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }
    
    .icon-envelop:before {
        content: "\e945";
    }
    
    .icon-facebook2:before {
        content: "\ea91";
    }
    
    .icon-instagram:before {
        content: "\ea92";
    }
    
    .icon-spotify:before {
        content: "\ea94";
    }
    
    .icon-twitter:before {
        content: "\ea96";
    }
    
    .icon-youtube:before {
        content: "\ea9d";
    }
    
    .icon-appleinc:before {
        content: "\eabe";
    }
	
	ul, li, .item-list ul, .action-links {
		list-style-type: none;
		list-style-image: none;
		padding: 0;
		margin: 0;
	}
	.Socialicons li {
		display: inline-block;
		vertical-align: top;
	}
	.Socialicons li a {
		margin-right: 0.9vw;
		display: block;
		color: #F1F2ED !important;
		font-size: 1.4vw;
		opacity:1;
	}
	.site-footer__top .content li a img {
		width: 1.7vw;
		height: auto;
		padding-top: 0.1vw;
	}
	.Socialicons li a:hover {
		color: #F1F2ED !important;
		opacity:0.5;
	}
	.site-footer__top .content li a {
		padding: 0;
		text-indent: unset;
	}
	.footerWrapper {
		display: block;
		max-width: 66vw;
		margin: 0 auto;
	}
	br.mob{
		display:none;
	}
	.footerInnerWrapper > div {
		display: inline-block;
		vertical-align: top;
	}
	.Socialicons {
		width: 35%;
	}
	.Socialicons li:last-child a{
		margin: 0;
	}
.footerInnerWrapper .pp_links {
    width: 60%;
    font-size: 0.55vw;
    text-transform: capitalize;
    color: #F1F2ED;
    letter-spacing: 0;
    text-align: left;
    margin-left: 4%;
    padding-top: 0.2vw;
	font-family:"proxima-nova";
	font-style:normal;
	font-weight:700;
}
	span.sep {
		padding: 0 0.2vw;
	}
	span.sep {
		padding: 0 0.2vw;
	}
.site-footer .content a{
	color:#F1F2ED !important;
}
	div#block-footer,.site-footer .block {
		padding: 0;
		margin: 0;
		position: relative;
		z-index: 3;
	}

	ul.footer-social {
		margin: 0;
	}
	.site-footer .content ul:not(.menu) {
		padding-left: 4.4em;
	}
@media only screen and (max-width: 1023px) {
	.site-footer .content ul:not(.menu) {
    padding: 0;
}

.Socialicons li a {
    font-size: 24px;
    margin-right: 16px;
}

.footerWrapper {
    max-width: 100%;
    margin: 0 auto;
}

.Socialicons {
    width: 100%;
}

.site-footer__top .content li a img {
    width: 28px;
    padding-top: 5px;
}

.footerInnerWrapper .pp_links {
    width: 100%;
    margin: 0 auto;
    font-size: 10px;
    text-align: center;
    margin-top: 41px;
}
.sep.mob{
	display:none;
}
br.mob{
	display:block;
}
}

/*--><!]]>*/
</style></div>
      
    </div>
  </div>

  </div>

            
            
            
          </div>
                      </div>
    </footer>
  </div>
</div>

  </div>

    <script src="/sites/g/files/g2000011036/files/custom_js_2.js?cache=5f6db0ca9695c"></script>
<script src="/sites/g/files/g2000011036/files/custom_js_3.js?cache=5f6db0ca9695c"></script>
<script src="/sites/g/files/g2000011036/files/custom_js_4.js?cache=5f6db0ca9695c"></script>
<script src="/sites/g/files/g2000011036/files/custom_js_5.js?cache=5f6db0ca9695c"></script>
<script src="/sites/g/files/g2000011036/files/custom_js_8.js?cache=5f6db0ca9695c"></script>

    <script type="application/json" data-drupal-selector="drupal-settings-json">{"path":{"baseUrl":"\/","scriptPath":null,"pathPrefix":"","currentPath":"node\/1","currentPathIsAdmin":false,"isFront":true,"currentLanguage":"en"},"pluralDelimiter":"\u0003","suppressDeprecationErrors":true,"lazy":{"lazysizes":{"lazyClass":"b-lazy","loadedClass":"lazyloaded","loadingClass":"lazyloading","preloadClass":"lazypreload","errorClass":"b-error","autosizesClass":"lazyautosizes","srcAttr":"data-src","srcsetAttr":"data-srcset","sizesAttr":"data-sizes","minSize":40,"customMedia":[],"init":true,"expFactor":1.5,"hFac":0.80000000000000004,"loadMode":2,"loadHidden":true,"ricTimeout":0,"throttleDelay":125,"plugins":[]},"placeholderSrc":"data:image\/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==","preferNative":true},"ajax":[],"user":{"uid":0,"permissionsHash":"a45c26add9ae45641b9c4a5da1354679e050350fa420fb40ea90e056ef132c71"}}</script>
<script src="/sites/g/files/g2000011036/files/js/js_dQk7LYN3wA7FWqI_EW8wWoqP-ENhbMIXSJVTD2vzxC8.js"></script>

  <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"NRJS-1888dd77a01fc8c6df6","applicationID":"277409014","transactionName":"YwYDMBdXD0dYVUNYXlpMIAcRXw5aFkZWVlRrAAAHDVM=","queueTime":0,"applicationTime":40,"atts":"T0EARl9NHEk=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
