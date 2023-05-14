<!DOCTYPE html>
<!--[if IEMobile 7]><html class="no-js ie iem7" lang="en" dir="ltr"><![endif]-->
<!--[if lte IE 6]><html class="no-js ie lt-ie9 lt-ie8 lt-ie7" lang="en" dir="ltr"><![endif]-->
<!--[if (IE 7)&(!IEMobile)]><html class="no-js ie lt-ie9 lt-ie8" lang="en" dir="ltr"><![endif]-->
<!--[if IE 8]><html class="no-js ie lt-ie9" lang="en" dir="ltr"><![endif]-->
<!--[if (gte IE 9)|(gt IEMobile 7)]><html class="no-js ie" lang="en" dir="ltr" prefix="og: http://ogp.me/ns# content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema# schema: http://schema.org/"><![endif]-->
<!--[if !IE]><!-->
<html class="no-js" lang="en" dir="ltr" prefix="og: http://ogp.me/ns# content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema# schema: http://schema.org/"><!--<![endif]-->
<head>
<!--[if IE]><![endif]-->
<link rel="preconnect" href="//dm1zcrsul8wju.cloudfront.net" />
<link rel="dns-prefetch" href="//dm1zcrsul8wju.cloudfront.net" />
<meta charset="utf-8" /><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"UwMDVFJWGwYHVVdQBQY=",licenseKey:"309402312b",applicationID:"5716227"};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var i=e[n]={exports:{}};t[n][0].call(i.exports,function(e){var i=t[n][1][e];return r(i||e)},i,i.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(t,e,n){function r(t){try{c.console&&console.log(t)}catch(e){}}var i,o=t("ee"),a=t(23),c={};try{i=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(c.console=!0,i.indexOf("dev")!==-1&&(c.dev=!0),i.indexOf("nr_dev")!==-1&&(c.nrDev=!0))}catch(s){}c.nrDev&&o.on("internal-error",function(t){r(t.stack)}),c.dev&&o.on("fn-err",function(t,e,n){r(n.stack)}),c.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(c,function(t,e){return t}).join(", ")))},{}],2:[function(t,e,n){function r(t,e,n,r,c){try{p?p-=1:i(c||new UncaughtException(t,e,n),!0)}catch(f){try{o("ierr",[f,s.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function i(t,e){var n=e?null:s.now();o("err",[t,n])}var o=t("handle"),a=t(24),c=t("ee"),s=t("loader"),f=t("gos"),u=window.onerror,d=!1,l="nr@seenError",p=0;s.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(9),t(8),"addEventListener"in window&&t(5),s.xhrWrappable&&t(10),d=!0)}c.on("fn-start",function(t,e,n){d&&(p+=1)}),c.on("fn-err",function(t,e,n){d&&!n[l]&&(f(n,l,function(){return!0}),this.thrown=!0,i(n))}),c.on("fn-end",function(){d&&!this.thrown&&p>0&&(p-=1)}),c.on("internal-error",function(t){o("ierr",[t,s.now(),!0])})},{}],3:[function(t,e,n){t("loader").features.ins=!0},{}],4:[function(t,e,n){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var i=t("ee"),o=t("handle"),a=t(9),c=t(8),s="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",g="pushState",y=t("loader");y.features.stn=!0,t(7),"addEventListener"in window&&t(5);var x=NREUM.o.EV;i.on(m,function(t,e){var n=t[0];n instanceof x&&(this.bstStart=y.now())}),i.on(w,function(t,e){var n=t[0];n instanceof x&&o("bst",[n,e,this.bstStart,y.now()])}),a.on(m,function(t,e,n){this.bstStart=y.now(),this.bstType=n}),a.on(w,function(t,e){o(v,[e,this.bstStart,y.now(),this.bstType])}),c.on(m,function(){this.bstStart=y.now()}),c.on(w,function(t,e){o(v,[e,this.bstStart,y.now(),"requestAnimationFrame"])}),i.on(g+p,function(t){this.time=y.now(),this.startPath=location.pathname+location.hash}),i.on(g+h,function(t){o("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+s]?window.performance[f](u,function(t){o(d,[window.performance.getEntriesByType(l)]),window.performance["c"+s]()},!1):window.performance[f]("webkit"+u,function(t){o(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+s]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,e,n){function r(t){for(var e=t;e&&!e.hasOwnProperty(u);)e=Object.getPrototypeOf(e);e&&i(e)}function i(t){c.inPlace(t,[u,d],"-",o)}function o(t,e){return t[1]}var a=t("ee").get("events"),c=t("wrap-function")(a,!0),s=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";e.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(i(window),i(f.prototype)),a.on(u+"-start",function(t,e){var n=t[1],r=s(n,"nr@wrapped",function(){function t(){if("function"==typeof n.handleEvent)return n.handleEvent.apply(n,arguments)}var e={object:t,"function":n}[typeof n];return e?c(e,"fn-",null,e.name||"anonymous"):n});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,e,n){function r(t,e,n){var r=t[e];"function"==typeof r&&(t[e]=function(){var t=o(arguments),e={};i.emit(n+"before-start",[t],e);var a;e[m]&&e[m].dt&&(a=e[m].dt);var c=r.apply(this,t);return i.emit(n+"start",[t,a],c),c.then(function(t){return i.emit(n+"end",[null,t],c),t},function(t){throw i.emit(n+"end",[t],c),t})})}var i=t("ee").get("fetch"),o=t(24),a=t(23);e.exports=i;var c=window,s="fetch-",f=s+"body-",u=["arrayBuffer","blob","json","text","formData"],d=c.Request,l=c.Response,p=c.fetch,h="prototype",m="nr@context";d&&l&&p&&(a(u,function(t,e){r(d[h],e,f),r(l[h],e,f)}),r(c,"fetch",s),i.on(s+"end",function(t,e){var n=this;if(e){var r=e.headers.get("content-length");null!==r&&(n.rxSize=r),i.emit(s+"done",[null,e],n)}else i.emit(s+"done",[t],n)}))},{}],7:[function(t,e,n){var r=t("ee").get("history"),i=t("wrap-function")(r);e.exports=r;var o=window.history&&window.history.constructor&&window.history.constructor.prototype,a=window.history;o&&o.pushState&&o.replaceState&&(a=o),i.inPlace(a,["pushState","replaceState"],"-")},{}],8:[function(t,e,n){var r=t("ee").get("raf"),i=t("wrap-function")(r),o="equestAnimationFrame";e.exports=r,i.inPlace(window,["r"+o,"mozR"+o,"webkitR"+o,"msR"+o],"raf-"),r.on("raf-start",function(t){t[0]=i(t[0],"fn-")})},{}],9:[function(t,e,n){function r(t,e,n){t[0]=a(t[0],"fn-",null,n)}function i(t,e,n){this.method=n,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,n)}var o=t("ee").get("timer"),a=t("wrap-function")(o),c="setTimeout",s="setInterval",f="clearTimeout",u="-start",d="-";e.exports=o,a.inPlace(window,[c,"setImmediate"],c+d),a.inPlace(window,[s],s+d),a.inPlace(window,[f,"clearImmediate"],f+d),o.on(s+u,r),o.on(c+u,i)},{}],10:[function(t,e,n){function r(t,e){d.inPlace(e,["onreadystatechange"],"fn-",c)}function i(){var t=this,e=u.context(t);t.readyState>3&&!e.resolved&&(e.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,g,"fn-",c)}function o(t){y.push(t),h&&(b?b.then(a):w?w(a):(E=-E,R.data=E))}function a(){for(var t=0;t<y.length;t++)r([],y[t]);y.length&&(y=[])}function c(t,e){return e}function s(t,e){for(var n in t)e[n]=t[n];return e}t(5);var f=t("ee"),u=f.get("xhr"),d=t("wrap-function")(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",g=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],y=[];e.exports=u;var x=window.XMLHttpRequest=function(t){var e=new p(t);try{u.emit("new-xhr",[e],e),e.addEventListener(v,i,!1)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}return e};if(s(p,x),x.prototype=p.prototype,d.inPlace(x.prototype,["open","send"],"-xhr-",c),u.on("send-xhr-start",function(t,e){r(t,e),o(e)}),u.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!w&&!m){var E=1,R=document.createTextNode(E);new h(a).observe(R,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],11:[function(t,e,n){function r(t){if(!c(t))return null;var e=window.NREUM;if(!e.loader_config)return null;var n=(e.loader_config.accountID||"").toString()||null,r=(e.loader_config.agentID||"").toString()||null,f=(e.loader_config.trustKey||"").toString()||null;if(!n||!r)return null;var h=p.generateSpanId(),m=p.generateTraceId(),w=Date.now(),v={spanId:h,traceId:m,timestamp:w};return(t.sameOrigin||s(t)&&l())&&(v.traceContextParentHeader=i(h,m),v.traceContextStateHeader=o(h,w,n,r,f)),(t.sameOrigin&&!u()||!t.sameOrigin&&s(t)&&d())&&(v.newrelicHeader=a(h,m,w,n,r,f)),v}function i(t,e){return"00-"+e+"-"+t+"-01"}function o(t,e,n,r,i){var o=0,a="",c=1,s="",f="";return i+"@nr="+o+"-"+c+"-"+n+"-"+r+"-"+t+"-"+a+"-"+s+"-"+f+"-"+e}function a(t,e,n,r,i,o){var a="btoa"in window&&"function"==typeof window.btoa;if(!a)return null;var c={v:[0,1],d:{ty:"Browser",ac:r,ap:i,id:t,tr:e,ti:n}};return o&&r!==o&&(c.d.tk=o),btoa(JSON.stringify(c))}function c(t){return f()&&s(t)}function s(t){var e=!1,n={};if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(n=NREUM.init.distributed_tracing),t.sameOrigin)e=!0;else if(n.allowed_origins instanceof Array)for(var r=0;r<n.allowed_origins.length;r++){var i=h(n.allowed_origins[r]);if(t.hostname===i.hostname&&t.protocol===i.protocol&&t.port===i.port){e=!0;break}}return e}function f(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.enabled}function u(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.exclude_newrelic_header}function d(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&NREUM.init.distributed_tracing.cors_use_newrelic_header!==!1}function l(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.cors_use_tracecontext_headers}var p=t(20),h=t(13);e.exports={generateTracePayload:r,shouldGenerateTrace:c}},{}],12:[function(t,e,n){function r(t){var e=this.params,n=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<l;r++)t.removeEventListener(d[r],this.listener,!1);e.aborted||(n.duration=a.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==e.status&&(e.status=0):o(this,t),n.cbTime=this.cbTime,u.emit("xhr-done",[t],t),c("xhr",[e,n,this.startTime]))}}function i(t,e){var n=s(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.parsedOrigin=s(e),t.sameOrigin=t.parsedOrigin.sameOrigin}function o(t,e){t.params.status=e.status;var n=w(e,t.lastSize);if(n&&(t.metrics.rxSize=n),t.sameOrigin){var r=e.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var a=t("loader");if(a.xhrWrappable){var c=t("handle"),s=t(13),f=t(11).generateTracePayload,u=t("ee"),d=["load","error","abort","timeout"],l=d.length,p=t("id"),h=t(17),m=t(16),w=t(14),v=window.XMLHttpRequest;a.features.xhr=!0,t(10),t(6),u.on("new-xhr",function(t){var e=this;e.totalCbs=0,e.called=0,e.cbTime=0,e.end=r,e.ended=!1,e.xhrGuids={},e.lastSize=null,e.loadCaptureCalled=!1,t.addEventListener("load",function(n){o(e,t)},!1),h&&(h>34||h<10)||window.opera||t.addEventListener("progress",function(t){e.lastSize=t.loaded},!1)}),u.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),u.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var n=f(this.parsedOrigin);if(n){var r=!1;n.newrelicHeader&&(e.setRequestHeader("newrelic",n.newrelicHeader),r=!0),n.traceContextParentHeader&&(e.setRequestHeader("traceparent",n.traceContextParentHeader),n.traceContextStateHeader&&e.setRequestHeader("tracestate",n.traceContextStateHeader),r=!0),r&&(this.dt=n)}}),u.on("send-xhr-start",function(t,e){var n=this.metrics,r=t[0],i=this;if(n&&r){var o=m(r);o&&(n.txSize=o)}this.startTime=a.now(),this.listener=function(t){try{"abort"!==t.type||i.loadCaptureCalled||(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof e.onload))&&i.end(e)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}};for(var c=0;c<l;c++)e.addEventListener(d[c],this.listener,!1)}),u.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),u.on("xhr-load-added",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),u.on("xhr-load-removed",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),u.on("addEventListener-end",function(t,e){e instanceof v&&"load"===t[0]&&u.emit("xhr-load-added",[t[1],t[2]],e)}),u.on("removeEventListener-end",function(t,e){e instanceof v&&"load"===t[0]&&u.emit("xhr-load-removed",[t[1],t[2]],e)}),u.on("fn-start",function(t,e,n){e instanceof v&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),u.on("fn-end",function(t,e){this.xhrCbStart&&u.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,e],e)}),u.on("fetch-before-start",function(t){function e(t,e){var n=!1;return e.newrelicHeader&&(t.set("newrelic",e.newrelicHeader),n=!0),e.traceContextParentHeader&&(t.set("traceparent",e.traceContextParentHeader),e.traceContextStateHeader&&t.set("tracestate",e.traceContextStateHeader),n=!0),n}var n,r=t[1]||{};"string"==typeof t[0]?n=t[0]:t[0]&&t[0].url&&(n=t[0].url),n&&(this.parsedOrigin=s(n),this.sameOrigin=this.parsedOrigin.sameOrigin);var i=f(this.parsedOrigin);if(i&&(i.newrelicHeader||i.traceContextParentHeader))if("string"==typeof t[0]){var o={};for(var a in r)o[a]=r[a];o.headers=new Headers(r.headers||{}),e(o.headers,i)&&(this.dt=i),t.length>1?t[1]=o:t.push(o)}else t[0]&&t[0].headers&&e(t[0].headers,i)&&(this.dt=i)})}},{}],13:[function(t,e,n){var r={};e.exports=function(t){if(t in r)return r[t];var e=document.createElement("a"),n=window.location,i={};e.href=t,i.port=e.port;var o=e.href.split("://");!i.port&&o[1]&&(i.port=o[1].split("/")[0].split("@").pop().split(":")[1]),i.port&&"0"!==i.port||(i.port="https"===o[0]?"443":"80"),i.hostname=e.hostname||n.hostname,i.pathname=e.pathname,i.protocol=o[0],"/"!==i.pathname.charAt(0)&&(i.pathname="/"+i.pathname);var a=!e.protocol||":"===e.protocol||e.protocol===n.protocol,c=e.hostname===document.domain&&e.port===n.port;return i.sameOrigin=a&&(!e.hostname||c),"/"===i.pathname&&(r[t]=i),i}},{}],14:[function(t,e,n){function r(t,e){var n=t.responseType;return"json"===n&&null!==e?e:"arraybuffer"===n||"blob"===n||"json"===n?i(t.response):"text"===n||""===n||void 0===n?i(t.responseText):void 0}var i=t(16);e.exports=r},{}],15:[function(t,e,n){function r(){}function i(t,e,n){return function(){return o(t,[f.now()].concat(c(arguments)),e?null:this,n),e?void 0:this}}var o=t("handle"),a=t(23),c=t(24),s=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,e){u[e]=i(l+e,!0,"api")}),u.addPageAction=i(l+"addPageAction",!0),u.setCurrentRouteName=i(l+"routeName",!0),e.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,e){var n={},r=this,i="function"==typeof e;return o(p+"tracer",[f.now(),t,n],r),function(){if(s.emit((i?"":"no-")+"fn-start",[f.now(),r,i],n),i)try{return e.apply(this,arguments)}catch(t){throw s.emit("fn-err",[arguments,this,t],n),t}finally{s.emit("fn-end",[f.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){h[e]=i(p+e)}),newrelic.noticeError=function(t,e){"string"==typeof t&&(t=new Error(t)),o("err",[t,f.now(),!1,e])}},{}],16:[function(t,e,n){e.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(e){return}}}},{}],17:[function(t,e,n){var r=0,i=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);i&&(r=+i[1]),e.exports=r},{}],18:[function(t,e,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,c=t(25);e.exports=r,e.exports.offset=a,e.exports.getLastTimestamp=i},{}],19:[function(t,e,n){function r(t,e){var n=t.getEntries();n.forEach(function(t){"first-paint"===t.name?d("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&d("timing",["fcp",Math.floor(t.startTime)])})}function i(t,e){var n=t.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(t){t.getEntries().forEach(function(t){t.hadRecentInput||d("cls",[t])})}function a(t){if(t instanceof h&&!w){var e=Math.round(t.timeStamp),n={type:t.type};e<=l.now()?n.fid=l.now()-e:e>l.offset&&e<=Date.now()?(e-=l.offset,n.fid=l.now()-e):e=l.now(),w=!0,d("timing",["fi",e,n])}}function c(t){d("pageHide",[l.now(),t])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var s,f,u,d=t("handle"),l=t("loader"),p=t(22),h=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){s=new PerformanceObserver(r);try{s.observe({entryTypes:["paint"]})}catch(m){}f=new PerformanceObserver(i);try{f.observe({entryTypes:["largest-contentful-paint"]})}catch(m){}u=new PerformanceObserver(o);try{u.observe({type:"layout-shift",buffered:!0})}catch(m){}}if("addEventListener"in document){var w=!1,v=["click","keydown","mousedown","pointerdown","touchstart"];v.forEach(function(t){document.addEventListener(t,a,!1)})}p(c)}},{}],20:[function(t,e,n){function r(){function t(){return e?15&e[n++]:16*Math.random()|0}var e=null,n=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(e=r.getRandomValues(new Uint8Array(31)));for(var i,o="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",c=0;c<o.length;c++)i=o[c],"x"===i?a+=t().toString(16):"y"===i?(i=3&t()|8,a+=i.toString(16)):a+=i;return a}function i(){return a(16)}function o(){return a(32)}function a(t){function e(){return n?15&n[r++]:16*Math.random()|0}var n=null,r=0,i=window.crypto||window.msCrypto;i&&i.getRandomValues&&Uint8Array&&(n=i.getRandomValues(new Uint8Array(31)));for(var o=[],a=0;a<t;a++)o.push(e().toString(16));return o.join("")}e.exports={generateUuid:r,generateSpanId:i,generateTraceId:o}},{}],21:[function(t,e,n){function r(t,e){if(!i)return!1;if(t!==i)return!1;if(!e)return!0;if(!o)return!1;for(var n=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,s=c.match(a);s&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(i="Safari",o=s[1])}e.exports={agent:i,version:o,match:r}},{}],22:[function(t,e,n){function r(t){function e(){t(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,e,!1)}e.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],23:[function(t,e,n){function r(t,e){var n=[],r="",o=0;for(r in t)i.call(t,r)&&(n[o]=e(r,t[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],24:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,i=n-e||0,o=Array(i<0?0:i);++r<i;)o[r]=t[e+r];return o}e.exports=r},{}],25:[function(t,e,n){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,e,n){function r(){}function i(t){function e(t){return t&&t instanceof r?t:t?s(t,c,o):o()}function n(n,r,i,o){if(!l.aborted||o){t&&t(n,r,i);for(var a=e(i),c=m(n),s=c.length,f=0;f<s;f++)c[f].apply(a,r);var d=u[y[n]];return d&&d.push([x,n,r,a]),a}}function p(t,e){g[t]=m(t).concat(e)}function h(t,e){var n=g[t];if(n)for(var r=0;r<n.length;r++)n[r]===e&&n.splice(r,1)}function m(t){return g[t]||[]}function w(t){return d[t]=d[t]||i(n)}function v(t,e){f(t,function(t,n){e=e||"feature",y[n]=e,e in u||(u[e]=[])})}var g={},y={},x={on:p,addEventListener:p,removeEventListener:h,emit:n,get:w,listeners:m,context:e,buffer:v,abort:a,aborted:!1};return x}function o(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var c="nr@context",s=t("gos"),f=t(23),u={},d={},l=e.exports=i();l.backlog=u},{}],gos:[function(t,e,n){function r(t,e,n){if(i.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return t[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){i.buffer([t],r),i.emit(t,e,n)}var i=t("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,o,function(){return i++})}var i=1,o="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!b++){var t=x.info=NREUM.info,e=l.getElementsByTagName("script")[0];if(setTimeout(f.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&e))return f.abort();s(g,function(e,n){t[e]||(t[e]=n)});var n=a();c("mark",["onload",n+x.offset],null,"api"),c("timing",["load",n]);var r=l.createElement("script");r.src="https://"+t.agent,e.parentNode.insertBefore(r,e)}}function i(){"complete"===l.readyState&&o()}function o(){c("mark",["domContent",a()+x.offset],null,"api")}var a=t(18),c=t("handle"),s=t(23),f=t("ee"),u=t(21),d=window,l=d.document,p="addEventListener",h="attachEvent",m=d.XMLHttpRequest,w=m&&m.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:m,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var v=""+location,g={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1184.min.js"},y=m&&w&&w[p]&&!/CriOS/.test(navigator.userAgent),x=e.exports={offset:a.getLastTimestamp(),now:a,origin:v,features:{},xhrWrappable:y,userAgent:u};t(15),t(19),l[p]?(l[p]("DOMContentLoaded",o,!1),d[p]("load",r,!1)):(l[h]("onreadystatechange",i),d[h]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var b=0},{}],"wrap-function":[function(t,e,n){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var i=t("ee"),o=t(24),a="nr@original",c=Object.prototype.hasOwnProperty,s=!1;e.exports=function(t,e){function n(t,e,n,i){function nrWrapper(){var r,a,c,s;try{a=this,r=o(arguments),c="function"==typeof n?n(r,a):n||{}}catch(f){l([f,"",[r,a,i],c])}u(e+"start",[r,a,i],c);try{return s=t.apply(a,r)}catch(d){throw u(e+"err",[r,a,d],c),d}finally{u(e+"end",[r,a,s],c)}}return r(t)?t:(e||(e=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,e,i,o){i||(i="");var a,c,s,f="-"===i.charAt(0);for(s=0;s<e.length;s++)c=e[s],a=t[c],r(a)||(t[c]=n(a,f?c+i:i,o,c))}function u(n,r,i){if(!s||e){var o=s;s=!0;try{t.emit(n,r,i,e)}catch(a){l([a,n,r,i])}s=o}}function d(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){l([r])}for(var i in t)c.call(t,i)&&(e[i]=t[i]);return e}function l(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=i),n.inPlace=f,n.flag=a,n}},{}]},{},["loader",2,12,4,3]);</script>
<meta http-equiv="x-dns-prefetch-control" content="on" />
<link rel="dns-prefetch" href="//dm1zcrsul8wju.cloudfront.net" />
<!--[if IE 9]>
<link rel="prefetch" href="//dm1zcrsul8wju.cloudfront.net" />
<![endif]-->
<link rel="profile" href="http://www.w3.org/1999/xhtml/vocab" />
<meta about="/evidence-and-practice/clinical" typeof="skos:Concept" property="rdfs:label skos:prefLabel" content="Clinical" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
<noscript><link href="https://rcni.com/sites/all/themes/rcni/grunticon/icons.fallback.css?v=2" rel="stylesheet"></noscript><meta name="description" content="Nursing Standard is the UK&amp;#039;s best selling nursing journal with a reputation for bringing readers exclusive, up-to-the-minute coverage on issues affecting nursing practice." />
<meta name="robots" content="follow, index" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="generator" content="Drupal 7 (https://www.drupal.org)" />
<link rel="canonical" href="https://rcni.com/nursing-standard" />
<link rel="shortlink" href="https://rcni.com/nursing-standard" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:site" content="@rcni" />
<meta name="twitter:url" content="https://rcni.com/nursing-standard" />
<meta name="twitter:title" content="Nursing Standard" />
<meta name="dcterms.title" content="Nursing Standard" />
<meta name="dcterms.type" content="Text" />
<meta name="dcterms.format" content="text/html" />
<meta name="dcterms.identifier" content="https://rcni.com/nursing-standard" />
<link rel="apple-touch-icon" sizes="180x180" href="/sites/all/themes/rcni/images/favicons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/sites/all/themes/rcni/images/favicons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/sites/all/themes/rcni/images/favicons/favicon-16x16.png">
<link rel="manifest" href="/sites/all/themes/rcni/images/favicons/site.webmanifest">
<link rel="mask-icon" href="/sites/all/themes/rcni/images/favicons/safari-pinned-tab.svg" color="#5bbad5">
<meta name="msapplication-TileColor" content="#00a490">
<meta name="theme-color" content="#ffffff">
<title>Nursing Standard | RCNi</title>
    
<!--[if lt IE 9]>
<link type="text/css" rel="stylesheet" href="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_css/css__K40TW3UIWy72H_7CxxoY5fXywYuJ4h6iK70SYit2gzY__LplgS3MTtxjPlkvCY_jgJ39oC5Hrfd0CRnCiOGYeZ3M__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.css" media="all" />
<![endif]-->
<link type="text/css" rel="stylesheet" href="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_css/css__jnaaJWOPkwAgv9VfWnsvGW6DMyU-2btgwvYJuoOtKSU__RWHI2fSDY3eyChOzSlorfvW_XQ9UAi9qf6MtPIHuocY__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.css" media="all" />
<style>#sliding-popup.sliding-popup-bottom,#sliding-popup.sliding-popup-bottom .eu-cookie-withdraw-banner,.eu-cookie-withdraw-tab{background:#0779BF;}#sliding-popup.sliding-popup-bottom.eu-cookie-withdraw-wrapper{background:transparent}#sliding-popup .popup-content #popup-text h1,#sliding-popup .popup-content #popup-text h2,#sliding-popup .popup-content #popup-text h3,#sliding-popup .popup-content #popup-text p,.eu-cookie-compliance-secondary-button,.eu-cookie-withdraw-tab{color:#ffffff !important;}.eu-cookie-withdraw-tab{border-color:#ffffff;}.eu-cookie-compliance-more-button{color:#ffffff !important;}
</style>
<link type="text/css" rel="stylesheet" href="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_css/css__MvNyHvA8Y--aWJF6vIVDOaR0vRniOe-WmdAmklYj_ok__j6Qq4okMLgsqkQBAke-Wrkh_A89DnuxyE8wUBVHE18w__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.css" media="all" />

<!--[if lte IE 8]>
<link type="text/css" rel="stylesheet" href="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_css/css__GcADsRU9ykqJ6uFZOfrRvM4skOUYxQPlTDFIQ5BnCBY__c1CYgFwKBq0ys-0MbugoRAchLB0Kvjdk2P5UR-Jzru8__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.css" media="all" />
<![endif]-->
    <script type="text/javascript" defer="defer" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/google_tag/primary/google_tag.script.js"></script>
<script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__ZBuH0-K3_nOpshaBlIJI12PEj9D6p7pmYjTz6ITyZo8__PS8lop25oG0dYhnn1LFrfnF1zec_kXu47kYFeWQH5GA__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js"></script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
document.createElement( "picture" );
//--><!]]>
</script>
<script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__M_fuIZZHWYvIoiRyRCasZ4deuRKbdyH5uj1DUe-wDoI__WCW5UKi-6OrbREz270L2ExnZLYTCvgIRP-M8tcnsJME__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js" async="async"></script>
<script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__fMBRZ55RRJZaGBKhxeIURJ8dJCnK_wMOyy6eN2UxxKY__mXYrzVF93sQz82UHN5MixnOyvNA_SE5wYaIAjmXCOH4__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js" defer="defer"></script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
 var _avp = _avp || [];

   // Function to add advert text on top
      var labelTopAdvert = function (args, err) {
        var div = document.getElementById(args.tagid);
        div.style.position = 'relative';
        var advertFrame = document.getElementById(args.tagid+'_iframe');
        var advertImage = advertFrame.contentWindow.document.getElementsByTagName('img')[0];
        if (typeof advertImage !== 'undefined')  {
          var label = document.createElement('div');
          label.style = 'width: 300px; margin: auto; z-index: 9999999; font-size: 12px; background-color: none; color: #000; padding: 2px 6px 2px 6px; border:none';
          label.innerHTML = 'Advertisement';
          div.prepend(label);
        }
      };

  
//--><!]]>
</script>
<script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__g6mKbcakHxQkz4ZHYaxdO_xqONINvRMgsHh1zAK-fr0__ATHtEmHaeZ0jidpGU22EkhmPDBSgjD8z0bVDQMI-BIY__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js"></script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
jQuery.extend(Drupal.settings,{"basePath":"\/","pathPrefix":"","smart_trim":{"lines_clampjs":3},"timeago":{"refreshMillis":60000,"allowFuture":true,"localeTitle":false,"cutoff":0,"strings":{"prefixAgo":null,"prefixFromNow":null,"suffixAgo":"ago","suffixFromNow":"from now","seconds":"less than a minute","minute":"about a minute","minutes":"%d minutes","hour":"about an hour","hours":"about %d hours","day":"a day","days":"%d days","month":"about a month","months":"%d months","year":"about a year","years":"%d years","wordSeparator":" "}},"lazyloader":{"throttle":"0.1","offset":"200","debounce":0,"unload":0,"icon":"","offsetX":0,"offsetY":0},"better_exposed_filters":{"views":{"journals_content":{"displays":{"panel_pane_16":{"filters":[]},"panel_pane_8":{"filters":[]},"panel_pane_10":{"filters":[]},"panel_pane_12":{"filters":[]}}},"popular_articles":{"displays":{"panel_pane_1":{"filters":[]}}}}},"rcni_digital_edition":{"curl_url":"https:\/\/apiwidget.rcni.com\/widgets\/jsidepanel?journal=ns\u0026volume=\u0026issue="},"viewsAjaxHistory":{"renderPageItem":0},"views":{"ajax_path":"\/views\/ajax","ajaxViews":{"views_dom_id:7aef89f766c959b47a4fa7598e5e2846":{"view_name":"popular_articles","view_display_id":"panel_pane_1","view_args":"1086","view_path":"nursing-standard\/search","view_base_path":null,"view_dom_id":"7aef89f766c959b47a4fa7598e5e2846","pager_element":0}}},"urlIsAjaxTrusted":{"\/views\/ajax":true,"\/nursing-standard":true},"eu_cookie_compliance":{"popup_enabled":1,"popup_agreed_enabled":0,"popup_hide_agreed":1,"popup_clicking_confirmation":1,"popup_scrolling_confirmation":false,"popup_html_info":"\u003Cdiv\u003E\n  \u003Cdiv class=\u0022popup-content info\u0022\u003E\n    \u003Cdiv id=\u0022popup-text\u0022\u003E\n      \u003Cp\u003EWe use cookies on this site to enhance your user experience.\u003C\/p\u003E\u003Cp\u003EBy clicking any link on this page you are giving your consent for us to set cookies.\u003C\/p\u003E              \u003Cbutton type=\u0022button\u0022 class=\u0022find-more-button eu-cookie-compliance-more-button\u0022\u003ENo, give me more info\u003C\/button\u003E\n          \u003C\/div\u003E\n    \u003Cdiv id=\u0022popup-buttons\u0022\u003E\n      \u003Cbutton type=\u0022button\u0022 class=\u0022agree-button eu-cookie-compliance-default-button\u0022\u003EOK, I agree\u003C\/button\u003E\n          \u003C\/div\u003E\n  \u003C\/div\u003E\n\u003C\/div\u003E","use_mobile_message":false,"mobile_popup_html_info":"\u003Cdiv\u003E\n  \u003Cdiv class=\u0022popup-content info\u0022\u003E\n    \u003Cdiv id=\u0022popup-text\u0022\u003E\n                    \u003Cbutton type=\u0022button\u0022 class=\u0022find-more-button eu-cookie-compliance-more-button\u0022\u003ENo, give me more info\u003C\/button\u003E\n          \u003C\/div\u003E\n    \u003Cdiv id=\u0022popup-buttons\u0022\u003E\n      \u003Cbutton type=\u0022button\u0022 class=\u0022agree-button eu-cookie-compliance-default-button\u0022\u003EOK, I agree\u003C\/button\u003E\n          \u003C\/div\u003E\n  \u003C\/div\u003E\n\u003C\/div\u003E\n","mobile_breakpoint":"768","popup_html_agreed":"\u003Cdiv\u003E\n  \u003Cdiv class=\u0022popup-content agreed\u0022\u003E\n    \u003Cdiv id=\u0022popup-text\u0022\u003E\n      \u003Cp\u003EThank you for accepting cookies\u003C\/p\u003E\n\u003Cp\u003EYou can now hide this message or find out more about cookies.\u003C\/p\u003E\n    \u003C\/div\u003E\n    \u003Cdiv id=\u0022popup-buttons\u0022\u003E\n      \u003Cbutton type=\u0022button\u0022 class=\u0022hide-popup-button eu-cookie-compliance-hide-button\u0022\u003EHide\u003C\/button\u003E\n              \u003Cbutton type=\u0022button\u0022 class=\u0022find-more-button eu-cookie-compliance-more-button-thank-you\u0022 \u003EMore info\u003C\/button\u003E\n          \u003C\/div\u003E\n  \u003C\/div\u003E\n\u003C\/div\u003E","popup_use_bare_css":false,"popup_height":"auto","popup_width":"100%","popup_delay":1000,"popup_link":"http:\/\/rcni.com\/content\/cookies","popup_link_new_window":1,"popup_position":null,"popup_language":"en","store_consent":false,"better_support_for_screen_readers":0,"reload_page":0,"domain":"","popup_eu_only_js":0,"cookie_lifetime":100,"cookie_session":false,"disagree_do_not_show_popup":0,"method":"default","whitelisted_cookies":"","withdraw_markup":"\u003Cbutton type=\u0022button\u0022 class=\u0022eu-cookie-withdraw-tab\u0022\u003EPrivacy settings\u003C\/button\u003E\n\u003Cdiv class=\u0022eu-cookie-withdraw-banner\u0022\u003E\n  \u003Cdiv class=\u0022popup-content info\u0022\u003E\n    \u003Cdiv id=\u0022popup-text\u0022\u003E\n      \u003Cp\u003E\u0026lt;h2\u0026gt;We use cookies on this site to enhance your user experience\u0026lt;\/h2\u0026gt;\u0026lt;p\u0026gt;You have given your consent for us to set cookies.\u0026lt;\/p\u0026gt;\u003C\/p\u003E\n    \u003C\/div\u003E\n    \u003Cdiv id=\u0022popup-buttons\u0022\u003E\n      \u003Cbutton type=\u0022button\u0022 class=\u0022eu-cookie-withdraw-button\u0022\u003EWithdraw consent\u003C\/button\u003E\n    \u003C\/div\u003E\n  \u003C\/div\u003E\n\u003C\/div\u003E\n","withdraw_enabled":false},"password":{"strengthTitle":"Password compliance:"},"type":"setting","ajaxPageState":{"js":{"sites\/all\/themes\/omega\/omega\/js\/no-js.js":1,"sites\/all\/modules\/contrib\/eu_cookie_compliance\/js\/jquery.cookie-1.4.1.min.js":1,"sites\/all\/modules\/contrib\/picture\/picturefill2\/picturefill.min.js":1,"sites\/all\/modules\/contrib\/picture\/picture.min.js":1,"sites\/rcn_nspace\/modules\/contrib\/ckeditor_accordion\/js\/ckeditor-accordion.js":1,"sites\/all\/libraries\/respond\/respond.min.js":1,"sites\/rcn_nspace\/modules\/contrib\/image_caption\/image_caption.min.js":1,"sites\/all\/libraries\/timeago\/jquery.timeago.js":1,"sites\/all\/modules\/contrib\/timeago\/timeago.js":1,"sites\/rcn_nspace\/modules\/patched\/lazyloader\/lazyloader.js":1,"sites\/all\/libraries\/echo\/dist\/echo.min.js":1,"sites\/all\/themes\/rcni\/js\/rcni-standard.js":1,"sites\/rcn_nspace\/modules\/custom\/rcni_user_access\/js\/rcni_user_access.js":1,"sites\/rcn_nspace\/modules\/custom\/rcni_personalisation\/js\/rcni_personalisation.js":1,"sites\/all\/modules\/contrib\/eu_cookie_compliance\/js\/eu_cookie_compliance.js":1,"sites\/rcn_nspace\/modules\/custom\/rcni_statistics\/js\/rcni_statistics.behaviors.js":1,"\/\/dm1zcrsul8wju.cloudfront.net\/sites\/rcn_nspace\/files\/google_tag\/primary\/google_tag.script.js":1,"sites\/all\/modules\/contrib\/jquery_update\/replace\/jquery\/1.7\/jquery.min.js":1,"misc\/jquery-extend-3.4.0.js":1,"misc\/jquery-html-prefilter-3.5.0-backport.js":1,"misc\/jquery.once.js":1,"misc\/drupal.js":1,"sites\/all\/modules\/contrib\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.core.min.js":1,"sites\/all\/modules\/contrib\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.widget.min.js":1,"sites\/all\/modules\/contrib\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.accordion.min.js":1,"sites\/rcn_nspace\/modules\/custom\/smart_trim\/js\/clamp.min.js":1,"sites\/rcn_nspace\/modules\/custom\/smart_trim\/js\/smart_trim.behaviors.js":1,"sites\/rcn_nspace\/modules\/custom\/rcni_digital_edition\/js\/rcni_digital_edition.behaviors.js":1}}});
//--><!]]>
</script>
    <noscript>
      <div class="u--weight-bold u--align-center grey-border">
        This site works best with JavaScript enabled.
      </div>
    </noscript>
  </head>
    <body class="html not-front not-logged-in page-nursing-standard journal-homepage section-nursing-standard global-journal-page">
      <a href="#main-content" class="element-invisible element-focusable">Skip to main content</a>
      <noscript aria-hidden="true"><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WGPZNBB" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
      <div class="header-0">   <div class="l-region l-region--header-0">
    <div id="block-panels-mini-ns-header-leaderboard-main" class="block block--panels-mini block--panels-mini-ns-header-leaderboard-main">
        <div class="block__content">
    <div class="panel-display panel-1col clearfix" id="mini-panel-ns_header_leaderboard_main">
  <div class="panel-panel panel-col">
    <div><div class="panel-pane pane-fieldable-panels-pane pane-current-1036 pane-bundle-adverts">
        <div class="fieldable-panels-pane">
    <div class="field field--name-field-advert-code field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even"><!-- BEGIN ADVERTSERVE CODE -->
<div id="avp_zid_50">
<script type="text/javascript">
_avp.push({ tagid: 'avp_zid_50', alias: '/', type: 'banner', zid: 50, pid: 0, inview: true, stylesheet: 'https://rcni.com/sites/all/themes/rcni/css/rcni.advertserve.css', secure: true });
</script>
</div>
<!-- END ADVERTSERVE CODE --></div></div></div></div>
    </div>
</div>
  </div>
</div>
  </div>
</div>
  </div>
</div>
<div class="l-page debug">
  <div class="header-container">
    <header class="l-header">
      <div class="l-branding">
        <div class="l-nav-header">
            <div class="l-region l-region--header">
    <nav id="block-menu-block-21" role="navigation" class="block block--menu-block nav--primary block--menu-block-21">
      
  <div class="menu-block-wrapper menu-block-21 menu-name-menu-rcni-primary-menu parent-mlid-0 menu-level-1">
  <ul class="menu"><li class="first leaf menu-mlid-334841"><a href="/nursing-standard/students">NS Student</a></li>
<li class="leaf menu-mlid-264766"><a href="https://decisionsupport.rcni.com" target="_blank">Decision Support</a></li>
<li class="expanded menu-mlid-106586 journals_li"><a href="/rcni-events" target="_blank">Events</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-327416"><a href="http://solutions.rcni.com/calendar/">Awareness days</a></li>
<li class="leaf menu-mlid-264771"><a href="/nurse-awards">Nurse Awards</a></li>
<li class="leaf menu-mlid-264776"><a href="https://www.careersandjobsfair.com" target="_blank">Nursing Careers and Jobs Fairs</a></li>
<li class="last leaf menu-mlid-264781"><a href="/rcni-events">RCNi events calendar</a></li>
</ul></div></li>
<li class="leaf menu-mlid-106596"><a href="https://www.rcnbulletinjobs.co.uk" target="_blank">Jobs</a></li>
<li class="expanded active-trail menu-mlid-106601 journals_li"><a href="/journals" target="_blank" class="active-trail">Journals</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-159021"><a href="/cancer-nursing-practice">Cancer Nursing Practice</a></li>
<li class="leaf menu-mlid-159026"><a href="/emergency-nurse">Emergency Nurse</a></li>
<li class="leaf menu-mlid-159036"><a href="/learning-disability-practice">Learning Disability Practice</a></li>
<li class="leaf menu-mlid-159041"><a href="/mental-health-practice">Mental Health Practice</a></li>
<li class="leaf menu-mlid-159046"><a href="/nurse-researcher">Nurse Researcher</a></li>
<li class="leaf menu-mlid-159051"><a href="/nursing-children-and-young-people">Nursing Children and Young People</a></li>
<li class="leaf menu-mlid-159056"><a href="/nursing-management">Nursing Management</a></li>
<li class="leaf menu-mlid-159071"><a href="/nursing-older-people">Nursing Older People</a></li>
<li class="leaf active-trail active menu-mlid-159076"><a href="/nursing-standard" class="active-trail active">Nursing Standard</a></li>
<li class="last leaf menu-mlid-159081"><a href="/primary-health-care">Primary Health Care</a></li>
</ul></div></li>
<li class="leaf menu-mlid-106611"><a href="http://rcnilearning.com" target="_blank">Learning</a></li>
<li class="last leaf menu-mlid-106616"><a href="https://rcni.com/eportfolio" target="_blank">Portfolio</a></li>
</ul></div>
</nav>
<nav id="block-menu-menu-rcni-logo-home" role="navigation" class="block block--menu nav--tertiary block--menu-menu-rcni-logo-home block--menu-menu-rcni-logo-home">
      
  <ul class="menu"><li class="first leaf"><a href="/" class="rcni-link" target="_blank">RCNi</a></li>
<li class="last leaf"><a href="https://www.rcn.org.uk" class="rcn-link" target="_blank">RCN</a></li>
</ul></nav>
  </div>
        </div>
              </div>
      <div class="hosted-content-main">
        <button class="toggle toggle--nav | js-toggle-nav" aria-label="Toggle navigation">
          <span class="toggle__icon toggle__icon--bars | icon--menu"></span>
          <span class="toggle__label">Menu</span>
        </button>
        <button class="toggle toggle--nav--profile | js-toggle-nav-profile" aria-label="Toggle navigation">
          <span class="toggle__label | is--hidden">Toggle Navigation</span>
          <span class="toggle__icon__profile toggle__icon--users | icon--menu--profile"></span>
          <span class="toggle__label">Sign in</span>
        </button>
      </div>
    </header>
  </div>
  <div class="l-nav-mobile-wrapper">
      </div>
  <div class="l-nav-midsize-wrapper">
      </div>

  <div class="l-nav-wrapper">
      <div class="l-region l-region--nav-1">
    <nav id="block-menu-menu-logged-out-user" role="navigation" class="block block--menu nav--tertiary block--menu-menu-logged-out-user">
      
  <ul class="menu"><li class="first leaf"><a href="/user/login?destination=/nursing-standard&amp;inst=yes">Sign in</a></li>
<li class="leaf"><a href="/user/register?destination=/nursing-standard">Register</a></li>
<li class="last leaf"><a href="https://secure.rcni.com/subscribe/nursing-standard">Subscribe</a></li>
</ul></nav>
<div id="block-block-26" class="block block--block journal--logo block--block-26">
        <div class="block__content">
    <a href="/nursing-standard" title="Nursing Standard"><img alt="" height="51" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/rcni-ns.png" width="367" /></a>
  </div>
</div>
<nav id="block-menu-menu-institution-menu" role="navigation" class="block block--menu block--menu-menu-institution-menu">
      
  <ul class="menu"><li class="first last leaf"><a href="http://organisations.rcni.com/enquirenow/"> Organisational enquiries</a></li>
</ul></nav>
<div id="block-rcni-search-rcnisearchblock2" class="block block--rcni-search block--rcni-search-rcnisearchblock2">
        <div class="block__content">
    <form class="rcni-search-form" action="/nursing-standard" method="post" id="rcni-search-form" accept-charset="UTF-8"><div><div class="form-item form-type-textfield form-item-search-rcni">
 <input placeholder="Search..." type="text" id="edit-search-rcni" name="search_rcni" value="" size="10" maxlength="100" class="form-text" />
</div>
<div class="search-btn"><input type="submit" id="edit-submit" name="op" value="Go" class="form-submit" /></div><input type="hidden" name="form_build_id" value="form-XsRsqFyv8bHT7xHjxYXSGdF9-c1C-vTCTVjZx1nCdxg" />
<input type="hidden" name="form_id" value="rcni_search_form" />
</div></form>  </div>
</div>
  </div>
    <div class="nav-2-wrapper">
    <div class="block__nav2-wrapper">
  <nav id="block-menu-block-2" role="navigation" class="block block--menu-block nav--secondary journal--menu block--menu-block-2">
      
  <div class="menu-block-wrapper menu-block-2 menu-name-menu-nursing-standard-menu parent-mlid-0 menu-level-1">
  <ul class="menu"><li class="first leaf active-trail active menu-mlid-108566 menu-home"><a href="/nursing-standard" class="active-trail active">Nursing Standard</a></li>
<li class="expanded menu-mlid-331036"><a href="/nursing-standard/covid-19">COVID-19</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-331051"><a href="/nursing-standard/covid-19/news">News</a></li>
<li class="leaf menu-mlid-331061"><a href="/nursing-standard/covid-19/clinical-practice">Clinical practice</a></li>
<li class="leaf menu-mlid-331056"><a href="/nursing-standard/covid-19/temporary-register">Temporary register</a></li>
<li class="leaf menu-mlid-331071"><a href="/nursing-standard/covid-19/essentials-of-care">Essentials of care</a></li>
<li class="leaf menu-mlid-331066"><a href="/nursing-standard/covid-19/staff-wellbeing">Staff well-being</a></li>
<li class="last leaf menu-mlid-331621"><a href="/nursing-standard/covid-19/critical-care">Critical care</a></li>
</ul></div></li>
<li class="expanded menu-mlid-97501"><a href="/nursing-standard/newsroom">Newsroom</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-97751"><a href="/nursing-standard/newsroom/news">News</a></li>
<li class="leaf menu-mlid-97506"><a href="/nursing-standard/newsroom/analysis">Analysis</a></li>
<li class="leaf menu-mlid-97516"><a href="/nursing-standard/newsroom/clinical-update">Clinical update</a></li>
<li class="leaf menu-mlid-97921"><a href="https://rcni.com/nursing-standard/newsroom/policy-briefing">Policy briefing</a></li>
<li class="leaf menu-mlid-154421"><a href="/nursing-standard/newsroom/podcast">Podcast</a></li>
<li class="last leaf menu-mlid-114871"><a href="/nursing-standard/newsroom/sponsored">Sponsored</a></li>
</ul></div></li>
<li class="expanded menu-mlid-97521"><a href="/nursing-standard/evidence-and-practice">Evidence &amp;  Practice</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-97531"><a href="/nursing-standard/evidence-and-practice/clinical">Clinical articles</a></li>
<li class="leaf menu-mlid-97526"><a href="/nursing-standard/evidence-and-practice/cpd-articles">CPD articles</a></li>
<li class="leaf menu-mlid-97536"><a href="/nursing-standard/evidence-and-practice/how-to">How to</a></li>
<li class="last leaf menu-mlid-109511"><a href="/cpd/test-your-knowledge">Test your knowledge</a></li>
</ul></div></li>
<li class="leaf menu-mlid-97551"><a href="/nursing-standard/features">Features</a></li>
<li class="expanded menu-mlid-97556"><a href="/nursing-standard/opinion">Opinion</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-97561"><a href="/nursing-standard/opinion/comment">Comment</a></li>
<li class="leaf menu-mlid-154381"><a href="https://rcni.com/nursing-standard/opinion/expert-advice">Expert advice</a></li>
<li class="leaf menu-mlid-97566"><a href="/nursing-standard/opinion/editorial">Editorial</a></li>
<li class="leaf menu-mlid-97776"><a href="/nursing-standard/opinion/your-views">Your views</a></li>
<li class="last leaf menu-mlid-97571"><a href="/nursing-standard/opinion/reviews">Reviews</a></li>
</ul></div></li>
<li class="expanded menu-mlid-97576"><a href="/nursing-standard/students">NS Student</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-334781"><a href="/nursing-standard/students/study-skills">Study skills</a></li>
<li class="leaf menu-mlid-334786"><a href="/nursing-standard/students/clinical-skills">Clinical skills</a></li>
<li class="leaf menu-mlid-334791"><a href="/nursing-standard/students/university-life">University life</a></li>
<li class="leaf menu-mlid-334796"><a href="/nursing-standard/students/person-centred%20care">Person-centred care</a></li>
<li class="leaf menu-mlid-334801"><a href="/nursing-standard/students/well-being">Well-being</a></li>
<li class="last leaf menu-mlid-334806"><a href="/nursing-standard/students/leadership">Leadership</a></li>
</ul></div></li>
<li class="expanded menu-mlid-97581"><a href="/nursing-standard/careers">Careers</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-97586"><a href="/nursing-standard/careers/career-advice">Career advice</a></li>
<li class="leaf menu-mlid-97801"><a href="/nursing-standard/careers/my-job">My job</a></li>
<li class="last leaf has-children menu-mlid-97541"><a href="/nursing-standard/revalidation">Revalidation</a></li>
</ul></div></li>
<li class="last leaf menu-mlid-327846"><a href="https://rcni.com/year-of-the-nurse">Year of the Nurse</a></li>
</ul></div>
</nav>
<div id="block-accordion-menu-5" class="block block--accordion-menu mobile-accordion-menu block--accordion-menu-5">
        <div class="block__content">
    <div class="accordion-menu-wrapper accordion-menu-5 accordion-menu-name-nursing-standard accordion-menu-source-menu-nursing-standard-menu">
  <span class="accordion-header accordion-header-1 first no-children active-trail active odd menu-mlid-108566"><a href="/nursing-standard" class="active-trail accordion-link active">Nursing Standard</a></span>
<div class="accordion-content-1"></div>
<span class="accordion-header accordion-header-2 has-children even menu-mlid-331036"><a href="/nursing-standard/covid-19" class="accordion-link">COVID-19</a></span>
<div class="accordion-content-2"><ul class="menu"><li class="first leaf"><a href="/nursing-standard/covid-19/news">News</a></li>
<li class="leaf"><a href="/nursing-standard/covid-19/clinical-practice">Clinical practice</a></li>
<li class="leaf"><a href="/nursing-standard/covid-19/temporary-register">Temporary register</a></li>
<li class="leaf"><a href="/nursing-standard/covid-19/essentials-of-care">Essentials of care</a></li>
<li class="leaf"><a href="/nursing-standard/covid-19/staff-wellbeing">Staff well-being</a></li>
<li class="last leaf"><a href="/nursing-standard/covid-19/critical-care">Critical care</a></li>
</ul></div>
<span class="accordion-header accordion-header-3 has-children odd menu-mlid-97501"><a href="/nursing-standard/newsroom" class="accordion-link">Newsroom</a></span>
<div class="accordion-content-3"><ul class="menu"><li class="first leaf"><a href="/nursing-standard/newsroom/news">News</a></li>
<li class="leaf"><a href="/nursing-standard/newsroom/analysis">Analysis</a></li>
<li class="leaf"><a href="/nursing-standard/newsroom/clinical-update">Clinical update</a></li>
<li class="leaf"><a href="https://rcni.com/nursing-standard/newsroom/policy-briefing">Policy briefing</a></li>
<li class="leaf"><a href="/nursing-standard/newsroom/podcast">Podcast</a></li>
<li class="last leaf"><a href="/nursing-standard/newsroom/sponsored">Sponsored</a></li>
</ul></div>
<span class="accordion-header accordion-header-4 has-children even menu-mlid-97521"><a href="/nursing-standard/evidence-and-practice" class="accordion-link">Evidence &amp;  Practice</a></span>
<div class="accordion-content-4"><ul class="menu"><li class="first leaf"><a href="/nursing-standard/evidence-and-practice/clinical">Clinical articles</a></li>
<li class="leaf"><a href="/nursing-standard/evidence-and-practice/cpd-articles">CPD articles</a></li>
<li class="leaf"><a href="/nursing-standard/evidence-and-practice/how-to">How to</a></li>
<li class="last leaf"><a href="/cpd/test-your-knowledge">Test your knowledge</a></li>
</ul></div>
<span class="accordion-header accordion-header-5 no-children odd menu-mlid-97551"><a href="/nursing-standard/features" class="accordion-link">Features</a></span>
<div class="accordion-content-5"></div>
<span class="accordion-header accordion-header-6 has-children even menu-mlid-97556"><a href="/nursing-standard/opinion" class="accordion-link">Opinion</a></span>
<div class="accordion-content-6"><ul class="menu"><li class="first leaf"><a href="/nursing-standard/opinion/comment">Comment</a></li>
<li class="leaf"><a href="https://rcni.com/nursing-standard/opinion/expert-advice">Expert advice</a></li>
<li class="leaf"><a href="/nursing-standard/opinion/editorial">Editorial</a></li>
<li class="leaf"><a href="/nursing-standard/opinion/your-views">Your views</a></li>
<li class="last leaf"><a href="/nursing-standard/opinion/reviews">Reviews</a></li>
</ul></div>
<span class="accordion-header accordion-header-7 has-children odd menu-mlid-97576"><a href="/nursing-standard/students" class="accordion-link">NS Student</a></span>
<div class="accordion-content-7"><ul class="menu"><li class="first leaf"><a href="/nursing-standard/students/study-skills">Study skills</a></li>
<li class="leaf"><a href="/nursing-standard/students/clinical-skills">Clinical skills</a></li>
<li class="leaf"><a href="/nursing-standard/students/university-life">University life</a></li>
<li class="leaf"><a href="/nursing-standard/students/person-centred%20care">Person-centred care</a></li>
<li class="leaf"><a href="/nursing-standard/students/well-being">Well-being</a></li>
<li class="last leaf"><a href="/nursing-standard/students/leadership">Leadership</a></li>
</ul></div>
<span class="accordion-header accordion-header-8 has-children even menu-mlid-97581"><a href="/nursing-standard/careers" class="accordion-link">Careers</a></span>
<div class="accordion-content-8"><ul class="menu"><li class="first leaf"><a href="/nursing-standard/careers/career-advice">Career advice</a></li>
<li class="leaf"><a href="/nursing-standard/careers/my-job">My job</a></li>
<li class="last expanded"><a href="/nursing-standard/revalidation">Revalidation</a><ul class="menu"><li class="first leaf"><a href="/nursing-standard/revalidation/reflective-accounts">Reflective accounts</a></li>
<li class="leaf"><a href="/nursing-standard/revalidation/practice-related%20feedback">Practice-related feedback</a></li>
<li class="leaf"><a href="/nursing-standard/revalidation/patient-view">Patient view</a></li>
<li class="last leaf"><a href="/nursing-standard/revalidation/revalidation-articles">Revalidation articles</a></li>
</ul></li>
</ul></div>
<span class="accordion-header accordion-header-9 last no-children odd menu-mlid-327846"><a href="https://rcni.com/year-of-the-nurse" class="accordion-link">Year of the Nurse</a></span>
<div class="accordion-content-9"></div>
</div>
  </div>
</div>
<div id="block-accordion-menu-4" class="block block--accordion-menu mobile-accordion-menu primary-nav-mobile block--accordion-menu-4">
        <div class="block__content">
    <div class="accordion-menu-wrapper accordion-menu-4 accordion-menu-name-rcni-primary accordion-menu-source-menu-rcni-primary-menu">
  <span class="accordion-header accordion-header-1 first no-children odd menu-mlid-334841"><a href="/nursing-standard/students" class="accordion-link">NS Student</a></span>
<div class="accordion-content-1"></div>
<span class="accordion-header accordion-header-2 no-children even menu-mlid-264766"><a href="https://decisionsupport.rcni.com" target="_blank" class="accordion-link">Decision Support</a></span>
<div class="accordion-content-2"></div>
<span class="accordion-header accordion-header-3 has-children odd menu-mlid-106586"><a href="/rcni-events" target="_blank" class="accordion-link">Events</a></span>
<div class="accordion-content-3"><ul class="menu"><li class="first leaf"><a href="http://solutions.rcni.com/calendar/">Awareness days</a></li>
<li class="leaf"><a href="/nurse-awards">Nurse Awards</a></li>
<li class="leaf"><a href="https://www.careersandjobsfair.com" target="_blank">Nursing Careers and Jobs Fairs</a></li>
<li class="last leaf"><a href="/rcni-events">RCNi events calendar</a></li>
</ul></div>
<span class="accordion-header accordion-header-4 no-children even menu-mlid-106596"><a href="https://www.rcnbulletinjobs.co.uk" target="_blank" class="accordion-link">Jobs</a></span>
<div class="accordion-content-4"></div>
<span class="accordion-header accordion-header-5 has-children active-trail odd menu-mlid-106601"><a href="/journals" target="_blank" class="active-trail active-trail accordion-link">Journals</a></span>
<div class="accordion-content-5"><ul class="menu"><li class="first leaf"><a href="/cancer-nursing-practice">Cancer Nursing Practice</a></li>
<li class="leaf"><a href="/emergency-nurse">Emergency Nurse</a></li>
<li class="leaf"><a href="/learning-disability-practice">Learning Disability Practice</a></li>
<li class="leaf"><a href="/mental-health-practice">Mental Health Practice</a></li>
<li class="leaf"><a href="/nurse-researcher">Nurse Researcher</a></li>
<li class="leaf"><a href="/nursing-children-and-young-people">Nursing Children and Young People</a></li>
<li class="leaf"><a href="/nursing-management">Nursing Management</a></li>
<li class="leaf"><a href="/nursing-older-people">Nursing Older People</a></li>
<li class="leaf"><a href="/nursing-standard" class="active">Nursing Standard</a></li>
<li class="last leaf"><a href="/primary-health-care">Primary Health Care</a></li>
</ul></div>
<span class="accordion-header accordion-header-6 no-children even menu-mlid-106611"><a href="http://rcnilearning.com" target="_blank" class="accordion-link">Learning</a></span>
<div class="accordion-content-6"></div>
<span class="accordion-header accordion-header-7 last no-children odd menu-mlid-106616"><a href="https://rcni.com/eportfolio" target="_blank" class="accordion-link">Portfolio</a></span>
<div class="accordion-content-7"></div>
</div>
  </div>
</div>
<nav id="block-menu-block-30" role="navigation" class="block block--menu-block block--menu-block-30">
      
  <div class="menu-block-wrapper menu-block-30 menu-name-menu-rcni-logo-home parent-mlid-0 menu-level-1">
  <ul class="menu"><li class="first leaf menu-mlid-99501"><a href="/" class="rcni-link" target="_blank">RCNi</a></li>
<li class="last leaf menu-mlid-327086"><a href="https://www.rcn.org.uk" class="rcn-link" target="_blank">RCN</a></li>
</ul></div>
</nav>
</div>
    </div>
      <div class="l-region l-region--nav-3">
    <div id="block-rcni-search-rcnisearchblock" class="block block--rcni-search block--rcni-search-rcnisearchblock">
        <div class="block__content">
    <form class="rcni-search-form--2" action="/nursing-standard" method="post" id="rcni-search-form--2" accept-charset="UTF-8"><div><div class="form-item form-type-textfield form-item-search-rcni">
 <input placeholder="Search..." type="text" id="edit-search-rcni--2" name="search_rcni" value="" size="10" maxlength="100" class="form-text" />
</div>
<div class="search-btn"><input type="submit" id="edit-submit--2" name="op" value="Go" class="form-submit" /></div><input type="hidden" name="form_build_id" value="form-Mko6loz-vSw5Y5ohwJBcxS7up38iYftbYA5kG5HI7hE" />
<input type="hidden" name="form_id" value="rcni_search_form" />
</div></form>  </div>
</div>
  </div>
  </div>
  <div class="l-main-wrapper">
    <div class="l-main">
      <div class="l-content" role="main">
        <a id="main-content"></a>
                          <h1 class="page-title">Nursing Standard</h1>
                                                <div class="panel-display rcni-2col-stacked clearfix" >
     <div class="panel-panel panel-col-byline">
      <div class="inside"></div>
    </div>
    <div class="panel-panel panel-col-main">
        <div class="inside"><div class="panel-pane pane-block pane-rcni-content-settings-rcni-covid19-journals-message-block covid-journals-message clearfix pane-rcni-content-settings">
        <h4>Visit our free COVID-19 resource centre</h4>

<p><a class="button-link" href="/nursing-standard/covid-19">View our resources now</a></p>

<p>To help all nurses and healthcare professionals during this period, we've made our most relevant articles and learning modules free</p>
    </div>
<div class="panel-pane pane-views-panes pane-journals-content-panel-pane-16 pane_featured">
    <div class="panel-pane-inner">
              <h2 class="pane-title">Editor's choice</h2>
            
<div class="view view-journals-content view-id-journals_content view-display-id-panel_pane_16 view-dom-id-c53b44328f291cd4bb6b53063b0e4a3a">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first views-row-last">
    <div about="/nursing-standard/opinion/why-icu-nursing-shortage-can-be-ignored-no-longer-167891" typeof="sioc:Item foaf:Document" class="node node--article view-mode-tile_featured  node--tile-featured node--article--tile-featured clearfix">

  <!-- Needed to activate contextual links. -->
  

    <div class="ds-left">
      <h2 class="white--text--link"><a href="https://rcni.com/nursing-standard/opinion/why-icu-nursing-shortage-can-be-ignored-no-longer-167891" class="processed">Why the ICU nursing shortage can be ignored no longer</a></h2><p>COVID-19 second wave will challenge depleted workforce, no matter how many new beds there are</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even">Opinion</div></div></div>    </div>

    <div class="ds-right">
      <div class="field field--name-field-display-image field--type-image field--label-hidden"><div class="field__items"><div class="field__item even"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167891/4403.jpeg?itok=JS6ukp_g" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167891/4403.jpeg?itok=JS6ukp_g" width="600" height="360"></noscript></div></div></div>    </div>


</div>

<!-- Needed to activate display suite support on forms. -->
  </div>
    </div>
  
  
  
  
  
  
</div>
    
      </div>
</div>
<div class="panel-pane pane-fieldable-panels-pane pane-uuid-d4a91bcd-963b-48dc-800f-73aae4727633 pane-bundle-digital-edition-panel-mobile">
        <div class="fieldable-panels-pane">
    <div class="field field--name-field-copy field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even"><div class="img-box"><a href="https://rcni.com/nursing-standard/authenticate"><img id="digital-edition-img-url" src="//dm1zcrsul8wju.cloudfront.net/sites/all/themes/rcni/images/other/rcni_footer_logo.png" alt="Digital Edition Cover" width="210px" height="273px" /></a></div>
<div class="text-box">
<h2>Read the latest digital edition</h2>
<p>Your environmentally-friendly digital edition comes with links to further resources and access to previous issues.</p>
<a class="btn-link" href="https://rcni.com/nursing-standard/authenticate">Read digital edition</a>
</div></div></div></div></div>
    </div>
<div class="panel-pane pane-views-panes pane-journals-content-panel-pane-8 pane_image_title_tile show_more pane-newsroom">
    <div class="panel-pane-inner">
              <h2 class="pane-title"><a href="/nursing-standard/newsroom">Newsroom</a></h2>
            
<div class="view view-journals-content view-id-journals_content view-display-id-panel_pane_8 display-sticky-sort view-dom-id-46823ef8e66fae0f5f44ea13b3cbad39">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first clickable-row">
    <div about="/nursing-standard/newsroom/news/covid-19-could-bcg-vaccine-reduce-impact-of-infection-among-nurses-167966" typeof="sioc:Item foaf:Document" class="ds-1col test2node node--article view-mode-tile_image_date_structural  node--tile-image-date-structural node--article--tile-image-date-structural clearfix">

     <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><a href="https://rcni.com/nursing-standard/newsroom/news/covid-19-could-bcg-vaccine-reduce-impact-of-infection-among-nurses-167966" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167966/4639.jpeg?itok=CWX5JBXo" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167966/4639.jpeg?itok=CWX5JBXo" width="600" height="360"></noscript></a></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/newsroom/news/covid-19-could-bcg-vaccine-reduce-impact-of-infection-among-nurses-167966" class="processed">COVID-19: could BCG vaccine reduce impact of infection among nurses?</a></h4><p class="field--name-field-abstract">Volunteers needed to see if vaccination may ‘offer some protection against COVID-19’</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even"><div class="ds-1col taxonomy-term vocabulary-structural view-mode-taxonomy_structural_link  clearfix">

  
  <div class="field field-name-structural-term-link"><a href="/nursing-standard/newsroom/news" class="processed">News</a>
</div></div>

</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">14 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-2 views-row-even clickable-row">
    <div about="/nursing-standard/newsroom/news/nursing-research-chief-nurse-wants-to-hear-your-ideas-167976" typeof="sioc:Item foaf:Document" class="ds-1col test2node node--article view-mode-tile_image_date_structural  node--tile-image-date-structural node--article--tile-image-date-structural clearfix">

     <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><a href="https://rcni.com/nursing-standard/newsroom/news/nursing-research-chief-nurse-wants-to-hear-your-ideas-167976" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167976/4650.jpeg?itok=7pN7Jn7M" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167976/4650.jpeg?itok=7pN7Jn7M" width="600" height="360"></noscript></a></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/newsroom/news/nursing-research-chief-nurse-wants-to-hear-your-ideas-167976" class="processed">Nursing research: chief nurse wants to hear your ideas</a></h4><p class="field--name-field-abstract">Ruth May’s team at NHS England and NHS Improvement is developing a nursing research strategy</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even"><div class="ds-1col taxonomy-term vocabulary-structural view-mode-taxonomy_structural_link  clearfix">

  
  <div class="field field-name-structural-term-link"><a href="/nursing-standard/newsroom/news" class="processed">News</a>
</div></div>

</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">14 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-3 views-row-odd clickable-row">
    <div about="/nursing-standard/newsroom/podcast/nursing-standard-podcast-what-professional-regulation-167971" typeof="sioc:Item foaf:Document" class="ds-1col test2node node--article view-mode-tile_image_date_structural  node--tile-image-date-structural node--article--tile-image-date-structural clearfix">

        <div class="node__content">
       <div class="content__free free">Free</div>
    </div>
   <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><a href="https://rcni.com/nursing-standard/newsroom/podcast/nursing-standard-podcast-what-professional-regulation-167971" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167971/4657.jpeg?itok=c_MhB1Vs" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167971/4657.jpeg?itok=c_MhB1Vs" width="600" height="360"></noscript></a></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/newsroom/podcast/nursing-standard-podcast-what-professional-regulation-167971" class="processed">Nursing Standard podcast: what is professional regulation?</a></h4><p class="field--name-field-abstract">The Professional Standards Authority’s Christine Braithwaite offers a brief guide</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even"><div class="ds-1col taxonomy-term vocabulary-structural view-mode-taxonomy_structural_link  clearfix">

  
  <div class="field field-name-structural-term-link"><a href="/nursing-standard/newsroom/podcast" class="processed">Podcast</a>
</div></div>

</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">14 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-4 views-row-even clickable-row">
    <div about="/nursing-standard/newsroom/news/fair-pay-campaign-calls-government-to-give-nhs-staff-15-rise-167886" typeof="sioc:Item foaf:Document" class="ds-1col test2node node--article view-mode-tile_image_date_structural  node--tile-image-date-structural node--article--tile-image-date-structural clearfix">

     <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><a href="https://rcni.com/nursing-standard/newsroom/news/fair-pay-campaign-calls-government-to-give-nhs-staff-15-rise-167886" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167886/4584.jpeg?itok=1lIXeftn" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167886/4584.jpeg?itok=1lIXeftn" width="600" height="360"></noscript></a></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/newsroom/news/fair-pay-campaign-calls-government-to-give-nhs-staff-15-rise-167886" class="processed">Fair pay: campaign calls on government to give NHS staff 15% rise</a></h4><p class="field--name-field-abstract">Nurses United and NHS Workers Say No have a week of action planned including tweeting MPs...</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even"><div class="ds-1col taxonomy-term vocabulary-structural view-mode-taxonomy_structural_link  clearfix">

  
  <div class="field field-name-structural-term-link"><a href="/nursing-standard/newsroom/news" class="processed">News</a>
</div></div>

</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">13 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-5 views-row-odd clickable-row">
    <div about="/nursing-standard/newsroom/news/nhs-nurses-to-get-paid-payday-flexible-finance-app-167881" typeof="sioc:Item foaf:Document" class="ds-1col test2node node--article view-mode-tile_image_date_structural  node--tile-image-date-structural node--article--tile-image-date-structural clearfix">

     <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><a href="https://rcni.com/nursing-standard/newsroom/news/nhs-nurses-to-get-paid-payday-flexible-finance-app-167881" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167881/4549.jpeg?itok=F4nFLO-z" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167881/4549.jpeg?itok=F4nFLO-z" width="600" height="360"></noscript></a></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/newsroom/news/nhs-nurses-to-get-paid-payday-flexible-finance-app-167881" class="processed">NHS nurses to get paid before payday with flexible finance app </a></h4><p class="field--name-field-abstract">Nursing staff will be offered early access to their salary</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even"><div class="ds-1col taxonomy-term vocabulary-structural view-mode-taxonomy_structural_link  clearfix">

  
  <div class="field field-name-structural-term-link"><a href="/nursing-standard/newsroom/news" class="processed">News</a>
</div></div>

</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">13 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-6 views-row-even views-row-last clickable-row">
    <div about="/nursing-standard/newsroom/news/resuscitation-notices-and-covid-19-rcn-backs-review-of-dnacpr-use-167861" typeof="sioc:Item foaf:Document" class="ds-1col test2node node--article view-mode-tile_image_date_structural  node--tile-image-date-structural node--article--tile-image-date-structural clearfix">

     <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><a href="https://rcni.com/nursing-standard/newsroom/news/resuscitation-notices-and-covid-19-rcn-backs-review-of-dnacpr-use-167861" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167861/4509.jpeg?itok=wggoFp9a" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167861/4509.jpeg?itok=wggoFp9a" width="600" height="360"></noscript></a></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/newsroom/news/resuscitation-notices-and-covid-19-rcn-backs-review-of-dnacpr-use-167861" class="processed">Resuscitation notices and COVID-19: RCN backs review of DNACPR use</a></h4><p class="field--name-field-abstract">Care Quality Commission to review notice use during pandemic, after concerns about consent</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even"><div class="ds-1col taxonomy-term vocabulary-structural view-mode-taxonomy_structural_link  clearfix">

  
  <div class="field field-name-structural-term-link"><a href="/nursing-standard/newsroom/news" class="processed">News</a>
</div></div>

</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">13 Oct 2020</div></div></div></div>

  </div>
    </div>
  
  
  
  
  
  
</div>
    
          <div class="more-link">
        <a href="/nursing-standard/newsroom">MORE</a>      </div>
      </div>
</div>
<div class="panel-pane pane-views-panes pane-journals-content-panel-pane-8 pane_image_title_tile show_more pane-evidence-and-practice">
    <div class="panel-pane-inner">
              <h2 class="pane-title"><a href="/nursing-standard/evidence-and-practice">Evidence and Practice</a></h2>
            
<div class="view view-journals-content view-id-journals_content view-display-id-panel_pane_8 display-sticky-sort view-dom-id-36102035eb443e809714355bf8d5dcbe">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first clickable-row">
    <div about="/nursing-standard/evidence-and-practice/clinical/understanding-importance-of-concepts-of-health-167816" typeof="sioc:Item foaf:Document" class="ds-1col test2node node--article view-mode-tile_image_date_structural  node--tile-image-date-structural node--article--tile-image-date-structural clearfix">

     <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><a href="https://rcni.com/nursing-standard/evidence-and-practice/clinical/understanding-importance-of-concepts-of-health-167816" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167816/ns.2020.e11539_abs.jpg?itok=IeFaFBn3" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360" alt="Understanding the importance of concepts of health" title="Understanding the importance of concepts of health"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167816/ns.2020.e11539_abs.jpg?itok=IeFaFBn3" width="600" height="360" alt="Understanding the importance of concepts of health" title="Understanding the importance of concepts of health"></noscript></a></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/evidence-and-practice/clinical/understanding-importance-of-concepts-of-health-167816" class="processed">Understanding the importance of concepts of health</a></h4><p class="field--name-field-abstract">How patients’ perceptions of health can influence their attitude to self-care</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even"><div class="ds-1col taxonomy-term vocabulary-structural view-mode-taxonomy_structural_link  clearfix">

  
  <div class="field field-name-structural-term-link"><a href="/nursing-standard/evidence-and-practice/clinical" class="processed">Clinical</a>
</div></div>

</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">12 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-2 views-row-even clickable-row">
    <div about="/nursing-standard/evidence-and-practice/clinical/reflecting-nursing-practice-during-covid-19-pandemic-167606" typeof="sioc:Item foaf:Document" class="ds-1col test2node node--article view-mode-tile_image_date_structural  node--tile-image-date-structural node--article--tile-image-date-structural clearfix">

     <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><a href="https://rcni.com/nursing-standard/evidence-and-practice/clinical/reflecting-nursing-practice-during-covid-19-pandemic-167606" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/images/external_tile/ns.2020.e11569_abs.jpg?itok=v21CsCzK" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/images/external_tile/ns.2020.e11569_abs.jpg?itok=v21CsCzK" width="600" height="360"></noscript></a></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/evidence-and-practice/clinical/reflecting-nursing-practice-during-covid-19-pandemic-167606" class="processed">Reflecting on nursing practice during the COVID-19 pandemic</a></h4><p class="field--name-field-abstract">A look at how COVID-19 has challenged nurses and resulted in new needs for reflection</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even"><div class="ds-1col taxonomy-term vocabulary-structural view-mode-taxonomy_structural_link  clearfix">

  
  <div class="field field-name-structural-term-link"><a href="/nursing-standard/evidence-and-practice/clinical" class="processed">Clinical</a>
</div></div>

</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">05 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-3 views-row-odd clickable-row">
    <div about="/nursing-standard/evidence-and-practice/cpd-articles/care-of-patients-undergoing-removal-of-indwelling-urinary-catheter-167306" typeof="sioc:Item foaf:Document" class="ds-1col test2node node--article view-mode-tile_image_date_structural  node--tile-image-date-structural node--article--tile-image-date-structural clearfix">

     <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><a href="https://rcni.com/nursing-standard/evidence-and-practice/cpd-articles/care-of-patients-undergoing-removal-of-indwelling-urinary-catheter-167306" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167306/ns.2020.e11555_abs.jpg?itok=bEJp_Sze" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360" alt="Care of patients undergoing the removal of an indwelling urinary catheter" title="Care of patients undergoing the removal of an indwelling urinary catheter"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167306/ns.2020.e11555_abs.jpg?itok=bEJp_Sze" width="600" height="360" alt="Care of patients undergoing the removal of an indwelling urinary catheter" title="Care of patients undergoing the removal of an indwelling urinary catheter"></noscript></a></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/evidence-and-practice/cpd-articles/care-of-patients-undergoing-removal-of-indwelling-urinary-catheter-167306" class="processed">Care of patients undergoing the removal of an indwelling urinary catheter</a></h4><p class="field--name-field-abstract">Know the associated complications and how these can be prevented and managed</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even"><div class="ds-1col taxonomy-term vocabulary-structural view-mode-taxonomy_structural_link  clearfix">

  
  <div class="field field-name-structural-term-link"><a href="/nursing-standard/evidence-and-practice/cpd-articles" class="processed">CPD articles</a>
</div></div>

</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">28 Sep 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-4 views-row-even clickable-row">
    <div about="/nursing-standard/evidence-and-practice/cpd-articles/understanding-elements-of-a-holistic-wound-assessment-166986" typeof="sioc:Item foaf:Document" class="ds-1col test2node node--article view-mode-tile_image_date_structural  node--tile-image-date-structural node--article--tile-image-date-structural clearfix">

     <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><a href="https://rcni.com/nursing-standard/evidence-and-practice/cpd-articles/understanding-elements-of-a-holistic-wound-assessment-166986" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/166986/ns.2020.e11540_abs.jpg?itok=J1yzd4br" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360" alt="Understanding the elements of a holistic wound assessment" title="Understanding the elements of a holistic wound assessment"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/166986/ns.2020.e11540_abs.jpg?itok=J1yzd4br" width="600" height="360" alt="Understanding the elements of a holistic wound assessment" title="Understanding the elements of a holistic wound assessment"></noscript></a></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/evidence-and-practice/cpd-articles/understanding-elements-of-a-holistic-wound-assessment-166986" class="processed">Understanding the elements of a holistic wound assessment</a></h4><p class="field--name-field-abstract">Enhance your awareness of factors that affect wound healing and management</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even"><div class="ds-1col taxonomy-term vocabulary-structural view-mode-taxonomy_structural_link  clearfix">

  
  <div class="field field-name-structural-term-link"><a href="/nursing-standard/evidence-and-practice/cpd-articles" class="processed">CPD articles</a>
</div></div>

</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">21 Sep 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-5 views-row-odd clickable-row">
    <div about="/nursing-standard/evidence-and-practice/cpd-articles/early-diagnosis-and-effective-management-of-sepsis-167026" typeof="sioc:Item foaf:Document" class="ds-1col test2node node--article view-mode-tile_image_date_structural  node--tile-image-date-structural node--article--tile-image-date-structural clearfix">

     <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><a href="https://rcni.com/nursing-standard/evidence-and-practice/cpd-articles/early-diagnosis-and-effective-management-of-sepsis-167026" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167026/512978000cistock_tile.jpg?itok=oUs0oidJ" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167026/512978000cistock_tile.jpg?itok=oUs0oidJ" width="600" height="360"></noscript></a></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/evidence-and-practice/cpd-articles/early-diagnosis-and-effective-management-of-sepsis-167026" class="processed">Early diagnosis and effective management of sepsis</a></h4><p class="field--name-field-abstract">Learn about prompt early treatment using care bundles such as the ‘sepsis six’</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even"><div class="ds-1col taxonomy-term vocabulary-structural view-mode-taxonomy_structural_link  clearfix">

  
  <div class="field field-name-structural-term-link"><a href="/nursing-standard/evidence-and-practice/cpd-articles" class="processed">CPD articles</a>
</div></div>

</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">14 Sep 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-6 views-row-even views-row-last clickable-row">
    <div about="/nursing-standard/evidence-and-practice/clinical/enduring-legacy-contributions-of-royal-college-of-nursing-fellows-to-nursing-science-165151" typeof="sioc:Item foaf:Document" class="ds-1col test2node node--article view-mode-tile_image_date_structural  node--tile-image-date-structural node--article--tile-image-date-structural clearfix">

        <div class="node__content">
       <div class="content__free open access">Open access</div>
    </div>
   <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><a href="https://rcni.com/nursing-standard/evidence-and-practice/clinical/enduring-legacy-contributions-of-royal-college-of-nursing-fellows-to-nursing-science-165151" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/165151/ns.2020.e11584_abs.jpg?itok=iVsIyCXT" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360" alt="An enduring legacy: contributions of Royal College of Nursing fellows to nursing science" title="An enduring legacy: contributions of Royal College of Nursing fellows to nursing science"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/165151/ns.2020.e11584_abs.jpg?itok=iVsIyCXT" width="600" height="360" alt="An enduring legacy: contributions of Royal College of Nursing fellows to nursing science" title="An enduring legacy: contributions of Royal College of Nursing fellows to nursing science"></noscript></a></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/evidence-and-practice/clinical/enduring-legacy-contributions-of-royal-college-of-nursing-fellows-to-nursing-science-165151" class="processed">An enduring legacy: contributions of Royal College of Nursing fellows to nursing science</a></h4><p class="field--name-field-abstract">How RCN fellows have contributed to advancing the profession</p><div class="field field--name-field-structural-tag field--type-taxonomy-term-reference field--label-hidden"><div class="field__items"><div class="field__item even"><div class="ds-1col taxonomy-term vocabulary-structural view-mode-taxonomy_structural_link  clearfix">

  
  <div class="field field-name-structural-term-link"><a href="/nursing-standard/evidence-and-practice/clinical" class="processed">Clinical</a>
</div></div>

</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">07 Sep 2020</div></div></div></div>

  </div>
    </div>
  
  
  
  
  
  
</div>
    
          <div class="more-link">
        <a href="/nursing-standard/evidence-and-practice">MORE</a>      </div>
      </div>
</div>
<div class="panel-pane pane-views-panes pane-journals-content-panel-pane-10 pane_title_tile_6_items show_more pane-features pane_image_title_tile">
    <div class="panel-pane-inner">
              <h2 class="pane-title"><a href="/nursing-standard/features">Features</a></h2>
            
<div class="view view-journals-content view-id-journals_content view-display-id-panel_pane_10 display-sticky-sort view-dom-id-13b45c43517c9c140a5f3545c441c6a9">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first clickable-row">
    <div about="/nursing-standard/features/acute-kidney-injury-common-condition-thats-often-overlooked-166886" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/features/acute-kidney-injury-common-condition-thats-often-overlooked-166886" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/166886/2902.jpeg?itok=7AGUt2xT" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/166886/2902.jpeg?itok=7AGUt2xT" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/features/acute-kidney-injury-common-condition-thats-often-overlooked-166886" class="processed">Acute kidney injury: the common condition that’s often overlooked</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">When nurses stay alert to AKI signs and hydration they can optimise patient outcomes</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">12 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-2 views-row-even clickable-row">
    <div about="/nursing-standard/features/street-outreach-nurses-who-bring-spot-care-to-people-sleeping-rough-167791" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/features/street-outreach-nurses-who-bring-spot-care-to-people-sleeping-rough-167791" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167791/4145.jpeg?itok=fztBEhnR" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167791/4145.jpeg?itok=fztBEhnR" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/features/street-outreach-nurses-who-bring-spot-care-to-people-sleeping-rough-167791" class="processed">The street outreach nurses who bring on-the-spot care to people sleeping rough</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">Westminster Street Nurse project has opened up access to care for this hard-to-reach group</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">09 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-3 views-row-odd clickable-row">
    <div about="/nursing-standard/features/how-a-nursing-support-worker-making-surgery-a-positive-experience-patients-167471" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/features/how-a-nursing-support-worker-making-surgery-a-positive-experience-patients-167471" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167471/3402.jpeg?itok=VNAdpPi9" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167471/3402.jpeg?itok=VNAdpPi9" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/features/how-a-nursing-support-worker-making-surgery-a-positive-experience-patients-167471" class="processed">How a nursing support worker is making surgery a positive experience for patients</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">People with learning disabilities can expect a calmer and safer experience of surgery</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">09 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-4 views-row-even clickable-row">
    <div about="/nursing-standard/features/cpr-38000ft-nursing-student-who-took-control-of-flight-emergency-167391" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
      <div class="node__content">
       <div class="content__free free">Free</div>
    </div>
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/features/cpr-38000ft-nursing-student-who-took-control-of-flight-emergency-167391" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167391/3767.jpeg?itok=xTDqDppJ" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167391/3767.jpeg?itok=xTDqDppJ" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/features/cpr-38000ft-nursing-student-who-took-control-of-flight-emergency-167391" class="processed">CPR at 38,000ft: the nursing student who took control of an in-flight emergency</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">Isobel Corrie named RCNi Nurse Awards Patient’s Choice winner after saving passenger’s life</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">09 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-5 views-row-odd clickable-row">
    <div about="/nursing-standard/features/rcn-nurse-of-year-2020-using-cpr-sessions-to-tackle-youth-knife-crime-epidemic-167456" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
      <div class="node__content">
       <div class="content__free free">Free</div>
    </div>
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/features/rcn-nurse-of-year-2020-using-cpr-sessions-to-tackle-youth-knife-crime-epidemic-167456" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167456/3305.jpeg?itok=WRe9LqJv" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167456/3305.jpeg?itok=WRe9LqJv" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/features/rcn-nurse-of-year-2020-using-cpr-sessions-to-tackle-youth-knife-crime-epidemic-167456" class="processed">RCN Nurse of the Year 2020: using CPR sessions to tackle the youth knife crime epidemic</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">Ana Waddington’s programme engages both vulnerable young people and healthcare staff</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">08 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-6 views-row-even views-row-last clickable-row">
    <div about="/nursing-standard/features/healthcare-projects-overseas-placement-how-one-students-plan-generated-a-team-effort-167711" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/features/healthcare-projects-overseas-placement-how-one-students-plan-generated-a-team-effort-167711" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167711/3800.jpeg?itok=Rtj4gzTP" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167711/3800.jpeg?itok=Rtj4gzTP" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/features/healthcare-projects-overseas-placement-how-one-students-plan-generated-a-team-effort-167711" class="processed">Healthcare projects on an overseas placement: how one student’s plan generated a team...</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">RCNi Nursing Student Award winner’s networking and persistence got a clinic up and running</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">08 Oct 2020</div></div></div></div>

  </div>
    </div>
  
  
  
  
  
  
</div>
    
          <div class="more-link">
        <a href="/nursing-standard/features">MORE</a>      </div>
      </div>
</div>
<div class="panel-pane pane-views-panes pane-journals-content-panel-pane-12 pane_title_tile_3_items pane_image_title_tile show_more pane-opinion">
    <div class="panel-pane-inner">
              <h2 class="pane-title"><a href="/nursing-standard/opinion">Opinion</a></h2>
            
<div class="view view-journals-content view-id-journals_content view-display-id-panel_pane_12 display-sticky-sort view-dom-id-3e1dda55a28daa19c2ae8165710ae261">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first clickable-row">
    <div about="/nursing-standard/opinion/why-icu-nursing-shortage-can-be-ignored-no-longer-167891" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/opinion/why-icu-nursing-shortage-can-be-ignored-no-longer-167891" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167891/4403.jpeg?itok=JS6ukp_g" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167891/4403.jpeg?itok=JS6ukp_g" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/opinion/why-icu-nursing-shortage-can-be-ignored-no-longer-167891" class="processed">Why the ICU nursing shortage can be ignored no longer</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">COVID-19 second wave will challenge depleted workforce, no matter how many new beds there are</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">14 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-2 views-row-even clickable-row">
    <div about="/nursing-standard/opinion/expert-advice/nursing-applications-are-even-heroes-experience-burnout-167841" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/opinion/expert-advice/nursing-applications-are-even-heroes-experience-burnout-167841" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167841/4246_1.jpeg?itok=s380qp_8" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167841/4246_1.jpeg?itok=s380qp_8" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/opinion/expert-advice/nursing-applications-are-even-heroes-experience-burnout-167841" class="processed">Nursing applications are up, but even ‘heroes’ experience burnout</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">The COVID-19-related impact on nurses’ image is no long-term fix for nurse retention</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">13 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-3 views-row-odd views-row-last clickable-row">
    <div about="/nursing-standard/opinion/expert-advice/i-need-a-doctors-appointment-does-my-employer-have-to-give-me-time-167706" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/opinion/expert-advice/i-need-a-doctors-appointment-does-my-employer-have-to-give-me-time-167706" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167706/4117.jpeg?itok=fAaIMcVA" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167706/4117.jpeg?itok=fAaIMcVA" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/opinion/expert-advice/i-need-a-doctors-appointment-does-my-employer-have-to-give-me-time-167706" class="processed">I need a doctor’s appointment: does my employer have to give me time off?</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">Find out when you have the right to time off during working hours – and when you don’t</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">07 Oct 2020</div></div></div></div>

  </div>
    </div>
  
  
  
  
  
  
</div>
    
          <div class="more-link">
        <a href="/nursing-standard/opinion">MORE</a>      </div>
      </div>
</div>
<div class="panel-pane pane-views-panes pane-journals-content-panel-pane-12 pane_title_tile_3_items show_more pane-students pane_image_title_tile">
    <div class="panel-pane-inner">
              <h2 class="pane-title"><a href="/nursing-standard/students">Students</a></h2>
            
<div class="view view-journals-content view-id-journals_content view-display-id-panel_pane_12 display-sticky-sort view-dom-id-9f95b0292ff860f32b25197551e4a34f">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first clickable-row">
    <div about="/nursing-standard/students/top-tips-undertaking-a-nursing-degree-167856" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/students/top-tips-undertaking-a-nursing-degree-167856" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167856/zoe_butler.jpg?itok=clO8x2Du" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360" alt="Zoe Butler" title="Zoe Butler"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167856/zoe_butler.jpg?itok=clO8x2Du" width="600" height="360" alt="Zoe Butler" title="Zoe Butler"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/students/top-tips-undertaking-a-nursing-degree-167856" class="processed">Top tips for undertaking a nursing degree</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">Lecturer and registered Nurse Zoe Butler offers her top six tips on getting the most out of a nursing degree</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">13 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-2 views-row-even clickable-row">
    <div about="/nursing-standard/students/nursing-studies/why-age-no-barrier-to-becoming-a-nurse-167716" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/students/nursing-studies/why-age-no-barrier-to-becoming-a-nurse-167716" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167716/4100.jpeg?itok=bWd_aDt-" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167716/4100.jpeg?itok=bWd_aDt-" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/students/nursing-studies/why-age-no-barrier-to-becoming-a-nurse-167716" class="processed">Why age is no barrier to becoming a nurse</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">Mature students have much to offer in a profession where the boundaries are ‘limitless’</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">06 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-3 views-row-odd views-row-last clickable-row">
    <div about="/nursing-standard/students/nursing-studies/covid-19-may-be-disrupting-my-degree-it-wont-dim-my-desire-to-be-a-nurse-167546" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/students/nursing-studies/covid-19-may-be-disrupting-my-degree-it-wont-dim-my-desire-to-be-a-nurse-167546" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167546/3994.jpeg?itok=WOU-iMUW" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167546/3994.jpeg?itok=WOU-iMUW" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/students/nursing-studies/covid-19-may-be-disrupting-my-degree-it-wont-dim-my-desire-to-be-a-nurse-167546" class="processed">COVID-19 may be disrupting my degree, but it won’t dim my desire to be a nurse</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">I’m entering my second year as a nursing student with no experience of a hospital ward</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">02 Oct 2020</div></div></div></div>

  </div>
    </div>
  
  
  
  
  
  
</div>
    
          <div class="more-link">
        <a href="/nursing-standard/students">MORE</a>      </div>
      </div>
</div>
<div class="panel-pane pane-views-panes pane-journals-content-panel-pane-12 pane_image_title_tile show_more pane-careers">
    <div class="panel-pane-inner">
              <h2 class="pane-title"><a href="/nursing-standard/careers">Careers</a></h2>
            
<div class="view view-journals-content view-id-journals_content view-display-id-panel_pane_12 display-sticky-sort view-dom-id-69e1b3878f589cafb3c16ab6dfbbc459">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first clickable-row">
    <div about="/nursing-standard/careers/career-advice/remote-learning-nurses-how-to-keep-staff-training-track-167436" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/careers/career-advice/remote-learning-nurses-how-to-keep-staff-training-track-167436" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167436/3797.jpeg?itok=MHmg4YqM" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/167436/3797.jpeg?itok=MHmg4YqM" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/careers/career-advice/remote-learning-nurses-how-to-keep-staff-training-track-167436" class="processed">Remote learning for nurses: how to keep staff training on track</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">When COVID-19 forced us to embrace virtual clinical education, we found more than a quick fix</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">01 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-2 views-row-even clickable-row">
    <div about="/nursing-standard/careers/career-advice/why-every-nurse-should-embrace-potential-of-digital-technology-166906" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/careers/career-advice/why-every-nurse-should-embrace-potential-of-digital-technology-166906" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/166906/3427.jpeg?itok=j9s-VzFC" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/Article-images/166906/3427.jpeg?itok=j9s-VzFC" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/careers/career-advice/why-every-nurse-should-embrace-potential-of-digital-technology-166906" class="processed">Why every nurse should embrace the potential of digital technology</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">Information management is fundamental to nursing, which is why computers are a powerful ally</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">18 Sep 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-3 views-row-odd views-row-last clickable-row">
    <div about="/nursing-standard/careers/career-advice/nursing-careers-and-jobs-fair-rcnis-events-go-virtual-165391" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_image_with_date  node--tile-image-with-date node--article--tile-image-with-date clearfix">

    
      <div class="node__content">
       <div class="content__free free">Free</div>
    </div>
  <div class="journal-wrapper field field--name-field-display-image field--type-image field--label-hidden"><div><div><a href="https://rcni.com/nursing-standard/careers/career-advice/nursing-careers-and-jobs-fair-rcnis-events-go-virtual-165391" class="processed"><img typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/images/external_tile/3103.jpeg?itok=pnWsEFEI" data-icon="" class="lazyloader tile_image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" width="600" height="360"><noscript><img typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/tile_image/public/images/external_tile/3103.jpeg?itok=pnWsEFEI" width="600" height="360"></noscript></a></div></div></div><h4 class="field--name-title"><a href="https://rcni.com/nursing-standard/careers/career-advice/nursing-careers-and-jobs-fair-rcnis-events-go-virtual-165391" class="processed">Nursing careers and jobs fair: RCNi’s events go virtual</a></h4><p class="field--name-field-abstract"><span class="use-clampjs">Find your dream job or attend a CPD-accredited seminar - all without leaving home</span></p><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">14 Sep 2020</div></div></div></div>

  </div>
    </div>
  
  
  
  
  
  
</div>
    
          <div class="more-link">
        <a href="/nursing-standard/careers">MORE</a>      </div>
      </div>
</div>
</div>
    </div>
    <div class="panel-panel panel-col-sidebar">
        <div class="inside"><div class="panel-pane pane-panels-mini pane-nursing-standard-sidebar">
        <div class="panel-display panel-1col clearfix" id="mini-panel-nursing_standard_sidebar">
  <div class="panel-panel panel-col">
    <div><div class="panel-pane pane-fieldable-panels-pane pane-uuid-1471d9e0-0f11-4a01-8b6c-6bb66666a780 pane-bundle-adverts">
        <div class="fieldable-panels-pane">
    <div class="field field--name-field-advert-code field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even"><!-- BEGIN ADVERTSERVE CODE -->
<div id="avp_zid_51">
<script type="text/javascript">
_avp.push({ tagid: 'avp_zid_51', alias: '/', type: 'banner', zid: 51, pid: 0, inview: true, callback: labelTopAdvert, secure: true });
</script>
</div>
<!-- END ADVERTSERVE CODE --></div></div></div></div>
    </div>
<div class="panel-pane pane-fieldable-panels-pane pane-uuid-3218bebc-d49d-43bf-ba89-b8e7655dd130 pane-bundle-adverts">
        <div class="fieldable-panels-pane">
    <div class="field field--name-field-advert-code field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even"><!-- BEGIN ADVERTSERVE CODE -->
<div id="avp_zid_150">
<script type="text/javascript">
_avp.push({ tagid: 'avp_zid_150', alias: '/', type: 'banner', zid: 150, pid: 0, inview: true, callback: labelTopAdvert, secure: true });
</script>
</div>
<!-- END ADVERTSERVE CODE --></div></div></div></div>
    </div>
<div class="panel-pane pane-fieldable-panels-pane pane-current-696 pane-bundle-other">
        <div class="fieldable-panels-pane">
    <div class="field field--name-field-copy field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even"><div class="latest-print-wrapper">
<iframe id="widgetFrame" scrolling="no" height="100%" width="220px"  src="" data-src="https://apiwidget.rcni.com/widgets/jsidepanel?journal=ns&volume=&issue="></iframe></div></div></div></div></div>
    </div>
<div class="panel-pane pane-block pane-block-281 jobs-pane-block pane-block">
                                  <h5 class="pane-title">Jobs</h5>
            <!-- Forces template to use title headings attribute set on custom panel panes. -->
          <p><iframe frameborder="0" id="mdgxWidgetiFrame" src="" data-src="https://www.rcnbulletinjobs.co.uk/widget/bootstrap/job/#i=2" style="width: 100%; border: 0;min-height: 385px; background: 0"></iframe></p>
    </div>
<div class="panel-pane pane-views-panes pane-popular-articles-panel-pane-1">
              <div class="pane-title"><h5>5 Most Read Articles</h5></div>
          <div class="view view-popular-articles view-id-popular_articles view-display-id-panel_pane_1 view-dom-id-7aef89f766c959b47a4fa7598e5e2846">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first clickable-row">
    <div  about="/nursing-standard/opinion/expert-advice/nursing-applications-are-even-heroes-experience-burnout-167841" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_with_abstract_ u--margin-full-bottom node--tile-with-abstract- node--article--tile-with-abstract- clearfix" >

    
  <h4 class="field--name-title"><a href="/nursing-standard/opinion/expert-advice/nursing-applications-are-even-heroes-experience-burnout-167841">Nursing applications are up, but even ‘heroes’ experience burnout</a></h4><div class="field field--name-field-abstract field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even">The COVID-19-related impact on nurses’ image is no long-term fix for nurse retention</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">13 Oct 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-2 views-row-even clickable-row">
    <div  about="/nursing-standard/newsroom/analysis/covid-19-steps-to-take-when-your-shift-ends-to-stay-safe-home-159686" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_with_abstract_ u--margin-full-bottom node--tile-with-abstract- node--article--tile-with-abstract- clearfix" >

    
      <div class="node__content">
       <div class= "content__free free">Free</div>
    </div>
  <h4 class="field--name-title"><a href="/nursing-standard/newsroom/analysis/covid-19-steps-to-take-when-your-shift-ends-to-stay-safe-home-159686">COVID-19: the steps to take when your shift ends to stay safe at home </a></h4><div class="field field--name-field-abstract field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even">Online sources list rigorous steps to take– but what do the experts say? </div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">22 Apr 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-3 views-row-odd clickable-row">
    <div  about="/nursing-standard/features/how-to-use-your-covid-19-experience-reflective-practice-160601" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_with_abstract_ u--margin-full-bottom node--tile-with-abstract- node--article--tile-with-abstract- clearfix" >

    
      <div class="node__content">
       <div class= "content__free free">Free</div>
    </div>
  <h4 class="field--name-title"><a href="/nursing-standard/features/how-to-use-your-covid-19-experience-reflective-practice-160601">How to use your COVID-19 experience for reflective practice</a></h4><div class="field field--name-field-abstract field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even">Amid the upheaval of the pandemic, nurses can use reflection to process their experiences</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">12 May 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-4 views-row-even clickable-row">
    <div  about="/nursing-standard/newsroom/analysis/covid-19-how-to-avoid-skin-damage-while-wearing-ppe-160451" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_with_abstract_ u--margin-full-bottom node--tile-with-abstract- node--article--tile-with-abstract- clearfix" >

    
      <div class="node__content">
       <div class= "content__free free">Free</div>
    </div>
  <h4 class="field--name-title"><a href="/nursing-standard/newsroom/analysis/covid-19-how-to-avoid-skin-damage-while-wearing-ppe-160451">COVID-19: how to avoid skin damage while wearing PPE</a></h4><div class="field field--name-field-abstract field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even">Expert advice for nurses on minimising the effects of prolonged use of masks and visors</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">01 May 2020</div></div></div></div>

  </div>
  <div class="views-row views-row-5 views-row-odd views-row-last clickable-row">
    <div  about="/primary-health-care/features/rcn-nurse-of-year-2020-using-cpr-sessions-to-tackle-youth-knife-crime-epidemic-167456" typeof="sioc:Item foaf:Document" class="ds-1col node node--article view-mode-tile_with_abstract_ u--margin-full-bottom node--tile-with-abstract- node--article--tile-with-abstract- clearfix" >

    
      <div class="node__content">
       <div class= "content__free free">Free</div>
    </div>
  <h4 class="field--name-title"><a href="/nursing-standard/features/rcn-nurse-of-year-2020-using-cpr-sessions-to-tackle-youth-knife-crime-epidemic-167456">RCN Nurse of the Year 2020: using CPR sessions to tackle the youth knife crime epidemic</a></h4><div class="field field--name-field-abstract field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even">Ana Waddington’s programme engages both vulnerable young people and healthcare staff</div></div></div><div class="field field--name-post-date field--type-ds field--label-hidden"><div class="field__items"><div class="field__item even">08 Oct 2020</div></div></div></div>

  </div>
    </div>
  
  
  
  
  
  
</div>    </div>
<div class="panel-pane pane-menu-tree pane-menu-journals menu-list-block panel-pane">
                                  <h5 class="pane-title">Journals</h5>
            <!-- Forces template to use title headings attribute set on custom panel panes. -->
          <div class="menu-block-wrapper menu-block-ctools-menu-journals-1 menu-name-menu-journals parent-mlid-0 menu-level-1">
  <ul class="menu"><li class="first leaf menu-mlid-135041"><a href="/cancer-nursing-practice">Cancer Nursing Practice</a></li>
<li class="leaf menu-mlid-135046"><a href="/emergency-nurse">Emergency Nurse</a></li>
<li class="leaf menu-mlid-135056"><a href="/learning-disability-practice">Learning Disability Practice</a></li>
<li class="leaf menu-mlid-135061"><a href="/mental-health-practice">Mental Health Practice</a></li>
<li class="leaf menu-mlid-135066"><a href="/nurse-researcher">Nurse Researcher</a></li>
<li class="leaf menu-mlid-135071"><a href="/nursing-children-and-young-people"> Nursing Children and Young People</a></li>
<li class="leaf menu-mlid-135076"><a href="/nursing-management">Nursing Management</a></li>
<li class="leaf menu-mlid-135081"><a href="/nursing-older-people">Nursing Older People</a></li>
<li class="leaf menu-mlid-135086"><a href="/nursing-standard" class="active">Nursing Standard</a></li>
<li class="last leaf menu-mlid-135091"><a href="/primary-health-care">Primary Health Care</a></li>
</ul></div>
    </div>
<div class="panel-pane pane-menu-tree pane-menu-rcni-websites-menu menu-list-block panel-pane">
                                  <h5 class="pane-title">Other RCNi websites</h5>
            <!-- Forces template to use title headings attribute set on custom panel panes. -->
          <div class="menu-block-wrapper menu-block-ctools-menu-rcni-websites-menu-1 menu-name-menu-rcni-websites-menu parent-mlid-0 menu-level-1">
  <ul class="menu"><li class="first leaf menu-mlid-264796"><a href="https://decisionsupport.rcni.com" target="_blank">RCNi Decision Support</a></li>
<li class="leaf menu-mlid-264801"><a href="https://rcnilearning.com" target="_blank">RCNi Learning</a></li>
<li class="leaf menu-mlid-264811"><a href="/eportfolio" target="_blank">RCNi Portfolio</a></li>
<li class="leaf menu-mlid-326676"><a href="https://rcni.com/nurse-awards">RCNi Nurse Awards</a></li>
<li class="leaf menu-mlid-264786"><a href="https://www.careersandjobsfair.com/" target="_blank">RCNi Nursing Careers and Jobs Fairs</a></li>
<li class="last leaf menu-mlid-264791"><a href="https://www.rcnbulletinjobs.co.uk" target="_blank">RCN Bulletin Jobs</a></li>
</ul></div>
    </div>
</div>
  </div>
</div>
    </div>
</div>
    </div>
    <div class="panel-panel panel-col-main-bottom">
        <div class="inside"></div>
    </div>
  <div class="panel-panel panel-col-bottom">
    <div class="inside"><div class="panel-pane pane-fieldable-panels-pane pane-uuid-d4e0d2ae-d60c-4073-9ae3-8e3a6d0e15be adverts pane-bundle-adverts">
        <div class="fieldable-panels-pane">
    <div class="field field--name-field-advert-code field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even"><!-- BEGIN ADVERTSERVE CODE -->
<div id="avp_zid_52">
<script type="text/javascript">
_avp.push({ tagid: 'avp_zid_52', alias: '/', type: 'banner', zid: 52, pid: 0, inview: true, secure: true });
</script>
</div>
<!-- END ADVERTSERVE CODE --></div></div></div></div>
    </div>
</div>
  </div>
</div>
              </div>

          </div>
  </div>

  <footer class="l-footer" role="contentinfo">
      <div class="l-region l-region--footer">
    <div id="block-rcni-admin-footer-block-journal-1086" class="block block--rcni-admin block--rcni-admin-footer-block-journal-1086">
        <div class="block__content">
    <div class="block-footer-journal-container nursing-standard">
  <div class="logo-container">
    <a href="/nursing-standard" title="Nursing Standard"><img alt="" height="51" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/rcni-ns.png" width="367" /></a>
  </div>

  <div class="menu-links-container">
    <ul class="menu"><li class="first leaf"><a href="/nursing-standard/about-us">About us</a></li>
<li class="leaf"><a href="/nursing-standard/our-editors">Our editors</a></li>
<li class="leaf"><a href="/nursing-standard/our-editorial-advisory-board">Our editorial advisory board</a></li>
<li class="last leaf"><a href="/nursing-standard/submissions">Submissions</a></li>
</ul>
    <div class="menu-links-container-text">
      Nursing Standard is published by RCNi, the publishing company of the Royal College of Nursing    </div>
  </div>

  <div class="social-links-container">
    <ul class="list--unset list--inline | footer__social">
          <li>
          <a href="https://www.instagram.com/nursing_standard/?hl=en" title="Follow us on instagram">
              <span class="icon icon--xlarge icon--instagram"></span><span class="is--hidden">Follow us on instagram</span>
          </a>
      </li>
          <li>
          <a href="https://twitter.com/NurseStandard" title="Follow us on twitter">
              <span class="icon icon--xlarge icon--twitter"></span><span class="is--hidden">Follow us on twitter</span>
          </a>
      </li>
          <li>
          <a href="https://www.facebook.com/NursingStandardJournal/" title="Like us on Facebook">
              <span class="icon icon--xlarge icon--facebook"></span><span class="is--hidden">Like us on Facebook</span>
          </a>
      </li>
        </ul>
  </div>
</div>  </div>
</div>
<div id="block-accordion-menu-1" class="block block--accordion-menu block--accordion-menu-1">
        <div class="block__content">
    <div class="accordion-menu-wrapper accordion-menu-1 accordion-menu-name-footer-sitewide-menu accordion-menu-source-menu-footer-menu">
  <h3 class="accordion-header accordion-header-1 first has-children odd menu-mlid-134991"><span class="accordion-link">RCNi</span></h3>
<div class="accordion-content-1"><ul class="menu"><li class="first leaf"><a href="https://rcni.com/about-us">About us</a></li>
<li class="leaf"><a href="https://rcni.com/journals">Journals</a></li>
<li class="leaf"><a href="https://rcni.com/products-and-services">Products and services</a></li>
<li class="leaf"><a href="https://www.rcn.org.uk/" target="_blank">RCN</a></li>
<li class="last leaf"><a href="https://rcni.com/subscription-queries">Subscription queries</a></li>
</ul></div>
<h3 class="accordion-header accordion-header-2 has-children even menu-mlid-44606"><span class="accordion-link">Contact us</span></h3>
<div class="accordion-content-2"><ul class="menu"><li class="first leaf"><a href="https://rcni.com/contact-customer-services">Contact customer services</a></li>
<li class="leaf"><a href="https://rcni.com/contact-our-events-team">Contact our events team</a></li>
<li class="leaf"><a href="https://rcni.com/contact-our-editors">Contact our editors</a></li>
<li class="last leaf"><a href="https://rcni.com/contact-our-sales-team">Contact our sales team</a></li>
</ul></div>
<h3 class="accordion-header accordion-header-3 has-children odd menu-mlid-134741"><span class="accordion-link">Website information</span></h3>
<div class="accordion-content-3"><ul class="menu"><li class="first leaf"><a href="/accessibility">Accessibility</a></li>
<li class="leaf"><a href="/cookies">Cookies</a></li>
<li class="leaf"><a href="/frequently-asked-questions">Frequently asked questions</a></li>
<li class="leaf"><a href="https://rcni.com/privacy">Privacy</a></li>
<li class="last leaf"><a href="/terms-and-conditions">Terms and conditions</a></li>
</ul></div>
<h3 class="accordion-header accordion-header-4 has-children even menu-mlid-134746"><span class="accordion-link">Opportunities</span></h3>
<div class="accordion-content-4"><ul class="menu"><li class="first leaf"><a href="https://rcni.com/advertising">Advertising</a></li>
<li class="leaf"><a href="https://rcni.com/librarians">Librarians</a></li>
<li class="leaf"><a href="https://www.copyright.com/cccdirect.do?publishername=RCNi&amp;WT.mc.id=RCNi" target="_blank">Permissions</a></li>
<li class="leaf"><a href="https://rcni.com/sponsorship">Sponsorship</a></li>
<li class="leaf"><a href="/write-us">Write for us</a></li>
<li class="last leaf"><a href="/working-rcni">Working for RCNi</a></li>
</ul></div>
<h3 class="accordion-header accordion-header-5 last has-children odd menu-mlid-134051"><span class="accordion-link">Follow us</span></h3>
<div class="accordion-content-5"><ul class="menu"><li class="first leaf"><a href="https://www.facebook.com/RCNiOnline/">Facebook</a></li>
<li class="leaf"><a href="https://www.linkedin.com/company/rcni">LinkedIn</a></li>
<li class="leaf"><a href="https://twitter.com/rcni">Twitter</a></li>
<li class="last leaf"><a href="https://journals.rcni.com/webFeedsRss">RSS feeds</a></li>
</ul></div>
</div>
  </div>
</div>
<nav id="block-menu-block-20" role="navigation" class="block block--menu-block block--menu-block-20">
      
  <div class="menu-block-wrapper menu-block-20 menu-name-menu-footer-menu parent-mlid-0 menu-level-1">
  <ul class="menu"><li class="first expanded menu-mlid-134991"><a href="/">RCNi</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-44596"><a href="https://rcni.com/about-us">About us</a></li>
<li class="leaf menu-mlid-134996"><a href="https://rcni.com/journals">Journals</a></li>
<li class="leaf menu-mlid-134716"><a href="https://rcni.com/products-and-services">Products and services</a></li>
<li class="leaf menu-mlid-112246"><a href="https://www.rcn.org.uk/" target="_blank">RCN</a></li>
<li class="last leaf menu-mlid-134736"><a href="https://rcni.com/subscription-queries">Subscription queries</a></li>
</ul></div></li>
<li class="expanded menu-mlid-44606"><a href="/content/contact-us">Contact us</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-134721"><a href="https://rcni.com/contact-customer-services">Contact customer services</a></li>
<li class="leaf menu-mlid-141321"><a href="https://rcni.com/contact-our-events-team">Contact our events team</a></li>
<li class="leaf menu-mlid-134726"><a href="https://rcni.com/contact-our-editors">Contact our editors</a></li>
<li class="last leaf menu-mlid-134731"><a href="https://rcni.com/contact-our-sales-team">Contact our sales team</a></li>
</ul></div></li>
<li class="expanded menu-mlid-134741"><a href="/">Website information</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-44601"><a href="/accessibility">Accessibility</a></li>
<li class="leaf menu-mlid-44611"><a href="/cookies">Cookies</a></li>
<li class="leaf menu-mlid-44621"><a href="/frequently-asked-questions">Frequently asked questions</a></li>
<li class="leaf menu-mlid-134056"><a href="https://rcni.com/privacy">Privacy</a></li>
<li class="last leaf menu-mlid-44616"><a href="/terms-and-conditions">Terms and conditions</a></li>
</ul></div></li>
<li class="expanded menu-mlid-134746"><a href="/">Opportunities</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-133331"><a href="https://rcni.com/advertising">Advertising</a></li>
<li class="leaf menu-mlid-134751"><a href="https://rcni.com/librarians">Librarians</a></li>
<li class="leaf menu-mlid-154416"><a href="https://www.copyright.com/cccdirect.do?publishername=RCNi&amp;WT.mc.id=RCNi" target="_blank">Permissions</a></li>
<li class="leaf menu-mlid-134756"><a href="https://rcni.com/sponsorship">Sponsorship</a></li>
<li class="leaf menu-mlid-135001"><a href="/write-us">Write for us</a></li>
<li class="last leaf menu-mlid-64836"><a href="/working-rcni">Working for RCNi</a></li>
</ul></div></li>
<li class="last expanded menu-mlid-134051"><a href="/">Follow us</a><div class="nested-menu"><ul class="menu"><li class="first leaf menu-mlid-134711"><a href="https://www.facebook.com/RCNiOnline/">Facebook</a></li>
<li class="leaf menu-mlid-134761"><a href="https://www.linkedin.com/company/rcni">LinkedIn</a></li>
<li class="leaf menu-mlid-134766"><a href="https://twitter.com/rcni">Twitter</a></li>
<li class="last leaf menu-mlid-154406"><a href="https://journals.rcni.com/webFeedsRss">RSS feeds</a></li>
</ul></div></li>
</ul></div>
</nav>
<div id="block-block-356" class="block block--block menu-block-wrapper rcni-logo-footer block--block-356">
        <div class="block__content">
    <p><br />
<a href="/"><img data-image-style="ckeditor_image_style" height="82" width="222" typeof="foaf:Image" data-echo="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/ckeditor_image_style/public/rc-ni-logo-white2x.png?itok=VnaFiKM8" data-icon="" class="lazyloader ckeditor_image_style" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/modules/patched/lazyloader/image_placeholder.gif" alt="RCNi" title="" /><noscript><img data-image-style="ckeditor_image_style" height="82" width="222" typeof="foaf:Image" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/styles/ckeditor_image_style/public/rc-ni-logo-white2x.png?itok=VnaFiKM8" alt="RCNi" title="" /></noscript></a></p>

<p>© <a href="/">RCNi 2020</a><a href="#" id="back-to-top-footer">Back to the top</a></p>
  </div>
</div>
<div id="block-panels-mini-ns-footer-crawler" class="block block--panels-mini block--panels-mini-ns-footer-crawler">
        <div class="block__content">
    <div class="panel-display panel-1col clearfix" id="mini-panel-ns_footer_crawler">
  <div class="panel-panel panel-col">
    <div><div class="panel-pane pane-fieldable-panels-pane pane-current-1041 pane-bundle-adverts">
        <div class="fieldable-panels-pane">
    <div class="field field--name-field-advert-code field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even"><!-- BEGIN ADVERTSERVE CODE -->
<div id="avp_zid_77" class="crawler">
<script type="text/javascript">
if (!document.cookie || document.cookie.indexOf('crawler_hide') == -1) {
_avp.push({ tagid: 'avp_zid_77', alias: '/', type: 'banner', zid: 77, pid: 0, polite: true, crawler: true, closeable : true,  stylesheet: 'https://rcni.com/sites/all/themes/rcni/css/rcni.advertserve.css', secure: true });
}
</script>
</div>
<!-- END ADVERTSERVE CODE --></div></div></div></div>
    </div>
<div class="panel-pane pane-fieldable-panels-pane pane-uuid-5716baba-a9b9-49cc-8ce0-f5d930b9f38b pane-bundle-adverts">
        <div class="fieldable-panels-pane">
    <div class="field field--name-field-advert-code field--type-text-long field--label-hidden"><div class="field__items"><div class="field__item even"><!-- BEGIN ADVERTSERVE CODE -->
<script type="text/javascript">
if (!document.cookie || document.cookie.indexOf('shoutbox_hide') == -1) {
  document.write('<scr'+'ipt src="https://rcni.advertserve.com/servlet/view/banner/javascript/zone?zid=154&pid=0&shoutbox=true&align=right&closeable=true&polite=true&resolution='+(window.innerWidth||screen.width)+'x'+(window.innerHeight||screen.height)+'&random='+Math.floor(89999999*Math.random()+10000000)+'&millis='+new Date().getTime()+'&referrer='+encodeURIComponent((window!=top&&window.location.ancestorOrigins)?window.location.ancestorOrigins[window.location.ancestorOrigins.length-1]:document.location)+'" type="text/javascript"></scr'+'ipt>');
}
</script>
<!-- END ADVERTSERVE CODE --></div></div></div></div>
    </div>
</div>
  </div>
</div>
  </div>
</div>
  </div>
  </footer>
</div>
      <script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__oIWpDXg-ej07lbhWPAGONOhbcIqdI8nRjMOk757xfzs__9vqhZ8VvcfwSjGQaJkTu0DW4gWH0vF9BF5k14z7CXJw__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js"></script>
<script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__GM3GJPR36rRIz0TRkjC5OQwrioSyN9aoYRivDhCO_AM__qAl84FcCv2jyN22yFGS5Oc85cjd9zKX6p_cFNLGhe-M__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js" async="async"></script>
<script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__UU0WTAMUR67volecqks6e0ryIE55ycTVHk0k5wjLjas__75Ohc1Ml_JhAbi-cdYfu0BSSggFjQoqg8btn53i_K-4__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js"></script>

<!--[if (gte IE 6)&(lte IE 8)]>
<script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__Bjn-hrdr7LA6_cq3O-tQpUaaG1U2bVs_EDfNSC-qyYo__U2rES-LtsrCM8KOPQhM5dpEu-ASuNTCuAysCLXok6So__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js"></script>
<![endif]-->
<script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__vKFDPpsLYDD3J9tkE_wMdeZcpBWeJgLVLnTaVpULC8Q__7JYhQcQ7kb_t3ahqFkF821raX_I3UFMm8O8FY_oaAf0__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js"></script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
jQuery(function() {
  jQuery('.accordion-menu-5').accordion({ animate: 'swing', collapsible: true, event: 'mousedown', header: 'span', heightStyle: 'content', icons: { header: 'ui-icon-triangle-1-e', activeHeader: 'ui-icon-triangle-1-s' }, active: false });
  jQuery('.accordion-menu-5 .accordion-header.no-children').each(function(index, element) {
    jQuery(this)
      .unbind()
      .children('.ui-icon')
      .removeClass('ui-icon-triangle-1-e')
      .addClass('ui-icon-triangle-1-s');
  });
});
//--><!]]>
</script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
jQuery(function() {
  jQuery('.accordion-menu-4').accordion({ animate: false, collapsible: true, event: 'mousedown', header: 'span', heightStyle: 'content', icons: { header: 'ui-icon-triangle-1-e', activeHeader: 'ui-icon-triangle-1-s' }, active: false });
  jQuery('.accordion-menu-4 .accordion-header.no-children').each(function(index, element) {
    jQuery(this)
      .unbind()
      .children('.ui-icon')
      .removeClass('ui-icon-triangle-1-e')
      .addClass('ui-icon-triangle-1-s');
  });
});
//--><!]]>
</script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
jQuery(function() {
  jQuery('.accordion-menu-1').accordion({ animate: 'swing', collapsible: true, event: 'mousedown', header: 'h3', heightStyle: 'content', icons: { header: 'ui-icon-triangle-1-e', activeHeader: 'ui-icon-triangle-1-s' }, active: false });
  jQuery('.accordion-menu-1 .accordion-header.no-children').each(function(index, element) {
    jQuery(this)
      .unbind()
      .children('.ui-icon')
      .removeClass('ui-icon-triangle-1-e')
      .addClass('ui-icon-triangle-1-s');
  });
});
//--><!]]>
</script>
<script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__g9Btny1YEV8DlblAWuKqU9TIlLBye34CX8YGelxu_Ro__qltFgLuS5P0zvvAKPrAGEke2hjo7L0YIFwlJuOKj2Cg__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js"></script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
function euCookieComplianceLoadScripts() {}
//--><!]]>
</script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
var eu_cookie_compliance_cookie_name = "";
//--><!]]>
</script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
window.grunticon=function(e){if(e&&3===e.length){var t=window,n=!(!t.document.createElementNS||!t.document.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect||!document.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#Image","1.1")||window.opera&&-1===navigator.userAgent.indexOf("Chrome")),o=function(o){var r=t.document.createElement("link"),a=t.document.getElementsByTagName("script")[0];r.rel="stylesheet",r.href=e[o&&n?0:o?1:2],a.parentNode.insertBefore(r,a)},r=new t.Image;r.onerror=function(){o(!1)},r.onload=function(){o(1===r.width&&1===r.height)},r.src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw=="}};grunticon(["https://rcni.com/sites/all/themes/rcni/grunticon/icons.data.svg.css?v=2", "https://rcni.com/sites/all/themes/rcni/grunticon/icons.data.png.css?v=2", "https://rcni.com/sites/all/themes/rcni/grunticon/icons.fallback.css?v=2"]);
//--><!]]>
</script>
<script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__CP2q7brdF9S_QjS0RQ8FXEkK_KxQWG2_vqSHdrDmWAQ__99RFpHHtaJRLWOWJrf3sfjagFSz2N6e8m_RL2WEz_lc__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js" defer="defer"></script>
<script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__WcTpt-w0y1FyXrxZNriX8Ts1KjsFTDpdvZaw9yhRn24__aFJpdvsZPb1v9rWrq-WXbz_WQ9IThQN-mFTCdm1cfXc__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js"></script>
<script type="text/javascript" src="//dm1zcrsul8wju.cloudfront.net/sites/rcn_nspace/files/advagg_js/js__a_7J3P_-5QYn3E6lFu2q16y2vpgqWCyjOb3sRCUK9GQ__d0N2DsKF9prjob19jVk0AcWBSrULg937yBY84Rh1dAE__WaKq2tzjHS6FieHsVNJkjMwBN_L9HV24J6rXGgfIbXw.js" defer="defer"></script>
    <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"309402312b","applicationID":"5716227","transactionName":"MQQHZhdUWEtQUBcIDAhOJFERXFlWHkMCBgY5DARcBFJTSm5DAgYGOQQdVwZAQl0=","queueTime":0,"applicationTime":1424,"atts":"HUMEEF9OS0U=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
