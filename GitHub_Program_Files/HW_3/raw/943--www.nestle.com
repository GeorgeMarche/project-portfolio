<!DOCTYPE html>
<html  lang="en" dir="ltr" prefix="content: http://purl.org/rss/1.0/modules/content/  dc: http://purl.org/dc/terms/  foaf: http://xmlns.com/foaf/0.1/  og: http://ogp.me/ns#  rdfs: http://www.w3.org/2000/01/rdf-schema#  schema: http://schema.org/  sioc: http://rdfs.org/sioc/ns#  sioct: http://rdfs.org/sioc/types#  skos: http://www.w3.org/2004/02/skos/core#  xsd: http://www.w3.org/2001/XMLSchema# ">
  <head>
    <meta charset="utf-8" /><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"904c8e21af",applicationID:"282070461"};window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var i=t[n]={exports:{}};e[n][0].call(i.exports,function(t){var i=e[n][1][t];return r(i||t)},i,i.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(e,t,n){function r(){}function i(e,t,n){return function(){return o(e,[u.now()].concat(c(arguments)),t?null:this,n),t?void 0:this}}var o=e("handle"),a=e(6),c=e(7),f=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],p="api-",l=p+"ixn-";a(d,function(e,t){s[t]=i(p+t,!0,"api")}),s.addPageAction=i(p+"addPageAction",!0),s.setCurrentRouteName=i(p+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,i="function"==typeof t;return o(l+"tracer",[u.now(),e,n],r),function(){if(f.emit((i?"":"no-")+"fn-start",[u.now(),r,i],n),i)try{return t.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],n),e}finally{f.emit("fn-end",[u.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=i(l+t)}),newrelic.noticeError=function(e,t){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,t])}},{}],2:[function(e,t,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,c=e(8);t.exports=r,t.exports.offset=a,t.exports.getLastTimestamp=i},{}],3:[function(e,t,n){function r(e,t){var n=e.getEntries();n.forEach(function(e){"first-paint"===e.name?d("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&d("timing",["fcp",Math.floor(e.startTime)])})}function i(e,t){var n=e.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(e){e.getEntries().forEach(function(e){e.hadRecentInput||d("cls",[e])})}function a(e){if(e instanceof m&&!g){var t=Math.round(e.timeStamp),n={type:e.type};t<=p.now()?n.fid=p.now()-t:t>p.offset&&t<=Date.now()?(t-=p.offset,n.fid=p.now()-t):t=p.now(),g=!0,d("timing",["fi",t,n])}}function c(e){d("pageHide",[p.now(),e])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var f,u,s,d=e("handle"),p=e("loader"),l=e(5),m=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){f=new PerformanceObserver(r);try{f.observe({entryTypes:["paint"]})}catch(v){}u=new PerformanceObserver(i);try{u.observe({entryTypes:["largest-contentful-paint"]})}catch(v){}s=new PerformanceObserver(o);try{s.observe({type:"layout-shift",buffered:!0})}catch(v){}}if("addEventListener"in document){var g=!1,y=["click","keydown","mousedown","pointerdown","touchstart"];y.forEach(function(e){document.addEventListener(e,a,!1)})}l(c)}},{}],4:[function(e,t,n){function r(e,t){if(!i)return!1;if(e!==i)return!1;if(!t)return!0;if(!o)return!1;for(var n=o.split("."),r=t.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,f=c.match(a);f&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(i="Safari",o=f[1])}t.exports={agent:i,version:o,match:r}},{}],5:[function(e,t,n){function r(e){function t(){e(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,t,!1)}t.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],6:[function(e,t,n){function r(e,t){var n=[],r="",o=0;for(r in e)i.call(e,r)&&(n[o]=t(r,e[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],7:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,i=n-t||0,o=Array(i<0?0:i);++r<i;)o[r]=e[t+r];return o}t.exports=r},{}],8:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function i(e){function t(e){return e&&e instanceof r?e:e?f(e,c,o):o()}function n(n,r,i,o){if(!p.aborted||o){e&&e(n,r,i);for(var a=t(i),c=v(n),f=c.length,u=0;u<f;u++)c[u].apply(a,r);var d=s[w[n]];return d&&d.push([b,n,r,a]),a}}function l(e,t){h[e]=v(e).concat(t)}function m(e,t){var n=h[e];if(n)for(var r=0;r<n.length;r++)n[r]===t&&n.splice(r,1)}function v(e){return h[e]||[]}function g(e){return d[e]=d[e]||i(n)}function y(e,t){u(e,function(e,n){t=t||"feature",w[n]=t,t in s||(s[t]=[])})}var h={},w={},b={on:l,addEventListener:l,removeEventListener:m,emit:n,get:g,listeners:v,context:t,buffer:y,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(p.aborted=!0,s=p.backlog={})}var c="nr@context",f=e("gos"),u=e(6),s={},d={},p=t.exports=i();p.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(i.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[t]=r,r}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){i.buffer([e],r),i.emit(e,t,n)}var i=e("ee").get("handle");t.exports=r,r.ee=i},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!E++){var e=b.info=NREUM.info,t=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return u.abort();f(h,function(t,n){e[t]||(e[t]=n)});var n=a();c("mark",["onload",n+b.offset],null,"api"),c("timing",["load",n]);var r=p.createElement("script");r.src="https://"+e.agent,t.parentNode.insertBefore(r,t)}}function i(){"complete"===p.readyState&&o()}function o(){c("mark",["domContent",a()+b.offset],null,"api")}var a=e(2),c=e("handle"),f=e(6),u=e("ee"),s=e(4),d=window,p=d.document,l="addEventListener",m="attachEvent",v=d.XMLHttpRequest,g=v&&v.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:v,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var y=""+location,h={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1184.min.js"},w=v&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),b=t.exports={offset:a.getLastTimestamp(),now:a,origin:y,features:{},xhrWrappable:w,userAgent:s};e(1),e(3),p[l]?(p[l]("DOMContentLoaded",o,!1),d[l]("load",r,!1)):(p[m]("onreadystatechange",i),d[m]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var E=0},{}],"wrap-function":[function(e,t,n){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e("ee"),o=e(7),a="nr@original",c=Object.prototype.hasOwnProperty,f=!1;t.exports=function(e,t){function n(e,t,n,i){function nrWrapper(){var r,a,c,f;try{a=this,r=o(arguments),c="function"==typeof n?n(r,a):n||{}}catch(u){p([u,"",[r,a,i],c])}s(t+"start",[r,a,i],c);try{return f=e.apply(a,r)}catch(d){throw s(t+"err",[r,a,d],c),d}finally{s(t+"end",[r,a,f],c)}}return r(e)?e:(t||(t=""),nrWrapper[a]=e,d(e,nrWrapper),nrWrapper)}function u(e,t,i,o){i||(i="");var a,c,f,u="-"===i.charAt(0);for(f=0;f<t.length;f++)c=t[f],a=e[c],r(a)||(e[c]=n(a,u?c+i:i,o,c))}function s(n,r,i){if(!f||t){var o=f;f=!0;try{e.emit(n,r,i,t)}catch(a){p([a,n,r,i])}f=o}}function d(e,t){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(e);return n.forEach(function(n){Object.defineProperty(t,n,{get:function(){return e[n]},set:function(t){return e[n]=t,t}})}),t}catch(r){p([r])}for(var i in e)c.call(e,i)&&(t[i]=e[i]);return t}function p(t){try{e.emit("internal-error",t)}catch(n){}}return e||(e=i),n.inPlace=u,n.flag=a,n}},{}]},{},["loader"]);</script>
<script>window.dataLayer = window.dataLayer || []; window.dataLayer.push({"":"Nestl\u00e9 Global","event":"fireTags","pageInformation":{"pageCategory":"dsu_component_page","pageName":"Home","pageType":"dsu_component_page","pageSubsection":null,"pageSection":"dsu_component_page"},"siteInformation":{"zone":"Global","country":"","business":"Corporate","brand":"Nestle","subBrand":null,"language":null,"technology":"Drupal","properties":"","siteType":"","targetAudience":null,"siteName":"Nestl\u00e9 Global","businessUnit":null,"digiPiID":"68868","conversionPageType":null,"websiteUrl":null,"statusHttps":"200","propertyStatus":null,"goLiveDate":"","siteCategory":null},"doubleClickData":{"floodlightAdvertiserID":null,"hasEcommerce":false,"hasLogin":false,"hasSignup":false,"hasCouponPrint":false,"hasCheckout":false,"conversionPageType":null,"countGroupTagString":null,"salesGroupTagString":null},"userInformation":{"deviceType":"Desktop","gaClientID":"GA1.2.986671026.1601106681"}});</script>
<meta property="og:site_name" content="Nestlé Global" />
<meta name="twitter:card" content="summary" />
<link rel="canonical" href="https://www.nestle.com/" />
<link rel="shortlink" href="https://www.nestle.com/" />
<link rel="shortcut icon" href="/themes/custom/da_vinci_code/images/favicons/favicon.ico" />
<link rel="mask-icon" href="/themes/custom/da_vinci_code/images/favicons/safari-pinned-tab.svg" />
<meta name="description" content="Nestlé is the world&#039;s largest food &amp; beverage company. We unlock the power of food to enhance quality of life for everyone, today and for generations to come." />
<meta name="twitter:description" content="Nestlé, the world&#039;s largest food and beverage company, is committed to enhancing quality of life and contributing to a healthier future." />
<meta property="og:type" content="website" />
<link rel="icon" sizes="16x16" href="/themes/custom/da_vinci_code/images/favicons/favicon-16x16.png" />
<meta property="og:url" content="https://www.nestle.com/home" />
<link rel="icon" sizes="32x32" href="/themes/custom/da_vinci_code/images/favicons/favicon-32x32.png" />
<meta name="google-site-verification" content="Az9x5K8F_qzu958f3otEIhtZxYwAKlW6MKymJuHD99o" />
<meta name="keywords" content="Nestlé, nutrition, health, wellness, food, beverages" />
<meta property="og:title" content="Home" />
<link rel="icon" sizes="96x96" href="/themes/custom/da_vinci_code/images/favicons/favicon-96x96.png" />
<link rel="icon" sizes="192x192" href="/themes/custom/da_vinci_code/images/favicons/favicon-192x192.png" />
<link rel="apple-touch-icon" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-60x60.png" />
<meta name="twitter:image" content="https://www.nestle.com/sites/default/files/about-us-landing-purpose-boys_5.jpg" />
<link rel="apple-touch-icon" sizes="72x72" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-152x152.png" />
<link rel="apple-touch-icon" sizes="180x180" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-180x180.png" />
<link rel="apple-touch-icon-precomposed" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-57x57-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-72x72-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="76x76" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-76x76-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-114x114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="120x120" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-120x120-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-144x144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="152x152" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-152x152-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="180x180" href="/themes/custom/da_vinci_code/images/favicons/apple-touch-icon-180x180-precomposed.png" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="alternate" hreflang="en" href="https://www.nestle.com/home" />
<link rel="revision" href="https://www.nestle.com/home" />
<script src="/sites/default/files/google_tag/glo/google_tag.script.js?qi4kkf" defer></script>

    <title>Home | Nestlé Global</title>
    <link rel="stylesheet" media="all" href="/sites/default/files/css/css_reOHjAmJIgwKSG_xgx7j-hhcc2hEsJWBuUCWn2GjzDY.css" />
<link rel="stylesheet" media="all" href="//cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" />
<link rel="stylesheet" media="all" href="//cdn.jsdelivr.net/npm/@unicorn-fail/drupal-bootstrap-styles@0.0.2/dist/3.4.0/8.x-3.x/drupal-bootstrap.min.css" />
<link rel="stylesheet" media="all" href="/sites/default/files/css/css_EyqAC0JLKZvhQJfFZ_5qkKbggJGBO7iHID56dNmastk.css" />
<link rel="stylesheet" media="all" href="//cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.css" />

    
<!--[if lte IE 8]>
<script src="/sites/default/files/js/js_cAKB8J6F08XqxGiG2_3YqKeUsZsvXx_pbON4srmG2CI.js"></script>
<![endif]-->
<script src="/sites/default/files/js/js_RuvErrn0GtahqSpK91zmLp6Z10bPrNReWUH2sLQwFEY.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
          <script type="text/javascript" src="/modules/contrib/seckit/js/seckit.document_write.js"></script>
        <link type="text/css" rel="stylesheet" id="seckit-clickjacking-no-body" media="all" href="/modules/contrib/seckit/css/seckit.no_body.css" />
        <!-- stop SecKit protection -->
        <noscript>
        <link type="text/css" rel="stylesheet" id="seckit-clickjacking-noscript-tag" media="all" href="/modules/contrib/seckit/css/seckit.noscript_tag.css" />
        <div id="seckit-noscript-tag">
          Sorry, you need to enable JavaScript to visit this website.
        </div>
        </noscript></head>
  <body class="hide-default-heading home path-frontpage page-node-type-dsu-component-page has-glyphicons">
    <a href="#main-content" class="visually-hidden focusable skip-link">
      Skip to main content
    </a>
    <div class="hidden" aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg">
<symbol id="alert" viewBox="0 0 5 16"><path d="M2.5 11a2.5 2.5 0 110 5 2.5 2.5 0 010-5zm0 1a1.5 1.5 0 100 3 1.5 1.5 0 000-3zM5.03 0l-.48 8.58A1.5 1.5 0 013.05 10h-1.1a1.5 1.5 0 01-1.5-1.42L-.03 0h5.06zM3.97 1H1.03l.42 7.53a.5.5 0 00.4.46l.1.01h1.1a.5.5 0 00.5-.47L3.97 1z"/></symbol>
<symbol id="arrow--down" viewBox="0 0 14 12"><path d="M.29 5.2l6.7 6.71 6.71-6.7-1.41-1.42-4.3 4.3V0H6v8.09l-4.3-4.3z"/></symbol>
<symbol id="arrow--left" viewBox="0 0 12 14"><path d="M6.8.3L.09 7l6.7 6.7 1.42-1.4L3.91 8h8.1V6H3.9l4.3-4.3z"/></symbol>
<symbol id="arrow--right" viewBox="0 0 12 14"><path d="M5.2.3L11.92 7l-6.7 6.7-1.42-1.4L8.1 8H0V6h8.09l-4.3-4.3z"/></symbol>
<symbol id="arrow--up" viewBox="0 0 14 12"><path d="M.29 6.79L6.99.08l6.71 6.7-1.4 1.42L8 3.9V12H6V3.9L1.7 8.2z"/></symbol>
<symbol id="ask" viewBox="0 0 16 23"><path d="M5 16c2.76 0 4.45 1.36 4.93 3.98.05.27.07.54.07.81V23H0v-2.57l.04-.26C.48 17.43 2.18 16 5 16zm0 1c-2.34 0-3.61 1.07-3.97 3.32L1 20.5V22h8v-1.2c0-.15 0-.29-.03-.43l-.03-.2C8.55 18.01 7.28 17 5 17zm0-9a3.5 3.5 0 110 7 3.5 3.5 0 010-7zm0 1a2.5 2.5 0 100 5 2.5 2.5 0 000-5zm9.5-9c.78 0 1.42.6 1.5 1.36V6.5c0 .78-.6 1.42-1.36 1.5h-3.02L9 9.3V8h-.5a1.5 1.5 0 01-1.47-1.21L7 6.64V1.5C7 .72 7.6.08 8.36 0h6.14zm0 1h-6a.5.5 0 00-.5.41V6.5c0 .25.18.45.41.5H10v.69L11.38 7h3.12a.5.5 0 00.5-.41V1.5a.5.5 0 00-.41-.5h-.09zm-2.96 4.24c.11 0 .2.04.28.11.07.07.1.17.1.27a.4.4 0 01-.1.28.4.4 0 01-.29.1c-.1 0-.2-.03-.27-.1a.36.36 0 01-.1-.28c0-.1.03-.2.1-.27a.4.4 0 01.28-.1zM11.67 2c.33 0 .6.1.8.28.21.18.32.43.32.73 0 .19-.05.36-.14.51a2 2 0 01-.3.38l-.11.1c-.18.16-.3.3-.35.4a.72.72 0 00-.07.28v.2l-.09.08h-.4l-.07-.08v-.23c.01-.16.05-.3.1-.44.06-.13.17-.28.32-.44l.1-.1c.14-.14.23-.25.29-.34a.55.55 0 00.07-.3.48.48 0 00-.13-.35.5.5 0 00-.37-.13.75.75 0 00-.4.1.93.93 0 00-.25.24l-.06.07-.12.02-.3-.26-.01-.1.08-.12a1.42 1.42 0 011.09-.5z"/></symbol>
<symbol id="carousel-next--large" viewBox="0 0 19 44"><path d="M.78 1.87L3.22.13 18.84 22 3.22 43.87.78 42.13 15.16 22z"/></symbol>
<symbol id="carousel-next--medium" viewBox="0 0 12 28"><path d="M.18 1.57L1.82.43 11.22 14l-9.4 13.57-1.64-1.14L8.78 14z"/></symbol>
<symbol id="carousel-next--small" viewBox="0 0 8 18"><path d="M.18 1.57L1.82.43 7.72 9l-5.9 8.57-1.64-1.14L5.28 9z"/></symbol>
<symbol id="carousel-prev--large" viewBox="0 0 19 44"><path d="M18.22 1.87L15.78.13.16 22l15.62 21.87 2.44-1.74L3.85 22z"/></symbol>
<symbol id="carousel-prev--medium" viewBox="0 0 12 28"><path d="M11.82 1.57L10.17.43.78 14l9.4 13.57 1.64-1.14L3.22 14z"/></symbol>
<symbol id="carousel-prev--small" viewBox="0 0 8 18"><path d="M7.82 1.57L6.17.43.28 9l5.89 8.57 1.65-1.14L2.7 9z"/></symbol>
<symbol id="chevron--down" viewBox="0 0 9 5"><path d="M4.5 3.8L8.15.14a.5.5 0 11.7.7l-4 4a.5.5 0 01-.7 0l-4-4a.5.5 0 01.7-.7L4.5 3.79z"/></symbol>
<symbol id="chevron--left" viewBox="0 0 5 9"><path d="M1.2 4.5l3.65 3.65a.5.5 0 11-.7.7l-4-4a.5.5 0 010-.7l4-4a.5.5 0 11.7.7L1.21 4.5z"/></symbol>
<symbol id="chevron--right" viewBox="0 0 5 9"><path d="M3.8 4.5L.14.85a.5.5 0 01.7-.7l4 4c.2.2.2.5 0 .7l-4 4a.5.5 0 11-.7-.7L3.79 4.5z"/></symbol>
<symbol id="chevron--up" viewBox="0 0 9 5"><path d="M4.5 1.2l3.65 3.65a.5.5 0 10.7-.7l-4-4a.5.5 0 00-.7 0l-4 4a.5.5 0 10.7.7L4.5 1.21z"/></symbol>
<symbol id="close" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M8 0a8 8 0 110 16A8 8 0 018 0zm0 1a7 7 0 100 14A7 7 0 008 1zM5.78 5.09l.07.06L8 7.29l2.15-2.14.07-.06a.5.5 0 01.7.7l-.07.06L8.71 8l2.14 2.15a.5.5 0 01-.63.76l-.07-.06L8 8.71l-2.15 2.14-.07.06a.5.5 0 01-.7-.7l.07-.06L7.29 8 5.15 5.85a.5.5 0 01.63-.76z"/></symbol>
<symbol id="document" viewBox="0 0 12 16"><path d="M8.2 0L12 3.8V16H0V0h8.2zM7 1H1v14h10V5H7V1zM3.5 12h5a.5.5 0 110 1h-5a.5.5 0 110-1zm0-2h5a.5.5 0 110 1h-5a.5.5 0 110-1zm0-2h5a.5.5 0 010 1h-5a.5.5 0 010-1zm0-2h5a.5.5 0 010 1h-5a.5.5 0 010-1zM8 1.2V4h2.8L8 1.2z"/></symbol>
<symbol id="jigsaw" viewBox="0 0 29 19"><path d="M17.55 3l-.02-.12-.01-.1-.01-.09-.01-.19a2.5 2.5 0 115 0v.19l-.03.19-.02.12h3.05c.21 0 .4.14.47.33l.02.08.01.09v3.55l.12-.02.1-.01.1-.01.18-.01a2.5 2.5 0 010 5h-.19l-.19-.03-.12-.02v3.55a.5.5 0 01-.33.47l-.08.02-.09.01h-3.05l.02.12.01.1.01.1.01.18a2.5 2.5 0 11-5 0v-.19l.03-.19.02-.12h-6.1l.02.12.01.1.01.1.01.18a2.5 2.5 0 11-5 0v-.19l.03-.19.02-.12H3.5a.5.5 0 01-.47-.33l-.02-.08v-.09L3 11.23a.5.5 0 01.75-.43 1.5 1.5 0 100-2.6.5.5 0 01-.74-.35L3 7.77V3.5a.5.5 0 01.41-.5h3.14l-.02-.12-.01-.1-.01-.09-.01-.19a2.5 2.5 0 115 0v.19l-.03.19-.02.12h6.1zm-3.18 7.75a.5.5 0 01.3.01l.08.04c.18.1.38.17.6.2h.28a1.5 1.5 0 000-3h-.29c-.2.03-.4.1-.59.2a.5.5 0 01-.16.06h-.22a.5.5 0 01-.36-.4l-.01-.1V4h-3.27a.5.5 0 01-.49-.6l.02-.07.04-.08a1.5 1.5 0 10-2.6 0 .5.5 0 01-.35.74L7.27 4H4v3.05l.12-.02.1-.01.1-.01L4.5 7a2.5 2.5 0 010 5h-.19l-.19-.03-.12-.02V15h3.27c.32 0 .55.3.49.6l-.02.07-.04.08a1.5 1.5 0 102.6 0 .5.5 0 01.35-.74l.08-.01H14v-3.77c0-.2.12-.37.28-.45l.09-.03zM20 1a1.5 1.5 0 00-1.3 2.25.5.5 0 01-.35.74l-.08.01H15v3.05l.12-.02.1-.01.1-.01.18-.01h.16a2.5 2.5 0 01-.16 5h-.19l-.19-.03-.12-.02V15h3.27c.32 0 .55.3.49.6l-.02.07-.04.08a1.5 1.5 0 102.6 0 .5.5 0 01.35-.74l.08-.01H25v-3.77c0-.32.3-.55.6-.49l.07.02.08.04a1.5 1.5 0 100-2.6.5.5 0 01-.74-.35L25 7.77V4h-3.27a.5.5 0 01-.49-.6l.02-.07.04-.08A1.5 1.5 0 0020 1z"/></symbol>
<symbol id="microphone" viewBox="0 0 9 16"><path d="M8.5 7c.28 0 .5.22.5.5a4.5 4.5 0 01-4 4.47V15h2.5a.5.5 0 01.09 1H1.5a.5.5 0 01-.09-1H4v-3.03A4.5 4.5 0 010 7.5a.5.5 0 011 0 3.5 3.5 0 007 0c0-.28.22-.5.5-.5zm-4-7A2.5 2.5 0 017 2.34V7.5a2.5 2.5 0 01-5 .16V2.5A2.5 2.5 0 014.5 0zm0 1c-.78 0-1.42.6-1.5 1.36V7.5a1.5 1.5 0 003 .14V2.5C6 1.67 5.33 1 4.5 1z"/></symbol>
<symbol id="people" viewBox="0 0 16 15"><path d="M11 7c2.66 0 4.33 1.47 4.9 4.28l.05.27.05.35V15H6v-2.56c.02-.1.02-.21.01-.35v-.26C6.47 8.66 8.17 7 11 7zm0 1c-2.3 0-3.61 1.27-4 3.97v-.05l.01.1v.39l-.01.1V14h8v-2.02l-.04-.26C14.52 9.19 13.24 8 11 8zM4 6c1.27 0 2.27.37 2.97 1.13a.5.5 0 11-.73.68C5.74 7.27 5 7 4 7c-1.68 0-2.63.76-2.96 2.3L1 9.5V11h3.8a.5.5 0 01.48.41l.01.09a.5.5 0 01-.4.5H0V9.42C.39 7.18 1.76 6 4 6zm7-6a3 3 0 110 6 3 3 0 010-6zM4 0a2.5 2.5 0 110 5 2.5 2.5 0 010-5zm7 1a2 2 0 100 4 2 2 0 000-4zM4 1a1.5 1.5 0 100 3 1.5 1.5 0 000-3z"/></symbol>
<symbol id="photos" viewBox="0 0 15 12"><path d="M11.5 0c.78 0 1.42.6 1.5 1.36v.14h.5c.78 0 1.42.6 1.5 1.36v7.64c0 .78-.6 1.42-1.36 1.5H3a1.5 1.5 0 01-1.5-1.36V10A1.5 1.5 0 010 8.64V1.5C0 .72.6.08 1.36 0H11.5zm2 2.5H13v6c0 .78-.6 1.42-1.36 1.5H2.5v.5c0 .25.18.45.41.5H13.5a.5.5 0 00.5-.41V3a.5.5 0 00-.41-.5h-.09zm-2-1.5h-10a.5.5 0 00-.5.41V8.5c0 .25.18.45.41.5H11.5a.5.5 0 00.5-.41V1.5a.5.5 0 00-.41-.5h-.09zm-3 2L11 5.5V8H2v-.5l2-2 1 1L8.5 3zM3 2a1 1 0 110 2 1 1 0 010-2z"/></symbol>
<symbol id="presentations" viewBox="0 0 21 16"><path d="M21 0v16H0V0h21zm-1 5H1v10h19V5zm0-4H1v3h19V1z"/></symbol>
<symbol id="publications" viewBox="0 0 23 16"><path d="M10.09 0c.34 0 .68.12.95.34l.1.1.36.35.35-.35c.21-.21.48-.35.77-.41l.15-.02.14-.01h9.59a.5.5 0 01.5.41V14.5a.5.5 0 01-.41.5h-9.68a.5.5 0 00-.29.1l-.06.05-.7.7a.5.5 0 01-.64.06l-.07-.06-.71-.7a.5.5 0 00-.28-.14L10.1 15H.5a.5.5 0 01-.5-.41V.5A.5.5 0 01.41 0h9.68zm0 1H1v13h9.09c.33 0 .65.11.91.31V1.71l-.56-.56a.5.5 0 00-.28-.14L10.1 1zM22 1h-9.09a.5.5 0 00-.22.05l-.07.05-.06.05-.56.56v12.6c.18-.14.4-.24.62-.28l.15-.02.14-.01H22V1zM8.5 11a.5.5 0 01.09 1H3.5a.5.5 0 01-.09-1H8.5zm11 0a.5.5 0 01.09 1H14.5a.5.5 0 01-.09-1h5.09zm-11-2a.5.5 0 01.09 1H3.5a.5.5 0 01-.09-1H8.5zm11 0a.5.5 0 01.09 1H14.5a.5.5 0 01-.09-1h5.09zm-11-2a.5.5 0 01.09 1H3.5a.5.5 0 01-.09-1H8.5zm11 0a.5.5 0 01.09 1H14.5a.5.5 0 01-.09-1h5.09zm-11-2a.5.5 0 01.09 1H3.5a.5.5 0 01-.09-1H8.5zm11 0a.5.5 0 01.09 1H14.5a.5.5 0 01-.09-1h5.09zm-11-2a.5.5 0 01.09 1H3.5a.5.5 0 01-.09-1H8.5zm11 0a.5.5 0 01.09 1H14.5a.5.5 0 01-.09-1h5.09z"/></symbol>
<symbol id="question" viewBox="0 0 16 16"><path d="M13 0a3 3 0 013 3v6a3 3 0 01-3 3H7.68L3 16v-4a3 3 0 01-3-3V3a3 3 0 013-3zm0 1H3a2 2 0 00-2 2v6c0 1.1.9 2 2 2h1v2.83L7.32 11H13a2 2 0 002-2V3a2 2 0 00-2-2zM7.74 8.05a.6.6 0 01.44.17.6.6 0 01.17.43c0 .17-.06.31-.17.42a.61.61 0 01-.44.17.6.6 0 01-.43-.17.57.57 0 01-.17-.42.6.6 0 01.17-.43.6.6 0 01.43-.17zm.2-5.09c.52 0 .95.15 1.27.43.33.3.5.68.5 1.15 0 .3-.08.57-.22.81a3.3 3.3 0 01-.48.6l-.17.15c-.27.25-.46.46-.54.62-.07.13-.1.28-.12.45v.31l-.13.13h-.63l-.12-.13v-.37a2 2 0 01.17-.67c.1-.21.26-.44.5-.7l.14-.15a3 3 0 00.46-.54.86.86 0 00.12-.46.75.75 0 00-.21-.56.8.8 0 00-.58-.2c-.23 0-.43.05-.62.16-.15.09-.28.2-.4.36l-.09.13-.18.02-.48-.4-.02-.17.13-.18c.18-.22.4-.4.65-.54.32-.16.67-.25 1.05-.25z"/></symbol>
<symbol id="quote" viewBox="0 0 59 38"><path d="M8.77 37.59l3.67-.18h2.01a110 110 0 013.94-.65c2.02-.3 3.2-.64 3.57-1a4.4 4.4 0 002.2-1.47c.5-.85.74-1.65.74-2.38s-.28-1.5-.83-2.3c-.55-.79-1-1.43-1.37-1.92-1.22-2.93-1.77-5.55-1.65-7.87a8.7 8.7 0 01-.18-2.02c0-2.44.6-5.07 1.83-7.88a14.24 14.24 0 012.65-4.21 24.9 24.9 0 013.94-3.3 3.47 3.47 0 00-2.56-.92c-.37 0-.7.06-1 .18-.31.13-.53.19-.65.19l-.55-.19-.64-.64c-.3-.3-.83-.45-1.56-.45h-.55L21.23.2a33.16 33.16 0 00-6.41.18 9.73 9.73 0 00-3.85 1.47A31.17 31.17 0 002.54 12.3 29.18 29.18 0 00.16 23.66c0 3.55.8 6.66 2.38 9.35l.55 1.56c.25.67.55 1.28.92 1.83.36.55.98.88 1.83 1 .49.13 1.1.19 1.83.19h1.1zm29.32 0l3.66-.18h2.02a110 110 0 013.94-.65c2.02-.3 3.2-.64 3.57-1a4.4 4.4 0 002.2-1.47c.49-.85.73-1.65.73-2.38s-.27-1.5-.82-2.3c-.55-.79-1-1.43-1.37-1.92-1.23-2.93-1.78-5.55-1.65-7.87a8.7 8.7 0 01-.19-2.02c0-2.44.61-5.07 1.84-7.88a14.24 14.24 0 012.65-4.21 24.9 24.9 0 013.94-3.3 3.47 3.47 0 00-2.56-.92c-.37 0-.7.06-1.01.18-.3.13-.52.19-.64.19l-.55-.19-.64-.64c-.3-.3-.83-.45-1.56-.45h-.55L50.55.2a33.16 33.16 0 00-6.41.18 9.73 9.73 0 00-3.85 1.47 31.17 31.17 0 00-8.43 10.44 29.18 29.18 0 00-2.38 11.36c0 3.55.8 6.66 2.38 9.35l.55 1.56c.24.67.55 1.28.92 1.83.36.55.97.88 1.83 1 .49.13 1.1.19 1.83.19h1.1z"/></symbol>
<symbol id="search" viewBox="0 0 14 14"><path d="M8.5 0a5.5 5.5 0 11-2.63 10.33L2.5 13.71.3 11.5l3.37-3.37A5.5 5.5 0 018.5 0zM4.23 8.97L1.71 11.5l.79.8 2.53-2.53c-.3-.24-.56-.5-.8-.8zM8.5 1a4.5 4.5 0 100 9 4.5 4.5 0 000-9zm3 4c.28 0 .5.22.5.5A3.5 3.5 0 018.5 9a.5.5 0 010-1A2.5 2.5 0 0011 5.5c0-.28.22-.5.5-.5z"/></symbol>
<symbol id="social__email" viewBox="0 0 16 12"><path d="M15 0a1 1 0 011 1v10a1 1 0 01-1 1H1a1 1 0 01-1-1V1a1 1 0 011-1h14zm0 1.66l-7 6-7-6V11h14V1.66zM14.23 1H1.77L8 6.34 14.23 1z"/></symbol>
<symbol id="social__facebook-msg" viewBox="0 0 16 8"><path d="M9.32 7.28L6.18 3.84.06 7.28 6.8-.06 10 3.37l6.05-3.43z"/></symbol>
<symbol id="social__facebook-share" viewBox="0 0 8 14"><path fill-rule="evenodd" d="M0 7.37V5.05h1.88V3.04C1.88 1.45 3 0 5.55 0c1.04 0 1.8.1 1.8.1L7.3 2.3l-1.64-.01c-.92 0-1.07.39-1.07 1.04v1.72h2.78l-.12 2.32H4.59V14h-2.7V7.37H0z"/></symbol>
<symbol id="social__facebook" viewBox="0 0 8 14"><path fill-rule="evenodd" d="M0 7.37V5.05h1.88V3.04C1.88 1.45 3 0 5.55 0c1.04 0 1.8.1 1.8.1L7.3 2.3l-1.64-.01c-.92 0-1.07.39-1.07 1.04v1.72h2.78l-.12 2.32H4.59V14h-2.7V7.37H0z"/></symbol>
<symbol id="social__flickr" viewBox="0 0 17 7"><path fill-rule="evenodd" d="M3.5 0a3.5 3.5 0 110 7 3.5 3.5 0 010-7zm10 0a3.5 3.5 0 110 7 3.5 3.5 0 010-7z"/></symbol>
<symbol id="social__google-plus" viewBox="0 0 19 12"><path fill-rule="evenodd" d="M16.82 4.92V2.84h-1.48v2.08h-2.15V6.4h2.15v2.15h1.48V6.4h2.08V4.92h-2.08zM6 4.79v2.39h3.25C8.75 8.73 7.95 9.56 6 9.56A3.52 3.52 0 012.5 6a3.52 3.52 0 015.83-2.69c.5-.49.45-.57 1.71-1.75A6 6 0 106 12c4.96 0 6.18-4.32 5.78-7.2H6z"/></symbol>
<symbol id="social__instagram" viewBox="0 0 14 14"><path d="M6.43 0h1.12l.8.01c4.76.12 5.57 1.07 5.64 6.15V8.1c-.1 4.82-.95 5.75-5.63 5.87l-.8.02H5.91C.71 13.9.01 12.91 0 7.28V5.65C.13.89 1.08.08 6.16.01h.27zm1.35 1H5.72c-4.05.08-4.63.63-4.7 4.5L1 6.22v2.06c.07 4.1.62 4.65 4.73 4.71h.24L7 13c5.27 0 5.92-.23 6-4.73V6.2c-.04-4.48-.48-5.1-4.5-5.19h-.72zM7 3.5a3.5 3.5 0 110 7 3.5 3.5 0 010-7zm0 1a2.5 2.5 0 100 5 2.5 2.5 0 000-5zm3.75-2a.75.75 0 110 1.5.75.75 0 010-1.5z"/></symbol>
<symbol id="social__linkedin" viewBox="0 0 13 12"><path fill-rule="evenodd" d="M9.62 3.79c1.74 0 3.05 1.15 3.05 3.61V12h-2.65V7.7c0-1.07-.38-1.8-1.34-1.8-.73 0-1.16.49-1.35.97-.07.17-.1.41-.1.65V12H4.6s.04-7.27 0-8.02h2.65V5.1l.04-.06a2.6 2.6 0 012.12-1.25zm-6.86.17v8.02H.1V3.96h2.65zM1.5 0c.9 0 1.46.6 1.48 1.39 0 .77-.58 1.38-1.5 1.38h-.02C.57 2.77 0 2.16 0 1.4 0 .59.6 0 1.5 0z"/></symbol>
<symbol id="social__pinterest" viewBox="0 0 11 14"><path fill-rule="evenodd" d="M2.35 13.5a8.67 8.67 0 01.03-2.5l1-4.3s-.25-.51-.25-1.28c0-1.2.7-2.1 1.55-2.1.74 0 1.09.55 1.09 1.22 0 .74-.47 1.85-.71 2.88-.2.86.43 1.56 1.27 1.56 1.52 0 2.7-1.62 2.7-3.96 0-2.07-1.48-3.52-3.59-3.52a3.73 3.73 0 00-3.87 3.75c0 .75.28 1.55.64 1.98.07.08.08.16.06.25l-.24.98c-.04.16-.13.19-.29.11C.67 8.08 0 6.5 0 5.23 0 2.51 1.97 0 5.67 0c2.98 0 5.29 2.14 5.29 5 0 2.97-1.87 5.37-4.45 5.37-.87 0-1.69-.45-1.97-.99l-.53 2.06a9.7 9.7 0 01-1.07 2.26c-.17.22-.29.32-.36.3-.09-.04-.2-.2-.23-.5z"/></symbol>
<symbol id="social__rss-feeds" viewBox="0 0 14 14"><path d="M3.76 12.05c0 .52-.19.97-.55 1.33-.37.36-.8.55-1.33.55a1.8 1.8 0 01-1.33-.55 1.8 1.8 0 01-.54-1.33 1.83 1.83 0 011.87-1.87c.52 0 .96.18 1.33.54.36.37.55.81.55 1.33zm5 1.2a.6.6 0 01-.17.47.58.58 0 01-.46.2H6.81a.6.6 0 01-.42-.15.6.6 0 01-.2-.41 6.07 6.07 0 00-1.8-3.82 6.07 6.07 0 00-3.82-1.8.6.6 0 01-.4-.2.6.6 0 01-.16-.42V5.8c0-.19.06-.34.2-.46a.57.57 0 01.42-.16h.05a8.76 8.76 0 017.29 5.08c.44.96.7 1.95.79 3zm5 .02a.56.56 0 01-.18.46.58.58 0 01-.45.2h-1.4a.61.61 0 01-.43-.17.58.58 0 01-.2-.42 11.22 11.22 0 00-3.25-7.27A11.22 11.22 0 00.6 2.81a.58.58 0 01-.41-.19A.6.6 0 010 2.2V.8A.6.6 0 01.2.35.58.58 0 01.62.18h.03A13.55 13.55 0 019.7 4.22a13.69 13.69 0 014.05 9.05z"/></symbol>
<symbol id="social__tencent-video" viewBox="0 0 14 13"><path d="M2.67 1.47A1.77 1.77 0 015.02.12c2.16.8 5.7 2.4 8.42 5.03.76.73.74 1.95-.05 2.64a29.66 29.66 0 01-8.34 5.07 1.77 1.77 0 01-2.4-1.36l-.02-.15a28.62 28.62 0 007.64-3.86c.72-.53.74-1.46.05-2.02-2.48-2-5.69-3.21-7.68-3.83l.03-.17zM.4 2.65c.18-.83 1.22-1.33 2.17-1.03l.07.02a30.51 30.51 0 00-.02 9.72H2.6c-.96.33-2.04-.17-2.2-1.03a18.69 18.69 0 010-7.68zm3.83 1.66c0-.44.28-.59.63-.32L7.5 6c.35.27.35.7 0 .98L4.87 9c-.35.26-.63.12-.63-.32z"/></symbol>
<symbol id="social__tumblr" viewBox="0 0 9 14"><path d="M7.37 11.18c-.26.13-.76.23-1.13.24-1.12.03-1.34-.78-1.35-1.38V5.7h2.82V3.57H4.9V0H2.85c-.03 0-.09.03-.1.1C2.63 1.2 2.12 3.12 0 3.89v1.8h1.42v4.58c0 1.57 1.15 3.8 4.2 3.74 1.03-.02 2.17-.45 2.43-.82l-.68-2"/></symbol>
<symbol id="social__twitter" viewBox="0 0 16 13"><path fill-rule="evenodd" d="M16 1.77a6.8 6.8 0 01-1.89.5c.68-.4 1.2-1 1.45-1.74a6.8 6.8 0 01-2.09.76 3.4 3.4 0 00-2.4-.99A3.21 3.21 0 007.8 3.44c0 .25.03.49.09.72A9.46 9.46 0 011.11.88c-.28.46-.44 1-.44 1.57a3.1 3.1 0 001.46 2.62 3.38 3.38 0 01-1.49-.4v.05A3.18 3.18 0 003.28 7.8a3.42 3.42 0 01-1.49.05 3.27 3.27 0 003.07 2.18A6.78 6.78 0 010 11.33a9.6 9.6 0 005.03 1.41 9.07 9.07 0 009.33-9.34c.64-.44 1.2-1 1.64-1.63 0 0-.44.63 0 0"/></symbol>
<symbol id="social__vk-social" viewBox="0 0 16 9"><path d="M15.63 8.12a8.15 8.15 0 00-1.62-1.91v-.02h-.02v-.01h-.01a9.44 9.44 0 01-.67-.67.64.64 0 01-.11-.67c.06-.17.31-.52.74-1.07l.53-.7c.94-1.25 1.35-2.05 1.23-2.4l-.05-.08c-.04-.05-.12-.1-.26-.14a1.29 1.29 0 00-.52-.02L12.5.45a.3.3 0 00-.16 0l-.1.03-.05.02-.03.02a.36.36 0 00-.1.09.56.56 0 00-.07.14 13.36 13.36 0 01-1.44 2.72 4.23 4.23 0 01-.73.83c-.1.07-.17.1-.21.1a6 6 0 01-.14-.04.54.54 0 01-.19-.2.9.9 0 01-.1-.32 3.52 3.52 0 01-.02-.72A12.14 12.14 0 009.2 2.1a117.42 117.42 0 01.03-1.03c0-.16 0-.28-.03-.37a1.27 1.27 0 00-.08-.26.44.44 0 00-.17-.2.95.95 0 00-.27-.11c-.3-.07-.66-.1-1.1-.1A5.37 5.37 0 005.6.21a1.1 1.1 0 00-.32.24c-.1.12-.1.19-.04.2.33.05.56.17.7.35l.05.1a3.8 3.8 0 01.19.97 6.37 6.37 0 01-.2 2.08l-.09.18a.14.14 0 01-.04.04.61.61 0 01-.22.04c-.08 0-.17-.04-.28-.12-.1-.07-.22-.18-.34-.31a4.21 4.21 0 01-.4-.56c-.14-.24-.3-.53-.45-.85l-.14-.24a20.41 20.41 0 01-.7-1.52.54.54 0 00-.2-.26L3.09.54a.87.87 0 00-.32-.12L.52.43C.3.43.14.48.06.6L.02.64A.26.26 0 000 .77C0 .83.02.9.05.99a27 27 0 002.94 5.19 18.11 18.11 0 00.8.99l.21.2a9.84 9.84 0 001.42 1.01 4.57 4.57 0 002.27.56h.94c.2-.01.34-.07.44-.18l.03-.04a.83.83 0 00.09-.38c0-.23.01-.44.05-.63s.09-.33.14-.42a1.05 1.05 0 01.32-.36.53.53 0 01.06-.03c.13-.05.29 0 .47.12.17.13.34.29.5.48.15.19.34.4.55.63.22.24.41.41.58.53l.16.1a2 2 0 00.43.17c.17.06.32.07.46.05L15 8.94c.2 0 .37-.03.48-.1.12-.07.19-.14.2-.22a.63.63 0 00.01-.28l-.06-.22z"/></symbol>
<symbol id="social__wechat" viewBox="0 0 16 14"><path d="M11 5c2.76 0 5 1.8 5 4a3.7 3.7 0 01-1.74 3.01l-.2.13L15 14l-2.7-1.15c-.41.09-.85.15-1.3.15-2.76 0-5-1.8-5-4s2.24-4 5-4zM6 0c2.93 0 5.36 1.75 5.9 4.06-.3-.03-.6-.06-.9-.06-3.3 0-6 2.24-6 5 0 .32.04.63.11.94-.41-.05-.8-.15-1.18-.27l-.28-.1-2.15.93.8-1.58A4.73 4.73 0 010 5c0-2.76 2.69-5 6-5zm3.5 7.25a.75.75 0 100 1.5.75.75 0 000-1.5zm3 0a.75.75 0 100 1.5.75.75 0 000-1.5zm-8.5-5a.75.75 0 100 1.5.75.75 0 000-1.5zm4 0a.75.75 0 100 1.5.75.75 0 000-1.5z"/></symbol>
<symbol id="social__weibo" viewBox="0 0 18 14"><path d="M2.56 4.55c2.17-2.16 4.7-3.15 5.65-2.2.41.42.45 1.15.19 2.01-.12.34.2.27.34.22l.06-.02c1.76-.74 3.28-.78 3.84.02.28.39.27.92.06 1.54l-.06.17c-.1.26-.02.34.15.4l.13.04c.99.3 2.09 1.05 2.08 2.35 0 2.16-3.1 4.88-7.79 4.88C3.65 13.96 0 12.23 0 9.38c0-1.48.94-3.2 2.56-4.83zm9.48 4.5c-.18-1.88-2.64-3.16-5.49-2.88-2.84.28-5 2.02-4.82 3.9.19 1.86 2.65 3.15 5.5 2.87 2.84-.28 5-2.03 4.81-3.9zm-8 .07A3.1 3.1 0 017.5 7.61c1.4.36 2.12 1.68 1.54 2.97a3.08 3.08 0 01-3.67 1.55c-1.36-.44-1.95-1.79-1.35-3zm2.12.45c-.45-.18-1.01 0-1.29.44-.27.42-.14.94.3 1.13.44.2 1.03.01 1.3-.43s.13-.94-.31-1.14zm1.09-.45a.42.42 0 00-.48.19c-.1.16-.05.35.12.42.17.07.4 0 .5-.18.09-.17.03-.36-.14-.43zM11.92.08a4.55 4.55 0 015.12 5.67l-.06.23a.66.66 0 01-1.28-.31l.02-.1.06-.2a3.23 3.23 0 00-3.81-3.96.66.66 0 01-.37-1.26l.1-.03.22-.04zm.26 2.33a2.21 2.21 0 012.57 2.85.57.57 0 01-1.1-.26l.06-.2a1.08 1.08 0 00-1.17-1.3l-.21.03a.57.57 0 01-.15-1.12z"/></symbol>
<symbol id="social__youtube" viewBox="0 0 17 12"><path d="M8.5 0S3.17 0 1.84.35c-.72.2-1.3.8-1.5 1.52C0 3.22 0 6.01 0 6.01s0 2.8.35 4.12c.2.73.77 1.3 1.5 1.51 1.34.36 6.64.36 6.64.36s5.33 0 6.66-.35c.73-.2 1.3-.77 1.5-1.51C17 8.8 17 6.02 17 6.02s.01-2.8-.36-4.15a2.1 2.1 0 00-1.49-1.5C13.82 0 8.5 0 8.5 0zM6.8 3.43l4.42 2.58L6.8 8.57V3.43z"/></symbol>
<symbol id="video" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M8 0a8 8 0 110 16A8 8 0 018 0zm0 1a7 7 0 100 14A7 7 0 008 1zM6.07 5.63a.5.5 0 01.6-.21l.09.03 3.53 2.12a.5.5 0 01.07.8l-.07.06-3.53 2.12A.5.5 0 016 10.2V5.89c0-.09.02-.18.07-.25z"/></symbol>
</svg></div>
    <noscript aria-hidden="true"><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PWRZ37" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
      <div class="dialog-off-canvas-main-canvas" data-off-canvas-main-canvas>
    <div class="page-wrapper" id="main">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <header class="header-wrapper">
                      <div class="row row--header-locations">
              <div class="col-md-12">
                <div class="header-locations-wrapper">
                  <div class="container">
                      <div class="region region-header-locations">
    <nav role="navigation" aria-labelledby="block-da-vinci-code-globalmenu-menu" id="block-da-vinci-code-globalmenu" data-block-plugin-id="system_menu_block:global-menu">
  <div class="close-button">
    <a href="#" class="close-location-region" alt="Close Menu">
      <img src="/themes/custom/da_vinci_code/images/icons/circular_button_close_white.svg" alt="Close Menu Button">
    </a>
  </div>
  <div class="gl-menu-section-wrapper">
    <div class="gl-menu-left-section">
      <img src="/themes/custom/da_vinci_code/images/icons/globe_Icon_change_location-menu.png" class="globe-icon" alt="Globe icon change location">
                  
      <h2 id="block-da-vinci-code-globalmenu-menu">Change location</h2>
      
      <span>You are currently on the Nestlé global website</span>
    </div>
    <div class="gl-menu-right-section">
                    
      <ul data-region="header_locations" class="menu menu--global-menu nav">
                              <li class="global-submenu active active-trail first last">
                                                                                    <a href="/" class="dropdown-toggle active-trail is-active" data-toggle="dropdown" data-drupal-link-system-path="&lt;front&gt;">Global <span class="caret"></span></a>
                            <ul data-region="header_locations" class="global-menu">
                              <li class="first">
                                                  <a href="https://www.nestle.com">www.nestle.com</a>
                  </li>
                              <li class="global-submenu">
                                                  <a href="">Africa &amp; Middle East</a>
                            <ul data-region="header_locations" class="global-menu">
                              <li class="first">
                                                  <a href="http://www.nestle-cwa.com">Central-West Africa</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle-esar.com">East &amp; Southern Africa</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.ir">Iran</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle-mena.com/ar">Middle East &amp; North Africa AR</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle-mena.com/en">Middle East &amp; North Africa EN</a>
                  </li>
                              <li class="last">
                                                  <a href="http://www.nestle.com.tr">Turkey</a>
                  </li>
          </ul>
  
                  </li>
                              <li class="global-submenu">
                                                  <a href="">Americas</a>
                            <ul data-region="header_locations" class="global-menu">
                              <li class="first">
                                                  <a href="http://www.nestle.com.ar">Argentina</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.bo">Bolivia</a>
                  </li>
                              <li>
                                                  <a href="http://corporativo.nestle.com.br">Brazil</a>
                  </li>
                              <li>
                                                  <a href="https://www.corporate.nestle.ca/en">Canada EN</a>
                  </li>
                              <li>
                                                  <a href="https://www.corporate.nestle.ca/fr">Canada FR</a>
                  </li>
                              <li>
                                                  <a href="https://nestle-caribbean.com">Caribbean</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle-centroamerica.com">Central America</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.cl">Chile</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle.com.co/">Colombia</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle.do">Dominican Republic</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.ec">Ecuador</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.mx">Mexico</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.py">Paraguay</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.pe">Peru</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestleusa.com">United States</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.uy">Uruguay</a>
                  </li>
                              <li class="last">
                                                  <a href="http://www.nestle.com.ve">Venezuela</a>
                  </li>
          </ul>
  
                  </li>
                              <li class="global-submenu">
                                                  <a href="">Asia &amp; Oceania</a>
                            <ul data-region="header_locations" class="global-menu">
                              <li class="first">
                                                  <a href="http://www.nestle.com.au">Australia</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.bd">Bangladesh</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.hk">Hong Kong SAR, Greater China</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.in">India</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.co.id">Indonesia</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.co.jp">Japan</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.co.kr">Korea</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.cn">Mainland China, Greater China</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.my">Malaysia</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.co.nz">New Zealand</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.pk">Pakistan</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.ph">Philippines</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.sg">Singapore</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.lk">Sri Lanka</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.tw">Taiwan, Greater China</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.co.th/en">Thailand EN</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle.co.th/th">Thailand TH</a>
                  </li>
                              <li class="last">
                                                  <a href="http://www.nestle.com.vn">Vietnam</a>
                  </li>
          </ul>
  
                  </li>
                              <li class="global-submenu last">
                                                  <a href="">Europe</a>
                            <ul data-region="header_locations" class="global-menu">
                              <li class="first">
                                                  <a href="http://www.nestle.at">Austria</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.be/fr">Belgium FR</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.be/nl">Belgium NL</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.ba">Bosnia &amp; Herzegovina</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.bg">Bulgaria</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.hr">Croatia</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle.cz/cs">Czech Republic</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.dk">Denmark</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.ee">Estonia</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.fi">Finland</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.fr">France</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.de">Germany</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.gr">Greece</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.hu">Hungary</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.ie">Ireland</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.it">Italy</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle.lt/lv">Latvia</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle.lt/lt">Lithuania</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.mk">Macedonia</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.mt">Malta</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle.md/ro">Moldova RO</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle.md/ru">Moldova RU</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.nl">Netherlands</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.no">Norway</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle.pl">Poland</a>
                  </li>
                              <li>
                                                  <a href="https://empresa.nestle.pt">Portugal</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.ro">Romania</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.ru">Russia</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.rs">Serbia</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle.cz/sk">Slovakia</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.si">Slovenia</a>
                  </li>
                              <li>
                                                  <a href="https://www.empresa.nestle.es/es">Spain ES</a>
                  </li>
                              <li>
                                                  <a href="https://www.empresa.nestle.es/ca">Spain CA</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.se">Sweden</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle.ch/de">Switzerland DE</a>
                  </li>
                              <li>
                                                  <a href="https://www.nestle.ch/fr">Switzerland FR</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.com.tr">Turkey</a>
                  </li>
                              <li>
                                                  <a href="http://www.nestle.co.uk">UK</a>
                  </li>
                              <li class="last">
                                                  <a href="http://www.nestle.ua">Ukraine</a>
                  </li>
          </ul>
  
                  </li>
          </ul>
  
                  </li>
          </ul>
  

          </div>
  </div>
</nav>

  </div>

                  </div>
                </div>
              </div>
            </div>
                                <div class="row row--header-top">
              <div class="col-md-12">
                <div class="header-top-wrapper">
                    <div class="region region-header-top">
    <div class="block-view-container">
  <section id="block-da-vinci-code-globallinksmenu" data-block-plugin-id="block_content:5b559819-c1c4-4134-9e4c-a53623e1dce1" class="block block-block-content block-block-content5b559819-c1c4-4134-9e4c-a53623e1dce1 clearfix">

        <div class="field field--name-body field--type-text-with-summary field--label-hidden field--item">
      <div class="global-links">
        <span class="country">
          
          <a class="language-select" href="#">
            <img alt="Global links icon" class="globe-icon b-lazy b-loaded" src="/themes/custom/da_vinci_code/images/icon-globe.png">
                        You are in our Global Site

          
            <img alt="Global links dropdown" class="select-arrow b-lazy b-loaded" src="/themes/custom/da_vinci_code/images/icon-downarrow.png">
          </a>
        </span>
      </div>
    </div>
    
  </section>
</div>
<nav role="navigation" aria-labelledby="block-da-vinci-code-contactmenu-menu" id="block-da-vinci-code-contactmenu" data-block-plugin-id="system_menu_block:contact-menu">
            
  <h2 class="visually-hidden" id="block-da-vinci-code-contactmenu-menu">Contact menu</h2>
  

        
      <ul data-region="header_top" class="menu menu--contact-menu nav">
                      <li class="first last">
                                        <a href="/info/contactus/contactus" target="_self" data-drupal-link-system-path="node/476851">Contact</a>
              </li>
        </ul>
  

  </nav>

  </div>

                </div>
              </div>
            </div>
                                <div class="row row--header">
              <div class="col-md-12">
                <div class="container container--header">
                    <div class="region region-header">
          <a class="logo navbar-btn pull-left" href="/" title="Home" rel="home">
      <img src="/themes/custom/da_vinci_code/logo.png" alt="Home" />
    </a>
  <div class="block-view-container">
  <section class="views-exposed-form bef-exposed-form block block-views block-views-exposed-filter-blockglobal-search-global-search-block-all clearfix" data-bef-auto-submit-full-form="" data-drupal-selector="views-exposed-form-global-search-global-search-block-all" id="block-da-vinci-code-exposedformglobal-searchglobal-search-block-all" data-block-plugin-id="views_exposed_filter_block:global_search-global_search_block_all">
    
        

          <form action="/searchresults" method="get" id="views-exposed-form-global-search-global-search-block-all" accept-charset="UTF-8">
  <div class="form--inline form-inline clearfix">
  <div class="search-keyword-wrapper"><div class="form-item js-form-item form-type-textfield js-form-type-textfield form-item-keyword js-form-item-keyword form-group">
      <label for="edit-keyword" class="control-label">Search</label>
  
  
  <input data-bef-auto-submit-exclude="" autocomplete="off" data-drupal-selector="edit-keyword" class="form-text form-control" type="text" id="edit-keyword" name="keyword" value="" size="30" maxlength="128" placeholder="Search here" />

  
  
  </div>
<div data-drupal-selector="edit-actions" class="form-actions form-group js-form-wrapper form-wrapper" id="edit-actions"><button data-bef-auto-submit-click="" data-drupal-selector="edit-submit-global-search" class="button js-form-submit form-submit btn-primary btn icon-before" type="submit" id="edit-submit-global-search" value="Search" name=""><span class="icon glyphicon glyphicon-search" aria-hidden="true"></span>
Search</button></div>
</div><div class="search-filter-wrapper"><div class="display-none"><div class="form-item js-form-item form-type-select js-form-type-select form-item-filter-result js-form-item-filter-result form-group">
      <label for="edit-filter-result" class="control-label">Filter results by</label>
  
  
  <div class="select-wrapper"><select data-drupal-selector="edit-filter-result" class="form-select form-control" id="edit-filter-result" name="filter_result"><option
            value="all">All</option><option
            value="news">News</option><option
            value="documents">Documents</option><option
            value="images">Images</option><option
            value="videos">Videos</option></select></div>

  
  
  </div>
</div><fieldset data-drupal-selector="edit-sort-bef-combine" class="fieldgroup form-composite js-form-item form-item js-form-wrapper form-wrapper" id="edit-sort-bef-combine--wrapper">
      <legend>
    <span class="fieldset-legend"></span>
  </legend>
  <div class="fieldset-wrapper">
            <div id="edit-sort-bef-combine"><div data-drupal-selector="edit-sort-bef-combine" class="fieldgroup form-composite form-radios" id="edit-sort-bef-combine--wrapper">
                  <div class="form-item js-form-item form-type-radio js-form-type-radio form-item-sort-bef-combine js-form-item-sort-bef-combine radio">
  
  
  

      <label for="edit-sort-bef-combine-search-api-relevance-desc" class="control-label option"><input data-drupal-selector="edit-sort-bef-combine-search-api-relevance-desc" class="form-radio" type="radio" id="edit-sort-bef-combine-search-api-relevance-desc" name="sort_bef_combine" value="search_api_relevance DESC" checked="checked" /><div class="custom-box"></div>Most relevant</label>
  
  
  </div>

                    <div class="form-item js-form-item form-type-radio js-form-type-radio form-item-sort-bef-combine js-form-item-sort-bef-combine radio">
  
  
  

      <label for="edit-sort-bef-combine-changed-desc" class="control-label option"><input data-drupal-selector="edit-sort-bef-combine-changed-desc" class="form-radio" type="radio" id="edit-sort-bef-combine-changed-desc" name="sort_bef_combine" value="changed DESC" /><div class="custom-box"></div>Last updated</label>
  
  
  </div>

      </div>
</div>

          </div>
</fieldset>
</div>
</div>

</form>

      </section>
</div>

  </div>

                  <div class="hamburger-menu">
                    <span></span>
                  </div>
                  <div class="search-icon">
                    <span></span>
                  </div>
                </div>
              </div>
            </div>
                                <div class="row row--header-below">
              <div class="col-md-12">
                <div class="header-below-wrapper">
                    <div class="region region-header-below">
    <nav role="navigation" aria-labelledby="block-da-vinci-code-mainnavigation-2-menu" id="block-da-vinci-code-mainnavigation-2" data-block-plugin-id="system_menu_block:main">
            <h2 class="sr-only" id="block-da-vinci-code-mainnavigation-2-menu">Main navigation</h2>

      
<ul class="menu menu-level-0">
  
  <li class="menu-item menu-item--active-trail">
          <a href="/" class="is-active" data-drupal-link-system-path="&lt;front&gt;">Home</a>
    
    
          
<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
  <div class="mega-menu-wrap">
    <div class="mega-menu-container mega-menu-container--no-content">
      <a href="#" class="close-menu-tab close-menu-tab--desktop" alt="Close Menu">
        <img src="/themes/custom/da_vinci_code/images/icon-x.png" alt="Close Menu Button">
      </a>

      <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
        Back
      </a>

      
      
      
            <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
        <a href="/">        Go to         <strong>Home</strong>
      
      </a>
      </div>
      
      

    </div>
  </div>
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/aboutus" data-drupal-link-system-path="node/473866">About us</a>
    
    
          
<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
  <div class="mega-menu-wrap">
    <div class="mega-menu-container mega-menu-container--has-content">
      <a href="#" class="close-menu-tab close-menu-tab--desktop" alt="Close Menu">
        <img src="/themes/custom/da_vinci_code/images/icon-x.png" alt="Close Menu Button">
      </a>

      <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
        Back
      </a>

            <div class="main-menu-content">
                  <div class="main-menu-content__image">
            
            <div class="field field--name-field-menu-featured-image field--type-image field--label-hidden field--item">  <img src="/sites/default/files/styles/navigation_featured_image/public/2020-06/about-us-featured_1.jpg?itok=D1KUvdTA" width="500" height="190" alt="Dad and daughter playing" typeof="foaf:Image" class="img-responsive" />


</div>
      
          </div>
        
                  <div class="main-menu-content__body">
            
            <div class="field field--name-field-menu field--type-text-long field--label-hidden field--item"><p>Good food, good life – that is what we stand for. Everything you need to know about Nestlé is here: brands, key figures, milestones.</p>
</div>
      
          </div>
              </div>
      
      
      
            <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
        <a href="/aboutus">        Go to         <strong>About us</strong>
      
      </a>
      </div>
      
      
<ul class="menu menu-level-1">
  
  <li class="menu-item menu-item--expanded">
          <a href="/aboutus/history" data-drupal-link-system-path="node/473766">History</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/history">    Go to     <strong>History</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/aboutus/history/nest-virtual-tour" target="_blank">Virtual tour</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/history/nest-virtual-tour" target="_blank">    Go to     <strong>Virtual tour</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/history/nestle-company-history" data-drupal-link-system-path="node/473796">Company history</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/history/nestle-company-history">    Go to     <strong>Company history</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/history/logo-evolution" data-drupal-link-system-path="node/473861">Logo evolution</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/history/logo-evolution">    Go to     <strong>Logo evolution</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/history/company-founder-henri-nestle" data-drupal-link-system-path="node/473751">Henri Nestlé</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/history/company-founder-henri-nestle">    Go to     <strong>Henri Nestlé</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/history/images" data-drupal-link-system-path="node/473771">Images</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/history/images">    Go to     <strong>Images</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/aboutus/overview" data-drupal-link-system-path="node/473736">At a glance</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/overview">    Go to     <strong>At a glance</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item menu-item--expanded">
          <a href="/aboutus/overview/businesses" data-drupal-link-system-path="node/473731">Our businesses</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/overview/businesses">    Go to     <strong>Our businesses</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/aboutus/overview/businesses/cereal-partners-worldwide" data-drupal-link-system-path="node/473691">Cereal Partners Worldwide</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/overview/businesses/cereal-partners-worldwide">    Go to     <strong>Cereal Partners Worldwide</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/overview/businesses/nestle-health-science" data-drupal-link-system-path="node/473701">Nestlé Health Science</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/overview/businesses/nestle-health-science">    Go to     <strong>Nestlé Health Science</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/overview/businesses/nestle-nespresso" data-drupal-link-system-path="node/473711">Nestlé Nespresso</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/overview/businesses/nestle-nespresso">    Go to     <strong>Nestlé Nespresso</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/overview/businesses/nestle-purina-petcare" data-drupal-link-system-path="node/473696">Nestlé Purina PetCare</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/overview/businesses/nestle-purina-petcare">    Go to     <strong>Nestlé Purina PetCare</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/overview/ourbrands" data-drupal-link-system-path="node/473671">Our brands</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/overview/ourbrands">    Go to     <strong>Our brands</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/overview/keyfigures" data-drupal-link-system-path="node/473676">Key figures</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/overview/keyfigures">    Go to     <strong>Key figures</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/overview/keydates" data-drupal-link-system-path="node/473686">Key dates</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/overview/keydates">    Go to     <strong>Key dates</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/globalpresence" data-drupal-link-system-path="node/473666">Nestlé worldwide</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/globalpresence">    Go to     <strong>Nestlé worldwide</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/aboutus/management" data-drupal-link-system-path="node/473926">Management</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/management">    Go to     <strong>Management</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/aboutus/management/boardofdirectors" data-drupal-link-system-path="node/473931">Board of Directors</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/management/boardofdirectors">    Go to     <strong>Board of Directors</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/management/executiveboard" data-drupal-link-system-path="node/474001">Executive Board</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/management/executiveboard">    Go to     <strong>Executive Board</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/management/chairman-emeritus" data-drupal-link-system-path="node/460416">Chairman Emeritus</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/management/chairman-emeritus">    Go to     <strong>Chairman Emeritus</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/management/financialtransactions" data-drupal-link-system-path="node/473996">Financial transactions</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/management/financialtransactions">    Go to     <strong>Financial transactions</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/strategy" data-drupal-link-system-path="node/473741">Strategy</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/strategy">    Go to     <strong>Strategy</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/aboutus/businessprinciples" data-drupal-link-system-path="node/473616">Business Principles</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/businessprinciples">    Go to     <strong>Business Principles</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/aboutus/businessprinciples/code-of-business-conduct" data-drupal-link-system-path="node/473621">Code of business conduct</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/businessprinciples/code-of-business-conduct">    Go to     <strong>Code of business conduct</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/aboutus/businessprinciples/privacy" data-drupal-link-system-path="node/473636">Privacy</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/businessprinciples/privacy">    Go to     <strong>Privacy</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/aboutus/businessprinciples/privacy/privacy-notice" data-drupal-link-system-path="node/473641">Privacy notice</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/businessprinciples/privacy/privacy-notice">    Go to     <strong>Privacy notice</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/businessprinciples/privacy/cookies" data-drupal-link-system-path="node/473631">Cookies</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/businessprinciples/privacy/cookies">    Go to     <strong>Cookies</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/businessprinciples/privacy/terms-of-use" data-drupal-link-system-path="node/473646">Terms of use</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/businessprinciples/privacy/terms-of-use">    Go to     <strong>Terms of use</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/businessprinciples/report-your-concerns" data-drupal-link-system-path="node/473626">Report your concerns</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/businessprinciples/report-your-concerns">    Go to     <strong>Report your concerns</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/aboutus/breastfeeding-nutrition" data-drupal-link-system-path="node/473911">Nutrition in the first 1000 days</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/breastfeeding-nutrition">    Go to     <strong>Nutrition in the first 1000 days</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/aboutus/breastfeeding-nutrition/marketing-baby-milk" data-drupal-link-system-path="node/473916">Marketing infant nutrition: getting it right</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/breastfeeding-nutrition/marketing-baby-milk">    Go to     <strong>Marketing infant nutrition: getting it right</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/suppliers" data-drupal-link-system-path="node/473881">Responsible sourcing</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/suppliers">    Go to     <strong>Responsible sourcing</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/aboutus/quality-and-safety" data-drupal-link-system-path="node/473876">Quality and safety</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/quality-and-safety">    Go to     <strong>Quality and safety</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/aboutus/quality-and-safety/how-we-ensure-food-safety" data-drupal-link-system-path="node/473871">How we ensure food safety</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/quality-and-safety/how-we-ensure-food-safety">    Go to     <strong>How we ensure food safety</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/our-response-covid-19-coronavirus" title="Our response to COVID-19" data-drupal-link-system-path="node/566261">Our response to COVID-19</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/our-response-covid-19-coronavirus">    Go to     <strong>Our response to COVID-19</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/mediavideos" data-drupal-link-system-path="node/475321">Images &amp; videos</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/mediavideos">    Go to     <strong>Images &amp; videos</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/aboutus/mediadocuments" data-drupal-link-system-path="node/474231">Documents &amp; reports</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/aboutus/mediadocuments">    Go to     <strong>Documents &amp; reports</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>


    </div>
  </div>
  
            <div class="field field--name-field-inside field--type-block-field field--label-hidden field--item"><nav role="navigation" aria-labelledby="-menu" data-block-plugin-id="system_menu_block:header-persistent-submenu">
            
  <h2 class="visually-hidden" id="-menu">Header persistent submenu</h2>
  

        
<ul class="menu menu-level-0">
      
    <li class="menu-item">
                    <a href="/info/contactus/contactus" class="inside-menu-link">
          <div class="inside-menu-title">Contact us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-contact-yellow_0.png" width="45" height="45" alt="Contact us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/info/sign-me-up" class="inside-menu-link">
          <div class="inside-menu-title">Sign up</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-signup-green_0.png" width="45" height="45" alt="Sign up" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/aboutus/businessprinciples/report-your-concerns" class="inside-menu-link">
          <div class="inside-menu-title">Tell us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-tellus-teal_0.png" width="45" height="45" alt="Tell us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
  </ul>

  </nav>
</div>
      
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/stories#/category/featured-stories/1" data-drupal-link-system-path="node/477871">Our stories</a>
    
    
          
<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
  <div class="mega-menu-wrap">
    <div class="mega-menu-container mega-menu-container--has-content">
      <a href="#" class="close-menu-tab close-menu-tab--desktop" alt="Close Menu">
        <img src="/themes/custom/da_vinci_code/images/icon-x.png" alt="Close Menu Button">
      </a>

      <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
        Back
      </a>

            <div class="main-menu-content">
                  <div class="main-menu-content__image">
            
            <div class="field field--name-field-menu-featured-image field--type-image field--label-hidden field--item">  <img src="/sites/default/files/styles/navigation_featured_image/public/2020-06/our-stories-featured.jpg?itok=Kqsa8pFe" width="500" height="190" alt="Girl giving high five" typeof="foaf:Image" class="img-responsive" />


</div>
      
          </div>
        
              </div>
      
      
      
            <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
        <a href="/stories#/category/featured-stories/1">        Go to         <strong>Our stories</strong>
      
      </a>
      </div>
      
      

    </div>
  </div>
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv" data-drupal-link-system-path="node/475821">Our impact</a>
    
    
          
<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
  <div class="mega-menu-wrap">
    <div class="mega-menu-container mega-menu-container--has-content">
      <a href="#" class="close-menu-tab close-menu-tab--desktop" alt="Close Menu">
        <img src="/themes/custom/da_vinci_code/images/icon-x.png" alt="Close Menu Button">
      </a>

      <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
        Back
      </a>

            <div class="main-menu-content">
                  <div class="main-menu-content__image">
            
            <div class="field field--name-field-menu-featured-image field--type-image field--label-hidden field--item">  <img src="/sites/default/files/styles/navigation_featured_image/public/2020-06/our-impact-featured-2.jpg?itok=4Eqc8v0_" width="500" height="190" alt="Girls drinking Nesquik" typeof="foaf:Image" class="img-responsive" />


</div>
      
          </div>
        
                  <div class="main-menu-content__body">
            
            <div class="field field--name-field-menu field--type-text-long field--label-hidden field--item"><p>Nestlé touches the lives of billions of people every day: the farmers who grow our ingredients, our consumers, and the communities where we live and work.</p>
</div>
      
          </div>
              </div>
      
      
      
            <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
        <a href="/csv">        Go to         <strong>Our impact</strong>
      
      </a>
      </div>
      
      
<ul class="menu menu-level-1">
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/global-initiatives" data-drupal-link-system-path="node/476171">Our ambitions</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/global-initiatives">    Go to     <strong>Our ambitions</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/global-initiatives/healthier-kids" data-drupal-link-system-path="node/476101">Helping children live healthier lives</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/global-initiatives/healthier-kids">    Go to     <strong>Helping children live healthier lives</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/global-initiatives/healthier-kids/home" data-drupal-link-system-path="node/488191">Nestlé for Healthier Kids global initiative</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/global-initiatives/healthier-kids/home">    Go to     <strong>Nestlé for Healthier Kids global initiative</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/global-initiatives/global-youth-initiative" data-drupal-link-system-path="node/488196">Improving livelihoods in communities</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/global-initiatives/global-youth-initiative">    Go to     <strong>Improving livelihoods in communities</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/global-initiatives/home">Global youth initiative</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/global-initiatives/home">    Go to     <strong>Global youth initiative</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/global-initiatives/global-youth-initiative/alliance-for-youth" data-drupal-link-system-path="node/476131">Alliance for YOUth</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/global-initiatives/global-youth-initiative/alliance-for-youth">    Go to     <strong>Alliance for YOUth</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/global-initiatives/global-youth-initiative/gender-balance-women-empowerment" data-drupal-link-system-path="node/476146">Nestlé Gender Balance Acceleration Plan</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/global-initiatives/global-youth-initiative/gender-balance-women-empowerment">    Go to     <strong>Nestlé Gender Balance Acceleration Plan</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/global-initiatives/zero-environmental-impact" data-drupal-link-system-path="node/476161">Striving for zero environmental impact</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/global-initiatives/zero-environmental-impact">    Go to     <strong>Striving for zero environmental impact</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/global-initiatives/zero-environmental-impact/caring-for-water" data-drupal-link-system-path="node/476156">Caring for water global initiative</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/global-initiatives/zero-environmental-impact/caring-for-water">    Go to     <strong>Caring for water global initiative</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/global-initiatives/zero-environmental-impact/packaging-plastic-pollution" data-drupal-link-system-path="node/476166">Tackling plastic pollution</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/global-initiatives/zero-environmental-impact/packaging-plastic-pollution">    Go to     <strong>Tackling plastic pollution</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/climate-change" data-drupal-link-system-path="node/476436">Acting on climate change</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/climate-change">    Go to     <strong>Acting on climate change</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/impact" data-drupal-link-system-path="node/476511">Our commitments</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact">    Go to     <strong>Our commitments</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/impact/tastier-healthier" data-drupal-link-system-path="node/476391">Tastier and healthier food</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/tastier-healthier">    Go to     <strong>Tastier and healthier food</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/impact/tastier-healthier/nutritious-products-children" data-drupal-link-system-path="node/476406">Launching more nutritious products</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/tastier-healthier/nutritious-products-children">    Go to     <strong>Launching more nutritious products</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/tastier-healthier/sugar-salt-fat" data-drupal-link-system-path="node/476411">Reducing sugars, sodium and fat</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/tastier-healthier/sugar-salt-fat">    Go to     <strong>Reducing sugars, sodium and fat</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/tastier-healthier/whole-grains-vegetables" data-drupal-link-system-path="node/476416">Adding vegetables, fiber and whole grains</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/tastier-healthier/whole-grains-vegetables">    Go to     <strong>Adding vegetables, fiber and whole grains</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/tastier-healthier/natural-ingredients" data-drupal-link-system-path="node/476401">Simplifying ingredient lists</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/tastier-healthier/natural-ingredients">    Go to     <strong>Simplifying ingredient lists</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/tastier-healthier/micronutrient-fortification" data-drupal-link-system-path="node/476396">Micronutrient fortification</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/tastier-healthier/micronutrient-fortification">    Go to     <strong>Micronutrient fortification</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/impact/healthier-lives" data-drupal-link-system-path="node/476286">Healthier lives</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/healthier-lives">    Go to     <strong>Healthier lives</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/impact/healthier-lives/nutrition-information" data-drupal-link-system-path="node/476296">Providing nutritional information</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/healthier-lives/nutrition-information">    Go to     <strong>Providing nutritional information</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/healthier-lives/portion-guidance" data-drupal-link-system-path="node/476301">Offering portion guidance</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/healthier-lives/portion-guidance">    Go to     <strong>Offering portion guidance</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/healthier-lives/healthy-diet" data-drupal-link-system-path="node/476271">Marketing healthy choices</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/healthier-lives/healthy-diet">    Go to     <strong>Marketing healthy choices</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/healthier-lives/nutrition-education" data-drupal-link-system-path="node/476261">Nutrition education</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/healthier-lives/nutrition-education">    Go to     <strong>Nutrition education</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/healthier-lives/baby-milk" data-drupal-link-system-path="node/476306">Supporting breastfeeding</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/healthier-lives/baby-milk">    Go to     <strong>Supporting breastfeeding</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/healthier-lives/healthy-hydration" data-drupal-link-system-path="node/476281">Encouraging healthy hydration</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/healthier-lives/healthy-hydration">    Go to     <strong>Encouraging healthy hydration</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/healthier-lives/healthy-food-environments" data-drupal-link-system-path="node/476276">Health-promoting food environments</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/healthier-lives/healthy-food-environments">    Go to     <strong>Health-promoting food environments</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/impact/nutrition-knowledge" data-drupal-link-system-path="node/476321">Nutrition knowledge</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/nutrition-knowledge">    Go to     <strong>Nutrition knowledge</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/impact/nutrition-knowledge/nutrition-knowledge" data-drupal-link-system-path="node/476326">Sharing nutrition knowledge throughout life</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/nutrition-knowledge/nutrition-knowledge">    Go to     <strong>Sharing nutrition knowledge throughout life</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/nutrition-knowledge/biomedical-innovation" data-drupal-link-system-path="node/476316">Enhancing biomedical science</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/nutrition-knowledge/biomedical-innovation">    Go to     <strong>Enhancing biomedical science</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/impact/rural-livelihoods" data-drupal-link-system-path="node/476356">Rural livelihoods</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/rural-livelihoods">    Go to     <strong>Rural livelihoods</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/impact/rural-livelihoods/farm-economics" data-drupal-link-system-path="node/476341">Delivering impact through Farmer Connect</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/rural-livelihoods/farm-economics">    Go to     <strong>Delivering impact through Farmer Connect</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/rural-livelihoods/farm-nutrition" data-drupal-link-system-path="node/476346">Improving farmers’ diets</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/rural-livelihoods/farm-nutrition">    Go to     <strong>Improving farmers’ diets</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/impact/respecting-human-rights" data-drupal-link-system-path="node/476456">Human rights</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/respecting-human-rights">    Go to     <strong>Human rights</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/impact/respecting-human-rights/human-rights-impacts" data-drupal-link-system-path="node/476461">Assess and address human rights impacts</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/respecting-human-rights/human-rights-impacts">    Go to     <strong>Assess and address human rights impacts</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/respecting-human-rights/salient-human-rights-issues" data-drupal-link-system-path="node/476471">Our salient human rights issues</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/respecting-human-rights/salient-human-rights-issues">    Go to     <strong>Our salient human rights issues</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/respecting-human-rights/workers-livelihoods" data-drupal-link-system-path="node/476476">Protecting children and workers</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/respecting-human-rights/workers-livelihoods">    Go to     <strong>Protecting children and workers</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/respecting-human-rights/ethical-conduct" data-drupal-link-system-path="node/476446">Our culture of integrity </a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/respecting-human-rights/ethical-conduct">    Go to     <strong>Our culture of integrity </strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/respecting-human-rights/grievance-mechanisms" data-drupal-link-system-path="node/476451">Grievance mechanisms and remediation</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/respecting-human-rights/grievance-mechanisms">    Go to     <strong>Grievance mechanisms and remediation</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/impact/employment-diversity" data-drupal-link-system-path="node/476186">Employment &amp; diversity</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/employment-diversity">    Go to     <strong>Employment &amp; diversity</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/impact/employment-diversity/engaging-with-our-people" data-drupal-link-system-path="node/476176">Engaging with our people</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/employment-diversity/engaging-with-our-people">    Go to     <strong>Engaging with our people</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/employment-diversity/youth-employment" data-drupal-link-system-path="node/476196">Opportunities for young people</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/employment-diversity/youth-employment">    Go to     <strong>Opportunities for young people</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/employment-diversity/gender-balance" data-drupal-link-system-path="node/476201">Empowering women</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/employment-diversity/gender-balance">    Go to     <strong>Empowering women</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/employment-diversity/healthy-workplaces" data-drupal-link-system-path="node/476181">Workplace safety and health</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/employment-diversity/healthy-workplaces">    Go to     <strong>Workplace safety and health</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/impact/water" data-drupal-link-system-path="node/476486">Caring for water</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/water">    Go to     <strong>Caring for water</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/impact/water/water-efficiency" data-drupal-link-system-path="node/476501">Improving water efficiency</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/water/water-efficiency">    Go to     <strong>Improving water efficiency</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/water/policy-stewardship" data-drupal-link-system-path="node/476491">Water stewardship advocacy</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/water/policy-stewardship">    Go to     <strong>Water stewardship advocacy</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/water/supplier-engagement" data-drupal-link-system-path="node/476496">Engaging with our suppliers</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/water/supplier-engagement">    Go to     <strong>Engaging with our suppliers</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/water/access-conservation" data-drupal-link-system-path="node/476481">Access to water, sanitation and hygiene</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/water/access-conservation">    Go to     <strong>Access to water, sanitation and hygiene</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/water/water-treatment" data-drupal-link-system-path="node/476506">Effective water treatment</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/water/water-treatment">    Go to     <strong>Effective water treatment</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/impact/climate-change" data-drupal-link-system-path="node/476436">Climate change</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/climate-change">    Go to     <strong>Climate change</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/impact/climate-change/climate-change" data-drupal-link-system-path="node/476431">Climate change leadership</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/climate-change/climate-change">    Go to     <strong>Climate change leadership</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/climate-change/long-term-engagement" data-drupal-link-system-path="node/476441">Proactive engagement on climate change</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/climate-change/long-term-engagement">    Go to     <strong>Proactive engagement on climate change</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/impact/environment" data-drupal-link-system-path="node/476206">Environment</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/environment">    Go to     <strong>Environment</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/impact/environment/packaging" data-drupal-link-system-path="node/476226">Improving packaging performance</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/environment/packaging">    Go to     <strong>Improving packaging performance</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/environment/waste-and-recovery" data-drupal-link-system-path="node/476231">Reducing food loss and waste</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/environment/waste-and-recovery">    Go to     <strong>Reducing food loss and waste</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/environment/information-dialogue" data-drupal-link-system-path="node/476211">Promoting sustainable consumption</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/environment/information-dialogue">    Go to     <strong>Promoting sustainable consumption</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/impact/environment/natural-capital" data-drupal-link-system-path="node/476216">Protecting natural capital</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/environment/natural-capital">    Go to     <strong>Protecting natural capital</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/raw-materials" data-drupal-link-system-path="node/476581">Responsible sourcing</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials">    Go to     <strong>Responsible sourcing</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/csv/impact/rural-livelihoods/responsible-sourcing" data-drupal-link-system-path="node/476371">How we implement responsible sourcing</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/impact/rural-livelihoods/responsible-sourcing">    Go to     <strong>How we implement responsible sourcing</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/responsible-sourcing-raw-materials" data-drupal-link-system-path="node/565336">Our raw materials</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/responsible-sourcing-raw-materials">    Go to     <strong>Our raw materials</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/raw-materials/coffee" data-drupal-link-system-path="node/476546">Coffee</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/coffee">    Go to     <strong>Coffee</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/nestle-cocoa-plan" data-drupal-link-system-path="node/476526">Cocoa</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/nestle-cocoa-plan">    Go to     <strong>Cocoa</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/dairy" data-drupal-link-system-path="node/476556">Dairy</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/dairy">    Go to     <strong>Dairy</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/palm-oil" data-drupal-link-system-path="node/476656">Palm oil</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/palm-oil">    Go to     <strong>Palm oil</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/pulp-paper" data-drupal-link-system-path="node/476611">Pulp &amp; paper</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/pulp-paper">    Go to     <strong>Pulp &amp; paper</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/soya" data-drupal-link-system-path="node/476621">Soya</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/soya">    Go to     <strong>Soya</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/sugar" data-drupal-link-system-path="node/476636">Sugar</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/sugar">    Go to     <strong>Sugar</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/cereals" data-drupal-link-system-path="node/476536">Cereals</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/cereals">    Go to     <strong>Cereals</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/hazelnuts" data-drupal-link-system-path="node/476576">Hazelnuts</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/hazelnuts">    Go to     <strong>Hazelnuts</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/vanilla" data-drupal-link-system-path="node/476646">Vanilla</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/vanilla">    Go to     <strong>Vanilla</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/meat-poultry-eggs" data-drupal-link-system-path="node/476591">Meat, poultry &amp; eggs</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/meat-poultry-eggs">    Go to     <strong>Meat, poultry &amp; eggs</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/fish-seafood" data-drupal-link-system-path="node/476566">Fish &amp; seafood</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/fish-seafood">    Go to     <strong>Fish &amp; seafood</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/vegetables" data-drupal-link-system-path="node/476651">Vegetables</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/vegetables">    Go to     <strong>Vegetables</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/spices" data-drupal-link-system-path="node/476626">Spices</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/spices">    Go to     <strong>Spices</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/raw-materials/coconut" data-drupal-link-system-path="node/565331">Coconut</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/raw-materials/coconut">    Go to     <strong>Coconut</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/performance" data-drupal-link-system-path="node/475876">Performance &amp; reporting</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/performance">    Go to     <strong>Performance &amp; reporting</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/csv/performance/kpi-summary" data-drupal-link-system-path="node/475831">Progress at a glance</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/performance/kpi-summary">    Go to     <strong>Progress at a glance</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/performance/external-assessments" data-drupal-link-system-path="node/475866">External recognition</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/performance/external-assessments">    Go to     <strong>External recognition</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/performance/compliance-record" data-drupal-link-system-path="node/475856">Breast-milk substitute marketing: compliance record</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/performance/compliance-record">    Go to     <strong>Breast-milk substitute marketing: compliance record</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/performance/assurance" data-drupal-link-system-path="node/475851">Independent assurance</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/performance/assurance">    Go to     <strong>Independent assurance</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/performance/downloads" data-drupal-link-system-path="node/475846">Downloads archive</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/performance/downloads">    Go to     <strong>Downloads archive</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/what-is-csv" data-drupal-link-system-path="node/475931">Our approach</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/what-is-csv">    Go to     <strong>Our approach</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/csv/what-is-csv/ethical-business" data-drupal-link-system-path="node/475986">Ethical business</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/what-is-csv/ethical-business">    Go to     <strong>Ethical business</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/what-is-csv/taxation" data-drupal-link-system-path="node/475946">Taxation</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/what-is-csv/taxation">    Go to     <strong>Taxation</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/what-is-csv/governance" data-drupal-link-system-path="node/475891">Governance &amp; policies</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/what-is-csv/governance">    Go to     <strong>Governance &amp; policies</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/what-is-csv/materiality" data-drupal-link-system-path="node/475936">Materiality</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/what-is-csv/materiality">    Go to     <strong>Materiality</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/what-is-csv/stakeholder-engagement" data-drupal-link-system-path="node/475976">Stakeholder engagement</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/what-is-csv/stakeholder-engagement">    Go to     <strong>Stakeholder engagement</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/csv/what-is-csv/partnerships-alliances" data-drupal-link-system-path="node/476041">Partnerships &amp; collective action</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/what-is-csv/partnerships-alliances">    Go to     <strong>Partnerships &amp; collective action</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/csv/what-is-csv/partnerships-alliances/united-nations" data-drupal-link-system-path="node/476051">UN Global Compact</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/what-is-csv/partnerships-alliances/united-nations">    Go to     <strong>UN Global Compact</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/what-is-csv/transparency-advocacy-lobbying-industry-associations-organizations" data-drupal-link-system-path="node/566686">Advocacy &amp; industry associations</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/what-is-csv/transparency-advocacy-lobbying-industry-associations-organizations">    Go to     <strong>Advocacy &amp; industry associations</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/what-is-csv/creating-shared-value-forum" data-drupal-link-system-path="node/475926">Creating Shared Value Forum</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/what-is-csv/creating-shared-value-forum">    Go to     <strong>Creating Shared Value Forum</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/what-is-csv/nestleprize" data-drupal-link-system-path="node/476021">Supporting innovative ideas</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/what-is-csv/nestleprize">    Go to     <strong>Supporting innovative ideas</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/csv/what-is-csv/contribution-global-goals" data-drupal-link-system-path="node/475921">Contributing to global goals</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/csv/what-is-csv/contribution-global-goals">    Go to     <strong>Contributing to global goals</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
</ul>


    </div>
  </div>
  
            <div class="field field--name-field-inside field--type-block-field field--label-hidden field--item"><nav role="navigation" aria-labelledby="-menu" data-block-plugin-id="system_menu_block:header-persistent-submenu">
            
  <h2 class="visually-hidden" id="-menu">Header persistent submenu</h2>
  

        
<ul class="menu menu-level-0">
      
    <li class="menu-item">
                    <a href="/info/contactus/contactus" class="inside-menu-link">
          <div class="inside-menu-title">Contact us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-contact-yellow_0.png" width="45" height="45" alt="Contact us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/info/sign-me-up" class="inside-menu-link">
          <div class="inside-menu-title">Sign up</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-signup-green_0.png" width="45" height="45" alt="Sign up" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/aboutus/businessprinciples/report-your-concerns" class="inside-menu-link">
          <div class="inside-menu-title">Tell us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-tellus-teal_0.png" width="45" height="45" alt="Tell us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
  </ul>

  </nav>
</div>
      
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/brands" data-drupal-link-system-path="node/475391">Brands</a>
    
    
          
<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
  <div class="mega-menu-wrap">
    <div class="mega-menu-container mega-menu-container--has-content">
      <a href="#" class="close-menu-tab close-menu-tab--desktop" alt="Close Menu">
        <img src="/themes/custom/da_vinci_code/images/icon-x.png" alt="Close Menu Button">
      </a>

      <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
        Back
      </a>

            <div class="main-menu-content">
                  <div class="main-menu-content__image">
            
            <div class="field field--name-field-menu-featured-image field--type-image field--label-hidden field--item">  <img src="/sites/default/files/styles/navigation_featured_image/public/2020-06/brands-featured.jpg?itok=mRi35irv" width="500" height="190" alt="Smiling girl" typeof="foaf:Image" class="img-responsive" />


</div>
      
          </div>
        
                  <div class="main-menu-content__body">
            
            <div class="field field--name-field-menu field--type-text-long field--label-hidden field--item"><p>Learn about Nestlé’s brands and what we’re doing to make our products tastier and healthier.</p>
</div>
      
          </div>
              </div>
      
      
      
            <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
        <a href="/brands">        Go to         <strong>Brands</strong>
      
      </a>
      </div>
      
      
<ul class="menu menu-level-1">
  
  <li class="menu-item">
          <a href="/brands/baby-foods" data-drupal-link-system-path="taxonomy/term/8581">Baby foods</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/baby-foods">    Go to     <strong>Baby foods</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/brands/bottledwater" data-drupal-link-system-path="taxonomy/term/8621">Bottled water</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/bottledwater">    Go to     <strong>Bottled water</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/brands/cereals" data-drupal-link-system-path="taxonomy/term/8586">Cereals</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/cereals">    Go to     <strong>Cereals</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/brands/chocolateconfectionery" data-drupal-link-system-path="taxonomy/term/8626">Chocolate &amp; confectionery</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/chocolateconfectionery">    Go to     <strong>Chocolate &amp; confectionery</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/brands/coffee" data-drupal-link-system-path="taxonomy/term/8591">Coffee</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/coffee">    Go to     <strong>Coffee</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/brands/culinary-chilled-frozen" data-drupal-link-system-path="taxonomy/term/8631">Culinary, chilled &amp; frozen food</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/culinary-chilled-frozen">    Go to     <strong>Culinary, chilled &amp; frozen food</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/brands/dairy" data-drupal-link-system-path="taxonomy/term/8596">Dairy</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/dairy">    Go to     <strong>Dairy</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/brands/drinks" data-drupal-link-system-path="taxonomy/term/8601">Drinks</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/drinks">    Go to     <strong>Drinks</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/brands/foodservice" data-drupal-link-system-path="taxonomy/term/8636">Food service</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/foodservice">    Go to     <strong>Food service</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/brands/healthcarenutrition" data-drupal-link-system-path="taxonomy/term/8606">Healthcare nutrition</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/healthcarenutrition">    Go to     <strong>Healthcare nutrition</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/brands/ice-cream" data-drupal-link-system-path="taxonomy/term/8641">Ice cream</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/ice-cream">    Go to     <strong>Ice cream</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/brands/petcare" data-drupal-link-system-path="taxonomy/term/8616">Petcare</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/petcare">    Go to     <strong>Petcare</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/brands/recipes" data-drupal-link-system-path="taxonomy/term/8611">Recipes</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/brands/recipes">    Go to     <strong>Recipes</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>


    </div>
  </div>
  
            <div class="field field--name-field-inside field--type-block-field field--label-hidden field--item"><nav role="navigation" aria-labelledby="-menu" data-block-plugin-id="system_menu_block:header-persistent-submenu">
            
  <h2 class="visually-hidden" id="-menu">Header persistent submenu</h2>
  

        
<ul class="menu menu-level-0">
      
    <li class="menu-item">
                    <a href="/info/contactus/contactus" class="inside-menu-link">
          <div class="inside-menu-title">Contact us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-contact-yellow_0.png" width="45" height="45" alt="Contact us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/info/sign-me-up" class="inside-menu-link">
          <div class="inside-menu-title">Sign up</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-signup-green_0.png" width="45" height="45" alt="Sign up" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/aboutus/businessprinciples/report-your-concerns" class="inside-menu-link">
          <div class="inside-menu-title">Tell us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-tellus-teal_0.png" width="45" height="45" alt="Tell us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
  </ul>

  </nav>
</div>
      
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/randd" data-drupal-link-system-path="node/480381">Innovation</a>
    
    
          
<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
  <div class="mega-menu-wrap">
    <div class="mega-menu-container mega-menu-container--has-content">
      <a href="#" class="close-menu-tab close-menu-tab--desktop" alt="Close Menu">
        <img src="/themes/custom/da_vinci_code/images/icon-x.png" alt="Close Menu Button">
      </a>

      <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
        Back
      </a>

            <div class="main-menu-content">
                  <div class="main-menu-content__image">
            
            <div class="field field--name-field-menu-featured-image field--type-image field--label-hidden field--item">  <img src="/sites/default/files/styles/navigation_featured_image/public/2020-08/garden-gourmet-sensational-burger-feed.jpg?itok=0ATp2rf1" width="500" height="190" alt="Burger" typeof="foaf:Image" class="img-responsive" />


</div>
      
          </div>
        
                  <div class="main-menu-content__body">
            
            <div class="field field--name-field-menu field--type-text-long field--label-hidden field--item"><p>Innovation is at the heart of Nestlé. Find out about our unique R&amp;D capabilities and long track record of innovation.</p>
</div>
      
          </div>
              </div>
      
      
      
            <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
        <a href="/randd">        Go to         <strong>Innovation</strong>
      
      </a>
      </div>
      
      
<ul class="menu menu-level-1">
  
  <li class="menu-item">
          <a href="/randd/nutrition-health" data-drupal-link-system-path="node/480321">Nutrition and health</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/randd/nutrition-health">    Go to     <strong>Nutrition and health</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/randd/trend-based-innovation" data-drupal-link-system-path="node/566981">Trend-based innovation</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/randd/trend-based-innovation">    Go to     <strong>Trend-based innovation</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/randd/speed-market-innovation" data-drupal-link-system-path="node/566986">Speed to market</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/randd/speed-market-innovation">    Go to     <strong>Speed to market</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/randd/sustainability" data-drupal-link-system-path="node/566991">Sustainability</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/randd/sustainability">    Go to     <strong>Sustainability</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/randd/quality-safety">Food safety and analytics</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/randd/quality-safety">    Go to     <strong>Food safety and analytics</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/randd/news#itemPerPage=20" data-drupal-link-system-path="node/480371">Innovation news</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/randd/news#itemPerPage=20">    Go to     <strong>Innovation news</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/randd/research-development-organization" data-drupal-link-system-path="node/480351">Our R&amp;D organization</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/randd/research-development-organization">    Go to     <strong>Our R&amp;D organization</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/randd/partnerships" data-drupal-link-system-path="node/480356">Partnerships</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/randd/partnerships">    Go to     <strong>Partnerships</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/randd/scientific-advisory-board" data-drupal-link-system-path="node/566976">Scientific Advisory Board</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/randd/scientific-advisory-board">    Go to     <strong>Scientific Advisory Board</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/randd/open-innovation" data-drupal-link-system-path="node/480376">Open innovation</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/randd/open-innovation">    Go to     <strong>Open innovation</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>


    </div>
  </div>
  
            <div class="field field--name-field-inside field--type-block-field field--label-hidden field--item"><nav role="navigation" aria-labelledby="-menu" data-block-plugin-id="system_menu_block:header-persistent-submenu">
            
  <h2 class="visually-hidden" id="-menu">Header persistent submenu</h2>
  

        
<ul class="menu menu-level-0">
      
    <li class="menu-item">
                    <a href="/info/contactus/contactus" class="inside-menu-link">
          <div class="inside-menu-title">Contact us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-contact-yellow_0.png" width="45" height="45" alt="Contact us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/info/sign-me-up" class="inside-menu-link">
          <div class="inside-menu-title">Sign up</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-signup-green_0.png" width="45" height="45" alt="Sign up" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/aboutus/businessprinciples/report-your-concerns" class="inside-menu-link">
          <div class="inside-menu-title">Tell us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-tellus-teal_0.png" width="45" height="45" alt="Tell us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
  </ul>

  </nav>
</div>
      
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/ask-nestle" data-drupal-link-system-path="node/479841">Ask Nestlé</a>
    
    
          
<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
  <div class="mega-menu-wrap">
    <div class="mega-menu-container mega-menu-container--has-content">
      <a href="#" class="close-menu-tab close-menu-tab--desktop" alt="Close Menu">
        <img src="/themes/custom/da_vinci_code/images/icon-x.png" alt="Close Menu Button">
      </a>

      <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
        Back
      </a>

            <div class="main-menu-content">
                  <div class="main-menu-content__image">
            
            <div class="field field--name-field-menu-featured-image field--type-image field--label-hidden field--item">  <img src="/sites/default/files/styles/navigation_featured_image/public/2020-06/ask-nestle-featured.jpg?itok=hIhQU5mj" width="500" height="190" alt="Curious toddler" typeof="foaf:Image" class="img-responsive" />


</div>
      
          </div>
        
                  <div class="main-menu-content__body">
            
            <div class="field field--name-field-menu field--type-text-long field--label-hidden field--item"><p>A question about Nestlé’s brands, policies, or products? Your answers can be found here.</p>
</div>
      
          </div>
              </div>
      
      
      
            <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
        <a href="/ask-nestle">        Go to         <strong>Ask Nestlé</strong>
      
      </a>
      </div>
      
      
<ul class="menu menu-level-1">
  
  <li class="menu-item">
          <a href="/ask-nestle/environment" data-drupal-link-system-path="node/479496">Environment</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/ask-nestle/environment">    Go to     <strong>Environment</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/ask-nestle/health-nutrition" data-drupal-link-system-path="node/479566">Health and nutrition</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/ask-nestle/health-nutrition">    Go to     <strong>Health and nutrition</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/ask-nestle/human-rights" data-drupal-link-system-path="node/479676">Human rights</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/ask-nestle/human-rights">    Go to     <strong>Human rights</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/ask-nestle/water" data-drupal-link-system-path="node/479916">Water</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/ask-nestle/water">    Go to     <strong>Water</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/ask-nestle/our-company" data-drupal-link-system-path="node/479756">Our company</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/ask-nestle/our-company">    Go to     <strong>Our company</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/ask-nestle/products-brands" data-drupal-link-system-path="node/479851">Products and brands</a>
    
    
          

<div class="menu_link_content menu-link-contentmain view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/ask-nestle/products-brands">    Go to     <strong>Products and brands</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>


    </div>
  </div>
  
            <div class="field field--name-field-inside field--type-block-field field--label-hidden field--item"><nav role="navigation" aria-labelledby="-menu" data-block-plugin-id="system_menu_block:header-persistent-submenu">
            
  <h2 class="visually-hidden" id="-menu">Header persistent submenu</h2>
  

        
<ul class="menu menu-level-0">
      
    <li class="menu-item">
                    <a href="/info/contactus/contactus" class="inside-menu-link">
          <div class="inside-menu-title">Contact us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-contact-yellow_0.png" width="45" height="45" alt="Contact us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/info/sign-me-up" class="inside-menu-link">
          <div class="inside-menu-title">Sign up</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-signup-green_0.png" width="45" height="45" alt="Sign up" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/aboutus/businessprinciples/report-your-concerns" class="inside-menu-link">
          <div class="inside-menu-title">Tell us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-tellus-teal_0.png" width="45" height="45" alt="Tell us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
  </ul>

  </nav>
</div>
      
</div>

    
  </li>
</ul>

  </nav>
<nav role="navigation" aria-labelledby="block-da-vinci-code-secondarymenu-menu" id="block-da-vinci-code-secondarymenu" data-block-plugin-id="system_menu_block:secondary-menu">
            
  <h2 class="visually-hidden" id="block-da-vinci-code-secondarymenu-menu">Secondary menu</h2>
  

        
<ul class="menu menu-level-0">
  
  <li class="menu-item menu-item--expanded">
          <a href="/jobs" data-drupal-link-system-path="node/1891">Careers</a>
    
    
          


<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
  <div class="mega-menu-wrap">
    <div class="mega-menu-container mega-menu-container--has-content">
      <a href="#" class="close-menu-tab close-menu-tab--desktop" alt="Close Menu">
        <img src="/themes/custom/da_vinci_code/images/icon-x.png" alt="Close Menu Button">
      </a>

      <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
        Back
      </a>

            <div class="main-menu-content">
                  <div class="main-menu-content__image">
            
            <div class="field field--name-field-menu-featured-image field--type-image field--label-hidden field--item">  <img src="/sites/default/files/styles/navigation_featured_image/public/2020-06/careers-featured-1.jpg?h=ca7fa25a&amp;itok=mYx5jeNW" width="500" height="190" alt="Meeting" typeof="foaf:Image" class="img-responsive" />


</div>
      
          </div>
        
                  <div class="main-menu-content__body">
            
            <div class="field field--name-field-menu field--type-text-long field--label-hidden field--item"><p>Whether you have years of work experience or you just graduated, there’s a job opportunity for you at Nestlé. Search for jobs here.</p>
</div>
      
          </div>
              </div>
      
      
      
            <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
        <a href="/jobs">        Go to         <strong>Careers</strong>
      
      </a>
      </div>
      
      
<ul class="menu menu-level-1">
  
  <li class="menu-item menu-item--collapsed">
          <a href="/jobs/search-jobs" data-drupal-link-system-path="jobs/search-jobs">Search jobs</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/jobs/search-jobs">    Go to     <strong>Search jobs</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/life-at-nestle" data-drupal-link-system-path="node/565801">Life at Nestlé</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/jobs/life-at-nestle">    Go to     <strong>Life at Nestlé</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/jobs/career-areas" data-drupal-link-system-path="node/1886">Career areas</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/jobs/career-areas">    Go to     <strong>Career area</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/jobs/career-area/administrative" data-drupal-link-system-path="taxonomy/term/4371">Administrative</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/career-area/communications" data-drupal-link-system-path="taxonomy/term/4421">Communications</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/career-area/engineering" data-drupal-link-system-path="taxonomy/term/4396">Engineering</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/career-area/finance" data-drupal-link-system-path="taxonomy/term/4366">Finance</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/career-area/human-resources" data-drupal-link-system-path="taxonomy/term/4376">Human Resources</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/career-area/it" data-drupal-link-system-path="taxonomy/term/4401">Information Technology</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/career-area/legal" data-drupal-link-system-path="taxonomy/term/4706">Legal</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/career-area/internships" data-drupal-link-system-path="taxonomy/term/4711">Internships</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/career-area/marketing" data-drupal-link-system-path="taxonomy/term/4351">Marketing</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/career-area/research-development" data-drupal-link-system-path="taxonomy/term/4716">Research &amp; Development</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/career-area/technical-production" data-drupal-link-system-path="taxonomy/term/4431">Technical &amp; Production</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/career-area/sales" data-drupal-link-system-path="taxonomy/term/4356">Sales</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/career-area/supply-chain-procurement" data-drupal-link-system-path="taxonomy/term/4426">Supply Chain &amp; Procurement</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/locations" data-drupal-link-system-path="node/565811">Locations</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/jobs/locations">    Go to     <strong>Locations</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/faqs" data-drupal-link-system-path="node/2156">FAQs</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/jobs/faqs">    Go to     <strong>FAQs</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/follow-us" data-drupal-link-system-path="node/565716">Follow us</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/jobs/follow-us">    Go to     <strong>Follow us</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/jobs/diversity-inclusion" data-drupal-link-system-path="node/2786">Diversity &amp; Inclusion</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/jobs/diversity-inclusion">    Go to     <strong>Diversity &amp; Inclusion</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>


    </div>
  </div>
  
            <div class="field field--name-field-inside field--type-block-field field--label-hidden field--item"><nav role="navigation" aria-labelledby="-menu" data-block-plugin-id="system_menu_block:header-persistent-submenu">
            
  <h2 class="visually-hidden" id="-menu">Header persistent submenu</h2>
  

        
<ul class="menu menu-level-0">
      
    <li class="menu-item">
                    <a href="/info/contactus/contactus" class="inside-menu-link">
          <div class="inside-menu-title">Contact us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-contact-yellow_0.png" width="45" height="45" alt="Contact us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/info/sign-me-up" class="inside-menu-link">
          <div class="inside-menu-title">Sign up</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-signup-green_0.png" width="45" height="45" alt="Sign up" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/aboutus/businessprinciples/report-your-concerns" class="inside-menu-link">
          <div class="inside-menu-title">Tell us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-tellus-teal_0.png" width="45" height="45" alt="Tell us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
  </ul>

  </nav>
</div>
      
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/investors" data-drupal-link-system-path="node/477361">Investors</a>
    
    
          


<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
  <div class="mega-menu-wrap">
    <div class="mega-menu-container mega-menu-container--has-content">
      <a href="#" class="close-menu-tab close-menu-tab--desktop" alt="Close Menu">
        <img src="/themes/custom/da_vinci_code/images/icon-x.png" alt="Close Menu Button">
      </a>

      <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
        Back
      </a>

            <div class="main-menu-content">
                  <div class="main-menu-content__image">
            
            <div class="field field--name-field-menu-featured-image field--type-image field--label-hidden field--item">  <img src="/sites/default/files/styles/navigation_featured_image/public/2020-06/investors-featured-2.jpg?itok=ZvUVm3xm" width="500" height="190" alt="Nestlé Headquarters" typeof="foaf:Image" class="img-responsive" />


</div>
      
          </div>
        
                  <div class="main-menu-content__body">
            
            <div class="field field--name-field-menu field--type-text-long field--label-hidden field--item"><p>Learn about our strategy, sales and results or download our investor seminar presentations.</p>
</div>
      
          </div>
              </div>
      
      
      
            <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
        <a href="/investors">        Go to         <strong>Investors</strong>
      
      </a>
      </div>
      
      
<ul class="menu menu-level-1">
  
  <li class="menu-item menu-item--expanded">
          <a href="/investors/overview" data-drupal-link-system-path="node/477346">Understanding Nestlé</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/overview">    Go to     <strong>Understanding Nestlé</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/investors/overview/strategy" data-drupal-link-system-path="node/477351">Strategy</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/overview/strategy">    Go to     <strong>Strategy</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/overview/mergers-and-acquisitions" data-drupal-link-system-path="node/477316">Acquisitions &amp; disposals</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/overview/mergers-and-acquisitions">    Go to     <strong>Acquisitions &amp; disposals</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/creating-shareholder-value" data-drupal-link-system-path="node/477356">Why invest in Nestlé</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/creating-shareholder-value">    Go to     <strong>Why invest in Nestlé</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/investors/annual-report" data-drupal-link-system-path="node/477511">Annual Report</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/annual-report">    Go to     <strong>Annual Report</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/investors/annual-report/facts-figures" data-drupal-link-system-path="node/565496">Facts and figures</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/annual-report/facts-figures">    Go to     <strong>Facts and figures</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/annual-report/shareholder-letter" data-drupal-link-system-path="node/477546">Shareholder letter</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/annual-report/shareholder-letter">    Go to     <strong>Shareholder letter</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/annual-report/strategy" data-drupal-link-system-path="node/565501">Strategy</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/annual-report/strategy">    Go to     <strong>Strategy</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/annual-report/innovation" data-drupal-link-system-path="node/565506">Innovation</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/annual-report/innovation">    Go to     <strong>Innovation</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/annual-report/digitalization" data-drupal-link-system-path="node/565511">Digitalization</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/annual-report/digitalization">    Go to     <strong>Digitalization</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/annual-report/brands" data-drupal-link-system-path="node/565516">Brands</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/annual-report/brands">    Go to     <strong>Brands</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/annual-report/creating-shared-value" data-drupal-link-system-path="node/565521">Creating Shared Value</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/annual-report/creating-shared-value">    Go to     <strong>Creating Shared Value</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/results" data-drupal-link-system-path="node/477381">Results</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/results">    Go to     <strong>Results</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/publications" data-drupal-link-system-path="node/477771">Publications</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/publications">    Go to     <strong>Publications</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/pressreleases" data-drupal-link-system-path="node/477376">Press releases</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/pressreleases">    Go to     <strong>Press releases</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/presentations" data-drupal-link-system-path="node/477366">Presentations</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/presentations">    Go to     <strong>Presentations</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/investors/events" data-drupal-link-system-path="node/477141">Events</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/events">    Go to     <strong>Events</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/investors/events/nestle-investor-seminar" data-drupal-link-system-path="node/477106">Nestlé Investor Seminar</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/events/nestle-investor-seminar">    Go to     <strong>Nestlé Investor Seminar</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/analysts-consensus" data-drupal-link-system-path="node/476881">Analysts and consensus</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/analysts-consensus">    Go to     <strong>Analysts and consensus</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/investors/corporate-governance" data-drupal-link-system-path="node/477031">Corporate governance</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/corporate-governance">    Go to     <strong>Corporate governance</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/investors/corporate-governance/annualgeneralmeeting" data-drupal-link-system-path="node/477006">Annual General Meeting</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/corporate-governance/annualgeneralmeeting">    Go to     <strong>Annual General Meeting</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/corporate-governance/businessprinciples" data-drupal-link-system-path="node/476931">Business Principles </a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/corporate-governance/businessprinciples">    Go to     <strong>Business Principles </strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/corporate-governance/codeofbusinessconduct" data-drupal-link-system-path="node/477021">Code of business conduct</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/corporate-governance/codeofbusinessconduct">    Go to     <strong>Code of business conduct</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/corporate-governance/articles" data-drupal-link-system-path="node/477011">Articles of Association</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/corporate-governance/articles">    Go to     <strong>Articles of Association</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/corporate-governance/boardcommittees" data-drupal-link-system-path="node/477016">Board and committees </a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/corporate-governance/boardcommittees">    Go to     <strong>Board and committees </strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/corporate-governance/management/chairman-emeritus">Chairman Emeritus</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/corporate-governance/management/chairman-emeritus">    Go to     <strong>Chairman Emeritus</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/investors/corporate-governance/management" data-drupal-link-system-path="node/476921">Management </a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/corporate-governance/management">    Go to     <strong>Management </strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/investors/corporate-governance/management/boardofdirectors" data-drupal-link-system-path="node/476906">Board of Directors </a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/corporate-governance/management/boardofdirectors">    Go to     <strong>Board of Directors </strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/corporate-governance/management/executiveboard" data-drupal-link-system-path="node/476911">Executive Board</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/corporate-governance/management/executiveboard">    Go to     <strong>Executive Board</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/corporate-governance/management/financialtranstion" data-drupal-link-system-path="node/476916">Financial transactions</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/corporate-governance/management/financialtranstion">    Go to     <strong>Financial transactions</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/investors/sharesadrsbonds" data-drupal-link-system-path="node/477461">Shares &amp; ADRs</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/sharesadrsbonds">    Go to     <strong>Shares &amp; ADRs</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item menu-item--expanded">
          <a href="/investors/sharesadrsbonds/stockquotes" data-drupal-link-system-path="node/477491">Stock Quotes</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/sharesadrsbonds/stockquotes">    Go to     <strong>Stock Quotes</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-3">
  
  <li class="menu-item">
          <a href="/investors/sharesadrsbonds/stockquotes/graphs" data-drupal-link-system-path="node/477476">Graphs </a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/sharesadrsbonds/stockquotes/graphs">    Go to     <strong>Graphs </strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/sharesadrsbonds/stockquotes/investmentcalculator" data-drupal-link-system-path="node/477486">Investment calculator </a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/sharesadrsbonds/stockquotes/investmentcalculator">    Go to     <strong>Investment calculator </strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/sharesadrsbonds/stockquotes/disclosure-details" data-drupal-link-system-path="node/477471">Disclosure details</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-3 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/sharesadrsbonds/stockquotes/disclosure-details">    Go to     <strong>Disclosure details</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/sharesadrsbonds/share-buy-back" data-drupal-link-system-path="node/477456">Share buyback</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/sharesadrsbonds/share-buy-back">    Go to     <strong>Share buyback</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/sharesadrsbonds/dividends" data-drupal-link-system-path="node/477451">Dividends</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/sharesadrsbonds/dividends">    Go to     <strong>Dividends</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/bonds" data-drupal-link-system-path="node/515236">Debt investors</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/bonds">    Go to     <strong>Debt investors</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/investors/individual-shareholders" data-drupal-link-system-path="node/477606">Private investors</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/individual-shareholders">    Go to     <strong>Private investors</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/investors/individual-shareholders/overview" data-drupal-link-system-path="node/477581">Overview </a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/individual-shareholders/overview">    Go to     <strong>Overview </strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/individual-shareholders/strategy" data-drupal-link-system-path="node/477566">Strategy</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/individual-shareholders/strategy">    Go to     <strong>Strategy</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/individual-shareholders/annual-general-meeting" data-drupal-link-system-path="node/477601">Annual General Meeting</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/individual-shareholders/annual-general-meeting">    Go to     <strong>Annual General Meeting</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/individual-shareholders/dividends" data-drupal-link-system-path="node/477661">Dividends</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/individual-shareholders/dividends">    Go to     <strong>Dividends</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/individual-shareholders/questions-and-answers" data-drupal-link-system-path="node/477626">FAQs</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/individual-shareholders/questions-and-answers">    Go to     <strong>FAQs</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/investors/faqs" data-drupal-link-system-path="node/477151">Investor FAQs</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/faqs">    Go to     <strong>Investor FAQs</strong>
  
  </a>
  </div>
  
  
<ul class="menu menu-level-2">
  
  <li class="menu-item">
          <a href="/investors/faqs/ralstonpurinafaqs" data-drupal-link-system-path="node/477156">Ralston Purina shares Q+A</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/faqs/ralstonpurinafaqs">    Go to     <strong>Ralston Purina shares Q+A</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/faqs/adrs-faqs" data-drupal-link-system-path="node/477146">ADRs Q+A</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-2 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/faqs/adrs-faqs">    Go to     <strong>ADRs Q+A</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>

</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/investors/contacts" data-drupal-link-system-path="node/477556">Investor contacts</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/investors/contacts">    Go to     <strong>Investor contacts</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>


    </div>
  </div>
  
            <div class="field field--name-field-inside field--type-block-field field--label-hidden field--item"><nav role="navigation" aria-labelledby="-menu" data-block-plugin-id="system_menu_block:header-persistent-submenu">
            
  <h2 class="visually-hidden" id="-menu">Header persistent submenu</h2>
  

        
<ul class="menu menu-level-0">
      
    <li class="menu-item">
                    <a href="/info/contactus/contactus" class="inside-menu-link">
          <div class="inside-menu-title">Contact us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-contact-yellow_0.png" width="45" height="45" alt="Contact us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/info/sign-me-up" class="inside-menu-link">
          <div class="inside-menu-title">Sign up</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-signup-green_0.png" width="45" height="45" alt="Sign up" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/aboutus/businessprinciples/report-your-concerns" class="inside-menu-link">
          <div class="inside-menu-title">Tell us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-tellus-teal_0.png" width="45" height="45" alt="Tell us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
  </ul>

  </nav>
</div>
      
</div>

    
  </li>
  
  <li class="menu-item menu-item--expanded">
          <a href="/media" data-drupal-link-system-path="node/518056">Media</a>
    
    
          


<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
  <div class="mega-menu-wrap">
    <div class="mega-menu-container mega-menu-container--has-content">
      <a href="#" class="close-menu-tab close-menu-tab--desktop" alt="Close Menu">
        <img src="/themes/custom/da_vinci_code/images/icon-x.png" alt="Close Menu Button">
      </a>

      <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
        Back
      </a>

            <div class="main-menu-content">
                  <div class="main-menu-content__image">
            
            <div class="field field--name-field-menu-featured-image field--type-image field--label-hidden field--item">  <img src="/sites/default/files/styles/navigation_featured_image/public/2020-06/media-featured.jpg?h=ca7fa25a&amp;itok=qVWMRmye" width="500" height="190" alt="Smiling girl texting" typeof="foaf:Image" class="img-responsive" />


</div>
      
          </div>
        
                  <div class="main-menu-content__body">
            
            <div class="field field--name-field-menu field--type-text-long field--label-hidden field--item"><p>Come here for news, press releases, statements and other multi-media content about Nestlé.</p>
</div>
      
          </div>
              </div>
      
      
      
            <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
        <a href="/media">        Go to         <strong>Media</strong>
      
      </a>
      </div>
      
      
<ul class="menu menu-level-1">
  
  <li class="menu-item">
          <a href="/media/news-archive#agregator-search-results" data-drupal-link-system-path="node/472856">Search all news</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/media/news-archive#agregator-search-results">    Go to     <strong>Search all news</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/media/news" data-drupal-link-system-path="node/472771">Latest news</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/media/news">    Go to     <strong>Latest news</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/media/pressreleases" data-drupal-link-system-path="node/472906">Press releases</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/media/pressreleases">    Go to     <strong>Press releases</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/media/mediaeventscalendar" data-drupal-link-system-path="node/472586">Events</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/media/mediaeventscalendar">    Go to     <strong>Events</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/media/images-video" data-drupal-link-system-path="node/472761">Images</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/media/images-video">    Go to     <strong>Images</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/media/videos" data-drupal-link-system-path="node/472691">Videos</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/media/videos">    Go to     <strong>Videos</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/media/media-contacts" data-drupal-link-system-path="node/472936">Media contacts</a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/media/media-contacts">    Go to     <strong>Media contacts</strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
  
  <li class="menu-item">
          <a href="/media/social-media" data-drupal-link-system-path="node/472931">Social media </a>
    
    
          

<div class="menu_link_content menu-link-contentsecondary-menu view-mode-default menu-dropdown menu-dropdown-1 menu-type-default">
  <a href="#" class="close-menu-tab close-menu-tab--mobile" alt="Close Menu">
    Back
  </a>

  
  
    <div class="field field--name-field-goto-link field--type-link field--label-hidden field--item">
    <a href="/media/social-media">    Go to     <strong>Social media </strong>
  
  </a>
  </div>
  
  
</div>

    
  </li>
</ul>


    </div>
  </div>
  
            <div class="field field--name-field-inside field--type-block-field field--label-hidden field--item"><nav role="navigation" aria-labelledby="-menu" data-block-plugin-id="system_menu_block:header-persistent-submenu">
            
  <h2 class="visually-hidden" id="-menu">Header persistent submenu</h2>
  

        
<ul class="menu menu-level-0">
      
    <li class="menu-item">
                    <a href="/info/contactus/contactus" class="inside-menu-link">
          <div class="inside-menu-title">Contact us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-contact-yellow_0.png" width="45" height="45" alt="Contact us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/info/sign-me-up" class="inside-menu-link">
          <div class="inside-menu-title">Sign up</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-signup-green_0.png" width="45" height="45" alt="Sign up" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/aboutus/businessprinciples/report-your-concerns" class="inside-menu-link">
          <div class="inside-menu-title">Tell us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-tellus-teal_0.png" width="45" height="45" alt="Tell us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
  </ul>

  </nav>
</div>
      
</div>

    
  </li>
</ul>

  </nav>
<div class="block-view-container">
  <section class="views-exposed-form bef-exposed-form block block-views block-views-exposed-filter-blockglobal-search-global-search-block-all clearfix" data-bef-auto-submit-full-form="" data-drupal-selector="views-exposed-form-global-search-global-search-block-all" id="block-da-vinci-code-exposedformglobal-searchglobal-search-block-all-2" data-block-plugin-id="views_exposed_filter_block:global_search-global_search_block_all">
    
        

          <form action="/searchresults" method="get" id="views-exposed-form-global-search-global-search-block-all" accept-charset="UTF-8">
  <div class="form--inline form-inline clearfix">
  <div class="search-keyword-wrapper"><div class="form-item js-form-item form-type-textfield js-form-type-textfield form-item-keyword js-form-item-keyword form-group">
      <label for="edit-keyword" class="control-label">Search</label>
  
  
  <input data-bef-auto-submit-exclude="" autocomplete="off" data-drupal-selector="edit-keyword" class="form-text form-control" type="text" id="edit-keyword" name="keyword" value="" size="30" maxlength="128" placeholder="Search here" />

  
  
  </div>
<div data-drupal-selector="edit-actions" class="form-actions form-group js-form-wrapper form-wrapper" id="edit-actions"><button data-bef-auto-submit-click="" data-drupal-selector="edit-submit-global-search" class="button js-form-submit form-submit btn-primary btn icon-before" type="submit" id="edit-submit-global-search" value="Search" name=""><span class="icon glyphicon glyphicon-search" aria-hidden="true"></span>
Search</button></div>
</div><div class="search-filter-wrapper"><div class="display-none"><div class="form-item js-form-item form-type-select js-form-type-select form-item-filter-result js-form-item-filter-result form-group">
      <label for="edit-filter-result" class="control-label">Filter results by</label>
  
  
  <div class="select-wrapper"><select data-drupal-selector="edit-filter-result" class="form-select form-control" id="edit-filter-result" name="filter_result"><option
            value="all">All</option><option
            value="news">News</option><option
            value="documents">Documents</option><option
            value="images">Images</option><option
            value="videos">Videos</option></select></div>

  
  
  </div>
</div><fieldset data-drupal-selector="edit-sort-bef-combine" class="fieldgroup form-composite js-form-item form-item js-form-wrapper form-wrapper" id="edit-sort-bef-combine--wrapper">
      <legend>
    <span class="fieldset-legend"></span>
  </legend>
  <div class="fieldset-wrapper">
            <div id="edit-sort-bef-combine"><div data-drupal-selector="edit-sort-bef-combine" class="fieldgroup form-composite form-radios" id="edit-sort-bef-combine--wrapper">
                  <div class="form-item js-form-item form-type-radio js-form-type-radio form-item-sort-bef-combine js-form-item-sort-bef-combine radio">
  
  
  

      <label for="edit-sort-bef-combine-search-api-relevance-desc" class="control-label option"><input data-drupal-selector="edit-sort-bef-combine-search-api-relevance-desc" class="form-radio" type="radio" id="edit-sort-bef-combine-search-api-relevance-desc" name="sort_bef_combine" value="search_api_relevance DESC" checked="checked" /><div class="custom-box"></div>Most relevant</label>
  
  
  </div>

                    <div class="form-item js-form-item form-type-radio js-form-type-radio form-item-sort-bef-combine js-form-item-sort-bef-combine radio">
  
  
  

      <label for="edit-sort-bef-combine-changed-desc" class="control-label option"><input data-drupal-selector="edit-sort-bef-combine-changed-desc" class="form-radio" type="radio" id="edit-sort-bef-combine-changed-desc" name="sort_bef_combine" value="changed DESC" /><div class="custom-box"></div>Last updated</label>
  
  
  </div>

      </div>
</div>

          </div>
</fieldset>
</div>
</div>

</form>

      </section>
</div>
<nav role="navigation" aria-labelledby="block-da-vinci-code-headerpersistentsubmenu-menu" id="block-da-vinci-code-headerpersistentsubmenu" data-block-plugin-id="system_menu_block:header-persistent-submenu">
            
  <h2 class="visually-hidden" id="block-da-vinci-code-headerpersistentsubmenu-menu">Header persistent submenu</h2>
  

        
<ul class="menu menu-level-0">
      
    <li class="menu-item">
                    <a href="/info/contactus/contactus" class="inside-menu-link">
          <div class="inside-menu-title">Contact us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-contact-yellow_0.png" width="45" height="45" alt="Contact us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/info/sign-me-up" class="inside-menu-link">
          <div class="inside-menu-title">Sign up</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-signup-green_0.png" width="45" height="45" alt="Sign up" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
      
    <li class="menu-item">
                    <a href="/aboutus/businessprinciples/report-your-concerns" class="inside-menu-link">
          <div class="inside-menu-title">Tell us</div>
          

<div class="menu_link_content menu-link-contentheader-persistent-submenu view-mode-default menu-dropdown menu-dropdown-0 menu-type-default">
        
            <div class="field field--name-field-inside-menu-icon field--type-image field--label-hidden field--item">  <img src="/sites/default/files/2019-05/icon-tellus-teal_0.png" width="45" height="45" alt="Tell us" typeof="foaf:Image" class="img-responsive" />

</div>
      
  </div>
        </a>
          </li>
  </ul>

  </nav>

  </div>

                </div>
              </div>
            </div>
                  </header>
      </div>
    </div>
    <div class="row">
      <section class="pre-content-section">
        <div class="container">
                      <div class="row">
              <div class="col-md-12">
                  <div class="region region-pre-content">
    <div data-drupal-messages-fallback class="hidden"></div>

  </div>

              </div>
            </div>
                  </div>
      </section>
      <section class="top-content-section">
        <div class="container">
                  </div>
      </section>
      <section class='banner-section'>
        <div class="container">
                  </div>
      </section>
    </div>
    <div class="row">
      <main class="main-wrapper">
                    <div class="region region-page-header">
    

<header  id="block-da-vinci-code-page-title" data-block-plugin-id="page_title_block" class="page-header page-header--article">
  
  <div class="page-header__wrap">

    <div class="page-header__body">
            <div class="page-header__title-wrap">
      
        
        <h1  class="page-header__title">Home</h1>
        

              <div class="page-header__social-share">
          <div class="block-view-container">
  <section id="block-da-vinci-code-socialsharingblock" data-block-plugin-id="social_sharing_block" class="block block-social-media block-social-sharing-block clearfix">
    
          <h2 class="block-title"><span>Share this page</span></h2> 
        

          <div class="social-share-container">
  <ul class="social-share-list">
        
        
    
    
      
      
      
      <li class="social-share-list__item">
        <a data-dialog-type=dialog data-dialog-options={&quot;width&quot;:&quot;600&quot;} target="_blank" class="facebook-share social-media-icon social-share-item social-share-item--facebook-share" href="https://www.facebook.com/share.php?u=https://www.nestle.com/home&amp;title=Home">
            <svg title="Facebook" aria-label="Facebook" role="img" class="da-vinci-code-icon da-vinci-code-icon--social__facebook-share " >
    <use xlink:href="#social__facebook-share"></use>
  </svg>

        </a>
      </li>
          
      
      
      
      <li class="social-share-list__item">
        <a data-dialog-type=dialog data-dialog-options={&quot;width&quot;:&quot;600&quot;}  target="_blank"  class="twitter social-media-icon social-share-item social-share-item--facebook-share social-share-item--twitter"   href="https://twitter.com/intent/tweet?url=https://www.nestle.com/home&amp;status=Home+https://www.nestle.com/home">
            <svg title="Twitter" aria-label="Twitter" role="img" class="da-vinci-code-icon da-vinci-code-icon--social__twitter " >
    <use xlink:href="#social__twitter"></use>
  </svg>

        </a>
      </li>
          
      
      
      
      <li class="social-share-list__item">
        <a data-dialog-type=dialog data-dialog-options={&quot;width&quot;:&quot;600&quot;} target="_blank" class="linkedin social-media-icon social-share-item social-share-item--facebook-share social-share-item--twitter social-share-item--linkedin" href="https://www.linkedin.com/shareArticle?mini=true&amp;url=https://www.nestle.com/home&amp;title=Home&amp;source=https://www.nestle.com/home">
            <svg title="Linkedin" aria-label="Linkedin" role="img" class="da-vinci-code-icon da-vinci-code-icon--social__linkedin " >
    <use xlink:href="#social__linkedin"></use>
  </svg>

        </a>
      </li>
          
      
      
      
      <li class="social-share-list__item">
        <a data-dialog-type=dialog data-dialog-options={&quot;width&quot;:&quot;600&quot;}   class="email social-share-item social-share-item--facebook-share social-share-item--twitter social-share-item--linkedin social-share-item--email"   href="/info/SendPage?Ctx=https://www.nestle.com/home">
            <svg title="Email" aria-label="Email" role="img" class="da-vinci-code-icon da-vinci-code-icon--social__email " >
    <use xlink:href="#social__email"></use>
  </svg>

        </a>
      </li>
            </ul>
</div>


      </section>
</div>

        </div>
      </div>
      

      
      
          </div>

    
  </div>

    <div class="page-header__outside" aria-hidden="true">
    <div class="component-paragraph-field">
      <h1 class="page-header__title page-header__title--outside" role="presentation">Home</h1>
      
    </div>
  </div>
  </header>


  </div>

                <div class="container">
                      <div class="row">
              <div class="col-md-12">
                  <div class="region region-content">
      

  
<article data-history-node-id="472961" role="article" about="/home" class="component-472961">
  
    

  <div>
    
  </div>
</article>

<div class="field-components-container component-472961">
  
      <div class="field field--name-field-components field--type-entity-reference-revisions field--label-hidden field--items">
              <div class="field--item">    <div class="entityslider-banner paragraph paragraph--type--ln-c-entityslider paragraph--view-mode--default" id="section-105811">
          <div class="component-paragraph-field">
        <div data-blazy="" class="slick blazy slick--field slick--field-c-entity-relation slick--field-c-entity-relation--default slick--skin--fullwidth slick--optionset--entity-slider slick--has-arrows" id="slick-paragraph-ln-c-entityslider-c-entity-relation-default-105811-1"><div id="slick-paragraph-ln-c-entityslider-c-entity-relation-default-105811-1-slider" data-slick="{&quot;dots&quot;:true,&quot;infinite&quot;:false,&quot;lazyLoad&quot;:&quot;blazy&quot;,&quot;speed&quot;:200,&quot;cssEase&quot;:&quot;linear&quot;}" class="slick__slider"><div class="slick__slide slide slide--0"><div data-history-node-id="465491" role="article" about="/nestle-for-healthier-kids" class="node--view-mode--entityslider-banner slide-item"><div class="banner-wrapper"><a class="banner-without-video" href="/csv/global-initiatives/healthier-kids/home" title="Nestlé for Healthier Kids" target="_self"><div class="twiddly"></div><div class="entityslider-image"><div class="field field--name-field-image field--type-image field--label-hidden field--item"><picture><!--[if IE 9]><video style="display: none;"><![endif]--><source srcset="/sites/default/files/styles/banner_image_slider_style/public/benefits-cooking-together-homepage-new.jpg?h=5d5285bd&amp;itok=SDnYG_II 1x, /sites/default/files/styles/banner_image_slider_style/public/benefits-cooking-together-homepage-new.jpg?h=5d5285bd&amp;itok=SDnYG_II 2x" media="all and (min-width: 1024px)" type="image/jpeg"/><source srcset="/sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/benefits-cooking-together-homepage-new.jpg?h=5d5285bd&amp;itok=OZZEttMj 1x, /sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/benefits-cooking-together-homepage-new.jpg?h=5d5285bd&amp;itok=OZZEttMj 2x" media="all and (min-width: 768px)" type="image/jpeg"/><source srcset="/sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/benefits-cooking-together-homepage-new.jpg?h=5d5285bd&amp;itok=OZZEttMj 1x, /sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/benefits-cooking-together-homepage-new.jpg?h=5d5285bd&amp;itok=OZZEttMj 2x" media="all and (min-width: 320px)" type="image/jpeg"/><!--[if IE 9]></video><![endif]--><img src="/sites/default/files/styles/banner_image_slider_style/public/benefits-cooking-together-homepage-new.jpg?h=5d5285bd&amp;itok=SDnYG_II" alt="Nestlé for Healthier Kids" title="Nestlé for Healthier Kids" typeof="foaf:Image" class="img-responsive" /></picture></div></div><div class="slider-caption"><div class="banner-subtitle"></div><h2 ><span>Nestlé for Healthier Kids</span></h2><div class="banner-description">
                              Helping 50 million children lead healthier lives by 2030
                          </div><div class="teaser-cta-button"><span class="teaser-cta-button-item">
                  Read More
                </span></div></div></a></div></div></div><div class="slick__slide slide slide--1"><div data-history-node-id="567676" role="article" about="/raising-bar-coffee-0" class="node--view-mode--entityslider-banner slide-item"><div class="banner-wrapper"><a class="banner-without-video" href="/stories/coffee-innovation-research-cto-stefan-palzer" title="Raising the bar in coffee" target="_self"><div class="twiddly"></div><div class="entityslider-image"><div class="field field--name-field-image field--type-image field--label-hidden field--item"><picture><!--[if IE 9]><video style="display: none;"><![endif]--><source srcset="/sites/default/files/styles/banner_image_slider_style/public/raising-bar-coffee-story-homepage-new.jpg?h=81e5a458&amp;itok=qLPBz9i7 1x, /sites/default/files/styles/banner_image_slider_style/public/raising-bar-coffee-story-homepage-new.jpg?h=81e5a458&amp;itok=qLPBz9i7 2x" media="all and (min-width: 1024px)" type="image/jpeg"/><source srcset="/sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/raising-bar-coffee-story-homepage-new.jpg?h=81e5a458&amp;itok=yjxqXm4U 1x, /sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/raising-bar-coffee-story-homepage-new.jpg?h=81e5a458&amp;itok=yjxqXm4U 2x" media="all and (min-width: 768px)" type="image/jpeg"/><source srcset="/sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/raising-bar-coffee-story-homepage-new.jpg?h=81e5a458&amp;itok=yjxqXm4U 1x, /sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/raising-bar-coffee-story-homepage-new.jpg?h=81e5a458&amp;itok=yjxqXm4U 2x" media="all and (min-width: 320px)" type="image/jpeg"/><!--[if IE 9]></video><![endif]--><img src="/sites/default/files/styles/banner_image_slider_style/public/raising-bar-coffee-story-homepage-new.jpg?h=81e5a458&amp;itok=qLPBz9i7" alt="young people drinking coffee" title="young people drinking coffee" typeof="foaf:Image" class="img-responsive" /></picture></div></div><div class="slider-caption"><div class="banner-subtitle"></div><h2 ><span> Raising the bar in coffee</span></h2><div class="banner-description">
                              Where science meets art
                          </div><div class="teaser-cta-button"><span class="teaser-cta-button-item">
                  Read More
                </span></div></div></a></div></div></div><div class="slick__slide slide slide--2"><div data-history-node-id="567686" role="article" about="/reimagining-rethinking-recycling" class="node--view-mode--entityslider-banner slide-item"><div class="banner-wrapper"><a class="banner-without-video" href="/stories/reimagining-rethinking-recycling-our-packaging" title=" Reimagining, rethinking and recycling" target="_self"><div class="twiddly"></div><div class="entityslider-image"><div class="field field--name-field-image field--type-image field--label-hidden field--item"><picture><!--[if IE 9]><video style="display: none;"><![endif]--><source srcset="/sites/default/files/styles/banner_image_slider_style/public/reimagining-rethinking-recycling-packaging-homepage-new.jpg?h=6fa81849&amp;itok=zfzFRf26 1x, /sites/default/files/styles/banner_image_slider_style/public/reimagining-rethinking-recycling-packaging-homepage-new.jpg?h=6fa81849&amp;itok=zfzFRf26 2x" media="all and (min-width: 1024px)" type="image/jpeg"/><source srcset="/sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/reimagining-rethinking-recycling-packaging-homepage-new.jpg?h=6fa81849&amp;itok=lFcfIfuN 1x, /sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/reimagining-rethinking-recycling-packaging-homepage-new.jpg?h=6fa81849&amp;itok=lFcfIfuN 2x" media="all and (min-width: 768px)" type="image/jpeg"/><source srcset="/sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/reimagining-rethinking-recycling-packaging-homepage-new.jpg?h=6fa81849&amp;itok=lFcfIfuN 1x, /sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/reimagining-rethinking-recycling-packaging-homepage-new.jpg?h=6fa81849&amp;itok=lFcfIfuN 2x" media="all and (min-width: 320px)" type="image/jpeg"/><!--[if IE 9]></video><![endif]--><img src="/sites/default/files/styles/banner_image_slider_style/public/reimagining-rethinking-recycling-packaging-homepage-new.jpg?h=6fa81849&amp;itok=zfzFRf26" alt="reimagining, rethinking and recycling" title="reimagining, rethinking and recycling" typeof="foaf:Image" class="img-responsive" /></picture></div></div><div class="slider-caption"><div class="banner-subtitle"></div><h2 ><span>Reimagining, rethinking and recycling</span></h2><div class="banner-description">
                              Our strategy to help tackle plastic pollution
                          </div><div class="teaser-cta-button"><span class="teaser-cta-button-item">
                  Read More
                </span></div></div></a></div></div></div><div class="slick__slide slide slide--3"><div data-history-node-id="567681" role="article" about="/growing-plant-based-future" class="node--view-mode--entityslider-banner slide-item"><div class="banner-wrapper"><a class="banner-without-video" href="/stories/plant-based-seafood-tuna" title="Growing a plant-based future" target="_self"><div class="twiddly"></div><div class="entityslider-image"><div class="field field--name-field-image field--type-image field--label-hidden field--item"><picture><!--[if IE 9]><video style="display: none;"><![endif]--><source srcset="/sites/default/files/styles/banner_image_slider_style/public/sensational-vuna-homepage-new.jpg?h=6839e4e2&amp;itok=LII-JOTO 1x, /sites/default/files/styles/banner_image_slider_style/public/sensational-vuna-homepage-new.jpg?h=6839e4e2&amp;itok=LII-JOTO 2x" media="all and (min-width: 1024px)" type="image/jpeg"/><source srcset="/sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/sensational-vuna-homepage-new.jpg?h=6839e4e2&amp;itok=0AZBg66f 1x, /sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/sensational-vuna-homepage-new.jpg?h=6839e4e2&amp;itok=0AZBg66f 2x" media="all and (min-width: 768px)" type="image/jpeg"/><source srcset="/sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/sensational-vuna-homepage-new.jpg?h=6839e4e2&amp;itok=0AZBg66f 1x, /sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/sensational-vuna-homepage-new.jpg?h=6839e4e2&amp;itok=0AZBg66f 2x" media="all and (min-width: 320px)" type="image/jpeg"/><!--[if IE 9]></video><![endif]--><img src="/sites/default/files/styles/banner_image_slider_style/public/sensational-vuna-homepage-new.jpg?h=6839e4e2&amp;itok=LII-JOTO" alt="Sensational VUNA" title="Sensational VUNA" typeof="foaf:Image" class="img-responsive" /></picture></div></div><div class="slider-caption"><div class="banner-subtitle"></div><h2 ><span>Growing a plant-based future</span></h2><div class="banner-description">
                              Masterminding our plant-based tuna alternative
                          </div><div class="teaser-cta-button"><span class="teaser-cta-button-item">
                  Read More
                </span></div></div></a></div></div></div><div class="slick__slide slide slide--4"><div data-history-node-id="566316" role="article" about="/responding-covid-19" class="node--view-mode--entityslider-banner slide-item"><div class="banner-wrapper"><a class="banner-without-video" href="/aboutus/our-response-covid-19-coronavirus" title="Our response to COVID-19" target=""><div class="twiddly"></div><div class="entityslider-image"><div class="field field--name-field-image field--type-image field--label-hidden field--item"><picture><!--[if IE 9]><video style="display: none;"><![endif]--><source srcset="/sites/default/files/styles/banner_image_slider_style/public/covid-19-ifrc-homepage-new.jpg?h=0a895bca&amp;itok=CyxBfkPx 1x, /sites/default/files/styles/banner_image_slider_style/public/covid-19-ifrc-homepage-new.jpg?h=0a895bca&amp;itok=CyxBfkPx 2x" media="all and (min-width: 1024px)" type="image/jpeg"/><source srcset="/sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/covid-19-ifrc-homepage-new.jpg?h=0a895bca&amp;itok=casvL5Qo 1x, /sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/covid-19-ifrc-homepage-new.jpg?h=0a895bca&amp;itok=casvL5Qo 2x" media="all and (min-width: 768px)" type="image/jpeg"/><source srcset="/sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/covid-19-ifrc-homepage-new.jpg?h=0a895bca&amp;itok=casvL5Qo 1x, /sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/covid-19-ifrc-homepage-new.jpg?h=0a895bca&amp;itok=casvL5Qo 2x" media="all and (min-width: 320px)" type="image/jpeg"/><!--[if IE 9]></video><![endif]--><img src="/sites/default/files/styles/banner_image_slider_style/public/covid-19-ifrc-homepage-new.jpg?h=0a895bca&amp;itok=CyxBfkPx" alt="Nestlé employee volunteering" title="Nestlé employee volunteering" typeof="foaf:Image" class="img-responsive" /></picture></div></div><div class="slider-caption"><div class="banner-subtitle"></div><h2 ><span>Our response to COVID-19</span></h2><div class="banner-description">
                              Offering help on the ground everywhere we are present
                          </div><div class="teaser-cta-button"><span class="teaser-cta-button-item">
                  Read More
                </span></div></div></a></div></div></div><div class="slick__slide slide slide--5"><div data-history-node-id="527641" role="article" about="/tackling-climate-change" class="node--view-mode--entityslider-banner slide-item"><div class="banner-wrapper"><a class="banner-without-video" href="/media/pressreleases/allpressreleases/nestle-climate-change-commitment-zero-net-emissions-2050" title="Nestlé accelerates action to tackle climate change and commits to zero net emissions by 2050" target=""><div class="twiddly"></div><div class="entityslider-image"><div class="field field--name-field-image field--type-image field--label-hidden field--item"><picture><!--[if IE 9]><video style="display: none;"><![endif]--><source srcset="/sites/default/files/styles/banner_image_slider_style/public/climate-change-homepage-new.jpg?h=107eb190&amp;itok=MjAbauFQ 1x, /sites/default/files/styles/banner_image_slider_style/public/climate-change-homepage-new.jpg?h=107eb190&amp;itok=MjAbauFQ 2x" media="all and (min-width: 1024px)" type="image/jpeg"/><source srcset="/sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/climate-change-homepage-new.jpg?h=107eb190&amp;itok=ij4bN8BU 1x, /sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/climate-change-homepage-new.jpg?h=107eb190&amp;itok=ij4bN8BU 2x" media="all and (min-width: 768px)" type="image/jpeg"/><source srcset="/sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/climate-change-homepage-new.jpg?h=107eb190&amp;itok=ij4bN8BU 1x, /sites/default/files/styles/entity_slider_banner_image_1440_x_810/public/climate-change-homepage-new.jpg?h=107eb190&amp;itok=ij4bN8BU 2x" media="all and (min-width: 320px)" type="image/jpeg"/><!--[if IE 9]></video><![endif]--><img src="/sites/default/files/styles/banner_image_slider_style/public/climate-change-homepage-new.jpg?h=107eb190&amp;itok=MjAbauFQ" alt="Girl running towards windmills on field" title="Girl running towards windmills on field" typeof="foaf:Image" class="img-responsive" /></picture></div></div><div class="slider-caption"><div class="banner-subtitle"></div><h2 ><span>Tackling climate change</span></h2><div class="banner-description">
                              Committing to zero net emissions by 2050
                          </div><div class="teaser-cta-button"><span class="teaser-cta-button-item">
                  Read More
                </span></div></div></a></div></div></div></div><nav role="navigation" class="slick__arrow"><button type="button" data-role="none" class="slick-prev" aria-label="Previous" tabindex="0">Previous</button><button type="button" data-role="none" class="slick-next" aria-label="Next" tabindex="0">Next</button></nav></div>
      </div>
      </div>
</div>
              <div class="field--item">  <div id="section-139641" class="paragraph paragraph--type--card-grid paragraph--view-mode--default">
          <div class="card-grid-container component-paragraph-field">
        
        <ul class="bottom-text-box card-grid-container__grid card-grid card-grid--4" data-items="4">
      <li class="card-grid__item">
      

  <div id="section-139616" class="card-item card-item--custom card-item--blue card-item--extended paragraph paragraph--type--card-item-custom paragraph--view-mode--default">
          
            <a  target="_self" rel="noopener" href="/investors/annual-report" class="card-item__link">
      
      <div class="card-item__content ">
        
                <header class="card-item__title">
            Annual report
        </header>
        
                <div class="card-item__body">
          Our Annual Report outlines our financial performance and the progress we have made towards meeting our societal commitments.
        </div>
        
                <span class="card-item__more">
          Read More
            <svg title="" aria-label="" role="img" class="da-vinci-code-icon da-vinci-code-icon--arrow--right " aria-hidden="true">
    <use xlink:href="#arrow--right"></use>
  </svg>

        </span>
              </div>

      <div class="card-item__image">
            <img src="/sites/default/files/2020-07/report-homepage-box-sml.jpg" width="480" height="269" alt="Reports" typeof="foaf:Image" class="img-responsive" />



                    <aside class="card-item__label">
            Reports
          </aside>
                </div>


            </a>
      
      </div>

    </li>
      <li class="card-grid__item">
      

  <div id="section-139621" class="card-item card-item--custom card-item--orange card-item--extended paragraph paragraph--type--card-item-custom paragraph--view-mode--default">
          
            <a  target="_self" rel="noopener" href="/csv" class="card-item__link">
      
      <div class="card-item__content ">
        
                <header class="card-item__title">
            Creating Shared Value
        </header>
        
                <div class="card-item__body">
          We have 36 commitments to support our long-term goal of Creating Shared Value.
        </div>
        
                <span class="card-item__more">
          Read More
            <svg title="" aria-label="" role="img" class="da-vinci-code-icon da-vinci-code-icon--arrow--right " aria-hidden="true">
    <use xlink:href="#arrow--right"></use>
  </svg>

        </span>
              </div>

      <div class="card-item__image">
            <img src="/sites/default/files/2020-07/impact-areas-box-homepage-new.png" width="480" height="269" alt="CSV" typeof="foaf:Image" class="img-responsive" />



                    <aside class="card-item__label">
            Commitments
          </aside>
                </div>


            </a>
      
      </div>

    </li>
      <li class="card-grid__item">
      

  <div id="section-139626" class="card-item card-item--custom card-item--green card-item--extended paragraph paragraph--type--card-item-custom paragraph--view-mode--default">
          
            <a  target="_self" rel="noopener" href="/info/contactus/contactus" class="card-item__link">
      
      <div class="card-item__content ">
        
                <header class="card-item__title">
            Contact us
        </header>
        
                <div class="card-item__body">
          Got questions, concerns or feedback? We want to hear them. Find out the many ways you can get in touch.
        </div>
        
                <span class="card-item__more">
          Read More
            <svg title="" aria-label="" role="img" class="da-vinci-code-icon da-vinci-code-icon--arrow--right " aria-hidden="true">
    <use xlink:href="#arrow--right"></use>
  </svg>

        </span>
              </div>

      <div class="card-item__image">
            <img src="/sites/default/files/2020-07/contact-us-box-homepage.png" width="480" height="269" alt="Contact us" typeof="foaf:Image" class="img-responsive" />



                    <aside class="card-item__label">
            Need to talk?
          </aside>
                </div>


            </a>
      
      </div>

    </li>
      <li class="card-grid__item">
      

  <div id="section-143131" class="card-item card-item--custom card-item--purple-alt card-item--extended paragraph paragraph--type--card-item-custom paragraph--view-mode--default">
          
            <a  target="_self" rel="noopener" href="/search-jobs/career-areas" class="card-item__link">
      
      <div class="card-item__content ">
        
                <header class="card-item__title">
            Search for jobs
        </header>
        
                <div class="card-item__body">
          We employ around 300 000 people, with operations in almost every country in the world. Come and join the team.<br />
<br />

        </div>
        
                <span class="card-item__more">
          Read More
            <svg title="" aria-label="" role="img" class="da-vinci-code-icon da-vinci-code-icon--arrow--right " aria-hidden="true">
    <use xlink:href="#arrow--right"></use>
  </svg>

        </span>
              </div>

      <div class="card-item__image">
            <img src="/sites/default/files/2020-08/homepage-jobs.jpg" width="480" height="269" alt="Search for jobs" typeof="foaf:Image" class="img-responsive" />



                    <aside class="card-item__label">
            Careers
          </aside>
                </div>


            </a>
      
      </div>

    </li>
  </ul>

      </div>
      </div>
</div>
              <div class="field--item">  <div class="no-effect highlight newsfeed no-linkcolor color-library-oak-dark margin-bottom paragraph paragraph--type--dsu-c-view paragraph--view-mode--default da-vinci-code-background--pink" id="section-78251">
          <div class="component-paragraph-field">
                  
            <div class="field field--name-field-title field--type-text-with-summary field--label-hidden field--item"><span>Latest news</span></div>
      
                
        
            <div class="field field--name-field-cta-button-item field--type-entity-reference-revisions field--label-hidden field--item">    <div class="cta-style-secondary paragraph paragraph--type--dsu-c-cta-button paragraph--view-mode--default" id="section-135816">
          <div class="component-paragraph-field">
        
            <div class="field field--name-field-cta-button-url field--type-link field--label-hidden field--item"><a href="/media/news" target="_self">More news</a></div>
      
      </div>
      </div>
  </div>
      
        
            <div class="field field--name-field-view-item field--type-viewsreference field--label-hidden field--item"><div class="viewsreference--view-title">
    Automatic Dated list
</div>
<div class="views-element-container form-group"><div class="view view-automatic-dated-list view-id-automatic_dated_list view-display-id-automatic_dated_list_block js-view-dom-id-9fdeda6fdeb1bed4bda27d05c9c36e777d42aeed23e2c232723f50ad3fbf3b06">
  
    
  <div class="exposed-filter-wrapper">
              <div class="view-filters form-group">
        <form class="views-exposed-form" data-drupal-selector="views-exposed-form-automatic-dated-list-automatic-dated-list-block" action="/home" method="get" id="views-exposed-form-automatic-dated-list-automatic-dated-list-block" accept-charset="UTF-8">
  <div class="form--inline form-inline clearfix">
  <div class="form-item js-form-item form-type-textfield js-form-type-textfield form-item-published-at js-form-item-published-at form-group">
      <label for="edit-published-at" class="control-label">Published on</label>
  
  
  <input data-drupal-selector="edit-published-at" class="form-text form-control" type="text" id="edit-published-at" name="published_at" value="" size="30" maxlength="128" />

  
  
  </div>
<div class="form-item js-form-item form-type-select js-form-type-select form-item-field-article-type-target-id js-form-item-field-article-type-target-id form-no-label form-group">
  
  
  <select data-drupal-selector="edit-field-article-type-target-id" multiple="multiple" name="field_article_type_target_id[]" class="form-select form-control" id="edit-field-article-type-target-id" size="3"><option
            value="6221">Article</option><option
            value="6226">News</option><option
            value="6231">Press Release</option></select>

  
  
  </div>
<div class="form-item js-form-item form-type-entity-autocomplete js-form-type-entity-autocomplete form-item-field-topic-target-id js-form-item-field-topic-target-id form-group form-autocomplete">
      <label for="edit-field-topic-target-id" class="control-label">Topic (field_topic)</label>
  
  
  <div class="input-group"><input data-drupal-selector="edit-field-topic-target-id" class="form-autocomplete form-text form-control" data-autocomplete-path="/entity_reference_autocomplete/taxonomy_term/default/FOXF6klrH4g2EE9zYw9oofwioP95YNLrTGGu76lsiWc" type="text" id="edit-field-topic-target-id" name="field_topic_target_id" value="" size="60" maxlength="128" /><span class="input-group-addon"><span class="icon glyphicon glyphicon-refresh ajax-progress ajax-progress-throbber" aria-hidden="true"></span></span></div>

  
  
  </div>
<div data-drupal-selector="edit-actions" class="form-actions form-group js-form-wrapper form-wrapper" id="edit-actions"><button data-drupal-selector="edit-submit-automatic-dated-list" class="button js-form-submit form-submit btn-info btn" type="submit" id="edit-submit-automatic-dated-list" value="Apply" name="">Apply</button></div>

</div>

</form>

      </div>
          </div>
      <div class="view-content">
          <div class="views-row"><div class="views-field views-field-published-at"><span class="field-content">Oct 14, 2020</span></div><div class="views-field views-field-title"><span class="field-content"><a href="/media/news/nestle-cool-food-pledge-combat-climate-change">Nestlé pledges to serve &#039;Cool Food&#039; to combat climate change</a></span></div></div>
    <div class="views-row"><div class="views-field views-field-published-at"><span class="field-content">Oct 14, 2020</span></div><div class="views-field views-field-title"><span class="field-content"><a href="/media/pressreleases/allpressreleases/nestle-completes-acquisition-aimmune-therapeutics">Nestlé completes acquisition of Aimmune Therapeutics</a></span></div></div>
    <div class="views-row"><div class="views-field views-field-published-at"><span class="field-content">Oct 13, 2020</span></div><div class="views-field views-field-title"><span class="field-content"><a href="/media/news/engineers-africa-nestle-eth-zurich-ashesi-university">Engineers from Africa for Africa</a></span></div></div>

    </div>
  
          </div>
</div>
</div>
      
        
      </div>
      </div>
</div>
              <div class="field--item">    <div class="position-center entitycycle-dots-align-center entitycycle-display-image paragraph paragraph--type--c-entitycycle paragraph--view-mode--default" id="section-105816">
          <div class="component-paragraph-field">
                  <h2><span>Explore</span> a selection of our brands</h2>
        
        <div data-blazy="" class="slick blazy slick--field slick--field-c-entity-relation slick--field-c-entity-relation--automatic-dated-list-block slick--view slick--view--automatic-dated-list slick--view--automatic-dated-list--automatic-dated-list-block slick--optionset--entity-cycle-slick slick--multiple-view slick--has-arrows" id="slick-paragraph-c-entitycycle-c-entity-relation-default-105816-2"><div id="slick-paragraph-c-entitycycle-c-entity-relation-default-105816-2-slider" data-slick="{&quot;mobileFirst&quot;:true,&quot;dots&quot;:true,&quot;lazyLoad&quot;:&quot;blazy&quot;,&quot;slidesToShow&quot;:6,&quot;slidesToScroll&quot;:6,&quot;speed&quot;:1000,&quot;cssEase&quot;:&quot;linear&quot;,&quot;responsive&quot;:[{&quot;breakpoint&quot;:1024,&quot;settings&quot;:{&quot;dots&quot;:true,&quot;slidesToShow&quot;:6,&quot;slidesToScroll&quot;:6,&quot;speed&quot;:1000,&quot;waitForAnimate&quot;:false}},{&quot;breakpoint&quot;:767,&quot;settings&quot;:{&quot;dots&quot;:true,&quot;slidesToShow&quot;:4,&quot;slidesToScroll&quot;:4,&quot;waitForAnimate&quot;:false}},{&quot;breakpoint&quot;:300,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesToScroll&quot;:3,&quot;dots&quot;:true,&quot;waitForAnimate&quot;:false}}]}" class="slick__slider"><div class="slick__slide slide slide--0"><article data-history-node-id="480626" role="article" about="/brands/allbrands/maggi_culinary"><div><a href="/brands/allbrands/maggi_culinary" title="Maggi" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/maggi_culinary" hreflang="en"><img src="/sites/default/files/asset-library/publishingimages/brands/culinary/maggi-logo-round.png" width="400" height="400" alt="Maggi" title="Maggi" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--1"><article data-history-node-id="480591" role="article" about="/brands/allbrands/kit-kat"><div><a href="/brands/allbrands/kit-kat" title="KitKat" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/kit-kat" hreflang="en"><img src="/sites/default/files/asset-library/publishingimages/brands/chocolate-confectionery/kitkat-logo-round.png" width="400" height="400" alt="KitKat" title="KitKat" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--2"><article data-history-node-id="480556" role="article" about="/brands/allbrands/gerber"><div><a href="/brands/allbrands/gerber" title="Gerber" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/gerber" hreflang="en"><img src="/sites/default/files/asset-library/publishingimages/brands/baby-food/gerber-logo-round.png" width="400" height="400" alt="Gerber" title="Gerber" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--3"><article data-history-node-id="480841" role="article" about="/brands/allbrands/toll-house"><div><a href="/brands/allbrands/toll-house" title="Toll House" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/toll-house" hreflang="en"><img src="/sites/default/files/asset-library/publishingimages/brands/chocolate-confectionery/toll-house-logo-round.png" width="400" height="400" alt="Toll House" title="Toll House" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--4"><article data-history-node-id="480636" role="article" about="/brands/allbrands/milo"><div><a href="/brands/allbrands/milo" title="Milo" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/milo" hreflang="en"><img src="/sites/default/files/milo-logo-round_12.png" width="400" height="400" alt="Milo" title="Milo" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--5"><article data-history-node-id="480736" role="article" about="/brands/allbrands/nestle-pure-life"><div><a href="/brands/allbrands/nestle-pure-life" title="Nestlé Pure Life" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/nestle-pure-life" hreflang="en"><img src="/sites/default/files/asset-library/publishingimages/brands/bottled-water/pure-life-logo-round.png" width="400" height="400" alt="Nestlé Pure Life" title="Nestlé Pure Life" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--6"><article data-history-node-id="480701" role="article" about="/brands/allbrands/nescafe"><div><a href="/brands/allbrands/nescafe" title="Nescafé" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/nescafe" hreflang="en"><img src="/sites/default/files/nescafe-logo-round_16.png" width="400" height="400" alt="Nescafé" title="Nescafé" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--7"><article data-history-node-id="480486" role="article" about="/brands/allbrands/coffee-mate"><div><a href="/brands/allbrands/coffee-mate" title="Coffee-Mate" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/coffee-mate" hreflang="en"><img src="/sites/default/files/coffee-mate-logo-round_8.png" width="400" height="400" alt="Coffee-Mate" title="Coffee-Mate" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--8"><article data-history-node-id="480706" role="article" about="/brands/allbrands/nespresso"><div><a href="/brands/allbrands/nespresso" title="Nespresso" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/nespresso" hreflang="en"><img src="/sites/default/files/asset-library/publishingimages/brands/coffee/nespresso-logo-round.png" width="400" height="400" alt="Nespresso" title="Nespresso" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--9"><article data-history-node-id="480541" role="article" about="/brands/allbrands/friskies"><div><a href="/brands/allbrands/friskies" title="Friskies" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/friskies" hreflang="en"><img src="/sites/default/files/friskies-logo-round.png" width="400" height="400" alt="Friskies" title="Friskies" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--10"><article data-history-node-id="480796" role="article" about="/brands/allbrands/purina"><div><a href="/brands/allbrands/purina" title="Purina" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/purina" hreflang="en"><img src="/sites/default/files/purina-logo-round.png" width="400" height="400" alt="Purina" title="Purina" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--11"><article data-history-node-id="480426" role="article" about="/brands/allbrands/buitoni"><div><a href="/brands/allbrands/buitoni" title="Buitoni" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/buitoni" hreflang="en"><img src="/sites/default/files/buitoni-logo-round.png" width="400" height="400" alt="Buitoni" title="Buitoni" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--12"><article data-history-node-id="480681" role="article" about="/brands/allbrands/nescafe-dolce-gusto"><div><a href="/brands/allbrands/nescafe-dolce-gusto" title="Nescafé Dolce Gusto" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/nescafe-dolce-gusto" hreflang="en"><img src="/sites/default/files/asset-library/publishingimages/brands/coffee/dolce-gusto-logo-round.png" width="480" height="480" alt="Nescafé Dolce Gusto" title="Nescafé Dolce Gusto" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--13"><article data-history-node-id="480571" role="article" about="/brands/allbrands/herta"><div><a href="/brands/allbrands/herta" title="Herta" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/herta" hreflang="en"><img src="/sites/default/files/herta-logo-round.png" width="400" height="400" alt="Herta" title="Herta" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--14"><article data-history-node-id="480826" role="article" about="/brands/allbrands/stouffer"><div><a href="/brands/allbrands/stouffer" title="Stouffer's" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/stouffer" hreflang="en"><img src="/sites/default/files/stouffers-logo-round_8.png" width="400" height="400" alt="Stouffer&#039;s" title="Stouffer&#039;s" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--15"><article data-history-node-id="480731" role="article" about="/brands/allbrands/nestle-ice-cream"><div><a href="/brands/allbrands/nestle-ice-cream" title="Nestlé Ice Cream" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/nestle-ice-cream" hreflang="en"><img src="/sites/default/files/asset-library/publishingimages/brands/ice-cream/nestle-ice-cream-logo-round.png" width="400" height="400" alt="Nestlé Ice Cream" title="Nestlé Ice Cream" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--16"><article data-history-node-id="480746" role="article" about="/brands/allbrands/nido"><div><a href="/brands/allbrands/nido" title="Nido" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/nido" hreflang="en"><img src="/sites/default/files/asset-library/publishingimages/brands/dairy/nido-logo-round.png" width="400" height="400" alt="Nido" title="Nido" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--17"><article data-history-node-id="480511" role="article" about="/brands/allbrands/dreyers"><div><a href="/brands/allbrands/dreyers" title="Dreyer’s" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/dreyers" hreflang="en"><img src="/sites/default/files/dreyers-logo-round.png" width="400" height="400" alt="Dreyer’s" title="Dreyer’s" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--18"><article data-history-node-id="480601" role="article" about="/brands/allbrands/lean-cuisine"><div><a href="/brands/allbrands/lean-cuisine" title="Lean Cuisine" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/lean-cuisine" hreflang="en"><img src="/sites/default/files/lean-cuisine-logo-round_4.png" width="400" height="400" alt="Lean Cuisine" title="Lean Cuisine" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--19"><article data-history-node-id="480441" role="article" about="/brands/allbrands/carnation"><div><a href="/brands/allbrands/carnation" title="Carnation" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/carnation" hreflang="en"><img src="/sites/default/files/asset-library/publishingimages/brands/dairy/carnation-logo-round.png" width="400" height="400" alt="Carnation" title="Carnation" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div><div class="slick__slide slide slide--20"><article data-history-node-id="480821" role="article" about="/brands/allbrands/spellegrino"><div><a href="/brands/allbrands/spellegrino" title="S.Pellegrino" /><div class="field field--name-field-logo field--type-image field--label-hidden field--item"><a href="/brands/allbrands/spellegrino" hreflang="en"><img src="/sites/default/files/asset-library/publishingimages/brands/bottled-water/spellegrino-logo-round.png" width="400" height="400" alt="S.Pellegrino" title="S.Pellegrino" typeof="foaf:Image" class="img-responsive" /></a></div></a></div></article></div></div><nav role="navigation" class="slick__arrow"><button type="button" data-role="none" class="slick-prev" aria-label="Previous" tabindex="0">Previous</button><button type="button" data-role="none" class="slick-next" aria-label="Next" tabindex="0">Next</button></nav></div>

                  
  <div class="field field--name-field-cta-button-item field--type-entity-reference-revisions field--label-above">
    <div class="field--label">CTA Button Item</div>
              <div class="field--item">    <div class="cta-style-secondary paragraph paragraph--type--dsu-c-cta-button paragraph--view-mode--default" id="section-135821">
          <div class="component-paragraph-field">
        
            <div class="field field--name-field-cta-button-url field--type-link field--label-hidden field--item"><a href="/brands" target="_self">View all brands</a></div>
      
      </div>
      </div>
  </div>
          </div>

              </div>
      </div>
</div>
          </div>
  
</div>


  </div>

              </div>
            </div>
                  </div>
      </main>
    </div>
    <div class="row">
      <div class="bottom-content-wrapper">
        <div class="container">
          <div class="row">
                          <div class="bottom-content">
                <div class="col-md-12">
                    <div class="region region-bottom-content">
    <div class="block-view-container">
  <section id="block-da-vinci-code-backtotopblock" data-block-plugin-id="back_to_top" class="block block-lcp-global-configurations block-back-to-top clearfix">
    
        

          <div>
  <a href='javascript:void(0);' id='backtotop' title="To The Top">To The Top</a>
</div>

      </section>
</div>

  </div>

                </div>
              </div>
                      </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <footer class="footer-wrapper">
                      <div class="footer-mini da-vinci-code-background--blue">
              <div class="container">
                <div class="row">
                  <div class="col-md-12">
                      <div class="region region-footer-mini">
    <div class="block-view-container">
  <section id="block-da-vinci-code-minifooter" data-block-plugin-id="block_content:79666c2b-9383-4d09-b496-fb5e2969fb81" class="block block-block-content block-block-content79666c2b-9383-4d09-b496-fb5e2969fb81 clearfix">
    
        

          
      <div class="field field--name-field-components field--type-entity-reference-revisions field--label-hidden field--items">
              <div class="field--item">  <div id="section-5941" class="paragraph paragraph--type--layout-columns-4 paragraph--view-mode--default">
          <div class="component-paragraph-field">
        <div class="col-md-3">
          
      <div class="field field--name-field-column-first field--type-entity-reference-revisions field--label-hidden field--items">
              <div class="field--item">  <div id="section-5906" class="paragraph paragraph--type--c-text paragraph--view-mode--default" style="background-image: url('');">
          <div class="component-paragraph-field">
        
            <div class="field field--name-field-summary-text field--type-text-long field--label-hidden field--item"><h3><a href="/info/sign-me-up">Nestlé News</a></h3>

<p><a href="/info/sign-me-up">Signup for Global Nestlé News</a></p>
</div>
      
            <div class="field field--name-field-cta-button-item field--type-entity-reference-revisions field--label-hidden field--item">    <div class="color-library-light-grey cta-style-primary paragraph paragraph--type--dsu-c-cta-button paragraph--view-mode--default" id="section-5901">
          <div class="component-paragraph-field">
        
            <div class="field field--name-field-cta-button-url field--type-link field--label-hidden field--item"><a href="/info/sign-me-up" target="_self">Sign up</a></div>
      
      </div>
      </div>
  </div>
      
      </div>
      </div>
</div>
          </div>
  
        </div>
        <div class="col-md-3">
          
      <div class="field field--name-field-column-second field--type-entity-reference-revisions field--label-hidden field--items">
              <div class="field--item">  <div id="section-5926" class="paragraph paragraph--type--c-text paragraph--view-mode--default" style="background-image: url('');">
          <div class="component-paragraph-field">
        
            <div class="field field--name-field-summary-text field--type-text-long field--label-hidden field--item"><h3><a href="/aboutus/businessprinciples/report-your-concerns">Compliance Concerns</a></h3>

<p><a href="/aboutus/businessprinciples/report-your-concerns">Let us know your concerns</a></p>
</div>
      
            <div class="field field--name-field-cta-button-item field--type-entity-reference-revisions field--label-hidden field--item">    <div class="color-library-light-grey cta-style-secondary paragraph paragraph--type--dsu-c-cta-button paragraph--view-mode--default" id="section-5921">
          <div class="component-paragraph-field">
        
            <div class="field field--name-field-cta-button-url field--type-link field--label-hidden field--item"><a href="/aboutus/businessprinciples/report-your-concerns" target="_self">Tell us</a></div>
      
      </div>
      </div>
  </div>
      
      </div>
      </div>
</div>
          </div>
  
        </div>
        <div class="col-md-3">
          
      <div class="field field--name-field-column-third field--type-entity-reference-revisions field--label-hidden field--items">
              <div class="field--item">  <div id="section-5936" class="paragraph paragraph--type--c-text paragraph--view-mode--default" style="background-image: url('');">
          <div class="component-paragraph-field">
        
            <div class="field field--name-field-summary-text field--type-text-long field--label-hidden field--item"><div title="map" class="embedded-entity"><a href="/info/contactus/contactus">  <img alt="map" title="map" class="img-responsive b-lazy" data-src="/sites/default/files/worldmap.png" /></a></div>
</div>
      
      </div>
      </div>
</div>
          </div>
  
        </div>
        <div class="col-md-3">
          
      <div class="field field--name-field-column-fourth field--type-entity-reference-revisions field--label-hidden field--items">
              <div class="field--item">  <div id="section-5916" class="paragraph paragraph--type--c-text paragraph--view-mode--default" style="background-image: url('');">
          <div class="component-paragraph-field">
        
            <div class="field field--name-field-summary-text field--type-text-long field--label-hidden field--item"><h3><a href="/info/contactus/contactus">Contact us</a></h3>

<p><a href="/info/contactus/contactus">Across the globe, Nestlé are here to help answer your queries</a></p>
</div>
      
            <div class="field field--name-field-cta-button-item field--type-entity-reference-revisions field--label-hidden field--item">    <div class="color-library-light-grey cta-style-secondary paragraph paragraph--type--dsu-c-cta-button paragraph--view-mode--default" id="section-5911">
          <div class="component-paragraph-field">
        
            <div class="field field--name-field-cta-button-url field--type-link field--label-hidden field--item"><a href="/info/contactus/contactus" target="_self">Contact us</a></div>
      
      </div>
      </div>
  </div>
      
      </div>
      </div>
</div>
          </div>
  
        </div>
      </div>
      </div>
</div>
          </div>
  
      </section>
</div>

  </div>

                  </div>
                </div>
              </div>
            </div>
                    <div class="footer-top">
            <div class="container">
              <div class="row">
                <div class="col-lg-3 col-xs-12">
                  <div class="footer-col1">
                                             <div class="region region-footer-col1">
    <div class="block-view-container">
  <section id="block-da-vinci-code-nestle" data-block-plugin-id="block_content:d1c74192-0dba-4a29-ad6e-7100dc5e4282" class="block block-block-content block-block-contentd1c74192-0dba-4a29-ad6e-7100dc5e4282 clearfix">
    
          <h2 class="block-title">Nestlé</h2>
        

          
            <div class="field field--name-body field--type-text-with-summary field--label-hidden field--item"><p>We unlock the power of food to enhance quality of life for everyone, today and for generations to come</p>
</div>
      
    
    <picture>
      <source srcset="/themes/custom/da_vinci_code/images/nest-logo.svg" type="image/svg+xml">
      <img src="/themes/custom/da_vinci_code/images/nest-logo.png" alt="Nestlé" title="Nestlé" class="footer-logo">
    </picture>
  </section>
</div>
<nav role="navigation" aria-labelledby="block-da-vinci-code-usefullinks-menu" id="block-da-vinci-code-usefullinks" data-block-plugin-id="system_menu_block:useful-links">
      
  <h2 id="block-da-vinci-code-usefullinks-menu">Useful Links</h2>
  

        
      <ul data-region="footer_col2" class="menu menu--useful-links nav">
                      <li class="first">
                                        <a href="/ask-nestle" data-drupal-link-system-path="node/479841">Ask Nestlé</a>
              </li>
                      <li>
                                        <a href="/info/contactus/contactus" data-drupal-link-system-path="node/476851">Contact us</a>
              </li>
                      <li>
                                        <a href="/search-jobs/career-areas">Search for jobs</a>
              </li>
                      <li>
                                        <a href="/info/sign-me-up" data-drupal-link-system-path="webform/sign_up">Sign up for news</a>
              </li>
                      <li class="last">
                                        <a href="/aboutus/businessprinciples/report-your-concerns" data-drupal-link-system-path="node/473626">Tell us</a>
              </li>
        </ul>
  

  </nav>

  </div>

                                      </div>
                </div>
                <div class="col-lg-3 col-xs-12">
                  <div class="footer-nav footer-col2">
                                            <div class="region region-footer-col2">
    <nav role="navigation" aria-labelledby="block-da-vinci-code-usefullinks-menu" id="block-da-vinci-code-usefullinks" data-block-plugin-id="system_menu_block:useful-links">
      
  <h2 id="block-da-vinci-code-usefullinks-menu">Useful Links</h2>
  

        
      <ul data-region="footer_col2" class="menu menu--useful-links nav">
                      <li class="first">
                                        <a href="/ask-nestle" data-drupal-link-system-path="node/479841">Ask Nestlé</a>
              </li>
                      <li>
                                        <a href="/info/contactus/contactus" data-drupal-link-system-path="node/476851">Contact us</a>
              </li>
                      <li>
                                        <a href="/search-jobs/career-areas">Search for jobs</a>
              </li>
                      <li>
                                        <a href="/info/sign-me-up" data-drupal-link-system-path="webform/sign_up">Sign up for news</a>
              </li>
                      <li class="last">
                                        <a href="/aboutus/businessprinciples/report-your-concerns" data-drupal-link-system-path="node/473626">Tell us</a>
              </li>
        </ul>
  

  </nav>
<nav role="navigation" aria-labelledby="block-da-vinci-code-company-menu" id="block-da-vinci-code-company" data-block-plugin-id="system_menu_block:company">
      
  <h2 id="block-da-vinci-code-company-menu">Company</h2>
  

        
      <ul data-region="footer_col2" class="menu menu--company nav">
                      <li class="first">
                                        <a href="/aboutus/globalpresence" data-drupal-link-system-path="node/473666">Global addresses</a>
              </li>
                      <li>
                                        <a href="/aboutus/strategy" data-drupal-link-system-path="node/473741">Strategy</a>
              </li>
                      <li>
                                        <a href="/aboutus/management" data-drupal-link-system-path="node/473926">Management</a>
              </li>
                      <li>
                                        <a href="/brands/brandssearchlist" data-drupal-link-system-path="node/475406">Brands A - Z</a>
              </li>
                      <li>
                                        <a href="/aboutus/history" data-drupal-link-system-path="node/473766">History</a>
              </li>
                      <li class="last">
                                        <a href="/csv" data-drupal-link-system-path="node/475821">Our impact</a>
              </li>
        </ul>
  

  </nav>

  </div>

                                      </div>
                </div>
                <div class="col-lg-3 col-xs-12">
                  <div class="footer-nav footer-col3">
                                            <div class="region region-footer-col3">
    <nav role="navigation" aria-labelledby="block-da-vinci-code-downloads-menu" id="block-da-vinci-code-downloads" data-block-plugin-id="system_menu_block:downloads">
      
  <h2 id="block-da-vinci-code-downloads-menu">Downloads</h2>
  

        
      <ul data-region="footer_col3" class="menu menu--downloads nav">
                      <li class="first">
                                        <a href="/sites/default/files/2020-03/2019-annual-review-en.pdf">Annual Review (pdf, 15Mb)</a>
              </li>
                      <li>
                                        <a href="/sites/default/files/2020-03/creating-shared-value-report-2019-en.pdf">Creating Shared Value Progress Report (pdf, 5Mb)</a>
              </li>
                      <li class="last">
                                        <a href="/sites/default/files/asset-library/documents/library/documents/suppliers/nestle-responsible-sourcing-standard-english.pdf">Responsible Sourcing Standard (pdf, 2Mb)</a>
              </li>
        </ul>
  

  </nav>
<nav role="navigation" aria-labelledby="block-da-vinci-code-otherda-vinci-codebusinesses-menu" id="block-da-vinci-code-otherda-vinci-codebusinesses" data-block-plugin-id="system_menu_block:other-nestle-businesses">
      
  <h2 id="block-da-vinci-code-otherda-vinci-codebusinesses-menu">Other Nestlé Businesses</h2>
  

        
      <ul data-region="footer_col3" class="menu menu--other-nestle-businesses nav">
                      <li class="first">
                                        <a href="https://www.nestlehealthscience.com/">Nestlé Health Science</a>
              </li>
                      <li>
                                        <a href="http://www.nestle-nespresso.com/">Nestlé Nespresso</a>
              </li>
                      <li>
                                        <a href="https://www.purina.com/">Nestlé Purina Petcare</a>
              </li>
                      <li class="last">
                                        <a href="https://www.nestle-waters.com/">Nestlé Waters</a>
              </li>
        </ul>
  

  </nav>

  </div>

                                      </div>
                </div>
                <div class="col-lg-3 col-xs-12">
                  <div class="footer-nav footer-col4">
                                            <div class="region region-footer-col4">
    <nav role="navigation" aria-labelledby="block-da-vinci-code-media-menu" id="block-da-vinci-code-media" data-block-plugin-id="system_menu_block:media">
      
  <h2 id="block-da-vinci-code-media-menu">Media</h2>
  

        
      <ul data-region="footer_col4" class="menu menu--media nav">
                      <li class="first">
                                        <a href="/media/news" title="News" data-drupal-link-system-path="node/472771">News</a>
              </li>
                      <li>
                                        <a href="/media/media-contacts" title="Media contacts" data-drupal-link-system-path="node/472936">Media contacts</a>
              </li>
                      <li class="last">
                                        <a href="/media/images-video" title="Images" data-drupal-link-system-path="node/472761">Images</a>
              </li>
        </ul>
  

  </nav>
<nav role="navigation" aria-labelledby="block-da-vinci-code-investors-menu" id="block-da-vinci-code-investors" data-block-plugin-id="system_menu_block:investors">
      
  <h2 id="block-da-vinci-code-investors-menu">Investors</h2>
  

        
      <ul data-region="footer_col4" class="menu menu--investors nav">
                      <li class="first">
                                        <a href="/investors/corporate-governance" data-drupal-link-system-path="node/477031">Corporate governance</a>
              </li>
                      <li>
                                        <a href="/investors/sharesadrsbonds" data-drupal-link-system-path="node/477461">Shares, ADRs, &amp; Bonds</a>
              </li>
                      <li class="last">
                                        <a href="/investors/publications" data-drupal-link-system-path="node/477771">Publications</a>
              </li>
        </ul>
  

  </nav>
<div class="block-view-container">
  <section id="block-da-vinci-code-sharepriceblock" data-block-plugin-id="shareprice_block" class="block block-dsu-c-shareprice block-shareprice-block clearfix">
    
          <h2 class="block-title"><span>Share Price</span></h2> 
        

           <div class="dsu-c-shareprice--block stockquotes">
  <a href="https://www.nestle.com/investors/sharesadrsbonds/stockquotes" title="Nestle Stock Quotes">
    <span class="stockName">CHF</span>
    <span class="stockPrice down"> 108.24</span>
    <span class="stockPercentage">(-1.36%)</span>
  </a>
 </div>

      </section>
</div>

  </div>

                                      </div>
                </div>
              </div>
            </div>
          </div>
          <div class="footer-bottom">
            <div class="container">
                              <div class="row">
                  <div class="col-md-12">
                      <div class="region region-footer">
    <div  id="block-da-vinci-code-followuson" data-block-plugin-id="block_content:8a669d48-c6c1-464c-9def-1adb41b2d071" class="social-main-wrapper">
  
      <h2>Follow us on</h2>
    
  
    <div class="social-links-wrapper">
              
        <div class="social-platform-wrapper">
          <div class="social-platforms social-platforms--twitter">
            <a class="social-icon" href="https://twitter.com/nestle" target="" title="" aria-label="Twitter">
                <svg title="Twitter" aria-label="Twitter" role="img" class="da-vinci-code-icon da-vinci-code-icon--social__twitter " >
    <use xlink:href="#social__twitter"></use>
  </svg>

            </a>
          </div>

                      <div class="social-links">
              <ul>
                                  <li><a href="https://twitter.com/nestle" title="" target="">Nestlé Corporate</a></li>
                                  <li><a href="https://twitter.com/NestleCareers" title="" target="">Nestlé Careers</a></li>
                                  <li><a href="https://twitter.com/NestleCare" title="" target="">Consumer Care</a></li>
                              </ul>
            </div>
                  </div>
              
        <div class="social-platform-wrapper">
          <div class="social-platforms social-platforms--facebook">
            <a class="social-icon" href="https://www.facebook.com/Nestle?brandloc=DISABLE" target="" title="" aria-label="Facebook">
                <svg title="Facebook" aria-label="Facebook" role="img" class="da-vinci-code-icon da-vinci-code-icon--social__facebook " >
    <use xlink:href="#social__facebook"></use>
  </svg>

            </a>
          </div>

                      <div class="social-links">
              <ul>
                                  <li><a href="https://www.facebook.com/Nestle?brandloc=DISABLE" title="" target="">Nestlé Corporate</a></li>
                                  <li><a href="https://www.facebook.com/NestleCareers" title="" target="">Nestlé Careers</a></li>
                              </ul>
            </div>
                  </div>
              
        <div class="social-platform-wrapper">
          <div class="social-platforms social-platforms--linkedin">
            <a class="social-icon" href="https://www.linkedin.com/company/nestle-s-a-" target="" title="" aria-label="Linkedin">
                <svg title="Linkedin" aria-label="Linkedin" role="img" class="da-vinci-code-icon da-vinci-code-icon--social__linkedin " >
    <use xlink:href="#social__linkedin"></use>
  </svg>

            </a>
          </div>

                      <div class="social-links">
              <ul>
                                  <li><a href="https://www.linkedin.com/company/nestle-s-a-" title="" target="">Nestlé Corporate</a></li>
                                  <li><a href="https://www.linkedin.com/company/nestl%c3%a9-insights" title="" target="">Nestlé Insights</a></li>
                              </ul>
            </div>
                  </div>
              
        <div class="social-platform-wrapper">
          <div class="social-platforms social-platforms--flickr">
            <a class="social-icon" href="https://www.flickr.com/photos/nestle/collections/" target="" title="" aria-label="Flickr">
                <svg title="Flickr" aria-label="Flickr" role="img" class="da-vinci-code-icon da-vinci-code-icon--social__flickr " >
    <use xlink:href="#social__flickr"></use>
  </svg>

            </a>
          </div>

                      <div class="social-links">
              <ul>
                                  <li><a href="https://www.flickr.com/photos/nestle/collections/" title="" target="">Nestlé on Flickr</a></li>
                              </ul>
            </div>
                  </div>
              
        <div class="social-platform-wrapper">
          <div class="social-platforms social-platforms--youtube">
            <a class="social-icon" href="https://www.youtube.com/user/NestleCorporate" target="" title="" aria-label="Youtube">
                <svg title="Youtube" aria-label="Youtube" role="img" class="da-vinci-code-icon da-vinci-code-icon--social__youtube " >
    <use xlink:href="#social__youtube"></use>
  </svg>

            </a>
          </div>

                      <div class="social-links">
              <ul>
                                  <li><a href="https://www.youtube.com/user/NestleCorporate" title="" target="">Nestlé Corporate</a></li>
                              </ul>
            </div>
                  </div>
              
        <div class="social-platform-wrapper">
          <div class="social-platforms social-platforms--instagram">
            <a class="social-icon" href="https://www.instagram.com/nestle/" target="" title="" aria-label="Instagram">
                <svg title="Instagram" aria-label="Instagram" role="img" class="da-vinci-code-icon da-vinci-code-icon--social__instagram " >
    <use xlink:href="#social__instagram"></use>
  </svg>

            </a>
          </div>

                      <div class="social-links">
              <ul>
                                  <li><a href="https://www.instagram.com/nestle/" title="" target="">Nestlé Corporate</a></li>
                                  <li><a href="https://www.instagram.com/nestle.careers" title="" target="">Nestlé Careers</a></li>
                              </ul>
            </div>
                  </div>
          </div>
  </div>

  </div>

                  </div>
                </div>
                          </div>
          </div>
          <div class="footer-below">
            <div class="container">
                              <div class="row">
                  <div class="col-md-12">
                      <div class="region region-footer-below">
    <div class="block-view-container">
  <section id="block-reportconcernformmodalblock" data-block-plugin-id="report_concern_form_modal_block" class="block block-lcp-general block-report-concern-form-modal-block clearfix">
    
          <h2 class="block-title"><span>Report Concern form modal block</span></h2> 
        

          <a href="/report-concern" class="use-ajax button floating-feedback-button">Report Concern</a>
      </section>
</div>
<nav role="navigation" aria-labelledby="block-da-vinci-code-subfootermenu-menu" id="block-da-vinci-code-subfootermenu" data-block-plugin-id="system_menu_block:sub-footer-menu">
            
  <h2 class="visually-hidden" id="block-da-vinci-code-subfootermenu-menu">Sub Footer Menu</h2>
  

        
      <ul data-region="footer_below" class="menu menu--sub-footer-menu nav">
                      <li class="first">
                                        <a href="/info/copyright" target="_self" title="© 2020 Nestlé" data-drupal-link-system-path="node/476716">© 2020 Nestlé</a>
              </li>
                      <li>
                                        <a href="/info/sitemap" title="Site map" data-drupal-link-system-path="node/476761">Site map</a>
              </li>
                      <li>
                                        <a href="/info/help" title="Help" data-drupal-link-system-path="node/476726">Help</a>
              </li>
                      <li>
                                        <a href="/aboutus/businessprinciples/privacy" title="Privacy" data-drupal-link-system-path="node/473636">Privacy</a>
              </li>
                      <li>
                                        <a href="/info/cookies" title="Cookies" data-drupal-link-system-path="node/476711">Cookies</a>
              </li>
                      <li>
                                        <a href="/info/tc" title="Terms of use" data-drupal-link-system-path="node/476771">Terms of use</a>
              </li>
                      <li>
                                        <a href="/info/aboutsite" title="Accessibility" data-drupal-link-system-path="node/476681">Accessibility</a>
              </li>
                      <li>
                                        <a href="/info/rsslinkpage" title="RSS" data-drupal-link-system-path="node/476746">RSS</a>
              </li>
                      <li>
                                        <a href="/info/sign-me-up" title="Sign me up" data-drupal-link-system-path="webform/sign_up">Sign me up</a>
              </li>
                      <li>
                                        <a href="/info/sign-me-up/unsubscribesignupuser" title="Unsubscribe" data-drupal-link-system-path="webform/unsubscribe">Unsubscribe</a>
              </li>
                      <li class="last">
                                        <a href="/info/contactus/contactus" title="Contact us" data-drupal-link-system-path="node/476851">Contact us</a>
              </li>
        </ul>
  

  </nav>

  </div>

                  </div>
                </div>
                          </div>
          </div>
        </footer>
      </div>
    </div>
  </div>
</div>
<div class="nav-overlay hide">
  <div class="nav-overlay-inner"></div>
</div>


  </div>

    
    <script type="application/json" data-drupal-selector="drupal-settings-json">{"path":{"baseUrl":"\/","scriptPath":null,"pathPrefix":"","currentPath":"node\/472961","currentPathIsAdmin":false,"isFront":true,"currentLanguage":"en"},"pluralDelimiter":"\u0003","suppressDeprecationErrors":true,"ajaxPageState":{"libraries":"ajax_loader\/ajax_loader.throbber,better_exposed_filters\/auto_submit,better_exposed_filters\/general,blazy\/load,bootstrap\/popover,bootstrap\/tooltip,core\/drupal.autocomplete,core\/drupal.dialog.ajax,core\/html5shiv,core\/picturefill,da_vinci_code\/counterUP,da_vinci_code\/customScrollBar,da_vinci_code\/customValidation,da_vinci_code\/global-styling,da_vinci_code\/niceSelect,da_vinci_code\/scrollMagic,da_vinci_code\/slick,da_vinci_code\/webformCustomCheckbox,da_vinci_code\/webformCustomFileInput,datalayer\/ajax,datalayer\/behaviors,dsu_c_colorlibrary\/general,dsu_c_ctabutton\/general,dsu_c_entitycycle\/entitycycle,dsu_c_entitycycle\/entitycycle-item,dsu_c_image\/general,dsu_c_map\/general,dsu_c_shareprice\/shareprice,dsu_c_sideimagetext\/general,dsu_c_socialbuttons\/socialbuttons,dsu_c_text\/general,dsu_contact_germany\/contactgermany_library,dsu_lazy_load_image\/lazy_load_image,extlink\/drupal.extlink,lcp_global_configurations\/back_to_top,ln_datalayer\/datalayer-library,paragraphs\/drupal.paragraphs.unpublished,slick\/slick.css,slick\/slick.main.fullwidth,social_media\/basic,system\/base,views\/views.ajax,views\/views.module","theme":"da_vinci_code","theme_token":null},"ajaxTrustedUrl":{"\/home":true,"\/searchresults":true},"ajaxLoader":{"markup":"\u003Cdiv class=\u0022ajax-throbber sk-circle\u0022\u003E\n              \u003Cdiv class=\u0022sk-circle1 sk-child\u0022\u003E\u003C\/div\u003E\n              \u003Cdiv class=\u0022sk-circle2 sk-child\u0022\u003E\u003C\/div\u003E\n              \u003Cdiv class=\u0022sk-circle3 sk-child\u0022\u003E\u003C\/div\u003E\n              \u003Cdiv class=\u0022sk-circle4 sk-child\u0022\u003E\u003C\/div\u003E\n              \u003Cdiv class=\u0022sk-circle5 sk-child\u0022\u003E\u003C\/div\u003E\n              \u003Cdiv class=\u0022sk-circle6 sk-child\u0022\u003E\u003C\/div\u003E\n              \u003Cdiv class=\u0022sk-circle7 sk-child\u0022\u003E\u003C\/div\u003E\n              \u003Cdiv class=\u0022sk-circle8 sk-child\u0022\u003E\u003C\/div\u003E\n              \u003Cdiv class=\u0022sk-circle9 sk-child\u0022\u003E\u003C\/div\u003E\n              \u003Cdiv class=\u0022sk-circle10 sk-child\u0022\u003E\u003C\/div\u003E\n              \u003Cdiv class=\u0022sk-circle11 sk-child\u0022\u003E\u003C\/div\u003E\n              \u003Cdiv class=\u0022sk-circle12 sk-child\u0022\u003E\u003C\/div\u003E\n            \u003C\/div\u003E","hideAjaxMessage":false,"alwaysFullscreen":true,"throbberPosition":"body"},"clientside_validation_jquery":{"validate_all_ajax_forms":1,"force_validate_on_blur":false,"messages":{"required":"This field is required.","remote":"Please fix this field.","email":"Please enter a valid email address.","url":"Please enter a valid URL.","date":"Please enter a valid date.","dateISO":"Please enter a valid date (ISO).","number":"Please enter a valid number.","digits":"Please enter only digits.","equalTo":"Please enter the same value again.","maxlength":"Please enter no more than {0} characters.","minlength":"Please enter at least {0} characters.","rangelength":"Please enter a value between {0} and {1} characters long.","range":"Please enter a value between {0} and {1}.","max":"Please enter a value less than or equal to {0}.","min":"Please enter a value greater than or equal to {0}.","step":"Please enter a multiple of {0}."}},"dataLayer":{"defaultLang":"en","languages":{"en":{"id":"en","name":"English","direction":"ltr","weight":0}}},"data":{"extlink":{"extTarget":true,"extTargetNoOverride":false,"extNofollow":false,"extFollowNoOverride":false,"extClass":"ext","extLabel":"(link is external)","extImgClass":false,"extSubdomains":false,"extExclude":"","extInclude":"","extCssExclude":"","extCssExplicit":".field--type-text-long, .field--name-field-summary-text","extAlert":false,"extAlertText":"This link will take you to an external web site. We are not responsible for their content.","mailtoClass":"0","mailtoLabel":"(link sends email)"}},"bootstrap":{"forms_has_error_value_toggle":1,"modal_animation":1,"modal_backdrop":"true","modal_focus_input":1,"modal_keyboard":1,"modal_select_text":1,"modal_show":1,"modal_size":"","popover_enabled":1,"popover_animation":1,"popover_auto_close":1,"popover_container":"body","popover_content":"","popover_delay":"0","popover_html":0,"popover_placement":"right","popover_selector":"","popover_title":"","popover_trigger":"click","tooltip_enabled":1,"tooltip_animation":1,"tooltip_container":"body","tooltip_delay":"0","tooltip_html":0,"tooltip_placement":"auto left","tooltip_selector":"","tooltip_trigger":"hover"},"blazy":{"loadInvisible":false,"offset":100,"saveViewportOffsetDelay":50},"blazyIo":{"enabled":false,"disconnect":false,"rootMargin":"0px","threshold":[0]},"slick":{"accessibility":true,"adaptiveHeight":false,"autoplay":false,"autoplaySpeed":3000,"pauseOnHover":true,"pauseOnDotsHover":false,"arrows":true,"downArrow":false,"downArrowTarget":"","downArrowOffset":0,"centerMode":false,"centerPadding":"50px","dots":false,"dotsClass":"slick-dots","draggable":true,"fade":false,"focusOnSelect":false,"infinite":true,"initialSlide":0,"lazyLoad":"ondemand","mouseWheel":false,"randomize":false,"rtl":false,"rows":1,"slidesPerRow":1,"slide":"","slidesToShow":1,"slidesToScroll":1,"speed":500,"swipe":true,"swipeToSlide":false,"edgeFriction":0.34999999999999998,"touchMove":true,"touchThreshold":5,"useCSS":true,"cssEase":"ease","cssEaseBezier":"","cssEaseOverride":"","useTransform":true,"easing":"linear","variableWidth":false,"vertical":false,"verticalSwiping":false,"waitForAnimate":true,"pauseOnFocus":true},"views":{"ajax_path":"\/views\/ajax","ajaxViews":{"views_dom_id:9fdeda6fdeb1bed4bda27d05c9c36e777d42aeed23e2c232723f50ad3fbf3b06":{"view_name":"automatic_dated_list","view_display_id":"automatic_dated_list_block","view_args":"","view_path":"\/node\/472961","view_base_path":null,"view_dom_id":"9fdeda6fdeb1bed4bda27d05c9c36e777d42aeed23e2c232723f50ad3fbf3b06","pager_element":0,"viewsreference":{"data":{"article_type":[],"category_icon":1,"clear_button":1,"contact_us_label":"Contact Us","content_types":[],"default_search_keyword":"","document_topic_selector":"All","footer_label":"Can\u0027t find what you are looking for?","no_result_label":"No result for","no_result_label_second":"in the FAQ","published_on":"","search_label":"Quick Search","submit_query_label":"Search here","topic_selector":[],"year":1,"hide_language_filter":0,"hide_topic_filter":0,"activatepager":null,"number_of_pages":null,"view_all_label":null,"view_all_link":null,"view_title":null,"brand_select_website_label":"Select website","noofitems":"0","argument":null,"limit":"3","offset":"","pager":"some","title":null,"business_filter":null,"country_filter":null,"internal_path_selector":[]},"enabled_settings":{"submit_query_label":"submit_query_label","footer_label":"footer_label","default_search_keyword":"default_search_keyword","topic_selector":"topic_selector","document_topic_selector":"document_topic_selector","published_on":"published_on","content_types":"content_types","clear_button":"clear_button","search_label":"search_label","no_result_label_second":"no_result_label_second","hide_language_filter":"hide_language_filter","number_of_days_after_today":"number_of_days_after_today","category_icon":"category_icon","hide_topic_filter":"hide_topic_filter","contact_us_label":"contact_us_label","news_press_release_by_topic":"news_press_release_by_topic","order_by":"order_by","year":"year","no_result_label":"no_result_label","article_type":"article_type","brand_select_website_label":"brand_select_website_label","noofitems":"noofitems","pager":"pager","limit":"limit","offset":"offset","country_filter":"country_filter","business_filter":"business_filter","internal_path_selector":"internal_path_selector"}}}}},"ajax":[],"user":{"uid":0,"permissionsHash":"09f01ce3ce076935378b697c7313f98dae6c91ca39e2c767569e2fe4f47b05a7"}}</script>
<script src="/sites/default/files/js/js_UVUgTE-5VBYKYvhok8y_SQ8UxGaDl3TgAppsRTfatog.js"></script>
<script src="//cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js" integrity="sha256-nuL8/2cJ5NDSSwnKD8VqreErSWHtnEP9E7AySL+1ev4=" crossorigin="anonymous"></script>
<script src="/sites/default/files/js/js_5hp0u3w9Kv2uoSYSSDq9aBET5Ws9Go_jAcLOsN09_20.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TimelineMax.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/ScrollMagic.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/plugins/animation.gsap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/plugins/debug.addIndicators.min.js"></script>
<script src="/sites/default/files/js/js_iL5sDvsGPWiIKseTZP-s2nbnKRsit8QDNJpfZvx66EE.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
<script src="/sites/default/files/js/js_JOK4NLBtp2jI-a6mpwwrn3VNnqxjBzV4TRWt9JVFyos.js"></script>

  <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"904c8e21af","applicationID":"282070461","transactionName":"ZFYBZxFWXEZSAUJfXl0cIlAXXl1bHCZEQ0FSXz9dDFNXaXANWEJDXF8PVhFrfFpXB2BfVERwDF0XRV1ZXwdEGw9FWgZE","queueTime":0,"applicationTime":1233,"atts":"SBECEVlMT0g=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
