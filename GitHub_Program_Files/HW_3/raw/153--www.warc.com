<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge"><script type="text/javascript">window.NREUM||(NREUM={});NREUM.info = {"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"653eb44421","applicationID":"267171507","transactionName":"YlQEbBcDVkoEAEUNDFseK24mTXZcEhBwCgd6QQ9WDA1WegoNRRYMWV0DSkosXU4W","queueTime":0,"applicationTime":324,"agent":"","atts":""}</script><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VgUBUFVQDxACUlZTAAACVlM=",licenseKey:"653eb44421",applicationID:"267171507"};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o||e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(t,e,n){function r(t){try{c.console&&console.log(t)}catch(e){}}var o,i=t("ee"),a=t(27),c={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(c.console=!0,o.indexOf("dev")!==-1&&(c.dev=!0),o.indexOf("nr_dev")!==-1&&(c.nrDev=!0))}catch(s){}c.nrDev&&i.on("internal-error",function(t){r(t.stack)}),c.dev&&i.on("fn-err",function(t,e,n){r(n.stack)}),c.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(c,function(t,e){return t}).join(", ")))},{}],2:[function(t,e,n){function r(t,e,n,r,c){try{l?l-=1:o(c||new UncaughtException(t,e,n),!0)}catch(f){try{i("ierr",[f,s.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function o(t,e){var n=e?null:s.now();i("err",[t,n])}var i=t("handle"),a=t(28),c=t("ee"),s=t("loader"),f=t("gos"),u=window.onerror,d=!1,p="nr@seenError",l=0;s.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(13),t(12),"addEventListener"in window&&t(6),s.xhrWrappable&&t(14),d=!0)}c.on("fn-start",function(t,e,n){d&&(l+=1)}),c.on("fn-err",function(t,e,n){d&&!n[p]&&(f(n,p,function(){return!0}),this.thrown=!0,o(n))}),c.on("fn-end",function(){d&&!this.thrown&&l>0&&(l-=1)}),c.on("internal-error",function(t){i("ierr",[t,s.now(),!0])})},{}],3:[function(t,e,n){t("loader").features.ins=!0},{}],4:[function(t,e,n){function r(){_++,T=g.hash,this[u]=y.now()}function o(){_--,g.hash!==T&&i(0,!0);var t=y.now();this[h]=~~this[h]+t-this[u],this[d]=t}function i(t,e){E.emit("newURL",[""+g,e])}function a(t,e){t.on(e,function(){this[e]=y.now()})}var c="-start",s="-end",f="-body",u="fn"+c,d="fn"+s,p="cb"+c,l="cb"+s,h="jsTime",m="fetch",v="addEventListener",w=window,g=w.location,y=t("loader");if(w[v]&&y.xhrWrappable){var x=t(10),b=t(11),E=t(8),R=t(6),O=t(13),N=t(7),M=t(14),P=t(9),S=t("ee"),C=S.get("tracer");t(16),y.features.spa=!0;var T,_=0;S.on(u,r),S.on(p,r),S.on(d,o),S.on(l,o),S.buffer([u,d,"xhr-done","xhr-resolved"]),R.buffer([u]),O.buffer(["setTimeout"+s,"clearTimeout"+c,u]),M.buffer([u,"new-xhr","send-xhr"+c]),N.buffer([m+c,m+"-done",m+f+c,m+f+s]),E.buffer(["newURL"]),x.buffer([u]),b.buffer(["propagate",p,l,"executor-err","resolve"+c]),C.buffer([u,"no-"+u]),P.buffer(["new-jsonp","cb-start","jsonp-error","jsonp-end"]),a(M,"send-xhr"+c),a(S,"xhr-resolved"),a(S,"xhr-done"),a(N,m+c),a(N,m+"-done"),a(P,"new-jsonp"),a(P,"jsonp-end"),a(P,"cb-start"),E.on("pushState-end",i),E.on("replaceState-end",i),w[v]("hashchange",i,!0),w[v]("load",i,!0),w[v]("popstate",function(){i(0,_>1)},!0)}},{}],5:[function(t,e,n){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(13),c=t(12),s="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",p="resource",l="-start",h="-end",m="fn"+l,v="fn"+h,w="bstTimer",g="pushState",y=t("loader");y.features.stn=!0,t(8),"addEventListener"in window&&t(6);var x=NREUM.o.EV;o.on(m,function(t,e){var n=t[0];n instanceof x&&(this.bstStart=y.now())}),o.on(v,function(t,e){var n=t[0];n instanceof x&&i("bst",[n,e,this.bstStart,y.now()])}),a.on(m,function(t,e,n){this.bstStart=y.now(),this.bstType=n}),a.on(v,function(t,e){i(w,[e,this.bstStart,y.now(),this.bstType])}),c.on(m,function(){this.bstStart=y.now()}),c.on(v,function(t,e){i(w,[e,this.bstStart,y.now(),"requestAnimationFrame"])}),o.on(g+l,function(t){this.time=y.now(),this.startPath=location.pathname+location.hash}),o.on(g+h,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+s]?window.performance[f](u,function(t){i(d,[window.performance.getEntriesByType(p)]),window.performance["c"+s]()},!1):window.performance[f]("webkit"+u,function(t){i(d,[window.performance.getEntriesByType(p)]),window.performance["webkitC"+s]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],6:[function(t,e,n){function r(t){for(var e=t;e&&!e.hasOwnProperty(u);)e=Object.getPrototypeOf(e);e&&o(e)}function o(t){c.inPlace(t,[u,d],"-",i)}function i(t,e){return t[1]}var a=t("ee").get("events"),c=t("wrap-function")(a,!0),s=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";e.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,e){var n=t[1],r=s(n,"nr@wrapped",function(){function t(){if("function"==typeof n.handleEvent)return n.handleEvent.apply(n,arguments)}var e={object:t,"function":n}[typeof n];return e?c(e,"fn-",null,e.name||"anonymous"):n});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],7:[function(t,e,n){function r(t,e,n){var r=t[e];"function"==typeof r&&(t[e]=function(){var t=i(arguments),e={};o.emit(n+"before-start",[t],e);var a;e[m]&&e[m].dt&&(a=e[m].dt);var c=r.apply(this,t);return o.emit(n+"start",[t,a],c),c.then(function(t){return o.emit(n+"end",[null,t],c),t},function(t){throw o.emit(n+"end",[t],c),t})})}var o=t("ee").get("fetch"),i=t(28),a=t(27);e.exports=o;var c=window,s="fetch-",f=s+"body-",u=["arrayBuffer","blob","json","text","formData"],d=c.Request,p=c.Response,l=c.fetch,h="prototype",m="nr@context";d&&p&&l&&(a(u,function(t,e){r(d[h],e,f),r(p[h],e,f)}),r(c,"fetch",s),o.on(s+"end",function(t,e){var n=this;if(e){var r=e.headers.get("content-length");null!==r&&(n.rxSize=r),o.emit(s+"done",[null,e],n)}else o.emit(s+"done",[t],n)}))},{}],8:[function(t,e,n){var r=t("ee").get("history"),o=t("wrap-function")(r);e.exports=r;var i=window.history&&window.history.constructor&&window.history.constructor.prototype,a=window.history;i&&i.pushState&&i.replaceState&&(a=i),o.inPlace(a,["pushState","replaceState"],"-")},{}],9:[function(t,e,n){function r(t){function e(){s.emit("jsonp-end",[],p),t.removeEventListener("load",e,!1),t.removeEventListener("error",n,!1)}function n(){s.emit("jsonp-error",[],p),s.emit("jsonp-end",[],p),t.removeEventListener("load",e,!1),t.removeEventListener("error",n,!1)}var r=t&&"string"==typeof t.nodeName&&"script"===t.nodeName.toLowerCase();if(r){var o="function"==typeof t.addEventListener;if(o){var a=i(t.src);if(a){var u=c(a),d="function"==typeof u.parent[u.key];if(d){var p={};f.inPlace(u.parent,[u.key],"cb-",p),t.addEventListener("load",e,!1),t.addEventListener("error",n,!1),s.emit("new-jsonp",[t.src],p)}}}}}function o(){return"addEventListener"in window}function i(t){var e=t.match(u);return e?e[1]:null}function a(t,e){var n=t.match(p),r=n[1],o=n[3];return o?a(o,e[r]):e[r]}function c(t){var e=t.match(d);return e&&e.length>=3?{key:e[2],parent:a(e[1],window)}:{key:t,parent:window}}var s=t("ee").get("jsonp"),f=t("wrap-function")(s);if(e.exports=s,o()){var u=/[?&](?:callback|cb)=([^&#]+)/,d=/(.*)\.([^.]+)/,p=/^(\w+)(\.|$)(.*)$/,l=["appendChild","insertBefore","replaceChild"];Node&&Node.prototype&&Node.prototype.appendChild?f.inPlace(Node.prototype,l,"dom-"):(f.inPlace(HTMLElement.prototype,l,"dom-"),f.inPlace(HTMLHeadElement.prototype,l,"dom-"),f.inPlace(HTMLBodyElement.prototype,l,"dom-")),s.on("dom-start",function(t){r(t[0])})}},{}],10:[function(t,e,n){var r=t("ee").get("mutation"),o=t("wrap-function")(r),i=NREUM.o.MO;e.exports=r,i&&(window.MutationObserver=function(t){return this instanceof i?new i(o(t,"fn-")):i.apply(this,arguments)},MutationObserver.prototype=i.prototype)},{}],11:[function(t,e,n){function r(t){var e=a.context(),n=c(t,"executor-",e),r=new f(n);return a.context(r).getCtx=function(){return e},a.emit("new-promise",[r,e],e),r}function o(t,e){return e}var i=t("wrap-function"),a=t("ee").get("promise"),c=i(a),s=t(27),f=NREUM.o.PR;e.exports=a,f&&(window.Promise=r,["all","race"].forEach(function(t){var e=f[t];f[t]=function(n){function r(t){return function(){a.emit("propagate",[null,!o],i),o=o||!t}}var o=!1;s(n,function(e,n){Promise.resolve(n).then(r("all"===t),r(!1))});var i=e.apply(f,arguments),c=f.resolve(i);return c}}),["resolve","reject"].forEach(function(t){var e=f[t];f[t]=function(t){var n=e.apply(f,arguments);return t!==n&&a.emit("propagate",[t,!0],n),n}}),f.prototype["catch"]=function(t){return this.then(null,t)},f.prototype=Object.create(f.prototype,{constructor:{value:r}}),s(Object.getOwnPropertyNames(f),function(t,e){try{r[e]=f[e]}catch(n){}}),a.on("executor-start",function(t){t[0]=c(t[0],"resolve-",this),t[1]=c(t[1],"resolve-",this)}),a.on("executor-err",function(t,e,n){t[1](n)}),c.inPlace(f.prototype,["then"],"then-",o),a.on("then-start",function(t,e){this.promise=e,t[0]=c(t[0],"cb-",this),t[1]=c(t[1],"cb-",this)}),a.on("then-end",function(t,e,n){this.nextPromise=n;var r=this.promise;a.emit("propagate",[r,!0],n)}),a.on("cb-end",function(t,e,n){a.emit("propagate",[n,!0],this.nextPromise)}),a.on("propagate",function(t,e,n){this.getCtx&&!e||(this.getCtx=function(){if(t instanceof Promise)var e=a.context(t);return e&&e.getCtx?e.getCtx():this})}),r.toString=function(){return""+f})},{}],12:[function(t,e,n){var r=t("ee").get("raf"),o=t("wrap-function")(r),i="equestAnimationFrame";e.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],13:[function(t,e,n){function r(t,e,n){t[0]=a(t[0],"fn-",null,n)}function o(t,e,n){this.method=n,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,n)}var i=t("ee").get("timer"),a=t("wrap-function")(i),c="setTimeout",s="setInterval",f="clearTimeout",u="-start",d="-";e.exports=i,a.inPlace(window,[c,"setImmediate"],c+d),a.inPlace(window,[s],s+d),a.inPlace(window,[f,"clearImmediate"],f+d),i.on(s+u,r),i.on(c+u,o)},{}],14:[function(t,e,n){function r(t,e){d.inPlace(e,["onreadystatechange"],"fn-",c)}function o(){var t=this,e=u.context(t);t.readyState>3&&!e.resolved&&(e.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,g,"fn-",c)}function i(t){y.push(t),h&&(b?b.then(a):v?v(a):(E=-E,R.data=E))}function a(){for(var t=0;t<y.length;t++)r([],y[t]);y.length&&(y=[])}function c(t,e){return e}function s(t,e){for(var n in t)e[n]=t[n];return e}t(6);var f=t("ee"),u=f.get("xhr"),d=t("wrap-function")(u),p=NREUM.o,l=p.XHR,h=p.MO,m=p.PR,v=p.SI,w="readystatechange",g=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],y=[];e.exports=u;var x=window.XMLHttpRequest=function(t){var e=new l(t);try{u.emit("new-xhr",[e],e),e.addEventListener(w,o,!1)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}return e};if(s(l,x),x.prototype=l.prototype,d.inPlace(x.prototype,["open","send"],"-xhr-",c),u.on("send-xhr-start",function(t,e){r(t,e),i(e)}),u.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!v&&!m){var E=1,R=document.createTextNode(E);new h(a).observe(R,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===w||a()})},{}],15:[function(t,e,n){function r(t){if(!c(t))return null;var e=window.NREUM;if(!e.loader_config)return null;var n=(e.loader_config.accountID||"").toString()||null,r=(e.loader_config.agentID||"").toString()||null,f=(e.loader_config.trustKey||"").toString()||null;if(!n||!r)return null;var h=l.generateSpanId(),m=l.generateTraceId(),v=Date.now(),w={spanId:h,traceId:m,timestamp:v};return(t.sameOrigin||s(t)&&p())&&(w.traceContextParentHeader=o(h,m),w.traceContextStateHeader=i(h,v,n,r,f)),(t.sameOrigin&&!u()||!t.sameOrigin&&s(t)&&d())&&(w.newrelicHeader=a(h,m,v,n,r,f)),w}function o(t,e){return"00-"+e+"-"+t+"-01"}function i(t,e,n,r,o){var i=0,a="",c=1,s="",f="";return o+"@nr="+i+"-"+c+"-"+n+"-"+r+"-"+t+"-"+a+"-"+s+"-"+f+"-"+e}function a(t,e,n,r,o,i){var a="btoa"in window&&"function"==typeof window.btoa;if(!a)return null;var c={v:[0,1],d:{ty:"Browser",ac:r,ap:o,id:t,tr:e,ti:n}};return i&&r!==i&&(c.d.tk=i),btoa(JSON.stringify(c))}function c(t){return f()&&s(t)}function s(t){var e=!1,n={};if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(n=NREUM.init.distributed_tracing),t.sameOrigin)e=!0;else if(n.allowed_origins instanceof Array)for(var r=0;r<n.allowed_origins.length;r++){var o=h(n.allowed_origins[r]);if(t.hostname===o.hostname&&t.protocol===o.protocol&&t.port===o.port){e=!0;break}}return e}function f(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.enabled}function u(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.exclude_newrelic_header}function d(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&NREUM.init.distributed_tracing.cors_use_newrelic_header!==!1}function p(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.cors_use_tracecontext_headers}var l=t(24),h=t(17);e.exports={generateTracePayload:r,shouldGenerateTrace:c}},{}],16:[function(t,e,n){function r(t){var e=this.params,n=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<p;r++)t.removeEventListener(d[r],this.listener,!1);e.aborted||(n.duration=a.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==e.status&&(e.status=0):i(this,t),n.cbTime=this.cbTime,u.emit("xhr-done",[t],t),c("xhr",[e,n,this.startTime]))}}function o(t,e){var n=s(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.parsedOrigin=s(e),t.sameOrigin=t.parsedOrigin.sameOrigin}function i(t,e){t.params.status=e.status;var n=v(e,t.lastSize);if(n&&(t.metrics.rxSize=n),t.sameOrigin){var r=e.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var a=t("loader");if(a.xhrWrappable){var c=t("handle"),s=t(17),f=t(15).generateTracePayload,u=t("ee"),d=["load","error","abort","timeout"],p=d.length,l=t("id"),h=t(21),m=t(20),v=t(18),w=window.XMLHttpRequest;a.features.xhr=!0,t(14),t(7),u.on("new-xhr",function(t){var e=this;e.totalCbs=0,e.called=0,e.cbTime=0,e.end=r,e.ended=!1,e.xhrGuids={},e.lastSize=null,e.loadCaptureCalled=!1,t.addEventListener("load",function(n){i(e,t)},!1),h&&(h>34||h<10)||window.opera||t.addEventListener("progress",function(t){e.lastSize=t.loaded},!1)}),u.on("open-xhr-start",function(t){this.params={method:t[0]},o(this,t[1]),this.metrics={}}),u.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var n=f(this.parsedOrigin);if(n){var r=!1;n.newrelicHeader&&(e.setRequestHeader("newrelic",n.newrelicHeader),r=!0),n.traceContextParentHeader&&(e.setRequestHeader("traceparent",n.traceContextParentHeader),n.traceContextStateHeader&&e.setRequestHeader("tracestate",n.traceContextStateHeader),r=!0),r&&(this.dt=n)}}),u.on("send-xhr-start",function(t,e){var n=this.metrics,r=t[0],o=this;if(n&&r){var i=m(r);i&&(n.txSize=i)}this.startTime=a.now(),this.listener=function(t){try{"abort"!==t.type||o.loadCaptureCalled||(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof e.onload))&&o.end(e)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}};for(var c=0;c<p;c++)e.addEventListener(d[c],this.listener,!1)}),u.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),u.on("xhr-load-added",function(t,e){var n=""+l(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),u.on("xhr-load-removed",function(t,e){var n=""+l(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),u.on("addEventListener-end",function(t,e){e instanceof w&&"load"===t[0]&&u.emit("xhr-load-added",[t[1],t[2]],e)}),u.on("removeEventListener-end",function(t,e){e instanceof w&&"load"===t[0]&&u.emit("xhr-load-removed",[t[1],t[2]],e)}),u.on("fn-start",function(t,e,n){e instanceof w&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),u.on("fn-end",function(t,e){this.xhrCbStart&&u.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,e],e)}),u.on("fetch-before-start",function(t){function e(t,e){var n=!1;return e.newrelicHeader&&(t.set("newrelic",e.newrelicHeader),n=!0),e.traceContextParentHeader&&(t.set("traceparent",e.traceContextParentHeader),e.traceContextStateHeader&&t.set("tracestate",e.traceContextStateHeader),n=!0),n}var n,r=t[1]||{};"string"==typeof t[0]?n=t[0]:t[0]&&t[0].url&&(n=t[0].url),n&&(this.parsedOrigin=s(n),this.sameOrigin=this.parsedOrigin.sameOrigin);var o=f(this.parsedOrigin);if(o&&(o.newrelicHeader||o.traceContextParentHeader))if("string"==typeof t[0]){var i={};for(var a in r)i[a]=r[a];i.headers=new Headers(r.headers||{}),e(i.headers,o)&&(this.dt=o),t.length>1?t[1]=i:t.push(i)}else t[0]&&t[0].headers&&e(t[0].headers,o)&&(this.dt=o)})}},{}],17:[function(t,e,n){var r={};e.exports=function(t){if(t in r)return r[t];var e=document.createElement("a"),n=window.location,o={};e.href=t,o.port=e.port;var i=e.href.split("://");!o.port&&i[1]&&(o.port=i[1].split("/")[0].split("@").pop().split(":")[1]),o.port&&"0"!==o.port||(o.port="https"===i[0]?"443":"80"),o.hostname=e.hostname||n.hostname,o.pathname=e.pathname,o.protocol=i[0],"/"!==o.pathname.charAt(0)&&(o.pathname="/"+o.pathname);var a=!e.protocol||":"===e.protocol||e.protocol===n.protocol,c=e.hostname===document.domain&&e.port===n.port;return o.sameOrigin=a&&(!e.hostname||c),"/"===o.pathname&&(r[t]=o),o}},{}],18:[function(t,e,n){function r(t,e){var n=t.responseType;return"json"===n&&null!==e?e:"arraybuffer"===n||"blob"===n||"json"===n?o(t.response):"text"===n||""===n||void 0===n?o(t.responseText):void 0}var o=t(20);e.exports=r},{}],19:[function(t,e,n){function r(){}function o(t,e,n){return function(){return i(t,[f.now()].concat(c(arguments)),e?null:this,n),e?void 0:this}}var i=t("handle"),a=t(27),c=t(28),s=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],p="api-",l=p+"ixn-";a(d,function(t,e){u[e]=o(p+e,!0,"api")}),u.addPageAction=o(p+"addPageAction",!0),u.setCurrentRouteName=o(p+"routeName",!0),e.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,e){var n={},r=this,o="function"==typeof e;return i(l+"tracer",[f.now(),t,n],r),function(){if(s.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return e.apply(this,arguments)}catch(t){throw s.emit("fn-err",[arguments,this,t],n),t}finally{s.emit("fn-end",[f.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){h[e]=o(l+e)}),newrelic.noticeError=function(t,e){"string"==typeof t&&(t=new Error(t)),i("err",[t,f.now(),!1,e])}},{}],20:[function(t,e,n){e.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(e){return}}}},{}],21:[function(t,e,n){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),e.exports=r},{}],22:[function(t,e,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(i=Math.max((new Date).getTime(),i))-a}function o(){return i}var i=(new Date).getTime(),a=i,c=t(29);e.exports=r,e.exports.offset=a,e.exports.getLastTimestamp=o},{}],23:[function(t,e,n){function r(t,e){var n=t.getEntries();n.forEach(function(t){"first-paint"===t.name?d("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&d("timing",["fcp",Math.floor(t.startTime)])})}function o(t,e){var n=t.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function i(t){t.getEntries().forEach(function(t){t.hadRecentInput||d("cls",[t])})}function a(t){if(t instanceof h&&!v){var e=Math.round(t.timeStamp),n={type:t.type};e<=p.now()?n.fid=p.now()-e:e>p.offset&&e<=Date.now()?(e-=p.offset,n.fid=p.now()-e):e=p.now(),v=!0,d("timing",["fi",e,n])}}function c(t){d("pageHide",[p.now(),t])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var s,f,u,d=t("handle"),p=t("loader"),l=t(26),h=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){s=new PerformanceObserver(r);try{s.observe({entryTypes:["paint"]})}catch(m){}f=new PerformanceObserver(o);try{f.observe({entryTypes:["largest-contentful-paint"]})}catch(m){}u=new PerformanceObserver(i);try{u.observe({type:"layout-shift",buffered:!0})}catch(m){}}if("addEventListener"in document){var v=!1,w=["click","keydown","mousedown","pointerdown","touchstart"];w.forEach(function(t){document.addEventListener(t,a,!1)})}l(c)}},{}],24:[function(t,e,n){function r(){function t(){return e?15&e[n++]:16*Math.random()|0}var e=null,n=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(e=r.getRandomValues(new Uint8Array(31)));for(var o,i="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",c=0;c<i.length;c++)o=i[c],"x"===o?a+=t().toString(16):"y"===o?(o=3&t()|8,a+=o.toString(16)):a+=o;return a}function o(){return a(16)}function i(){return a(32)}function a(t){function e(){return n?15&n[r++]:16*Math.random()|0}var n=null,r=0,o=window.crypto||window.msCrypto;o&&o.getRandomValues&&Uint8Array&&(n=o.getRandomValues(new Uint8Array(31)));for(var i=[],a=0;a<t;a++)i.push(e().toString(16));return i.join("")}e.exports={generateUuid:r,generateSpanId:o,generateTraceId:i}},{}],25:[function(t,e,n){function r(t,e){if(!o)return!1;if(t!==o)return!1;if(!e)return!0;if(!i)return!1;for(var n=i.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,s=c.match(a);s&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(o="Safari",i=s[1])}e.exports={agent:o,version:i,match:r}},{}],26:[function(t,e,n){function r(t){function e(){t(a&&document[a]?document[a]:document[o]?"hidden":"visible")}"addEventListener"in document&&i&&document.addEventListener(i,e,!1)}e.exports=r;var o,i,a;"undefined"!=typeof document.hidden?(o="hidden",i="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(o="msHidden",i="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(o="webkitHidden",i="webkitvisibilitychange",a="webkitVisibilityState")},{}],27:[function(t,e,n){function r(t,e){var n=[],r="",i=0;for(r in t)o.call(t,r)&&(n[i]=e(r,t[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],28:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(o<0?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=r},{}],29:[function(t,e,n){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,e,n){function r(){}function o(t){function e(t){return t&&t instanceof r?t:t?s(t,c,i):i()}function n(n,r,o,i){if(!p.aborted||i){t&&t(n,r,o);for(var a=e(o),c=m(n),s=c.length,f=0;f<s;f++)c[f].apply(a,r);var d=u[y[n]];return d&&d.push([x,n,r,a]),a}}function l(t,e){g[t]=m(t).concat(e)}function h(t,e){var n=g[t];if(n)for(var r=0;r<n.length;r++)n[r]===e&&n.splice(r,1)}function m(t){return g[t]||[]}function v(t){return d[t]=d[t]||o(n)}function w(t,e){f(t,function(t,n){e=e||"feature",y[n]=e,e in u||(u[e]=[])})}var g={},y={},x={on:l,addEventListener:l,removeEventListener:h,emit:n,get:v,listeners:m,context:e,buffer:w,abort:a,aborted:!1};return x}function i(){return new r}function a(){(u.api||u.feature)&&(p.aborted=!0,u=p.backlog={})}var c="nr@context",s=t("gos"),f=t(27),u={},d={},p=e.exports=o();p.backlog=u},{}],gos:[function(t,e,n){function r(t,e,n){if(o.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[e]=r,r}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){o.buffer([t],r),o.emit(t,e,n)}var o=t("ee").get("handle");e.exports=r,r.ee=o},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!b++){var t=x.info=NREUM.info,e=p.getElementsByTagName("script")[0];if(setTimeout(f.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&e))return f.abort();s(g,function(e,n){t[e]||(t[e]=n)});var n=a();c("mark",["onload",n+x.offset],null,"api"),c("timing",["load",n]);var r=p.createElement("script");r.src="https://"+t.agent,e.parentNode.insertBefore(r,e)}}function o(){"complete"===p.readyState&&i()}function i(){c("mark",["domContent",a()+x.offset],null,"api")}var a=t(22),c=t("handle"),s=t(27),f=t("ee"),u=t(25),d=window,p=d.document,l="addEventListener",h="attachEvent",m=d.XMLHttpRequest,v=m&&m.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:m,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var w=""+location,g={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-spa-1184.min.js"},y=m&&v&&v[l]&&!/CriOS/.test(navigator.userAgent),x=e.exports={offset:a.getLastTimestamp(),now:a,origin:w,features:{},xhrWrappable:y,userAgent:u};t(19),t(23),p[l]?(p[l]("DOMContentLoaded",i,!1),d[l]("load",r,!1)):(p[h]("onreadystatechange",o),d[h]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var b=0},{}],"wrap-function":[function(t,e,n){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var o=t("ee"),i=t(28),a="nr@original",c=Object.prototype.hasOwnProperty,s=!1;e.exports=function(t,e){function n(t,e,n,o){function nrWrapper(){var r,a,c,s;try{a=this,r=i(arguments),c="function"==typeof n?n(r,a):n||{}}catch(f){p([f,"",[r,a,o],c])}u(e+"start",[r,a,o],c);try{return s=t.apply(a,r)}catch(d){throw u(e+"err",[r,a,d],c),d}finally{u(e+"end",[r,a,s],c)}}return r(t)?t:(e||(e=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,e,o,i){o||(o="");var a,c,s,f="-"===o.charAt(0);for(s=0;s<e.length;s++)c=e[s],a=t[c],r(a)||(t[c]=n(a,f?c+o:o,i,c))}function u(n,r,o){if(!s||e){var i=s;s=!0;try{t.emit(n,r,o,e)}catch(a){p([a,n,r,o])}s=i}}function d(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){p([r])}for(var o in t)c.call(t,o)&&(e[o]=t[o]);return e}function p(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=o),n.inPlace=f,n.flag=a,n}},{}]},{},["loader",2,16,5,3,4]);</script>
<meta name="title" content="How Meredith’s branded content operation is responding to COVID-19 | WARC" />
<meta name="description" content="Native advertising and branded content will continue to be a vital way of building long-lasting relationships with brands, a Meredith executive believes, but the nature of those bonds and the material they create are changing." />

<meta property="og:title" content="How Meredith’s branded content operation is responding to COVID-19 | WARC" />
<meta property="og:image" content="/images-site/warc-logo-opg.png" />
<meta property="og:description" content="Native advertising and branded content will continue to be a vital way of building long-lasting relationships with brands, a Meredith executive believes, but the nature of those bonds and the material they create are changing." />
<meta property="og:url" content="http://origin.warc.com/newsandopinion/news/how-merediths-branded-content-operation-is-responding-to-covid-19/44197" />
<meta name="theme-color" content="#ffffff">

<title>How Meredith’s branded content operation is responding to COVID-19 | WARC</title>

<!-- From Layout -->
<link rel="apple-touch-icon" sizes="180x180" href="https://cdn.warc.com/apple-touch-icon.png">
<link rel="icon" type="image/png" href="https://cdn.warc.com/favicon-32x32.png" sizes="32x32">
<link rel="icon" type="image/png" href="https://cdn.warc.com/favicon-16x16.png" sizes="16x16">
<link rel="manifest" href="/manifest.json">
<link rel="mask-icon" href="https://cdn.warc.com/safari-pinned-tab.svg" color="#313678">
<!--Sans-serif - Aktiv Grotesk-->
<link rel="stylesheet" href="https://use.typekit.net/xtv3zgw.css">
<!--Serif - Starling-->
<link rel="stylesheet" href="https://use.typekit.net/dwj5fqn.css">

<link rel="base" href="https://www.warc.com" />

<!-- TODO review what is actually necessary for logged out and load styles conditionally -->
<link rel='stylesheet' type='text/css' href='https://cdn.warc.com/css/bootstrap.min.css?v=1005173601' />

<link rel='stylesheet' type='text/css' href='https://cdn.warc.com/styles/css/navigation.min.css?v=1005173603' />

<!-- TODO review what is actually necessary for logged out and load scripts conditionally -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type='text/javascript' src='https://cdn.warc.com/JavaScript/Hotjar/Hotjar.js?v=1005173602'></script>
<script>
    let userLanguage = "en-GB";
    let hasWarningMessage = false;
</script>

<script type='text/javascript' src='https://cdn.warc.com/JavaScript/ResourceLoader.min.js?v=1005173600'></script>
<script type='text/javascript' src='https://cdn.warc.com/JavaScript/UserSettings.min.js?v=1005173601'></script>
<script type='text/javascript' src='https://cdn.warc.com/JavaScript/UI/WarcWaitLogo2.min.js?v=1005173558'></script>
<script type='text/javascript' src='https://cdn.warc.com/JavaScript/CommonFunctions.min.js?v=1005173603'></script>

<script type="text/javascript">
</script>
<script type='text/javascript' src='https://cdn.warc.com/Scripts/Views/Shared/Layout/Head/Head.min.js?v=1005173600'></script>
    

    <link rel="canonical" href="https://www.warc.com/newsandopinion/news/how-merediths-branded-content-operation-is-responding-to-covid-19/44197"/>

    <script type='text/javascript' src='https://cdn.warc.com/JavaScript/UI/Notification.min.js?v=1005173601'></script>

    <script type="
			text/javascript">
		(function() {
			window.dataLayer = window.dataLayer || [];

			window.dataLayer.push({ "ContentID": "7cfb6323-0623-453d-96be-11392700e2bf" });
			window.dataLayer.push({ "ContentPublishDate": "08/10/2020 00:00:00" });
			window.dataLayer.push({ "ContentType": "News" });
			window.dataLayer.push({ "ContentTitle": "How Meredith’s branded content operation is responding to COVID-19" });
			window.dataLayer.push({ "ContentSector": "News and Opinion" });
			window.dataLayer.push({ "AccessType": undefined });
        window.dataLayer.push({ "ReadTime": "2" });
		})();
    </script>

</head>
<body>
    <div class="header-items-holder">
        <header id="header-nav" data-user-logged-in="false">
    <div id="mobileHeader" class="header">
        <a href="/" class="logo">
            <svg id="WARC" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 441 100" height="22px" width="100px"><g id="White"><g id="WARC-2" data-name="WARC"><polygon id="W" class="cls-1" points="99.98 4.12 88.33 66.25 74.98 4.78 51.82 4.78 38.74 66.25 26.7 4.12 0 4.12 25 99.31 49.86 99.31 63.08 38.38 76.55 99.31 101.68 99.31 125.89 4.12 99.98 4.12" /><path id="A" class="cls-1" d="M165.65,27.85l9.55,32.8H156ZM151.78,4.11l-32.46,95.2h25.26l5.24-18.26h31.53l5.37,18.26h26L180.31,4.11Z" /><path id="R" class="cls-1" d="M300.5,34.24a35.45,35.45,0,0,1-3.4,15.94,26.76,26.76,0,0,1-10.47,11.13l19.11,38H279.17l-15.31-32.8H250.25v32.8H226.3V4.11h36.91q10.86,0,18.05,2.54a30.32,30.32,0,0,1,11.45,6.73,23.64,23.64,0,0,1,6,9.67A36.4,36.4,0,0,1,300.5,34.24ZM250.25,46.65h12.3c5.06,0,8.62-1,10.67-3s3.07-4.87,3.07-8.6c0-3.56-1.09-6.31-3.27-8.27s-5.93-2.93-11.25-2.93H250.25Z" /><path id="C" class="cls-1" d="M361.58,78a18.09,18.09,0,0,1-7.39-1.47,14,14,0,0,1-5.76-4.8A24.48,24.48,0,0,1,344.7,63a56.73,56.73,0,0,1-1.31-13.13Q343.39,22,361.32,22h.26q13.74,0,15.7,15.2h25.65a47.38,47.38,0,0,0-3.27-14.67,34.42,34.42,0,0,0-7.85-11.8,36.08,36.08,0,0,0-12.7-7.86,49.41,49.41,0,0,0-17-2.85l0,0-.3,0-.35,0V0a48.35,48.35,0,0,0-19.17,3.7,39.17,39.17,0,0,0-14.14,10.4,43.81,43.81,0,0,0-8.5,15.94,70,70,0,0,0-2.82,20.46,69.51,69.51,0,0,0,2.75,20.07,43.24,43.24,0,0,0,8.25,15.66A36.66,36.66,0,0,0,341.69,96.4a55.91,55.91,0,0,0,37.42.73,36.08,36.08,0,0,0,12.7-7.86,34.42,34.42,0,0,0,7.85-11.8,47.38,47.38,0,0,0,3.27-14.67H377.28Q375.33,78,361.58,78" /></g><polygon id="Ascential" class="cls-2" points="426.58 4.22 425.87 4.22 411.46 37.22 413.28 37.22 426.19 7.4 438.98 37.22 440.87 37.22 426.58 4.22" /></g></svg>
        </a>
        <div id="header-interaction" class="header-interaction">
<div class="header-links">
    <a href="/demo" class="link-accent link-item">Get a demo</a>
    <a onclick="window.location.href ='https://content.warc.com/do-i-have-access-to-warc.html'" class="link-item">Do I subscribe?</a>
    <div class="header-language-toggle link-item">
        <div class="language-selector" data-language-selector></div>
        <div class="language-menu" data-language-menu>
            <ul>
                    <li data-language="en-GB"><a onclick="TrackEvent('Logged_in_header', 'Settings', 'Language');" href="/language/en-GB">English</a></li>
                    <li data-language="zh-CN"><a onclick="TrackEvent('Logged_in_header', 'Settings', 'Language');" href="/language/zh-CN">中文</a></li>
                    <li data-language="ko-KR"><a onclick="TrackEvent('Logged_in_header', 'Settings', 'Language');" href="/language/ko-KR">한국어</a></li>
            </ul>
        </div>
    </div>
    <a id="loginLinkMobile" href="/sign-in" class="link-item">Sign in</a>
    <form action="/Search" class="form-search-bar" id="mobile-search-form" method="get">        <div id="mobileSearchBar" class="search-logged-out-container">
            <div class="mobile-search search-logged-out">
                <input type="text" name="q" class="search-input-text" placeholder="Search for case studies and research" /><input type="submit" class="search-input-submit" name="submit-search" value="&nbsp;" onclick="return onMobileSearchSubmitClicked();" />
                <button type="button" class="button-search-close" onclick="ToggleSearch();">
                    <svg class="svg-search-close" preserveAspectRatio="xMidYMid meet" viewBox="0 0 15 15" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <g id="Symbols" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
        <g id="Section/Menu" transform="translate(-1394.000000, -32.000000)" class="svg-stroke" stroke="#313678" stroke-width="2">
            <g id="Menu">
                <g id="Close" transform="translate(1374.000000, 12.000000)">
                    <g id="cross" transform="translate(20.000000, 20.000000)">
                        <line x1="-1.5" y1="7.5" x2="16.5" y2="7.5" id="Line" transform="translate(7.500000, 7.500000) rotate(-45.000000) translate(-7.500000, -7.500000) "></line>
                        <line x1="-1.5" y1="7.5" x2="16.5" y2="7.5" id="Line" transform="translate(7.500000, 7.500000) rotate(45.000000) translate(-7.500000, -7.500000) "></line>
                    </g>
                </g>
            </g>
        </g>
    </g>
</svg>
                </button>
            </div>
        </div>
        <a href="/search/advanced" class="link-advanced-search">Advanced Search</a>
</form>
<div class="search-screen"></div>

</div>
        </div>
        <div class="header-buttons">
                <button class="button-image-round button-search" onclick="ToggleSearch();">
                    <svg preserveAspectRatio="xMidYMid meet" width="27px" height="29px" viewBox="0 0 27 29" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <g id="Symbols" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round">
        <g id="Icons/Search" transform="translate(0.000000, -1.000000)" stroke="#FFFFFF" class="svg-search" stroke-width="3">
            <g id="Group" transform="translate(15.178606, 16.616978) rotate(-40.000000) translate(-15.178606, -16.616978) translate(5.678606, 2.116978)">
                <path d="M9.5,19 C14.7467051,19 19,14.7467051 19,9.5 C19,4.25329488 14.7467051,-2.27373675e-12 9.5,-2.27373675e-12 C4.25329488,-2.27373675e-12 -4.54747351e-12,4.25329488 -4.54747351e-12,9.5 C-4.54747351e-12,14.7467051 4.25329488,19 9.5,19 Z M9.5,19.5 L9.5,29" id="Combined-Shape"></path>
            </g>
        </g>
    </g>
</svg>
                </button>
            <button class="button-image-round button-hamburger">
                <svg preserveAspectRatio="xMidYMid meet" width="21px" height="17px" viewBox="0 0 21 17" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <g id="Symbols" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
        <g id="Buttons/Hamburger" transform="translate(-17.000000, -19.000000)" stroke="#313678" class="svg-hamburger" stroke-width="2">
            <g id="Hamburger">
                <g id="Group" transform="translate(18.000000, 20.000000)">
                    <line x1="0.5" y1="14.5" x2="18.5" y2="14.5" id="Line"></line>
                    <line x1="0.5" y1="7.5" x2="18.5" y2="7.5" id="Line"></line>
                    <line x1="0.5" y1="0.5" x2="18.5" y2="0.5" id="Line"></line>
                </g>
            </g>
        </g>
    </g>
</svg>
            </button>
        </div>
    </div>

    <nav id="mobileMenu" class="skiptranslate">
        <div id="mobileMenuContent">
            <div class="screen"></div>
            <div class="hamburger-menu">
                <button class="button-image-round bg-white button-menu-close">
                    <svg class="svg-search-close" preserveAspectRatio="xMidYMid meet" viewBox="0 0 15 15" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <g id="Symbols" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
        <g id="Section/Menu" transform="translate(-1394.000000, -32.000000)" class="svg-stroke" stroke="#313678" stroke-width="2">
            <g id="Menu">
                <g id="Close" transform="translate(1374.000000, 12.000000)">
                    <g id="cross" transform="translate(20.000000, 20.000000)">
                        <line x1="-1.5" y1="7.5" x2="16.5" y2="7.5" id="Line" transform="translate(7.500000, 7.500000) rotate(-45.000000) translate(-7.500000, -7.500000) "></line>
                        <line x1="-1.5" y1="7.5" x2="16.5" y2="7.5" id="Line" transform="translate(7.500000, 7.500000) rotate(45.000000) translate(-7.500000, -7.500000) "></line>
                    </g>
                </g>
            </g>
        </g>
    </g>
</svg>
                </button>
<div class="mobile-top-level-menu single-level">
    <a href="/about-core-warc">Core WARC</a>
</div>
<div class="mobile-top-level-menu single-level">
    <a href="/about-warc-data">WARC Data</a>
</div>
<div class="mobile-top-level-menu single-level">
    <a href="/about-warc-rankings">WARC Rankings</a>
</div>
<div class="mobile-top-level-menu single-level">
    <a href="/about-warc-advisory">WARC Advisory</a>
</div>
<div class="mobile-top-level-menu single-level">
    <a href="/compare-plans">Compare Plans</a>
</div>
<div class="mobile-top-level-menu single-level">
    <a href="/our-clients">Our Clients</a>
</div>
<div class="mobile-top-level-menu single-level">
    <a href="/meet-the-experts">Meet the Experts</a>
</div>
<div class="mobile-top-level-menu single-level">
    <a href="/newsandopinion">News &amp; Opinion</a>
</div>
<div class="mobile-top-level-menu single-level">
    <a href="https://content.warc.com/warc-talks.html">WARC Talks</a>
</div>
<div class="mobile-top-level-menu expand-level">
    <a onclick="showMobileMenuItems('exploreMenuDiv');">Awards</a>
    <div id="exploreMenuDiv" class="mobile-menu-item" style="display: none">
        <ul>
            <li><a href='/topics/awards.topic'>Our Awards</a></li>
            <li><a href='/topics/awards.topic?tab=Partner_Awards'>Partner Awards</a></li>
        </ul>
    </div>
</div>

<div class="mobile-top-level-menu single-level">
    <a id="contactUsLink" href="/topics">Explore by Topic</a>
</div>
<div class="hamburger-menu-header-links">
    <div class="mobile-top-level-menu single-level">
        <a href="/do-i-subscribe">Do I subscribe?</a>
    </div>
    <div class="mobile-top-level-menu single-level mobile-header-lang-toggle">
        <div class="language-selector">English</div>
        <div class="language-menu">
            <ul>
                <li><a onclick="TrackEvent('Logged_in_header', 'Settings', 'Language');" href="/language/zh-CN">中文</a></li>
                <li class="language-selected"><a onclick="TrackEvent('Logged_in_header', 'Settings', 'Language');" href="/language/en-GB">English</a></li>
            </ul>
        </div>
    </div>
    <div class="mobile-top-level-menu single-level">
        <a id="loginLinkMobile" href="/sign-in?OriginalUrl=/newsandopinion/news/how-merediths-branded-content-operation-is-responding-to-covid-19/44197">Sign in</a>
    </div>
</div>
            </div>
        </div>
    </nav>
</header>
<script type='text/javascript' src='https://cdn.warc.com/Scripts/Views/Shared/Layout/Header/Header.js?v=1005173602'></script>
    </div>

    <main id="mainContent" class="styled-links">
        



<link rel='stylesheet' type='text/css' href='https://cdn.warc.com/css/pages.min.css?v=1005173558' />
<link rel='stylesheet' type='text/css' href='https://cdn.warc.com/css/articles.min.css?v=1005173601' />

<script type="text/javascript">
	$(function () {
		TrackEvent("News_Article_viewer", "Page_Hit", "");
	});

	$(document).ready(function ($) {

		var url = window.location;
		if (navigator.userAgent.indexOf("Firefox") != -1) {
			$('.FbookShare').attr('href', "http://www.facebook.com/sharer/sharer.php?u=" + url + "&display=popup&ref=plugin','Facebook','width=500,height=300'");
		}
		else {
			$('.FbookShare').attr('onclick', "TrackEvent('News_Article_viewer', 'Top_buttons', 'Facebook');javascript:window.open('http://www.facebook.com/sharer/sharer.php?u=" + url + "&display=popup&ref=plugin','Facebook','width=500,height=300')");
		}

		try {

			var jTitle = document.getElementsByTagName('h1');

			jTitle = jTitle[0].innerHTML;

			$('.LIShare').attr('href', "http://www.linkedin.com/shareArticle?mini=true&url=" + encodeURIComponent(url) + "&title=" + jTitle);
			$('.TShare').attr('href', "https://twitter.com/intent/tweet?text=" + jTitle.trim() + " %7C via @warceditors &url=https://" + document.domain + "/NewsAndOpinion/News/44197");
		}
		catch (err) {

		}
	});
</script>

<script type="application/ld+json">
    {
    "@context": "http://schema.org",
    "@type": "NewsArticle",
    "headline": "How Meredith’s branded content operation is responding to COVID-19"
    }
</script>

<section id="news-opinion-tools" class="container">

    <div class="social-wrapper">

        <div class="social-icon">
            <a class="FbookShare" target="_blank" href="#" data-actionbutton-name="facebook" onclick="TrackEvent('News_Article_viewer', 'Top_buttons', 'Facebook');"><img class="tool-icon-img" src="https://cdn.warc.com/images-site/logos/facebook-col.svg" alt="Facebook" /></a>
        </div>
        <div class="social-icon">
            <a class="TShare" target="_blank" href="#" data-actionbutton-name="twitter" onclick="TrackEvent('News_Article_viewer', 'Top_buttons', 'Twitter');"><img class="tool-icon-img" src="https://cdn.warc.com/images-site/logos/twitter-col.svg" alt="Twitter" /></a>
        </div>
        <div class="social-icon">
            <a class="LIShare" href="#" data-actionbutton-name="linkedin" target="popup" onclick="TrackEvent('News_Article_viewer', 'Top_buttons', 'LinkedIn'); window.open(this.href, 'PopUpWindow', 'width=620 height=470'); return false;" onfocus="this.blur()"><img class="tool-icon-img" src="https://cdn.warc.com/images-site/logos/linkedin-col.svg" alt="LinkedIn" /></a>
        </div>
    </div>

    <div id="google_translate_element"></div>

    <div class="tools-wrapper">
                <div class="tool-icon">
            <img class="tool-icon-img" data-actionbutton-name="print" src="https://cdn.warc.com/images-site/actions/print.svg" onclick="window.print();TrackEvent('News_Article_viewer', 'Top_buttons', 'Print');" alt="Print" />
        </div>
    </div>


</section>

<header id="article-header" class="container article-section news-opinion-header">

    <h1>How Meredith’s branded content operation is responding to COVID-19</h1>

    <section id="article-metadata">
        <div class="row">
            <div class="read-time col-auto">2 min read</div>
            <div class="article-source col">
                News, 08/10/2020
            </div>
        </div>

    </section>

</header>

<section class="container article-section article-topics">
    <div class="row">
        <div class="col-md-2">
            <div class="label article-section-title">
                Topics
            </div>
        </div>
        <div class="col-md-10 col-xl-8">
            <ul class="label article-topics-list">
                        <li><a href="/search/Media_publishing/Media &amp; publishing (general)" onclick="TrackEvent('News_Article_viewer', 'Topics', 'Top');">Media &amp; publishing (general)</a></li>
                        <li><a href="/search/North-America/United States" onclick="TrackEvent('News_Article_viewer', 'Topics', 'Top');">United States</a></li>
                        <li><a href="/search/Content/Native advertising &amp; advertorial" onclick="TrackEvent('News_Article_viewer', 'Topics', 'Top');">Native advertising &amp; advertorial</a></li>
                        <li><a href="/search/Content/Brand-funded entertainment" onclick="TrackEvent('News_Article_viewer', 'Topics', 'Top');">Brand-funded entertainment</a></li>
                        <li><a href="/search/Content/Content marketing " onclick="TrackEvent('News_Article_viewer', 'Topics', 'Top');">Content marketing </a></li>
                        <li><a href="/search/Brand-partnerships/Brand partnerships" onclick="TrackEvent('News_Article_viewer', 'Topics', 'Top');">Brand partnerships</a></li>
            </ul>
        </div>
    </div>


        
</section>

<section class="container news-opinion-reader clearfix" id="ContentSection">

    <div class="row row-block">

        <div class="col-md-8 col-xl-9 with-spotlight" id="mainContent">

            <section id="article-body" class="article-body">

                <div class="article-content">

                    
                        <p>Native advertising and branded content will continue to be a vital way of building long-lasting relationships with brands, a Meredith executive believes, but the nature of those bonds and the material they create are changing.<br></p><p>“Certainly a few years ago, native was the sexiest thing in the playbook that we could roll out,” mused Will Roth, vice president, head of content and strategy at Meredith Corporation, during the recent FIPP World Media Congress. “Is that still the case? Maybe not.</p><p>“The way that I see native now, especially in America, it is still a very central and important part of any direct offering brought to an advertiser,” he continued. “The reason being [that] if you have an interest in telling a story organically with certain key tenets of your own proprietary messages, you really have to partner with a studio like Foundry to get that message the way you want it.”</p><p>Foundry, Meredith’s branded content shop which Roth heads, has a staff of 75 working across 40 editorial brands – and the pressure is on after the magazine publisher, and owner of titles including <i>People, Better Homes &amp; Gardens</i> and <i>Food &amp; Wine</i>, announced plans to <a href=" https://eu.desmoinesregister.com/story/money/business/2020/09/18/meredith-corporation-cuts-180-jobs-minimal-impact-des-moines/5824016002/" target="_blank">cut 180 jobs</a> after registering a $234 million loss in the 12 months to 30 June.</p><p>But Roth has put in place a three-step plan¬ to ensure the content Foundry produces for brands is suitable for the times, both in terms of production restrictions and audience preferences.</p><p>One of these is to understand how, in the context of COVID-19, branded content marketers, accustomed to a certain level of funding often not granted to their editorial counterparts, must readjust their expectations. So, no more flying off to exotic locations to shoot a 90-second mini documentary. </p><p>Instead, Roth is “leaning in” to familiar formats, but with a new approach. Take influencer marketing: not only do advertisers require a “compelling story” from their content creators, but more than likely they will need them to be capable of shooting that content themselves.</p><p>Clients are strongly encouraged to join virtual production shoots, so they can “participate in shot-by-shot decision-making”, and Roth believes this arms-length approach is resulting in a more “authentic” quality of content.</p><p>“What’s been so reassuring for us is that the content we’ve produced over the last six to eight months has felt extremely authentic and organic. You actually get more comfortable talent experiences when you don’t have a giant production team standing behind a camera,” he said.</p><p><b><i>For more on the future of branded content, read WARC’s report: <a href=" https://www.warc.com/content/article/event-reports/meredith-finds-a-new-role-for-branded-content-during-covid-19/134120" target="_blank">Meredith finds a new role for branded content during COVID-19</a>.</i></b></p>
                        
                    
                    

                    <p class="news-source">Sourced from WARC</p>

                </div>

            </section>

        </div>

            <div class="col-md-4 col-xl-3 sidebar-spotlight get-daily-news">

                <a href="/NewsAndOpinion/GetNews" onclick="TrackEvent('News_Article_viewer', 'Buttons', 'Sign_up_for_email');" class="box-links pink">Sign up for daily news</a>

            </div>

<div id="LastestNewsOpinion" class="col-md-4 col-xl-3 sidebar-spotlight">
    <h3>Latest</h3>
    <ul class="page-section-list">

            <li class="page-section-item">
                <p class="label blue-grey">Opinion</p>
                <a href="/newsandopinion/opinion/experience-is-more-than-just-the-next-theme-of-your-ad-campaign/3869" data-newsandopinion-text="Experience is more than just the next theme of your ad campaign" data-newsandopinion-position="1"> Experience is more than just the next theme of your ad campaign</a>
            </li>
            <li class="page-section-item">
                <p class="label blue-grey">News</p>
                <a href="/newsandopinion/news/why-brands-need-to-put-black-lives-matter-in-context/44223" data-newsandopinion-text="Why brands need to put Black Lives Matter in context" data-newsandopinion-position="2"> Why brands need to put Black Lives Matter in context</a>
            </li>
            <li class="page-section-item">
                <p class="label blue-grey">News</p>
                <a href="/newsandopinion/news/brand-friction-the-key-to-unlocking-the-complexities-of-customer-experience/44226" data-newsandopinion-text="Brand Friction: The key to unlocking the complexities of customer experience" data-newsandopinion-position="3"> Brand Friction: The key to unlocking the complexities of customer experience</a>
            </li>
            <li class="page-section-item">
                <p class="label blue-grey">News</p>
                <a href="/newsandopinion/news/chinese-retailer-shein-finds-favour-with-american-teens/44222" data-newsandopinion-text="Chinese retailer Shein finds favour with American teens" data-newsandopinion-position="4"> Chinese retailer Shein finds favour with American teens</a>
            </li>
            <li class="page-section-item">
                <p class="label blue-grey">News</p>
                <a href="/newsandopinion/news/the-5-frontier-cmo-strategies-to-lead-brands-to-economic-recovery/44225" data-newsandopinion-text="The 5 &#39;Frontier CMO&#39; strategies to lead brands to economic recovery" data-newsandopinion-position="5"> The 5 &#39;Frontier CMO&#39; strategies to lead brands to economic recovery</a>
            </li>
            <li class="page-section-item">
                <p class="label blue-grey">News</p>
                <a href="/newsandopinion/news/three-details-on-amazon-halo-illuminate-the-giants-theory-of-success/44224" data-newsandopinion-text="Three details on Amazon Halo illuminate the giant’s theory of success" data-newsandopinion-position="6"> Three details on Amazon Halo illuminate the giant’s theory of success</a>
            </li>
            <li class="page-section-item">
                <p class="label blue-grey">Opinion</p>
                <a href="/newsandopinion/opinion/hidden-figures-a-look-at-black-british-marketing-and-design/3871" data-newsandopinion-text="Hidden Figures: A look at Black British marketing and design" data-newsandopinion-position="7"> Hidden Figures: A look at Black British marketing and design</a>
            </li>
            <li class="page-section-item">
                <p class="label blue-grey">News</p>
                <a href="/newsandopinion/news/us-brands-adopt-e-commerce-livestreaming-to-boost-sales/44218" data-newsandopinion-text="US brands adopt e-commerce livestreaming to boost sales" data-newsandopinion-position="8"> US brands adopt e-commerce livestreaming to boost sales</a>
            </li>
        <li class="page-section-item page-section-links">
            <a href="/NewsAndOpinion/" data-newsandopinion-text="View more News and Opinion">View more News and Opinion</a>
        </li>
    </ul>
</div>


    </div>

</section>


<section class="container related-articles">
    <div class="row">
        <div class="col-md-4 col-lg-3 col-xl-2">

                <p class="label">For WARC Subscribers only</p>
                <p class="size-smallest"><a href="/learnmore/subscribe" class="font-weight-normal">What do I get from a WARC subscription?</a></p>

        </div>
        <div class="col-md-8">

            <ul class="related-articles-links">
                    <li>
                        <a class="default-colour locked" href="/content/article/event-reports/vox-media-finds-success-with-explainer-branded-content-during-covid-19/133073" >Vox Media finds success with ‘Explainer’ branded content during COVID-19</a>
                        <p>
                            <span class="resultDetailsSpot">Vox Media, the US digital media publisher, changed approach to deliver branded content projects during the Coronavirus pandemic.</span>
                        </p>
                    </li>
                    <li>
                        <a class="default-colour locked" href="/content/article/bestprac/what-we-know-about-brand-partnerships/108515" >What we know about brand partnerships</a>
                        <p>
                            <span class="resultDetailsSpot">Provides guidance and reading on a now common aspect of brand building – partnerships – in which two or more brands collaborate for mutual benefit.</span>
                        </p>
                    </li>
                    <li>
                        <a class="default-colour locked" href="/content/article/warc-wwi/whats-working-in-content-marketing/124750" >What’s working in content marketing</a>
                        <p>
                            <span class="resultDetailsSpot">Global strategies, campaign updates and trends in content marketing.</span>
                        </p>
                    </li>
            </ul>

                <div class="containing-box-links">
                    <a href="/demo" class="box-links pink">Get a demo</a> or <a href="/sign-in" id="loginLink">Sign in</a>
                </div>
        </div>
    </div>

</section>
<section class="container article-section article-topics">
    <div class="row">
        <div class="col-md-2">
            <div class="label article-section-title">
                Topics
            </div>
        </div>
        <div class="col-md-10 col-xl-8">
            <ul class="label article-topics-list">
                        <li><a href="/search/Media_publishing/Media &amp; publishing (general)" onclick="TrackEvent('News_Article_viewer', 'Topics', 'Bottom');">Media &amp; publishing (general)</a></li>
                        <li><a href="/search/North-America/United States" onclick="TrackEvent('News_Article_viewer', 'Topics', 'Bottom');">United States</a></li>
                        <li><a href="/search/Content/Native advertising &amp; advertorial" onclick="TrackEvent('News_Article_viewer', 'Topics', 'Bottom');">Native advertising &amp; advertorial</a></li>
                        <li><a href="/search/Content/Brand-funded entertainment" onclick="TrackEvent('News_Article_viewer', 'Topics', 'Bottom');">Brand-funded entertainment</a></li>
                        <li><a href="/search/Content/Content marketing " onclick="TrackEvent('News_Article_viewer', 'Topics', 'Bottom');">Content marketing </a></li>
                        <li><a href="/search/Brand-partnerships/Brand partnerships" onclick="TrackEvent('News_Article_viewer', 'Topics', 'Bottom');">Brand partnerships</a></li>
            </ul>
        </div>
    </div>


        
</section>

<section id="feedback-copyright">

    <div class="container">

        

<form action="/Content/submitFeedback" id="submitFeedbackForm" method="post">    <div id="feedbackContainer" class="row" style="display: none;">
        <div class="col-md-6">
            <textarea class="form-control" cols="51" data-val="true" data-val-required="Please enter your feedback" id="feedbackTextArea" name="Feedback" placeholder="Enter your feedback here" rows="10">
</textarea>
            <p><span class="field-validation-valid field-validation-error" data-valmsg-for="Feedback" data-valmsg-replace="false" id="submitFeedbackFormEmptyMessage">Please enter your feedback.</span></p>
        </div>
        <div class="col-md-12">
            <a href="javascript:void(0);" class="box-links blue" onclick="onSendFeedbackSubmitClicked();">Submit</a>
        </div>
    </div>
<input Length="5" id="Title" name="Title" type="hidden" value="how-merediths-branded-content-operation-is-responding-to-covid-19" /><input Length="9" id="ArticleId" name="ArticleId" type="hidden" value="" /><input Length="6" id="NewsId" name="NewsId" type="hidden" value="44197" /></form>
<div class="article-feedback">
    <a href="javascript:void(0);" class="box-links blue" onclick="$('#feedbackContainer').show(); $(this).hide();">Send feedback</a>
</div>

<script type="text/javascript">

	function onSendFeedbackSubmitClicked() {

		if ($("#feedbackTextArea").val() === "") {
			$("#submitFeedbackFormEmptyMessage").show();
			return;
		}

		$("#submitFeedbackFormEmptyMessage").hide();

		TrackEvent('News_Article_viewer', 'Send_feedback', '');

		var form = $("#submitFeedbackForm");

		$.ajax({
			type: "POST",
			url: form.attr('action'),
			data: form.serialize(),
			error: function (xhr, status, error) {
				WarcNotification.NotificationManager.addNotification(new WarcNotification.ToastRenderer($("#toaster"),
					WarcNotification.ToastNotificationTypes.errorClass, "An error occurred.")).show();
			},
			success: function (response) {
				WarcNotification.NotificationManager.addNotification(new WarcNotification.ToastRenderer($("#toaster"),
					WarcNotification.ToastNotificationTypes.checkClass, "Feedback Sent")).show();

				$('#feedbackContainer').hide();
			}
		});
	}


</script>



        <div class="article-copyright">

            <p><a href="http://www.warc.com">www.warc.com</a></p>

            <p>&copy; Copyright 2020</p>

            <p>All rights reserved including database rights. This electronic file is for the personal use of authorised users based at the subscribing company's office location. It may not be reproduced, posted on intranets, extranets or the internet, e-mailed, archived or shared electronically either within the purchaser's organisation or externally without express written permission from WARC.</p>
        </div>

    </div>

</section>

<div class="modal fade" id="emailSelectionModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Email this content</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                    <label id="emailSelectionHeader">
                        Send colleagues a link to this content.<br />
                        To send to more than one recipient, put a comma between email addresses.
                    </label>
                </p>
                <div class="form-standard">
                    <div class="form-group row">
                        <label class="col-md-4 control-label" for="inputName">Recipient name:</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="inputName" placeholder="Name" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 control-label" for="inputEmail">Recipient email:</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="inputEmail" placeholder="Email address" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4 control-label"
                               for="inputMessage">
                            Message (optional):
                        </label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="inputMessage" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-8">
                            <div class="checkbox">
                                <input type="checkbox" id="selfSend" />
                                <label for="selfSend">
                                    <span></span>
                                    Send me a copy of this email as well.
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label id="validationMessage" class="col-12"></label>
                    </div>
                </div>
            </div>

            <div class="modal-footer submit-links">

                <button type="button" class="btn-text-link" data-dismiss="modal">
                    Cancel
                </button>

                <button type="button" class="box-links pink" onclick="emailSelectionClicked();">
                    Email
                </button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

	var selectedContent;

	function showEmailPopup(content) {
		selectedContent = content;

		$("#emailSelectionModal").modal();
	}

	function emailSelectionClicked() {

		ResourceLoader.requireScript("warc_waitLogo", function () {

			$("#validationMessage").empty();
			if ($("#inputName").val().trim() === "") {
				$("#validationMessage").text("Please enter a recipient name");
				return;
			}
			if ($("#inputEmail").val().trim() === "") {
				$("#validationMessage").text("Please enter a recipient Email");
				return;
			}
			if (selectedContent.length === 0) {
				$("#validationMessage").text("Please ensure you have some content selected");
				return;
			}

			$("#emailSelectionModal").modal("hide");

			waitLogo.show();

			var recipName = $("#inputName").val().trim();
			var msg = $("#inputMessage").val().trim();
			var recipEmail = $("#inputEmail").val().trim();
			var self = $("#selfSend").prop("checked");

			var share = new UserSettings.WarcShare($("#warcUid").val());
			var details = new UserSettings.EmailShareSettings(UserSettings.ShareType.ContentReference, recipName, msg, self, recipEmail);
			details.contentReferences = selectedContent;
			share.shareEmail(details).done(function() {
				waitLogo.hide();

				WarcNotification.NotificationManager.addNotification(new WarcNotification.ToastRenderer($("#toaster"),
					WarcNotification.ToastNotificationTypes.checkClass, "Email sent.")).show();
			}).fail(function() {
				waitLogo.hide();

				WarcNotification.NotificationManager.addNotification(new WarcNotification.ToastRenderer($("#toaster"),
					WarcNotification.ToastNotificationTypes.errorClass, "Unable to send email, please try again.")).show();
			});
		});


			

	}
</script>



<script type='text/javascript' src='https://cdn.warc.com/javascript/GoogleTranslate.min.js?v=1005173600'></script>


    </main>

    <div id="category-reminder-modal" data-backdrop="static" class="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        
<style>
    #closeModal {
    color: #3d46c4;
    border: none;
    padding: 0.7em 1em;
    }
    #closeModal:hover {
    background: none;
    }
</style>
<div class="modal-content">
<div class="modal-body">
<p><strong>Welcome back to WARC!</strong></p>
<p>We&rsquo;ve made some exciting changes since your last visit, bringing you:</p>
<ul class="checklist">
    <li>Latest category insights straight to your homepage</li>
    <li>A new Evidence series on key marketing questions</li>
    <li>Category campaign data from recent case studies</li>
</ul>
</div>
<div class="modal-footer">
<button type="button" onclick="disableBrandOwnerModal(true);return false;" class="box-links" data-dismiss="modal">Explore all these new features</button>
<button id="closeModal" type="button" onclick="disableBrandOwnerModal();return false;" class="no-box-links" data-dismiss="modal">Maybe later</button>
</div>
</div>
    </div>
</div>


    <div id="toaster" style="display: none;"></div>

<div id="cookieMessage" style="display: none;">
    <div id="cookieInner" class="cookieInner container">
        <div id="cookieText">
            <p>By continuing to use the site, you agree to the use of cookies. You can change this and find out more <a href="/cookies">here</a></p>
        </div>
        <div id="cookieNotice_acceptCookies" class="acceptCookies box-links white on-electric-blue ">
            Hide message
            <input type="button" name="ctl00$cookieNotice$CookieButton" value="Button" onclick="" id="cookieNotice_CookieButton" style="display: none;">
        </div>
    </div>
</div>

<!-- Google Tag Manager (noscript) -->
<noscript>
    <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NK44K6C"
            height="0" width="0" style="display:none;visibility:hidden"></iframe>
</noscript>
<!-- End Google Tag Manager (noscript) -->

<div class="hide-desktop" id="bootstrap-breakpoint-mobile"></div>

<input id="warcUid" name="uid" type="hidden" value="" />

    <footer>
    <div class="footer-brand button-images">

    <a href="/"><img src="https://cdn.warc.com/images-site/logos/warc-white.svg" alt="WARC" height="26" class="footer-logo" /></a>

    
    <p>&copy; 2020 Copyright and Database Rights owned by Ascential Events (Europe) Limited</p>

    
<ul class="footer-social">
        <li><a href="http://www.facebook.com/warc.hub"><img src="https://cdn.warc.com/images-site/logos/facebook.svg" alt="Facebook" height="24"></a></li>
        <li><a href="http://twitter.com/WarcEditors"><img src="https://cdn.warc.com/images-site/logos/twitter.svg" alt="Twitter" height="24"></a></li>
        <li><a href="https://www.linkedin.com/company/warc"><img src="https://cdn.warc.com/images-site/logos/linkedin.svg" alt="LinkedIn" height="24"></a></li>
        <li><a href="https://www.youtube.com/user/WarcWebmaster"><img src="https://cdn.warc.com/images-site/logos/youtube.svg" alt="YouTube" height="24"></a></li>
        <li><a href="https://www.instagram.com/makeitwarc/"><img src="https://cdn.warc.com/images-site/logos/instagram-icon.svg" alt="Instagram" height="24"></a></li>
      </ul>

</div>

<div class="footer-links styled-links">

    
<div class="footer-col-1">
<ul>
<li><a href="/">Home</a></li>
<li><a href="/about-core-warc">WARC Core</a></li>
<li><a href="/about-warc-data">WARC Data</a></li>
<li><a href="/about-warc-rankings">WARC Rankings</a></li>
<li><a href="/about-warc-advisory">WARC Advisory</a></li>
<li><a href="/newsandopinion">News &amp; Opinion</a></li>
<li><a href="https://content.warc.com/warc-talks.html">WARC Talks</a></li>
<li><a href="/topics/awards.topic">Awards</a></li>
<li><a href="/topics">Explore by Topic</a></li>
</ul>
</div>

<div class="footer-col-2">
<ul>
<li><span>About</span></li>
<li><a href="/about">About WARC</a></li>
<li><a href="/meet-the-experts">Meet the Experts</a></li>
<li><a href="/work-for-warc">Work for WARC</a></li>
<li><a href="/press">Press</a></li>
<li><a href="/Partners">Partners</a></li>
<li><a href="/write-for-warc">Write for WARC</a></li>
<li><a href="/sitemap">Sitemap</a></li>
</ul>
</div>

<div class="footer-col-3">
<ul>
<li><span>Support</span></li>
<li><a href="/clientservices">Help</a></li>
<li><a href="/contact-us">Contacts</a></li>
<li><a href="https://content.warc.com/do-i-have-access-to-warc.html">Do I Subscribe?</a></li>
<li><a href="/NewsAndOpinion/GetNews">Newsletter</a></li>
</ul>
</div>

<div class="footer-col-4">
<ul>
<li><span>Legal</span></li>
<li><a href="/terms-and-conditions">Terms &amp; Conditions</a></li>
<li><a href="/copyright-policy">Copyright Policy</a></li>
<li><a href="/privacy">Privacy</a></li>
<li><a href="/cookies">Cookies</a></li>
</ul>
</div>

</div>


</footer>

    
    <script type="text/javascript">


        var folderListVisible = false;

        function onAddToFolderClicked() {
            if (folderListManager === undefined) {
                return;
            }

            folderListManager.updateFolderList($("#folderPopup"), "7cfb6323-0623-453d-96be-11392700e2bf");
        }

    </script>

    <script type='text/javascript' src='https://cdn.warc.com/Scripts/Views/Shared/Layout/Scripts.js?v=1005173602'></script>

</body>
</html>