<!DOCTYPE HTML>
<html lang="en-US">
<head>
  <meta charset="UTF-8" /><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"e7fb1b89a0",applicationID:"750147145"};window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var i=t[n]={exports:{}};e[n][0].call(i.exports,function(t){var i=e[n][1][t];return r(i||t)},i,i.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(e,t,n){function r(){}function i(e,t,n){return function(){return o(e,[u.now()].concat(c(arguments)),t?null:this,n),t?void 0:this}}var o=e("handle"),a=e(6),c=e(7),f=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],p="api-",l=p+"ixn-";a(d,function(e,t){s[t]=i(p+t,!0,"api")}),s.addPageAction=i(p+"addPageAction",!0),s.setCurrentRouteName=i(p+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,i="function"==typeof t;return o(l+"tracer",[u.now(),e,n],r),function(){if(f.emit((i?"":"no-")+"fn-start",[u.now(),r,i],n),i)try{return t.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],n),e}finally{f.emit("fn-end",[u.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=i(l+t)}),newrelic.noticeError=function(e,t){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,t])}},{}],2:[function(e,t,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,c=e(8);t.exports=r,t.exports.offset=a,t.exports.getLastTimestamp=i},{}],3:[function(e,t,n){function r(e,t){var n=e.getEntries();n.forEach(function(e){"first-paint"===e.name?d("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&d("timing",["fcp",Math.floor(e.startTime)])})}function i(e,t){var n=e.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(e){e.getEntries().forEach(function(e){e.hadRecentInput||d("cls",[e])})}function a(e){if(e instanceof m&&!g){var t=Math.round(e.timeStamp),n={type:e.type};t<=p.now()?n.fid=p.now()-t:t>p.offset&&t<=Date.now()?(t-=p.offset,n.fid=p.now()-t):t=p.now(),g=!0,d("timing",["fi",t,n])}}function c(e){d("pageHide",[p.now(),e])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var f,u,s,d=e("handle"),p=e("loader"),l=e(5),m=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){f=new PerformanceObserver(r);try{f.observe({entryTypes:["paint"]})}catch(v){}u=new PerformanceObserver(i);try{u.observe({entryTypes:["largest-contentful-paint"]})}catch(v){}s=new PerformanceObserver(o);try{s.observe({type:"layout-shift",buffered:!0})}catch(v){}}if("addEventListener"in document){var g=!1,y=["click","keydown","mousedown","pointerdown","touchstart"];y.forEach(function(e){document.addEventListener(e,a,!1)})}l(c)}},{}],4:[function(e,t,n){function r(e,t){if(!i)return!1;if(e!==i)return!1;if(!t)return!0;if(!o)return!1;for(var n=o.split("."),r=t.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,f=c.match(a);f&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(i="Safari",o=f[1])}t.exports={agent:i,version:o,match:r}},{}],5:[function(e,t,n){function r(e){function t(){e(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,t,!1)}t.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],6:[function(e,t,n){function r(e,t){var n=[],r="",o=0;for(r in e)i.call(e,r)&&(n[o]=t(r,e[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],7:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,i=n-t||0,o=Array(i<0?0:i);++r<i;)o[r]=e[t+r];return o}t.exports=r},{}],8:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function i(e){function t(e){return e&&e instanceof r?e:e?f(e,c,o):o()}function n(n,r,i,o){if(!p.aborted||o){e&&e(n,r,i);for(var a=t(i),c=v(n),f=c.length,u=0;u<f;u++)c[u].apply(a,r);var d=s[w[n]];return d&&d.push([b,n,r,a]),a}}function l(e,t){h[e]=v(e).concat(t)}function m(e,t){var n=h[e];if(n)for(var r=0;r<n.length;r++)n[r]===t&&n.splice(r,1)}function v(e){return h[e]||[]}function g(e){return d[e]=d[e]||i(n)}function y(e,t){u(e,function(e,n){t=t||"feature",w[n]=t,t in s||(s[t]=[])})}var h={},w={},b={on:l,addEventListener:l,removeEventListener:m,emit:n,get:g,listeners:v,context:t,buffer:y,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(p.aborted=!0,s=p.backlog={})}var c="nr@context",f=e("gos"),u=e(6),s={},d={},p=t.exports=i();p.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(i.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[t]=r,r}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){i.buffer([e],r),i.emit(e,t,n)}var i=e("ee").get("handle");t.exports=r,r.ee=i},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!E++){var e=b.info=NREUM.info,t=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return u.abort();f(h,function(t,n){e[t]||(e[t]=n)});var n=a();c("mark",["onload",n+b.offset],null,"api"),c("timing",["load",n]);var r=p.createElement("script");r.src="https://"+e.agent,t.parentNode.insertBefore(r,t)}}function i(){"complete"===p.readyState&&o()}function o(){c("mark",["domContent",a()+b.offset],null,"api")}var a=e(2),c=e("handle"),f=e(6),u=e("ee"),s=e(4),d=window,p=d.document,l="addEventListener",m="attachEvent",v=d.XMLHttpRequest,g=v&&v.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:v,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var y=""+location,h={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1184.min.js"},w=v&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),b=t.exports={offset:a.getLastTimestamp(),now:a,origin:y,features:{},xhrWrappable:w,userAgent:s};e(1),e(3),p[l]?(p[l]("DOMContentLoaded",o,!1),d[l]("load",r,!1)):(p[m]("onreadystatechange",i),d[m]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var E=0},{}],"wrap-function":[function(e,t,n){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e("ee"),o=e(7),a="nr@original",c=Object.prototype.hasOwnProperty,f=!1;t.exports=function(e,t){function n(e,t,n,i){function nrWrapper(){var r,a,c,f;try{a=this,r=o(arguments),c="function"==typeof n?n(r,a):n||{}}catch(u){p([u,"",[r,a,i],c])}s(t+"start",[r,a,i],c);try{return f=e.apply(a,r)}catch(d){throw s(t+"err",[r,a,d],c),d}finally{s(t+"end",[r,a,f],c)}}return r(e)?e:(t||(t=""),nrWrapper[a]=e,d(e,nrWrapper),nrWrapper)}function u(e,t,i,o){i||(i="");var a,c,f,u="-"===i.charAt(0);for(f=0;f<t.length;f++)c=t[f],a=e[c],r(a)||(e[c]=n(a,u?c+i:i,o,c))}function s(n,r,i){if(!f||t){var o=f;f=!0;try{e.emit(n,r,i,t)}catch(a){p([a,n,r,i])}f=o}}function d(e,t){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(e);return n.forEach(function(n){Object.defineProperty(t,n,{get:function(){return e[n]},set:function(t){return e[n]=t,t}})}),t}catch(r){p([r])}for(var i in e)c.call(e,i)&&(t[i]=e[i]);return t}function p(t){try{e.emit("internal-error",t)}catch(n){}}return e||(e=i),n.inPlace=u,n.flag=a,n}},{}]},{},["loader"]);</script>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta name="keywords"  content="Photography,Photojournalism,South Bronx,New York City,1980s,1990s,9/11,Graffiti,Tagging,Subways,MTA,Sneakers,Kicks,Protests,Civil Unrest,Riots,Puerto Rican,New York Rican,Nuyorican" />
      <meta name="description"  content="Featuring the work of iconic South Bronx Puerto Rican photojournalist Ricky Flores.  The work includes images from the South Bronx, social injustice, and police brutality in New York City and his work as a photojournalist spanning 40 years." />
      <meta name="twitter:card"  content="summary_large_image" />
      <meta name="twitter:site"  content="@AdobePortfolio" />
      <meta  property="og:title" content="Ricky Flores" />
      <meta  property="og:description" content="Featuring the work of iconic South Bronx Puerto Rican photojournalist Ricky Flores.  The work includes images from the South Bronx, social injustice, and police brutality in New York City and his work as a photojournalist spanning 40 years." />
      <meta  property="og:image" content="https://pro2-bar-s3-cdn-cf3.myportfolio.com/2d62acf4-c680-41d4-9b04-893a8337e698/ec3dd5b5-ef76-4466-b57c-8f8092b6741b_rwc_0x0x3867x2586x3867.jpg?h=273126b1e1702ec2b0c6739027b8c09e" />
      <meta name="Description" content="Ricky Flores, Puerto Rican photographer from the South Bronx, New York. Former photojournalist with The Journal News, part of the USA Today Network. ">
      <meta name="Keywords" content="Ricky Flores, Puerto Rican, South Bronx, New York City, Hip Hop, Photographer, Photojournalist">
        <link rel="icon" href="https://pro2-bar-s3-cdn-cf6.myportfolio.com/2d62acf4-c680-41d4-9b04-893a8337e698/797de24f-9912-49cb-a36a-76e9676c8843_carw_1x1x32.jpg?h=a990c14e371950a1f72b52579810c31f" />
        <link rel="apple-touch-icon" href="https://pro2-bar-s3-cdn-cf.myportfolio.com/2d62acf4-c680-41d4-9b04-893a8337e698/17611323-86f9-420a-aa66-1becd19eadea_carw_1x1x180.jpg?h=84232ddb87f819820eb70cb9760ddd22" />
      <link rel="stylesheet" href="/dist/css/main.css" type="text/css" />
      <link rel="stylesheet" href="https://pro2-bar-s3-cdn-cf6.myportfolio.com/2d62acf4-c680-41d4-9b04-893a8337e698/a2674e686282b1f68e1279889c0c4d411602043852.css?h=a739f8076b8143a60639e3120d95977a" type="text/css" />
    <link rel="canonical" href="https://rickyflores.com/main" />
      <title>Ricky Flores</title>
    <script type="text/javascript" src="//use.typekit.net/ik/X-yG6xdfOhEEVYJVvMccxHq1bvZNVgTl-adefO7LIe6feltgfHYEBsJzwD9oFDIDWDFcwDmRwDscwD9a5As85Q8qwAZKFAJajAwhwesKF2FKjhsRZ2bUwRS-RbI7OcuoSeNkieZzde8zOcFzdP37O1gkdDJlic88ikolpWgzS1scdhUTdkoRdhXCHKok-AFnpAZCda48SkoRdhXCdW83da4XZcNC-Av0jhNlOYgkdDJlic88ikolpWgzS1scdhUTdkoRdhXCSc8R-a8cdeNkZWw0jhNlOYiaikok-AFnpAZCda48SkoRdhXKgYy7dAb7f6KOc3JbMg6IJMHbM-OaXzqB.js?cb=c39e815b85178010fb1aa1abdd329ebdfdfd193a" async onload="
    try {
      window.Typekit.load();
    } catch (e) {
      console.warn('Typekit not loaded.');
    }
    "></script>
</head>
        <body class="transition-enabled">    <section class="splash image-right">
      <div class="outer-wrap">
        <div class="centered-content-wrap js-site-wrap splash-modules">
        <div class='page-background-video page-background-video-with-panel'>
        </div>
        <div class="page-content js-page-content js-editable-target editable" data-context="pages" data-identity="id:p5e27752c352be21cc07003e4c0e521d3ba588e6f8cb9a0a54cd50" data-section="Page Info">
          <div id="project-canvas" class="js-project-modules modules content">
            <div id="project-modules">
                
                
                
                
                
                <div class="project-module module text project-module-text align- editable js-editable js-project-module e2e-site-project-module-text" style="  padding-top: 20px;
  padding-bottom: 5px;
  width: 100%;
  max-width: 800px;
  float: right;
  clear: both;
">
  <div class="rich-text js-text-editable module-text"><div style="line-height:70px;" class="title"><span style="font-size:70px;" class="texteditor-inline-fontsize"><span style="font-family:xjmd; font-weight:400;"><span style="color:#a9a9a9;" class="texteditor-inline-color">Ricky Flores</span></span></span></div></div>
</div>

                
                
                
                
                
                
                
                
                
                <div class="project-module module text project-module-text align- editable js-editable js-project-module e2e-site-project-module-text" style="  padding-top: px;
  padding-bottom: px;
  width: 100%;
  max-width: 800px;
  float: center;
  clear: both;
">
  <div class="rich-text js-text-editable module-text"><div><span class="texteditor-inline-fontsize" style="font-size:35px;"><span class="texteditor-inline-color" style="color:#a9a9a9;"><span style="font-family:xjmd; font-weight:400;">Photography</span></span></span></div></div>
</div>

                
                
                
                
                
                
                
                
                
                
                
                
                <div class="js-project-module project-module module social_icons project-module-social_icons align- editable js-editable" data-id="m5e27752c394ae9e2a06b56b22a31c74f49fbdb8918841eaedfb60">
  <div class="module-content module-content-social_icons js-module-content">
      <div class="social">
        <ul>
              <li>
                <a href="https://twitter.com/Ricky_Flores" target="_blank">
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 30 24" xml:space="preserve" class="icon"><path d="M24.71 5.89C24 6.2 23.2 6.4 22.4 6.53c0.82-0.5 1.45-1.29 1.75-2.23c-0.77 0.46-1.62 0.8-2.53 1 C20.92 4.5 19.9 4 18.7 4c-2.2 0-3.99 1.81-3.99 4.04c0 0.3 0 0.6 0.1 0.92C11.54 8.8 8.6 7.2 6.6 4.7 C6.3 5.3 6.1 6 6.1 6.77c0 1.4 0.7 2.6 1.8 3.36c-0.65-0.02-1.27-0.2-1.81-0.51c0 0 0 0 0 0.1 c0 2 1.4 3.6 3.2 3.96c-0.34 0.09-0.69 0.14-1.05 0.14c-0.26 0-0.51-0.03-0.75-0.07c0.51 1.6 2 2.8 3.7 2.8 c-1.36 1.08-3.08 1.73-4.95 1.73c-0.32 0-0.64-0.02-0.95-0.06C7.05 19.3 9.1 20 11.4 20c7.33 0 11.34-6.15 11.34-11.49 c0-0.18 0-0.35-0.01-0.52C23.5 7.4 24.2 6.7 24.7 5.89z"/></svg>
                </a>
              </li>
              <li>
                <a href="https://www.facebook.com/rfloresphoto" target="_blank">
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 30 24" xml:space="preserve" class="icon"><path d="M16.21 20h-3.26v-8h-1.63V9.24h1.63V7.59c0-2.25 0.92-3.59 3.53-3.59h2.17v2.76H17.3 c-1.02 0-1.08 0.39-1.08 1.11l0 1.38h2.46L18.38 12h-2.17V20z"/></svg>
                </a>
              </li>
              <li>
                <a href="https://www.instagram.com/rickyflores/" target="_blank">
                  <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 30 24" style="enable-background:new 0 0 30 24;" xml:space="preserve" class="icon">
                  <g>
                    <path d="M15,5.4c2.1,0,2.4,0,3.2,0c0.8,0,1.2,0.2,1.5,0.3c0.4,0.1,0.6,0.3,0.9,0.6c0.3,0.3,0.5,0.5,0.6,0.9
                      c0.1,0.3,0.2,0.7,0.3,1.5c0,0.8,0,1.1,0,3.2s0,2.4,0,3.2c0,0.8-0.2,1.2-0.3,1.5c-0.1,0.4-0.3,0.6-0.6,0.9c-0.3,0.3-0.5,0.5-0.9,0.6
                      c-0.3,0.1-0.7,0.2-1.5,0.3c-0.8,0-1.1,0-3.2,0s-2.4,0-3.2,0c-0.8,0-1.2-0.2-1.5-0.3c-0.4-0.1-0.6-0.3-0.9-0.6
                      c-0.3-0.3-0.5-0.5-0.6-0.9c-0.1-0.3-0.2-0.7-0.3-1.5c0-0.8,0-1.1,0-3.2s0-2.4,0-3.2c0-0.8,0.2-1.2,0.3-1.5c0.1-0.4,0.3-0.6,0.6-0.9
                      c0.3-0.3,0.5-0.5,0.9-0.6c0.3-0.1,0.7-0.2,1.5-0.3C12.6,5.4,12.9,5.4,15,5.4 M15,4c-2.2,0-2.4,0-3.3,0c-0.9,0-1.4,0.2-1.9,0.4
                      c-0.5,0.2-1,0.5-1.4,0.9C7.9,5.8,7.6,6.2,7.4,6.8C7.2,7.3,7.1,7.9,7,8.7C7,9.6,7,9.8,7,12s0,2.4,0,3.3c0,0.9,0.2,1.4,0.4,1.9
                      c0.2,0.5,0.5,1,0.9,1.4c0.4,0.4,0.9,0.7,1.4,0.9c0.5,0.2,1.1,0.3,1.9,0.4c0.9,0,1.1,0,3.3,0s2.4,0,3.3,0c0.9,0,1.4-0.2,1.9-0.4
                      c0.5-0.2,1-0.5,1.4-0.9c0.4-0.4,0.7-0.9,0.9-1.4c0.2-0.5,0.3-1.1,0.4-1.9c0-0.9,0-1.1,0-3.3s0-2.4,0-3.3c0-0.9-0.2-1.4-0.4-1.9
                      c-0.2-0.5-0.5-1-0.9-1.4c-0.4-0.4-0.9-0.7-1.4-0.9c-0.5-0.2-1.1-0.3-1.9-0.4C17.4,4,17.2,4,15,4L15,4L15,4z"/>
                    <path d="M15,7.9c-2.3,0-4.1,1.8-4.1,4.1s1.8,4.1,4.1,4.1s4.1-1.8,4.1-4.1S17.3,7.9,15,7.9L15,7.9z M15,14.7c-1.5,0-2.7-1.2-2.7-2.7
                      c0-1.5,1.2-2.7,2.7-2.7s2.7,1.2,2.7,2.7C17.7,13.5,16.5,14.7,15,14.7L15,14.7z"/>
                    <path d="M20.2,7.7c0,0.5-0.4,1-1,1s-1-0.4-1-1s0.4-1,1-1S20.2,7.2,20.2,7.7L20.2,7.7z"/>
                  </g>
                  </svg>
                </a>
              </li>
              <li>
                <a href="mailto:rigglord@gmail.com">
                  <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 30 24" style="enable-background:new 0 0 30 24;" xml:space="preserve" class="icon">
                    <g>
                      <path d="M15,13L7.1,7.1c0-0.5,0.4-1,1-1h13.8c0.5,0,1,0.4,1,1L15,13z M15,14.8l7.9-5.9v8.1c0,0.5-0.4,1-1,1H8.1c-0.5,0-1-0.4-1-1 V8.8L15,14.8z"/>
                    </g>
                  </svg>
                </a>
              </li>
        </ul>
      </div>
  </div>
</div>

                
                <div class="js-project-module project-module module button project-module-button editable js-editable" data-id="m5e27752c394a4dedb492b4c6e6115885a9a17ebbf6e47ff453f6e"  style=" padding-top: px;
padding-bottom: px;">
    <div class="button-container" style="  text-align: center;
"> 
      <a href="/current" class="button-module preserve-whitespace--nowrap">Enter</a>
      
    </div>
</div>

                
                
                
                
                
                
                
                
                
            </div>
          </div>
        </div>
        </div>
      </div>
      <div class="splash-image-wrap splash-image-wrap-panel-width">
          <section class="js-editable-target editable" data-context="currentPage" data-hover-hint="imageOrVideoBackground">
            <div class="splash-image">
            </div>
          </section>
      </div>
    </section>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam-cell.nr-data.net","licenseKey":"e7fb1b89a0","applicationID":"750147145","transactionName":"ZwZaYkJVDERXUxULCV5Me0NDQA1aGWsmJzJtQxdtS0QDQ14KT0gbbQ==","queueTime":0,"applicationTime":9,"atts":"S0FNFApPHxsUUUNYHU0e","errorBeacon":"bam-cell.nr-data.net","agent":""}</script></body>
<script type="text/javascript">
  // fix for Safari's back/forward cache
  window.onpageshow = function(e) {
    if (e.persisted) { window.location.reload(); }
  };
</script>
  <script type="text/javascript">var __config__ = {"page_id":"p5e27752c352be21cc07003e4c0e521d3ba588e6f8cb9a0a54cd50","theme":{"name":"lukas"},"pageTransition":true,"linkTransition":true,"disableDownload":true,"localizedValidationMessages":{"required":"This field is required","Email":"This field must be a valid email address"},"lightbox":{"enabled":true,"color":{"opacity":0.94,"hex":"#000000"}},"cookie_banner":{"enabled":false},"googleAnalytics":{"trackingCode":"UA-11835049-1","anonymization":false}};</script>
  <script type="text/javascript" src="/site/translations?cb=c39e815b85178010fb1aa1abdd329ebdfdfd193a"></script>
  <script type="text/javascript" src="/dist/js/main.js?cb=c39e815b85178010fb1aa1abdd329ebdfdfd193a"></script>
</html>
