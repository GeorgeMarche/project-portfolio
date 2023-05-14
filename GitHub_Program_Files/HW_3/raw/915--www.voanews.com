<!DOCTYPE html>
<html lang="en" dir="ltr" prefix="og: https://ogp.me/ns#">
  <head>
    <!-- Google Tag Manager -->
      <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push(

      {'gtm.start': new Date().getTime(),event:'gtm.js'}
      );var f=d.getElementsByTagName(s)[0],
      j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
      'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
      })(window,document,'script','dataLayer','GTM-N8MP7P');</script>
    <!-- End Google Tag Manager -->
    <meta charset="utf-8" /><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"e7f803923b",applicationID:"517970072"};window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var i=t[n]={exports:{}};e[n][0].call(i.exports,function(t){var i=e[n][1][t];return r(i||t)},i,i.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(e,t,n){function r(){}function i(e,t,n){return function(){return o(e,[u.now()].concat(c(arguments)),t?null:this,n),t?void 0:this}}var o=e("handle"),a=e(6),c=e(7),f=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],p="api-",l=p+"ixn-";a(d,function(e,t){s[t]=i(p+t,!0,"api")}),s.addPageAction=i(p+"addPageAction",!0),s.setCurrentRouteName=i(p+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,i="function"==typeof t;return o(l+"tracer",[u.now(),e,n],r),function(){if(f.emit((i?"":"no-")+"fn-start",[u.now(),r,i],n),i)try{return t.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],n),e}finally{f.emit("fn-end",[u.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=i(l+t)}),newrelic.noticeError=function(e,t){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,t])}},{}],2:[function(e,t,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,c=e(8);t.exports=r,t.exports.offset=a,t.exports.getLastTimestamp=i},{}],3:[function(e,t,n){function r(e,t){var n=e.getEntries();n.forEach(function(e){"first-paint"===e.name?d("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&d("timing",["fcp",Math.floor(e.startTime)])})}function i(e,t){var n=e.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(e){e.getEntries().forEach(function(e){e.hadRecentInput||d("cls",[e])})}function a(e){if(e instanceof m&&!g){var t=Math.round(e.timeStamp),n={type:e.type};t<=p.now()?n.fid=p.now()-t:t>p.offset&&t<=Date.now()?(t-=p.offset,n.fid=p.now()-t):t=p.now(),g=!0,d("timing",["fi",t,n])}}function c(e){d("pageHide",[p.now(),e])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var f,u,s,d=e("handle"),p=e("loader"),l=e(5),m=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){f=new PerformanceObserver(r);try{f.observe({entryTypes:["paint"]})}catch(v){}u=new PerformanceObserver(i);try{u.observe({entryTypes:["largest-contentful-paint"]})}catch(v){}s=new PerformanceObserver(o);try{s.observe({type:"layout-shift",buffered:!0})}catch(v){}}if("addEventListener"in document){var g=!1,y=["click","keydown","mousedown","pointerdown","touchstart"];y.forEach(function(e){document.addEventListener(e,a,!1)})}l(c)}},{}],4:[function(e,t,n){function r(e,t){if(!i)return!1;if(e!==i)return!1;if(!t)return!0;if(!o)return!1;for(var n=o.split("."),r=t.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,f=c.match(a);f&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(i="Safari",o=f[1])}t.exports={agent:i,version:o,match:r}},{}],5:[function(e,t,n){function r(e){function t(){e(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,t,!1)}t.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],6:[function(e,t,n){function r(e,t){var n=[],r="",o=0;for(r in e)i.call(e,r)&&(n[o]=t(r,e[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],7:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,i=n-t||0,o=Array(i<0?0:i);++r<i;)o[r]=e[t+r];return o}t.exports=r},{}],8:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function i(e){function t(e){return e&&e instanceof r?e:e?f(e,c,o):o()}function n(n,r,i,o){if(!p.aborted||o){e&&e(n,r,i);for(var a=t(i),c=v(n),f=c.length,u=0;u<f;u++)c[u].apply(a,r);var d=s[w[n]];return d&&d.push([b,n,r,a]),a}}function l(e,t){h[e]=v(e).concat(t)}function m(e,t){var n=h[e];if(n)for(var r=0;r<n.length;r++)n[r]===t&&n.splice(r,1)}function v(e){return h[e]||[]}function g(e){return d[e]=d[e]||i(n)}function y(e,t){u(e,function(e,n){t=t||"feature",w[n]=t,t in s||(s[t]=[])})}var h={},w={},b={on:l,addEventListener:l,removeEventListener:m,emit:n,get:g,listeners:v,context:t,buffer:y,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(p.aborted=!0,s=p.backlog={})}var c="nr@context",f=e("gos"),u=e(6),s={},d={},p=t.exports=i();p.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(i.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[t]=r,r}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){i.buffer([e],r),i.emit(e,t,n)}var i=e("ee").get("handle");t.exports=r,r.ee=i},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!E++){var e=b.info=NREUM.info,t=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return u.abort();f(h,function(t,n){e[t]||(e[t]=n)});var n=a();c("mark",["onload",n+b.offset],null,"api"),c("timing",["load",n]);var r=p.createElement("script");r.src="https://"+e.agent,t.parentNode.insertBefore(r,t)}}function i(){"complete"===p.readyState&&o()}function o(){c("mark",["domContent",a()+b.offset],null,"api")}var a=e(2),c=e("handle"),f=e(6),u=e("ee"),s=e(4),d=window,p=d.document,l="addEventListener",m="attachEvent",v=d.XMLHttpRequest,g=v&&v.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:v,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var y=""+location,h={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1184.min.js"},w=v&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),b=t.exports={offset:a.getLastTimestamp(),now:a,origin:y,features:{},xhrWrappable:w,userAgent:s};e(1),e(3),p[l]?(p[l]("DOMContentLoaded",o,!1),d[l]("load",r,!1)):(p[m]("onreadystatechange",i),d[m]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var E=0},{}],"wrap-function":[function(e,t,n){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e("ee"),o=e(7),a="nr@original",c=Object.prototype.hasOwnProperty,f=!1;t.exports=function(e,t){function n(e,t,n,i){function nrWrapper(){var r,a,c,f;try{a=this,r=o(arguments),c="function"==typeof n?n(r,a):n||{}}catch(u){p([u,"",[r,a,i],c])}s(t+"start",[r,a,i],c);try{return f=e.apply(a,r)}catch(d){throw s(t+"err",[r,a,d],c),d}finally{s(t+"end",[r,a,f],c)}}return r(e)?e:(t||(t=""),nrWrapper[a]=e,d(e,nrWrapper),nrWrapper)}function u(e,t,i,o){i||(i="");var a,c,f,u="-"===i.charAt(0);for(f=0;f<t.length;f++)c=t[f],a=e[c],r(a)||(e[c]=n(a,u?c+i:i,o,c))}function s(n,r,i){if(!f||t){var o=f;f=!0;try{e.emit(n,r,i,t)}catch(a){p([a,n,r,i])}f=o}}function d(e,t){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(e);return n.forEach(function(n){Object.defineProperty(t,n,{get:function(){return e[n]},set:function(t){return e[n]=t,t}})}),t}catch(r){p([r])}for(var i in e)c.call(e,i)&&(t[i]=e[i]);return t}function p(t){try{e.emit("internal-error",t)}catch(n){}}return e||(e=i),n.inPlace=u,n.flag=a,n}},{}]},{},["loader"]);</script>
<link rel="shortlink" href="https://www.voanews.com/" />
<meta property="fb:pages" content="36235438073" />
<link rel="canonical" href="https://www.voanews.com/" />
<meta name="description" content="Voice of America is an international news and broadcast organization serving Central and Eastern Europe, the Caucasus, Central Asia, Russia, the Middle East and Balkan countries" />
<meta name="msvalidate.01" content="3286EE554B6F672A6F2E608C02343C0E" />
<meta name="Generator" content="Drupal 8 (https://www.drupal.org)" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="//tags.tiqcdn.com/utag/bbg/voa-pangea/prod/utag.sync.js"></script>
<link rel="sitemap" type="application/rss+xml" href="/sitemap.xml" />
<link rel="manifest" href="/modules/custom/voa_pwa/js/manifest.json?voltron=universalDefender" />
<meta name="theme-color" content="#3a79b7" />
<link rel="shortcut icon" href="/favicon.ico" type="image/vnd.microsoft.icon" />
<link rel="delete-form" href="/taxonomy/term/582251/delete" />
<link rel="edit-form" href="/taxonomy/term/582251/edit" />
<link rel="latest-version" href="/taxonomy/term/582251/latest" />

    <title>Home Page | Voice of America - English</title>
    <link rel="stylesheet" media="all" href="/sites/g/files/cauiqe166/files/css/css_L8hQrRNq9o9zS8wBvg9345sOmzwyN2YHqdCX-tId9T0.css" />
<link rel="stylesheet" media="all" href="/modules/custom/voa_breaking_news/css/voa-breaking-news.theme.css?qhqthg" />
<link rel="stylesheet" media="all" href="/sites/g/files/cauiqe166/files/css/css_r2um4EuB5KpPD9w5186jK0JpYBzKeff8gMbqe3WotIY.css" />

    
<!--[if lte IE 8]>
<script src="/sites/g/files/cauiqe166/files/js/js_VtafjXmRvoUgAzqzYTA3Wrjkx9wcWhjP0G4ZnnqRamA.js"></script>
<![endif]-->
<script src="/sites/g/files/cauiqe166/files/js/js_QHqjxhGPGgZFwOfW92tmrVpssmC1sbO0zDG4TgLmaEI.js"></script>


    <!-- noscript css -->
      <noscript>
        <style>
         
.b-lazy, .b-responsive {
  display: none !important;
}
        </style>
      </noscript>

          <style>
        @media (min-width: 1280px) {
          .l-page {
            margin-left: auto;
            margin-right: auto;
            max-width: 1600px;
          }
        }
      </style>
      </head>
  <body>


    <!-- Google Tag Manager (noscript) -->
      <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N8MP7P"
      height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
        <a href="#main-content" class="visually-hidden focusable">
      Skip to main content
    </a>
    <script type="text/javascript">var utag_data = {"tags":"Home Page","content_type":"index","page_type":"index","subcontent_type":"homepage","page_name":"Home Page","page_title":"Home Page","long_headline":"Home Page","headline":"Home Page","runs_js":"yes","language":"English","language_service":"voa english","entity":"voa","platform":"Responsive","short_language_service":"en","platform_short":"r","property_id":"461","enviro_type":"prod","domain":"www.voanews.com","url":"www.voanews.com\/home-page"}</script>
<script type="text/javascript">
  (function(a,b,c,d){
  a='//tags.tiqcdn.com/utag/bbg/voa-pangea/prod/utag.js';
  b=document;c='script';d=b.createElement(c);d.src=a;d.type='text/java'+c;d.async=true;
  a=b.getElementsByTagName(c)[0];a.parentNode.insertBefore(d,a);
  })();
</script>

      <div class="dialog-off-canvas-main-canvas" data-off-canvas-main-canvas>
    <div class="l-page">
  <div id="breaking-news-ajax"></div>

      <div class="site-header ">

  <div class="site-header__bar">

    <div class="site-header__primary">

      <div class="site-header__menu">
        <button class="button site-header__menu-item" aria-label="Open main navigation"><span class="hidden">Open main navigation</span></button>
        <nav class="site-header__mega-menu site-header__subnav">
          <div class="site-header__mega-menu--inner">
            <!-- This is hidden by default -->
            <div class="grid media-schedule__block">
              <div class="col-1 col--hidden-large">
                                <div>
  
    
      <div class="schedule-menu voa-media-schedule-menu-block">
            <div class="channel-schedule__section-title">
        <span class="channel-schedule__icon fa fa-play"></span>
                  Live TV              </div>
      <div class="channel-schedule__wrapper">
        <div class="channel-schedule-wrapper" id="channel-296-wrapper-mobile" data-menu-block-channel="296" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

              <div class="channel-schedule-wrapper" id="channel-266-wrapper-mobile" data-menu-block-channel="266" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

            <div class="schedule-menu__links">
          <div class="schedule-menu__link"><a
              href="/watch/schedule">Full Schedule</a>
          </div>
          <div class="schedule-menu__link"><a
              href="/watch/programs">All Programs</a>
          </div>
        </div>
      </div>
      </div>

  </div>

                                                <div>
  
    
      <div class="schedule-menu voa-media-schedule-menu-block">
            <div class="channel-schedule__section-title">
        <span class="channel-schedule__icon fa fa-volume-up"></span>
                  Live Radio              </div>
      <div class="channel-schedule__wrapper">
        <div class="channel-schedule-wrapper" id="channel-246-wrapper-mobile" data-menu-block-channel="246" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

              <div class="channel-schedule-wrapper" id="channel-251-wrapper-mobile" data-menu-block-channel="251" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

              <div class="channel-schedule-wrapper" id="channel-256-wrapper-mobile" data-menu-block-channel="256" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

            <div class="schedule-menu__links">
          <div class="schedule-menu__link"><a
              href="/listen/schedule">Full Schedule</a>
          </div>
          <div class="schedule-menu__link"><a
              href="/listen/programs">All Programs</a>
          </div>
        </div>
      </div>
      </div>

  </div>

                              </div>
            </div>

            
    
    
      
              <ul class="grid site-header__mega-menu-list">
                              <li class="site-header__mega-menu-item col-2 col-2--full-mobile site-header__mega-menu-item--header">
          <a href="/usa" class="site-header__mega-menu-item-link site-header__mega-menu-item-link--header" data-drupal-link-system-path="taxonomy/term/32681">United States</a>
                                    <ul class="site-header__mega-menu-sub-list">
                                      <div class="grid">
        <div class="col-2 site-header__mega-menu-sub-column">
                      <li class="site-header__mega-menu-item">
              <a href="/usa/us-politics" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/32936">US Politics</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/usa/immigration" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/33021">Immigration</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/usa/all-about-america" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/562771">All About America</a>
                          </li>
                  </div>
        <div class="col-2 site-header__mega-menu-sub-column">
                      <li class="site-header__mega-menu-item">
              <a href="/science-health" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/562831">Science &amp; Health</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/silicon-valley-technology" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/61">Silicon Valley &amp; Technology</a>
                          </li>
                  </div>
      </div>
        </ul>
  
                  </li>
                      <li class="site-header__mega-menu-item col-2 col-2--full-mobile site-header__mega-menu-item--header">
          <span class="site-header__mega-menu-item-link site-header__mega-menu-item-link--header">World</span>
                                    <ul class="site-header__mega-menu-sub-list">
                                      <div class="grid">
        <div class="col-2 site-header__mega-menu-sub-column">
                      <li class="site-header__mega-menu-item">
              <a href="/africa" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/562841">Africa</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/americas" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/562846">The Americas</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/east-asia-pacific" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/562821">East Asia Pacific</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/europe" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/32686">Europe</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/extremism-watch" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/51">Extremism Watch</a>
                          </li>
                  </div>
        <div class="col-2 site-header__mega-menu-sub-column">
                      <li class="site-header__mega-menu-item">
              <a href="/middle-east" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/562811">Middle East</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/south-central-asia" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/562866">South &amp; Central Asia</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/east-asia-pacific/voa-news-china" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/584966">VOA News on China</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/middle-east/voa-news-iran" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/33026">VOA News on Iran</a>
                          </li>
                  </div>
      </div>
        </ul>
  
                  </li>
                      <li class="site-header__mega-menu-item col-2 col-2--full-mobile site-header__mega-menu-item--header">
          <span class="site-header__mega-menu-item-link site-header__mega-menu-item-link--header">Sections</span>
                                    <ul class="site-header__mega-menu-sub-list">
                                      <div class="grid">
        <div class="col-2 site-header__mega-menu-sub-column">
                      <li class="site-header__mega-menu-item">
              <a href="/arts-culture" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/562826">Arts &amp; Culture</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/day-photos" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/32661">Day in Photos</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/economy-business" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/66">Economy &amp; Business</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/press-freedom" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/562871">Press Freedom</a>
                          </li>
                  </div>
        <div class="col-2 site-header__mega-menu-sub-column">
                      <li class="site-header__mega-menu-item">
              <a href="/plugged-greta-van-susteren" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/156">Plugged in with Greta Van Susteren</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/student-union" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/32976">VOA StudentU</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/voa-connect" class="site-header__mega-menu-item-link" data-drupal-link-system-path="taxonomy/term/191">VOA Connect</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/refugees" class="site-header__mega-menu-item-link" data-drupal-link-system-path="node/4078021">Refugees</a>
                          </li>
                  </div>
      </div>
        </ul>
  
                  </li>
              </ul>
  


  

          </div>
        </nav>
      </div>

        <div>
    
<div id="block-featuredmenu">
  
  
              
        <ul class="site-header__featured-menu">
      <li class="site-header__mega-menu-item-link site-header__mega-menu-featured">FEATURED</li>
              <li><a class="site-header__featured-menu-item" href="/usa">US News</a></li>
              <li><a class="site-header__featured-menu-item" href="/press-freedom">Press Freedom</a></li>
              <li><a class="site-header__featured-menu-item" href="/middle-east/voa-news-iran">VOA News on Iran</a></li>
              <li><a class="site-header__featured-menu-item" href="/covid-19-pandemic">COVID-19 Pandemic</a></li>
              <li><a class="site-header__featured-menu-item" href="https://editorials.voa.gov/">Editorials</a></li>
          </ul>
  
  </div>

  </div>

    </div>

    <a href="/" class="site-header__branding"><img alt="Voice of America Logo" src="/themes/custom/voa/logo.svg"/></a>

    <div class="site-header__secondary">
      <div class="site-header__secondary--grouping">
        <button id="js-search-drop" class="button site-header__item">
          <span class="site-header__icon fa fa-search"></span><span
            class="site-header__icon-text site-header__icon-text--medium-only">Search</span>
        </button>
        <div class="site-header__search-drop site-header__subnav">
          <div class="grid">
            <div class="col-1">
              <form class="site-header__search-form" action="/search" method="GET">
                <label class="site-header__search-label" for="header-search">Search VOA News</label>
                <input placeholder="Search VOA News" class="site-header__search" id="header-search" type="text"
                       name="search_api_fulltext">
                <input type="hidden" name="type" value="1">
                <input type="hidden" name="sort_by" value="publication_time">
                <button class="button site-header__search-button fa fa-search" type="submit"><span
                    class="site-header__search-label">Search</span></button>
              </form>
            </div>
          </div>
        </div>
        <div class="site-header__dropdown">
          <button id="js-language-drop" class="button site-header__item">
            <span class="site-header__icon fa fa-globe"></span>
              <span class="site-header__icon-text site-header__icon-text">Lang</span>
          </button>
        </div>
                <a href="/watch" id="js-watch-drop" data-target=".site-header__watch-drop" class="site-header__item site-header__item--secondary site-header__item--wide-only">
          <span class="site-header__icon fa fa-play"></span><span class="site-header__icon-text">Live TV</span>
        </a>
        <div class="site-header__watch-drop site-header__subnav">
          <div class="grid">
            <div class="col-1">
              <div id="watch-drop-menu">
                <div>
  
    
      <div class="schedule-menu voa-media-schedule-menu-block">
            <div class="channel-schedule__section-title">
        <span class="channel-schedule__icon fa fa-play"></span>
                  Live TV              </div>
      <div class="channel-schedule__wrapper">
        <div class="channel-schedule-wrapper" id="channel-296-wrapper-desktop" data-menu-block-channel="296" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

              <div class="channel-schedule-wrapper" id="channel-266-wrapper-desktop" data-menu-block-channel="266" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

            <div class="schedule-menu__links">
          <div class="schedule-menu__link"><a
              href="/watch/schedule">Full Schedule</a>
          </div>
          <div class="schedule-menu__link"><a
              href="/watch/programs">All Programs</a>
          </div>
        </div>
      </div>
      </div>

  </div>

              </div>
            </div>
          </div>
        </div>
                        <a href="/listen" id="js-listen-drop" data-target=".site-header__listen-drop" class="site-header__item site-header__item--secondary site-header__item--wide-only site-header__subnav"><span
            class="site-header__icon fa fa-volume-up"></span><span class="site-header__icon-text">Live Radio</span></a>
        <div class="site-header__listen-drop site-header__subnav">
          <div class="grid">
            <div class="col-1">
              <div id="listen-drop-menu">
                <div>
  
    
      <div class="schedule-menu voa-media-schedule-menu-block">
            <div class="channel-schedule__section-title">
        <span class="channel-schedule__icon fa fa-volume-up"></span>
                  Live Radio              </div>
      <div class="channel-schedule__wrapper">
        <div class="channel-schedule-wrapper" id="channel-246-wrapper-desktop" data-menu-block-channel="246" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

              <div class="channel-schedule-wrapper" id="channel-251-wrapper-desktop" data-menu-block-channel="251" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

              <div class="channel-schedule-wrapper" id="channel-256-wrapper-desktop" data-menu-block-channel="256" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

            <div class="schedule-menu__links">
          <div class="schedule-menu__link"><a
              href="/listen/schedule">Full Schedule</a>
          </div>
          <div class="schedule-menu__link"><a
              href="/listen/programs">All Programs</a>
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

  <div class="site-header__date">
      </div>

  <div class="site-header__language-drop site-header__subnav">
    <div class="site-header__language-wrap">
              <div class="site-header__language-region">
          <div class="section-title site-header__language-region-title">English</div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voanews-com" href="https://voanews.com">English</a>
              <a class="site-header__language-url" href="https://voanews.com">voanews.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title learningenglish-voanews-com" href="https://learningenglish.voanews.com">Learning English</a>
              <a class="site-header__language-url" href="https://learningenglish.voanews.com">learningenglish.voanews.com</a>
            </div>
                  </div>
              <div class="site-header__language-region">
          <div class="section-title site-header__language-region-title">Eastern &amp; Central Europe</div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title zeriamerikes-com" href="https://zeriamerikes.com">Shqip</a>
              <a class="site-header__language-url" href="https://zeriamerikes.com">zeriamerikes.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title ba-voanews-com" href="https://ba.voanews.com">Bosanski</a>
              <a class="site-header__language-url" href="https://ba.voanews.com">ba.voanews.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title gr-voanews-com" href="https://gr.voanews.com">Ελληνικά</a>
              <a class="site-header__language-url" href="https://gr.voanews.com">gr.voanews.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title mk-voanews-com" href="https://mk.voanews.com">Македонски</a>
              <a class="site-header__language-url" href="https://mk.voanews.com">mk.voanews.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title glasamerike-net" href="https://glasamerike.net">Srpski</a>
              <a class="site-header__language-url" href="https://glasamerike.net">glasamerike.net</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title ukrainian-voanews-com" href="https://ukrainian.voanews.com">Українська</a>
              <a class="site-header__language-url" href="https://ukrainian.voanews.com">ukrainian.voanews.com</a>
            </div>
                  </div>
              <div class="site-header__language-region">
          <div class="section-title site-header__language-region-title">Eurasia</div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title amerikayidzayn-com" href="https://amerikayidzayn.com">Հայերեն</a>
              <a class="site-header__language-url" href="https://amerikayidzayn.com">amerikayidzayn.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title amerikaninsesi-org" href="https://amerikaninsesi.org">Azerbaijani</a>
              <a class="site-header__language-url" href="https://amerikaninsesi.org">amerikaninsesi.org</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title amerikiskhma-com" href="https://amerikiskhma.com">ქართული</a>
              <a class="site-header__language-url" href="https://amerikiskhma.com">amerikiskhma.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title golos-ameriki-ru" href="https://golos-ameriki.ru">Русский</a>
              <a class="site-header__language-url" href="https://golos-ameriki.ru">golos-ameriki.ru</a>
            </div>
                  </div>
              <div class="site-header__language-region">
          <div class="section-title site-header__language-region-title">Central Asia</div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title amerikaovozi-com" href="https://amerikaovozi.com">O‘zbek‎</a>
              <a class="site-header__language-url" href="https://amerikaovozi.com">amerikaovozi.com</a>
            </div>
                  </div>
              <div class="site-header__language-region">
          <div class="section-title site-header__language-region-title">South Asia</div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voabangla-com" href="https://voabangla.com">বাংলা</a>
              <a class="site-header__language-url" href="https://voabangla.com">voabangla.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title darivoa-com" href="https://darivoa.com">دری</a>
              <a class="site-header__language-url" href="https://darivoa.com">darivoa.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title pashtovoa-com" href="https://pashtovoa.com">پښتو</a>
              <a class="site-header__language-url" href="https://pashtovoa.com">pashtovoa.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voadeewanews-com" href="https://voadeewanews.com">وی او اې ډيوه ريډیو</a>
              <a class="site-header__language-url" href="https://voadeewanews.com">voadeewanews.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title urduvoa-com" href="https://urduvoa.com">ارد</a>
              <a class="site-header__language-url" href="https://urduvoa.com">urduvoa.com</a>
            </div>
                  </div>
              <div class="site-header__language-region">
          <div class="section-title site-header__language-region-title">East &amp; Southeast Asia</div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title burmese-voanews-com" href="https://burmese.voanews.com">ျမန္မာ</a>
              <a class="site-header__language-url" href="https://burmese.voanews.com">burmese.voanews.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voacantonese-com" href="https://voacantonese.com">粤语</a>
              <a class="site-header__language-url" href="https://voacantonese.com">voacantonese.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voachinese-com" href="https://voachinese.com">中文</a>
              <a class="site-header__language-url" href="https://voachinese.com">voachinese.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voaindonesia-com" href="https://voaindonesia.com">Bahasa Indonesia</a>
              <a class="site-header__language-url" href="https://voaindonesia.com">voaindonesia.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title khmer-voanews-com" href="https://khmer.voanews.com">ខ្មែរ</a>
              <a class="site-header__language-url" href="https://khmer.voanews.com">khmer.voanews.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voacambodia-com" href="https://voacambodia.com">Khmer</a>
              <a class="site-header__language-url" href="https://voacambodia.com">voacambodia.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voakorea-com" href="https://voakorea.com">한국어</a>
              <a class="site-header__language-url" href="https://voakorea.com">voakorea.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title lao-voanews-com" href="https://lao.voanews.com">ລາວ</a>
              <a class="site-header__language-url" href="https://lao.voanews.com">lao.voanews.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voathai-com" href="https://voathai.com">ไทย</a>
              <a class="site-header__language-url" href="https://voathai.com">voathai.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voatibetan-com" href="https://voatibetan.com">བོད་ཡིག</a>
              <a class="site-header__language-url" href="https://voatibetan.com">voatibetan.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voatiengviet-com" href="https://voatiengviet.com">Tiếng Việt</a>
              <a class="site-header__language-url" href="https://voatiengviet.com">voatiengviet.com</a>
            </div>
                  </div>
              <div class="site-header__language-region">
          <div class="section-title site-header__language-region-title">Africa</div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voaafaanoromoo-com" href="https://voaafaanoromoo.com">Afaan Oromoo</a>
              <a class="site-header__language-url" href="https://voaafaanoromoo.com">voaafaanoromoo.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title amharic-voanews-com" href="https://amharic.voanews.com">አማርኛ</a>
              <a class="site-header__language-url" href="https://amharic.voanews.com">amharic.voanews.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voabambara-com" href="https://voabambara.com">Bambara</a>
              <a class="site-header__language-url" href="https://voabambara.com">voabambara.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voaafrique-com" href="https://voaafrique.com">Français</a>
              <a class="site-header__language-url" href="https://voaafrique.com">voaafrique.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voahausa-com" href="https://voahausa.com">Hausa</a>
              <a class="site-header__language-url" href="https://voahausa.com">voahausa.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title radiyoyacuvoa-com" href="https://radiyoyacuvoa.com">Kinyarwanda / Kirundi</a>
              <a class="site-header__language-url" href="https://radiyoyacuvoa.com">radiyoyacuvoa.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voandebele-com" href="https://voandebele.com">Ndebele</a>
              <a class="site-header__language-url" href="https://voandebele.com">voandebele.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voaportugues-com" href="https://voaportugues.com">Português</a>
              <a class="site-header__language-url" href="https://voaportugues.com">voaportugues.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voashona-com" href="https://voashona.com">Shona</a>
              <a class="site-header__language-url" href="https://voashona.com">voashona.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voasomali-com" href="https://voasomali.com">Soomaaliga</a>
              <a class="site-header__language-url" href="https://voasomali.com">voasomali.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voaswahili-com" href="https://voaswahili.com">Kiswahili</a>
              <a class="site-header__language-url" href="https://voaswahili.com">voaswahili.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title tigrigna-voanews-com" href="https://tigrigna.voanews.com">ትግርኛ</a>
              <a class="site-header__language-url" href="https://tigrigna.voanews.com">tigrigna.voanews.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voazimbabwe-com" href="https://voazimbabwe.com">Zimbabwe</a>
              <a class="site-header__language-url" href="https://voazimbabwe.com">voazimbabwe.com</a>
            </div>
                  </div>
              <div class="site-header__language-region">
          <div class="section-title site-header__language-region-title">Middle East/North Africa</div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title ir-voanews-com" href="https://ir.voanews.com">فارسی</a>
              <a class="site-header__language-url" href="https://ir.voanews.com">ir.voanews.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title dengiamerika-com" href="https://dengiamerika.com">كوردی</a>
              <a class="site-header__language-url" href="https://dengiamerika.com">dengiamerika.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title dengeamerika-com" href="https://dengeamerika.com">Kurdi</a>
              <a class="site-header__language-url" href="https://dengeamerika.com">dengeamerika.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title amerikaninsesi-com" href="https://amerikaninsesi.com">Türkçe</a>
              <a class="site-header__language-url" href="https://amerikaninsesi.com">amerikaninsesi.com</a>
            </div>
                  </div>
              <div class="site-header__language-region">
          <div class="section-title site-header__language-region-title">Latin America</div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voanouvel-com" href="https://voanouvel.com">Creole</a>
              <a class="site-header__language-url" href="https://voanouvel.com">voanouvel.com</a>
            </div>
                      <div class="site-header__language-group">
              <a class="site-header__language-title voanoticias-com" href="https://voanoticias.com">Español</a>
              <a class="site-header__language-url" href="https://voanoticias.com">voanoticias.com</a>
            </div>
                  </div>
          </div>
  </div>
</div>
  
  <main role="main" id="main-content" tabindex="-1">
        <div>
    <div data-drupal-messages-fallback class="hidden"></div>
<div id="block-voa-content">
  
    
      <article class="taxonomy_term taxonomy_term--type-section taxonomy_term--view-mode-full clearfix">
  
    

  <div>
    
  
  
<div class="l-section-3">

      <div class="l-section-3__hero">
      <div class="block-region-hero"><div>
      
            <div>    
  
  



<div class="banner-story banner-story--4449121">
  <div class="banner-story__content">
    <h3 class="banner-story__title"><a class="banner-story__link" href="/usa/trump-supreme-court-nominee-faces-another-day-questioning"><span>Trump Supreme Court Nominee Faces Another Day of Questioning </span>
</a></h3>
    <div class="text--small banner-story__description"><a href="/usa/trump-supreme-court-nominee-faces-another-day-questioning" title="Trump Supreme Court Nominee Faces Another Day of Questioning">
            Amy Coney Barrett tells Senate Judiciary Committee members she will not let her personal and religious views determine how she decides cases  
      </a></div>
  </div>
      <div class="banner-story__image">
      <a href="/usa/trump-supreme-court-nominee-faces-another-day-questioning" title="Trump Supreme Court Nominee Faces Another Day of Questioning">
        <picture>
          <source srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_1696x500/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=-R6V3BKy 1x, https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_1696x500_retina/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=n-aqQevD 2x" media="(min-width: 2090px)" type="image/jpeg">
          <source srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_1396x500/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=H6XNgyge 1x, https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_1396x500_retina/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=1f9d4aUn 2x" media="(min-width: 1764px)" type="image/jpeg">
          <source srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_1176x500/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=9sXKrbxJ 1x, https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_1176x500_retina/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=bj_5WNSa 2x" media="(min-width: 1600px)" type="image/jpeg">
          <source srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_1066x500/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=Vdv3VdoT 1x, https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_1066x500_retina/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=iczrcnJb 2x" media="(min-width: 1419px)" type="image/jpeg">
          <source srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_976x555/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=t4tfrpxy 1x, https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_976x555_retina/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=plLGvThJ 2x" media="(min-width: 1194px)" type="image/jpeg">
          <source srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_796x555/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=f-YRFirc 1x, https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_796x555_retina/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=FKYfW72M 2x" media="(min-width: 1045px)" type="image/jpeg">
          <source srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_696x555/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=VL0fBJlO 1x, https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_696x555_retina/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=bIsCtQsk 2x" media="(min-width: 993px)" type="image/jpeg">
          <source srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_976x500/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=MAgyQFbH 1x, https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_976x500_retina/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=i6Gvw7Yq 2x" media="(min-width: 796px)" type="image/jpeg">
          <source srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_796x500/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=AHipaw_b 1x, https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_796x500_retina/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=3Wzvajre 2x" media="(min-width: 471px)" type="image/jpeg">
          <source srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_470x273/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=2DBJGL8b 1x" type="image/jpeg">
          <img class="banner-story__img" src="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/banner_story_470x273/s3/2020-10/2020-10-14T151401Z_984667400_RC2FIJ9DOIR5_RTRMADP_3_USA-COURT-BARRETT.JPG?itok=2DBJGL8b" alt=" U.S. Supreme Court nominee Judge Amy Coney Barrett testifies on the third day of her U.S. Senate Judiciary Committee hearing." />
        </picture>
      </a>
    </div>
  </div>
</div>
      
  </div>
</div>
    </div>
  
      <div class="l-site-container l-site-container--no-vert-padding">
      <div class="grid l-section-3__row-1 margin--show">
        <div class="col-2of3">
          <div class="block-region-row-1-col-1">    

    




<div>
  
<div class="content-card__container">
      <h2 class="content-card__title section-title--callout">
              
            <div>World News</div>
      
      
    </h2>
  
  
<div class="horizontal-list ">
  <div class="grid">
          <div class="col-2">
        
  


<div class="story-card  ">
  <div class="story-card__image">
    <a href="/south-central-asia/ground-families-fleeing-bombs-battle-nagorno-karabakh" title="On the Ground with Families Fleeing Bombs in Battle for Nagorno-Karabakh">
              
            <div><div>
  
  
            <div>    <img srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/817x459/s3/2020-10/reuters_Nagorno-Karabakh_shelling_13Oct20.JPG?itok=eBU6NJfs 1x" src="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/485x273/s3/2020-10/reuters_Nagorno-Karabakh_shelling_13Oct20.JPG?itok=15y4S7Bk" alt="Men walk through the ruins after recent shelling during the military conflict over the breakaway region of Nagorno-Karabakh, in Stepanakert, Oct. 13, 2020. " />


</div>
      
</div>
</div>
      
                </a>
  </div>
      <div class="eyebrow story-card__label">
      <a href="/south-central-asia" hreflang="en">South &amp; Central Asia</a>
    </div>
    
  <h3 class="story-card__title">
    <a href="/south-central-asia/ground-families-fleeing-bombs-battle-nagorno-karabakh"  class="story-card__title-link"><span>On the Ground with Families Fleeing Bombs in Battle for Nagorno-Karabakh</span>
</a>
  </h3>
</div>

      </div>
          <div class="col-2">
        
  


<div class="story-card  ">
  <div class="story-card__image">
    <a href="/africa/ugandan-police-raid-opposition-party-offices-take-election-related-documents" title="Ugandan Police Raid Opposition Party Offices, Take Election-Related Documents">
              
            <div><div>
  
  
            <div>    <img srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/817x459/s3/reuters-images/2020/10/reuters_com_2020_newsml_RC2BIJ9321XU.jpg?itok=BwJ8bw7S 1x" src="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/485x273/s3/reuters-images/2020/10/reuters_com_2020_newsml_RC2BIJ9321XU.jpg?itok=-swgN1w1" alt="FILE PHOTO: Ugandan musician turned politician, Robert Kyagulanyi also known as Bobi Wine and Uganda&#039;s four time Presidential candidate Kizza Besigye attend a joint news conference in Kampala" />


</div>
      
</div>
</div>
      
                </a>
  </div>
      <div class="eyebrow story-card__label">
      <a href="/africa" hreflang="en">Africa</a>
    </div>
    
  <h3 class="story-card__title">
    <a href="/africa/ugandan-police-raid-opposition-party-offices-take-election-related-documents"  class="story-card__title-link"><span>Ugandan Police Raid Opposition Party Offices, Take Election-Related Documents </span>
</a>
  </h3>
</div>

      </div>
      </div>
  </div>
</div>
</div>
    

    




<div>
  
<div class="content-card__container">
      <h2 class="content-card__title section-title--callout">
              <a href="/usa">
            <div>Telling America&#039;s Story</div>
      </a>
      
    </h2>
  
  
<div class="horizontal-list ">
  <div class="grid">
          <div class="col-2">
        
  
        


<div class="top-story">
  <a href="/covid-19-pandemic/trump-immune-coronavirus-maybe-maybe-not" title="Is Trump Immune to Coronavirus? Maybe, Maybe Not">
          
            <div><div>
  
  
            <div>    <img srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/817x459/s3/2020-10/2020-10-14T033818Z_215945616_RC21IJ9ZIKPY_RTRMADP_3_USA-ELECTION-TRUMP.JPG?itok=ETGdhHbL 1x" src="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/485x273/s3/2020-10/2020-10-14T033818Z_215945616_RC21IJ9ZIKPY_RTRMADP_3_USA-ELECTION-TRUMP.JPG?itok=_fYcnOgt" alt="U.S. President Donald Trump throws face masks to the crowd as he arrives to hold a campaign rally at John Murtha Johnstown." />


</div>
      
</div>
</div>
      
      </a>
  <div class="top-story__content">
          <a href="/covid-19-pandemic" class="eyebrow top-story__eyebrow">COVID-19 Pandemic</a>
        <h3 class="top-story__title">
      <a class="top-story__title-link" href="/covid-19-pandemic/trump-immune-coronavirus-maybe-maybe-not"><span>Is Trump Immune to Coronavirus? Maybe, Maybe Not </span>
</a>
    </h3>
      </div>
</div>

      </div>
          <div class="col-2">
        
  
        


<div class="top-story">
  <a href="/2020-usa-votes/trump-biden-stage-dueling-televised-town-halls-thursday" title="Trump, Biden to Stage Dueling Televised Town Halls on Thursday ">
          
            <div><div>
  
  
            <div>    <img srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/817x459/s3/2020-10/AP_20282445647114.jpg?itok=44X20Nta 1x" src="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/485x273/s3/2020-10/AP_20282445647114.jpg?itok=oeE_HCHr" alt="This combination of Sept. 29, 2020, photos shows President Donald Trump, left, and former Vice President Joe Biden during the…" />


</div>
      
</div>
</div>
      
      </a>
  <div class="top-story__content">
          <a href="/2020-election" class="eyebrow top-story__eyebrow">2020 USA Votes</a>
        <h3 class="top-story__title">
      <a class="top-story__title-link" href="/2020-usa-votes/trump-biden-stage-dueling-televised-town-halls-thursday"><span>Trump, Biden to Stage Dueling Televised Town Halls on Thursday </span>
</a>
    </h3>
      </div>
</div>

      </div>
      </div>
  </div>
</div>
</div>
    

    




<div>
  
<div class="content-card__container">
      <h2 class="content-card__title section-title--callout">
              <a href="/covid-19-pandemic">
            <div>COVID-19 Pandemic</div>
      </a>
      
    </h2>
  
  
<div class="horizontal-list ">
  <div class="grid">
          <div class="col-2">
        
  
        


<div class="top-story">
  <a href="/covid-19-pandemic/eli-lilly-becomes-3rd-pharmaceutical-company-halt-testing-covid-19-drug" title="Eli Lilly Becomes 3rd Pharmaceutical Company to Halt Testing on COVID-19 Drug">
          
            <div><div>
  
  
            <div>    <img srcset="/s3/files/styles/817x459/s3/ap-images/2020/10/1430d4f0dc5fbbd336c04cef038a5d5e.jpg?itok=MiN-x86H 1x" src="/s3/files/styles/485x273/s3/ap-images/2020/10/1430d4f0dc5fbbd336c04cef038a5d5e.jpg?itok=cyII9SUv" alt="David Ricks, chairman and CEO of Eli Lilly and Company, walks away after speaking at an event on protecting seniors with…" />


</div>
      
</div>
</div>
      
      </a>
  <div class="top-story__content">
          <a href="/covid-19-pandemic" class="eyebrow top-story__eyebrow">COVID-19 Pandemic</a>
        <h3 class="top-story__title">
      <a class="top-story__title-link" href="/covid-19-pandemic/eli-lilly-becomes-3rd-pharmaceutical-company-halt-testing-covid-19-drug"><span>Eli Lilly Becomes 3rd Pharmaceutical Company to Halt Testing on COVID-19 Drug </span>
</a>
    </h3>
      </div>
</div>

      </div>
          <div class="col-2">
        
  
        


<div class="top-story">
  <a href="/student-union/university-students-room-chic-hotels-apartments-during-pandemic" title="University Students Room in Chic Hotels, Apartments During Pandemic">
          
            <div><div>
  
  
            <div>    <img srcset="/s3/files/styles/817x459/s3/2020-10/AP_20236006716205%281%29.jpg?itok=18yM2f9c 1x" src="/s3/files/styles/485x273/s3/2020-10/AP_20236006716205%281%29.jpg?itok=L44jfPsW" alt="New York University on August 22, 2020." />


</div>
      
</div>
</div>
      
      </a>
  <div class="top-story__content">
          <a href="/student-union" class="eyebrow top-story__eyebrow">Student Union</a>
        <h3 class="top-story__title">
      <a class="top-story__title-link" href="/student-union/university-students-room-chic-hotels-apartments-during-pandemic"><span>University Students Room in Chic Hotels, Apartments During Pandemic</span>
</a>
    </h3>
      </div>
</div>

      </div>
      </div>
  </div>
</div>
</div>
</div>
        </div>
        <div class="col-3">
          <div class="block-region-row-1-col-2">
<div>
  
  

  <div class="section-title__container section-title__container--centered">
    <h2 class="section-title--callout">
              Headlines
          </h2>
  </div>
</div>
          

                                        


  

  



<div>
  
<div class="content-list content-list--bordered">
      
<div class="grid vertical-list vertical-list--list">
      <div class="col-1 vertical-list__item vertical-list__item--list">
      

<div class="simple-headline">
  <a class="simple-headline__link" href="/2020-usa-votes/judge-extends-virginia-voter-registration"><span>Judge Extends Virginia Voter Registration</span>
</a>
</div>

    </div>
      <div class="col-1 vertical-list__item vertical-list__item--list">
      

<div class="simple-headline">
  <a class="simple-headline__link" href="/south-central-asia/afghan-forces-suffer-fresh-casualties-helicopter-collision-battlefield"><span>Afghan Forces Suffer Fresh Casualties in Helicopter Collision, Battlefield Hostilities</span>
</a>
</div>

    </div>
      <div class="col-1 vertical-list__item vertical-list__item--list">
      

<div class="simple-headline">
  <a class="simple-headline__link" href="/south-central-asia/india-frees-top-kashmiri-leader"><span>India Frees Top Kashmiri Leader</span>
</a>
</div>

    </div>
      <div class="col-1 vertical-list__item vertical-list__item--list">
      

<div class="simple-headline">
  <a class="simple-headline__link" href="/usa/kremlin-says-no-deal-yet-us-arms-pact-despite-assertions"><span>Kremlin Says No Deal Yet With US on Arms Pact Despite Assertions </span>
</a>
</div>

    </div>
      <div class="col-1 vertical-list__item vertical-list__item--list">
      

<div class="simple-headline">
  <a class="simple-headline__link" href="/middle-east/saudis-lose-bid-seat-un-human-rights-council"><span>Saudis Lose Bid for Seat on UN Human Rights Council</span>
</a>
</div>

    </div>
  </div>
</div>
</div>
  

  




<div class="content-list__hide-section">
  
<div class="content-card__container">
      <h2 class="content-card__title section-title--callout">
              <a href="/press-freedom">
            <div>Press Freedom</div>
      </a>
      
    </h2>
  
  
<div class="horizontal-list ">
  <div class="grid">
          <div class="col-1">
        
  


<div class="story-card  ">
  <div class="story-card__image">
    <a href="/press-freedom/cambodias-sentencing-journalist-over-covid-19-comment-threat-freedoms-media-groups" title="Cambodia&#039;s Sentencing of Journalist Over COVID-19 Comment a Threat to Freedoms, Media Groups Say">
              
            <div><div>
  
  
            <div>    <img srcset="/s3/files/styles/817x459/s3/2020-10/sovann2.jpg?itok=sRot69pN 1x" src="/s3/files/styles/485x273/s3/2020-10/sovann2.jpg?itok=GocP0GsX" alt="Cambodian online journalist Sovann Rithy (Phnom Penh Municipal Police Facebook Page) " />


</div>
      
</div>
</div>
      
                </a>
  </div>
      <div class="eyebrow story-card__label">
      <a href="/press-freedom" hreflang="en">Press Freedom</a>
    </div>
    
  <h3 class="story-card__title">
    <a href="/press-freedom/cambodias-sentencing-journalist-over-covid-19-comment-threat-freedoms-media-groups"  class="story-card__title-link"><span>Cambodia&#039;s Sentencing of Journalist Over COVID-19 Comment a Threat to Freedoms, Media Groups Say</span>
</a>
  </h3>
</div>

      </div>
      </div>
  </div>
</div>
</div>
  

  




<div>
  
<div class="content-card__container">
      <h2 class="content-card__title section-title--callout">
              <a href="/media/2824866">
            <div>Plugged In</div>
      </a>
      
    </h2>
  
  
<div class="horizontal-list ">
  <div class="grid">
          <div class="col-1">
        

    



<style>
  .callout__media--4443056 {
    background-image: url(https://im-media.voltron.voanews.com/Drupal/01live-166/styles/720x405/s3/kaltura-video-thumbs/1_6/1_6f1ok6wt.jpg?itok=lRk9VmmS);
  }
  @media (min-width: 580px) {
    .callout__media--4443056 {
      background-image: url(https://im-media.voltron.voanews.com/Drupal/01live-166/styles/720x405/s3/kaltura-video-thumbs/1_6/1_6f1ok6wt.jpg?itok=lRk9VmmS);
    }
  }
  @media (min-width: 580px) and (min-resolution: 192dpi) and (-webkit-min-device-pixel-ration: 2) {
    .callout__media--4443056 {
      background-image: url(https://im-media.voltron.voanews.com/Drupal/01live-166/styles/720x405_retina/s3/kaltura-video-thumbs/1_6/1_6f1ok6wt.jpg?itok=wUs3tFif);
    }
  }
</style>


<div class="callout">
      <h2 class="callout__section">
      Watch
    </h2>
        <a class="callout__media callout__media--4443056" title="Plugged In with Greta Van Susteren-COVID in the White House" href="/episode/covid-white-house-4443056"></a>
    <div class="callout__content">
          <div class="callout__program">
        
            <div><a href="/plugged-greta-van-susteren" hreflang="en">Plugged in with Greta Van Susteren</a></div>
      
      </div>
        <a href="/episode/covid-white-house-4443056" class="callout__title-link">
      <h3 class="callout__title"><span>COVID in the White House</span>
</h3>
    </a>
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
  
      <div class="l-site-container l-site-container--no-vert-padding">
      <div class="grid l-section-3__row-2 margin--show">
        <div class="col-2of3">
          <div class="block-region-row-2-col-1">    

    




<div>
  
<div class="content-card__container">
      <h2 class="content-card__title section-title--callout">
              <a href="/2020-election">
            <div>2020 USA Votes</div>
      </a>
      
    </h2>
  
  
<div class="horizontal-list ">
  <div class="grid">
          <div class="col-2">
        
  
        


<div class="top-story">
  <a href="/2020-usa-votes/biden-trump-battle-it-out-swing-states" title="Biden, Trump Battle It Out in Swing States">
          
            <div><div>
  
  
            <div>    <img srcset="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/817x459/s3/ap-images/2020/10/1f49977daa3f21e3f415abd2312d333c.jpg?itok=HktTI-To 1x" src="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/485x273/s3/ap-images/2020/10/1f49977daa3f21e3f415abd2312d333c.jpg?itok=VIAz9isq" alt="Democratic presidential candidate former Vice President Joe Biden speaks at Southwest Focal Point Community Center in, Pembroke…" />


</div>
      
</div>
</div>
      
      </a>
  <div class="top-story__content">
          <a href="/2020-election" class="eyebrow top-story__eyebrow">2020 USA Votes</a>
        <h3 class="top-story__title">
      <a class="top-story__title-link" href="/2020-usa-votes/biden-trump-battle-it-out-swing-states"><span>Biden, Trump Battle It Out in Swing States</span>
</a>
    </h3>
      </div>
</div>

      </div>
          <div class="col-2">
        
  
  


<div class="top-story">
  <a href="/2020-usa-votes/which-us-presidential-candidate-better-post-brexit-britain" title="Which US Presidential Candidate Is Better for Post-Brexit Britain? ">
          
            <div><div>
  
  
            <div>    <img srcset="/s3/files/styles/817x459/s3/2020-10/2020-09-09T124502Z_666240033_RC20VI9AT5RL_RTRMADP_3_BRITAIN-EU.JPG?itok=dDJUFIEK 1x" src="/s3/files/styles/485x273/s3/2020-10/2020-09-09T124502Z_666240033_RC20VI9AT5RL_RTRMADP_3_BRITAIN-EU.JPG?itok=QF6Y7DLW" alt="Brexit supporters protest at the Europe House in London, Britain, Sept. 9, 2020. " />


</div>
      
</div>
</div>
      
      </a>
  <div class="top-story__content">
          <a href="/2020-election" class="eyebrow top-story__eyebrow">2020 USA Votes</a>
        <h3 class="top-story__title">
      <a class="top-story__title-link" href="/2020-usa-votes/which-us-presidential-candidate-better-post-brexit-britain"><span>Which US Presidential Candidate Is Better for Post-Brexit Britain? </span>
</a>
    </h3>
      </div>
</div>

      </div>
      </div>
  </div>
</div>
</div>
</div>
        </div>
        <div class="col-3">
          <div class="block-region-row-2-col-2">  

  




<div>
  
<div class="content-card__container">
      <h2 class="content-card__title section-title--callout">
              
            <div>Extremism Watch</div>
      
      
    </h2>
  
  
<div class="horizontal-list ">
  <div class="grid">
          <div class="col-1">
        
  


<div class="story-card  ">
  <div class="story-card__image">
    <a href="/extremism-watch/women-concerned-over-underrepresentation-afghan-talks" title="Women Concerned Over Underrepresentation in Afghan Talks">
              
            <div><div>
  
  
            <div>    <img srcset="/s3/files/styles/817x459/s3/ap-images/2020/10/1a4d9ca8de8dd0b4522ebcf1c7dc6278.jpg?itok=ADBN0GDt 1x" src="/s3/files/styles/485x273/s3/ap-images/2020/10/1a4d9ca8de8dd0b4522ebcf1c7dc6278.jpg?itok=8LyrYGOC" alt="Abdullah Abdullah, center, chairman of Afghanistan&#039;s High Council for National Reconciliation, talks at the opening session of…" />


</div>
      
</div>
</div>
      
                </a>
  </div>
      <div class="eyebrow story-card__label">
      <a href="/extremism-watch" hreflang="en">Extremism Watch</a>
    </div>
    
  <h3 class="story-card__title">
    <a href="/extremism-watch/women-concerned-over-underrepresentation-afghan-talks"  class="story-card__title-link"><span>Women Concerned Over Underrepresentation in Afghan Talks </span>
</a>
  </h3>
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
  
      <div class="l-site-container">
      <div class="l-section-3__row-3">
        <div class="block-region-row-3">        

        




<div>
  
<div class="content-card__container">
      <h2 class="content-card__title section-title--callout">
              
            <div>Video</div>
      
      
    </h2>
  
  
<div class="horizontal-list ">
  <div class="grid">
          <div class="col-4">
        
  


<div class="story-card story-card--video ">
  <div class="story-card__image">
    <a href="/episode/nagorno-karabakhs-fragile-cease-fire-some-look-normalcy-4448991" title="In Nagorno-Karabakh’s Fragile Cease-fire, Some Look for Normalcy">
                  <img alt="In Nagorno-Karabakh’s Fragile Ceasefire, Some Look for Normalcy" src="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/485x273/s3/kaltura-video-thumbs/1_d/1_dq8wni94.jpg?itok=kuoWTtBc" />
  
                  <div class="badge story-card__badge">
        <span class="fa fa-play story-card__media-icon"></span>
                <span
          class="story-card__media-icon--duration">00:02:04</span>
              </div>
          </a>
  </div>
    
  <h3 class="story-card__title">
    <a href="/episode/nagorno-karabakhs-fragile-cease-fire-some-look-normalcy-4448991"  class="story-card__title-link"><span>In Nagorno-Karabakh’s Fragile Cease-fire, Some Look for Normalcy</span>
</a>
  </h3>
</div>

      </div>
          <div class="col-4">
        
  


<div class="story-card story-card--video ">
  <div class="story-card__image">
    <a href="/episode/most-western-europeans-hope-joe-biden-victory-polls-show-4448926" title="Most Western Europeans Hope for Joe Biden Victory, Polls Show">
                  <img alt="USA Votes: Most Western Europeans Hope for Joe Biden Victory, Polls Show" src="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/485x273/s3/kaltura-video-thumbs/1_c/1_cahu21ao.jpg?itok=-f8Ya3CF" />
  
                  <div class="badge story-card__badge">
        <span class="fa fa-play story-card__media-icon"></span>
                <span
          class="story-card__media-icon--duration">00:03:05</span>
              </div>
          </a>
  </div>
    
  <h3 class="story-card__title">
    <a href="/episode/most-western-europeans-hope-joe-biden-victory-polls-show-4448926"  class="story-card__title-link"><span>Most Western Europeans Hope for Joe Biden Victory, Polls Show</span>
</a>
  </h3>
</div>

      </div>
          <div class="col-4">
        
  


<div class="story-card story-card--video ">
  <div class="story-card__image">
    <a href="/episode/taliban-driven-violence-10-year-high-nato-rep-tells-voa-4448836" title="Taliban-driven Violence at 10-Year High, NATO Rep Tells VOA">
                  <img alt="VOA Exclusive Interview: Taliban Driven Violence at 10-Year High, NATO Rep. Tells VOA " src="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/485x273/s3/kaltura-video-thumbs/1_b/1_b87tkbwc.jpg?itok=tAtpeSje" />
  
                  <div class="badge story-card__badge">
        <span class="fa fa-play story-card__media-icon"></span>
                <span
          class="story-card__media-icon--duration">00:10:15</span>
              </div>
          </a>
  </div>
    
  <h3 class="story-card__title">
    <a href="/episode/taliban-driven-violence-10-year-high-nato-rep-tells-voa-4448836"  class="story-card__title-link"><span>Taliban-driven Violence at 10-Year High, NATO Rep Tells VOA </span>
</a>
  </h3>
</div>

      </div>
          <div class="col-4">
        
  


<div class="story-card story-card--video ">
  <div class="story-card__image">
    <a href="/episode/uganda-town-struggles-under-weight-floods-pandemic-4447861" title="Uganda Town Struggles Under Weight of Floods, Pandemic">
                  <img alt="Uganda Town Struggles Under Weight of Floods, Pandemic " src="https://im-media.voltron.voanews.com/Drupal/01live-166/styles/485x273/s3/kaltura-video-thumbs/1_z/1_zr629y9g.jpg?itok=Qt9pnmfI" />
  
                  <div class="badge story-card__badge">
        <span class="fa fa-play story-card__media-icon"></span>
                <span
          class="story-card__media-icon--duration">00:02:27</span>
              </div>
          </a>
  </div>
    
  <h3 class="story-card__title">
    <a href="/episode/uganda-town-struggles-under-weight-floods-pandemic-4447861"  class="story-card__title-link"><span>Uganda Town Struggles Under Weight of Floods, Pandemic</span>
</a>
  </h3>
</div>

      </div>
      </div>
  </div>
</div>
</div>

<div class="html-block__container">
  
  

  
  

  <script>
//<![CDATA[

	document.addEventListener('DOMContentLoaded',function(){
	document.querySelectorAll("[href='/how-deadly-could-covid-19-be']").forEach(function(a){a.setAttribute('href','https://projects.voanews.com/coronavirus/death-comparison.html');});

	document.querySelectorAll("[href='/science-health/coronavirus-outbreak/covid-19-brings-loss-hardship-pain-around-world']").forEach(function(a){a.setAttribute('href','https://www.voanews.com/episode/covid-19-brings-loss-hardship-pain-around-world-4255826');});

	document.querySelectorAll("[href='/archive/voa-news-china']").forEach(function(a){a.setAttribute('href','https://www.voanews.com/east-asia-pacific/voa-news-china');});

	document.querySelectorAll("[href='/suffragette-village-leaders-battle-womens-right-vote-us']").forEach(function(a){a.setAttribute('href','https://projects.voanews.com/womens-suffrage/');});

	document.querySelectorAll("[href='/child-marriage/girl-calls-police-and-stops-underage-marriage']").forEach(function(a){a.setAttribute('href','https://projects.voanews.com/child-marriage/english/region/tanzania.html');});

	document.querySelectorAll("[href='/giulianis-network']").forEach(function(a){a.setAttribute('href','https://projects.voanews.com/impeachment/giuliani.html');});

	document.querySelectorAll("[href='/usa/us-politics/meet-democratic-presidential-candidates']").forEach(function(a){a.setAttribute('href','https://projects.voanews.com/election-2020/democratic-candidates.html');});

	document.querySelectorAll("[href='/special-report-perils-au-pairs']").forEach(function(a){a.setAttribute('href','https://projects.voanews.com/au-pairs/');});

	document.querySelectorAll("[href='/usa/us-politics/how-historically-presidential-are-democratic-candidates']").forEach(function(a){a.setAttribute('href','https://projects.voanews.com/election-2020/english/candidates/background.html');});

	document.querySelectorAll("[href='/history-mass-shootings']").forEach(function(a){a.setAttribute('href','https://projects.voanews.com/mass-shootings/');});

	document.querySelectorAll("[href='/where-has-new-coronavirus-spread']").forEach(function(a){a.setAttribute('href','https://projects.voanews.com/coronavirus/');});

	document.querySelectorAll("[href='/climbing-hill/climbing-hill-voa-follows-two-new-us-lawmakers']").forEach(function(a){a.setAttribute('href','https://www.voanews.com/climbing-hill');});
});


//]]>
</script></script>
</div>
</div>
      </div>
    </div>
  
</div>

  </div>
</article>

  </div>

  </div>

  </main>

      <div class="site-footer">
  <div class="site-footer__container">
    <div class="grid site-footer__upper">
      <div class="col-2 site-footer__social">
                  <a class="site-footer__social-link" href="https://twitter.com/voanews"><span class="fab fa-twitter"></span><span class="sr-only">Twitter</span></a>
                          <a class="site-footer__social-link" href="https://www.instagram.com/voanews/"><span class="fab fa-instagram"></span><span class="sr-only">Instagram</span></a>
                          <a class="site-footer__social-link" href="https://www.facebook.com/voiceofamerica"><span class="fab fa-facebook-f"></span><span class="sr-only">Facebook</span></a>
                          <a class="site-footer__social-link" href="https://www.youtube.com/user/VOAvideo"><span class="fab fa-youtube"></span><span class="sr-only">YouTube</span></a>
                                                <a class="site-footer__social-link" href="/rssfeeds"><span class="fa fa-rss"></span><span class="sr-only">RSS</span></a>
      </div>
      <form class="col-2 site-footer__search-form" action="/search" method="GET">
        <label class="site-footer__search-label" for="footer-search">Search VOA News</label>
        <input placeholder="Search VOA News" class="site-footer__search" id="footer-search" type="text" name="search_api_fulltext" />
        <input type="hidden" name="type" value="1">
        <input type="hidden" name="sort_by" value="publication_time">
        <button class="button site-footer__search-button fa fa-search" type="submit"><span class="site-footer__search-label">Search</span></button>
      </form>
    </div>
    <div class="site-footer__lower">
      
    
    
      
              <ul class="grid site-footer__menu">
    
    
                      <li class="site-footer__menu-item col-3 site-footer__menu-item--header">
          <a href="/usa" class="site-footer__menu-item-link site-footer__menu-item-link--header" data-drupal-link-system-path="taxonomy/term/32681">United States</a>
                                    <ul class="site-footer__sub-menu">
    
                                  <div class="grid">
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/usa/us-politics" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/32936">US Politics</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/usa/immigration" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/33021">Immigration</a>
                          </li>
                  </div>
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/usa/all-about-america" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/562771">All About America</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/silicon-valley-technology" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/61">Silicon Valley and Technology</a>
                          </li>
                  </div>
      </div>

    
    </ul>
  
                  </li>
                      <li class="site-footer__menu-item col-3 site-footer__menu-item--header">
          <span class="site-footer__menu-item-link site-footer__menu-item-link--header">World News</span>
                                    <ul class="site-footer__sub-menu">
    
                                  <div class="grid">
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/africa" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/562841">Africa</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/americas" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/562846">The Americas</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/east-asia-pacific" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/562821">East Asia Pacific</a>
                          </li>
                  </div>
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/europe" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/32686">Europe</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/middle-east" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/562811">Middle East</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/south-central-asia" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/562866">South &amp; Central Asia</a>
                          </li>
                  </div>
      </div>

    
    </ul>
  
                  </li>
                      <li class="site-footer__menu-item col-3 site-footer__menu-item--header">
          <span class="site-footer__menu-item-link site-footer__menu-item-link--header">Sections</span>
                                    <ul class="site-footer__sub-menu">
    
                                  <div class="grid">
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/arts-culture" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/562826">Arts &amp; Culture</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/day-photos" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/32661">Day in Photos</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/economy-business" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/66">Economy &amp; Business</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/extremism-watch" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/51">Extremism Watch</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/press-freedom" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/562871">Press Freedom</a>
                          </li>
                  </div>
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/science-health" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/562831">Science &amp; Health</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/student-union" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/32976">VOA StudentU</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/voa-connect" class="site-footer__menu-item-link" data-drupal-link-system-path="taxonomy/term/191">VOA Connect</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/refugees" class="site-footer__menu-item-link" data-drupal-link-system-path="node/4078021">Refugees</a>
                          </li>
                  </div>
      </div>

    
    </ul>
  
                  </li>
                      <li class="site-footer__menu-item col-3 site-footer__menu-item--header">
          <span class="site-footer__menu-item-link site-footer__menu-item-link--header">Voice of America</span>
                                    <ul class="site-footer__sub-menu">
    
                                  <div class="grid">
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="https://www.insidevoa.com/p/5831.html" class="site-footer__menu-item-link">About VOA</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="https://www.insidevoa.com/p/5621.html" class="site-footer__menu-item-link">Contact VOA</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="https://www.voanews.com/terms-use-and-privacy-notice" class="site-footer__menu-item-link">Terms of Use and Privacy Notice</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/section-508" title="The United States Agency for Global Media is committed to providing access to our web pages for individuals with disabilities" class="site-footer__menu-item-link" data-drupal-link-system-path="node/4219441">Accessibility</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/voas-free-app-mobile-and-tablet-devices" class="site-footer__menu-item-link" data-drupal-link-system-path="node/3877491">Get Our Mobile App</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="http://www.insidevoa.com/p/5719.html" class="site-footer__menu-item-link">Usage Requests</a>
                          </li>
                  </div>
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="https://www.voanews.com/voa-around-world" class="site-footer__menu-item-link">VOA Around the World</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="http://pronounce.voanews.com/" class="site-footer__menu-item-link">VOA Pronunciation Guide</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="http://www.insidevoa.com/" class="site-footer__menu-item-link">Media Relations</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/voa-broadcast-frequency-schedules" class="site-footer__menu-item-link" data-drupal-link-system-path="node/3877541">Listen on the radio</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="http://direct.voa24.news/english/portal/broadcast-schedule" class="site-footer__menu-item-link">Satellite Schedule</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/subscribe" class="site-footer__menu-item-link" data-drupal-link-system-path="subscribe">Subscribe to Our Newsletters</a>
                          </li>
                  </div>
      </div>

    
    </ul>
  
                  </li>
      
    
    </ul>
  


  

    </div>
  </div>
</div>
  </div>

  </div>

    
    <script type="application/json" data-drupal-selector="drupal-settings-json">{"path":{"baseUrl":"\/","scriptPath":null,"pathPrefix":"","currentPath":"taxonomy\/term\/582251","currentPathIsAdmin":false,"isFront":true,"currentLanguage":"en"},"pluralDelimiter":"\u0003","suppressDeprecationErrors":true,"voa_tracking_code":{"isHomePage":false,"isSearchPage":false},"voaVideoPlayer":{"posterImg":{"1_tj7ugri0":"","1_dn9vnoiq":"","1_ouutokpf":"","1_fmmn2wyn":"","1_bwbpkis0":""}},"blazy":{"loadInvisible":false,"offset":100,"saveViewportOffsetDelay":50,"validateDelay":null,"container":""},"blazyIo":{"enabled":false,"disconnect":false,"rootMargin":"0px","threshold":[0]},"0":{"voaMediaSchedule":{"liveText":"LIVE"}},"baseFilePath":"\/sites\/g\/files\/cauiqe166\/files\/voa_breaking_news.html","mobileMenu":{"alternatePosition":false,"mobileCollapsed":false},"user":{"uid":0,"permissionsHash":"6597ccbf8872701f673e5d77705e96bf9d74fe982eb111e29aac53bf6a5fbcff"}}</script>
<script src="/sites/g/files/cauiqe166/files/js/js_nBVHrzdUDOdn-ndiyttRE9NGqeHYtMXx-EswPiV7lm8.js"></script>
<script src="/modules/custom/voa_breaking_news/js/voa-breaking-news.js?v=1.1"></script>

  <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"e7f803923b","applicationID":"517970072,397515042","transactionName":"ZVJTY0RXChIDVkwKX1wYcFRCXwsPTXFKFkBTW210WUQBPSdbTApES2tyWFhCFg4OWV0RbHdZRV5CTzIIB0J7DF5GRV5bWlMWTFxDUQZH","queueTime":0,"applicationTime":694,"atts":"SRVQFQxNGRw=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
