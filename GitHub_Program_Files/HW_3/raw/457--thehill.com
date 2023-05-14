<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML+RDFa 1.0//EN"
  "http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" version="XHTML+RDFa 1.0" dir="ltr" prefix="og: http://ogp.me/ns# article: http://ogp.me/ns/article# book: http://ogp.me/ns/book# profile: http://ogp.me/ns/profile# video: http://ogp.me/ns/video# product: http://ogp.me/ns/product# c: http://s.opencalais.com/1/pred/ sys: http://s.opencalais.com/1/type/sys/ lid: http://s.opencalais.com/1/type/lid/ cat: http://s.opencalais.com/1/type/cat/ resolved: http://s.opencalais.com/1/type/er/ cgeo: http://s.opencalais.com/1/type/er/Geo/ eventfact: http://s.opencalais.com/1/type/em/r/ entity: http://s.opencalais.com/1/type/em/e/ cld: http://s.opencalais.com/1/linkeddata/pred/ content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema#">

<head profile="http://www.w3.org/1999/xhtml/vocab">
  <script type="text/javascript">
    var iPad = (navigator.userAgent.match(/(iPad)/) || (navigator.platform === 'MacIntel' && navigator.maxTouchPoints > 1));
  </script>
      <script type="text/javascript">
      if (!iPad) {
        var meta = document.createElement('meta');
        meta.name = "viewport";
        meta.content = "width=device-width, initial-scale=1.0";
        document.getElementsByTagName('head')[0].appendChild(meta);
      }
    </script>
      <meta charset="utf-8" /><script type="text/javascript">(window.NREUM||(NREUM={})).init={privacy:{cookies_enabled:true},distributed_tracing:{enabled:true}};(window.NREUM||(NREUM={})).loader_config={agentID:"447052294",accountID:"81753",trustKey:"81753",xpid:"XAcAVFVADAcGXVRVAwUH",licenseKey:"962df17ac8",applicationID:"446957440"};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var i=e[n]={exports:{}};t[n][0].call(i.exports,function(e){var i=t[n][1][e];return r(i||e)},i,i.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(t,e,n){function r(t){try{c.console&&console.log(t)}catch(e){}}var i,o=t("ee"),a=t(23),c={};try{i=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(c.console=!0,i.indexOf("dev")!==-1&&(c.dev=!0),i.indexOf("nr_dev")!==-1&&(c.nrDev=!0))}catch(s){}c.nrDev&&o.on("internal-error",function(t){r(t.stack)}),c.dev&&o.on("fn-err",function(t,e,n){r(n.stack)}),c.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(c,function(t,e){return t}).join(", ")))},{}],2:[function(t,e,n){function r(t,e,n,r,c){try{p?p-=1:i(c||new UncaughtException(t,e,n),!0)}catch(f){try{o("ierr",[f,s.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function i(t,e){var n=e?null:s.now();o("err",[t,n])}var o=t("handle"),a=t(24),c=t("ee"),s=t("loader"),f=t("gos"),u=window.onerror,d=!1,l="nr@seenError",p=0;s.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(9),t(8),"addEventListener"in window&&t(5),s.xhrWrappable&&t(10),d=!0)}c.on("fn-start",function(t,e,n){d&&(p+=1)}),c.on("fn-err",function(t,e,n){d&&!n[l]&&(f(n,l,function(){return!0}),this.thrown=!0,i(n))}),c.on("fn-end",function(){d&&!this.thrown&&p>0&&(p-=1)}),c.on("internal-error",function(t){o("ierr",[t,s.now(),!0])})},{}],3:[function(t,e,n){t("loader").features.ins=!0},{}],4:[function(t,e,n){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var i=t("ee"),o=t("handle"),a=t(9),c=t(8),s="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",g="pushState",y=t("loader");y.features.stn=!0,t(7),"addEventListener"in window&&t(5);var x=NREUM.o.EV;i.on(m,function(t,e){var n=t[0];n instanceof x&&(this.bstStart=y.now())}),i.on(w,function(t,e){var n=t[0];n instanceof x&&o("bst",[n,e,this.bstStart,y.now()])}),a.on(m,function(t,e,n){this.bstStart=y.now(),this.bstType=n}),a.on(w,function(t,e){o(v,[e,this.bstStart,y.now(),this.bstType])}),c.on(m,function(){this.bstStart=y.now()}),c.on(w,function(t,e){o(v,[e,this.bstStart,y.now(),"requestAnimationFrame"])}),i.on(g+p,function(t){this.time=y.now(),this.startPath=location.pathname+location.hash}),i.on(g+h,function(t){o("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+s]?window.performance[f](u,function(t){o(d,[window.performance.getEntriesByType(l)]),window.performance["c"+s]()},!1):window.performance[f]("webkit"+u,function(t){o(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+s]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,e,n){function r(t){for(var e=t;e&&!e.hasOwnProperty(u);)e=Object.getPrototypeOf(e);e&&i(e)}function i(t){c.inPlace(t,[u,d],"-",o)}function o(t,e){return t[1]}var a=t("ee").get("events"),c=t("wrap-function")(a,!0),s=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";e.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(i(window),i(f.prototype)),a.on(u+"-start",function(t,e){var n=t[1],r=s(n,"nr@wrapped",function(){function t(){if("function"==typeof n.handleEvent)return n.handleEvent.apply(n,arguments)}var e={object:t,"function":n}[typeof n];return e?c(e,"fn-",null,e.name||"anonymous"):n});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,e,n){function r(t,e,n){var r=t[e];"function"==typeof r&&(t[e]=function(){var t=o(arguments),e={};i.emit(n+"before-start",[t],e);var a;e[m]&&e[m].dt&&(a=e[m].dt);var c=r.apply(this,t);return i.emit(n+"start",[t,a],c),c.then(function(t){return i.emit(n+"end",[null,t],c),t},function(t){throw i.emit(n+"end",[t],c),t})})}var i=t("ee").get("fetch"),o=t(24),a=t(23);e.exports=i;var c=window,s="fetch-",f=s+"body-",u=["arrayBuffer","blob","json","text","formData"],d=c.Request,l=c.Response,p=c.fetch,h="prototype",m="nr@context";d&&l&&p&&(a(u,function(t,e){r(d[h],e,f),r(l[h],e,f)}),r(c,"fetch",s),i.on(s+"end",function(t,e){var n=this;if(e){var r=e.headers.get("content-length");null!==r&&(n.rxSize=r),i.emit(s+"done",[null,e],n)}else i.emit(s+"done",[t],n)}))},{}],7:[function(t,e,n){var r=t("ee").get("history"),i=t("wrap-function")(r);e.exports=r;var o=window.history&&window.history.constructor&&window.history.constructor.prototype,a=window.history;o&&o.pushState&&o.replaceState&&(a=o),i.inPlace(a,["pushState","replaceState"],"-")},{}],8:[function(t,e,n){var r=t("ee").get("raf"),i=t("wrap-function")(r),o="equestAnimationFrame";e.exports=r,i.inPlace(window,["r"+o,"mozR"+o,"webkitR"+o,"msR"+o],"raf-"),r.on("raf-start",function(t){t[0]=i(t[0],"fn-")})},{}],9:[function(t,e,n){function r(t,e,n){t[0]=a(t[0],"fn-",null,n)}function i(t,e,n){this.method=n,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,n)}var o=t("ee").get("timer"),a=t("wrap-function")(o),c="setTimeout",s="setInterval",f="clearTimeout",u="-start",d="-";e.exports=o,a.inPlace(window,[c,"setImmediate"],c+d),a.inPlace(window,[s],s+d),a.inPlace(window,[f,"clearImmediate"],f+d),o.on(s+u,r),o.on(c+u,i)},{}],10:[function(t,e,n){function r(t,e){d.inPlace(e,["onreadystatechange"],"fn-",c)}function i(){var t=this,e=u.context(t);t.readyState>3&&!e.resolved&&(e.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,g,"fn-",c)}function o(t){y.push(t),h&&(b?b.then(a):w?w(a):(E=-E,R.data=E))}function a(){for(var t=0;t<y.length;t++)r([],y[t]);y.length&&(y=[])}function c(t,e){return e}function s(t,e){for(var n in t)e[n]=t[n];return e}t(5);var f=t("ee"),u=f.get("xhr"),d=t("wrap-function")(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",g=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],y=[];e.exports=u;var x=window.XMLHttpRequest=function(t){var e=new p(t);try{u.emit("new-xhr",[e],e),e.addEventListener(v,i,!1)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}return e};if(s(p,x),x.prototype=p.prototype,d.inPlace(x.prototype,["open","send"],"-xhr-",c),u.on("send-xhr-start",function(t,e){r(t,e),o(e)}),u.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!w&&!m){var E=1,R=document.createTextNode(E);new h(a).observe(R,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],11:[function(t,e,n){function r(t){if(!c(t))return null;var e=window.NREUM;if(!e.loader_config)return null;var n=(e.loader_config.accountID||"").toString()||null,r=(e.loader_config.agentID||"").toString()||null,f=(e.loader_config.trustKey||"").toString()||null;if(!n||!r)return null;var h=p.generateSpanId(),m=p.generateTraceId(),w=Date.now(),v={spanId:h,traceId:m,timestamp:w};return(t.sameOrigin||s(t)&&l())&&(v.traceContextParentHeader=i(h,m),v.traceContextStateHeader=o(h,w,n,r,f)),(t.sameOrigin&&!u()||!t.sameOrigin&&s(t)&&d())&&(v.newrelicHeader=a(h,m,w,n,r,f)),v}function i(t,e){return"00-"+e+"-"+t+"-01"}function o(t,e,n,r,i){var o=0,a="",c=1,s="",f="";return i+"@nr="+o+"-"+c+"-"+n+"-"+r+"-"+t+"-"+a+"-"+s+"-"+f+"-"+e}function a(t,e,n,r,i,o){var a="btoa"in window&&"function"==typeof window.btoa;if(!a)return null;var c={v:[0,1],d:{ty:"Browser",ac:r,ap:i,id:t,tr:e,ti:n}};return o&&r!==o&&(c.d.tk=o),btoa(JSON.stringify(c))}function c(t){return f()&&s(t)}function s(t){var e=!1,n={};if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(n=NREUM.init.distributed_tracing),t.sameOrigin)e=!0;else if(n.allowed_origins instanceof Array)for(var r=0;r<n.allowed_origins.length;r++){var i=h(n.allowed_origins[r]);if(t.hostname===i.hostname&&t.protocol===i.protocol&&t.port===i.port){e=!0;break}}return e}function f(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.enabled}function u(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.exclude_newrelic_header}function d(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&NREUM.init.distributed_tracing.cors_use_newrelic_header!==!1}function l(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.cors_use_tracecontext_headers}var p=t(20),h=t(13);e.exports={generateTracePayload:r,shouldGenerateTrace:c}},{}],12:[function(t,e,n){function r(t){var e=this.params,n=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<l;r++)t.removeEventListener(d[r],this.listener,!1);e.aborted||(n.duration=a.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==e.status&&(e.status=0):o(this,t),n.cbTime=this.cbTime,u.emit("xhr-done",[t],t),c("xhr",[e,n,this.startTime]))}}function i(t,e){var n=s(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.parsedOrigin=s(e),t.sameOrigin=t.parsedOrigin.sameOrigin}function o(t,e){t.params.status=e.status;var n=w(e,t.lastSize);if(n&&(t.metrics.rxSize=n),t.sameOrigin){var r=e.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var a=t("loader");if(a.xhrWrappable){var c=t("handle"),s=t(13),f=t(11).generateTracePayload,u=t("ee"),d=["load","error","abort","timeout"],l=d.length,p=t("id"),h=t(17),m=t(16),w=t(14),v=window.XMLHttpRequest;a.features.xhr=!0,t(10),t(6),u.on("new-xhr",function(t){var e=this;e.totalCbs=0,e.called=0,e.cbTime=0,e.end=r,e.ended=!1,e.xhrGuids={},e.lastSize=null,e.loadCaptureCalled=!1,t.addEventListener("load",function(n){o(e,t)},!1),h&&(h>34||h<10)||window.opera||t.addEventListener("progress",function(t){e.lastSize=t.loaded},!1)}),u.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),u.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var n=f(this.parsedOrigin);if(n){var r=!1;n.newrelicHeader&&(e.setRequestHeader("newrelic",n.newrelicHeader),r=!0),n.traceContextParentHeader&&(e.setRequestHeader("traceparent",n.traceContextParentHeader),n.traceContextStateHeader&&e.setRequestHeader("tracestate",n.traceContextStateHeader),r=!0),r&&(this.dt=n)}}),u.on("send-xhr-start",function(t,e){var n=this.metrics,r=t[0],i=this;if(n&&r){var o=m(r);o&&(n.txSize=o)}this.startTime=a.now(),this.listener=function(t){try{"abort"!==t.type||i.loadCaptureCalled||(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof e.onload))&&i.end(e)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}};for(var c=0;c<l;c++)e.addEventListener(d[c],this.listener,!1)}),u.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),u.on("xhr-load-added",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),u.on("xhr-load-removed",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),u.on("addEventListener-end",function(t,e){e instanceof v&&"load"===t[0]&&u.emit("xhr-load-added",[t[1],t[2]],e)}),u.on("removeEventListener-end",function(t,e){e instanceof v&&"load"===t[0]&&u.emit("xhr-load-removed",[t[1],t[2]],e)}),u.on("fn-start",function(t,e,n){e instanceof v&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),u.on("fn-end",function(t,e){this.xhrCbStart&&u.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,e],e)}),u.on("fetch-before-start",function(t){function e(t,e){var n=!1;return e.newrelicHeader&&(t.set("newrelic",e.newrelicHeader),n=!0),e.traceContextParentHeader&&(t.set("traceparent",e.traceContextParentHeader),e.traceContextStateHeader&&t.set("tracestate",e.traceContextStateHeader),n=!0),n}var n,r=t[1]||{};"string"==typeof t[0]?n=t[0]:t[0]&&t[0].url&&(n=t[0].url),n&&(this.parsedOrigin=s(n),this.sameOrigin=this.parsedOrigin.sameOrigin);var i=f(this.parsedOrigin);if(i&&(i.newrelicHeader||i.traceContextParentHeader))if("string"==typeof t[0]){var o={};for(var a in r)o[a]=r[a];o.headers=new Headers(r.headers||{}),e(o.headers,i)&&(this.dt=i),t.length>1?t[1]=o:t.push(o)}else t[0]&&t[0].headers&&e(t[0].headers,i)&&(this.dt=i)})}},{}],13:[function(t,e,n){var r={};e.exports=function(t){if(t in r)return r[t];var e=document.createElement("a"),n=window.location,i={};e.href=t,i.port=e.port;var o=e.href.split("://");!i.port&&o[1]&&(i.port=o[1].split("/")[0].split("@").pop().split(":")[1]),i.port&&"0"!==i.port||(i.port="https"===o[0]?"443":"80"),i.hostname=e.hostname||n.hostname,i.pathname=e.pathname,i.protocol=o[0],"/"!==i.pathname.charAt(0)&&(i.pathname="/"+i.pathname);var a=!e.protocol||":"===e.protocol||e.protocol===n.protocol,c=e.hostname===document.domain&&e.port===n.port;return i.sameOrigin=a&&(!e.hostname||c),"/"===i.pathname&&(r[t]=i),i}},{}],14:[function(t,e,n){function r(t,e){var n=t.responseType;return"json"===n&&null!==e?e:"arraybuffer"===n||"blob"===n||"json"===n?i(t.response):"text"===n||""===n||void 0===n?i(t.responseText):void 0}var i=t(16);e.exports=r},{}],15:[function(t,e,n){function r(){}function i(t,e,n){return function(){return o(t,[f.now()].concat(c(arguments)),e?null:this,n),e?void 0:this}}var o=t("handle"),a=t(23),c=t(24),s=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,e){u[e]=i(l+e,!0,"api")}),u.addPageAction=i(l+"addPageAction",!0),u.setCurrentRouteName=i(l+"routeName",!0),e.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,e){var n={},r=this,i="function"==typeof e;return o(p+"tracer",[f.now(),t,n],r),function(){if(s.emit((i?"":"no-")+"fn-start",[f.now(),r,i],n),i)try{return e.apply(this,arguments)}catch(t){throw s.emit("fn-err",[arguments,this,t],n),t}finally{s.emit("fn-end",[f.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){h[e]=i(p+e)}),newrelic.noticeError=function(t,e){"string"==typeof t&&(t=new Error(t)),o("err",[t,f.now(),!1,e])}},{}],16:[function(t,e,n){e.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(e){return}}}},{}],17:[function(t,e,n){var r=0,i=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);i&&(r=+i[1]),e.exports=r},{}],18:[function(t,e,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,c=t(25);e.exports=r,e.exports.offset=a,e.exports.getLastTimestamp=i},{}],19:[function(t,e,n){function r(t,e){var n=t.getEntries();n.forEach(function(t){"first-paint"===t.name?d("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&d("timing",["fcp",Math.floor(t.startTime)])})}function i(t,e){var n=t.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(t){t.getEntries().forEach(function(t){t.hadRecentInput||d("cls",[t])})}function a(t){if(t instanceof h&&!w){var e=Math.round(t.timeStamp),n={type:t.type};e<=l.now()?n.fid=l.now()-e:e>l.offset&&e<=Date.now()?(e-=l.offset,n.fid=l.now()-e):e=l.now(),w=!0,d("timing",["fi",e,n])}}function c(t){d("pageHide",[l.now(),t])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var s,f,u,d=t("handle"),l=t("loader"),p=t(22),h=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){s=new PerformanceObserver(r);try{s.observe({entryTypes:["paint"]})}catch(m){}f=new PerformanceObserver(i);try{f.observe({entryTypes:["largest-contentful-paint"]})}catch(m){}u=new PerformanceObserver(o);try{u.observe({type:"layout-shift",buffered:!0})}catch(m){}}if("addEventListener"in document){var w=!1,v=["click","keydown","mousedown","pointerdown","touchstart"];v.forEach(function(t){document.addEventListener(t,a,!1)})}p(c)}},{}],20:[function(t,e,n){function r(){function t(){return e?15&e[n++]:16*Math.random()|0}var e=null,n=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(e=r.getRandomValues(new Uint8Array(31)));for(var i,o="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",c=0;c<o.length;c++)i=o[c],"x"===i?a+=t().toString(16):"y"===i?(i=3&t()|8,a+=i.toString(16)):a+=i;return a}function i(){return a(16)}function o(){return a(32)}function a(t){function e(){return n?15&n[r++]:16*Math.random()|0}var n=null,r=0,i=window.crypto||window.msCrypto;i&&i.getRandomValues&&Uint8Array&&(n=i.getRandomValues(new Uint8Array(31)));for(var o=[],a=0;a<t;a++)o.push(e().toString(16));return o.join("")}e.exports={generateUuid:r,generateSpanId:i,generateTraceId:o}},{}],21:[function(t,e,n){function r(t,e){if(!i)return!1;if(t!==i)return!1;if(!e)return!0;if(!o)return!1;for(var n=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,s=c.match(a);s&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(i="Safari",o=s[1])}e.exports={agent:i,version:o,match:r}},{}],22:[function(t,e,n){function r(t){function e(){t(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,e,!1)}e.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],23:[function(t,e,n){function r(t,e){var n=[],r="",o=0;for(r in t)i.call(t,r)&&(n[o]=e(r,t[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],24:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,i=n-e||0,o=Array(i<0?0:i);++r<i;)o[r]=t[e+r];return o}e.exports=r},{}],25:[function(t,e,n){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,e,n){function r(){}function i(t){function e(t){return t&&t instanceof r?t:t?s(t,c,o):o()}function n(n,r,i,o){if(!l.aborted||o){t&&t(n,r,i);for(var a=e(i),c=m(n),s=c.length,f=0;f<s;f++)c[f].apply(a,r);var d=u[y[n]];return d&&d.push([x,n,r,a]),a}}function p(t,e){g[t]=m(t).concat(e)}function h(t,e){var n=g[t];if(n)for(var r=0;r<n.length;r++)n[r]===e&&n.splice(r,1)}function m(t){return g[t]||[]}function w(t){return d[t]=d[t]||i(n)}function v(t,e){f(t,function(t,n){e=e||"feature",y[n]=e,e in u||(u[e]=[])})}var g={},y={},x={on:p,addEventListener:p,removeEventListener:h,emit:n,get:w,listeners:m,context:e,buffer:v,abort:a,aborted:!1};return x}function o(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var c="nr@context",s=t("gos"),f=t(23),u={},d={},l=e.exports=i();l.backlog=u},{}],gos:[function(t,e,n){function r(t,e,n){if(i.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return t[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){i.buffer([t],r),i.emit(t,e,n)}var i=t("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,o,function(){return i++})}var i=1,o="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!b++){var t=x.info=NREUM.info,e=l.getElementsByTagName("script")[0];if(setTimeout(f.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&e))return f.abort();s(g,function(e,n){t[e]||(t[e]=n)});var n=a();c("mark",["onload",n+x.offset],null,"api"),c("timing",["load",n]);var r=l.createElement("script");r.src="https://"+t.agent,e.parentNode.insertBefore(r,e)}}function i(){"complete"===l.readyState&&o()}function o(){c("mark",["domContent",a()+x.offset],null,"api")}var a=t(18),c=t("handle"),s=t(23),f=t("ee"),u=t(21),d=window,l=d.document,p="addEventListener",h="attachEvent",m=d.XMLHttpRequest,w=m&&m.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:m,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var v=""+location,g={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1184.min.js"},y=m&&w&&w[p]&&!/CriOS/.test(navigator.userAgent),x=e.exports={offset:a.getLastTimestamp(),now:a,origin:v,features:{},xhrWrappable:y,userAgent:u};t(15),t(19),l[p]?(l[p]("DOMContentLoaded",o,!1),d[p]("load",r,!1)):(l[h]("onreadystatechange",i),d[h]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var b=0},{}],"wrap-function":[function(t,e,n){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var i=t("ee"),o=t(24),a="nr@original",c=Object.prototype.hasOwnProperty,s=!1;e.exports=function(t,e){function n(t,e,n,i){function nrWrapper(){var r,a,c,s;try{a=this,r=o(arguments),c="function"==typeof n?n(r,a):n||{}}catch(f){l([f,"",[r,a,i],c])}u(e+"start",[r,a,i],c);try{return s=t.apply(a,r)}catch(d){throw u(e+"err",[r,a,d],c),d}finally{u(e+"end",[r,a,s],c)}}return r(t)?t:(e||(e=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,e,i,o){i||(i="");var a,c,s,f="-"===i.charAt(0);for(s=0;s<e.length;s++)c=e[s],a=t[c],r(a)||(t[c]=n(a,f?c+i:i,o,c))}function u(n,r,i){if(!s||e){var o=s;s=!0;try{t.emit(n,r,i,e)}catch(a){l([a,n,r,i])}s=o}}function d(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){l([r])}for(var i in t)c.call(t,i)&&(e[i]=t[i]);return e}function l(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=i),n.inPlace=f,n.flag=a,n}},{}]},{},["loader",2,12,4,3]);</script>
<script>var _sf_startpt=(new Date()).getTime();</script>
<link rel="amphtml" href="https://thehill.com/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid?amp" />
<meta property="author" content="Aris Folley" />
<link rel="shortcut icon" href="https://thehill.com/favicon.ico" type="image/vnd.microsoft.icon" />
<meta name="description" content="A White House security official is reportedly “gravely ill” after contracting COVID-19 in September, Bloomberg reports." />
<meta name="keywords" content="Coronavirus,Donald Trump, Kellyanne Conway, Stephen Miller, Melania Trump, Hope Hicks," />
<meta name="generator" content="Drupal 7 (http://drupal.org)" />
<link rel="canonical" href="https://thehill.com/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid" />
<link rel="shortlink" href="https://thehill.com/node/520116" />
<meta property="fb:admins" content="581787871" />
<meta property="fb:admins" content="732535504" />
<meta property="fb:admins" content="1531470032" />
<meta property="fb:app_id" content="566538590082898" />
<meta property="fb:pages" content="7533944086, 2064147433830888" />
<meta property="og:site_name" content="TheHill" />
<meta property="og:type" content="article" />
<meta property="og:title" content="White House security official reported to be gravely ill with COVID-19" />
<meta property="og:url" content="https://thehill.com/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid" />
<meta property="og:description" content="A White House security official is reportedly “gravely ill” after contracting COVID-19 in September, Bloomberg reports." />
<meta property="og:updated_time" content="2020-10-07T21:40:57-04:00" />
<meta property="og:image" content="https://thehill.com/sites/default/files/whitehouse_911_091120getty_lead.jpg" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="White House security official reported to be gravely ill with COVID-19" />
<meta name="twitter:url" content="https://thehill.com/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid" />
<meta name="twitter:description" content="A White House security official is reportedly “gravely ill” after contracting COVID-19 in September, Bloomberg reports." />
<meta property="article:published_time" content="2020-10-07T21:07:18-04:00" />
<meta property="article:modified_time" content="2020-10-07T21:40:57-04:00" />
<meta name="dcterms.title" content="White House security official reported to be gravely ill with COVID-19" />
<meta name="dcterms.creator" content="Aris Folley" />
<meta name="dcterms.description" content="A White House security official is reportedly “gravely ill” after contracting COVID-19 in September, Bloomberg reports." />
<meta name="dcterms.date" content="2020-10-07T21:07-04:00" />
<meta name="dcterms.type" content="Text" />
<meta name="dcterms.format" content="text/html" />
<meta name="dcterms.identifier" content="https://thehill.com/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid" />
<script language="javascript" type="text/javascript" src="/sites/all/modules/thehill/thehill_header_bidding/js/prebid_3_16_0.js" async ></script><script language="javascript" type="text/javascript" src="//www.googletagservices.com/tag/js/gpt.js" async ></script>  <link rel="apple-touch-icon" sizes="512x512" href="/apple-touch-icon-512X512.png">
  <link rel="apple-touch-icon" sizes="1024x1024" href="/apple-touch-icon-1024X1024.png">
  <link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152X152.png">
  <link rel="apple-touch-icon" sizes="167x167" href="/apple-touch-icon-167X167.png">
  <link rel="apple-touch-icon" sizes="1024x1024" href="/apple-touch-icon-1024X1024.png">
  <link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120X120.png">
  <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180X180.png">
  <link rel="apple-touch-icon" href="/apple-touch-icon.png">
  <title>White House security official reported to be gravely ill with COVID-19 | TheHill</title>
  <link type="text/css" rel="stylesheet" href="//thehill.com/sites/default/files/css/css_kShW4RPmRstZ3SpIC-ZvVGNFVAi0WEMuCnI0ZkYIaFw.css" media="all" />
<link type="text/css" rel="stylesheet" href="//thehill.com/sites/default/files/css/css_GmgcKrlcJ_1AYWSRZ5rjft4ov8QEmSHehJZEiWJRn0I.css" media="all" />
<link type="text/css" rel="stylesheet" href="//thehill.com/sites/default/files/css/css_se2WJ1rEiCe2g4ST9LNxulYjndHtkkH0k3Iu8roJvXU.css" media="all" />
<link type="text/css" rel="stylesheet" href="//thehill.com/sites/default/files/css/css_EUImZGwRfL0iM5sKdslU5jQYzwmgBba6BXHMyh-7hv8.css" media="all" />
      <script type="text/javascript">
      if (!iPad) {
        var link = document.createElement('link');
        link.rel = 'stylesheet';
        link.type = 'text/css';
        link.href = '/sites/all/themes/thehill/css/mobile.css';
        document.getElementsByTagName('head')[0].appendChild(link);
      }
    </script>
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "NewsArticle",
      "mainEntityOfPage": {
        "@type": "WebPage",
        "@id": "https://thehill.com/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid"
      },
      "headline": "White House security official reported to be gravely ill with COVID-19 | TheHill",
      "image": "https://thehill.com/sites/default/files/styles/article_full/public/whitehouse_911_091120getty_lead.jpg?itok=ki1z12wf",
      "datePublished": "2020-10-07T21:07:18-04:00",
      "dateModified": "2020-10-07T21:40:57-04:00",
      "author": {
        "@type": "Person",
        "name": "Aris Folley"
      },
      "publisher": {
        "@type": "Organization",
        "name": "The Hill",
        "logo": {
          "@type": "ImageObject",
          "url": "https://thehill.com/sites/all/themes/thehill/images/redesign/thehill-logo-big.png"
        }
      },
      "articleSection": "News - Administration",
      "description": "A White House security official is reportedly “gravely ill” after contracting COVID-19 in Septemb..."
    }
  </script>
  <!-- Krux interchange code (before the first ad call) -->
  <script class="kxint" data-namespace="thehill" type="text/javascript">
    window.Krux||((Krux=function(){Krux.q.push(arguments);}).q=[]);
    (function(){
      function retrieve(n){
        var k= 'kx'+'thehill_'+n, ls=(function(){
          try {
            return window.localStorage;
          } catch(e) {
            return null;
          }
        })();
        if (ls) {
          return ls[k] || '';
        } else if (navigator.cookieEnabled) {
          var m = document.cookie.match(k+'=([^;]*)');
          return (m && unescape(m[1])) || '';
        } else {
          return '';
        }
      }
      Krux.user = retrieve('user');
      Krux.segments = retrieve('segs') ? retrieve('segs').split(',') : [];
    })();
  </script>
  <script type="text/javascript">(function () { var e = false; var c = window; var t = document; function r() { if (!c.frames["__uspapiLocator"]) { if (t.body) { var a = t.body; var e = t.createElement("iframe"); e.style.cssText = "display:none"; e.name = "__uspapiLocator"; a.appendChild(e) } else { setTimeout(r, 5) } } } r(); function p() { var a = arguments; __uspapi.a = __uspapi.a || []; if (!a.length) { return __uspapi.a } else if (a[0] === "ping") { a[2]({ gdprAppliesGlobally: e, cmpLoaded: false }, true) } else { __uspapi.a.push([].slice.apply(a)) } } function l(t) { var r = typeof t.data === "string"; try { var a = r ? JSON.parse(t.data) : t.data; if (a.__cmpCall) { var n = a.__cmpCall; c.__uspapi(n.command, n.parameter, function (a, e) { var c = { __cmpReturn: { returnValue: a, success: e, callId: n.callId } }; t.source.postMessage(r ? JSON.stringify(c) : c, "*") }) } } catch (a) { } } if (typeof __uspapi !== "function") { c.__uspapi = p; __uspapi.msgHandler = l; c.addEventListener("message", l, false) } })();</script>
<script>
        window._sp_ccpa = {
            config: {
                mmsDomain: "https://cmp.thehill.com",
                ccpaOrigin: "https://ccpa-service.sp-prod.net",
                accountId: "1164",
                getDnsMsgMms: true,
                alwaysDisplayDns: false,
            }
        }
</script>
<script src="https://ccpa.sp-prod.net/ccpa.js"></script><script src="https://z.moatads.com/newscomprebidheader135900089283/yi.js"></script>   <script src="//thehill.com/sites/default/files/js/js_EUEhXWz9sYHRmO0bb7KrpJWOmASRCgalw3yhSaU7VGg.js"></script>
<script>
  var PREBID_TIMEOUT = 2000;

  var adUnits = [ {
          code: 'dfp-ad-leaderboard',
          mediaTypes: {
              banner: {
                  sizes: [[728, 90], [970, 90], [970, 250], [970, 415], [970, 500], [1237, 500]]
              }
          },
          bids: [{
              bidder: 'openx',
              params: {
                  unit: '538678500',
                  delDomain: 'thehill-d.openx.net'
              }
          },{
              bidder: 'kargo',
              params: {
                  placementId: '_qB2XyTfayH'
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317997',
                  size: [728,90]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317997',
                  size: [970,90]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317997',
                  size: [970,250]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317997',
                  size: [970,415]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317997',
                  size: [970,500]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317997',
                  size: [1237,500]
              }
          },{
              bidder: 'appnexus',
              params: {
                  placementId: '9114153'
              }
          },{
              bidder: 'rubicon',
              params: {
                  accountId: '15654',
                  siteId: '102722',
                  zoneId: '482104'
              }
          }]
      },{
          code: 'dfp-ad-rightrail_bottom',
          mediaTypes: {
              banner: {
                  sizes: [[300, 250], [300, 600], [300, 1050]]
              }
          },
          bids: [{
              bidder: 'openx',
              params: {
                  unit: '538678507',
                  delDomain: 'thehill-d.openx.net'
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317999',
                  size: [300,250]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317999',
                  size: [300,600]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317999',
                  size: [300,1050]
              }
          },{
              bidder: 'appnexus',
              params: {
                  placementId: '9114211'
              }
          },{
              bidder: 'rubicon',
              params: {
                  accountId: '15654',
                  siteId: '102722',
                  zoneId: '484056'
              }
          }]
      },{
          code: 'dfp-ad-rightrail_top',
          mediaTypes: {
              banner: {
                  sizes: [[160, 600], [300, 250], [300, 600], [300, 1050]]
              }
          },
          bids: [{
              bidder: 'openx',
              params: {
                  unit: '538678508',
                  delDomain: 'thehill-d.openx.net'
              }
          },{
              bidder: 'kargo',
              params: {
                  placementId: '_w42lbbT7Mr'
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '318000',
                  size: [300,250]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '318000',
                  size: [160,600]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '318000',
                  size: [300,600]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '318000',
                  size: [300,1050]
              }
          },{
              bidder: 'appnexus',
              params: {
                  placementId: '9114213'
              }
          },{
              bidder: 'rubicon',
              params: {
                  accountId: '15654',
                  siteId: '102722',
                  zoneId: '482104'
              }
          }]
      },{
          code: 'dfp-ad-incontent_desk_1',
          mediaTypes: {
              banner: {
                  sizes: [[300, 250]]
              }
          },
          bids: [{
              bidder: 'kargo',
              params: {
                  placementId: '_ntekP69gKO'
              }
          },{
              bidder: 'openx',
              params: {
                  unit: '538678494',
                  delDomain: 'thehill-d.openx.net'
              }
          },{
              bidder: 'rubicon',
              params: {
                  accountId: '15654',
                  siteId: '102722',
                  zoneId: '484056'
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317998',
                  size: [300,250]
              }
          },{
              bidder: 'appnexus',
              params: {
                  placementId: '9114211'
              }
          }]
} ];
  var videoAdUnit = {
	code: 'video_preroll',
	mediaTypes: {
	    video: {
	        playerSize: [640, 360],
	        context: 'instream'
	    }
	},
	bids: [
		{
	    	bidder: 'appnexus',
		    params: {
		        placementId: 15816860, 
		        video: {
		            skipppable: true,
		            playback_method: ['auto_play_sound_off']
		        }
		    }
		},
		{            
      		bidder: 'openx',             
	      	params: {
	         	unit: '540707777',
	         	delDomain: 'thehill-d.openx.net',
	      	}                      
   		},
   		{
	        bidder: 'ix',
	        params: {
	            siteId: '449945',
	            size: [640, 360],
	            video: {
	                mimes: ['video/mp4','video/webm', 'application/javascript'],
	                minduration: 0,
	                maxduration: 60,
	                protocols: [2, 3, 5, 6],
	                api: [1,2],
	                skip: 1,
			skipmin: 30,
			skipafter: 5	                
	            }
	        }
	    }
	]
};

  var pbjs = pbjs || {};
  pbjs.que = pbjs.que || [];

  pbjs.que.push(function() {
    pbjs.setConfig({
        enableSendAllBids: true,
        sizeConfig: [{
            mediaQuery: '(min-width: 768px)',
            sizesSupported: [
                [728, 90],
                [970, 90],
                [300, 250],
                [160,600],
                [300,600],
                [300,1050],
                [970,250],
                [970,415],
                [970,500],
                [1237,500]
            ],
            labels: ["desktop"]
        }, {
            mediaQuery: '(min-width: 0px) and (max-width: 767px)',
            sizesSupported: [
                [320, 50],
                [320, 100],
                [300, 250]
            ],
            labels: ["mobile"]
        }],
        cache: {
            url: "https://prebid.adnxs.com/pbc/v1/cache"
        },
        userSync: {
            iframeEnabled: true,
            filterSettings: {
                iframe: {
                    bidders: ['openx'],
                    filter: 'include'
                }
            }
        }
    });
});</script>
<script>
var googletag = googletag || {};
googletag.cmd = googletag.cmd || [];  googletag.cmd.push(function() {
    googletag.pubads().disableInitialLoad();
  });
</script>
<script>
  pbjs.que.push(function() {
    pbjs.addAdUnits(adUnits);
    pbjs.addAdUnits(videoAdUnit);

    pbjs.bidderSettings = {
standard: {
        alwaysUseBid: false,
        adserverTargeting: [{
            key: "hb_bidder",
          	val: function(bidResponse) {
        	return bidResponse.bidderCode;
          }
        }, {
            key: "hb_adid",
            val: function(bidResponse) {
                return bidResponse.adId;
            }
        }, 
        {
	    key: "hb_cache_id",
            val: function(bidResponse) {
		return bidResponse.videoCacheKey;
	    }
        },
        {
            key: "hb_pb",
          	val: function(bidResponse) {
            var cpm = bidResponse.cpm;
            if (cpm < 3.00) {
              return (Math.floor(cpm * 100) / 100).toFixed(2);
            } else if (cpm < 5.00) {
              return (Math.floor(cpm * 20) / 20).toFixed(2);
            } else if (cpm < 10.00) {
              return (Math.floor(cpm * 20) / 20).toFixed(2);
            } else if (cpm < 25.00) {
              return (Math.floor(cpm * 2) / 2).toFixed(2);
            } else {
              return '25.00';
        
            }
            }
        }]

      },
openx: {
	alwaysUseBid: true,
	adserverTargeting: [{
		key: "oxb",
 		val: function(bidResponse) {
 			var bid;
 			if (bidResponse.cpm < 20) {
 				//Penny Bid Buckets
 				bid = ((Math.floor(bidResponse.cpm * 100) / 100) * 100).toFixed(0);
 			} else {
 				//Twenty dollar bucket
 				bid = "2000";
 			}
 			//Returns creativeSize_bidBucket as the value
 			return bidResponse.width + "x" + bidResponse.height + "_" + bid;
 		}
 	}]
}
      };
    pbjs.requestBids({
      bidsBackHandler: sendAdserverRequest
    });
  });

  function sendAdserverRequest() {
    if (pbjs.adserverRequestSent) return;
    pbjs.adserverRequestSent = true;
    var displayAdUnitCodes = [];
    adUnits.forEach(function(adUnit) {
      displayAdUnitCodes.push(adUnit.code);
    });

    googletag.cmd.push(function() {
      pbjs.que.push(function() {
        pbjs.setTargetingForGPTAsync(displayAdUnitCodes);
        googletag.pubads().refresh();
      });
    });
  }

  setTimeout(function() {
    sendAdserverRequest();
  }, PREBID_TIMEOUT);
</script>
<script>
googletag.slots = googletag.slots || {};</script>
<script src="//thehill.com/sites/default/files/js/js_zSyBbtdXDHkAah3PgFNWkdl6BoNVXFzJYIBIrO2HD_M.js"></script>
<script src="//thehill.com/sites/default/files/js/js_gbyB-8624b04gFWZoHErKXFxSQxvWm7c4JcfaGYxlCo.js"></script>
<script>
googletag.cmd.push(function() {
googletag.slots["rightrail_top"] = googletag.defineSlot("1107919/RightRail_top_300x250_ROS_asynch", [[160, 600], [300, 250], [300, 600], [300, 1050]], "dfp-ad-rightrail_top")
  .addService(googletag.pubads())
  .setTargeting("MoatSlotId", "rightrail_top");
});
</script>
<script>
googletag.cmd.push(function() {
googletag.slots["rightrail_bottom"] = googletag.defineSlot("1107919/RightRail_bottom_300x250_ROS_asynch", [[300, 250], [300, 600], [300, 1050]], "dfp-ad-rightrail_bottom")
  .addService(googletag.pubads())
  .setTargeting("MoatSlotId", "rightrail_bottom");
});
</script>
<script>
googletag.cmd.push(function() {
googletag.slots["leaderboard"] = googletag.defineSlot("1107919/Leaderboard_728x90_ROS_asynch", [[728, 90], [970, 90], [970, 250], [970, 415], [970, 500], [1237, 500]], "dfp-ad-leaderboard")
  .addService(googletag.pubads())
  .setTargeting("MoatSlotId", "dfp-ad-leaderboard");
});
</script>
<script>
googletag.cmd.push(function() {
googletag.slots["incontent_desk_1"] = googletag.defineSlot("1107919/Content_300x250_ROS_asynch", [300, 250], "dfp-ad-incontent_desk_1")
  .addService(googletag.pubads());
});
</script>
<script>
googletag.cmd.push(function() {
googletag.slots["new_1x1_asynch"] = googletag.defineSlot("1107919/1x1_asynch", [1, 1], "dfp-ad-new_1x1_asynch")
  .addService(googletag.pubads());
});
</script>
<script>
googletag.cmd.push(function() {
googletag.slots["1x1_oop"] = googletag.defineSlot("1107919/1x1_asynch", [1, 1], "dfp-ad-1x1_oop")
  .addService(googletag.pubads());
googletag.defineOutOfPageSlot("1107919/1x1_asynch", "dfp-ad-1x1_oop-oop")
  .addService(googletag.pubads());
});
</script>
<script>
googletag.cmd.push(function() {
googletag.slots["1x1_desktop_wowyow"] = googletag.defineSlot("1107919/1x1_desktop_wowyow", [1, 1], "dfp-ad-1x1_desktop_wowyow")
  .addService(googletag.pubads());
});
</script>
<script>
    var param = (new URL(window.location)).searchParams;
    var uid = param.get("userid");
    uid = uid === null ? "" : uid;

    var dataLayer = {
      "page": {
        "author": "Aris Folley",
        "section": "News, News - Administration",
        "keywords": "Coronavirus,Donald Trump, Kellyanne Conway, Stephen Miller, Melania Trump, Hope Hicks,"
      },
      "user": {
        "userid" : uid
      }
    };
</script>
<script>
googletag.cmd.push(function() {
  googletag.pubads().setTargeting("ksg", Krux.segments);
  googletag.pubads().setTargeting("kuid", Krux.user);
  var referrer = "";
  try{referrer = document.referrer; if(document.referrer.length > 0) referrer = new URL(document.referrer).hostname; } catch(e) {console.log(e)}
  googletag.pubads().setTargeting("referrer", referrer);
  googletag.pubads().enableSingleRequest();
  googletag.pubads().collapseEmptyDivs();
  googletag.pubads().enableVideoAds();
  googletag.companionAds().setRefreshUnfilledSlots(true);
  googletag.pubads().setTargeting("Article", "520116");
  googletag.pubads().setTargeting("Category", "Administration");
  googletag.pubads().setTargeting("Section", "News");
  googletag.pubads().setTargeting("Tarmeta", ["Coronavirus","Donald Trump","Kellyanne Conway","Stephen Miller","Melania Trump","Hope Hicks","white","house","security","official","reported","to","be","gravely","ill","with","covid"]);
  googletag.pubads().setTargeting("Video", ["Float","True"]);
  
  googletag.enableServices();
});
</script>
<script src="//thehill.com/sites/default/files/js/js_4zCT9TF1zdyFo5cHWewfDVwD1ET5wj0vY8l6UcKmAsI.js"></script>
<script>(function(i,s,o,g,r,a,m){i["GoogleAnalyticsObject"]=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,"script","//www.google-analytics.com/analytics.js","ga");ga("create", "UA-10188146-1", {"cookieDomain":"auto"});ga("set", "dimension1", "Aris Folley");ga("send", "pageview");</script>
<script src="//thehill.com/sites/default/files/js/js_3FimjhHlbAdnqDEb8OwjcqUpxHVyidrcRpUJDQqOYwI.js"></script>
<script src="//cdn.jwplayer.com/libraries/RSvzxzFp.js"></script>
<script src="//z.moatads.com/jwplayerplugin0938452/moatplugin.js"></script>
<script src="//sb.scorecardresearch.com/c2/plugins/streamingtag_plugin_jwplayer.js"></script>
<script src="//thehill.com/sites/default/files/js/js_F1AP5IICyTi-s6o_2UvaN09ASXpri4fyBkXJ9Or1ow0.js"></script>
<script src="//thehill.com/sites/default/files/js/js_2SUL8v-ADjMAY3ItWnTPwqYGbjhTft_U1PW1Dzbf6Vc.js"></script>
<script nonce="iXohng2hoh">jQuery.extend(Drupal.settings, {"basePath":"\/","pathPrefix":"","ajaxPageState":{"theme":"thehill","theme_token":"BRGSUKj9BOE3gUjRq2zShHTuz-Rntf6Zc8mw6WuNvhg","js":{"sites\/all\/modules\/jquery_update\/replace\/jquery\/1.7\/jquery.min.js":1,"misc\/jquery-extend-3.4.0.js":1,"misc\/jquery-html-prefilter-3.5.0-backport.js":1,"misc\/jquery.once.js":1,"misc\/drupal.js":1,"sites\/all\/modules\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.core.min.js":1,"sites\/all\/modules\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.widget.min.js":1,"sites\/all\/modules\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.effect.min.js":1,"sites\/all\/modules\/jquery_update\/replace\/ui\/external\/jquery.cookie.js":1,"sites\/all\/modules\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.accordion.min.js":1,"sites\/all\/modules\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.effect-highlight.min.js":1,"0":1,"1":1,"2":1,"3":1,"4":1,"5":1,"6":1,"7":1,"sites\/all\/libraries\/colorbox\/jquery.colorbox-min.js":1,"sites\/all\/modules\/colorbox\/js\/colorbox.js":1,"sites\/all\/modules\/colorbox\/styles\/default\/colorbox_style.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/thehill_rba.js":1,"8":1,"sites\/all\/modules\/thehill\/thehill_misc\/js\/person-links.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/carousel\/jquery.caroufredsel.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/carousel\/helper-plugins\/jquery.ba-throttle-debounce.min.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/carousel\/helper-plugins\/jquery.mousewheel.min.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/carousel\/helper-plugins\/jquery.touchSwipe.min.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/carousel\/helper-plugins\/jquery.transit.min.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/carousel\/thehill_carousel.js":1,"misc\/jquery.cookie.js":1,"sites\/all\/modules\/mostpopular\/js\/fade.js":1,"sites\/all\/modules\/mostpopular\/js\/mostpopular.js":1,"https:\/\/cdn.jwplayer.com\/libraries\/RSvzxzFp.js":1,"https:\/\/z.moatads.com\/jwplayerplugin0938452\/moatplugin.js":1,"https:\/\/sb.scorecardresearch.com\/c2\/plugins\/streamingtag_plugin_jwplayer.js":1,"sites\/all\/modules\/disqus\/disqus.js":1,"sites\/all\/modules\/ajaxblocks\/ajaxblocks.js":1,"sites\/all\/modules\/hide_submit\/js\/hide_submit.js":1,"sites\/all\/themes\/thehill\/js\/jquery.sticky-kit.min.js":1,"sites\/all\/themes\/thehill\/js\/jquery.visible.min.js":1,"sites\/all\/themes\/thehill\/js\/script.js":1,"sites\/all\/themes\/thehill\/js\/dfp.gpt.logger.override.js":1,"sites\/all\/themes\/thehill\/js\/overriden\/mostpopular.js":1,"sites\/all\/themes\/thehill\/js\/opa.js":1,"sites\/all\/themes\/thehill\/js\/th_jwplayer.js":1,"9":1,"10":1,"11":1,"12":1,"13":1,"14":1,"15":1,"16":1,"17":1,"18":1,"19":1,"20":1,"21":1,"22":1,"23":1,"24":1,"25":1,"26":1},"css":{"modules\/system\/system.base.css":1,"modules\/system\/system.menus.css":1,"modules\/system\/system.messages.css":1,"modules\/system\/system.theme.css":1,"sites\/all\/modules\/date\/date_api\/date.css":1,"sites\/all\/modules\/date\/date_popup\/themes\/datepicker.1.7.css":1,"modules\/field\/theme\/field.css":1,"sites\/all\/modules\/menu_attach_block\/menu_attach_block.css":1,"modules\/node\/node.css":1,"modules\/search\/search.css":1,"modules\/user\/user.css":1,"sites\/all\/modules\/views\/css\/views.css":1,"sites\/all\/modules\/media\/modules\/media_wysiwyg\/css\/media_wysiwyg.base.css":1,"sites\/all\/modules\/chartbeat\/chartbeat.css":1,"sites\/all\/modules\/colorbox\/styles\/default\/colorbox_style.css":1,"sites\/all\/modules\/ctools\/css\/ctools.css":1,"sites\/all\/modules\/thehill\/thehill_misc\/css\/person-links.css":1,"sites\/all\/modules\/mostpopular\/css\/mostpopular-basic.css":1,"sites\/all\/modules\/mostpopular\/css\/mostpopular-full.css":1,"sites\/all\/modules\/hide_submit\/css\/hide_submit.css":1,"sites\/all\/themes\/thehill\/system.menus.css":1,"sites\/all\/themes\/thehill\/css\/normalize.css":1,"sites\/all\/themes\/thehill\/css\/wireframes.css":1,"sites\/all\/themes\/thehill\/css\/layouts\/responsive-sidebars.css":1,"sites\/all\/themes\/thehill\/css\/page-backgrounds.css":1,"sites\/all\/themes\/thehill\/css\/tabs.css":1,"sites\/all\/themes\/thehill\/css\/pages.css":1,"sites\/all\/themes\/thehill\/css\/blocks.css":1,"sites\/all\/themes\/thehill\/css\/navigation.css":1,"sites\/all\/themes\/thehill\/css\/views-styles.css":1,"sites\/all\/themes\/thehill\/css\/nodes.css":1,"sites\/all\/themes\/thehill\/css\/comments.css":1,"sites\/all\/themes\/thehill\/css\/forms.css":1,"sites\/all\/themes\/thehill\/css\/fields.css":1,"sites\/all\/themes\/thehill\/css\/print.css":1,"sites\/all\/themes\/thehill\/css\/articles-teaser.css":1,"sites\/all\/themes\/thehill\/css\/font-awesome.min.css":1,"sites\/all\/themes\/thehill\/css\/opa.css":1,"sites\/all\/themes\/thehill\/css\/opa-fix.css":1,"sites\/all\/themes\/thehill\/css\/hilltv.css":1,"sites\/all\/themes\/thehill\/css\/th_jwplayer.css":1}},"chartbeat":{"uid":3100,"domain":"thehill.com","useCanonical":true,"noCookies":false},"colorbox":{"opacity":"0.85","current":"{current} of {total}","previous":"\u00ab Prev","next":"Next \u00bb","close":"Close","maxWidth":"98%","maxHeight":"98%","fixed":true,"mobiledetect":true,"mobiledevicewidth":"480px"},"ad_timeout":"25000","hide_submit":{"hide_submit_status":true,"hide_submit_method":"disable","hide_submit_css":"hide-submit-disable","hide_submit_abtext":"","hide_submit_atext":"","hide_submit_hide_css":"hide-submit-processing","hide_submit_hide_text":"Processing...","hide_submit_indicator_style":"expand-left","hide_submit_spinner_color":"#000","hide_submit_spinner_lines":12,"hide_submit_hide_fx":0,"hide_submit_reset_time":0},"rba":{"start":1431367200000,"end":1431378900000,"expiration":"43200","ad_tag":"road_block_ad","timer":15000,"url":"\/rba_page"},"urlIsAjaxTrusted":{"\/homenews\/administration\/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid":true},"thehill_mostpopular":{"sid":"1","iid":"1","tag":""},"thehill_carousel":{"carousels":{"#thehill-mostpopular-block .mostpopular--content ul":{"auto":false,"infinite":false,"circular":true,"next":"#most_popular_next","mousewheel":false,"swipe":{"onMouse":true,"onTouch":true},"items":6,"mostpopular":true,"direction":"up","scroll":{"items":6,"duration":1000,"timeoutDuration":2000}}}},"mostpopular":{"url":"\/mostpopular\/ajax"},"disqus":{"domain":"thehill-v4","url":"https:\/\/thehill.com\/homenews\/administration\/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid","title":"White House security official reported to be gravely ill with COVID-19","identifier":"node\/520116","developer":1,"language":"en","sso":{"name":"TheHill","url":"\/user\/login?destination=disqus\/closewindow","logout":"\/user\/logout?destination=node\/520116","width":800,"height":600,"button":"https:\/\/thehill.com\/sites\/all\/themes\/thehill\/images\/print_logo.png","icon":"https:\/\/thehill.com\/favicon.ico"},"api_key":"MU2vV9R8hBF3W9kH0Zo2HKkiLqQY5ahOlvro6pPtNeOnnI6dQLfkIjd0OgRl9W6x","remote_auth_s3":"W10= c8546b331511aeec33cd5378ad9852f227af0cd0 1602697828"},"ajaxblocks":"blocks=mostpopular-1\/views-articles-articles_just_in\u0026path=node"});</script>
  <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4e8f5d7e1bc8befe"></script>
  <script src="https://socialcanvas-cdn.kargo.com/js/rh.min.js"></script><meta http-equiv="refresh" content="2700"/><!-- mweb -->
<script>
window.googletag = window.googletag ||  {cmd: []}; googletag.cmd.push(function() {
 var slot = googletag.defineOutOfPageSlot("1107919/336x280_tablet_interstitial", googletag.enums.OutOfPageFormat.INTERSTITIAL);
 if  (slot) slot.addService(googletag.pubads()); googletag.enableServices();
googletag.display(slot);
 }); </script><meta name="twitter:widgets:csp" content="on">
<!-- iOS -->
 <meta name="apple-itunes-app" content="app-id=396640962">
<!-- end iOS -->
<!-- START Nativo -->
<script type="text/javascript" src="//s.ntv.io/serve/load.js" async></script>
<!-- END Nativo -->
<!-- NDN Start -->
<!-- script type="text/javascript" src="//launch.newsinc.com/js/embed.js"></script -->
<!-- NDN End -->
<script>window['moatYieldReady']=function(){return window.moatPrebidApi.setMoatTargetingForAllSlots()};</script>
<script>(function(){/*

 Copyright The Closure Library Authors.
 SPDX-License-Identifier: Apache-2.0
*/
'use strict';var g=function(a){var b=0;return function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}}},l=this||self,m=/^[\w+/_-]+[=]{0,2}$/,p=null,q=function(){},r=function(a){var b=typeof a;if("object"==b)if(a){if(a instanceof Array)return"array";if(a instanceof Object)return b;var c=Object.prototype.toString.call(a);if("[object Window]"==c)return"object";if("[object Array]"==c||"number"==typeof a.length&&"undefined"!=typeof a.splice&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("splice"))return"array";
if("[object Function]"==c||"undefined"!=typeof a.call&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("call"))return"function"}else return"null";else if("function"==b&&"undefined"==typeof a.call)return"object";return b},u=function(a,b){function c(){}c.prototype=b.prototype;a.prototype=new c;a.prototype.constructor=a};var v=function(a,b){Object.defineProperty(l,a,{configurable:!1,get:function(){return b},set:q})};var y=function(a,b){this.b=a===w&&b||"";this.a=x},x={},w={};var aa=function(a,b){a.src=b instanceof y&&b.constructor===y&&b.a===x?b.b:"type_error:TrustedResourceUrl";if(null===p)b:{b=l.document;if((b=b.querySelector&&b.querySelector("script[nonce]"))&&(b=b.nonce||b.getAttribute("nonce"))&&m.test(b)){p=b;break b}p=""}b=p;b&&a.setAttribute("nonce",b)};var z=function(){return Math.floor(2147483648*Math.random()).toString(36)+Math.abs(Math.floor(2147483648*Math.random())^+new Date).toString(36)};var A=function(a,b){b=String(b);"application/xhtml+xml"===a.contentType&&(b=b.toLowerCase());return a.createElement(b)},B=function(a){this.a=a||l.document||document};B.prototype.appendChild=function(a,b){a.appendChild(b)};var C=function(a,b,c,d,e,f){try{var k=a.a,h=A(a.a,"SCRIPT");h.async=!0;aa(h,b);k.head.appendChild(h);h.addEventListener("load",function(){e();d&&k.head.removeChild(h)});h.addEventListener("error",function(){0<c?C(a,b,c-1,d,e,f):(d&&k.head.removeChild(h),f())})}catch(n){f()}};var ba=l.atob("aHR0cHM6Ly93d3cuZ3N0YXRpYy5jb20vaW1hZ2VzL2ljb25zL21hdGVyaWFsL3N5c3RlbS8xeC93YXJuaW5nX2FtYmVyXzI0ZHAucG5n"),ca=l.atob("WW91IGFyZSBzZWVpbmcgdGhpcyBtZXNzYWdlIGJlY2F1c2UgYWQgb3Igc2NyaXB0IGJsb2NraW5nIHNvZnR3YXJlIGlzIGludGVyZmVyaW5nIHdpdGggdGhpcyBwYWdlLg=="),da=l.atob("RGlzYWJsZSBhbnkgYWQgb3Igc2NyaXB0IGJsb2NraW5nIHNvZnR3YXJlLCB0aGVuIHJlbG9hZCB0aGlzIHBhZ2Uu"),ea=function(a,b,c){this.b=a;this.f=new B(this.b);this.a=null;this.c=[];this.g=!1;this.i=b;this.h=c},F=function(a){if(a.b.body&&!a.g){var b=
function(){D(a);l.setTimeout(function(){return E(a,3)},50)};C(a.f,a.i,2,!0,function(){l[a.h]||b()},b);a.g=!0}},D=function(a){for(var b=G(1,5),c=0;c<b;c++){var d=H(a);a.b.body.appendChild(d);a.c.push(d)}b=H(a);b.style.bottom="0";b.style.left="0";b.style.position="fixed";b.style.width=G(100,110).toString()+"%";b.style.zIndex=G(2147483544,2147483644).toString();b.style["background-color"]=I(249,259,242,252,219,229);b.style["box-shadow"]="0 0 12px #888";b.style.color=I(0,10,0,10,0,10);b.style.display=
"flex";b.style["justify-content"]="center";b.style["font-family"]="Roboto, Arial";c=H(a);c.style.width=G(80,85).toString()+"%";c.style.maxWidth=G(750,775).toString()+"px";c.style.margin="24px";c.style.display="flex";c.style["align-items"]="flex-start";c.style["justify-content"]="center";d=A(a.f.a,"IMG");d.className=z();d.src=ba;d.style.height="24px";d.style.width="24px";d.style["padding-right"]="16px";var e=H(a),f=H(a);f.style["font-weight"]="bold";f.textContent=ca;var k=H(a);k.textContent=da;J(a,
e,f);J(a,e,k);J(a,c,d);J(a,c,e);J(a,b,c);a.a=b;a.b.body.appendChild(a.a);b=G(1,5);for(c=0;c<b;c++)d=H(a),a.b.body.appendChild(d),a.c.push(d)},J=function(a,b,c){for(var d=G(1,5),e=0;e<d;e++){var f=H(a);b.appendChild(f)}b.appendChild(c);c=G(1,5);for(d=0;d<c;d++)e=H(a),b.appendChild(e)},G=function(a,b){return Math.floor(a+Math.random()*(b-a))},I=function(a,b,c,d,e,f){return"rgb("+G(Math.max(a,0),Math.min(b,255)).toString()+","+G(Math.max(c,0),Math.min(d,255)).toString()+","+G(Math.max(e,0),Math.min(f,
255)).toString()+")"},H=function(a){a=A(a.f.a,"DIV");a.className=z();return a},E=function(a,b){0>=b||null!=a.a&&0!=a.a.offsetHeight&&0!=a.a.offsetWidth||(fa(a),D(a),l.setTimeout(function(){return E(a,b-1)},50))},fa=function(a){var b=a.c;var c="undefined"!=typeof Symbol&&Symbol.iterator&&b[Symbol.iterator];b=c?c.call(b):{next:g(b)};for(c=b.next();!c.done;c=b.next())(c=c.value)&&c.parentNode&&c.parentNode.removeChild(c);a.c=[];(b=a.a)&&b.parentNode&&b.parentNode.removeChild(b);a.a=null};var ia=function(a,b,c,d,e){var f=ha(c),k=function(n){n.appendChild(f);l.setTimeout(function(){f?(0!==f.offsetHeight&&0!==f.offsetWidth?b():a(),f.parentNode&&f.parentNode.removeChild(f)):a()},d)},h=function(n){document.body?k(document.body):0<n?l.setTimeout(function(){h(n-1)},e):b()};h(3)},ha=function(a){var b=document.createElement("div");b.className=a;b.style.width="1px";b.style.height="1px";b.style.position="absolute";b.style.left="-10000px";b.style.top="-10000px";b.style.zIndex="-10000";return b};var K={},L=null;var M=function(){},N="function"==typeof Uint8Array,O=function(a,b){a.b=null;b||(b=[]);a.j=void 0;a.f=-1;a.a=b;a:{if(b=a.a.length){--b;var c=a.a[b];if(!(null===c||"object"!=typeof c||Array.isArray(c)||N&&c instanceof Uint8Array)){a.g=b-a.f;a.c=c;break a}}a.g=Number.MAX_VALUE}a.i={}},P=[],Q=function(a,b){if(b<a.g){b+=a.f;var c=a.a[b];return c===P?a.a[b]=[]:c}if(a.c)return c=a.c[b],c===P?a.c[b]=[]:c},R=function(a,b,c){a.b||(a.b={});if(!a.b[c]){var d=Q(a,c);d&&(a.b[c]=new b(d))}return a.b[c]};
M.prototype.h=N?function(){var a=Uint8Array.prototype.toJSON;Uint8Array.prototype.toJSON=function(){var b;void 0===b&&(b=0);if(!L){L={};for(var c="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".split(""),d=["+/=","+/","-_=","-_.","-_"],e=0;5>e;e++){var f=c.concat(d[e].split(""));K[e]=f;for(var k=0;k<f.length;k++){var h=f[k];void 0===L[h]&&(L[h]=k)}}}b=K[b];c=[];for(d=0;d<this.length;d+=3){var n=this[d],t=(e=d+1<this.length)?this[d+1]:0;h=(f=d+2<this.length)?this[d+2]:0;k=n>>2;n=(n&
3)<<4|t>>4;t=(t&15)<<2|h>>6;h&=63;f||(h=64,e||(t=64));c.push(b[k],b[n],b[t]||"",b[h]||"")}return c.join("")};try{return JSON.stringify(this.a&&this.a,S)}finally{Uint8Array.prototype.toJSON=a}}:function(){return JSON.stringify(this.a&&this.a,S)};var S=function(a,b){return"number"!==typeof b||!isNaN(b)&&Infinity!==b&&-Infinity!==b?b:String(b)};M.prototype.toString=function(){return this.a.toString()};var T=function(a){O(this,a)};u(T,M);var U=function(a){O(this,a)};u(U,M);var ja=function(a,b){this.c=new B(a);var c=R(b,T,5);c=new y(w,Q(c,4)||"");this.b=new ea(a,c,Q(b,4));this.a=b},ka=function(a,b,c,d){b=new T(b?JSON.parse(b):null);b=new y(w,Q(b,4)||"");C(a.c,b,3,!1,c,function(){ia(function(){F(a.b);d(!1)},function(){d(!0)},Q(a.a,2),Q(a.a,3),Q(a.a,1))})};var la=function(a,b){V(a,"internal_api_load_with_sb",function(c,d,e){ka(b,c,d,e)});V(a,"internal_api_sb",function(){F(b.b)})},V=function(a,b,c){a=l.btoa(a+b);v(a,c)},W=function(a,b,c){for(var d=[],e=2;e<arguments.length;++e)d[e-2]=arguments[e];e=l.btoa(a+b);e=l[e];if("function"==r(e))e.apply(null,d);else throw Error("API not exported.");};var X=function(a){O(this,a)};u(X,M);var Y=function(a){this.h=window;this.a=a;this.b=Q(this.a,1);this.f=R(this.a,T,2);this.g=R(this.a,U,3);this.c=!1};Y.prototype.start=function(){ma();var a=new ja(this.h.document,this.g);la(this.b,a);na(this)};
var ma=function(){var a=function(){if(!l.frames.googlefcPresent)if(document.body){var b=document.createElement("iframe");b.style.display="none";b.style.width="0px";b.style.height="0px";b.style.border="none";b.style.zIndex="-1000";b.style.left="-1000px";b.style.top="-1000px";b.name="googlefcPresent";document.body.appendChild(b)}else l.setTimeout(a,5)};a()},na=function(a){var b=Date.now();W(a.b,"internal_api_load_with_sb",a.f.h(),function(){var c;var d=a.b,e=l[l.btoa(d+"loader_js")];if(e){e=l.atob(e);
e=parseInt(e,10);d=l.btoa(d+"loader_js").split(".");var f=l;d[0]in f||"undefined"==typeof f.execScript||f.execScript("var "+d[0]);for(;d.length&&(c=d.shift());)d.length?f[c]&&f[c]!==Object.prototype[c]?f=f[c]:f=f[c]={}:f[c]=null;c=Math.abs(b-e);c=1728E5>c?0:c}else c=-1;0!=c&&(W(a.b,"internal_api_sb"),Z(a,Q(a.a,6)))},function(c){Z(a,c?Q(a.a,4):Q(a.a,5))})},Z=function(a,b){a.c||(a.c=!0,a=new l.XMLHttpRequest,a.open("GET",b,!0),a.send())};(function(a,b){l[a]=function(c){for(var d=[],e=0;e<arguments.length;++e)d[e-0]=arguments[e];l[a]=q;b.apply(null,d)}})("__d3lUW8vwsKlB__",function(a){"function"==typeof window.atob&&(a=window.atob(a),a=new X(a?JSON.parse(a):null),(new Y(a)).start())});}).call(this);

window.__d3lUW8vwsKlB__("WyI4ODc5ZDhjM2I5Zjg1MTY4IixbbnVsbCxudWxsLG51bGwsImh0dHBzOi8vZnVuZGluZ2Nob2ljZXNtZXNzYWdlcy5nb29nbGUuY29tL2YvQUdTS1d4VnEtbi1uUDZCNkFYcmZrS0VoRGtsdWRUMm9QRXVQbDRvRjdqZXA0dDRybzEyU2R4Ukl5eV84cW1uUVYwZXhwQldwSlVfNEhqU0pmWXE4ekRWTkcxTVx1MDAzZCJdCixbMjAsImRpdi1ncHQtYWQiLDEwMCwiT0RnM09XUTRZek5pT1dZNE5URTJPQVx1MDAzZFx1MDAzZCIsW251bGwsbnVsbCxudWxsLCJodHRwczovL3d3dy5nc3RhdGljLmNvbS8wZW1uL2YvcC84ODc5ZDhjM2I5Zjg1MTY4LmpzP3VzcXBcdTAwM2RDQTQiXQpdCiwiaHR0cHM6Ly9mdW5kaW5nY2hvaWNlc21lc3NhZ2VzLmdvb2dsZS5jb20vbC9BR1NLV3hXdEt4cXR2TUhoT2RDM050M0dJM3Q4SktoamEzOHhDdGtud3ZBVmtTdXN3UWVsaWxLR0Q4SkNRLUh1ZXo1UlhhUmxIamhtMms1dzhRWmtsTXpFP2FiXHUwMDNkMSIsImh0dHBzOi8vZnVuZGluZ2Nob2ljZXNtZXNzYWdlcy5nb29nbGUuY29tL2wvQUdTS1d4VmlkNm5uU1BqS3pUNm9pNmk3Sms2M0xGUXpPZEdqTkZ0MWZrdE1QVG40YlYtczdxMDFsSU5ibXlGYnN2RWx6TDlLaTdldERjTUVMZW1lSmZ3Uz9hYlx1MDAzZDJcdTAwMjZzYmZcdTAwM2QxIiwiaHR0cHM6Ly9mdW5kaW5nY2hvaWNlc21lc3NhZ2VzLmdvb2dsZS5jb20vbC9BR1NLV3hYQThHZTN2bUxrZ1BrYWM0MW1wMjRNdDlaWFdfZGFEeEZvZjdja3VicWRLMDVBNEFsaFZDcFBRcTZVQlM3ajBFQUFDbE1YQmxJcmczQjlOSUFMP3NiZlx1MDAzZDIiXQo=");</script>  <!--[if lt IE 9]>
    <script>
      document.createElement('header');
      document.createElement('nav');
      document.createElement('section');
      document.createElement('article');
      document.createElement('aside');
      document.createElement('footer');
    </script>
  <![endif]-->
  <!-- Krux ControlTag for "The Hill" -->
  <script class="kxct" data-id="sf90wt710" data-timing="async" data-version="3.0" type="text/javascript">
    window.Krux||((Krux=function(){Krux.q.push(arguments)}).q=[]);
    (function()
      { var k=document.createElement('script');k.type='text/javascript';k.async=true; k.src=(location.protocol==='https:'?'https:':'http:')+'//cdn.krxd.net/controltag/sf90wt710.js'; var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(k,s); }
    ());
  </script>
</head>
<body class="html not-front not-logged-in one-sidebar sidebar-second page-node page-node- page-node-520116 node-type-article featured-other--articles section-homenews smaller-size" >
  <div id="skip-link">
    <a href="#main-content" class="element-invisible element-focusable">Skip to main content</a>
  </div>
            <div class="region region-before-header">
    <div id="block-system-main-menu" class="block block-system block-menu first last odd" role="navigation">
  <div class="expand-menu-header">
    <span class="expand-menu-close"></span>
    <a href="/"></a>
  </div>
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/signup" class="menu__link menu__link">sign up for newsletters</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/" class="menu__link menu__link">Home</a></li>
<li class="menu__item is-active-trail is-expanded menu__item is-active-trail is-expanded expanded active-trail depth-1"><a href="/" class="menu__link is-active-trail menu__link is-active-trail active-trail">News</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/homenews/senate" title="Senate" name="Senate" class="menu__link menu__link">Senate</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/house" class="menu__link menu__link">House</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/campaign" class="menu__link menu__link">Campaign</a></li>
<li class="menu__item is-active-trail is-leaf menu__item is-active-trail is-leaf leaf active-trail depth-2"><a href="/homenews/administration" class="menu__link is-active-trail menu__link is-active-trail active-trail">Administration</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/business-a-lobbying" class="menu__link menu__link">Business</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation" class="menu__link menu__link">Regulation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/media" class="menu__link menu__link">Media</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/blog-briefing-room" class="menu__link menu__link">Briefing Room</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/state-watch" class="menu__link menu__link">State Watch</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/latino" class="menu__link menu__link">Latino</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/1230-report" class="menu__link menu__link">12:30 Report</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/coronavirus-report" class="menu__link menu__link">Coronavirus Report</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/politics-101" class="menu__link menu__link">Politics 101</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/floor-action" class="menu__link menu__link">Floor Action</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/in-the-know" class="menu__link menu__link">In The Know</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/homenews/sunday-talk-shows" class="menu__link menu__link">Sunday Talk Shows</a></li>
</ul></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/policy" class="menu__link menu__link">Policy</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/policy/defense" class="menu__link menu__link">Defense</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/energy-environment" class="menu__link menu__link">Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/finance" class="menu__link menu__link">Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/healthcare" class="menu__link menu__link">Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/technology" class="menu__link menu__link">Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/transportation" class="menu__link menu__link">Transportation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/international" class="menu__link menu__link">International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/cybersecurity" class="menu__link menu__link">Cybersecurity</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/policy/national-security" class="menu__link menu__link">National Security</a></li>
</ul></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/regulation" class="menu__link menu__link">Regulation</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/regulation/defense" class="menu__link menu__link">Defense</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/energy-environment" class="menu__link menu__link">Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/finance" class="menu__link menu__link">Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/healthcare" class="menu__link menu__link">Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/technology" class="menu__link menu__link">Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/transportation" class="menu__link menu__link">Transportation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/international" class="menu__link menu__link">International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/cybersecurity" class="menu__link menu__link">Cybersecurity</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/regulation/national-security" class="menu__link menu__link">National Security</a></li>
</ul></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/opinion" class="menu__link menu__link">Opinion</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/opinion" class="menu__link menu__link">Contributors</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/opinion/columnists" class="menu__link menu__link">Columnists</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/contributor-application-form" class="menu__link menu__link">Become a contributor</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/blogs/congress-blog" class="menu__link menu__link">Congress Blog</a></li>
</ul></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/hilltv" class="menu__link menu__link">Hill.TV</a></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1 left"><a href="/video" class="menu__link menu__link left">Video</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/video/campaign" class="menu__link menu__link">Campaign</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/defense" class="menu__link menu__link">Defense</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/energy-environment" class="menu__link menu__link">Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/finance" class="menu__link menu__link">Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/healthcare" class="menu__link menu__link">Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/technology" class="menu__link menu__link">Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/transportation" class="menu__link menu__link">Transportation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/international" class="menu__link menu__link">International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/cybersecurity" class="menu__link menu__link">Cybersecurity</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/national-security" class="menu__link menu__link">National Security</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/sunday-shows" class="menu__link menu__link">Sunday Shows</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/events" class="menu__link menu__link">Events</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/video/lawmaker-interviews" class="menu__link menu__link">Lawmaker Interviews</a></li>
</ul></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/podcasts" class="menu__link menu__link">Podcasts</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/podcasts/hillcast" class="menu__link menu__link">HillCast</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/podcasts/history-cast" class="menu__link menu__link">HistoryCast</a></li>
</ul></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="http://edition.pagesuite-professional.co.uk/html5/reader/production/default.aspx?pubname=&amp;pubid=4fa6205e-3dd2-4d07-9a10-85dbaa7c0079" class="menu__link menu__link">Print Edition</a></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1 left single"><a href="/events" class="menu__link menu__link single left">Events</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/events" class="menu__link menu__link">Upcoming Events</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/events/past" class="menu__link menu__link">Past Events</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/events/about" class="menu__link menu__link">About</a></li>
</ul></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/people" class="menu__link menu__link">People</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/homenews/campaign" class="menu__link menu__link">Campaign</a></li>
</ul>  <div id="expand-menu-social-share">
    <div class="expand-menu-headline">Follow Us</div>
    <a href="http://www.facebook.com/TheHill" class="social-share-facebook" target="_blank">Facebook</a>&nbsp;<a href="https://twitter.com/intent/follow?screen_name=thehill" class="social-share-twitter-follow" target="_blank">Twitter</a>&nbsp;<a href="https://www.linkedin.com/company/the-hill" class="social-share-linkedin" target="_blank">LinkedIn</a>&nbsp;  </div>
  <div id="expand-menu-footer">
    <div class="expand-menu-headline"><a href="/">TheHill.com</a></div>
    &copy; 1996-2020 News Communication
    <ul class="links"><li class="menu-3055 first"><a href="/terms-and-conditions">Terms &amp; Conditions</a></li>
<li class="menu-3054 last"><a href="/privacy-policy">Privacy Policy</a></li>
</ul>  </div>
</div>
  </div>
    <header id="header" role="banner" >
    <div>
      <div class="header_blocks">
                      </div>
      <div class="clear"></div>
      <div id="navigation">
        <nav id="main-menu" role="navigation">
          <div class="expanded-menu"></div>
                        <div class="region region-navigation">
    <div id="block-menu-menu-top-menu" class="block block-menu first last odd" role="navigation">

        <h2 class="block__title block-title">Top menu</h2>
    
  <div class="menu-wrapper"><ul class="menu"><li class="menu__item is-active-trail is-expanded menu__item is-active-trail is-expanded first expanded active-trail depth-1"><a href="/" class="menu__link is-active-trail menu__link is-active-trail active-trail">News</a><div class="menu-wrapper"><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/homenews/senate" class="menu__link menu__link">Senate</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/house" class="menu__link menu__link">House</a></li>
<li class="menu__item is-active-trail is-leaf menu__item is-active-trail is-leaf leaf active-trail depth-2"><a href="/homenews/administration" class="menu__link is-active-trail menu__link is-active-trail active-trail">Administration</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/campaign" class="menu__link menu__link">Campaign</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/business-a-lobbying" class="menu__link menu__link">Business</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation" class="menu__link menu__link">Regulation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/media" class="menu__link menu__link">Media</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/blog-briefing-room" class="menu__link menu__link">Briefing Room</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/state-watch" class="menu__link menu__link">State Watch</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/latino" class="menu__link menu__link">Latino</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/1230-report" class="menu__link menu__link">12:30 Report</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/coronavirus-report" class="menu__link menu__link">Coronavirus Report</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/politics-101" class="menu__link menu__link">Politics 101</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/floor-action" class="menu__link menu__link">Floor Action</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/in-the-know" class="menu__link menu__link">In The Know</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/homenews/sunday-talk-shows" class="menu__link menu__link">Sunday Talk Shows</a></li>
</ul></div></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/policy" class="menu__link menu__link">Policy</a><div class="menu-wrapper"><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/policy/defense" class="menu__link menu__link">Defense</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/energy-environment" class="menu__link menu__link">Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/finance" class="menu__link menu__link">Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/healthcare" class="menu__link menu__link">Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/technology" class="menu__link menu__link">Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/transportation" class="menu__link menu__link">Transportation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/international" class="menu__link menu__link">International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/cybersecurity" class="menu__link menu__link">Cybersecurity</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/policy/national-security" class="menu__link menu__link">National Security</a></li>
</ul></div></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/opinion" class="menu__link menu__link">Opinion</a><div class="menu-wrapper opa-opinion-menu"><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/opinion/columnists" class="menu__link menu__link">Columnists</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/blogs/congress-blog" class="menu__link menu__link">Congress Blog</a></li>
</ul><div class="opa-opinion-submenu">
            <a href="/opinion" class="opa-opinion-submenu-all">All Contributors</a>
            <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/opinion/campaign" class="menu__link menu__link">- Campaign</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/civil-rights" class="menu__link menu__link">- Civil Rights</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/criminal-justice" class="menu__link menu__link">- Criminal Justice</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/education" class="menu__link menu__link">- Education</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/energy-environment" class="menu__link menu__link">- Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/finance" class="menu__link menu__link">- Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/healthcare" class="menu__link menu__link">- Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/immigration" class="menu__link menu__link">- Immigration</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/international" class="menu__link menu__link">- International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/judiciary" class="menu__link menu__link">- Judiciary</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/technology" class="menu__link menu__link">- Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/white-house" class="menu__link menu__link">- White House</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/contributor-application-form" class="menu__link menu__link">- Become A Contributor</a></li>
</ul>
            </div></div></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/events" class="menu__link menu__link">Events</a><div class="menu-wrapper"><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/events" class="menu__link menu__link">Upcoming Events</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/events/about" class="menu__link menu__link">About</a></li>
</ul></div></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/resources/classifieds/employer" class="menu__link menu__link">Jobs</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/hilltv" class="menu__link menu__link hill-tv">HILL.TV</a></li>
<li class="menu__item is-expanded menu__item is-expanded expanded black depth-1"><a href="/changing-america" class="menu__link menu__link">Changing America </a><div class="menu-wrapper"><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/changing-america/respect" class="menu__link menu__link">Respect</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/changing-america/sustainability" class="menu__link menu__link">Sustainability</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/changing-america/enrichment" class="menu__link menu__link">Enrichment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/changing-america/resilience" class="menu__link menu__link">Resilience</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/changing-america/well-being" class="menu__link menu__link">Well-Being</a></li>
</ul></div></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf covid-19 depth-1"><a href="/social-tags/century-of-the-woman" class="menu__link menu__link">Century of the Woman</a></li>
</ul></div>
</div>
  </div>
                                  <div class="region region-controls">
    <div id="block-social-share-social-share" class="block block-social-share first odd">

      
  <a href="http://www.facebook.com/TheHill" class="social-share-facebook" target="_blank">Facebook</a>&nbsp;<a href="https://twitter.com/intent/follow?screen_name=thehill" class="social-share-twitter-follow" target="_blank">Twitter</a>&nbsp;<a href="https://www.linkedin.com/company/the-hill" class="social-share-linkedin" target="_blank">LinkedIn</a>&nbsp;
</div>
<div id="block-search-form" class="block block-search last even" role="search">

      
  <form action="/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid" method="post" id="search-block-form" accept-charset="UTF-8"><div><div class="container-inline">
      <h2 class="element-invisible">Search form</h2>
    <div class="form-item form-type-textfield form-item-search-block-form">
  <label class="element-invisible" for="edit-search-block-form--2">Search </label>
 <input title="Enter the terms you wish to search for." placeholder="TYPE TO SEARCH" type="text" id="edit-search-block-form--2" name="search_block_form" value="" size="15" maxlength="128" class="form-text" />
</div>
<div class="form-actions form-wrapper" id="edit-actions"><input type="submit" id="edit-submit" name="op" value="Search" class="form-submit" /></div><input type="hidden" name="form_build_id" value="form-61gRQWbFoFIAwFDd-sD0a-0rB2gNdoCxvykwFROnkNM" />
<input type="hidden" name="form_id" value="search_block_form" />
</div>
</div></form>
</div>
  </div>
                  </nav>  
      </div>
    </div>
  </header><div id="page" class="page-new-layout responsive">
  <div id="main" class="scrolling-content ">
      <div class="region region-highlighted">
    <div id="block-term-queue-0" class="block block-term-queue first odd">

        <h2 class="block__title block-title">TRENDING:</h2>
    
  <ul class="term-queue-links"><li class="0 first"><a href="/person/amy-coney-barrett">Amy Coney Barrett</a></li>
<li class="1"><a href="/social-tags/coronavirus">Coronavirus</a></li>
<li class="2"><a href="/social-tags/relief-bill">relief bill</a></li>
<li class="3"><a href="/person/donald-trump">Donald Trump</a></li>
<li class="4 last"><a href="/person/joe-biden">Joe Biden</a></li>
</ul>
</div>
<div id="block-block-69" class="block block-block last even">

      
  <style>
#block-block-69 {display: inline-block;}
</style>
<div id="block-term-queue-160" class="block block-term-queue first odd">
<h2 class="block__title block-title">SPONSORED:</h2>
    <ul class="term-queue-links"><li class="0 first last"><a href="https://sponsored.thehill.com/globallenses-uae/p/1?utm_source=thehill&utm_medium=featured_tag&utm_campaign=sponsored">Global Lenses UAE</a></li>
</ul>
</div>

</div>
  </div>
      <div class="region region-top-page">
    <div id="block-dfp-leaderboard" class="block block-dfp first last odd">

      
  <div id="dfp-ad-leaderboard-wrapper" class="dfp-tag-wrapper"><!-- dfp_tag.tpl.php -->
<a href="#" class="hide_overlay"></a>
<div  id="dfp-ad-leaderboard" class="dfp-inner">
  <script type="text/javascript">
    googletag.cmd.push(function() {
      googletag.display("dfp-ad-leaderboard");
    });
  </script>
</div>

</div>
</div>
  </div>
        <div class="content-item">
              <div class="left-sidebar">
        <a href="/" title="TheHill" rel="home" alt="TheHill.com">
          <img class="logo" alt="TheHill.com" src="/sites/all/themes/thehill/images/redesign/thehill-logo-big.png" />
        </a>
      </div>
      <div class="content-wrapper title">
                          <h1 class="title" id="page-title">White House security official reported to be gravely ill with COVID-19</h1>
                <div class="submitted-wrp">
    <span class="submitted-by">
    By <a href="/author/aris-folley" title="All articles by Aris Folley">Aris Folley</a> - <span class="submitted-date">10/07/20 09:07 PM EDT</span>
  </span>
  <a href="/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid#bottom-story-socials" class="disqus-comments" data-disqus-identifier="node/520116"></a>  </div>
      </div>
      <div class="content-wrapper social">
        <div class="blogs-social-wrp">
  <span  data-behavior="social-share-count" data-href="https://thehill.com/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid" class="social-share-count social-share-count-520116" data-nid="520116" ></span>
  <div class="addthis_inline_share_toolbox_ru82"></div>
<div class="share-additional">
  <div class="share-linkedin">
    <script>
      ;(function(){
        var linkedinScriptEl = document.querySelector('script[src="//platform.linkedin.com/in.js"]');
        if (linkedinScriptEl == null) {
          var shareLinkedinEl = document.querySelector('.share-linkedin');
          var scriptEl = document.createElement('script');
          scriptEl.src = "//platform.linkedin.com/in.js";
          scriptEl.async = true;
          scriptEl.innerHTML = " lang: en_US";
          shareLinkedinEl.appendChild(scriptEl);
        }
      })();
    </script>
    <script type="IN/Share"></script>
  </div>
</div>
<div class="share">
  <a href="mailto:?subject=TheHill.com%3A%20White%20House%20security%20official%20reported%20to%20be%20gravely%20ill%20with%20COVID-19&amp;body=From%20TheHill.com%3A%20%0A%0A%0A%0Ahttps%3A//thehill.com/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid" class="email">&nbsp</a>  </div>
</div>
              </div>
      <div class="left-sidebar-2">
          <div class="region region-column-left">
    <div id="block-views-articles-articles-just-in" class="block block-views first odd">

      
  <div id="block-views-articles-articles_just_in-ajax-content" class="ajaxblocks-wrapper"></div>
</div>
<div id="block-block-50" class="block block-block even">

      
  <div style="width:215px; height:200px; padding:0; margin:0;"></div>
</div>
<div id="block-thehill-blocks-taboola-right-rail" class="block block-thehill-blocks odd">

      
  <div id="taboola-right-rail-520116" class="taboola-right-rail" data-behavior="taboolarightrail"></div>
</div>
<div id="block-block-52" class="block block-block last even">

      
  <!-- Outbrain: Desktop Left Column -->
<div class="OUTBRAIN" data-src="https://thehill.com/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid" data-widget-id="SB_1" data-ob-template="The Hill"></div> 
</div>
  </div>
        <div class="left-sidebar-space">&nbsp;</div>
              </div>
      <div class="content-wrapper">
            <div id="content" class="column">
                                                  


<article class="node-520116 node node-article view-mode-full clearfix" about="/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid" typeof="sioc:Item foaf:Document">
    <header>
    <span property="dc:title" content="White House security official reported to be gravely ill with COVID-19" class="rdf-meta element-hidden"></span>      </header>
      <div class="content-with-sidebar-wrp">
    <div class="content-wrp">
      <div class="player-container" style="position:relative;">
  <div class="player-position">
    <a href="#" class="close-btn"></a>
    <div id="520116-player"></div>
    <div id="jwplayer-unmute-button">
      <div class="hilltv-video-unmute-icon">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 240 240" focusable="false"><path d="M116.4,42.8v154.5c0,2.8-1.7,3.6-3.8,1.7l-54.1-48.1H28.9c-2.8,0-5.2-2.3-5.2-5.2V94.2c0-2.8,2.3-5.2,5.2-5.2h29.6l54.1-48.1C114.6,39.1,116.4,39.9,116.4,42.8z M212.3,96.4l-14.6-14.6l-23.6,23.6l-23.6-23.6l-14.6,14.6l23.6,23.6l-23.6,23.6l14.6,14.6l23.6-23.6l23.6,23.6l14.6-14.6L188.7,120L212.3,96.4z"></path></svg>
      </div>
    </div>
  </div>
</div>
<div class="field field-name-body field-type-text-with-summary field-label-hidden"><div class="field-items"><div class="field-item even" property="content:encoded"><p>A White House security official is reportedly “gravely ill” after contracting COVID-19 in September, <a href="https://www.bloomberg.com/news/articles/2020-10-07/white-house-security-official-contracted-covid-19-in-september">Bloomberg reports</a>.</p><p>The publication identified the official as Crede Bailey, who heads the White House’s security office. He has reportedly been receiving hospital care since September.</p><p>The Hill has reached out to the White House for comment.</p><div id="dfp-ad-incontent_desk_1-wrapper" class="dfp-tag-wrapper wrapper"><div id="dfp-ad-incontent_desk_1" class="dfp-tag-wrapper"><span>ADVERTISEMENT</span><script type="text/javascript">googletag.cmd.push(function() {googletag.display("dfp-ad-incontent_desk_1");});</script></div></div><p>According to Bloomberg, which cited four sources familiar with official’s condition, Bailey grew sick before the Rose Garden event held on Sept. 26, in which <span class="rollover-people" data-behavior="rolloverpeople"><a class="rollover-people-link" data-nid="261287" href="/people/donald-trump">President Trump</a><span class="rollover-people-block" id="rollover-people-261287"><span class="rollover-block"><span><img typeof="foaf:Image" src="/sites/default/files/styles/thumb_100/public/trumpdonald_070117getty.jpg?itok=YIP2hsPW" width="100" height="100" alt="" /><a class="name" href="/people/donald-trump">Donald John Trump</a><a class="people-articles" href="/homenews/administration/520937-labor-secretarys-wife-tests-positive-for-covid-19">Labor secretary's wife tests positive for COVID-19</a> <a class="people-articles" href="/policy/international/russia/520935-russia-shuts-down-trump-admins-last-minute-push-to-strike-nuclear">Russia shuts down Trump admin's last-minute push to strike nuclear arms deal before election</a> <a class="people-articles" href="/homenews/campaign/520932-trump-makes-appeal-to-suburban-women-at-rally-will-you-please-like-me">Trump makes appeal to suburban women at rally: 'Will you please like me?'</a> <a class="more" href="/people/donald-trump">MORE<span></span></a></span></span></span></span> nominated Judge Amy Coney Barrett to the Supreme Court.</p><p>Since that event, more than 10 attendees — including the president, first lady <span class="rollover-people" data-behavior="rolloverpeople"><a class="rollover-people-link" data-nid="364301" href="/people/melania-trump">Melania Trump</a><span class="rollover-people-block" id="rollover-people-364301"><span class="rollover-block"><span><img typeof="foaf:Image" src="/sites/default/files/styles/thumb_100/public/trumpmelania_110317gn_lead.jpg?itok=Eujw3BAc" width="100" height="100" alt="" /><a class="name" href="/people/melania-trump">Melania Trump</a><a class="people-articles" href="/homenews/administration/520864-doj-accuses-ex-melania-trump-aide-of-violating-nondisclosure">DOJ accuses ex-Melania Trump aide of violating nondisclosure agreement</a> <a class="people-articles" href="/blogs/in-the-know/in-the-know/520827-white-house-halloween-event-to-be-modified-to-meet-cdc">White House Halloween to be 'modified' to meet CDC guidelines: report</a> <a class="people-articles" href="/homenews/senate/520757-second-gop-senator-attends-barrett-hearings-in-person-after-covid-19">Second GOP senator attends Barrett hearings in person after COVID-19 diagnosis</a> <a class="more" href="/people/melania-trump">MORE<span></span></a></span></span></span></span> and adviser <span class="rollover-people" data-behavior="rolloverpeople"><a class="rollover-people-link" data-nid="364886" href="/people/kellyanne-conwaya">Kellyanne Conway</a><span class="rollover-people-block" id="rollover-people-364886"><span class="rollover-block"><span><img typeof="foaf:Image" src="/sites/default/files/styles/thumb_100/public/conwaykellyanne_101317gn4_lead.jpg?itok=gq5GhHTD" width="100" height="100" alt="" /><a class="name" href="/people/kellyanne-conwaya">Kellyanne Elizabeth Conway</a><a class="people-articles" href="/homenews/state-watch/520874-billboard-warns-trumps-iowa-rally-will-be-superspreader-event">Billboard warns Trump's Iowa rally will be 'superspreader event'</a> <a class="people-articles" href="/blogs/in-the-know/in-the-know/520827-white-house-halloween-event-to-be-modified-to-meet-cdc">White House Halloween to be 'modified' to meet CDC guidelines: report</a> <a class="people-articles" href="/policy/healthcare/520801-minnesota-health-officials-connect-covid-19-cases-to-trump-biden-campaign">Minnesota health officials connect COVID-19 cases to Trump, Biden campaign events</a> <a class="more" href="/people/kellyanne-conwaya">MORE<span></span></a></span></span></span></span> — have tested positive for the disease. However, the White House is not contact tracing attendees of the event, according to a report from The New York Times, which cited an unnamed White House official for its coverage <a href="https://thehill.com/homenews/administration/519725-white-house-is-not-contact-tracing-rose-garden-event-considered-to-be">earlier this week</a>.</p><div class="incontent-plugin incontent-plugin-520116"></div><p>The Trump administration has been coming under increased scrutiny in recent days for its protocols to counter the spread of the coronavirus as the number cases of White House staff contracting the illness continue to climb.</p><p>White House senior adviser <span class="rollover-people" data-behavior="rolloverpeople"><a class="rollover-people-link" data-nid="440466" href="/people/stephen-miller">Stephen Miller</a><span class="rollover-people-block" id="rollover-people-440466"><span class="rollover-block"><span><img typeof="foaf:Image" src="/sites/default/files/styles/thumb_100/public/millerstephen_gettyimages-825654502.jpg?itok=oGua27lt" width="100" height="100" alt="" /><a class="name" href="/people/stephen-miller">Stephen Miller</a><a class="people-articles" href="/homenews/news/520468-christie-released-from-the-hospital-after-covid-19-diagnosis">Christie released from the hospital after COVID-19 diagnosis</a> <a class="people-articles" href="/policy/healthcare/520409-fauci-we-had-a-superspreader-event-in-the-white-house">Fauci: 'We had a superspreader event in the White House'</a> <a class="people-articles" href="/homenews/news/520371-hillary-clinton-says-trumps-covid-19-not-comparable-to-her-2016-pneumonia">Clinton says Trump's COVID-19 not 'comparable' to her 2016 pneumonia</a> <a class="more" href="/people/stephen-miller">MORE<span></span></a></span></span></span></span> became one of the president’s latest aides to test positive for COVID-19 <a href="https://thehill.com/homenews/administration/519897-stephen-miller-tests-positive-for-coronavirus-reports">this week</a>. White House press secretary Kayleigh McEnany has also contracted the illness, in addition to several others in the White House press department. </p><p>White House adviser <span class="rollover-people" data-behavior="rolloverpeople"><a class="rollover-people-link" data-nid="365112" href="/people/hope-hicks">Hope Hicks</a><span class="rollover-people-block" id="rollover-people-365112"><span class="rollover-block"><span><img typeof="foaf:Image" src="/sites/default/files/styles/thumb_100/public/hickshope08162017getty.jpg?itok=qCB8Z0uE" width="100" height="100" alt="" /><a class="name" href="/people/hope-hicks">Hope Charlotte Hicks</a><a class="people-articles" href="/policy/defense/520438-trump-slight-against-gold-star-families-adds-to-military-woes">Trump slight against Gold Star families adds to military woes</a> <a class="people-articles" href="/opinion/white-house/520493-trump-should-try-a-little-empathy">Trump should try a little empathy</a> <a class="people-articles" href="/homenews/campaign/520471-trump-jr-returning-to-campaign-trail-after-quarantining">Trump Jr. returning to campaign trail after quarantining</a> <a class="more" href="/people/hope-hicks">MORE<span></span></a></span></span></span></span> <a href="https://thehill.com/homenews/administration/519265-trump-aide-hope-hicks-tests-positive-for-covid-19">was also confirmed</a> to have positive for COVID-19 on Thursday, shortly before it was discovered the president and the first lady had also been diagnosed with the disease.</p></div></div></div>              <div class="article-tags">
          <span>Tags</span> <a href="/person/donald-trump" title="Donald Trump">Donald Trump</a> <a href="/person/kellyanne-conway" title="Kellyanne Conway">Kellyanne Conway</a> <a href="/person/stephen-miller" title="Stephen Miller">Stephen Miller</a> <a href="/person/melania-trump" title="Melania Trump">Melania Trump</a> <a href="/person/hope-hicks" title="Hope Hicks">Hope Hicks</a> <a href="/social-tags/coronavirus" title="Coronavirus">Coronavirus</a>        </div>
            <div id="bottom-story-socials" class="blogs-social-wrp">
        <div class="addthis_inline_share_toolbox_ru82"></div>
<div class="share-additional">
  <div class="share-linkedin">
    <script>
      ;(function(){
        var linkedinScriptEl = document.querySelector('script[src="//platform.linkedin.com/in.js"]');
        if (linkedinScriptEl == null) {
          var shareLinkedinEl = document.querySelector('.share-linkedin');
          var scriptEl = document.createElement('script');
          scriptEl.src = "//platform.linkedin.com/in.js";
          scriptEl.async = true;
          scriptEl.innerHTML = " lang: en_US";
          shareLinkedinEl.appendChild(scriptEl);
        }
      })();
    </script>
    <script type="IN/Share"></script>
  </div>
</div>
<div class="share">
  <a href="mailto:?subject=TheHill.com%3A%20White%20House%20security%20official%20reported%20to%20be%20gravely%20ill%20with%20COVID-19&amp;body=From%20TheHill.com%3A%20%0A%0A%0A%0Ahttps%3A//thehill.com/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid" class="email">&nbsp</a>  </div>
      </div>
    </div>
  </div>
    </article>
            <div class="region region-content-bottom">
    <div id="block-disqus-disqus-comments-520116" class="block block-disqus first odd">

      
  <div id="disqus_thread"><noscript><p><a href="http://thehill-v4.disqus.com/?url=https%3A%2F%2Fthehill.com%2Fhomenews%2Fadministration%2F520116-white-house-security-official-reported-to-be-gravely-ill-with-covid">View the discussion thread.</a></p></noscript></div>
</div>
<div id="block-thehill-blocks-yappa-video-comments" class="block block-thehill-blocks even">

      
  <div class="mbm phs">
  <div id="yappa-comments-frame"></div>
  <script type="text/javascript">
    jQuery(document).ready(function() {
      if (!jQuery("#page .scrolling-content-item").length) {
        let btn_disqus = jQuery('#show-disqus-comments');
        if (!btn_disqus.length) {
          btn_disqus = jQuery('.load-comments-disqus');
          btn_disqus.off('click').on('click', function(e) {
            e.preventDefault();
            const mobile_block_disqus = jQuery('#block-disqus-disqus-comments');
            const yappa_iframe = jQuery('.yappa-comments-iframe-instance');
            if (mobile_block_disqus.is(":visible")) {
              mobile_block_disqus.fadeOut();
              btn_disqus.html('Load Text Comments');
            } else {
              mobile_block_disqus.fadeIn();
              btn_disqus.html('Hide Text Comments');
            }
            btn_disqus.show();
            if (yappa_iframe.length && yappa_iframe.is(":visible")) {
              yappa_iframe.fadeOut();
              btn_yappa.html('Load Video Comments');
            }
            return false;
          });
        }
        if (btn_disqus.length) {
          btn_disqus.wrap( "<div class='show-comments-btns'></div>" );
          jQuery('.show-comments-btns').css('display', 'flex');
          btn_disqus.after('<div id="show-yappa-comments" class="show-comments button default">Load Video Comments<span></span></div>');
        } else {
          const place_yappa = jQuery('#yappa-comments-frame');
          if (place_yappa.length) {
            place_yappa.prepend('<div id="show-yappa-comments" class="button default">Load Video Comments<span></span></div>');
          }
        }
        const btn_yappa = jQuery('#show-yappa-comments');
        btn_yappa.css('margin-left', '10px');
        if (btn_yappa.length) {
          btn_yappa.click(function () {
            const block_disqus = jQuery('.block.block-disqus');
            if (block_disqus.is(":visible")) {
              block_disqus.fadeOut();
              btn_disqus.show();
              btn_disqus.html('Load Text Comments');
            }
            const yappa_iframe = jQuery('.yappa-comments-iframe-instance');
            if (yappa_iframe.length) {
              if (yappa_iframe.is(":visible")) {
                yappa_iframe.fadeOut();
                btn_yappa.html('Load Video Comments');
              } else {
                yappa_iframe.fadeIn();
                btn_yappa.html('Hide Video Comments');
              }
            } else {
              btn_yappa.html('Hide Video Comments');
              (function() {
                let yappa = document.createElement('script');
                yappa.type = 'text/javascript';
                yappa.async = true;
                yappa.src = 'https://comments.yappaapp.com/embed/yappa-comments.js';
                let frame = document.getElementById('yappa-comments-frame');
                frame.parentNode.insertBefore(yappa, frame);
              })();
            }
          });
        }
      }
    });
  </script>
</div>

</div>
<div id="block-block-51" class="block block-block last odd">

      
  <!-- Outbrain Desktop Footer -->
<div class="OUTBRAIN" data-src="https://thehill.com/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid" data-widget-id="AR_1" data-ob-template="The Hill"></div> 
</div>
  </div>
        </div>
                  <aside class="sidebars">
                          <section class="region region-sidebar-second column sidebar">
    <div id="block-dfp-rightrail-top" class="block block-dfp first odd">

      
  <div id="dfp-ad-rightrail_top-wrapper" class="dfp-tag-wrapper"><!-- dfp_tag.tpl.php -->
<a href="#" class="hide_overlay"></a>
<div  id="dfp-ad-rightrail_top" class="dfp-inner">
  <script type="text/javascript">
    googletag.cmd.push(function() {
      googletag.display("dfp-ad-rightrail_top");
    });
  </script>
</div>

</div>
</div>
<div id="block-mostpopular-1" class="block block-mostpopular even">

        <h2 class="block__title block-title">Most Popular</h2>
    
  <div id="block-mostpopular-1-ajax-content" class="ajaxblocks-wrapper"></div>
</div>
<div id="block-dfp-rightrail-bottom" class="block block-dfp odd">

      
  <div id="dfp-ad-rightrail_bottom-wrapper" class="dfp-tag-wrapper"><!-- dfp_tag.tpl.php -->
<a href="#" class="hide_overlay"></a>
<div  id="dfp-ad-rightrail_bottom" class="dfp-inner">
  <script type="text/javascript">
    googletag.cmd.push(function() {
      googletag.display("dfp-ad-rightrail_bottom");
    });
  </script>
</div>

</div>
</div>
<div id="block-views-hill-tv-block-video-widget" class="block block-views even">

        <h2 class="block__title block-title">Video</h2>
    
    <div class="view view-hill-tv view-id-hill_tv view-display-id-block_video_widget hill-tv-video-widget view-dom-id-a46c48228eb1e2da1e41476fd6132100">
                            <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first">
      
  <div class="views-field views-field-field-image">        <div class="field-content"><a href="/hilltv/rising/520831-richie-mcginniss"><img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/leading_video/public/antifa_protesters_08052018_1.jpg?itok=ipPtRbKZ" width="306" height="171" /></a></div>  </div>  
  <div class="views-field views-field-title">        <span class="field-content"><a href="/hilltv/rising/520831-richie-mcginniss">Daily Caller Video Chief discusses deadly shooting at Denver protest</a></span>  </div>  
  <div class="views-field views-field-field-article-categories">        <div class="field-content">Rising</div>  </div>  
  <div class="views-field views-field-field-vertical-article-category">        <div class="field-content"></div>  </div>  </div>
  <div class="views-row views-row-2 views-row-even">
      
  <div class="views-field views-field-field-image">        <div class="field-content"><a href="/changing-america/well-being/prevention-cures/481888-you-have-no-excuse-to-skip-the-gym-when-its-next-to"><img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/leading_video/public/ca_workgym_nodateistock.jpg?itok=KTnR0Wdi" width="306" height="171" /></a></div>  </div>  
  <div class="views-field views-field-title">        <span class="field-content"><a href="/changing-america/well-being/prevention-cures/481888-you-have-no-excuse-to-skip-the-gym-when-its-next-to">You have no excuse to skip the gym...when it&#039;s right next to your desk</a></span>  </div>  
  <div class="views-field views-field-field-article-categories">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-field-vertical-article-category">        <div class="field-content">Changing America</div>  </div>  </div>
  <div class="views-row views-row-3 views-row-odd">
      
  <div class="views-field views-field-field-image">        <div class="field-content"><a href="/hilltv/rising/520809-intercepts-dc-bureau-chief-democrats-attention-to-affordable-care-act-in"><img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/leading_video/public/barrettamyconey_101220gn5_lead.jpg?itok=nV9iLMPq" width="306" height="171" /></a></div>  </div>  
  <div class="views-field views-field-title">        <span class="field-content"><a href="/hilltv/rising/520809-intercepts-dc-bureau-chief-democrats-attention-to-affordable-care-act-in">Intercept Chief: Democrats&#039; attention to Affordable Care Act in Barrett hearings part of larger election strategy</a></span>  </div>  
  <div class="views-field views-field-field-article-categories">        <div class="field-content">Rising</div>  </div>  
  <div class="views-field views-field-field-vertical-article-category">        <div class="field-content"></div>  </div>  </div>
  <div class="views-row views-row-4 views-row-even views-row-last">
      
  <div class="views-field views-field-field-image">        <div class="field-content"><a href="/changing-america/respect/poverty/480339-have-you-heard-the-joke-about-college-kids-living-on-ramen"><img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/leading_video/public/ca_starvingstudent_nodateistock.png?itok=9JczkxMN" width="306" height="171" /></a></div>  </div>  
  <div class="views-field views-field-title">        <span class="field-content"><a href="/changing-america/respect/poverty/480339-have-you-heard-the-joke-about-college-kids-living-on-ramen">1 in 3 college students faces food insecurity</a></span>  </div>  
  <div class="views-field views-field-field-article-categories">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-field-vertical-article-category">        <div class="field-content">Changing America</div>  </div>  </div>
    </div>
                  </div>

</div>
<div id="block-block-3" class="block block-block last odd">

        <h2 class="block__title block-title">More From The Web</h2>
    
  <!-- Newmax -->
<p style="font-family:Arial;color:#666666;font-size:11px;text-align:right;margin-bottom:-10px;">Sponsored</p>
<div style="margin-bottom:20px;">
<div id="widget1"
                 data-widget-placement
                 data-widget-host="habitat"
                 data-endpoint="trends.newsmaxwidget.com"
                 data-widget-id="167908"
        ></div>
<script src="https://assets.newsmaxwidget.com/master/delivery.js" defer="defer"></script>
</div>
<!-- End Newsmax -->
</div>
  </section>
          </aside>
              </div>          </div> <!-- cs-end -->
  </div>
            <div class="page-bottom">
      <div class="region region-footer-bottom">
    <div id="block-thehill-blocks-footer-signup" class="block block-thehill-blocks first last odd">

      
  <div class="simple-signup-form">
  <div class="text">Don't miss a brief. <span>Sign up for our daily email.</span></div>
  <form action="/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid" method="post" id="thehill-blocks-signup-form" accept-charset="UTF-8"><div><div class="form-item form-type-textfield form-item-email">
  <label for="edit-email">Your Email </label>
 <input placeholder="" type="text" id="edit-email" name="email" value="" size="60" maxlength="128" class="form-text" />
</div>
<div class="form-item form-type-textfield form-item-list">
 <input class="hidden form-text" type="text" id="edit-list" name="list" value="" size="60" maxlength="128" />
</div>
<input type="submit" id="edit-submit--2" name="op" value="Submit" class="form-submit" /><input type="hidden" name="form_build_id" value="form-DVkstEzaxbdLF1KMri6PlkcLIWCCWVREYrr86ESs3Zw" />
<input type="hidden" name="form_id" value="thehill_blocks_signup_form" />
</div></form></div>


</div>
  </div>
    <a href="/" title="TheHill" rel="home" alt="TheHill.com">
      <img class="logo" alt="TheHill.com" src="/sites/all/themes/thehill/images/redesign/thehill-logo-footer.png" />
    </a>
      <div class="region region-bottom-column1">
    <div id="block-menu-menu-home" class="block block-menu first odd" role="navigation">

        <h2 class="block__title block-title">News</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/homenews/senate" class="menu__link menu__link">Senate</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/house" class="menu__link menu__link">House</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/campaign" class="menu__link menu__link">Campaign</a></li>
<li class="menu__item is-active-trail is-leaf menu__item is-active-trail is-leaf leaf active-trail depth-1"><a href="/homenews/administration" class="menu__link is-active-trail menu__link is-active-trail active-trail">Administration</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/regulation" class="menu__link menu__link">Regulation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/media" class="menu__link menu__link">Media</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/blogs/blog-briefing-room" class="menu__link menu__link">Briefing Room</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/latino" class="menu__link menu__link">Latino</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/1230-report" class="menu__link menu__link">12:30 Report</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/coronavirus-report" class="menu__link menu__link">Coronavirus Report</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/blogs/floor-action" class="menu__link menu__link">Floor Action</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/blogs/in-the-know" class="menu__link menu__link">In The Know</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/sunday-talk-shows" class="menu__link menu__link">Sunday Talk Shows</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/" class="menu__link menu__link">More</a></li>
</ul>
</div>
<div id="block-menu-menu-policy-menu" class="block block-menu even" role="navigation">

        <h2 class="block__title block-title">Policy</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/policy/defense" class="menu__link menu__link">Defense</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/energy-environment" class="menu__link menu__link">Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/finance" class="menu__link menu__link">Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/healthcare" class="menu__link menu__link">Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/technology" class="menu__link menu__link">Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/international" class="menu__link menu__link">International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/transportation" class="menu__link menu__link">Transportation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/cybersecurity" class="menu__link menu__link">Cybersecurity</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/national-security" class="menu__link menu__link">National Security</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/policy" class="menu__link menu__link">More</a></li>
</ul>
</div>
<div id="block-menu-menu-video" class="block block-menu odd" role="navigation">

        <h2 class="block__title block-title">Video</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/video/in-the-news" class="menu__link menu__link">Latest</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/defense" class="menu__link menu__link">Defense</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/energy-environment" class="menu__link menu__link">Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/finance" class="menu__link menu__link">Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/healthcare" class="menu__link menu__link">Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/technology" class="menu__link menu__link">Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/transportation" class="menu__link menu__link">Transportation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/international" class="menu__link menu__link">International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/cybersecurity" class="menu__link menu__link">Cybersecurity</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/national-security" class="menu__link menu__link">National Security</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/sunday-shows" class="menu__link menu__link">Sunday Shows</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/events" class="menu__link menu__link">Events</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/hill-tube" class="menu__link menu__link">More</a></li>
</ul>
</div>
<div id="block-menu-menu-opinion" class="block block-menu last even" role="navigation">

        <h2 class="block__title block-title">Opinion</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/opinion/columnists/brent-budowsky" class="menu__link menu__link">Brent Budowsky</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/columnists" class="menu__link menu__link">Columnists</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/blogs/congress-blog" class="menu__link menu__link">Congress Blog</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/blogs/pundits-blog" class="menu__link menu__link">Contributors</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/opinion" class="menu__link menu__link">More</a></li>
</ul>
</div>
  </div>
      <div class="region region-bottom-column2">
    <div id="block-menu-menu-anchor-menu" class="block block-menu first odd" role="navigation">

        <h2 class="block__title block-title">TheHill.com</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/privacy-policy" class="menu__link menu__link">Privacy Policy</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/terms-and-conditions" class="menu__link menu__link">Terms &amp; Conditions</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/contact" class="menu__link menu__link">Contact</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/contact/subscriptions" class="menu__link menu__link">Subscriptions</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/contact/advertise" class="menu__link menu__link">Advertise</a></li>
</ul>
</div>
<div id="block-menu-menu-resources" class="block block-menu even" role="navigation">

        <h2 class="block__title block-title">Resources</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/hill-apps" class="menu__link menu__link">The Hill Apps</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/people/" class="menu__link menu__link">People</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/resources/rss-feeds" class="menu__link menu__link">RSS</a></li>
</ul>
</div>
<div id="block-menu-menu-menu-contributors" class="block block-menu odd" role="navigation">

        <h2 class="block__title block-title">Contributors</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first last leaf depth-1"><a href="/contributor-application-form" class="menu__link menu__link">Become a Contributor</a></li>
</ul>
</div>
<div id="block-menu-menu-contact-us" class="block block-menu last even" role="navigation">

        <h2 class="block__title block-title">Other Areas</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/special-reports/special-reports" class="menu__link menu__link">Special Reports</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/galleries" class="menu__link menu__link">Galleries</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/classifieds" class="menu__link menu__link">Classifieds</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/resources/classifieds/employer" class="menu__link menu__link">Jobs</a></li>
</ul>
</div>
  </div>
    <div class="clearer"></div>
    <div class="copyright-wrp">
        <div class="region region-copyright">
    <div id="block-thehill-blocks-copyright" class="block block-thehill-blocks first odd">

      
  <p>The Hill 1625 K Street, NW Suite 900 Washington DC 20006 | 202-628-8500 tel | 202-628-8503 fax</p><p>The contents of this site are &copy;2020 Capitol Hill Publishing Corp., a subsidiary of News Communications, Inc.</p>
</div>
<div id="block-dfp-new-1x1-asynch" class="block block-dfp even">

      
  <div id="dfp-ad-new_1x1_asynch-wrapper" class="dfp-tag-wrapper"><!-- dfp_tag.tpl.php -->
<a href="#" class="hide_overlay"></a>
<div  id="dfp-ad-new_1x1_asynch" class="dfp-inner">
  <script type="text/javascript">
    googletag.cmd.push(function() {
      googletag.display("dfp-ad-new_1x1_asynch");
    });
  </script>
</div>

</div>
</div>
<div id="block-dfp-1x1-oop" class="block block-dfp odd">

      
  <div id="dfp-ad-1x1_oop-wrapper" class="dfp-tag-wrapper"><!-- dfp_tag.tpl.php -->
<a href="#" class="hide_overlay"></a>
<div  id="dfp-ad-1x1_oop" class="dfp-inner">
  <script type="text/javascript">
    googletag.cmd.push(function() {
      googletag.display("dfp-ad-1x1_oop");
    });
  </script>
</div>
  <div id="dfp-ad-1x1_oop-oop" class="dfp-tag-wrapper">
    <script type="text/javascript">
      googletag.cmd.push(function() {
        googletag.display("dfp-ad-1x1_oop-oop");
      });
    </script>
  </div>

</div>
</div>
<div id="block-block-70" class="block block-block last even">

      
  <style>
 #do-not-sell-button {
padding-top: 15px;margin-left: 0px; width: 100%;padding-bottom: 15px;
}
@media only screen and (min-width:768px) {
 #do-not-sell-button {
margin-left: -150px;
}	
}
</style>
<div id="do-not-sell-button"></div>
    
   
</div>
  </div>
    </div>
  </div>
</div>
  <div id="dfp-ad-overlay">
    <div id="block-dfp-1x1-desktop-wowyow" class="block block-dfp first last odd">

      
  <div id="dfp-ad-1x1_desktop_wowyow-wrapper" class="dfp-tag-wrapper"><!-- dfp_tag.tpl.php -->
<a href="#" class="hide_overlay"></a>
<div  id="dfp-ad-1x1_desktop_wowyow" class="dfp-inner">
  <script type="text/javascript">
    googletag.cmd.push(function() {
      googletag.display("dfp-ad-1x1_desktop_wowyow");
    });
  </script>
</div>

</div>
</div>
  </div>
    <div class="region region-page-bottom">
    <script type="text/javascript">
  var _sf_async_config=Drupal.settings.chartbeat;
  _sf_async_config.sections = "News, News - Administration";
  _sf_async_config.authors = "Aris Folley";
  _sf_async_config._demo = "publish_date=2020-10-07,editor=Aris Folley";
  (function(){
    function loadChartbeat() {
      window._sf_endpt=(new Date()).getTime();
      var e = document.createElement('script');
      e.setAttribute('language', 'javascript');
      e.setAttribute('type', 'text/javascript');
      e.setAttribute('src', '//static.chartbeat.com/js/chartbeat.js');
      document.body.appendChild(e);
    }
    var oldonload = document.ready;
    document.ready = (typeof document.ready != 'function') ?
       loadChartbeat : function() { oldonload(); loadChartbeat(); };
  })();
</script><!-- Begin comScore Tag -->
          <script>
            var _comscore = _comscore || [];
            _comscore.push({"c1":"2","c2":"10314615","c3":"","c4":"https:\/\/thehill.com\/homenews\/administration\/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid","c5":"","c6":"","c15":""});
            (function() {
              var s = document.createElement("script"), el = document.getElementsByTagName("script")[0]; s.async = true;
              s.src = (document.location.protocol == "https:" ? "https://sb" : "http://b") + ".scorecardresearch.com/beacon.js";
              el.parentNode.insertBefore(s, el);
            })();
          </script>
          <noscript>
            <img src="https://sb.scorecardresearch.com/p?c1=2&c2=10314615&c3=&c4=https%3A//thehill.com/homenews/administration/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid&c5=&c6=&c15=&cv=2.0&cj=1" />
          </noscript>
      <!-- End comScore Tag --><script type="text/javascript" async="async" src="//widgets.outbrain.com/outbrain.js"></script><!--START Lightbox Javascript-->
<script type="text/javascript">
    /*<![CDATA[*/ window.lightboxjs || function (c) { function g(b, d) { d && (d += (/\?/.test(d) ? "&" : "?") + "lv=1"); c[b] || function () { var i = window, h = document, j = b, g = h.location.protocol, l = "load", k = 0; (function () { function b() { a.P(l); a.w = 1; c[j]("_load") } c[j] = function () { function m() { m.id = e; return c[j].apply(m, arguments) } var b, e = ++k; b = this && this != i ? this.id || 0 : 0; (a.s = a.s || []).push([e, b, arguments]); m.then = function (b, c, h) { var d = a.fh[e] = a.fh[e] || [], j = a.eh[e] = a.eh[e] || [], f = a.ph[e] = a.ph[e] || []; b && d.push(b); c && j.push(c); h && f.push(h); return m }; return m }; var a = c[j]._ = {}; a.fh = {}; a.eh = {}; a.ph = {}; a.l = d ? d.replace(/^\/\//, (g == "https:" ? g : "http:") + "//") : d; a.p = { 0: +new Date }; a.P = function (b) { a.p[b] = new Date - a.p[0] }; a.w && b(); i.addEventListener ? i.addEventListener(l, b, !1) : i.attachEvent("on" + l, b); var q = function () { function b() { return ["<head></head><", c, ' onload="var d=', n, ";d.getElementsByTagName('head')[0].", d, "(d.", g, "('script')).", i, "='", a.l, "'\"></", c, ">"].join("") } var c = "body", e = h[c]; if (!e) return setTimeout(q, 100); a.P(1); var d = "appendChild", g = "createElement",
    i = "src", k = h[g]("div"), l = k[d](h[g]("div")), f = h[g]("iframe"), n = "document", p; k.style.display = "none"; e.insertBefore(k, e.firstChild).id = o + "-" + j; f.frameBorder = "0"; f.id = o + "-frame-" + j; /MSIE[ ]+6/.test(navigator.userAgent) && (f[i] = "javascript:false"); f.allowTransparency = "true"; l[d](f); try { f.contentWindow[n].open() } catch (s) { a.domain = h.domain, p = "javascript:var d=" + n + ".open();d.domain='" + h.domain + "';", f[i] = p + "void(0);" } try { var r = f.contentWindow[n]; r.write(b()); r.close() } catch (t) { f[i] = p + 'd.write("' + b().replace(/"/g, String.fromCharCode(92) + '"') + '");d.close();' } a.P(2) }; a.l && q() })() }(); c[b].lv = "1"; return c[b] } var o = "lightboxjs", k = window[o] = g(o); k.require = g; k.modules = c }({}); /*]]>*/</script><script type="text/javascript">window.lightboxlib = lightboxjs.require("lightboxlib", "//www.lightboxcdn.com/vendor/ee48a214-dcd9-4d76-af7b-dd194f9094db/lightbox.js?mb=" + (new Date().getTime()));</script>
<!--END Lightbox Javascript-->

<script>
if(typeof(ga) !== 'undefined') {
  jQuery('.hill-tv').on('click', function(e) {
    ga('send', 'event', 'HillTVTopNav', 'click', e.currentTarget.pathname);
  });

  jQuery('#main-menu img').on('click', function(e) {
    ga('send', 'event', 'HillTVTopNavShowImg', 'click', e.currentTarget.currentSrc);
  });
jQuery('document').ready(function() {
    jQuery('#block-mostpopular-1').on('click', '#thehill-mostpopular-block li a', function(e) {
      var meta = 'index-';
      try {
        meta = meta + e.currentTarget.parentElement.parentElement.previousElementSibling.innerHTML;
      } catch(error) {
        console.log(error);
      }
      ga('send', 'event', 'MostPopularItem', 'click', meta);
    });
    if(jQuery('#block-views-articles-articles-just-in').length) {
        jQuery('#block-views-articles-articles-just-in').on('click', '#block-views-articles-articles-just-in li', function(e) { 
            var justInMeta = 'index-';
            try {
                var regex = /\d+/g;
                var matches = e.currentTarget.className.match(regex); 
                justInMeta = justInMeta + matches[0];
            } catch(e) {
                console.log(e);
            }
            ga('send', 'event', 'JustInItemClick', 'click', justInMeta);
        });
    }
  });

  if(typeof(pbjs) !== "undefined" && typeof(pbjs.version) === "undefined") {
    ga('send', 'event', 'Ad Setting', 'Adblock', 'Enabled');
  }
}
</script>

<script>
if(typeof(ga) !== 'undefined') {
  jQuery('.hill-tv-video-widget a').on('click', function(e) {
    ga('send', 'event', 'HillTVVideoWidget', 'click', e.currentTarget.pathname);
  });
}
setTimeout(function() {
	 ga('send', 'event', 'AutoRefresh', 'refreshed', document.URL);
}, 2640000);
</script>  </div>
<script>  var disqus_shortname = 'thehill-v4';
  (function () {
      var s = document.createElement('script'); s.async = true;
      s.type = 'text/javascript';
      s.src = '//' + disqus_shortname + '.disqus.com/count.js';
      (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
  }());</script>
<script>    (function() {
        var initVars = {"nid":"520116","video_id":"xHqgO7Ud","playlist_id":null,"sticky_enabled":1,"hilltv_sticky_enabled":1,"moat_id":"thehilljwint238875905177","comscore_id":"10314615","share_url":"https:\/\/thehill.com\/homenews\/administration\/520116-white-house-security-official-reported-to-be-gravely-ill-with-covid","midroll_tag":"https:\/\/pubads.g.doubleclick.net\/gampad\/live\/ads?sz=640x360\u0026iu=\/1107919\/Hill_TV_640x360_comp_midroll\u0026ciu_szs=300x250\u0026impl=s\u0026gdfp_req=1\u0026env=vp\u0026output=vast\u0026unviewed_position_start=1\u0026url=[referrer_url]\u0026description_url=__page-url__\u0026correlator=[timestamp]\u0026cust_params=Ad_breaks%3D__item-tags__","bid_timout":"1500","reload_if_no_ads":0};
        if (typeof(pbjs.version) === "undefined" || typeof(videoAdUnit) !== "object") {
          initializePlayerInstance(initVars);
        } else {
          if(pbjs.adserverRequestSent) {
            initializePlayerInstance(initVars);
          } else {
            setTimeout(function(){
              initializePlayerInstance(initVars);
            }, 500);
          }
        }
    })();</script>
<script>    (function($) {
      Drupal.behaviors.taboolarightrail= {
        attach: function(context) {
          window._taboola = window._taboola || [];
          if (jQuery('div.taboola-right-rail:last').is(':empty')) {
            _taboola.push({mode:'organic-thumbnails-rr', container: jQuery('div.taboola-right-rail:last').attr('id'), placement: 'Right Rail Thumbnails', target_type: 'mix'});
          }
        }
      };
    })(jQuery);</script>
<script>    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=566538590082898&version=v2.9";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
  <div id="fb-root"></div>
  <script src="//platform.twitter.com/widgets.js"></script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"962df17ac8","applicationID":"446957440","transactionName":"YwRXYBQFWhEEUUYNV1pOdFcSDVsMSlxdAF1rEVRTAztCCwBF","queueTime":0,"applicationTime":528,"atts":"T0NUFlwfSR8=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
