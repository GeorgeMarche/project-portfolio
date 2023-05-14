<!DOCTYPE html>
<html lang="es" dir="ltr" prefix="og: https://ogp.me/ns#">
  <head>
    <!-- Google Tag Manager -->
      <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push(

      {'gtm.start': new Date().getTime(),event:'gtm.js'}
      );var f=d.getElementsByTagName(s)[0],
      j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
      'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
      })(window,document,'script','dataLayer','GTM-N8MP7P');</script>
    <!-- End Google Tag Manager -->
    <meta charset="utf-8" /><script type="text/javascript">(window.NREUM||(NREUM={})).init={privacy:{cookies_enabled:false}};(window.NREUM||(NREUM={})).loader_config={xpid:"VgIOUV9aDBAEUFdXBQkFVVE=",licenseKey:"e7f803923b",applicationID:"446528235"};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var i=e[n]={exports:{}};t[n][0].call(i.exports,function(e){var i=t[n][1][e];return r(i||e)},i,i.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(t,e,n){function r(t){try{c.console&&console.log(t)}catch(e){}}var i,o=t("ee"),a=t(23),c={};try{i=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(c.console=!0,i.indexOf("dev")!==-1&&(c.dev=!0),i.indexOf("nr_dev")!==-1&&(c.nrDev=!0))}catch(s){}c.nrDev&&o.on("internal-error",function(t){r(t.stack)}),c.dev&&o.on("fn-err",function(t,e,n){r(n.stack)}),c.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(c,function(t,e){return t}).join(", ")))},{}],2:[function(t,e,n){function r(t,e,n,r,c){try{p?p-=1:i(c||new UncaughtException(t,e,n),!0)}catch(f){try{o("ierr",[f,s.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function i(t,e){var n=e?null:s.now();o("err",[t,n])}var o=t("handle"),a=t(24),c=t("ee"),s=t("loader"),f=t("gos"),u=window.onerror,d=!1,l="nr@seenError",p=0;s.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(9),t(8),"addEventListener"in window&&t(5),s.xhrWrappable&&t(10),d=!0)}c.on("fn-start",function(t,e,n){d&&(p+=1)}),c.on("fn-err",function(t,e,n){d&&!n[l]&&(f(n,l,function(){return!0}),this.thrown=!0,i(n))}),c.on("fn-end",function(){d&&!this.thrown&&p>0&&(p-=1)}),c.on("internal-error",function(t){o("ierr",[t,s.now(),!0])})},{}],3:[function(t,e,n){t("loader").features.ins=!0},{}],4:[function(t,e,n){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var i=t("ee"),o=t("handle"),a=t(9),c=t(8),s="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",g="pushState",y=t("loader");y.features.stn=!0,t(7),"addEventListener"in window&&t(5);var x=NREUM.o.EV;i.on(m,function(t,e){var n=t[0];n instanceof x&&(this.bstStart=y.now())}),i.on(w,function(t,e){var n=t[0];n instanceof x&&o("bst",[n,e,this.bstStart,y.now()])}),a.on(m,function(t,e,n){this.bstStart=y.now(),this.bstType=n}),a.on(w,function(t,e){o(v,[e,this.bstStart,y.now(),this.bstType])}),c.on(m,function(){this.bstStart=y.now()}),c.on(w,function(t,e){o(v,[e,this.bstStart,y.now(),"requestAnimationFrame"])}),i.on(g+p,function(t){this.time=y.now(),this.startPath=location.pathname+location.hash}),i.on(g+h,function(t){o("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+s]?window.performance[f](u,function(t){o(d,[window.performance.getEntriesByType(l)]),window.performance["c"+s]()},!1):window.performance[f]("webkit"+u,function(t){o(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+s]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,e,n){function r(t){for(var e=t;e&&!e.hasOwnProperty(u);)e=Object.getPrototypeOf(e);e&&i(e)}function i(t){c.inPlace(t,[u,d],"-",o)}function o(t,e){return t[1]}var a=t("ee").get("events"),c=t("wrap-function")(a,!0),s=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";e.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(i(window),i(f.prototype)),a.on(u+"-start",function(t,e){var n=t[1],r=s(n,"nr@wrapped",function(){function t(){if("function"==typeof n.handleEvent)return n.handleEvent.apply(n,arguments)}var e={object:t,"function":n}[typeof n];return e?c(e,"fn-",null,e.name||"anonymous"):n});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,e,n){function r(t,e,n){var r=t[e];"function"==typeof r&&(t[e]=function(){var t=o(arguments),e={};i.emit(n+"before-start",[t],e);var a;e[m]&&e[m].dt&&(a=e[m].dt);var c=r.apply(this,t);return i.emit(n+"start",[t,a],c),c.then(function(t){return i.emit(n+"end",[null,t],c),t},function(t){throw i.emit(n+"end",[t],c),t})})}var i=t("ee").get("fetch"),o=t(24),a=t(23);e.exports=i;var c=window,s="fetch-",f=s+"body-",u=["arrayBuffer","blob","json","text","formData"],d=c.Request,l=c.Response,p=c.fetch,h="prototype",m="nr@context";d&&l&&p&&(a(u,function(t,e){r(d[h],e,f),r(l[h],e,f)}),r(c,"fetch",s),i.on(s+"end",function(t,e){var n=this;if(e){var r=e.headers.get("content-length");null!==r&&(n.rxSize=r),i.emit(s+"done",[null,e],n)}else i.emit(s+"done",[t],n)}))},{}],7:[function(t,e,n){var r=t("ee").get("history"),i=t("wrap-function")(r);e.exports=r;var o=window.history&&window.history.constructor&&window.history.constructor.prototype,a=window.history;o&&o.pushState&&o.replaceState&&(a=o),i.inPlace(a,["pushState","replaceState"],"-")},{}],8:[function(t,e,n){var r=t("ee").get("raf"),i=t("wrap-function")(r),o="equestAnimationFrame";e.exports=r,i.inPlace(window,["r"+o,"mozR"+o,"webkitR"+o,"msR"+o],"raf-"),r.on("raf-start",function(t){t[0]=i(t[0],"fn-")})},{}],9:[function(t,e,n){function r(t,e,n){t[0]=a(t[0],"fn-",null,n)}function i(t,e,n){this.method=n,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,n)}var o=t("ee").get("timer"),a=t("wrap-function")(o),c="setTimeout",s="setInterval",f="clearTimeout",u="-start",d="-";e.exports=o,a.inPlace(window,[c,"setImmediate"],c+d),a.inPlace(window,[s],s+d),a.inPlace(window,[f,"clearImmediate"],f+d),o.on(s+u,r),o.on(c+u,i)},{}],10:[function(t,e,n){function r(t,e){d.inPlace(e,["onreadystatechange"],"fn-",c)}function i(){var t=this,e=u.context(t);t.readyState>3&&!e.resolved&&(e.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,g,"fn-",c)}function o(t){y.push(t),h&&(b?b.then(a):w?w(a):(E=-E,R.data=E))}function a(){for(var t=0;t<y.length;t++)r([],y[t]);y.length&&(y=[])}function c(t,e){return e}function s(t,e){for(var n in t)e[n]=t[n];return e}t(5);var f=t("ee"),u=f.get("xhr"),d=t("wrap-function")(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",g=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],y=[];e.exports=u;var x=window.XMLHttpRequest=function(t){var e=new p(t);try{u.emit("new-xhr",[e],e),e.addEventListener(v,i,!1)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}return e};if(s(p,x),x.prototype=p.prototype,d.inPlace(x.prototype,["open","send"],"-xhr-",c),u.on("send-xhr-start",function(t,e){r(t,e),o(e)}),u.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!w&&!m){var E=1,R=document.createTextNode(E);new h(a).observe(R,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],11:[function(t,e,n){function r(t){if(!c(t))return null;var e=window.NREUM;if(!e.loader_config)return null;var n=(e.loader_config.accountID||"").toString()||null,r=(e.loader_config.agentID||"").toString()||null,f=(e.loader_config.trustKey||"").toString()||null;if(!n||!r)return null;var h=p.generateSpanId(),m=p.generateTraceId(),w=Date.now(),v={spanId:h,traceId:m,timestamp:w};return(t.sameOrigin||s(t)&&l())&&(v.traceContextParentHeader=i(h,m),v.traceContextStateHeader=o(h,w,n,r,f)),(t.sameOrigin&&!u()||!t.sameOrigin&&s(t)&&d())&&(v.newrelicHeader=a(h,m,w,n,r,f)),v}function i(t,e){return"00-"+e+"-"+t+"-01"}function o(t,e,n,r,i){var o=0,a="",c=1,s="",f="";return i+"@nr="+o+"-"+c+"-"+n+"-"+r+"-"+t+"-"+a+"-"+s+"-"+f+"-"+e}function a(t,e,n,r,i,o){var a="btoa"in window&&"function"==typeof window.btoa;if(!a)return null;var c={v:[0,1],d:{ty:"Browser",ac:r,ap:i,id:t,tr:e,ti:n}};return o&&r!==o&&(c.d.tk=o),btoa(JSON.stringify(c))}function c(t){return f()&&s(t)}function s(t){var e=!1,n={};if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(n=NREUM.init.distributed_tracing),t.sameOrigin)e=!0;else if(n.allowed_origins instanceof Array)for(var r=0;r<n.allowed_origins.length;r++){var i=h(n.allowed_origins[r]);if(t.hostname===i.hostname&&t.protocol===i.protocol&&t.port===i.port){e=!0;break}}return e}function f(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.enabled}function u(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.exclude_newrelic_header}function d(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&NREUM.init.distributed_tracing.cors_use_newrelic_header!==!1}function l(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.cors_use_tracecontext_headers}var p=t(20),h=t(13);e.exports={generateTracePayload:r,shouldGenerateTrace:c}},{}],12:[function(t,e,n){function r(t){var e=this.params,n=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<l;r++)t.removeEventListener(d[r],this.listener,!1);e.aborted||(n.duration=a.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==e.status&&(e.status=0):o(this,t),n.cbTime=this.cbTime,u.emit("xhr-done",[t],t),c("xhr",[e,n,this.startTime]))}}function i(t,e){var n=s(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.parsedOrigin=s(e),t.sameOrigin=t.parsedOrigin.sameOrigin}function o(t,e){t.params.status=e.status;var n=w(e,t.lastSize);if(n&&(t.metrics.rxSize=n),t.sameOrigin){var r=e.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var a=t("loader");if(a.xhrWrappable){var c=t("handle"),s=t(13),f=t(11).generateTracePayload,u=t("ee"),d=["load","error","abort","timeout"],l=d.length,p=t("id"),h=t(17),m=t(16),w=t(14),v=window.XMLHttpRequest;a.features.xhr=!0,t(10),t(6),u.on("new-xhr",function(t){var e=this;e.totalCbs=0,e.called=0,e.cbTime=0,e.end=r,e.ended=!1,e.xhrGuids={},e.lastSize=null,e.loadCaptureCalled=!1,t.addEventListener("load",function(n){o(e,t)},!1),h&&(h>34||h<10)||window.opera||t.addEventListener("progress",function(t){e.lastSize=t.loaded},!1)}),u.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),u.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var n=f(this.parsedOrigin);if(n){var r=!1;n.newrelicHeader&&(e.setRequestHeader("newrelic",n.newrelicHeader),r=!0),n.traceContextParentHeader&&(e.setRequestHeader("traceparent",n.traceContextParentHeader),n.traceContextStateHeader&&e.setRequestHeader("tracestate",n.traceContextStateHeader),r=!0),r&&(this.dt=n)}}),u.on("send-xhr-start",function(t,e){var n=this.metrics,r=t[0],i=this;if(n&&r){var o=m(r);o&&(n.txSize=o)}this.startTime=a.now(),this.listener=function(t){try{"abort"!==t.type||i.loadCaptureCalled||(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof e.onload))&&i.end(e)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}};for(var c=0;c<l;c++)e.addEventListener(d[c],this.listener,!1)}),u.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),u.on("xhr-load-added",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),u.on("xhr-load-removed",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),u.on("addEventListener-end",function(t,e){e instanceof v&&"load"===t[0]&&u.emit("xhr-load-added",[t[1],t[2]],e)}),u.on("removeEventListener-end",function(t,e){e instanceof v&&"load"===t[0]&&u.emit("xhr-load-removed",[t[1],t[2]],e)}),u.on("fn-start",function(t,e,n){e instanceof v&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),u.on("fn-end",function(t,e){this.xhrCbStart&&u.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,e],e)}),u.on("fetch-before-start",function(t){function e(t,e){var n=!1;return e.newrelicHeader&&(t.set("newrelic",e.newrelicHeader),n=!0),e.traceContextParentHeader&&(t.set("traceparent",e.traceContextParentHeader),e.traceContextStateHeader&&t.set("tracestate",e.traceContextStateHeader),n=!0),n}var n,r=t[1]||{};"string"==typeof t[0]?n=t[0]:t[0]&&t[0].url&&(n=t[0].url),n&&(this.parsedOrigin=s(n),this.sameOrigin=this.parsedOrigin.sameOrigin);var i=f(this.parsedOrigin);if(i&&(i.newrelicHeader||i.traceContextParentHeader))if("string"==typeof t[0]){var o={};for(var a in r)o[a]=r[a];o.headers=new Headers(r.headers||{}),e(o.headers,i)&&(this.dt=i),t.length>1?t[1]=o:t.push(o)}else t[0]&&t[0].headers&&e(t[0].headers,i)&&(this.dt=i)})}},{}],13:[function(t,e,n){var r={};e.exports=function(t){if(t in r)return r[t];var e=document.createElement("a"),n=window.location,i={};e.href=t,i.port=e.port;var o=e.href.split("://");!i.port&&o[1]&&(i.port=o[1].split("/")[0].split("@").pop().split(":")[1]),i.port&&"0"!==i.port||(i.port="https"===o[0]?"443":"80"),i.hostname=e.hostname||n.hostname,i.pathname=e.pathname,i.protocol=o[0],"/"!==i.pathname.charAt(0)&&(i.pathname="/"+i.pathname);var a=!e.protocol||":"===e.protocol||e.protocol===n.protocol,c=e.hostname===document.domain&&e.port===n.port;return i.sameOrigin=a&&(!e.hostname||c),"/"===i.pathname&&(r[t]=i),i}},{}],14:[function(t,e,n){function r(t,e){var n=t.responseType;return"json"===n&&null!==e?e:"arraybuffer"===n||"blob"===n||"json"===n?i(t.response):"text"===n||""===n||void 0===n?i(t.responseText):void 0}var i=t(16);e.exports=r},{}],15:[function(t,e,n){function r(){}function i(t,e,n){return function(){return o(t,[f.now()].concat(c(arguments)),e?null:this,n),e?void 0:this}}var o=t("handle"),a=t(23),c=t(24),s=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,e){u[e]=i(l+e,!0,"api")}),u.addPageAction=i(l+"addPageAction",!0),u.setCurrentRouteName=i(l+"routeName",!0),e.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,e){var n={},r=this,i="function"==typeof e;return o(p+"tracer",[f.now(),t,n],r),function(){if(s.emit((i?"":"no-")+"fn-start",[f.now(),r,i],n),i)try{return e.apply(this,arguments)}catch(t){throw s.emit("fn-err",[arguments,this,t],n),t}finally{s.emit("fn-end",[f.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){h[e]=i(p+e)}),newrelic.noticeError=function(t,e){"string"==typeof t&&(t=new Error(t)),o("err",[t,f.now(),!1,e])}},{}],16:[function(t,e,n){e.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(e){return}}}},{}],17:[function(t,e,n){var r=0,i=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);i&&(r=+i[1]),e.exports=r},{}],18:[function(t,e,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,c=t(25);e.exports=r,e.exports.offset=a,e.exports.getLastTimestamp=i},{}],19:[function(t,e,n){function r(t,e){var n=t.getEntries();n.forEach(function(t){"first-paint"===t.name?d("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&d("timing",["fcp",Math.floor(t.startTime)])})}function i(t,e){var n=t.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(t){t.getEntries().forEach(function(t){t.hadRecentInput||d("cls",[t])})}function a(t){if(t instanceof h&&!w){var e=Math.round(t.timeStamp),n={type:t.type};e<=l.now()?n.fid=l.now()-e:e>l.offset&&e<=Date.now()?(e-=l.offset,n.fid=l.now()-e):e=l.now(),w=!0,d("timing",["fi",e,n])}}function c(t){d("pageHide",[l.now(),t])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var s,f,u,d=t("handle"),l=t("loader"),p=t(22),h=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){s=new PerformanceObserver(r);try{s.observe({entryTypes:["paint"]})}catch(m){}f=new PerformanceObserver(i);try{f.observe({entryTypes:["largest-contentful-paint"]})}catch(m){}u=new PerformanceObserver(o);try{u.observe({type:"layout-shift",buffered:!0})}catch(m){}}if("addEventListener"in document){var w=!1,v=["click","keydown","mousedown","pointerdown","touchstart"];v.forEach(function(t){document.addEventListener(t,a,!1)})}p(c)}},{}],20:[function(t,e,n){function r(){function t(){return e?15&e[n++]:16*Math.random()|0}var e=null,n=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(e=r.getRandomValues(new Uint8Array(31)));for(var i,o="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",c=0;c<o.length;c++)i=o[c],"x"===i?a+=t().toString(16):"y"===i?(i=3&t()|8,a+=i.toString(16)):a+=i;return a}function i(){return a(16)}function o(){return a(32)}function a(t){function e(){return n?15&n[r++]:16*Math.random()|0}var n=null,r=0,i=window.crypto||window.msCrypto;i&&i.getRandomValues&&Uint8Array&&(n=i.getRandomValues(new Uint8Array(31)));for(var o=[],a=0;a<t;a++)o.push(e().toString(16));return o.join("")}e.exports={generateUuid:r,generateSpanId:i,generateTraceId:o}},{}],21:[function(t,e,n){function r(t,e){if(!i)return!1;if(t!==i)return!1;if(!e)return!0;if(!o)return!1;for(var n=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,s=c.match(a);s&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(i="Safari",o=s[1])}e.exports={agent:i,version:o,match:r}},{}],22:[function(t,e,n){function r(t){function e(){t(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,e,!1)}e.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],23:[function(t,e,n){function r(t,e){var n=[],r="",o=0;for(r in t)i.call(t,r)&&(n[o]=e(r,t[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],24:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,i=n-e||0,o=Array(i<0?0:i);++r<i;)o[r]=t[e+r];return o}e.exports=r},{}],25:[function(t,e,n){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,e,n){function r(){}function i(t){function e(t){return t&&t instanceof r?t:t?s(t,c,o):o()}function n(n,r,i,o){if(!l.aborted||o){t&&t(n,r,i);for(var a=e(i),c=m(n),s=c.length,f=0;f<s;f++)c[f].apply(a,r);var d=u[y[n]];return d&&d.push([x,n,r,a]),a}}function p(t,e){g[t]=m(t).concat(e)}function h(t,e){var n=g[t];if(n)for(var r=0;r<n.length;r++)n[r]===e&&n.splice(r,1)}function m(t){return g[t]||[]}function w(t){return d[t]=d[t]||i(n)}function v(t,e){f(t,function(t,n){e=e||"feature",y[n]=e,e in u||(u[e]=[])})}var g={},y={},x={on:p,addEventListener:p,removeEventListener:h,emit:n,get:w,listeners:m,context:e,buffer:v,abort:a,aborted:!1};return x}function o(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var c="nr@context",s=t("gos"),f=t(23),u={},d={},l=e.exports=i();l.backlog=u},{}],gos:[function(t,e,n){function r(t,e,n){if(i.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return t[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){i.buffer([t],r),i.emit(t,e,n)}var i=t("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,o,function(){return i++})}var i=1,o="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!b++){var t=x.info=NREUM.info,e=l.getElementsByTagName("script")[0];if(setTimeout(f.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&e))return f.abort();s(g,function(e,n){t[e]||(t[e]=n)});var n=a();c("mark",["onload",n+x.offset],null,"api"),c("timing",["load",n]);var r=l.createElement("script");r.src="https://"+t.agent,e.parentNode.insertBefore(r,e)}}function i(){"complete"===l.readyState&&o()}function o(){c("mark",["domContent",a()+x.offset],null,"api")}var a=t(18),c=t("handle"),s=t(23),f=t("ee"),u=t(21),d=window,l=d.document,p="addEventListener",h="attachEvent",m=d.XMLHttpRequest,w=m&&m.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:m,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var v=""+location,g={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1184.min.js"},y=m&&w&&w[p]&&!/CriOS/.test(navigator.userAgent),x=e.exports={offset:a.getLastTimestamp(),now:a,origin:v,features:{},xhrWrappable:y,userAgent:u};t(15),t(19),l[p]?(l[p]("DOMContentLoaded",o,!1),d[p]("load",r,!1)):(l[h]("onreadystatechange",i),d[h]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var b=0},{}],"wrap-function":[function(t,e,n){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var i=t("ee"),o=t(24),a="nr@original",c=Object.prototype.hasOwnProperty,s=!1;e.exports=function(t,e){function n(t,e,n,i){function nrWrapper(){var r,a,c,s;try{a=this,r=o(arguments),c="function"==typeof n?n(r,a):n||{}}catch(f){l([f,"",[r,a,i],c])}u(e+"start",[r,a,i],c);try{return s=t.apply(a,r)}catch(d){throw u(e+"err",[r,a,d],c),d}finally{u(e+"end",[r,a,s],c)}}return r(t)?t:(e||(e=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,e,i,o){i||(i="");var a,c,s,f="-"===i.charAt(0);for(s=0;s<e.length;s++)c=e[s],a=t[c],r(a)||(t[c]=n(a,f?c+i:i,o,c))}function u(n,r,i){if(!s||e){var o=s;s=!0;try{t.emit(n,r,i,e)}catch(a){l([a,n,r,i])}s=o}}function d(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){l([r])}for(var i in t)c.call(t,i)&&(e[i]=t[i]);return e}function l(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=i),n.inPlace=f,n.flag=a,n}},{}]},{},["loader",2,12,4,3]);</script>
<meta http-equiv="content-language" content="es" />
<meta name="twitter:card" content="summary_large_image" />
<meta property="og:site_name" content="Voice of America" />
<meta property="fb:pages" content="36235438073" />
<link rel="canonical" href="https://www.voanoticias.com/centroamerica/nicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19" />
<meta property="og:type" content="Article" />
<meta name="twitter:site" content="@VOANews" />
<meta name="news_keywords" content="Nicaragua, coronavirus, COVID-19, pandemia" />
<meta name="twitter:title" content="Nicaragua: científicos alertan por posible rebrote de COVID-19" />
<meta property="fb:app_id" content="394734098058258" />
<meta name="twitter:description" content="Entre las recomendaciones están: fortalecer la respuesta de Nicaragua por medio de un plan de mitigación a profundidad que aborde la vigilancia, detección, respuesta y control de brotes." />
<meta name="description" content="Entre las recomendaciones están: fortalecer la respuesta de Nicaragua por medio de un plan de mitigación a profundidad que aborde la vigilancia, detección, respuesta y control de brotes." />
<meta name="msvalidate.01" content="3286EE554B6F672A6F2E608C02343C0E" />
<meta property="og:url" content="https://www.voanoticias.com/centroamerica/nicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19" />
<meta property="og:title" content="Nicaragua: científicos alertan por posible rebrote de COVID-19" />
<meta name="keywords" content="Nicaragua, coronavirus, COVID-19, pandemia" />
<meta property="og:description" content="Entre las recomendaciones están: fortalecer la respuesta de Nicaragua por medio de un plan de mitigación a profundidad que aborde la vigilancia, detección, respuesta y control de brotes." />
<meta name="twitter:url" content="https://www.voanoticias.com/centroamerica/nicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19" />
<meta name="twitter:image" content="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/710x340/s3/2020-10/Los%20hospitales%20y%20centros%20de%20salud%20en%20Nicaragua%20se%20rebasaron%20desde%20que%20se%20reporto%CC%81%20el%20primer%20caso%20de%20COVID19.%20Foto%20Houston%20Castillo%2C%20VOA.png?itok=jPmv85U-" />
<meta property="og:image" content="https://im-media.voltron.voanews.com/Drupal/02live-246/2020-10/Los%20hospitales%20y%20centros%20de%20salud%20en%20Nicaragua%20se%20rebasaron%20desde%20que%20se%20reporto%CC%81%20el%20primer%20caso%20de%20COVID19.%20Foto%20Houston%20Castillo%2C%20VOA.png" />
<meta property="article:section" content="Centroamérica, Coronavirus" />
<meta property="article:tag" content="Nicaragua" />
<meta property="article:tag" content="coronavirus" />
<meta property="article:tag" content="COVID-19" />
<meta property="article:tag" content="pandemia" />
<meta name="apple-itunes-app" content="app-id=1414561730, app-argument=//4948560.ltr" />
<meta property="og:image:width" content="1920" />
<meta property="og:image:height" content="1080" />
<meta name="Generator" content="Drupal 8 (https://www.drupal.org)" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="//tags.tiqcdn.com/utag/bbg/voa-pangea/prod/utag.sync.js"></script>
<link rel="sitemap" type="application/rss+xml" href="/sitemap.xml" />
<link rel="manifest" href="/modules/custom/voa_pwa/js/manifest.json?voltron=universalDefender" />
<meta name="theme-color" content="#3a79b7" />
<link rel="shortcut icon" href="/favicon.ico" type="image/vnd.microsoft.icon" />
<link rel="revision" href="https://www.voanoticias.com/centroamerica/nicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19" />
<link rel="amphtml" href="https://www.voanoticias.com/centroamerica/nicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19?amp" />

    <title>Nicaragua: científicos alertan por posible rebrote de COVID-19 | Voice of America - Spanish</title>
    <link rel="stylesheet" media="all" href="/sites/g/files/cauiqe246/files/css/css_3gxoXRaGvIse743swrLJK-Z8_o0ul17vj_oJvJmB_Tg.css" />
<link rel="stylesheet" media="all" href="/modules/custom/voa_breaking_news/css/voa-breaking-news.theme.css?qhkzv5" />
<link rel="stylesheet" media="all" href="/sites/g/files/cauiqe246/files/css/css_XgJohrMvL17FcfjOfZtfpTqmYYuahSHSDIN3FTT15Bc.css" />

    
<!--[if lte IE 8]>
<script src="/sites/g/files/cauiqe246/files/js/js_VtafjXmRvoUgAzqzYTA3Wrjkx9wcWhjP0G4ZnnqRamA.js"></script>
<![endif]-->
<script src="/sites/g/files/cauiqe246/files/js/js_QHqjxhGPGgZFwOfW92tmrVpssmC1sbO0zDG4TgLmaEI.js"></script>


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
      Pasar al contenido principal
    </a>
    <script type="text/javascript">var utag_data = {"slug":"nicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19","page_type":"article","content_type":"article","article_uid":"248426","video_event":[],"pub_day":"08","pub_hour":"05","pub_minute":"18","pub_min":"18","pub_month":"10","pub_weekday":"Thu","pub_year":"2020","pub_date":"Thursday, October 8, 2020 - 05:18","dateline":"MANAGUA","short_headline":null,"byline":"Houston Castillo Vado","categories":"Centroam\u00e9rica, Coronavirus","subcontent_type":"Article","section":"Centroam\u00e9rica, Coronavirus","tags":"Centroam\u00e9rica, Coronavirus","english_section":"Centroam\u00e9rica, Coronavirus","page_name":"Nicaragua: cient\u00edficos alertan por posible rebrote de COVID-19","page_title":"Nicaragua: cient\u00edficos alertan por posible rebrote de COVID-19","long_headline":"Nicaragua: cient\u00edficos alertan por posible rebrote de COVID-19","headline":"Nicaragua: cient\u00edficos alertan por posible rebrote de COVID-19","runs_js":"yes","language":"Spanish","language_service":"VOA Spanish","entity":"voa","platform":"Responsive","short_language_service":"SPA","platform_short":"r","property_id":"483","enviro_type":"prod","domain":"www.voanoticias.com","url":"www.voanoticias.com\/centroamerica\/nicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19"}</script>
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
                  TV en Vivo              </div>
      <div class="channel-schedule__wrapper">
        <div class="channel-schedule-wrapper" id="channel-64481-wrapper-mobile" data-menu-block-channel="64481" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

              <div class="channel-schedule-wrapper" id="channel-64486-wrapper-mobile" data-menu-block-channel="64486" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

              <div class="channel-schedule-wrapper" id="channel-64491-wrapper-mobile" data-menu-block-channel="64491" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

              <div class="channel-schedule-wrapper" id="channel-64501-wrapper-mobile" data-menu-block-channel="64501" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

            <div class="schedule-menu__links">
          <div class="schedule-menu__link"><a
              href="/watch/schedule">Programación completa</a>
          </div>
          <div class="schedule-menu__link"><a
              href="/watch/programs">Todos los programas</a>
          </div>
        </div>
      </div>
      </div>

  </div>

                                                <div>
  
    
      <div class="schedule-menu voa-media-schedule-menu-block">
            <div class="channel-schedule__section-title">
        <span class="channel-schedule__icon fa fa-volume-up"></span>
                  Radio en Vivo              </div>
      <div class="channel-schedule__wrapper">
        <div class="channel-schedule-wrapper" id="channel-64496-wrapper-mobile" data-menu-block-channel="64496" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

            <div class="schedule-menu__links">
          <div class="schedule-menu__link"><a
              href="/listen/schedule">Programación completa</a>
          </div>
          <div class="schedule-menu__link"><a
              href="/listen/programs">Todos los programas</a>
          </div>
        </div>
      </div>
      </div>

  </div>

                              </div>
            </div>

            
    
    
      
              <ul class="grid site-header__mega-menu-list">
                              <li class="site-header__mega-menu-item col-2 col-2--full-mobile site-header__mega-menu-item--header">
          <a href="/estadosunidos" class="site-header__mega-menu-item-link site-header__mega-menu-item-link--header">Estados Unidos</a>
                                    <ul class="site-header__mega-menu-sub-list">
                                      <div class="grid">
        <div class="col-2 site-header__mega-menu-sub-column">
                      <li class="site-header__mega-menu-item">
              <a href="/eeuu-vota" class="site-header__mega-menu-item-link">EE.UU. Vota</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/coronavirus" class="site-header__mega-menu-item-link">Coronavirus</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/inmigracion" class="site-header__mega-menu-item-link"> Immigración</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/economia-finanzas" class="site-header__mega-menu-item-link"> Economía y Negocios</a>
                          </li>
                  </div>
        <div class="col-2 site-header__mega-menu-sub-column">
                      <li class="site-header__mega-menu-item">
              <a href="/tecnologia-ciencia" class="site-header__mega-menu-item-link">Ciencia y tecnología</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/la-prensa-libre-importa-0" class="site-header__mega-menu-item-link">La prensa libre importa</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/especiales-voa" class="site-header__mega-menu-item-link">Especiales</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/entretenimiento-0" class="site-header__mega-menu-item-link">Entretenimiento</a>
                          </li>
                  </div>
      </div>
        </ul>
  
                  </li>
                      <li class="site-header__mega-menu-item col-2 col-2--full-mobile site-header__mega-menu-item--header">
          <a href="/america-latina" class="site-header__mega-menu-item-link site-header__mega-menu-item-link--header"> América Latina</a>
                                    <ul class="site-header__mega-menu-sub-list">
                                      <div class="grid">
        <div class="col-2 site-header__mega-menu-sub-column">
                      <li class="site-header__mega-menu-item">
              <a href="/centroamerica" class="site-header__mega-menu-item-link">Centroamérica</a>
                          </li>
                  </div>
        <div class="col-2 site-header__mega-menu-sub-column">
                      <li class="site-header__mega-menu-item">
              <a href="/venezuela" class="site-header__mega-menu-item-link">Venezuela</a>
                          </li>
                  </div>
      </div>
        </ul>
  
                  </li>
                      <li class="site-header__mega-menu-item col-2 col-2--full-mobile site-header__mega-menu-item--header">
          <a href="/listen/schedule/voa-spanish-radio" class="site-header__mega-menu-item-link site-header__mega-menu-item-link--header" data-drupal-link-system-path="listen/schedule/voa-spanish-radio"> Programas de Radio</a>
                                    <ul class="site-header__mega-menu-sub-list">
                                      <div class="grid">
        <div class="col-2 site-header__mega-menu-sub-column">
                      <li class="site-header__mega-menu-item">
              <a href="/radio-buenos-dias-america" class="site-header__mega-menu-item-link"> Buenos Días América</a>
                          </li>
                      <li class="site-header__mega-menu-item">
              <a href="/conversando-con-la-voa" class="site-header__mega-menu-item-link">Conversando con la VOA</a>
                          </li>
                  </div>
        <div class="col-2 site-header__mega-menu-sub-column">
                      <li class="site-header__mega-menu-item">
              <a href="/venezuela-360-television" class="site-header__mega-menu-item-link">Venezuela 360 (Radio)</a>
                          </li>
                  </div>
      </div>
        </ul>
  
                  </li>
                      <li class="site-header__mega-menu-item">
          <a href="/watch/programs" class="site-header__mega-menu-item-link site-header__mega-menu-item-link--header" data-drupal-link-system-path="watch/programs">Programas de Televisión</a>
                  </li>
              </ul>
  


  

          </div>
        </nav>
      </div>

        <div>
    
<div id="block-featuredmenu">
  
  
              
        <ul class="site-header__featured-menu">
      <li class="site-header__mega-menu-item-link site-header__mega-menu-featured">Destacados</li>
              <li><a class="site-header__featured-menu-item" href="/estadosunidos">EE.UU.</a></li>
              <li><a class="site-header__featured-menu-item" href="/eeuu-vota">EE.UU. Vota</a></li>
              <li><a class="site-header__featured-menu-item" href="/venezuela">Venezuela</a></li>
              <li><a class="site-header__featured-menu-item" href="/centroamerica">Centroamérica</a></li>
              <li><a class="site-header__featured-menu-item" href="https://www.voanoticias.com/coronavirus">Coronavirus</a></li>
              <li><a class="site-header__featured-menu-item" href="https://www.usagmdirect.com/es-ES?e=1g&amp;l=2h">Direct</a></li>
              <li><a class="site-header__featured-menu-item" href="https://editorials.voa.gov/z/3305">Editoriales</a></li>
          </ul>
  
  </div>

  </div>

    </div>

    <a href="/" class="site-header__branding"><img alt="Logo de la Voz de América" src="/themes/custom/voa/logo.svg"/></a>

    <div class="site-header__secondary">
      <div class="site-header__secondary--grouping">
        <button id="js-search-drop" class="button site-header__item">
          <span class="site-header__icon fa fa-search"></span><span
            class="site-header__icon-text site-header__icon-text--medium-only">Buscar</span>
        </button>
        <div class="site-header__search-drop site-header__subnav">
          <div class="grid">
            <div class="col-1">
              <form class="site-header__search-form" action="/search" method="GET">
                <label class="site-header__search-label" for="header-search">Buscar en voanoticias.com</label>
                <input placeholder="Buscar en voanoticias.com" class="site-header__search" id="header-search" type="text"
                       name="search_api_fulltext">
                <input type="hidden" name="type" value="1">
                <input type="hidden" name="sort_by" value="publication_time">
                <button class="button site-header__search-button fa fa-search" type="submit"><span
                    class="site-header__search-label">Buscar</span></button>
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
          <span class="site-header__icon fa fa-play"></span><span class="site-header__icon-text">TV en Vivo</span>
        </a>
        <div class="site-header__watch-drop site-header__subnav">
          <div class="grid">
            <div class="col-1">
              <div id="watch-drop-menu">
                <div>
  
    
      <div class="schedule-menu voa-media-schedule-menu-block">
            <div class="channel-schedule__section-title">
        <span class="channel-schedule__icon fa fa-play"></span>
                  TV en Vivo              </div>
      <div class="channel-schedule__wrapper">
        <div class="channel-schedule-wrapper" id="channel-64481-wrapper-desktop" data-menu-block-channel="64481" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

              <div class="channel-schedule-wrapper" id="channel-64486-wrapper-desktop" data-menu-block-channel="64486" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

              <div class="channel-schedule-wrapper" id="channel-64491-wrapper-desktop" data-menu-block-channel="64491" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

              <div class="channel-schedule-wrapper" id="channel-64501-wrapper-desktop" data-menu-block-channel="64501" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

            <div class="schedule-menu__links">
          <div class="schedule-menu__link"><a
              href="/watch/schedule">Programación completa</a>
          </div>
          <div class="schedule-menu__link"><a
              href="/watch/programs">Todos los programas</a>
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
            class="site-header__icon fa fa-volume-up"></span><span class="site-header__icon-text">Radio en Vivo</span></a>
        <div class="site-header__listen-drop site-header__subnav">
          <div class="grid">
            <div class="col-1">
              <div id="listen-drop-menu">
                <div>
  
    
      <div class="schedule-menu voa-media-schedule-menu-block">
            <div class="channel-schedule__section-title">
        <span class="channel-schedule__icon fa fa-volume-up"></span>
                  Radio en Vivo              </div>
      <div class="channel-schedule__wrapper">
        <div class="channel-schedule-wrapper" id="channel-64496-wrapper-desktop" data-menu-block-channel="64496" >
      <div class="channel-playing">
        <img src="/core/themes/stable/images/core/throbber-active.gif"
             alt="Please wait, loading..."/>
      </div>
    </div>

            <div class="schedule-menu__links">
          <div class="schedule-menu__link"><a
              href="/listen/schedule">Programación completa</a>
          </div>
          <div class="schedule-menu__link"><a
              href="/listen/programs">Todos los programas</a>
          </div>
        </div>
      </div>
      </div>

  </div>

              </div>
            </div>
          </div>
        </div>
                                  <a href="/videos" class="site-header__item site-header__item--secondary site-header__subnav site-header__video-landing site-header__item--mobile-only"><span
              class="site-header__icon fa fa-play"></span><span class="site-header__icon-text">Videos</span></a>
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
  
    
      

  


  
  
                          

  
  



  <div class="l-content-container"><div class="article">
  <div class="article__social">
    <div class="article__social-container">
      

<div class="social-widget">
      <div tabindex="0" id="share-facebook" class="fab social-widget__icon social-widget__icon--facebook" data-url="https%3A%2F%2Fwww.voanoticias.com%2Fcentroamerica%2Fnicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19">
      <span class="fa-facebook-f"><span class="sr-only">Compartir en Facebook</span></span>
    </div>
        <div tabindex="0" id="share-twitter" class="fab social-widget__icon social-widget__icon--twitter" data-url="https%3A%2F%2Fwww.voanoticias.com%2Fcentroamerica%2Fnicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19" data-title="Nicaragua%3A%20cient%C3%ADficos%20alertan%20por%20posible%20rebrote%20de%20COVID-19" >
      <span class="fa-twitter"><span class="sr-only">Compartir en Twitter</span></span>
    </div>
            <div tabindex="0" id="share-whatsapp" class="fab social-widget__icon social-widget__icon--whatsapp" data-url="https%3A%2F%2Fwww.voanoticias.com%2Fcentroamerica%2Fnicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19" data-title="Nicaragua%3A%20cient%C3%ADficos%20alertan%20por%20posible%20rebrote%20de%20COVID-19" >
      <span class="fa-whatsapp"><span class="sr-only">Compartir en WhatsApp</span></span>
    </div>
              <div tabindex="0" id="share-comment" class="fa social-widget__icon social-widget__icon--comment">
      <span class="fa-comment"><span class="sr-only">Comentarios</span></span>
    </div>
    </div>
    </div>
  </div>
  <div class="article__main">
    <div class="page-header">
  <span class="page-header__eyebrow eyebrow"><a href="/centroamerica" hreflang="es">Centroamérica</a></span>
  <h1 class="page-header__title"><span>Nicaragua: científicos alertan por posible rebrote de COVID-19</span>
</h1>

      <div class="page-header__summary text--medium">Entre las recomendaciones están: fortalecer la respuesta de Nicaragua por medio de un plan de mitigación a profundidad que aborde la vigilancia, detección, respuesta y control de brotes.</div>
  
  <div class="caption page-header__meta ">
          <div class="page-header__meta-item">
        <span>Por</span>
                  <span>Houston Castillo Vado</span>              </div>
    
    <div class="page-header__meta-item">
              08 Octubre 2020 06:36 AM
          </div>
          <div class="page-header__meta-item">
        
      </div>
      </div>
</div>
<div class="article__social article__social--mobile-only">
      

<div class="social-widget">
      <div tabindex="0" id="share-facebook-mobile" class="fab social-widget__icon social-widget__icon--facebook" data-url="https%3A%2F%2Fwww.voanoticias.com%2Fcentroamerica%2Fnicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19">
      <span class="fa-facebook-f"><span class="sr-only">Compartir en Facebook</span></span>
    </div>
        <div tabindex="0" id="share-twitter-mobile" class="fab social-widget__icon social-widget__icon--twitter" data-url="https%3A%2F%2Fwww.voanoticias.com%2Fcentroamerica%2Fnicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19" data-title="Nicaragua%3A%20cient%C3%ADficos%20alertan%20por%20posible%20rebrote%20de%20COVID-19" >
      <span class="fa-twitter"><span class="sr-only">Compartir en Twitter</span></span>
    </div>
            <div tabindex="0" id="share-whatsapp-mobile" class="fab social-widget__icon social-widget__icon--whatsapp" data-url="https%3A%2F%2Fwww.voanoticias.com%2Fcentroamerica%2Fnicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19" data-title="Nicaragua%3A%20cient%C3%ADficos%20alertan%20por%20posible%20rebrote%20de%20COVID-19" >
      <span class="fa-whatsapp"><span class="sr-only">Compartir en WhatsApp</span></span>
    </div>
              <div tabindex="0" id="share-comment-mobile" class="fa social-widget__icon social-widget__icon--comment">
      <span class="fa-comment"><span class="sr-only">Comentarios</span></span>
    </div>
    </div>
    </div>
    <div class="grid">
      <div class="col-2of3">
        <div class="article__lightbox-available">
                      <div class="article__featured-media"><figure class="media media--type-image media--view-mode-" itemscope="itemscope" itemtype="http://schema.org/ImageObject">
      <a href="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/sourced/s3/2020-10/Los%20hospitales%20y%20centros%20de%20salud%20en%20Nicaragua%20se%20rebasaron%20desde%20que%20se%20reporto%CC%81%20el%20primer%20caso%20de%20COVID19.%20Foto%20Houston%20Castillo%2C%20VOA.png?itok=2B2OeEMd" data-size="1920x1080">
      
            <div>    <img srcset="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/892x501/s3/2020-10/Los%20hospitales%20y%20centros%20de%20salud%20en%20Nicaragua%20se%20rebasaron%20desde%20que%20se%20reporto%CC%81%20el%20primer%20caso%20de%20COVID19.%20Foto%20Houston%20Castillo%2C%20VOA.png?itok=0-VMq2SR 1x" src="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/892x501/s3/2020-10/Los%20hospitales%20y%20centros%20de%20salud%20en%20Nicaragua%20se%20rebasaron%20desde%20que%20se%20reporto%CC%81%20el%20primer%20caso%20de%20COVID19.%20Foto%20Houston%20Castillo%2C%20VOA.png?itok=0-VMq2SR" alt="Nicaragua coronavirus." />


</div>
      
      <figcaption>
                          En Nicaragua los hospitales y centros de salud no dan abasto desde que se reportaron los primeros casos de COVID-19. [Foto: Houston Castillo Vado]
              </figcaption>
    </a>
  </figure>
</div>
          
          <div class="article__content">
            <div class="article__body">
              
            <div><p>MANAGUA - Los altos índices de pobreza en Nicaragua, sumados al impacto que ha tenido el nuevo coronavirus en el país, impulsó a un grupo de 21 científicos de América Latina a realizar un informe en el que brindan una serie recomendaciones al gobierno del presidente Daniel Ortega con el fin de mitigar los estragos que pueda ocasionar un posible rebrote en la región.</p>

<p>Entre las recomendaciones están: fortalecer la respuesta de Nicaragua por medio de un plan de mitigación a profundidad que aborde la vigilancia, detección, respuesta y control de brotes.</p>

<p>Resaltan además la importancia de realizar pruebas a gran escala para mantener vigilancia epidemiológica sobre los casos de COVID-19. Hasta el momento las pruebas se encuentran centralizadas por el Ministerio de Salud y únicamente están disponibles para personas que presentan cuadros clínicos severos.</p>

<p>“Las pruebas son cruciales para la investigación epidemiológica y para desarrollar un tratamiento médico adecuado. Por lo tanto, la vigilancia epidemiológica debe incluir pruebas a gran escala en grandes poblaciones urbanas y pruebas de trabajadores esenciales”, sugieren los científicos.</p>

<p>Indican también que es imperativo que el público nicaragüense esté informado sobre el verdadero alcance de la pandemia, algo que no se pudo percibir en comunidades rurales e indígenas que se vieron impactadas durante los meses de abril y mayo, en los que hubo un repunte contagios.</p>

<p>“La información objetiva es vital para prevenir y limitar la propagación y los efectos del COVID-19. Cuando el sector salud logra dar a conocer medidas preventivas, como el lavado de manos y el distanciamiento social, estas quedan arraigadas profundamente en la conciencia pública”, advirtieron los médicos.</p>


    <article data-embed-button="wysiwyg_video" data-entity-embed-display="view_mode:media.embedded" data-entity-type="media" data-entity-uuid="6b291f3e-ef67-4d20-9f70-14440f3a5f0c" data-langcode="es" class="embedded-entity"><div>
  
    <div class="sr-only"></div>
  <!-- Kaltura v7 Player Code For Dynamic Embed-->
<div id="kvideo_1_9cbnd7sh" class="notranslate">
  <div id="_3644251-1-9cbnd7sh-wrapper" class="kaltura-video-player" data-embed-id="351251">
    <div id="hvideo_1_9cbnd7sh">
      <div class="psiphon-player">
        <video playsinline="playsinline" controls="controls" preload="metadata" width="100%" poster="https://cfvod.kaltura.com/p/2446332/sp/244633200/thumbnail/entry_id/1_9cbnd7sh/version/100021" id="hvideo_1_9cbnd7sh_player"><source src="" type="video/mp4"></source><p>Sorry, but your browser cannot support embedded video of this type, you can
            <a href="" target="_blank">download this video</a> to view it offline.</p>
        </video></div>
    </div>
  </div>

    <script type="text/javascript" src="https://cdnapisec.kaltura.com/p/2446332/embedPlaykitJs/uiconf_id/43644251"></script></div>

  <div id="_3644251-1-9cbnd7sh-direct-link-wrapper" class="kaltura-video-direct-link">
    <button class="button"><span class="fa fa-download"></span>Descargar archivo</button>
    <div class="player-download-wrapper">
              <div class="player-download-formats"><a href="https://voamedia.voanews.com/pd/p/2446332/sp/244633200/serveFlavor/entryId/1_9cbnd7sh/v/1/ev/6/flavorId/1_d41eexn4/fileName/Expertos_advierten_sobre_rebrote_de_COVID-19_en_Nicaragua_(Basic_Small_-_WEB_MBL_(H264_400)).mp4/name/a.mp4">360p | 6 MB</a></div>
              <div class="player-download-formats"><a href="https://voamedia.voanews.com/pd/p/2446332/sp/244633200/serveFlavor/entryId/1_9cbnd7sh/v/1/ev/6/flavorId/1_1yot12c8/fileName/Expertos_advierten_sobre_rebrote_de_COVID-19_en_Nicaragua_(Basic_Small_-_WEB_MBL_(H264_600)).mp4/name/a.mp4">480p | 9 MB</a></div>
              <div class="player-download-formats"><a href="https://voamedia.voanews.com/pd/p/2446332/sp/244633200/serveFlavor/entryId/1_9cbnd7sh/v/1/ev/6/flavorId/1_1q56f5a6/fileName/Expertos_advierten_sobre_rebrote_de_COVID-19_en_Nicaragua_(SD_Small_-_WEB_MBL_(H264_900)).mp4/name/a.mp4">540p | 13 MB</a></div>
              <div class="player-download-formats"><a href="https://voamedia.voanews.com/pd/p/2446332/sp/244633200/serveFlavor/entryId/1_9cbnd7sh/v/1/ev/6/flavorId/1_vel45dni/fileName/Expertos_advierten_sobre_rebrote_de_COVID-19_en_Nicaragua_(HD_720_-_WEB_(H264_2500)).mp4/name/a.mp4">720p | 31 MB</a></div>
              <div class="player-download-formats"><a href="https://voamedia.voanews.com/pd/p/2446332/sp/244633200/serveFlavor/entryId/1_9cbnd7sh/v/1/ev/6/flavorId/1_ubajp8x0/fileName/Expertos_advierten_sobre_rebrote_de_COVID-19_en_Nicaragua_(HD_1080_-_WEB_(H264_4000)).mp4/name/a.mp4">1080p | 54 MB</a></div>
              <div class="player-download-formats"><a href="https://voamedia.voanews.com/pd/p/2446332/sp/244633200/serveFlavor/entryId/1_9cbnd7sh/v/1/ev/6/flavorId/1_xcf4pn4w/fileName/Expertos_advierten_sobre_rebrote_de_COVID-19_en_Nicaragua_(Source).mp4/name/a.mp4">Original | 137 MB</a></div>
          </div>
  </div>

  <div id="_3644251-1-9cbnd7sh-embed-code-wrapper" class="embed-code-wrapper">
    <a class="button embed-code-popup-link" href="#"><span class="fa fa-code"></span> Embed</a>
    <div class="hidden">
      <div id="-embed-code-dialog" class="embed-code-dialog">
        <input name="embed-code" value="&lt;iframe src=&quot;https://www.voanoticias.com/media/351251/embed&quot; frameborder=&quot;0&quot; scrolling=&quot;no&quot; allowfullscreen width=&quot;876&quot; height=&quot;493&quot;&gt;&lt;/iframe&gt;" /><button class="embed-code-copy">Copiar</button>
      </div>
    </div>
  </div>


  <div id="_3644251-1-9cbnd7sh-download-mp3-wrapper" class="download-mp3-wrapper">
    <a class="button download-mp3-link" href="https://voamedia.voanews.com/pd/p/2446332/sp/244633200/serveFlavor/entryId/1_9cbnd7sh/v/1/ev/6/flavorId/1_fl94510l/fileName/Expertos_advierten_sobre_rebrote_de_COVID-19_en_Nicaragua_(VOA_MP3_128Kbps).mp3/name/a.mp3" download=""><span class="fa fa-file-audio"></span> Descargar audio</a>
  </div>



</div>
</article><h3>Priorizar localidades con población vulnerable</h3>

<p>La socióloga Daisy George, originaria de la Costa Caribe de Nicaragua, explicó a la <strong><em>Voz de América</em></strong> que aunque la situación en algunas zonas hubiese sido más catastrófica, particularmente en donde vive, “la gente recurrió a su medicina ancestral y eso ayudo muchísimo”.</p>

<p>De hecho, <strong><em><a href="https://www.voanoticias.com/centroamerica/indigenas-nicaragua-enfrentan-pandemia-y-abandono-gobierno">un reportaje de la VOA en las zonas indígenas del Caribe de Nicaragua reveló la desinformación entre los lugareños y la forma en que los ciudadanos implementaron sus propias medidas</a></em></strong> ante la ausencia de un plan del Estado.</p>

<p>Los científicos también recomendaron brindar una atención especial a personas y comunidades vulnerables, pues hay muestra que muchas muertes relacionadas con la COVID-19 se han vinculado con los ancianos y otros grupos sensibles.</p>

<p>El doctor Jorge Huete, miembro de la Academia de Ciencias de Nicaragua (ACN), y uno de los firmantes de dicho documento, destaca que independientemente de que el gobierno de Ortega tenga o no en cuenta las recomendaciones de los expertos, la ciudadanía debe tomar acciones por su cuenta para protegerse.</p>

<p>“Planteamos que debería de construirse un plan ciudadano y consiste en que independientemente el gobierno tome o no las recomendaciones, las ciudadanía debería tener un plan. De haber ese plan la ciudadanía podría, mitigar la propagacion del virus”, señala Huete.</p>

<p>El doctor advierte que Nicaragua, el país más pobre de Centroamérica, debe prepararse para que el sistema sanitario no colapse como ocurrió durante el inicio de la pandemia.</p>

<figure role="group" class="align-right drupal-entity"><div data-embed-button="wysiwug_image" data-entity-embed-display="view_mode:media.large_embedded" data-entity-type="media" data-entity-uuid="1d960a88-dc31-4213-8695-0fc1866fded6" data-langcode="es" class="embedded-entity">
<figure class="media media--type-image media--view-mode-" itemscope="itemscope" itemtype="http://schema.org/ImageObject"><a href="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/sourced/s3/2020-10/El%20doctor%20Jorge%20Huete%2C%20de%20la%20Academia%20de%20Ciencias%20de%20Nicaragua.%20Foto.%20Cortesi%CC%81a.png?itok=h3h8o906" data-size="1920x1080">
      
            <div>  <img layout="responsive" src="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/sourced_737px_wide/s3/2020-10/El%20doctor%20Jorge%20Huete%2C%20de%20la%20Academia%20de%20Ciencias%20de%20Nicaragua.%20Foto.%20Cortesi%CC%81a.png?itok=khvZqu-k" width="737" height="415" alt="Nicaragua Covid-19" /></div>
      

          </a>
  </figure></div>
<figcaption>El doctor Jorge Huete conversó con la VOA sobre el reciente informe de científicos con recomendaciones para abordar la pandemia. [Foto: Cortesía]</figcaption></figure><p>Los científicos sugieren que los trabajadores sanitarios deben someterse frecuentemente a pruebas de diagnóstico de COVID-19 debido a su alto riesgo de exposición.</p>

<p>“Las pruebas deben aplicarse con regularidad a los trabajadores de la salud, para mitigar el agotamiento de la fuerza laboral, reducir la propagación del virus y proteger la fuerza laboral. Aunque las pruebas sistemáticas requieren suficientes capacidades de laboratorio, que pueden no estar disponibles en todos los hospitales, las pruebas podrían priorizarse en hospitales de alto riesgo e implementarse utilizando métodos de diagnóstico alternativos”, sugieren los expertos.</p>

<p>El Ministerio de Salud (Minsa) de Nicaragua informó esta semana que hay un descenso paulatino de la curva de contagios y que se han recuperado en el país 3.978 pacientes de COVID-19. Pese a las quejas de organismos internacionales sobre la falta de transparencia en las cifras y la información sobre el comportamiento de la pandemia, el gobierno mantiene que hasta esta semana se habían contagiado 5.652 personas y 153 han muerto por esta causa.</p>

<p>Sin embargo, hasta el 30 de septiembre, el independiente Observatorio Ciudadano, integrado por médicos de Nicaragua, contabiliza 2.610 muertes, que relaciona con COVID-19. Estas muertes se reportan en 17 departamentos y regiones autónomas.</p>

<p>El mismo Observatorio contabiliza que 810 trabajadoras y trabajadores de salud han presentado síntomas asociados al COVID-19 en todos los departamentos o regiones autónomas del país.</p>
</div>
      
            </div>
                      </div>
        </div>

                  <div class="article__footer">
                          <h2 class="section-title">Historias relacionadas</h2>

              
<div class="grid vertical-list vertical-list--list">
      <div class="col-1 vertical-list__item vertical-list__item--list">
      

     

  




<div class="teaser">
      <div class="teaser__img">
      <div class="teaser__img-wrap">
                  
            <div><div>
  
  
            <div data-blazy="" class="blazy blazy--field blazy--field-media-image blazy--field-media-image--teaser-related">



                    <div class="media media--bundle--image media--blazy media--loading media--responsive media--image">
      
      <noscript>  <img class="media__image media__element" loading="lazy" srcset="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/269x177/s3/2020-10/000_1WY16G.jpg?itok=lemf5Pgb 1x" src="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/269x177/s3/2020-10/000_1WY16G.jpg?itok=lemf5Pgb" alt="Members of Civil Protection disinfect themselves after the burial of an alleged COVID-19 victim at the Municipal cemetery in…" />

</noscript>
      
        <img class="media__image media__element b-lazy b-responsive" loading="lazy" data-src="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/269x177/s3/2020-10/000_1WY16G.jpg?itok=lemf5Pgb" srcset="" data-srcset="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/269x177/s3/2020-10/000_1WY16G.jpg?itok=lemf5Pgb 1x" src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D&#039;http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg&#039; viewBox%3D&#039;0 0 269 177&#039;%2F%3E" alt="Members of Civil Protection disinfect themselves after the burial of an alleged COVID-19 victim at the Municipal cemetery in…" />


      
                  
      

            
      
    </div>
        
  
  


</div>
      
</div>
</div>
      
                      </div>
    </div>
    <div class="teaser__content">
          <div class="eyebrow">
        <a href="/america-latina" hreflang="en">América Latina</a>
      </div>
        <div class="teaser__title">
      <a class="teaser__title-link" href="/america-latina/acnur-donativo-america-latina-venezuela" title="ACNUR y Unilever envían jabón a Venezuela y Nicaragua para combatir la pandemia"><span>ACNUR y Unilever envían jabón a Venezuela y Nicaragua para combatir la pandemia</span>
</a>
    </div>
    <div class="teaser__text">
      ACNUR informó que la donación total será de 4,3 millones de barras de jabón para ayudar a prevenir o reducir los contagios por el nuevo coronavirus en estos dos países.
    </div>
          <div class="teaser__author">
        <div class="teaser__author-image">
          <img src="/themes/custom/voa/images/Author__Placeholder.png" alt="Default Author Profile" />
        </div>
        <div class="teaser__author-content">
          <div class="teaser__author-name">
            Por <a class="teaser__author-link" href="/author/voz-de-am%C3%A9rica-redacci%C3%B3n" title="Voz de América - Redacción">Voz de América - Redacción</a>
          </div>
          <div class="teaser__publish-date">
            Miércoles, 07/10/2020 - 18:53
          </div>
        </div>
      </div>
      </div>
</div>

    </div>
      <div class="col-1 vertical-list__item vertical-list__item--list">
      

     

  




<div class="teaser">
      <div class="teaser__img">
      <div class="teaser__img-wrap">
                  
            <div><div>
  
  
            <div data-blazy="" class="blazy blazy--field blazy--field-media-image blazy--field-media-image--teaser-related">



                    <div class="media media--bundle--image media--blazy media--loading media--responsive media--image">
      
      <noscript>  <img class="media__image media__element" loading="lazy" srcset="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/269x177/s3/2020-09/FAMILIARES%20DE%20PACIENTES%20CON%20COVID%20EN%20LAS%20AFUERAS%20DE%20UN%20HOSPITAL%20EN%20MANAGUA%20.jpg?itok=gamgnBUg 1x" src="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/269x177/s3/2020-09/FAMILIARES%20DE%20PACIENTES%20CON%20COVID%20EN%20LAS%20AFUERAS%20DE%20UN%20HOSPITAL%20EN%20MANAGUA%20.jpg?itok=gamgnBUg" alt="Nicaragua COVID-19" />

</noscript>
      
        <img class="media__image media__element b-lazy b-responsive" loading="lazy" data-src="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/269x177/s3/2020-09/FAMILIARES%20DE%20PACIENTES%20CON%20COVID%20EN%20LAS%20AFUERAS%20DE%20UN%20HOSPITAL%20EN%20MANAGUA%20.jpg?itok=gamgnBUg" srcset="" data-srcset="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/269x177/s3/2020-09/FAMILIARES%20DE%20PACIENTES%20CON%20COVID%20EN%20LAS%20AFUERAS%20DE%20UN%20HOSPITAL%20EN%20MANAGUA%20.jpg?itok=gamgnBUg 1x" src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D&#039;http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg&#039; viewBox%3D&#039;0 0 269 177&#039;%2F%3E" alt="Nicaragua COVID-19" />


      
                  
      

            
      
    </div>
        
  
  


</div>
      
</div>
</div>
      
                      </div>
    </div>
    <div class="teaser__content">
          <div class="eyebrow">
        <a href="/centroamerica" hreflang="es">Centroamérica</a>
      </div>
        <div class="teaser__title">
      <a class="teaser__title-link" href="/centroamerica/nicaragua-reporta-menos-muertes-por-covid19-ante-dudas-de-expertos" title="Nicaragua reporta menos muertes por COVID-19 ante dudas de expertos"><span>Nicaragua reporta menos muertes por COVID-19 ante dudas de expertos</span>
</a>
    </div>
    <div class="teaser__text">
      &quot;Otros fallecimientos&quot; que el gobierno atribuye a diferentes patologías pudieran ser casos de COVID-19, cuestionan algunos expertos.
    </div>
          <div class="teaser__author">
        <div class="teaser__author-image">
          <img src="/themes/custom/voa/images/Author__Placeholder.png" alt="Default Author Profile" />
        </div>
        <div class="teaser__author-content">
          <div class="teaser__author-name">
            Por <a class="teaser__author-link" href="/author/daliana-oca%C3%B1a" title="Daliana Ocaña">Daliana Ocaña</a>
          </div>
          <div class="teaser__publish-date">
            Viernes, 11/09/2020 - 06:58
          </div>
        </div>
      </div>
      </div>
</div>

    </div>
      <div class="col-1 vertical-list__item vertical-list__item--list">
      

     

  
    



<div class="teaser">
      <div class="teaser__img">
      <div class="teaser__img-wrap">
                       <img src="" alt=""/>
   
                          <div class="badge story-card__badge" onclick="window.location='/episode/ind%C3%ADgenas-de-nicaragua-denuncian-abandono-del-estado-en-plena-pandemia-239061';">
            <span class="fa fa-play story-card__media-icon"></span>
                      </div>
              </div>
    </div>
    <div class="teaser__content">
        <div class="teaser__title">
      <a class="teaser__title-link" href="/episode/ind%C3%ADgenas-de-nicaragua-denuncian-abandono-del-estado-en-plena-pandemia-239061" title="Indígenas de Nicaragua denuncian abandono del Estado">
            <div>Indígenas de Nicaragua denuncian abandono del Estado</div>
      </a>
    </div>
    <div class="teaser__text">
      Los indígenas y afrodecendientes que habitan en el Caribe Sur de Nicaragua denuncian abandono por parte del Estado, aún en tiempos de pandemia. En una de las comunidades visitadas por la Voz de América, los lugareños narraron que solo hay un médico trabajando a medio tiempo. Houston Castillo nos informa desde la Costa Caribe de Nicaragua.
    </div>
          <div class="teaser__author">
        <div class="teaser__author-image">
          <div>
  
  
            <div>  <img src="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/medium/s3/2020-06/MEU_9787_0.JPG?h=54bf7b8f&amp;itok=MeNLq2-w" width="220" height="220" alt="Houston Castillo corresponal VOA " />


</div>
      
</div>

        </div>
        <div class="teaser__author-content">
          <div class="teaser__author-name">
            Por <a class="teaser__author-link" href="/author/houston-castillo-vado" title="Houston Castillo Vado">Houston Castillo Vado</a>
          </div>
          <div class="teaser__publish-date">
            Viernes, 04/09/2020 - 17:01
          </div>
        </div>
      </div>
      </div>
</div>

    </div>
      <div class="col-1 vertical-list__item vertical-list__item--list">
      

     

  




<div class="teaser">
      <div class="teaser__img">
      <div class="teaser__img-wrap">
                  
            <div><div>
  
  
            <div data-blazy="" class="blazy blazy--field blazy--field-media-image blazy--field-media-image--teaser-related">



                    <div class="media media--bundle--image media--blazy media--loading media--responsive media--image">
      
      <noscript>  <img class="media__image media__element" loading="lazy" srcset="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/269x177/s3/2020-08/JORNADA%20DE%20FUMIGACION.jpeg?itok=XMwSG5X4 1x" src="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/269x177/s3/2020-08/JORNADA%20DE%20FUMIGACION.jpeg?itok=XMwSG5X4" alt="Jornada de fumigación en Nicaragua para prevenir la propagación de los mosquitos que causan el dengue, zika y chikungunya." />

</noscript>
      
        <img class="media__image media__element b-lazy b-responsive" loading="lazy" data-src="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/269x177/s3/2020-08/JORNADA%20DE%20FUMIGACION.jpeg?itok=XMwSG5X4" srcset="" data-srcset="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/269x177/s3/2020-08/JORNADA%20DE%20FUMIGACION.jpeg?itok=XMwSG5X4 1x" src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D&#039;http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg&#039; viewBox%3D&#039;0 0 269 177&#039;%2F%3E" alt="Jornada de fumigación en Nicaragua para prevenir la propagación de los mosquitos que causan el dengue, zika y chikungunya." />


      
                  
      

            
      
    </div>
        
  
  


</div>
      
</div>
</div>
      
                      </div>
    </div>
    <div class="teaser__content">
          <div class="eyebrow">
        <a href="/centroamerica" hreflang="es">Centroamérica</a>
      </div>
        <div class="teaser__title">
      <a class="teaser__title-link" href="/centroamerica/m%C3%A9dicos-independientes-alertan-nicaragua-encuentra-bajo-sindemia" title="Médicos independientes alertan que Nicaragua se encuentra bajo una &quot;sindemia&quot;"><span>Médicos independientes alertan que Nicaragua se encuentra bajo una &quot;sindemia&quot; </span>
</a>
    </div>
    <div class="teaser__text">
      Con las precipitaciones de los últimos días y la acumulación de agua, médicos explican que crecen los &quot;nichos biológicos&quot; o criaderos de insectos portadores de enfermedades transmisibles, lo que aumenta el índice de personas enfermas. 
    </div>
          <div class="teaser__author">
        <div class="teaser__author-image">
          <img src="/themes/custom/voa/images/Author__Placeholder.png" alt="Default Author Profile" />
        </div>
        <div class="teaser__author-content">
          <div class="teaser__author-name">
            Por <a class="teaser__author-link" href="/author/daliana-oca%C3%B1a" title="Daliana Ocaña">Daliana Ocaña</a>
          </div>
          <div class="teaser__publish-date">
            Lunes, 31/08/2020 - 07:36
          </div>
        </div>
      </div>
      </div>
</div>

    </div>
  </div>
            
                          


<div class="author-card">
  <div class="author-card__photo">
    <div>
  
  
            <div>  <img src="https://im-media.voltron.voanews.com/Drupal/02live-246/styles/medium/s3/2020-06/MEU_9787_0.JPG?h=54bf7b8f&amp;itok=MeNLq2-w" width="220" height="220" alt="Houston Castillo corresponal VOA " />


</div>
      
</div>

  </div>
  <div class="author-card__content">
    <span class="author-card__eyebrow eyebrow">Por</span>
    <div class="author-card__name">
      <a href="/author/houston-castillo-vado" hreflang="es">Houston Castillo Vado</a>
    </div>
          <div class="author-card__title">
        Corresponsal de prensa escrita de la Voz de América en Nicaragua
      </div>
    
          <div class="author-card__social">
                  <div class="author-card__social-item">
            
  <a href="https://twitter.com/HoustonTexasni" class="social-button--twitter fab fa-twitter"><span class="sr-only">Twitter</span></a>

          </div>
                  <div class="author-card__social-item">
            
  <a href="https://www.instagram.com/houstoncastillo/?hl=es-la" class="social-button--instagram fab fa-instagram"><span class="sr-only">Instagram</span></a>

          </div>
                  <div class="author-card__social-item">
            
  <a href="https://www.facebook.com/houston.vado" class="social-button--facebook fab fa-facebook-f"><span class="sr-only">Facebook</span></a>

          </div>
              </div>
      </div>
</div>

                      </div>
        
                  <div class="article__comments">
            <div id="block-facebookcomments" class="facebook-comments">
  
    
      <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1&version=v4.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, "script", "facebook-jssdk"));</script>
<div class="fb-comments fb-comments-fluid" data-href="https://www.voanoticias.com/centroamerica/nicaragua-cientificos-alertan-gobierno-por-posible-rebrote-covid19" data-num-posts="5" data-width="" data-colorscheme="light"></div>


  </div>

          </div>
              </div>

      <div class="col-3">
              </div>
    </div>
  </div>

</div>
<!-- Root element of PhotoSwipe. Must have class pswp. -->
<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

  <!-- Background of PhotoSwipe.
       It's a separate element as animating opacity is faster than rgba(). -->
  <div class="pswp__bg"></div>

  <!-- Slides wrapper with overflow:hidden. -->
  <div class="pswp__scroll-wrap">

    <!-- Container that holds slides.
        PhotoSwipe keeps only 3 of them in the DOM to save memory.
        Don't modify these 3 pswp__item elements, data is added later on. -->
    <div class="pswp__container">
      <div class="pswp__item"></div>
      <div class="pswp__item"></div>
      <div class="pswp__item"></div>
    </div>

    <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
    <div class="pswp__ui pswp__ui--hidden">

      <div class="pswp__top-bar">

        <!--  Controls are self-explanatory. Order can be changed. -->

        <div class="pswp__counter"></div>

        <button class="pswp__button pswp__button--close" title="Cerrar (Esc)"></button>

        <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

        <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

        <!-- Preloader demo https://codepen.io/dimsemenov/pen/yyBWoR -->
        <!-- element will get class pswp__preloader--active when preloader is running -->
        <div class="pswp__preloader">
          <div class="pswp__preloader__icn">
            <div class="pswp__preloader__cut">
              <div class="pswp__preloader__donut"></div>
            </div>
          </div>
        </div>
      </div>

      <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
        <div class="pswp__share-tooltip"></div>
      </div>

      <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
      </button>

      <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
      </button>

      <div class="pswp__caption">
        <div class="pswp__caption__center"></div>
      </div>

    </div>

  </div>

</div>
</div>

  </div>

  </div>

  </main>

      <div class="site-footer">
  <div class="site-footer__container">
    <div class="grid site-footer__upper">
      <div class="col-2 site-footer__social">
                  <a class="site-footer__social-link" href="https://twitter.com/VOANoticias"><span class="fab fa-twitter"></span><span class="sr-only">Twitter</span></a>
                          <a class="site-footer__social-link" href="https://www.instagram.com/voanoticias/"><span class="fab fa-instagram"></span><span class="sr-only">Instagram</span></a>
                          <a class="site-footer__social-link" href="https://www.facebook.com/LaVozdeAmerica/"><span class="fab fa-facebook-f"></span><span class="sr-only">Facebook</span></a>
                          <a class="site-footer__social-link" href="https://www.youtube.com/user/vozdeamerica"><span class="fab fa-youtube"></span><span class="sr-only">YouTube</span></a>
                                                <a class="site-footer__social-link" href="/rssfeeds"><span class="fa fa-rss"></span><span class="sr-only">RSS</span></a>
      </div>
      <form class="col-2 site-footer__search-form" action="/search" method="GET">
        <label class="site-footer__search-label" for="footer-search">Buscar en voanoticias.com</label>
        <input placeholder="Buscar en voanoticias.com" class="site-footer__search" id="footer-search" type="text" name="search_api_fulltext" />
        <input type="hidden" name="type" value="1">
        <input type="hidden" name="sort_by" value="publication_time">
        <button class="button site-footer__search-button fa fa-search" type="submit"><span class="site-footer__search-label">Buscar</span></button>
      </form>
    </div>
    <div class="site-footer__lower">
      
    
    
      
              <ul class="grid site-footer__menu">
    
    
                      <li class="site-footer__menu-item col-3 site-footer__menu-item--header">
          <a href="/estadosunidos" class="site-footer__menu-item-link site-footer__menu-item-link--header">Estados Unidos</a>
                                    <ul class="site-footer__sub-menu">
    
                                  <div class="grid">
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/eeuu-vota" class="site-footer__menu-item-link">EE.UU. Vota</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/inmigracion" class="site-footer__menu-item-link">Inmigración</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/economia-finanzas" class="site-footer__menu-item-link">Economía y Negocios</a>
                          </li>
                  </div>
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/salud" class="site-footer__menu-item-link">Ciencia y tecnología</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/la-prensa-libre-importa-0" class="site-footer__menu-item-link">Prensa libre </a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/entretenimiento-0" class="site-footer__menu-item-link">Entretenimiento</a>
                          </li>
                  </div>
      </div>

    
    </ul>
  
                  </li>
                      <li class="site-footer__menu-item menu-item--collapsed">
          <a href="/venezuela" class="site-footer__menu-item-link site-footer__menu-item-link--header">Venezuela</a>
                  </li>
                      <li class="site-footer__menu-item col-3 site-footer__menu-item--header">
          <a href="/centroamerica" class="site-footer__menu-item-link site-footer__menu-item-link--header">Centroamérica</a>
                                    <ul class="site-footer__sub-menu">
    
                                  <div class="grid">
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/centroamerica" class="site-footer__menu-item-link">Más noticias</a>
                          </li>
                  </div>
        <div class="col-2 site-footer__sub-menu-column">
                  </div>
      </div>

    
    </ul>
  
                  </li>
                      <li class="site-footer__menu-item col-3 site-footer__menu-item--header">
          <a href="/america-latina" class="site-footer__menu-item-link site-footer__menu-item-link--header">América Latina</a>
                                    <ul class="site-footer__sub-menu">
    
                                  <div class="grid">
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/america-latina" class="site-footer__menu-item-link">Noticias de AL</a>
                          </li>
                  </div>
        <div class="col-2 site-footer__sub-menu-column">
                  </div>
      </div>

    
    </ul>
  
                  </li>
                      <li class="site-footer__menu-item menu-item--collapsed">
          <a href="https://editorials.voa.gov/z/3305" class="site-footer__menu-item-link site-footer__menu-item-link--header">Editoriales Gobierno de EE.UU.</a>
                  </li>
                      <li class="site-footer__menu-item col-3 site-footer__menu-item--header">
          <span class="site-footer__menu-item-link site-footer__menu-item-link--header">Voz de América</span>
                                    <ul class="site-footer__sub-menu">
    
                                  <div class="grid">
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/quienes-somos" class="site-footer__menu-item-link">¿Quiénes somos?</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/declaracion-de-privacidad" class="site-footer__menu-item-link">Política de privacidad</a>
                          </li>
                  </div>
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/afiliates" class="site-footer__menu-item-link">Para afiliarse</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/contact_us" class="site-footer__menu-item-link">Contáctenos</a>
                          </li>
                  </div>
      </div>

    
    </ul>
  
                  </li>
                      <li class="site-footer__menu-item col-3 site-footer__menu-item--header">
          <a href="/watch/programs" class="site-footer__menu-item-link site-footer__menu-item-link--header" data-drupal-link-system-path="watch/programs">Programas de TV</a>
                                    <ul class="site-footer__sub-menu">
    
                                  <div class="grid">
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/tv-mundo-al-dia" class="site-footer__menu-item-link">El Mundo al Día</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/tv-foro" class="site-footer__menu-item-link">Foro Interamericano</a>
                          </li>
                  </div>
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="https://www.voanoticias.com/watch/programs" class="site-footer__menu-item-link">Programas de TV</a>
                                            <ul class="site-footer__sub-menu">
    
                                  <div class="grid">
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/tv-mundo-al-dia" class="site-footer__menu-item-link"> El Mundo al Día</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/venezuela-360-television" class="site-footer__menu-item-link"> Venezuela 360</a>
                          </li>
                  </div>
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/tv-foro" class="site-footer__menu-item-link">Foro Interamericano</a>
                          </li>
                  </div>
      </div>

    
    </ul>
  
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/venezuela-360-television" class="site-footer__menu-item-link">Venezuela 360</a>
                          </li>
                  </div>
      </div>

    
    </ul>
  
                  </li>
                      <li class="site-footer__menu-item col-3 site-footer__menu-item--header">
          <a href="/listen/programs" class="site-footer__menu-item-link site-footer__menu-item-link--header" data-drupal-link-system-path="listen/programs">Programas de radio</a>
                                    <ul class="site-footer__sub-menu">
    
                                  <div class="grid">
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/tv-mundo-al-dia" class="site-footer__menu-item-link">El Mundo al Día</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/conversando-con-la-voa" class="site-footer__menu-item-link">Conversando con la VOA</a>
                          </li>
                  </div>
        <div class="col-2 site-footer__sub-menu-column">
                      <li class="site-footer__menu-item">
              <a href="/radio-buenos-dias-america" class="site-footer__menu-item-link">Buenos días América</a>
                          </li>
                      <li class="site-footer__menu-item">
              <a href="/venezuela-360-television" class="site-footer__menu-item-link">Venezuela 360 (Radio)</a>
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

    
    <script type="application/json" data-drupal-selector="drupal-settings-json">{"path":{"baseUrl":"\/","scriptPath":null,"pathPrefix":"","currentPath":"node\/248426","currentPathIsAdmin":false,"isFront":false,"currentLanguage":"es"},"pluralDelimiter":"\u0003","suppressDeprecationErrors":true,"voa_tracking_code":{"isHomePage":false,"isSearchPage":false},"blazy":{"loadInvisible":false,"offset":100,"saveViewportOffsetDelay":50,"validateDelay":null,"container":""},"blazyIo":{"enabled":false,"disconnect":false,"rootMargin":"0px","threshold":[0]},"voaVideoPlayer":{"_3644251-1-9cbnd7sh":{"title":"Expertos advierten sobre rebrote de COVID-19 en Nicaragua","elementId":"_3644251-1-9cbnd7sh","partnerId":"2446332","playerId":43644251,"entryId":"1_9cbnd7sh","thumb":"https:\/\/cfvod.kaltura.com\/p\/2446332\/sp\/244633200\/thumbnail\/entry_id\/1_9cbnd7sh\/version\/100021","isLive":false,"loadMetaData":false,"duration":110,"autoplay":false}},"voaWatermarking":{"enableWatermark":false},"0":{"voaMediaSchedule":{"liveText":"LIVE"}},"baseFilePath":"\/sites\/g\/files\/cauiqe246\/files\/voa_breaking_news.html","mobileMenu":{"alternatePosition":false,"mobileCollapsed":false},"user":{"uid":0,"permissionsHash":"92ebb4a2ffffd0cebe529ec86b20f2af457edc03fcf017fd833bf79883057499"}}</script>
<script src="/sites/g/files/cauiqe246/files/js/js_sfaUkMbEpQs-9u6PvYGxN4wD43WcRA13nLWpvTq7XJU.js"></script>
<script src="/modules/custom/voa_kaltura/js/voa-video-player.js?v=1.6"></script>
<script src="/modules/custom/voa_kaltura/js/hls.js/hls.light.min.js?v=1.6"></script>
<script src="/sites/g/files/cauiqe246/files/js/js_GZnORaNY9QiYwcNgYK9EwhjUQIwAPWxNUbf2PLRTJHQ.js"></script>
<script src="/modules/custom/voa_breaking_news/js/voa-breaking-news.js?v=1.1"></script>

  <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"e7f803923b","applicationID":"446528235,397515042","transactionName":"ZVJTY0RXChIDVkwKX1wYcFRCXwsPTXFKFkBTW21ZWVIBPSFaVhdCXVtdUkRqKg4GUG4KVUV0XllCRAsNDlBKTg5EXlRA","queueTime":0,"applicationTime":1340,"atts":"SRVQFQxNGRw=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
