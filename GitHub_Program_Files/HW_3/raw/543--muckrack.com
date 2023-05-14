






<!doctype html>
<html lang="en">
    <head>
        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VwcDWFVACwQIUVFQ",licenseKey:"8539532b2b",applicationID:"378502"};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var i=e[n]={exports:{}};t[n][0].call(i.exports,function(e){var i=t[n][1][e];return r(i||e)},i,i.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(t,e,n){function r(t){try{c.console&&console.log(t)}catch(e){}}var i,o=t("ee"),a=t(23),c={};try{i=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(c.console=!0,i.indexOf("dev")!==-1&&(c.dev=!0),i.indexOf("nr_dev")!==-1&&(c.nrDev=!0))}catch(s){}c.nrDev&&o.on("internal-error",function(t){r(t.stack)}),c.dev&&o.on("fn-err",function(t,e,n){r(n.stack)}),c.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(c,function(t,e){return t}).join(", ")))},{}],2:[function(t,e,n){function r(t,e,n,r,c){try{p?p-=1:i(c||new UncaughtException(t,e,n),!0)}catch(f){try{o("ierr",[f,s.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function i(t,e){var n=e?null:s.now();o("err",[t,n])}var o=t("handle"),a=t(24),c=t("ee"),s=t("loader"),f=t("gos"),u=window.onerror,d=!1,l="nr@seenError",p=0;s.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(9),t(8),"addEventListener"in window&&t(5),s.xhrWrappable&&t(10),d=!0)}c.on("fn-start",function(t,e,n){d&&(p+=1)}),c.on("fn-err",function(t,e,n){d&&!n[l]&&(f(n,l,function(){return!0}),this.thrown=!0,i(n))}),c.on("fn-end",function(){d&&!this.thrown&&p>0&&(p-=1)}),c.on("internal-error",function(t){o("ierr",[t,s.now(),!0])})},{}],3:[function(t,e,n){t("loader").features.ins=!0},{}],4:[function(t,e,n){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var i=t("ee"),o=t("handle"),a=t(9),c=t(8),s="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",g="pushState",y=t("loader");y.features.stn=!0,t(7),"addEventListener"in window&&t(5);var x=NREUM.o.EV;i.on(m,function(t,e){var n=t[0];n instanceof x&&(this.bstStart=y.now())}),i.on(w,function(t,e){var n=t[0];n instanceof x&&o("bst",[n,e,this.bstStart,y.now()])}),a.on(m,function(t,e,n){this.bstStart=y.now(),this.bstType=n}),a.on(w,function(t,e){o(v,[e,this.bstStart,y.now(),this.bstType])}),c.on(m,function(){this.bstStart=y.now()}),c.on(w,function(t,e){o(v,[e,this.bstStart,y.now(),"requestAnimationFrame"])}),i.on(g+p,function(t){this.time=y.now(),this.startPath=location.pathname+location.hash}),i.on(g+h,function(t){o("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+s]?window.performance[f](u,function(t){o(d,[window.performance.getEntriesByType(l)]),window.performance["c"+s]()},!1):window.performance[f]("webkit"+u,function(t){o(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+s]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,e,n){function r(t){for(var e=t;e&&!e.hasOwnProperty(u);)e=Object.getPrototypeOf(e);e&&i(e)}function i(t){c.inPlace(t,[u,d],"-",o)}function o(t,e){return t[1]}var a=t("ee").get("events"),c=t("wrap-function")(a,!0),s=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";e.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(i(window),i(f.prototype)),a.on(u+"-start",function(t,e){var n=t[1],r=s(n,"nr@wrapped",function(){function t(){if("function"==typeof n.handleEvent)return n.handleEvent.apply(n,arguments)}var e={object:t,"function":n}[typeof n];return e?c(e,"fn-",null,e.name||"anonymous"):n});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,e,n){function r(t,e,n){var r=t[e];"function"==typeof r&&(t[e]=function(){var t=o(arguments),e={};i.emit(n+"before-start",[t],e);var a;e[m]&&e[m].dt&&(a=e[m].dt);var c=r.apply(this,t);return i.emit(n+"start",[t,a],c),c.then(function(t){return i.emit(n+"end",[null,t],c),t},function(t){throw i.emit(n+"end",[t],c),t})})}var i=t("ee").get("fetch"),o=t(24),a=t(23);e.exports=i;var c=window,s="fetch-",f=s+"body-",u=["arrayBuffer","blob","json","text","formData"],d=c.Request,l=c.Response,p=c.fetch,h="prototype",m="nr@context";d&&l&&p&&(a(u,function(t,e){r(d[h],e,f),r(l[h],e,f)}),r(c,"fetch",s),i.on(s+"end",function(t,e){var n=this;if(e){var r=e.headers.get("content-length");null!==r&&(n.rxSize=r),i.emit(s+"done",[null,e],n)}else i.emit(s+"done",[t],n)}))},{}],7:[function(t,e,n){var r=t("ee").get("history"),i=t("wrap-function")(r);e.exports=r;var o=window.history&&window.history.constructor&&window.history.constructor.prototype,a=window.history;o&&o.pushState&&o.replaceState&&(a=o),i.inPlace(a,["pushState","replaceState"],"-")},{}],8:[function(t,e,n){var r=t("ee").get("raf"),i=t("wrap-function")(r),o="equestAnimationFrame";e.exports=r,i.inPlace(window,["r"+o,"mozR"+o,"webkitR"+o,"msR"+o],"raf-"),r.on("raf-start",function(t){t[0]=i(t[0],"fn-")})},{}],9:[function(t,e,n){function r(t,e,n){t[0]=a(t[0],"fn-",null,n)}function i(t,e,n){this.method=n,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,n)}var o=t("ee").get("timer"),a=t("wrap-function")(o),c="setTimeout",s="setInterval",f="clearTimeout",u="-start",d="-";e.exports=o,a.inPlace(window,[c,"setImmediate"],c+d),a.inPlace(window,[s],s+d),a.inPlace(window,[f,"clearImmediate"],f+d),o.on(s+u,r),o.on(c+u,i)},{}],10:[function(t,e,n){function r(t,e){d.inPlace(e,["onreadystatechange"],"fn-",c)}function i(){var t=this,e=u.context(t);t.readyState>3&&!e.resolved&&(e.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,g,"fn-",c)}function o(t){y.push(t),h&&(b?b.then(a):w?w(a):(E=-E,R.data=E))}function a(){for(var t=0;t<y.length;t++)r([],y[t]);y.length&&(y=[])}function c(t,e){return e}function s(t,e){for(var n in t)e[n]=t[n];return e}t(5);var f=t("ee"),u=f.get("xhr"),d=t("wrap-function")(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",g=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],y=[];e.exports=u;var x=window.XMLHttpRequest=function(t){var e=new p(t);try{u.emit("new-xhr",[e],e),e.addEventListener(v,i,!1)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}return e};if(s(p,x),x.prototype=p.prototype,d.inPlace(x.prototype,["open","send"],"-xhr-",c),u.on("send-xhr-start",function(t,e){r(t,e),o(e)}),u.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!w&&!m){var E=1,R=document.createTextNode(E);new h(a).observe(R,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],11:[function(t,e,n){function r(t){if(!c(t))return null;var e=window.NREUM;if(!e.loader_config)return null;var n=(e.loader_config.accountID||"").toString()||null,r=(e.loader_config.agentID||"").toString()||null,f=(e.loader_config.trustKey||"").toString()||null;if(!n||!r)return null;var h=p.generateSpanId(),m=p.generateTraceId(),w=Date.now(),v={spanId:h,traceId:m,timestamp:w};return(t.sameOrigin||s(t)&&l())&&(v.traceContextParentHeader=i(h,m),v.traceContextStateHeader=o(h,w,n,r,f)),(t.sameOrigin&&!u()||!t.sameOrigin&&s(t)&&d())&&(v.newrelicHeader=a(h,m,w,n,r,f)),v}function i(t,e){return"00-"+e+"-"+t+"-01"}function o(t,e,n,r,i){var o=0,a="",c=1,s="",f="";return i+"@nr="+o+"-"+c+"-"+n+"-"+r+"-"+t+"-"+a+"-"+s+"-"+f+"-"+e}function a(t,e,n,r,i,o){var a="btoa"in window&&"function"==typeof window.btoa;if(!a)return null;var c={v:[0,1],d:{ty:"Browser",ac:r,ap:i,id:t,tr:e,ti:n}};return o&&r!==o&&(c.d.tk=o),btoa(JSON.stringify(c))}function c(t){return f()&&s(t)}function s(t){var e=!1,n={};if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(n=NREUM.init.distributed_tracing),t.sameOrigin)e=!0;else if(n.allowed_origins instanceof Array)for(var r=0;r<n.allowed_origins.length;r++){var i=h(n.allowed_origins[r]);if(t.hostname===i.hostname&&t.protocol===i.protocol&&t.port===i.port){e=!0;break}}return e}function f(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.enabled}function u(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.exclude_newrelic_header}function d(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&NREUM.init.distributed_tracing.cors_use_newrelic_header!==!1}function l(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.cors_use_tracecontext_headers}var p=t(20),h=t(13);e.exports={generateTracePayload:r,shouldGenerateTrace:c}},{}],12:[function(t,e,n){function r(t){var e=this.params,n=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<l;r++)t.removeEventListener(d[r],this.listener,!1);e.aborted||(n.duration=a.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==e.status&&(e.status=0):o(this,t),n.cbTime=this.cbTime,u.emit("xhr-done",[t],t),c("xhr",[e,n,this.startTime]))}}function i(t,e){var n=s(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.parsedOrigin=s(e),t.sameOrigin=t.parsedOrigin.sameOrigin}function o(t,e){t.params.status=e.status;var n=w(e,t.lastSize);if(n&&(t.metrics.rxSize=n),t.sameOrigin){var r=e.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var a=t("loader");if(a.xhrWrappable){var c=t("handle"),s=t(13),f=t(11).generateTracePayload,u=t("ee"),d=["load","error","abort","timeout"],l=d.length,p=t("id"),h=t(17),m=t(16),w=t(14),v=window.XMLHttpRequest;a.features.xhr=!0,t(10),t(6),u.on("new-xhr",function(t){var e=this;e.totalCbs=0,e.called=0,e.cbTime=0,e.end=r,e.ended=!1,e.xhrGuids={},e.lastSize=null,e.loadCaptureCalled=!1,t.addEventListener("load",function(n){o(e,t)},!1),h&&(h>34||h<10)||window.opera||t.addEventListener("progress",function(t){e.lastSize=t.loaded},!1)}),u.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),u.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var n=f(this.parsedOrigin);if(n){var r=!1;n.newrelicHeader&&(e.setRequestHeader("newrelic",n.newrelicHeader),r=!0),n.traceContextParentHeader&&(e.setRequestHeader("traceparent",n.traceContextParentHeader),n.traceContextStateHeader&&e.setRequestHeader("tracestate",n.traceContextStateHeader),r=!0),r&&(this.dt=n)}}),u.on("send-xhr-start",function(t,e){var n=this.metrics,r=t[0],i=this;if(n&&r){var o=m(r);o&&(n.txSize=o)}this.startTime=a.now(),this.listener=function(t){try{"abort"!==t.type||i.loadCaptureCalled||(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof e.onload))&&i.end(e)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}};for(var c=0;c<l;c++)e.addEventListener(d[c],this.listener,!1)}),u.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),u.on("xhr-load-added",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),u.on("xhr-load-removed",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),u.on("addEventListener-end",function(t,e){e instanceof v&&"load"===t[0]&&u.emit("xhr-load-added",[t[1],t[2]],e)}),u.on("removeEventListener-end",function(t,e){e instanceof v&&"load"===t[0]&&u.emit("xhr-load-removed",[t[1],t[2]],e)}),u.on("fn-start",function(t,e,n){e instanceof v&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),u.on("fn-end",function(t,e){this.xhrCbStart&&u.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,e],e)}),u.on("fetch-before-start",function(t){function e(t,e){var n=!1;return e.newrelicHeader&&(t.set("newrelic",e.newrelicHeader),n=!0),e.traceContextParentHeader&&(t.set("traceparent",e.traceContextParentHeader),e.traceContextStateHeader&&t.set("tracestate",e.traceContextStateHeader),n=!0),n}var n,r=t[1]||{};"string"==typeof t[0]?n=t[0]:t[0]&&t[0].url&&(n=t[0].url),n&&(this.parsedOrigin=s(n),this.sameOrigin=this.parsedOrigin.sameOrigin);var i=f(this.parsedOrigin);if(i&&(i.newrelicHeader||i.traceContextParentHeader))if("string"==typeof t[0]){var o={};for(var a in r)o[a]=r[a];o.headers=new Headers(r.headers||{}),e(o.headers,i)&&(this.dt=i),t.length>1?t[1]=o:t.push(o)}else t[0]&&t[0].headers&&e(t[0].headers,i)&&(this.dt=i)})}},{}],13:[function(t,e,n){var r={};e.exports=function(t){if(t in r)return r[t];var e=document.createElement("a"),n=window.location,i={};e.href=t,i.port=e.port;var o=e.href.split("://");!i.port&&o[1]&&(i.port=o[1].split("/")[0].split("@").pop().split(":")[1]),i.port&&"0"!==i.port||(i.port="https"===o[0]?"443":"80"),i.hostname=e.hostname||n.hostname,i.pathname=e.pathname,i.protocol=o[0],"/"!==i.pathname.charAt(0)&&(i.pathname="/"+i.pathname);var a=!e.protocol||":"===e.protocol||e.protocol===n.protocol,c=e.hostname===document.domain&&e.port===n.port;return i.sameOrigin=a&&(!e.hostname||c),"/"===i.pathname&&(r[t]=i),i}},{}],14:[function(t,e,n){function r(t,e){var n=t.responseType;return"json"===n&&null!==e?e:"arraybuffer"===n||"blob"===n||"json"===n?i(t.response):"text"===n||""===n||void 0===n?i(t.responseText):void 0}var i=t(16);e.exports=r},{}],15:[function(t,e,n){function r(){}function i(t,e,n){return function(){return o(t,[f.now()].concat(c(arguments)),e?null:this,n),e?void 0:this}}var o=t("handle"),a=t(23),c=t(24),s=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,e){u[e]=i(l+e,!0,"api")}),u.addPageAction=i(l+"addPageAction",!0),u.setCurrentRouteName=i(l+"routeName",!0),e.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,e){var n={},r=this,i="function"==typeof e;return o(p+"tracer",[f.now(),t,n],r),function(){if(s.emit((i?"":"no-")+"fn-start",[f.now(),r,i],n),i)try{return e.apply(this,arguments)}catch(t){throw s.emit("fn-err",[arguments,this,t],n),t}finally{s.emit("fn-end",[f.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){h[e]=i(p+e)}),newrelic.noticeError=function(t,e){"string"==typeof t&&(t=new Error(t)),o("err",[t,f.now(),!1,e])}},{}],16:[function(t,e,n){e.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(e){return}}}},{}],17:[function(t,e,n){var r=0,i=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);i&&(r=+i[1]),e.exports=r},{}],18:[function(t,e,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,c=t(25);e.exports=r,e.exports.offset=a,e.exports.getLastTimestamp=i},{}],19:[function(t,e,n){function r(t,e){var n=t.getEntries();n.forEach(function(t){"first-paint"===t.name?d("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&d("timing",["fcp",Math.floor(t.startTime)])})}function i(t,e){var n=t.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(t){t.getEntries().forEach(function(t){t.hadRecentInput||d("cls",[t])})}function a(t){if(t instanceof h&&!w){var e=Math.round(t.timeStamp),n={type:t.type};e<=l.now()?n.fid=l.now()-e:e>l.offset&&e<=Date.now()?(e-=l.offset,n.fid=l.now()-e):e=l.now(),w=!0,d("timing",["fi",e,n])}}function c(t){d("pageHide",[l.now(),t])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var s,f,u,d=t("handle"),l=t("loader"),p=t(22),h=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){s=new PerformanceObserver(r);try{s.observe({entryTypes:["paint"]})}catch(m){}f=new PerformanceObserver(i);try{f.observe({entryTypes:["largest-contentful-paint"]})}catch(m){}u=new PerformanceObserver(o);try{u.observe({type:"layout-shift",buffered:!0})}catch(m){}}if("addEventListener"in document){var w=!1,v=["click","keydown","mousedown","pointerdown","touchstart"];v.forEach(function(t){document.addEventListener(t,a,!1)})}p(c)}},{}],20:[function(t,e,n){function r(){function t(){return e?15&e[n++]:16*Math.random()|0}var e=null,n=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(e=r.getRandomValues(new Uint8Array(31)));for(var i,o="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",c=0;c<o.length;c++)i=o[c],"x"===i?a+=t().toString(16):"y"===i?(i=3&t()|8,a+=i.toString(16)):a+=i;return a}function i(){return a(16)}function o(){return a(32)}function a(t){function e(){return n?15&n[r++]:16*Math.random()|0}var n=null,r=0,i=window.crypto||window.msCrypto;i&&i.getRandomValues&&Uint8Array&&(n=i.getRandomValues(new Uint8Array(31)));for(var o=[],a=0;a<t;a++)o.push(e().toString(16));return o.join("")}e.exports={generateUuid:r,generateSpanId:i,generateTraceId:o}},{}],21:[function(t,e,n){function r(t,e){if(!i)return!1;if(t!==i)return!1;if(!e)return!0;if(!o)return!1;for(var n=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,s=c.match(a);s&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(i="Safari",o=s[1])}e.exports={agent:i,version:o,match:r}},{}],22:[function(t,e,n){function r(t){function e(){t(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,e,!1)}e.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],23:[function(t,e,n){function r(t,e){var n=[],r="",o=0;for(r in t)i.call(t,r)&&(n[o]=e(r,t[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],24:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,i=n-e||0,o=Array(i<0?0:i);++r<i;)o[r]=t[e+r];return o}e.exports=r},{}],25:[function(t,e,n){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,e,n){function r(){}function i(t){function e(t){return t&&t instanceof r?t:t?s(t,c,o):o()}function n(n,r,i,o){if(!l.aborted||o){t&&t(n,r,i);for(var a=e(i),c=m(n),s=c.length,f=0;f<s;f++)c[f].apply(a,r);var d=u[y[n]];return d&&d.push([x,n,r,a]),a}}function p(t,e){g[t]=m(t).concat(e)}function h(t,e){var n=g[t];if(n)for(var r=0;r<n.length;r++)n[r]===e&&n.splice(r,1)}function m(t){return g[t]||[]}function w(t){return d[t]=d[t]||i(n)}function v(t,e){f(t,function(t,n){e=e||"feature",y[n]=e,e in u||(u[e]=[])})}var g={},y={},x={on:p,addEventListener:p,removeEventListener:h,emit:n,get:w,listeners:m,context:e,buffer:v,abort:a,aborted:!1};return x}function o(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var c="nr@context",s=t("gos"),f=t(23),u={},d={},l=e.exports=i();l.backlog=u},{}],gos:[function(t,e,n){function r(t,e,n){if(i.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return t[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){i.buffer([t],r),i.emit(t,e,n)}var i=t("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,o,function(){return i++})}var i=1,o="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!b++){var t=x.info=NREUM.info,e=l.getElementsByTagName("script")[0];if(setTimeout(f.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&e))return f.abort();s(g,function(e,n){t[e]||(t[e]=n)});var n=a();c("mark",["onload",n+x.offset],null,"api"),c("timing",["load",n]);var r=l.createElement("script");r.src="https://"+t.agent,e.parentNode.insertBefore(r,e)}}function i(){"complete"===l.readyState&&o()}function o(){c("mark",["domContent",a()+x.offset],null,"api")}var a=t(18),c=t("handle"),s=t(23),f=t("ee"),u=t(21),d=window,l=d.document,p="addEventListener",h="attachEvent",m=d.XMLHttpRequest,w=m&&m.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:m,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var v=""+location,g={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1184.min.js"},y=m&&w&&w[p]&&!/CriOS/.test(navigator.userAgent),x=e.exports={offset:a.getLastTimestamp(),now:a,origin:v,features:{},xhrWrappable:y,userAgent:u};t(15),t(19),l[p]?(l[p]("DOMContentLoaded",o,!1),d[p]("load",r,!1)):(l[h]("onreadystatechange",i),d[h]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var b=0},{}],"wrap-function":[function(t,e,n){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var i=t("ee"),o=t(24),a="nr@original",c=Object.prototype.hasOwnProperty,s=!1;e.exports=function(t,e){function n(t,e,n,i){function nrWrapper(){var r,a,c,s;try{a=this,r=o(arguments),c="function"==typeof n?n(r,a):n||{}}catch(f){l([f,"",[r,a,i],c])}u(e+"start",[r,a,i],c);try{return s=t.apply(a,r)}catch(d){throw u(e+"err",[r,a,d],c),d}finally{u(e+"end",[r,a,s],c)}}return r(t)?t:(e||(e=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,e,i,o){i||(i="");var a,c,s,f="-"===i.charAt(0);for(s=0;s<e.length;s++)c=e[s],a=t[c],r(a)||(t[c]=n(a,f?c+i:i,o,c))}function u(n,r,i){if(!s||e){var o=s;s=!0;try{t.emit(n,r,i,e)}catch(a){l([a,n,r,i])}s=o}}function d(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){l([r])}for(var i in t)c.call(t,i)&&(e[i]=t[i]);return e}function l(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=i),n.inPlace=f,n.flag=a,n}},{}]},{},["loader",2,12,4,3]);</script><script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"8539532b2b","applicationID":"378502","transactionName":"YlVXbEBSDxFSV0ILDVsfc01cUBULXFoZDxdWW0dZUVhPBlpGUwEWWkJMFkRaBBVAGkYHEEZfW2dEWgQVQA5GBxBGX1tnRFoEFQ==","queueTime":0,"applicationTime":492,"agent":""}</script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        
        <title>Julie Butcher | CityWatchLA Journalist | Muck Rack</title>
        <meta name="description" content="Find Julie Butcher&#x27;s articles, email address, contact information, Twitter and more">

        
        <meta property="og:image" content="https://pbs.twimg.com/profile_images/928513081667235841/vFFL4-my_reasonably_small.jpg">
        <meta property="og:description" content="Find Julie Butcher&#x27;s articles, email address, contact information, Twitter and more">

        
        <meta name="msvalidate.01" content="16E16AE4D21A3F876B78F1CE4BB32CC2">
        <meta name="google-site-verification" content="0lI5wE4iBjdS_zMZMTvucRaMXg-yTOKlAlk7O-4kJ60">

        
        <meta name="apple-mobile-web-app-title" content="Muck Rack">

        
        <link rel="icon" type="image/png" href="https://cdn.muckrack.com/static/images/favicon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="https://cdn.muckrack.com/static/images/favicon-128x128.png">
        <link rel="apple-touch-icon" sizes="256x256" href="https://cdn.muckrack.com/static/images/favicon-256x256.png">

        
        
    <link rel="canonical" href="https://muckrack.com/julie-butcher">


        
        <link rel="preload" href="https://cdn.muckrack.com/static/webfonts/fontawesome/fa-solid-900.woff2?dfysfket" as="font" type="font/woff2" crossorigin>
<link rel="preload" href="https://cdn.muckrack.com/static/webfonts/fontawesome/fa-brands-400.woff2?dfysfket" as="font" type="font/woff2" crossorigin>


        
        

    
            <link rel="stylesheet" href="https://cdn.muckrack.com/static/compressed/css/output.41cfcad92f0f.css" type="text/css">
        
    <link rel="stylesheet" href="https://cdn.muckrack.com/static/compressed/css/output.758da9d45fdd.css" type="text/css">

<link rel="stylesheet" href="https://cdn.muckrack.com/static/compressed/css/output.76b8323c8f4a.css" type="text/css">


        
        <link type="text/plain" rel="author" href="/humans.txt">

        
        <script type='text/javascript'>window.q=[];window.$=function(f){q.push(f);};</script>

        
        

        
        
            
                <!-- Google Tag Manager -->
<script>
    // Push app data to GTM
    var gtmData = {
        isAuthenticatedUser: 'false'
    };

    

    window.dataLayer = window.dataLayer || [];
    window.dataLayer.push(gtmData);
</script>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-K3JWW8V');</script>
<!-- End Google Tag Manager -->

                <script>
    
</script>

            
        

        
        
    </head>
    <body class="">
        
        
            <script async defer src="https://connect.facebook.net/en_US/sdk.js"></script>

        

        
        
            <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K3JWW8V"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>

        

        
    
    
        <div class="mr-navbar-primary navbar navbar-inverse navbar-fixed-top js-navbar-primary" role="navigation">
    <div class="container">
        
        <div class="row">
            <div class="col-xs-12">
        
        
        <button class="navbar-toggle collapsed"
            type="button"
            data-toggle="collapse"
            data-target=".js-navbar-collapsible"
        >
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        
        <a class="navbar-brand render-svg-link" href="/">
            
                <img src="https://cdn.muckrack.com/static/images/branding/logos/web/mr-logo-horizontal-blue-lightest.svg" alt="Muck Rack" width="170">
            
        </a>
        
            
        
        
        <div class="navbar-collapse collapse js-navbar-collapsible">
            
            
                
            
            
            

<ul class="nav navbar-nav navbar-right">
    
    
        <li class="dropdown">
            <a class="dropdown-toggle"
                href="#!"
                data-toggle="dropdown"
                role="button"
                aria-haspopup="true">
                For PR Pros <span class="caret"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-small dropdown-menu-left">
                <li>
                    <a href="/overview">Overview</a>
                </li>
                <li>
                    <a href="/media-database">Media Database</a>
                </li>
                <li>
                    <a href="/media-monitoring-alerts">Monitoring and Alerts</a>
                </li>
                <li>
                    <a href="/pitching-outreach">Pitching</a>
                </li>
                <li>
                    <a href="/collaboration">Collaboration</a>
                </li>
                <li>
                    <a href="/reporting-measurement">Reporting and Measurement</a>
                </li>
                
            </ul>
        </li>
        <li>
            <a href="/journalists">For Journalists</a>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle"
                href="#!"
                data-toggle="dropdown"
                role="button"
                aria-haspopup="true">
                Resources <span class="caret"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-small dropdown-menu-right">
                <li>
                    <a href="/case-studies">Case Studies</a>
                </li>
                <li>
                    <a href="/webinars">Webinars</a>
                </li>
                <li>
                    <a href="/guides">Guides and eBooks</a>
                </li>
                <li>
                    <a href="/research">Research</a>
                </li>
                <li>
                    <a href="https://academy.muckrack.com">Muck Rack Academy</a>
                </li>
                <li >
                    <a href="/daily">Muck Rack Daily</a>
                </li>
                <li>
                    <a href="/blog">Blog</a>
                </li>
                <li>
                    <a href="/rankings">Rankings</a>
                </li>
                <li>
                    <a href="/trends/">Trends</a>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle"
                href="#!"
                data-toggle="dropdown"
                role="button"
                aria-haspopup="true">
                Company <span class="caret"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-small dropdown-menu-right">
                <li>
                    <a href="/about">About</a>
                </li>
                <li>
                    <a href="/in-the-news">Press</a>
                </li>
                <li>
                    <a href="/careers">Careers</a>
                </li>
                <li>
                    <a href="/contact">Contact</a>
                </li>
            </ul>
        </li>
        
            <li>
                <a href="/account/login/?next=/julie-butcher">Log In</a>
            </li>
            <li>
                <a class="btn btn-sm btn-blue" href="/request-demo">Request Demo</a>
            </li>
        
    
</ul>

        </div>
        
            </div>
        </div>
        
    </div>
</div>

    
    
    
    
        <div class="mr-banner mr-font-size-base bg-blue">
    <div class="mr-banner-text color-navy-2">
        
    Introducing Trends: visualize news in real-time and discover top authors or outlets.

    </div>
    <div class="mr-banner-cta">
        
    <!--HubSpot Call-to-Action Code --><span class="hs-cta-wrapper" id="hs-cta-wrapper-f6910755-7e62-400c-adc4-5f6154cb0b6b"><span class="hs-cta-node hs-cta-f6910755-7e62-400c-adc4-5f6154cb0b6b" id="hs-cta-f6910755-7e62-400c-adc4-5f6154cb0b6b"><!--[if lte IE 8]><div id="hs-cta-ie-element"></div><![endif]--><a href="https://cta-redirect.hubspot.com/cta/redirect/4272994/f6910755-7e62-400c-adc4-5f6154cb0b6b"  target="_blank" ><img class="hs-cta-img" id="hs-cta-img-f6910755-7e62-400c-adc4-5f6154cb0b6b" style="border-width:0px;" src="https://no-cache.hubspot.com/cta/default/4272994/f6910755-7e62-400c-adc4-5f6154cb0b6b.png"  alt="Explore Trends"/></a></span><script charset="utf-8" src="https://js.hscta.net/cta/current.js"></script><script type="text/javascript"> hbspt.cta.load(4272994, 'f6910755-7e62-400c-adc4-5f6154cb0b6b', {}); </script></span><!-- end HubSpot Call-to-Action Code -->

    </div>
</div>

    
    
        
        <div class="mr-body top-sm bottom-sm">
            
            
    
        

        
    <div class="mr-julie-butcher container">
        <div class="row">
            <div class="col-xs-12">
                
                    <div class="mr-notifications inactive clearfix js-notifications">
    
</div>

                
            </div>
        </div>
        <div class="row">
            <div class="col-sm-8">
                <div class="mr-content">
                    
    
    



    



    



<div class="profile-section profile-intro
    
        profile-section-slim
    ">
    <div class="profile-section-content">
        <div class="row">
            <div class="mr-profile-avatar-container col-xs-3">
                <div class="profile-avatar">
                    
                        
<div class="mr-avatar">
    <a href="/julie-butcher" class="mr-avatar-image">
        
            <img src="https://pbs.twimg.com/profile_images/928513081667235841/vFFL4-my_400x400.jpg" alt="Julie Butcher on Muck Rack">
        
        
    </a>

    
</div>


                    
                    

                </div>
            </div>
            <div class="col-xs-9">
                <div class="profile-details">
                    
                    <h1 class="profile-name mr-font-family-2 top-none">
                        
                        Julie Butcher
                        
                    </h1>
                    

                    
                        <div class="person-details">
                        

                        

                        
                        </div>
                    

                    
                        <div class="profile-details-item">
                            <strong>As seen in: </strong>
                            <a href="/media-outlet/citywatchla">CityWatchLA</a>
                        </div>
                    
                    
                        <div class="profile-details-item">
                            <strong>Covers:&nbsp;</strong>
                            community issues, local government, Glendale city council
                        </div>
                    
                    
                    
                    
                </div>
            </div>
        </div>
    </div>
</div>

    <div class="profile-section profile-description">
        <div class="profile-section-content">
            
                <div class="mr-font-size-lg mr-font-family-2">
                    
                        
                            They go low, we go local.
                        
                    
                </div>
            
        </div>
    </div>


    

    
    
    <div class="mr-profile-section profile-contact
    
    
        visible-xs-block
    ">
    <div class="mr-profile-section-header">
        <h4>Contact</h4>
        
    </div>
    <div class="mr-profile-section-content">
        
        
            <div class="mr-profile-section-subheader">
                <h5>Contact preferences</h5>
            </div>
        
        
            
                <label class="color-gray-light">From Julie Butcher</label><i class="mr-font-size-base color-gray-light icon-right fa fa-info-circle" title="These preferences are added and maintained by each journalist." data-toggle="tooltip"></i>
<div class="alert alert-default">
    <p>I prefer pitches via email.       I sometimes respond if I&#x27;m not going to cover the story you pitch me.</p>
</div>

            
        
        
        
        
        
            
                
                    <div class="mr-profile-section-subheader">
                        <h5>Contact information</h5>
                    </div>
                
            
            
                <div class="alert alert-default">
                    <div class="bottom-xs">Find the best way to get in touch with Julie by joining Muck Rack.</div>
                    <a href="/overview" class="btn btn-default left-none" target="_blank">Learn More</a>
                </div>
            
            
        
        
        
            
    <div class="mr-profile-section-subheader bottom-none">
        <h5>Online</h5>
    </div>

<div class="profile-section-social">
    
        

<a href="http://butchershop-nobonesaboutit.com/" rel="nofollow noreferrer" target="_blank" class="mr-contact break-word top-xs js-icon-link mr-contact-icon-only"  title="Website" data-toggle="tooltip">
    <div class="mr-contact-icon mr-contact-item">
        <div class="icon-bg-circle icon-bg-primary ">
            <span class="sr-only">Website</span>
            <i class="fa fa-link"></i>
        </div>
    </div>
    

</a>

    
    
    
    
        

<a href="http://twitter.com/JulieButcher" rel="nofollow noreferrer" target="_blank" class="mr-contact break-word top-xs js-icon-twitter mr-contact-icon-only"  title="Twitter" data-toggle="tooltip">
    <div class="mr-contact-icon mr-contact-item">
        <div class="icon-bg-circle icon-bg-twitter ">
            <span class="sr-only">Twitter</span>
            <i class="fab fa-twitter"></i>
        </div>
    </div>
    

</a>

    
        

<a href="https://www.facebook.com/julie.butcher" rel="nofollow noreferrer" target="_blank" class="mr-contact break-word top-xs js-icon-facebook mr-contact-icon-only"  title="Facebook" data-toggle="tooltip">
    <div class="mr-contact-icon mr-contact-item">
        <div class="icon-bg-circle icon-bg-facebook ">
            <span class="sr-only">Facebook</span>
            <i class="fab fa-facebook"></i>
        </div>
    </div>
    

</a>

    
        

<a href="https://www.linkedin.com/in/juliejbutcher" rel="nofollow noreferrer" target="_blank" class="mr-contact break-word top-xs js-icon-linkedin mr-contact-icon-only"  title="LinkedIn" data-toggle="tooltip">
    <div class="mr-contact-icon mr-contact-item">
        <div class="icon-bg-circle icon-bg-linkedin ">
            <span class="sr-only">LinkedIn</span>
            <i class="fab fa-linkedin"></i>
        </div>
    </div>
    

</a>

    
        

<a href="https://www.instagram.com/juliejbutcher/" rel="nofollow noreferrer" target="_blank" class="mr-contact break-word top-xs js-icon-instagram mr-contact-icon-only"  title="Instagram" data-toggle="tooltip">
    <div class="mr-contact-icon mr-contact-item">
        <div class="icon-bg-circle icon-bg-instagram ">
            <span class="sr-only">Instagram</span>
            <i class="fab fa-instagram"></i>
        </div>
    </div>
    

</a>

    
    
</div>

        
        
        
            
        
    </div>
</div>

    

    <div class="profile-section profile-section-upsell
        
        
            visible-xs-block
        ">
        <div class="profile-section-content">
            <h4 class="top-none">Are you a journalist?</h4>
            <p class="mr-font-size-lg">Create a free Muck Rack account to customize your profile and upload a portfolio of your best work.</p>
            <a class="btn btn-primary btn-block" href="/journalists">Create a Portfolio</a>
        </div>
    </div>


    





    

    

    


    <div class="profile-section profile-bio">
        <div class="profile-section-header">
            
                <a class="profile-edit-btn" href="/julie-butcher/bio">Read Full Bio &rarr;</a>
            
            <h4 class="profile-section-heading">Biography</h4>
        </div>
        
            <div class="profile-section-content ">
                <p>Somehow, I always end up at a City Hall.</p>
<p>I cover the Glendale city council and community issues for the Crescenta Valley Weekly. Read me most Thursdays.</p>
<p>Find me in the garden. Or with the grands. Or arguing politics.</p>
            </div>
        
    </div>


    
    <div class="profile-section profile-portfolio">
        <div class="profile-section-header">
            
                
                    <a class="profile-edit-btn" href="/julie-butcher/portfolio">See all <span class="visible-lg-inline">84 portfolio items</span> &rarr;</a>
                
            
            <h4 class="profile-section-heading">Portfolio</h4>
        </div>
        <div class="profile-section-content">
            
                <div class="portfolio-items">
                    
                        



<div class="portfolio-item-container">
    <div class="portfolio-item-image">
        
            <img src="https://s3.amazonaws.com/media.muckrack.com/portfolio/images/9859026/1165320_header.jpg.220x220_q85_crop.jpg" alt="Attack on Artsakh Opens Council Meeting" onError="this.onerror=null;this.src='https://cdn.muckrack.com/static/images/person/portfolio-item-bg.png';">
        
    </div>

    <div class="portfolio-item-content">
        <div class="main-contents">
            <div class="portfolio-item-publication"><a class="group-thumbnail sprite-group-thumbnails-crescentavalleyweekly" href="https://www.crescentavalleyweekly.com/glendale/10/01/2020/attack-artsakh-opens-council-meeting/" rel="nofollow"></a></div>

            <h3 class="portfolio-item-title">
                Attack on Artsakh Opens Council Meeting
            </h3>
        </div>

        <div class="preview-contents">
            <a class="portfolio-item-hover" rel="noreferrer nofollow" href="https://www.crescentavalleyweekly.com/glendale/10/01/2020/attack-artsakh-opens-council-meeting/" target="_blank">
                <p>&quot;On Sunday morning, Sept. 27, Azerbaijan launched an unprovoked large-scale military attack on the peaceful A…</p>
                <span class="view-link">View article &rarr;</span>

                <div class="portfolio-item-sharing">
                    

                    
                        <span class="date">October 1, 2020</span>
                    
                </div>
            </a>
        </div>
    </div>
</div>

                    
                        



<div class="portfolio-item-container">
    <div class="portfolio-item-image">
        
            <img src="https://s3.amazonaws.com/media.muckrack.com/portfolio/images/9859026/1157814_header.jpg.220x220_q85_crop.jpg" alt="Beers Honored, Golanian Named Interim City Manager" onError="this.onerror=null;this.src='https://cdn.muckrack.com/static/images/person/portfolio-item-bg.png';">
        
    </div>

    <div class="portfolio-item-content">
        <div class="main-contents">
            <div class="portfolio-item-publication"><a class="group-thumbnail sprite-group-thumbnails-crescentavalleyweekly" href="https://www.crescentavalleyweekly.com/glendale/09/24/2020/beers-honored-golanian-named-interim-city-manager/" rel="nofollow"></a></div>

            <h3 class="portfolio-item-title">
                Beers Honored, Golanian Named Interim City Manager
            </h3>
        </div>

        <div class="preview-contents">
            <a class="portfolio-item-hover" rel="noreferrer nofollow" href="https://www.crescentavalleyweekly.com/glendale/09/24/2020/beers-honored-golanian-named-interim-city-manager/" target="_blank">
                <p>The Glendale City Council took time at its Tuesday night meeting to honor and say farewell to retiring Manage…</p>
                <span class="view-link">View article &rarr;</span>

                <div class="portfolio-item-sharing">
                    

                    
                        <span class="date">September 24, 2020</span>
                    
                </div>
            </a>
        </div>
    </div>
</div>

                    
                        



<div class="portfolio-item-container">
    <div class="portfolio-item-image">
        
            <img src="https://s3.amazonaws.com/media.muckrack.com/portfolio/images/9859026/1148350_CENSUS-2020-091720-4C-1024x590.jpg.220x220_q85_crop.jpg" alt="Now&#x27;s the Time to Get Counted!" onError="this.onerror=null;this.src='https://cdn.muckrack.com/static/images/person/portfolio-item-bg.png';">
        
    </div>

    <div class="portfolio-item-content">
        <div class="main-contents">
            <div class="portfolio-item-publication"><a class="group-thumbnail sprite-group-thumbnails-crescentavalleyweekly" href="https://www.crescentavalleyweekly.com/featured/09/17/2020/nows-time-get-counted/" rel="nofollow"></a></div>

            <h3 class="portfolio-item-title">
                Now&#x27;s the Time to Get Counted!
            </h3>
        </div>

        <div class="preview-contents">
            <a class="portfolio-item-hover" rel="noreferrer nofollow" href="https://www.crescentavalleyweekly.com/featured/09/17/2020/nows-time-get-counted/" target="_blank">
                <p>Once each decade, the U.S. Census Bureau attempts to count every person in the nation. The current enumeratio…</p>
                <span class="view-link">View article &rarr;</span>

                <div class="portfolio-item-sharing">
                    

                    
                        <span class="date">September 17, 2020</span>
                    
                </div>
            </a>
        </div>
    </div>
</div>

                    
                        



<div class="portfolio-item-container">
    <div class="portfolio-item-image">
        
            <img src="https://s3.amazonaws.com/media.muckrack.com/portfolio/images/9859026/1148352_header.jpg.220x220_q85_crop.jpg" alt="Resolution Passes Council Recognizing Glendale&#x27;s &#x27;Sundown Town&#x27; History" onError="this.onerror=null;this.src='https://cdn.muckrack.com/static/images/person/portfolio-item-bg.png';">
        
    </div>

    <div class="portfolio-item-content">
        <div class="main-contents">
            <div class="portfolio-item-publication"><a class="group-thumbnail sprite-group-thumbnails-crescentavalleyweekly" href="https://www.crescentavalleyweekly.com/news/09/17/2020/resolution-passes-council-recognizing-glendales-sundown-town-history/" rel="nofollow"></a></div>

            <h3 class="portfolio-item-title">
                Resolution Passes Council Recognizing Glendale&#x27;s &#x27;Sundown Town&#x27; History
            </h3>
        </div>

        <div class="preview-contents">
            <a class="portfolio-item-hover" rel="noreferrer nofollow" href="https://www.crescentavalleyweekly.com/news/09/17/2020/resolution-passes-council-recognizing-glendales-sundown-town-history/" target="_blank">
                <p>On Tuesday night, the Glendale City Council voted unanimously to adopt a resolution affirming Glendale&#x27;s raci…</p>
                <span class="view-link">View article &rarr;</span>

                <div class="portfolio-item-sharing">
                    

                    
                        <span class="date">September 17, 2020</span>
                    
                </div>
            </a>
        </div>
    </div>
</div>

                    
                        



<div class="portfolio-item-container">
    <div class="portfolio-item-image">
        
            <img src="https://s3.amazonaws.com/media.muckrack.com/portfolio/images/9859026/1139590_header.jpg.220x220_q85_crop.jpg" alt="AB 5 Gets a Rework" onError="this.onerror=null;this.src='https://cdn.muckrack.com/static/images/person/portfolio-item-bg.png';">
        
    </div>

    <div class="portfolio-item-content">
        <div class="main-contents">
            <div class="portfolio-item-publication"><a class="group-thumbnail sprite-group-thumbnails-crescentavalleyweekly" href="https://www.crescentavalleyweekly.com/glendale/09/10/2020/ab-5-gets-rework/" rel="nofollow"></a></div>

            <h3 class="portfolio-item-title">
                AB 5 Gets a Rework
            </h3>
        </div>

        <div class="preview-contents">
            <a class="portfolio-item-hover" rel="noreferrer nofollow" href="https://www.crescentavalleyweekly.com/glendale/09/10/2020/ab-5-gets-rework/" target="_blank">
                <p>&quot;The system is rigged against the working poor and middle-class workers. That&#x27;s the truth. I&#x27;m so tired of co…</p>
                <span class="view-link">View article &rarr;</span>

                <div class="portfolio-item-sharing">
                    

                    
                        <span class="date">September 10, 2020</span>
                    
                </div>
            </a>
        </div>
    </div>
</div>

                    
                        



<div class="portfolio-item-container">
    <div class="portfolio-item-image">
        
            <img src="https://s3.amazonaws.com/media.muckrack.com/portfolio/images/9859026/1131354_header.jpg.220x220_q85_crop.jpg" alt="Councilmember Reports on a &#x27;Free Ride&#x27;" onError="this.onerror=null;this.src='https://cdn.muckrack.com/static/images/person/portfolio-item-bg.png';">
        
    </div>

    <div class="portfolio-item-content">
        <div class="main-contents">
            <div class="portfolio-item-publication"><a class="group-thumbnail sprite-group-thumbnails-crescentavalleyweekly" href="https://www.crescentavalleyweekly.com/glendale/09/03/2020/councilmember-reports-free-ride/" rel="nofollow"></a></div>

            <h3 class="portfolio-item-title">
                Councilmember Reports on a &#x27;Free Ride&#x27;
            </h3>
        </div>

        <div class="preview-contents">
            <a class="portfolio-item-hover" rel="noreferrer nofollow" href="https://www.crescentavalleyweekly.com/glendale/09/03/2020/councilmember-reports-free-ride/" target="_blank">
                <p>The Glendale City Council started its Tuesday meeting with a commendation for Steven Small and the Glendale A…</p>
                <span class="view-link">View article &rarr;</span>

                <div class="portfolio-item-sharing">
                    

                    
                        <span class="date">September 3, 2020</span>
                    
                </div>
            </a>
        </div>
    </div>
</div>

                    
                </div>
            
        </div>
    </div>


    


    <div class="profile-section profile-bylines">
        <div class="profile-section-header">
            
                <a class="profile-edit-btn" href="/julie-butcher/articles">See all <span class="visible-lg-inline">28 articles</span></span> &rarr;</a>
            
            
            <h4 class="profile-section-heading">Articles</h4>
        </div>
        <div class="profile-section-content">
            
                
                    


    <div class="news-story">
        






    <h4 class="news-story-title"><a target="_blank" rel="noreferrer" href="http://butchershop-nobonesaboutit.com/reading-through-the-pandemic/">Reading through the Pandemic</a></h4>

<div class="row">
    
        <div class="news-story-body col-xs-12">
                
                    
                        
<div class="mr-byline ">
    By <a href="/abbi-waxman" target="_blank">Abbi Waxman</a>, <a href="/julie-butcher" target="_blank">Julie Butcher</a>
</div>


                    
                    
                
            
                    
                        <a target="_blank" rel="noreferrer" href="http://butchershop-nobonesaboutit.com/reading-through-the-pandemic/">butchershop-nobonesaboutit.com</a>
                        &mdash;
                    
                                                                                                                                                                    “Well, you know what they say. Trauma is the best salsa.”~ Abbi Waxman, The Garden of Small BeginningsI’m gonna read 100 books this year. I’ve always been a reader. I was an English major, for Pete’s sake, have cherished the epithet like a, well, epithet.
                    
            
        </div>
    
    <div class="news-story-meta col-xs-12">
        
            <a rel="nofollow" class="timeago" title="2020-09-01T00:00:00" href="/link/o9IaI7/reading-through-the-pandemic">
                Sep 01, 2020
            </a>
        
        

<span class="sharing-counts small " data-total-count="0">
  
  

  <a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=https%3A//muckrack.com/link/o9IaI7/reading-through-the-pandemic" class="times-shared facebook"
   data-description="                                                                                                                                                “Well, you know what they say. Trauma is the best salsa.”~ Abbi Waxman, The Garden of Small BeginningsI’m gonna read 100 books this year. I’ve always been a reader. I was an English major, for Pete’s sake, have cherished the epithet like a, well, epithet." data-source="butchershop-nobonesaboutit.com" data-title="Reading through the Pandemic" data-url="https://muckrack.com/link/o9IaI7/reading-through-the-pandemic" data-link="http://butchershop-nobonesaboutit.com/reading-through-the-pandemic/">
   <i class="fab fa-facebook"></i> 
  </a>

  <a target="_blank" href="https://www.linkedin.com/sharing/share-offsite/?url=https%3A//muckrack.com/link/o9IaI7/reading-through-the-pandemic" class="times-shared linkedin" data-url="https://muckrack.com/link/o9IaI7/reading-through-the-pandemic" data-link="http://butchershop-nobonesaboutit.com/reading-through-the-pandemic/">
    <i class="fab fa-linkedin"></i> 
  </a>

  <a target="_blank" href="https://twitter.com/intent/tweet?text=Reading%20through%20the%20Pandemic&url=https%3A//muckrack.com/link/o9IaI7/reading-through-the-pandemic" class="times-shared twitter">
    <i class="fab fa-twitter"></i> 
  </a>
</span>

        <a class="who-shared" href="/whoshared/?url=http%3A%2F%2Fbutchershop-nobonesaboutit.com%2Freading-through-the-pandemic%2F" target="_blank"><i class="icon-left fa fa-link color-gray-light"></i>Open in Who Shared</a>
        <span class="wrong-byline dropdown">
            <a class="mr-flag-authors dropdown-toggle"
                href="#!"
                data-toggle="dropdown"
                role="button"
                aria-haspopup="true">
                Wrong byline?<span class="icon-right caret"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-small dropdown-menu-wrap" role="menu">
                <li role="presentation">
                    <a
                        class="js-intercom-showNewMessage"
                        href="mailto:hello@muckrack.com?body=Please remove my name from this article. The author is someone else with the same name as me. %0D%0A%0D%0Ahttps://muckrack.com/link/o9IaI7/reading-through-the-pandemic&subject=Byline%20is%20for%20a%20different%20person%20with%20the%20same%20name%20as%20me"
                        data-intercom-message="Hi there,&#13;&#13;Can you please update the byline on this article? The author is someone else with the same name. Thanks! &#13;&#13;https://muckrack.com/link/o9IaI7/reading-through-the-pandemic">
                        This byline is for a different person with the same name.
                    </a>
                </li>
                <li role="presentation">
                    <a
                        class="js-intercom-showNewMessage"
                        href="mailto:hello@muckrack.com?body=Please remove my name from this article. %0D%0A%0D%0Ahttps://muckrack.com/link/o9IaI7/reading-through-the-pandemic&subject=Byline%20is%20mine%2C%20but%20I%20want%20my%20name%20removed"
                        data-intercom-message="Hi there,&#13;&#13;Can you please remove my name from this article? The byline is mine, but I'd still like my name removed. Thanks! &#13;&#13;https://muckrack.com/link/o9IaI7/reading-through-the-pandemic">
                        This byline is mine, but I want my name removed.
                    </a>
                </li>
                <li role="presentation" class="divider"></li>
                <li role="presentation">
                    <a
                        class="js-intercom-showNewMessage"
                        href="mailto:hello@muckrack.com?body=Please remove my name from this article. %0D%0A%0D%0Ahttps://muckrack.com/link/o9IaI7/reading-through-the-pandemic&subject=Byline%20is%20mine%2C%20but%20I%20want%20my%20name%20removed"
                        data-intercom-message="Hi there,&#13;&#13;There is a problem with the byline on this article, can you please help me? Thanks! &#13;&#13;https://muckrack.com/link/o9IaI7/reading-through-the-pandemic">
                        Other byline problem
                    </a>
                </li>
                <li role="presentation">
                    <a
                        class="js-intercom-showNewMessage"
                        href="mailto:hello@muckrack.com?body=There are multiple byline problems on this page. Can you please review the articles assigned to this profile? %0D%0A%0D%0Ahttps://muckrack.com/link/o9IaI7/reading-through-the-pandemic&subject=Multiple%20byline%20problems%20on%20profile"
                        data-intercom-message="Hi there,&#13;&#13; I noticed many byline problems with articles on this page. Can you please review the articles assigned to this profile? Thanks! &#13;&#13;https://muckrack.com/link/o9IaI7/reading-through-the-pandemic">
                        Multiple byline problems on this page
                    </a>
                </li>
            </ul>
        </span>
    </div>
</div>
<div class="clearfix"></div>


        
    </div>


                
                    


    <div class="news-story">
        






    <h4 class="news-story-title"><a target="_blank" rel="noreferrer" href="http://butchershop-nobonesaboutit.com/something-to-crow-about-black-birds-not-blackbirds/">Something to Crow About: Black Birds, not Blackbirds</a></h4>

<div class="row">
    
        <div class="news-story-body col-xs-12">
                
                    
                        
<div class="mr-byline ">
    By <a href="/julie-butcher" target="_blank">Julie Butcher</a>
</div>


                    
                    
                
            
                    
                        <a target="_blank" rel="noreferrer" href="http://butchershop-nobonesaboutit.com/something-to-crow-about-black-birds-not-blackbirds/">butchershop-nobonesaboutit.com</a>
                        &mdash;
                    
                                                                                                                                                                    “If men had wings and bore black feathers, few of them would be clever enough to be crows.” ~ Rev. Henry Ward BeecherI love crows. I’ve always been kind to their kind and they know it. And they remember. Is That a Caveman or Dick Cheney?
                    
            
        </div>
    
    <div class="news-story-meta col-xs-12">
        
            <a rel="nofollow" class="timeago" title="2020-08-11T00:00:00" href="/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds">
                Aug 11, 2020
            </a>
        
        

<span class="sharing-counts small " data-total-count="0">
  
  

  <a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=https%3A//muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds" class="times-shared facebook"
   data-description="                                                                                                                                                “If men had wings and bore black feathers, few of them would be clever enough to be crows.” ~ Rev. Henry Ward BeecherI love crows. I’ve always been kind to their kind and they know it. And they remember. Is That a Caveman or Dick Cheney?" data-source="butchershop-nobonesaboutit.com" data-title="Something to Crow About: Black Birds, not Blackbirds" data-url="https://muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds" data-link="http://butchershop-nobonesaboutit.com/something-to-crow-about-black-birds-not-blackbirds/">
   <i class="fab fa-facebook"></i> 
  </a>

  <a target="_blank" href="https://www.linkedin.com/sharing/share-offsite/?url=https%3A//muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds" class="times-shared linkedin" data-url="https://muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds" data-link="http://butchershop-nobonesaboutit.com/something-to-crow-about-black-birds-not-blackbirds/">
    <i class="fab fa-linkedin"></i> 
  </a>

  <a target="_blank" href="https://twitter.com/intent/tweet?text=Something%20to%20Crow%20About%3A%20Black%20Birds%2C%20not%20Blackbirds&url=https%3A//muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds" class="times-shared twitter">
    <i class="fab fa-twitter"></i> 
  </a>
</span>

        <a class="who-shared" href="/whoshared/?url=http%3A%2F%2Fbutchershop-nobonesaboutit.com%2Fsomething-to-crow-about-black-birds-not-blackbirds%2F" target="_blank"><i class="icon-left fa fa-link color-gray-light"></i>Open in Who Shared</a>
        <span class="wrong-byline dropdown">
            <a class="mr-flag-authors dropdown-toggle"
                href="#!"
                data-toggle="dropdown"
                role="button"
                aria-haspopup="true">
                Wrong byline?<span class="icon-right caret"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-small dropdown-menu-wrap" role="menu">
                <li role="presentation">
                    <a
                        class="js-intercom-showNewMessage"
                        href="mailto:hello@muckrack.com?body=Please remove my name from this article. The author is someone else with the same name as me. %0D%0A%0D%0Ahttps://muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds&subject=Byline%20is%20for%20a%20different%20person%20with%20the%20same%20name%20as%20me"
                        data-intercom-message="Hi there,&#13;&#13;Can you please update the byline on this article? The author is someone else with the same name. Thanks! &#13;&#13;https://muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds">
                        This byline is for a different person with the same name.
                    </a>
                </li>
                <li role="presentation">
                    <a
                        class="js-intercom-showNewMessage"
                        href="mailto:hello@muckrack.com?body=Please remove my name from this article. %0D%0A%0D%0Ahttps://muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds&subject=Byline%20is%20mine%2C%20but%20I%20want%20my%20name%20removed"
                        data-intercom-message="Hi there,&#13;&#13;Can you please remove my name from this article? The byline is mine, but I'd still like my name removed. Thanks! &#13;&#13;https://muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds">
                        This byline is mine, but I want my name removed.
                    </a>
                </li>
                <li role="presentation" class="divider"></li>
                <li role="presentation">
                    <a
                        class="js-intercom-showNewMessage"
                        href="mailto:hello@muckrack.com?body=Please remove my name from this article. %0D%0A%0D%0Ahttps://muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds&subject=Byline%20is%20mine%2C%20but%20I%20want%20my%20name%20removed"
                        data-intercom-message="Hi there,&#13;&#13;There is a problem with the byline on this article, can you please help me? Thanks! &#13;&#13;https://muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds">
                        Other byline problem
                    </a>
                </li>
                <li role="presentation">
                    <a
                        class="js-intercom-showNewMessage"
                        href="mailto:hello@muckrack.com?body=There are multiple byline problems on this page. Can you please review the articles assigned to this profile? %0D%0A%0D%0Ahttps://muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds&subject=Multiple%20byline%20problems%20on%20profile"
                        data-intercom-message="Hi there,&#13;&#13; I noticed many byline problems with articles on this page. Can you please review the articles assigned to this profile? Thanks! &#13;&#13;https://muckrack.com/link/oYoPSJ/something-to-crow-about-black-birds-not-blackbirds">
                        Multiple byline problems on this page
                    </a>
                </li>
            </ul>
        </span>
    </div>
</div>
<div class="clearfix"></div>


        
    </div>


                
                    


    <div class="news-story">
        






    <h4 class="news-story-title"><a target="_blank" rel="noreferrer" href="https://butchershop-nobonesaboutit.com/is-glendale-still-a-sundown-town/">Is Glendale Still a Sundown Town?</a></h4>

<div class="row">
    
        <div class="news-story-body col-xs-12">
                
                    
                        
<div class="mr-byline ">
    By <a href="/julie-butcher" target="_blank">Julie Butcher</a>
</div>


                    
                    
                
            
                    
                        <a target="_blank" rel="noreferrer" href="https://butchershop-nobonesaboutit.com/is-glendale-still-a-sundown-town/">butchershop-nobonesaboutit.com</a>
                        &mdash;
                    
                                                                                                                                                                    “. . . one might think that the Crescenta Valley is a terrible place to live. It isn’t — in fact, it’s better than most places. The truth is that any community could easily spawn several local history books of similar evil nature. Most communities choose not to. Most communities want to see only the good sides of their histories.
                    
            
        </div>
    
    <div class="news-story-meta col-xs-12">
        
            <a rel="nofollow" class="timeago" title="2020-07-22T00:00:00" href="/link/ozME3W/is-glendale-still-a-sundown-town">
                Jul 22, 2020
            </a>
        
        

<span class="sharing-counts small " data-total-count="0">
  
  

  <a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=https%3A//muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town" class="times-shared facebook"
   data-description="                                                                                                                                                “. . . one might think that the Crescenta Valley is a terrible place to live. It isn’t — in fact, it’s better than most places. The truth is that any community could easily spawn several local history books of similar evil nature. Most communities choose not to. Most communities want to see only the good sides of their histories." data-source="butchershop-nobonesaboutit.com" data-title="Is Glendale Still a Sundown Town?" data-url="https://muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town" data-link="https://butchershop-nobonesaboutit.com/is-glendale-still-a-sundown-town/">
   <i class="fab fa-facebook"></i> 
  </a>

  <a target="_blank" href="https://www.linkedin.com/sharing/share-offsite/?url=https%3A//muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town" class="times-shared linkedin" data-url="https://muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town" data-link="https://butchershop-nobonesaboutit.com/is-glendale-still-a-sundown-town/">
    <i class="fab fa-linkedin"></i> 
  </a>

  <a target="_blank" href="https://twitter.com/intent/tweet?text=Is%20Glendale%20Still%20a%20Sundown%20Town%3F&url=https%3A//muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town" class="times-shared twitter">
    <i class="fab fa-twitter"></i> 
  </a>
</span>

        <a class="who-shared" href="/whoshared/?url=https%3A%2F%2Fbutchershop-nobonesaboutit.com%2Fis-glendale-still-a-sundown-town%2F" target="_blank"><i class="icon-left fa fa-link color-gray-light"></i>Open in Who Shared</a>
        <span class="wrong-byline dropdown">
            <a class="mr-flag-authors dropdown-toggle"
                href="#!"
                data-toggle="dropdown"
                role="button"
                aria-haspopup="true">
                Wrong byline?<span class="icon-right caret"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-small dropdown-menu-wrap" role="menu">
                <li role="presentation">
                    <a
                        class="js-intercom-showNewMessage"
                        href="mailto:hello@muckrack.com?body=Please remove my name from this article. The author is someone else with the same name as me. %0D%0A%0D%0Ahttps://muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town&subject=Byline%20is%20for%20a%20different%20person%20with%20the%20same%20name%20as%20me"
                        data-intercom-message="Hi there,&#13;&#13;Can you please update the byline on this article? The author is someone else with the same name. Thanks! &#13;&#13;https://muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town">
                        This byline is for a different person with the same name.
                    </a>
                </li>
                <li role="presentation">
                    <a
                        class="js-intercom-showNewMessage"
                        href="mailto:hello@muckrack.com?body=Please remove my name from this article. %0D%0A%0D%0Ahttps://muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town&subject=Byline%20is%20mine%2C%20but%20I%20want%20my%20name%20removed"
                        data-intercom-message="Hi there,&#13;&#13;Can you please remove my name from this article? The byline is mine, but I'd still like my name removed. Thanks! &#13;&#13;https://muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town">
                        This byline is mine, but I want my name removed.
                    </a>
                </li>
                <li role="presentation" class="divider"></li>
                <li role="presentation">
                    <a
                        class="js-intercom-showNewMessage"
                        href="mailto:hello@muckrack.com?body=Please remove my name from this article. %0D%0A%0D%0Ahttps://muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town&subject=Byline%20is%20mine%2C%20but%20I%20want%20my%20name%20removed"
                        data-intercom-message="Hi there,&#13;&#13;There is a problem with the byline on this article, can you please help me? Thanks! &#13;&#13;https://muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town">
                        Other byline problem
                    </a>
                </li>
                <li role="presentation">
                    <a
                        class="js-intercom-showNewMessage"
                        href="mailto:hello@muckrack.com?body=There are multiple byline problems on this page. Can you please review the articles assigned to this profile? %0D%0A%0D%0Ahttps://muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town&subject=Multiple%20byline%20problems%20on%20profile"
                        data-intercom-message="Hi there,&#13;&#13; I noticed many byline problems with articles on this page. Can you please review the articles assigned to this profile? Thanks! &#13;&#13;https://muckrack.com/link/ozME3W/is-glendale-still-a-sundown-town">
                        Multiple byline problems on this page
                    </a>
                </li>
            </ul>
        </span>
    </div>
</div>
<div class="clearfix"></div>


        
    </div>


                
                <div>
                    <a class="profile-edit-btn" href="/julie-butcher/articles">See all <span class="visible-lg-inline">28 articles</span></span></a>
                </div>
            
        </div>
    </div>


    



    
    <div class="profile-section profile-interview">
        <div class="profile-section-header">
            
                <a class="profile-edit-btn" href="/julie-butcher/interview">See all <span class="visible-lg-inline">8 answers</span> &rarr;</a>
            
            <h4 class="profile-section-heading">Interview</h4>
        </div>
        <div class="profile-section-content">
            
                
                    



<div class="profile-interview-answer">
      <h4 class="top-none">Have you ever used a typewriter? </h4>
      <div class="interview-answer">Yes!</div>
</div>

                
                    



<div class="profile-interview-answer">
      <h4 class="top-none">What tools and software do you use to do your job?</h4>
      <div class="interview-answer">the usual</div>
</div>

                
                    



<div class="profile-interview-answer">
      <h4 class="top-none">Why did you become a journalist?</h4>
      <div class="interview-answer">I&#x27;m a writer, or so I think. And preternaturally curious. So. Reporter.</div>
</div>

                
            
        </div>
    </div>


    



                </div>
            </div>
            <div class="col-sm-4">
                <div class="mr-sidebar">
                    
    
    
    
        



        



    
    <div class="mr-profile-section profile-contact
    
    
        hidden-xs
    ">
    <div class="mr-profile-section-header">
        <h4>Contact</h4>
        
    </div>
    <div class="mr-profile-section-content">
        
        
            <div class="mr-profile-section-subheader">
                <h5>Contact preferences</h5>
            </div>
        
        
            
                <label class="color-gray-light">From Julie Butcher</label><i class="mr-font-size-base color-gray-light icon-right fa fa-info-circle" title="These preferences are added and maintained by each journalist." data-toggle="tooltip"></i>
<div class="alert alert-default">
    <p>I prefer pitches via email.       I sometimes respond if I&#x27;m not going to cover the story you pitch me.</p>
</div>

            
        
        
        
        
        
            
                
                    <div class="mr-profile-section-subheader">
                        <h5>Contact information</h5>
                    </div>
                
            
            
                <div class="alert alert-default">
                    <div class="bottom-xs">Find the best way to get in touch with Julie by joining Muck Rack.</div>
                    <a href="/overview" class="btn btn-default left-none" target="_blank">Learn More</a>
                </div>
            
            
        
        
        
            
    <div class="mr-profile-section-subheader bottom-none">
        <h5>Online</h5>
    </div>

<div class="profile-section-social">
    
        

<a href="http://butchershop-nobonesaboutit.com/" rel="nofollow noreferrer" target="_blank" class="mr-contact break-word top-xs js-icon-link mr-contact-icon-only"  title="Website" data-toggle="tooltip">
    <div class="mr-contact-icon mr-contact-item">
        <div class="icon-bg-circle icon-bg-primary ">
            <span class="sr-only">Website</span>
            <i class="fa fa-link"></i>
        </div>
    </div>
    

</a>

    
    
    
    
        

<a href="http://twitter.com/JulieButcher" rel="nofollow noreferrer" target="_blank" class="mr-contact break-word top-xs js-icon-twitter mr-contact-icon-only"  title="Twitter" data-toggle="tooltip">
    <div class="mr-contact-icon mr-contact-item">
        <div class="icon-bg-circle icon-bg-twitter ">
            <span class="sr-only">Twitter</span>
            <i class="fab fa-twitter"></i>
        </div>
    </div>
    

</a>

    
        

<a href="https://www.facebook.com/julie.butcher" rel="nofollow noreferrer" target="_blank" class="mr-contact break-word top-xs js-icon-facebook mr-contact-icon-only"  title="Facebook" data-toggle="tooltip">
    <div class="mr-contact-icon mr-contact-item">
        <div class="icon-bg-circle icon-bg-facebook ">
            <span class="sr-only">Facebook</span>
            <i class="fab fa-facebook"></i>
        </div>
    </div>
    

</a>

    
        

<a href="https://www.linkedin.com/in/juliejbutcher" rel="nofollow noreferrer" target="_blank" class="mr-contact break-word top-xs js-icon-linkedin mr-contact-icon-only"  title="LinkedIn" data-toggle="tooltip">
    <div class="mr-contact-icon mr-contact-item">
        <div class="icon-bg-circle icon-bg-linkedin ">
            <span class="sr-only">LinkedIn</span>
            <i class="fab fa-linkedin"></i>
        </div>
    </div>
    

</a>

    
        

<a href="https://www.instagram.com/juliejbutcher/" rel="nofollow noreferrer" target="_blank" class="mr-contact break-word top-xs js-icon-instagram mr-contact-icon-only"  title="Instagram" data-toggle="tooltip">
    <div class="mr-contact-icon mr-contact-item">
        <div class="icon-bg-circle icon-bg-instagram ">
            <span class="sr-only">Instagram</span>
            <i class="fab fa-instagram"></i>
        </div>
    </div>
    

</a>

    
    
</div>

        
        
        
            
        
    </div>
</div>

    

    

    

    <div class="profile-section profile-section-upsell
        
        
            hidden-xs
        ">
        <div class="profile-section-content">
            <h4 class="top-none">Are you a journalist?</h4>
            <p class="mr-font-size-lg">Create a free Muck Rack account to customize your profile and upload a portfolio of your best work.</p>
            <a class="btn btn-primary btn-block" href="/journalists">Create a Portfolio</a>
        </div>
    </div>


    



                </div>
            </div>
        </div>
    </div>


        
    

        </div>
    

    
    
    
        

<div class="mr-footer ">
    <div class="container">
        <div class="row top-md">
            <div class="col-sm-5">
                <div class="row">
                    <div class="col-xs-6 bottom-sm">
                        <ul class="list-unstyled">
                            <li><h4 class="mr-font-family-1"><a href="/overview">For PR Pros</a></h4></li>
                            <li><a href="/overview">Overview</a></li>
                            <li><a href="/media-database">Media Database</a></li>
                            <li><a href="/media-monitoring-alerts">Monitoring and Alerts</a></li>
                            <li><a href="/pitching-outreach">Pitching</a></li>
                            <li><a href="/collaboration">Collaboration</a></li>
                            <li><a href="/reporting-measurement">Reporting and Measurement</a></li>
                            <li><a href="/pricing">Pricing</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-6 bottom-sm">
                        <ul class="list-unstyled">
                            <li><h4 class="mr-font-family-1"><a href="/journalists">For Journalists</a></h4></li>
                            <li><a href="/journalists">Overview</a></li>
                            <li><a href="/journalists">Create Portfolio</a></li>
                            <li><a href="/daily">Muck Rack Daily</a></li>
                            
                                <li><a href="/topics/">Topics</a></li>
                            
                            <li><a href="/media-outlets">Media Outlets</a></li>
                            <li><a href="/trending">Trending Stories</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="row">
                    <div class="col-xs-6 col-sm-4 bottom-sm">
                        <ul class="list-unstyled">
                            <li><h4 class="mr-font-family-1"><a href="/case-studies">Resources</a></h4></li>
                            <li><a href="/case-studies">Case Studies</a></li>
                            <li><a href="/webinars">Webinars</a></li>
                            <li><a href="/guides">Guides and eBooks</a></li>
                            <li><a href="/research">Research</a></li>
                            <li><a href="/daily">Muck Rack Daily</a></li>
                            <li><a href="/rankings">Rankings</a></li>
                            <li><a href="/blog">Blog</a></li>
                            <li><a href="/trends/">Trends</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-6 col-sm-4 bottom-sm">
                        <ul class="list-unstyled">
                            <li><h4 class="mr-font-family-1"><a href="/about">Company</a></h4></li>
                            <li><a href="/about">About</a></li>
                            <li><a href="/in-the-news">Press</a></li>
                            <li><a href="/careers">Careers</a></li>
                            <li><a href="/bookmarklets">Bookmarklets</a></li>
                            <li><a href="/referral">Refer a friend</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-4 bottom-sm">
                        <ul class="list-unstyled">
                            <li><h4 class="mr-font-family-1"><a href="/contact">Contact Us</a></h4></li>
                            <li><i class="fa fa-question-circle"></i> <a href="/contact">Feedback/Support</a></li>
                            <li class="text-truncate"><i class="fa fa-envelope"></i> <a href='mail&#116;o&#58;&#104;ello&#64;muck%72%&#54;1c&#37;6&#66;.&#99;&#37;6&#70;m'>hello&#64;muck&#114;&#97;c&#107;&#46;com</a></li>
                            <li><i class="fab fa-twitter"></i> <a target="_blank" href="https://twitter.com/muckrack" rel="noreferrer">Twitter</a></li>
                            <li><i class="fab fa-facebook"></i> <a target="_blank" href="https://facebook.com/muckrack" rel="noreferrer">Facebook</a></li>
                            <li><i class="fa fa-exclamation-circle"></i> <a href="/do-not-sell-and-access-request">Do not sell</a></li>
                            <li><i class="fa fa-phone"></i> <a href="tel:+12125001883">(212) 500-1883</a><br /><i class="fa fa-phone" style="visibility:hidden"></i> <a href="tel:+18556825722">(855) MUCK-RACK</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="mr-footer-meta row bottom-md">
            <div class="col-xs-6">
                <a href="/privacy">Privacy Policy</a> &nbsp;&bull;&nbsp;
                <a href="/terms">Terms &amp; Conditions</a>
            </div>
            <div class="col-xs-6 text-right">
                Copyright 2020 Muck Rack &nbsp;&bull;&nbsp;
                <a target="_blank" rel="noreferrer" href="https://www.digital.nyc/">Made in NYC</a>
            </div>
        </div>
    </div>
</div>

    



        
        
    <div class="mr-email-logging-container js-email-logging"></div>


        
        

        
        
            
<script
    src="https://browser.sentry-cdn.com/5.11.1/bundle.min.js"
    integrity="sha384-r7/ZcDRYpWjCNXLUKk3iuyyyEcDJ+o+3M5CqXP5GUGODYbolXewNHAZLYSJ3ZHcV"
    crossorigin="anonymous"
></script>
<script>Sentry.init({dsn:'https://4b1fc371dc864e118a5ea1a8d20338a5@sentry.io/73348'});</script>


        

        
        
            <script src="https://cdn.muckrack.com/static/compressed/js/output.3515e46470e5.js"></script>
        

        
        
            <script src="https://cdn.muckrack.com/static/compressed/js/output.d62ba4583b10.js"></script>
        

        
        
            <script src="https://cdn.muckrack.com/static/compressed/js/output.fe06fd54993f.js"></script>
            <script>
                $.endlessPaginate({
                    
                    onClick: function (context) {
                        $(document.body).trigger('pagination:pagerequest', {'context': context});
                    },
                    onCompleted: function (context, data) {
                        $(document.body).trigger('pagination:pageload', {'context': context, 'data': data});
                    }
                });
            </script>
        

        
        

        
        
    
    
    <script src="https://cdn.muckrack.com/static/compressed/js/output.8a1725c608c9.js"></script>
    <script>
        $(function () {
            // Initialize Bootstrap dropdowns
            var $dropdown_toggle = $('.dropdown-toggle');
            $dropdown_toggle.dropdown();

            // Update icon labels
            // Remove this once we refactor the python to handle displaying labels
            var $youtube = $('.js-icon-youtube');
            var youtube_text = 'YouTube';
            $youtube.find('.mr-contact-body').text(youtube_text);
            $youtube.attr('title', youtube_text);

            //
            // As Seen In
            //
            mr_as_seen_in.initialize({
                base_url: '/julie-butcher/as-seen-in.json'
            });
        });
    </script>
    
    
        
    

    <script>
        $(function() {
            new _MR.directory.init_email_logging();
        });
    </script>


        
        
            
                

<script>
    window.intercomSettings = {"app_id": "all934iy"};

    // Boots Intercom widget and sets event handlers for links that open Intercom
    function bootIntercom() {
        // Slightly modified version of Intercom script to prevent anything
        // from happening before a full page load is complete
        var w = window;
        var ic = w.Intercom;

        if (typeof ic === 'function') {
            ic('reattach_activator');
            ic('update', w.intercomSettings);
        } else {
            var d = document;
            var i = function() {
                i.c(arguments);
            };
            i.q = [];
            i.c = function(args) {
                i.q.push(args);
            };
            w.Intercom = i;
            var l = function() {
                var s = d.createElement('script');
                s.type = 'text/javascript';
                s.async = true;
                s.src = 'https://widget.intercom.io/widget/all934iy';
                var x = d.getElementsByTagName('script')[0];
                x.parentNode.insertBefore(s, x);
            };
            l();
        }

        document.body.addEventListener('click', function(event) {
            if (event.target.closest('.js-intercom-show')) {
                event.preventDefault();
                event.stopPropagation();
                Intercom('show');
            }

            if (event.target.closest('.js-intercom-showNewMessage')) {
                event.preventDefault();
                event.stopPropagation();
                var el = event.target.closest('.js-intercom-showNewMessage');
                Intercom('showNewMessage', el.dataset.intercomMessage);
            }
        });
    }

    window.addEventListener('load', function() {
        setTimeout(function() {
            bootIntercom();
        }, 1000);
    });
</script>



            
        

        
        

        
        
            <script>
    var clicky_site_ids = clicky_site_ids || [];
    clicky_site_ids.push(66469474);

    (function () {
        var s = document.createElement('script');
        s.type = 'text/javascript';
        s.async = true;
        s.src = '//static.getclicky.com/js';
        ( document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0] ).appendChild(s);
    })();

    
</script>
<noscript><p><img alt="Clicky" width="1" height="1" src="//in.getclicky.com/66469474ns.gif"/></p></noscript>

        

        
        
        
            <script id="hs-script-loader" src="https://js.hs-scripts.com/4272994.js" async defer></script>

        

        
        <script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "WebSite",
    "url": "https://muckrack.com",
    "name": "Muck Rack",
    "potentialAction": {
      "@type": "SearchAction",
      "target": "https://muckrack.com/search/results?q={query}",
      "query-input": "required name=query"
    },
    "sameAs": [
        "https://www.facebook.com/muckrack",
        "https://twitter.com/muckrack"
    ]
}
</script>


        
        <!-- muckrack -->
    </body>
</html>
