<!DOCTYPE html>
<html lang="en-US" class="no-js">
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta charset="UTF-8" />

<script>document.documentElement.classList.remove("no-js");</script>

<!-- OneTrust Cookies Consent Notice start -->
<script src="https://cdn.cookielaw.org/scripttemplates/otSDKStub.js"  type="text/javascript" charset="UTF-8" data-domain-script="6c0f8417-b563-477c-8b00-33914cb4600e"></script>
<script src="https://cdn.cookielaw.org/opt-out/otCCPAiab.js" type="text/javascript" charset="UTF-8" ccpa-opt-out-ids="C0012,C0013,C0017" ccpa-opt-out-geo="ca" ccpa-opt-out-lspa="false"></script>

<script type="text/javascript">
function OptanonWrapper() { document.getElementById("confirm-choices-handler").addEventListener("click", function() {Optanon.RejectAll(); alert("You have been opted out of browser data sharing by this site. This setting will not apply to other sites, your other browsers or if you clean this browser's cookies");}); }
</script>
<!-- OneTrust Cookies Consent Notice end -->

		<!-- Google Analytics command queue start -->
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			(function() {

				// Set the default options for the Google Analytics "create" function.
				var gaCreateOptions = {
					trackingId: "UA-3922003-6",
					cookieDomain: 'auto',
					useAmpClientId: true
				};

				// Add the allowLinker option if it is configured and found in PHP.
									gaCreateOptions.allowLinker = true;
					
				var isLsAvailable = function() {
					var test = 'test';
					try {
						window.localStorage.setItem(test, test);
						window.localStorage.removeItem(test);
						return true;
					} catch (e) {
						return false;
					}
				}

				// Bail early and use the old method if we do not have localStorage in this browser.
				if ( ! isLsAvailable() ) {
					ga( 'create', gaCreateOptions );
					return;
				}

				// If we have a GA clientId in the URL.
				var haveClientIdInURL = false;

				// First, check for linker param in URL and let GA use that for our clientId if it exists.
				// Check if URLSearchParams is available, otherwise use a polyfill function.
				if ( 'function' === typeof URLSearchParams ) {
					var urlParams = new URLSearchParams( window.location.search );
					if ( urlParams.get( '_ga' ) ) {
						haveClientIdInURL = true;
					}
				} else {
					/**
					 * A polyfill for older browsers like IE.
					 * @link https://caniuse.com/#feat=urlsearchparams
					 * @link https://davidwalsh.name/query-string-javascript
					 */
					var getUrlParameter = function(name) {
						name = name.replace( /[\[]/, '\\[' ).replace( /[\]]/, '\\]' );
						var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
						var results = regex.exec( location.search );
						return results === null ? false : decodeURIComponent( results[1].replace( /\+/g, ' ' ) );
					};
					if ( getUrlParameter( '_ga' ) ) {
						haveClientIdInURL = true;
					}
				}

				// Assume the GA Cookie is not present.
				var hasGACookie = false;

				// Try to get the GA Cookie.
				var GACookie = document.cookie.split(';').filter(function(item) {
					return item.trim().indexOf('_ga=') === 0
				} );

				// Check if we have a cookie.
				if ( GACookie.length ) {
					// If the cookie value is not empty we have a GA cookie.
					hasGACookie = GACookie[0].trim().length > 4 ? true : false;
				}

				// Id to use for localStorage object which holds the GA clientId and expire time.
				var gaClientIdLocalStorageId = 'nyp_ga_client_id';

				// If we don't have a clientId in the URL and there is no GA cookie set, we look in localStorage for one.
				if ( ! haveClientIdInURL && ! hasGACookie ) {

					// If no linker param and no GA cookie, we check in localStorage for the GA clientId.
					var nypGALocalStorage = window.localStorage.getItem( gaClientIdLocalStorageId ) || '{}';
					var parsedNYPGALocalStorage = JSON.parse( nypGALocalStorage );
					var now = new Date().getTime();
					if ( parsedNYPGALocalStorage.clientId && parsedNYPGALocalStorage.expires ) {
						if ( now <= parsedNYPGALocalStorage.expires ) {

							// If we have the clientId, add it to the GA Tracker options.
							if ( parsedNYPGALocalStorage.clientId && '' !== parsedNYPGALocalStorage.clientId ) {
								gaCreateOptions.clientId = parsedNYPGALocalStorage.clientId;
							}
						}
					}
				}

				// Create the tracker instance.
				ga( 'create', gaCreateOptions );

				// Add the clientId to localStorage using readyCallback to ensure the tracker instance has been instantiated.
				ga( function( tracker ) {
					var clientId = tracker.get( 'clientId' );
					if ( clientId ) {
						var gaClientIdStore = JSON.stringify({
							clientId: clientId,
							expires: new Date().getTime() + 1000*60*60*24*365*2
						});
						window.localStorage.setItem( gaClientIdLocalStorageId, gaClientIdStore );
					}
				});
			})();

			ga('require', 'linker');
ga('linker:autoLink', ["nypost.com","pagesix.com","decider.com"])

			// Optimizely Universal Analytics Integration code
			window.optimizely = window.optimizely || [];
			window.optimizely.push(['activateUniversalAnalytics']);
		</script>
		<!-- Google Analytics command queue end -->
			<!-- Browsi Tag -->
	<script src="https://middycdn-a.akamaihd.net/bootstrap/bootstrap.js" id="browsi-tag" data-pubKey="newyorkpost" data-siteKey="newyorkpost" async></script>
				<script type="text/javascript" async src="//players.brightcove.net/4137224153001/6aIMRO3kiI_default/index.min.js"></script>
				<!-- Performance Event Tracking start -->
	<script>
	  if ('PerformanceObserver' in window) {
	    // Set our starting mark.
	    performance.mark('load-start');

  	    // First Contentful Paint start.
	    // Create a variable to hold the FCP, we'll need it later.
	    var fcp;
	    // Register the PerformanceObserver to track paint timing.
	    var observerFCP = new PerformanceObserver((list) => {
	      for (var entry of list.getEntriesByName('first-contentful-paint')) {
	        fcp = Math.round(entry.startTime);
	        ga('send', 'event', {
	          eventCategory: 'Performance Metrics',
	          eventAction: 'First Contentful Paint',
	          eventValue: fcp,
	          eventLabel: window.location.href,
	          nonInteraction: true,
	        });
	        observerFCP.disconnect();
	      }
	    });
	    // Start observing paint entries.
	    observerFCP.observe({
	      type: 'paint',
	    });
	    // First Contentful Paint end.

  	    // First Input Delay start.
	    // Register the PerformanceObserver to track first input delay.
	    var observerFID = new PerformanceObserver((list) => {
	      for (var entry of list.getEntries()) {
	        var fid = entry.processingStart - entry.startTime;
	          ga('send', 'event', {
	            eventCategory: 'Performance Metrics',
	            eventAction: 'First Input Delay',
	            eventValue: Math.round(fid),
	            eventLabel: window.location.href,
	            nonInteraction: true,
	          });
	        observerFID.disconnect();
	      }
	    });

  	    // Start observing first-input entries.
	    observerFID.observe({
	      type: 'first-input',
	      buffered: true,
	    });
	    // First Input Delay end.

  	    // Largest Contentful Paint start.
	    // Create a variable to hold the latest LCP value (since it can change).
	    var lcp;

  	    // Create the PerformanceObserver instance.
	    var observerLCP = new PerformanceObserver((list) => {
	      var entries = list.getEntries();
	      var lastEntry = entries[entries.length - 1];

  	      // Update `lcp` to the latest value, using `renderTime` if it's available,
	      // otherwise using `loadTime`. (Note: `renderTime` may not be available if
	      // the element is an image and it's loaded cross-origin without the
	      // `Timing-Allow-Origin` header.)
	      lcp = lastEntry.renderTime || lastEntry.loadTime;
	    });

  	    // Observe entries of type `largest-contentful-paint`, including buffered
	    // entries, i.e. entries that occurred before calling `observe()`.
	    observerLCP.observe({
	      type: 'largest-contentful-paint',
	      buffered: true
	    });

  	    // Send the latest LCP value to your analytics server once the user
	    // leaves the tab. This waits to log LCP until the page's lifecycle state changes to hidden.
	    // This is a way of ensuring that it only logs the latest entry.
	    function handleLCPVisibility() {
	      if (lcp && document.visibilityState === 'hidden') {
	        ga('send', 'event', {
	          eventCategory: 'Performance Metrics',
	          eventAction: 'Largest Contentful Paint',
	          eventValue: Math.round(lcp),
	          eventLabel: window.location.href,
	          nonInteraction: true,
	        });
	        removeEventListener('visibilitychange', handleLCPVisibility, true);
	        observerLCP.disconnect();
	      }
	    }
	    addEventListener('visibilitychange',handleLCPVisibility, true);
	    // Largest Contentful Paint end.

  	    // Load Abandonment start.
	    function handleAbandonmentVisibility() {
	      if (document.visibilityState === 'hidden') {
	        // Mark when the user left.
	        performance.mark('user-left');

  	        // Create our measure.
	        performance.measure('time-on-page', 'load-start', 'user-left');

  	        // Get our measure.
	        var timeOnPage = performance.getEntriesByName('time-on-page', 'measure');

  	        // Create our abandonment var.
	        var userAbandoned = false;
	        if (fcp && timeOnPage[0] && timeOnPage[0].duration < fcp) {
	          userAbandoned = true;
	        }
	        ga('send', 'event', {
	          eventCategory: 'Performance Metrics',
	          eventAction: 'User Abandoned',
	          eventValue: userAbandoned,
	          eventLabel: window.location.href,
	          nonInteraction: true,
	        });
	        removeEventListener('visibilitychange', handleAbandonmentVisibility, true);
	      }
	    }
	    addEventListener('visibilitychange', handleAbandonmentVisibility, true);
	    // Load Abandonment end.
	  }
	</script>
	<!-- Performance Event Tracking end -->
			<script type='text/javascript'>
		  /* Start Amazon Publisher Services Library download code. */
		  // Load the APS JavaScript Library
		  !function(a9,a,p,s,t,A,g){if(a[a9])return;function q(c,r){a[a9]._Q.push([c,r])}a[a9]={init:function(){q("i",arguments)},fetchBids:function(){q("f",arguments)},setDisplayBids:function(){},targetingKeys:function(){return[]},_Q:[]};A=p.createElement(s);A.async=!0;A.src=t;g=p.getElementsByTagName(s)[0];g.parentNode.insertBefore(A,g)}("apstag",window,document,"script","//c.amazon-adsystem.com/aax2/apstag.js");
		  /* End Amazon Publisher Services Library download code. */
		</script>
		<script class="wp-asset-manager loadCSS" type="text/javascript">/*! loadCSS: load a CSS file asynchronously. [c]2016 @scottjehl, Filament Group, Inc. Licensed MIT */
!function(e){"use strict";var n=function(n,t,o){function i(e){return a.body?e():void setTimeout(function(){i(e)})}function r(){l.addEventListener&&l.removeEventListener("load",r),l.media=o||"all"}var d,a=e.document,l=a.createElement("link");if(t)d=t;else{var s=(a.body||a.getElementsByTagName("head")[0]).childNodes;d=s[s.length-1]}var f=a.styleSheets;l.rel="stylesheet",l.href=n,l.media="only x",i(function(){d.parentNode.insertBefore(l,t?d:d.nextSibling)});var u=function(e){for(var n=l.href,t=f.length;t--;)if(f[t].href===n)return e();setTimeout(function(){u(e)})};return l.addEventListener&&l.addEventListener("load",r),l.onloadcssdefined=u,u(r),l};"undefined"!=typeof exports?exports.loadCSS=n:e.loadCSS=n}("undefined"!=typeof global?global:this);
/*! CSS rel=preload polyfill. Depends on loadCSS function. [c]2016 @scottjehl, Filament Group, Inc. Licensed MIT  */
!function(t){if(t.loadCSS){var e=loadCSS.relpreload={};if(e.support=function(){try{return t.document.createElement("link").relList.supports("preload")}catch(e){return!1}},e.poly=function(){for(var e=t.document.getElementsByTagName("link"),n=0;n<e.length;n++){var r=e[n];"preload"===r.rel&&"style"===r.getAttribute("as")&&(t.loadCSS(r.href,r),r.rel=null)}},!e.support()){e.poly();var n=t.setInterval(e.poly,300);t.addEventListener&&t.addEventListener("load",function(){e.poly(),t.clearInterval(n)}),t.attachEvent&&t.attachEvent("onload",function(){t.clearInterval(n)})}}}(this);</script><script class="wp-asset-manager lazysizes" type="text/javascript">/*! lazysizes - v3.0.0 */
!function(a,b){var c=b(a,a.document);a.lazySizes=c,"object"==typeof module&&module.exports&&(module.exports=c)}(window,function(a,b){"use strict";if(b.getElementsByClassName){var c,d=b.documentElement,e=a.Date,f=a.HTMLPictureElement,g="addEventListener",h="getAttribute",i=a[g],j=a.setTimeout,k=a.requestAnimationFrame||j,l=a.requestIdleCallback,m=/^picture$/i,n=["load","error","lazyincluded","_lazyloaded"],o={},p=Array.prototype.forEach,q=function(a,b){return o[b]||(o[b]=new RegExp("(\\s|^)"+b+"(\\s|$)")),o[b].test(a[h]("class")||"")&&o[b]},r=function(a,b){q(a,b)||a.setAttribute("class",(a[h]("class")||"").trim()+" "+b)},s=function(a,b){var c;(c=q(a,b))&&a.setAttribute("class",(a[h]("class")||"").replace(c," "))},t=function(a,b,c){var d=c?g:"removeEventListener";c&&t(a,b),n.forEach(function(c){a[d](c,b)})},u=function(a,c,d,e,f){var g=b.createEvent("CustomEvent");return g.initCustomEvent(c,!e,!f,d||{}),a.dispatchEvent(g),g},v=function(b,d){var e;!f&&(e=a.picturefill||c.pf)?e({reevaluate:!0,elements:[b]}):d&&d.src&&(b.src=d.src)},w=function(a,b){return(getComputedStyle(a,null)||{})[b]},x=function(a,b,d){for(d=d||a.offsetWidth;d<c.minSize&&b&&!a._lazysizesWidth;)d=b.offsetWidth,b=b.parentNode;return d},y=function(){var a,c,d=[],e=[],f=d,g=function(){var b=f;for(f=d.length?e:d,a=!0,c=!1;b.length;)b.shift()();a=!1},h=function(d,e){a&&!e?d.apply(this,arguments):(f.push(d),c||(c=!0,(b.hidden?j:k)(g)))};return h._lsFlush=g,h}(),z=function(a,b){return b?function(){y(a)}:function(){var b=this,c=arguments;y(function(){a.apply(b,c)})}},A=function(a){var b,c=0,d=125,f=666,g=f,h=function(){b=!1,c=e.now(),a()},i=l?function(){l(h,{timeout:g}),g!==f&&(g=f)}:z(function(){j(h)},!0);return function(a){var f;(a=a===!0)&&(g=44),b||(b=!0,f=d-(e.now()-c),0>f&&(f=0),a||9>f&&l?i():j(i,f))}},B=function(a){var b,c,d=99,f=function(){b=null,a()},g=function(){var a=e.now()-c;d>a?j(g,d-a):(l||f)(f)};return function(){c=e.now(),b||(b=j(g,d))}},C=function(){var f,k,l,n,o,x,C,E,F,G,H,I,J,K,L,M=/^img$/i,N=/^iframe$/i,O="onscroll"in a&&!/glebot/.test(navigator.userAgent),P=0,Q=0,R=0,S=-1,T=function(a){R--,a&&a.target&&t(a.target,T),(!a||0>R||!a.target)&&(R=0)},U=function(a,c){var e,f=a,g="hidden"==w(b.body,"visibility")||"hidden"!=w(a,"visibility");for(F-=c,I+=c,G-=c,H+=c;g&&(f=f.offsetParent)&&f!=b.body&&f!=d;)g=(w(f,"opacity")||1)>0,g&&"visible"!=w(f,"overflow")&&(e=f.getBoundingClientRect(),g=H>e.left&&G<e.right&&I>e.top-1&&F<e.bottom+1);return g},V=function(){var a,e,g,i,j,m,n,p,q;if((o=c.loadMode)&&8>R&&(a=f.length)){e=0,S++,null==K&&("expand"in c||(c.expand=d.clientHeight>500&&d.clientWidth>500?500:370),J=c.expand,K=J*c.expFactor),K>Q&&1>R&&S>2&&o>2&&!b.hidden?(Q=K,S=0):Q=o>1&&S>1&&6>R?J:P;for(;a>e;e++)if(f[e]&&!f[e]._lazyRace)if(O)if((p=f[e][h]("data-expand"))&&(m=1*p)||(m=Q),q!==m&&(C=innerWidth+m*L,E=innerHeight+m,n=-1*m,q=m),g=f[e].getBoundingClientRect(),(I=g.bottom)>=n&&(F=g.top)<=E&&(H=g.right)>=n*L&&(G=g.left)<=C&&(I||H||G||F)&&(l&&3>R&&!p&&(3>o||4>S)||U(f[e],m))){if(ba(f[e]),j=!0,R>9)break}else!j&&l&&!i&&4>R&&4>S&&o>2&&(k[0]||c.preloadAfterLoad)&&(k[0]||!p&&(I||H||G||F||"auto"!=f[e][h](c.sizesAttr)))&&(i=k[0]||f[e]);else ba(f[e]);i&&!j&&ba(i)}},W=A(V),X=function(a){r(a.target,c.loadedClass),s(a.target,c.loadingClass),t(a.target,Z)},Y=z(X),Z=function(a){Y({target:a.target})},$=function(a,b){try{a.contentWindow.location.replace(b)}catch(c){a.src=b}},_=function(a){var b,d,e=a[h](c.srcsetAttr);(b=c.customMedia[a[h]("data-media")||a[h]("media")])&&a.setAttribute("media",b),e&&a.setAttribute("srcset",e),b&&(d=a.parentNode,d.insertBefore(a.cloneNode(),a),d.removeChild(a))},aa=z(function(a,b,d,e,f){var g,i,k,l,o,q;(o=u(a,"lazybeforeunveil",b)).defaultPrevented||(e&&(d?r(a,c.autosizesClass):a.setAttribute("sizes",e)),i=a[h](c.srcsetAttr),g=a[h](c.srcAttr),f&&(k=a.parentNode,l=k&&m.test(k.nodeName||"")),q=b.firesLoad||"src"in a&&(i||g||l),o={target:a},q&&(t(a,T,!0),clearTimeout(n),n=j(T,2500),r(a,c.loadingClass),t(a,Z,!0)),l&&p.call(k.getElementsByTagName("source"),_),i?a.setAttribute("srcset",i):g&&!l&&(N.test(a.nodeName)?$(a,g):a.src=g),(i||l)&&v(a,{src:g})),a._lazyRace&&delete a._lazyRace,s(a,c.lazyClass),y(function(){(!q||a.complete&&a.naturalWidth>1)&&(q?T(o):R--,X(o))},!0)}),ba=function(a){var b,d=M.test(a.nodeName),e=d&&(a[h](c.sizesAttr)||a[h]("sizes")),f="auto"==e;(!f&&l||!d||!a.src&&!a.srcset||a.complete||q(a,c.errorClass))&&(b=u(a,"lazyunveilread").detail,f&&D.updateElem(a,!0,a.offsetWidth),a._lazyRace=!0,R++,aa(a,b,f,e,d))},ca=function(){if(!l){if(e.now()-x<999)return void j(ca,999);var a=B(function(){c.loadMode=3,W()});l=!0,c.loadMode=3,W(),i("scroll",function(){3==c.loadMode&&(c.loadMode=2),a()},!0)}};return{_:function(){x=e.now(),f=b.getElementsByClassName(c.lazyClass),k=b.getElementsByClassName(c.lazyClass+" "+c.preloadClass),L=c.hFac,i("scroll",W,!0),i("resize",W,!0),a.MutationObserver?new MutationObserver(W).observe(d,{childList:!0,subtree:!0,attributes:!0}):(d[g]("DOMNodeInserted",W,!0),d[g]("DOMAttrModified",W,!0),setInterval(W,999)),i("hashchange",W,!0),["focus","mouseover","click","load","transitionend","animationend","webkitAnimationEnd"].forEach(function(a){b[g](a,W,!0)}),/d$|^c/.test(b.readyState)?ca():(i("load",ca),b[g]("DOMContentLoaded",W),j(ca,2e4)),f.length?(V(),y._lsFlush()):W()},checkElems:W,unveil:ba}}(),D=function(){var a,d=z(function(a,b,c,d){var e,f,g;if(a._lazysizesWidth=d,d+="px",a.setAttribute("sizes",d),m.test(b.nodeName||""))for(e=b.getElementsByTagName("source"),f=0,g=e.length;g>f;f++)e[f].setAttribute("sizes",d);c.detail.dataAttr||v(a,c.detail)}),e=function(a,b,c){var e,f=a.parentNode;f&&(c=x(a,f,c),e=u(a,"lazybeforesizes",{width:c,dataAttr:!!b}),e.defaultPrevented||(c=e.detail.width,c&&c!==a._lazysizesWidth&&d(a,f,e,c)))},f=function(){var b,c=a.length;if(c)for(b=0;c>b;b++)e(a[b])},g=B(f);return{_:function(){a=b.getElementsByClassName(c.autosizesClass),i("resize",g)},checkElems:g,updateElem:e}}(),E=function(){E.i||(E.i=!0,D._(),C._())};return function(){var b,d={lazyClass:"lazyload",loadedClass:"lazyloaded",loadingClass:"lazyloading",preloadClass:"lazypreload",errorClass:"lazyerror",autosizesClass:"lazyautosizes",srcAttr:"data-src",srcsetAttr:"data-srcset",sizesAttr:"data-sizes",minSize:40,customMedia:{},init:!0,expFactor:1.5,hFac:.8,loadMode:2};c=a.lazySizesConfig||a.lazysizesConfig||{};for(b in d)b in c||(c[b]=d[b]);a.lazySizesConfig=c,j(function(){c.init&&E()})}(),{cfg:c,autoSizer:D,loader:C,init:E,uP:v,aC:r,rC:s,hC:q,fire:u,gW:x,rAF:y}}});</script><style class="wp-asset-manager nypost-article-critical-css" type="text/css">.article-wrapper #author-info .columnist-photo,.right-column .box.module.widget_nypost_columnists_widget .module-author picture{width:76px;height:69px}@media only screen and (max-width:640px){.article-wrapper #author-info .columnist-photo,.right-column .box.module.widget_nypost_columnists_widget .module-author picture{width:55px;height:51px}}.article-wrapper #author-info .columnist-photo img,.right-column .box.module.widget_nypost_columnists_widget .module-author picture img{width:100%;height:100%}.clearfix,.right-column .box.module,.sharing-url-wrapper{*zoom:1}.clearfix:after,.clearfix:before,.right-column .box.module:after,.right-column .box.module:before,.sharing-url-wrapper:after,.sharing-url-wrapper:before{content:" ";display:table}.clearfix:after,.right-column .box.module:after,.sharing-url-wrapper:after{clear:both}.right-column .box.module h5{font-size:1rem;line-height:19px;font-family:neue-haas-grotesk-display,sans-serif;color:#2a2a2a;font-weight:500}.article-wrapper .article .section-tag{font-family:futura-pt,sans-serif;background-color:#c33;padding:3px 5px;color:#fff;font-size:.75rem;line-height:12px;text-transform:uppercase;text-align:center;float:left;font-weight:700;margin-top:0;margin-bottom:0}.article-wrapper #author-info .author-name{font-size:1.5rem;color:#2a2a2a;line-height:24px;font-family:futura-pt,sans-serif;text-transform:uppercase;font-style:italic;font-weight:800}@media only screen and (max-width:640px){.article-wrapper #author-info .author-name{font-size:1.25rem;line-height:20px}}.widget_text .textwidget{font-size:1rem;line-height:24px;font-family:proxima-nova,sans-serif;color:#2a2a2a;margin-bottom:20px;font-weight:400}@media only screen and (max-width:640px){.widget_text .textwidget{font-size:1.125rem;line-height:26px}}.article-wrapper .article .byline,.article-wrapper .article .byline-date{font-size:.8125rem;line-height:16px;color:#2a2a2a;font-family:proxima-nova,sans-serif;font-weight:400}@media only screen and (max-width:640px){.article-wrapper .article .byline,.article-wrapper .article .byline-date{font-size:.875rem;line-height:16px}}.article-wrapper .article .read-next a{font-size:.875rem;line-height:14px;font-family:futura-pt,sans-serif;font-weight:700;font-style:italic;color:#2a2a2a}.right-column .box.module .module-title .widget__title{font-size:1.5rem;line-height:15px;font-style:italic;font-weight:800;text-transform:uppercase;font-family:futura-pt,sans-serif;color:#2a2a2a;padding-left:10px;border-bottom:7px solid #c33}.article-wrapper .article .read-next-link{font-size:1rem;line-height:19px;font-family:neue-haas-grotesk-display,sans-serif;color:#2a2a2a;font-weight:500}.right-column .box.module .see-all:after{content:"";display:inline-block;border:5px solid rgba(0,0,0,0);border-left-color:#fff;margin-left:10px}html{height:100%;-ms-overflow-style:-ms-autohiding-scrollbar}body{margin:55px 0 0;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.no-js .lazyload{display:none}a{text-decoration:none;color:inherit}h1,h2,h3,h4,h5{margin:0;padding:0}.container{min-width:978px;max-width:978px;margin:0 auto;padding:30px 10px 20px}@media only screen and (max-width:640px){.container{max-width:100%;min-width:100%;width:100%;padding:0}}#background-wrapper .container{background:#fff}#background-wrapper{padding-top:20px}@media only screen and (max-width:640px){#background-wrapper{padding:30px 10px 0;overflow-x:hidden}}#div-gpt-ad-billb_atf div{line-height:0}img{max-width:100%}picture img{vertical-align:middle}body{width:100%}@media only screen and (min-width:641px){body{min-width:1000px;min-height:100vh}}@media only screen and (max-width:640px){body{overflow-x:hidden}}.content-wrapper{min-height:100%;padding-top:20px}#nypost-svg{display:none}.hide{display:none!important}.container .sd-content ul li .share-facebook span,.highlight-share .facebook{background-color:#3b5998;-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.container .sd-content ul li .share-facebook span:before,.highlight-share .facebook:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 522 1000' fill='%23fff'%3E%3Cpath d='M522 0v164h-94q-57 0-70 20-20 30-20 65v114h184v179H338v458H154V542H0V363h154V234q0-118 65-174 30-30 72-45t92-15h139z'/%3E%3C/svg%3E");background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";display:block;height:70%;speak:none;text-align:center;width:70%}.container .sd-content ul li .share-twitter span,.highlight-share .twitter{background-color:#00acee;-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.container .sd-content ul li .share-twitter span:before,.highlight-share .twitter:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1226 1000' fill='%23fff'%3E%3Cpath d='M1226 119q-58 29-147 39 82-55 113-141-88 48-158 62-34-38-82-59T847 0q-69 0-127 34t-93 92-34 128q0 21 1 31 1 15 5 26-155-9-292-80Q173 161 79 45q-34 62-34 130 0 63 31 119t82 90q-63 0-113-34v6q0 61 26 114t73 88 105 46q-46 12-68 12-17 0-25-1-13-1-20-5 26 78 89 126 65 49 148 49-64 51-145 80T62 893q-21 0-31-1-15-1-31-5 175 113 384 113 167 0 308-65 129-60 225-169 90-101 138-231 47-125 47-253v-33q73-55 124-130z'/%3E%3C/svg%3E");background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";display:block;height:65%;speak:none;text-align:center;width:65%}.modal-trigger{background-color:rgba(0,0,0,0);-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.modal-trigger:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1033 1000' fill='%23fff'%3E%3Cpath d='M380 364V0h273v355h380v290H653v355H380V645H0V355h380v9z'/%3E%3C/svg%3E");background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";display:block;height:50%;speak:none;text-align:center;width:50%}.skip-link{background-color:#fff;border:2px solid #c33;-webkit-box-shadow:0 0 10px rgba(0,0,0,.5);box-shadow:0 0 10px rgba(0,0,0,.5);font-family:proxima-nova,sans-serif;font-size:18px;font-weight:700;left:10px;outline:0;padding:20px;position:absolute;top:10px;z-index:100000;-webkit-transform:translate3d(calc(-100% - 20px),0,0);transform:translate3d(calc(-100% - 20px),0,0)}textarea{overflow:auto}.recirc--header .share-count{display:none}@media only screen and (max-width:640px){.recirc--header{border-bottom:none;height:auto;padding:10px 5px 5px}.recirc--header:not(.slick-initialized){max-height:115px}.recirc--header .recirc__heading{display:none}.recirc--header .flag-wrapper{font-size:.625rem;display:block;font-family:futura-pt,sans-serif;font-weight:700;line-height:10px;margin:0 0 4px;padding:0;text-transform:uppercase}.recirc--header .flag-wrapper li{display:inline-block}.recirc--header .flag-wrapper .display-flag{background-color:#c33;color:#fbfbfb;margin:0 2px 0 0;padding:3px 5px}.recirc--header .recirc__story{border-left:none;height:100px;margin:0 4px 0 0;padding:0;width:150px}.recirc--header .recirc__story-inner{display:block;height:100%;position:relative}.recirc--header .recirc__story-inner img{float:none;height:100px;margin:0;-o-object-fit:cover;object-fit:cover;width:100%}.recirc--header .recirc__story-inner:before{background:-o-linear-gradient(top,rgba(0,0,0,0) 0,rgba(0,0,0,.7) 100%);background:-webkit-gradient(linear,left top,left bottom,from(rgba(0,0,0,0)),to(rgba(0,0,0,.7)));background:linear-gradient(180deg,rgba(0,0,0,0),rgba(0,0,0,.7));content:"";height:100%;left:0;position:absolute;top:0;width:100%}.recirc--header .recirc__title{bottom:5px;color:#fff;font-size:12px;left:0;line-height:14px;padding:0 5px;position:absolute;width:100%}}@media only screen and (max-width:640px){.billboard-ad{display:none}}.right-column .box.module .see-all{font-size:.875rem;font-family:futura-pt,sans-serif;color:#2a2a2a;font-weight:700}.right-column .box.module{border:1px solid #ccc;padding:20px 20px 25px;margin:20px 0}.right-column .box.module .widget__title.with-subtitle{border-bottom:none;line-height:1;padding-left:0}.right-column .box.module .widget__title.with-subtitle .widget__title-primary{display:block;padding-left:10px;position:relative}.right-column .box.module .widget__title.with-subtitle .widget__title-primary:after{content:"";border-bottom:7px solid #c33;bottom:-3px;height:0;left:0;position:absolute;width:100%}.right-column .box.module:first-child{margin-top:0}.right-column .box.module .module-title .widget__title{margin-left:-21px;display:inline-table;padding-right:0;margin-bottom:20px}.right-column .box.module img{max-width:100%;height:auto;display:block}.right-column .box.module .see-all{display:block;float:right;padding:30px 0 0;line-height:10px;text-align:right;text-transform:uppercase;width:100%}.right-column .box.module .see-all:after{border-left-color:#2a2a2a}.right-column .box.module .module-wrapper{clear:both;list-style:none;margin:0;padding:0}.right-column .box.module .module-wrapper .story-photo-box a img{width:100%}.right-column .box.module .module-wrapper h5{margin-top:6px}.right-column .box.module.widget_nypost_custom_widget .module-link{display:block;position:relative}.right-column .box.module.widget_nypost_custom_widget .module-image{margin-bottom:15px}.right-column .box.module.widget_nypost_custom_widget .widget__title{font-size:26px;width:215px}.right-column .box.module.widget_nypost_dfp_ad_widget{border:none;padding:0}.right-column .box.module.widget_nypost_columnists_widget{padding-left:0;padding-right:0}.right-column .box.module.widget_nypost_columnists_widget .module-title .widget__title{margin-left:0}.right-column .box.module.widget_nypost_columnists_widget .module-authors{list-style:none;margin:0;padding:0}.right-column .box.module.widget_nypost_columnists_widget .module-author{padding:10px 20px 20px}.right-column .box.module.widget_nypost_columnists_widget .module-author.has-border{border-top:6px solid #2a2a2a}.right-column .box.module.widget_nypost_columnists_widget .module-author h4{font:500 16px/16px futura-pt,sans-serif;color:#c33;float:left;margin-top:10px;font-weight:600}.right-column .box.module.widget_nypost_columnists_widget .module-author picture{padding-bottom:0;float:right;margin-top:-25px}.right-column .box.module.widget_nypost_columnists_widget .module-author__name{border-bottom:1px solid #000;margin-bottom:17px}.right-column .box.module.widget_nypost_columnists_widget .see-all{padding:10px 20px 0}.widget_text .textwidget{margin-bottom:0;padding-top:0}.widget-more-stories img{width:100%;height:auto}@media only screen and (max-width:640px){.container .left-column,.container .right-column{float:none;clear:left;margin-left:auto;margin-right:auto}}.right-column{float:right;width:300px}.article-wrapper,.right-column{position:relative}@media only screen and (min-width:641px){.article-wrapper .floating-share .sd-content ul li{display:block;margin-bottom:6px!important}.article-wrapper .floating-share .sd-content ul li.share-whatsapp{display:none}.article-wrapper .floating-share .sd-content ul li a{margin-bottom:5px!important}.article-wrapper .floating-share .sd-title{display:none}.article-wrapper .floating-share h3{font:700 12px/14px futura-pt,sans-serif;color:#2a2a2a;text-align:center;text-transform:uppercase;width:70px;margin:0 auto 9px}}.article-wrapper .article .floating-share .read-next-wrapper,.article-wrapper .share-whatsapp{display:none}@media only screen and (max-width:640px){.article-wrapper .share-whatsapp{display:block}}.article-wrapper .article-share-top{float:right;clear:both;margin-right:-5px}@media only screen and (max-width:640px){.article-wrapper .article-share-top{float:left;margin:20px 0 9px;clear:both}}.article-wrapper .article-share-top .sd-content ul li{padding:0 7px 0 0}.article-wrapper .article-share-top .sd-content ul li:last-of-type{padding:0}.article-wrapper .article-share-top .share-whatsapp{display:none;margin-left:3px}@media only screen and (max-width:640px){.article-wrapper .article-share-top .share-whatsapp{display:block}}@media only screen and (min-width:641px){.article-wrapper.left-column{float:left;width:618px;margin-left:30px}}@media only screen and (max-width:640px){.article-wrapper.left-column{width:100%}}.article-wrapper #author-info{overflow-x:hidden;margin-bottom:26px;margin-top:-5px;float:left;width:100%}@media only screen and (max-width:640px){.article-wrapper #author-info{margin-bottom:36px}}.article-wrapper #author-info .author-header{display:inline-block;width:100%}.article-wrapper #author-info .columnist-photo{padding-bottom:0;float:left;position:relative}.article-wrapper #author-info .author-name{line-height:18px;background-color:#f6f6f6;display:inline;width:100%;margin-left:50px;margin-top:-32px;padding:7px 0 7px 35px;float:left;font-weight:700}@media only screen and (max-width:640px){.article-wrapper #author-info .author-name{margin-left:29px}}.article-wrapper .article .flag-region{display:inline-block;width:100%;margin-bottom:7px}@media only screen and (max-width:640px){.article-wrapper .article .flag-region{margin-bottom:2px}}.article-wrapper .article .section-tag{margin-right:10px}.article-wrapper .article .byline,.article-wrapper .article .byline-date{margin-bottom:20px;margin-top:7px;line-height:12px}@media only screen and (max-width:640px){.article-wrapper .article .byline,.article-wrapper .article .byline-date{line-height:16px;margin:8px 0 10px}}.article-wrapper .article .byline a{color:#c33;display:inline-block}.article-wrapper .article .byline-date{float:right}@media only screen and (max-width:640px){.article-wrapper .article .byline-date{margin-bottom:17px;float:left;clear:both;margin-top:0}}.article-wrapper .article .byline-date .separator{display:inline-block;padding:0 4px}@media only screen and (max-width:640px){.article-wrapper .article .modal-trigger{display:none}}.article-wrapper .article #author-byline{float:left;position:relative}@media only screen and (max-width:640px){.article-wrapper .article #author-byline{line-height:16px;margin-top:0}}.article-wrapper .article .author-flyout{position:absolute;z-index:999;display:none;-webkit-filter:drop-shadow(7px 5px 16px rgba(50,50,50,.13));filter:drop-shadow(7px 5px 16px rgba(50,50,50,.13));padding-top:15px}.article-wrapper .article #columnist-contact{display:none}.article-wrapper .article .featured-image img{border-bottom:4px solid #c33;padding-bottom:3px;width:100%}.article-wrapper .article #featured-image-wrapper{display:inline-block;position:relative;width:100%;margin-bottom:19px}@media only screen and (max-width:640px){.article-wrapper .article #featured-image-wrapper{margin-bottom:21px}}.article-wrapper .article #featured-image-wrapper img{height:auto;width:100%}.article-wrapper .article .read-next-wrapper{border-top:1px solid #d0d0d0;border-bottom:1px solid #d0d0d0;padding:5px 0;margin:5px 0 30px;height:26px;display:table;width:100%}.article-wrapper .article .read-next{margin:0;padding:0 10px 0 0;width:101px;display:table-cell;vertical-align:middle}.article-wrapper .article .read-next a{font-size:.9375rem;background-color:#c33;color:#fff;font-weight:800;padding:2px 7px;text-transform:uppercase;position:relative}.article-wrapper .article .read-next a:after{font-size:0;line-height:0;width:0;border-top:12px solid rgba(0,0,0,0);border-left:10px solid #c33;border-bottom:12px solid rgba(0,0,0,0);top:0;right:-10px;content:"";position:absolute}.article-wrapper .article .read-next-link{margin:0;padding:0;vertical-align:middle;display:table-cell}.article-wrapper .article-header .double-rule{width:100%;clear:both;border-bottom:1px solid #d0d0d0;margin:0 0 20px;height:0}.article-wrapper .article-header .byline{float:left}#highlight-share{display:none}.modal-trigger{border-radius:50%;border:2px solid #fff;-webkit-box-shadow:1px 1px 1px #a0a0a0;box-shadow:1px 1px 1px #a0a0a0;font-size:0;height:30px;position:absolute;right:10px;top:10px;width:30px}@media only screen and (min-width:641px){body.single-article .container{padding:30px 10px 25px}}.highlight-share{display:none;position:absolute;width:102px;top:0;right:166px;padding:10px 10px 15px;border:1px solid #000;background:#fff;z-index:999}.highlight-share p{margin:0;text-align:center;text-transform:uppercase;font:700 12px/12px futura-pt,sans-serif;color:#2a2a2a}.highlight-share .share-content{display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-pack:distribute;justify-content:space-around;width:90px;margin:7px auto 0}.highlight-share .facebook,.highlight-share .twitter{border-radius:50%;width:35px;height:35px;margin:0}.highlight-share .arrow{position:absolute;width:10px;height:10px;border-top:1px solid #000;border-left:1px solid #000;top:-7px;left:55px;z-index:1000;background-color:#fff;-webkit-transform:rotate(45deg);-ms-transform:rotate(45deg);transform:rotate(45deg)}.search__submit,input[type=email],input[type=text]{outline:none}::-ms-clear,::-ms-reveal{display:none;width:0;height:0}@media only screen and (max-width:640px){body .article-wrapper{padding-top:0}}.dfp-overlay_fullpage,.dfp-skin{height:1px!important}@media only screen and (min-width:641px){#div-gpt-ad-overlay_fullpage{position:absolute;left:50%;top:0;width:998px;-webkit-transform:translate(-50%);-ms-transform:translate(-50%);transform:translate(-50%);z-index:10002!important}}@media only screen and (max-width:640px){#div-gpt-ad-overlay_fullpage{position:fixed;left:50%;top:0;-webkit-transform:translate(-50%);-ms-transform:translate(-50%);transform:translate(-50%);z-index:10002!important}.dfp-bottom{position:fixed;bottom:0;left:0;z-index:1000;width:100%;bottom:env(safe-area-inset-bottom)}#div-gpt-ad-bottom,#div-gpt-ad-rec_atf{text-align:center}}#header-billboard-ad,.dfp-inline{text-align:center}.dfp-inline{margin-bottom:32px;position:relative;z-index:1}.dfp-inline>div{display:block;margin-left:auto!important;margin-right:auto!important}#div-gpt-ad-inline{display:none}:root{--scrollbarWidth:15px}.clearfix,.sharing-url-wrapper{*zoom:1}.clearfix:after,.clearfix:before,.sharing-url-wrapper:after,.sharing-url-wrapper:before{content:" ";display:table}.clearfix:after,.sharing-url-wrapper:after{clear:both}.screen-reader-text{clip:rect(0 0 0 0);-webkit-clip-path:inset(100%);clip-path:inset(100%);height:1px;overflow:hidden;position:absolute;white-space:nowrap;width:1px}.recirc--header .recirc__title{font-size:.8125rem;line-height:15px;color:#2a2a2a;font-family:neue-haas-grotesk-display,sans-serif;font-weight:500}.recirc--header .recirc__heading{line-height:12px;font-weight:700;color:#2a2a2a}.nav-header,.recirc--header .recirc__heading{font-size:.75rem;font-family:futura-pt,sans-serif}.nav-header{text-transform:uppercase}.nav-wrapper{background:#c33;height:55px;position:relative;width:100%}.nav-wrapper .container--header-nav{min-width:978px;max-width:978px;margin:0 auto;-webkit-box-sizing:border-box;box-sizing:border-box;height:auto;padding:0}@media only screen and (max-width:640px){.nav-wrapper .container--header-nav{max-width:100%;min-width:100%;width:100%;height:100%}}@media only screen and (min-width:1260px){.nav-wrapper .container--header-nav{max-width:1280px;min-width:1205px}}.page-nav{padding-top:5px}@media only screen and (max-width:640px){.page-nav{-webkit-box-align:center;-ms-flex-align:center;align-items:center;display:-webkit-box;display:-ms-flexbox;display:flex}}@media only screen and (min-width:1260px){.page-nav{padding:5px 20px 0}}.nav-left,.nav-right{padding-top:11px}@media only screen and (max-width:640px){.nav-links,.nav-links-wrapper,.page-nav{height:100%;margin:0;padding-top:0}}.nav-left{float:left}@media only screen and (max-width:640px){.nav-left{-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;float:none;height:55px;padding:0 15px;position:absolute;width:100%}}.nav-right{float:right}@media only screen and (max-width:640px){.nav-right,.nav-text{display:none}}.nav-header{background:rgba(0,0,0,0);border:0;color:#fff;float:left;font-weight:600;margin:0;padding:0}.nav-header span{float:left;margin-top:4px}@media only screen and (max-width:640px){.nav-header{-webkit-box-align:center;-ms-flex-align:center;align-items:center;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}}.nav-header--sections{margin-right:40px}@media only screen and (max-width:640px){.nav-header--sections{height:20px;margin-right:0;width:20px}}.nav-header--sections .menu-icon{height:20px;width:20px}@media only screen and (max-width:640px){.nav-header--sections .menu-icon{display:block;margin:0}}@media only screen and (min-width:641px){.nav-header--sections .menu-icon{margin-left:0;margin-right:10px;position:relative;top:-2px}}.nav-header--sections .menu-icon-svg{display:block;fill:#fff;height:100%;width:auto}@media only screen and (max-width:640px){.nav-header--sections .menu-icon-svg{height:20px;width:20px}}.nav-header--search{margin-left:auto}.nav-header--search .search-icon{display:block;position:relative}@media only screen and (max-width:640px){.nav-header--search .search-icon{height:21px;margin:0;width:20px}}@media only screen and (min-width:641px){.nav-header--search .search-icon{float:inherit;height:18px;margin-right:10px;padding:0;top:-2px;width:17px}}.nav-header--search .search-icon-svg{display:block;fill:#fff;height:100%;width:auto}@media only screen and (max-width:640px){.nav-header--search .search-icon-svg{height:21px;width:20px}}@media only screen and (max-width:640px){.nav-header--search .search-text{display:none}}.nav-header--tips{-webkit-box-align:center;-ms-flex-align:center;align-items:center;display:-webkit-box;display:-ms-flexbox;display:flex}.nav-header--tips .icon-signal{background-color:rgba(0,0,0,0);float:left;height:30px;margin-top:-3px;width:30px}@media only screen and (max-width:640px){.nav-header--tips .icon-signal{display:none}}.nav-header--tips .icon-signal:before{height:17px!important;width:20px!important}.nav-header--tips .icon-signal+span{margin:0}.nav-header--email{-webkit-box-align:center;-ms-flex-align:center;align-items:center;display:-webkit-box;display:-ms-flexbox;display:flex;margin-left:40px}.nav-header--email .icon-email{background-color:rgba(0,0,0,0);float:left;height:25px;margin:0 5px;width:30px}@media only screen and (max-width:640px){.nav-header--email .icon-email{display:none}}.nav-header--email .icon-email:before{height:16px!important;width:23px!important}.nav-header--email .icon-email+span{margin:0}.section-nav-wrapper{background:#fff;border:1px solid #bfbfbf;max-height:calc(100vh - 55px);overflow-y:auto;position:fixed;top:55px;width:198px;z-index:99999}@media only screen and (max-width:640px){.section-nav-wrapper{display:block;left:0;max-height:calc(100vh - 55px);-webkit-transform:translate(-100%);-ms-transform:translate(-100%);transform:translate(-100%);will-change:transform}}@media only screen and (min-width:641px){.section-nav-wrapper{display:none}}.header-logo-wrapper{-webkit-box-align:start;-ms-flex-align:start;align-items:flex-start;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}@media only screen and (max-width:640px){.header-logo-wrapper{width:100%}}.header-logo-wrapper a[class*=dog-ear--],.header-logo-wrapper img[class*=dog-ear--]{display:block;height:41px;width:133px}@media only screen and (max-width:1260px){.header-logo-wrapper a[class*=dog-ear--],.header-logo-wrapper img[class*=dog-ear--]{display:none}}.header-logo-wrapper a[class*=dog-ear--]{margin-top:2px}.header-logo{background-size:contain;display:block;margin:0 40px;z-index:100}@media only screen and (max-width:640px){.header-logo{position:relative;z-index:1}}.header-logo svg{display:block;height:45px;width:300px}@media only screen and (max-width:640px){.header-logo svg{height:33px;width:218px}}.header-logo span{display:block;height:0;text-indent:-9999px;width:0}.site-header .search__form-wrapper--header{background-color:#fff;border-bottom:1px solid #ccc;left:0;padding:20px 0;position:absolute;right:0;top:100%;-webkit-transform:translateY(-200%);-ms-transform:translateY(-200%);transform:translateY(-200%);width:100%;z-index:-1}@media only screen and (max-width:782px){.site-header .search__form-wrapper--header{display:none}}.recirc--header{background-color:#fff;border-bottom:1px solid #d0d0d0;display:block;height:98px;overflow:hidden;padding:0}.recirc--header .slick-next,.recirc--header .slick-prev{background:none;height:26px;padding:0;position:absolute;right:20px;top:50%;-webkit-transform:translateY(-50%);-ms-transform:translateY(-50%);transform:translateY(-50%);width:26px;z-index:2}.recirc--header .slick-next .slick-button-icon,.recirc--header .slick-prev .slick-button-icon{height:25px;width:25px}.recirc--header .slick-next.slick-disabled,.recirc--header .slick-prev.slick-disabled{visibility:hidden}.recirc--header .slick-next.slick-disabled:after,.recirc--header .slick-prev.slick-disabled:after{background:none}.recirc--header .slick-prev{left:20px;right:auto;-webkit-transform:translateY(-50%) rotate(180deg)!important;-ms-transform:translateY(-50%) rotate(180deg)!important;transform:translateY(-50%) rotate(180deg)!important}.recirc--header .slick-prev+.fade{left:0;right:auto;-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.recirc--header .fade{background-image:-o-linear-gradient(right,#fff 0,hsla(0,0%,100%,0) 100%);background-image:-webkit-gradient(linear,right top,left top,from(#fff),to(hsla(0,0%,100%,0)));background-image:linear-gradient(270deg,#fff,hsla(0,0%,100%,0));display:block;height:100%;position:absolute;right:0;top:0;width:143px;z-index:1}.recirc--header .fade.slick-disabled{display:none!important}.recirc--header .recirc__heading{line-height:8px;margin:10px 0 0;padding:0 0 0 15px;text-transform:uppercase}.recirc--header .recirc__heading:before{background-color:#d0d0d0;content:"";display:block;height:1px;margin-right:-20px;position:relative;top:6px}.recirc--header .recirc__heading-text{background-color:#fff;display:inline-block;padding:0 10px 0 0;position:relative}.recirc--header .flag-wrapper,.recirc--header .share-count,.recirc--header body.single-cover .slideshow-see-all,.recirc--header body.single-trending-tv .slideshow-see-all,.recirc--header body.single-video .slideshow-see-all{display:none}.recirc--header .recirc__story{border-left:1px solid #d0d0d0;display:block;float:left;height:59px;margin:10px 0;padding:0 15px;position:relative;width:224px}.recirc--header .recirc__story:focus{-webkit-box-shadow:none;box-shadow:none;outline:0}.recirc--header .recirc__story::first-child{border-left:none}.recirc--header .recirc__story a{display:block;height:100%}.recirc--header .recirc__story a:focus{background:#f6f6f6;border-radius:3px;-webkit-box-shadow:0 0 0 1px #000,0 3px 6px rgba(0,0,0,.25);box-shadow:0 0 0 1px #000,0 3px 6px rgba(0,0,0,.25)}.recirc--header .recirc__story img{float:left;height:59px;margin:0 10px 0 0;width:88px}.recirc--header .recirc__title{-webkit-box-sizing:border-box;box-sizing:border-box}.recirc--header .recirc__link:focus{outline:0}@media only screen and (max-width:640px){.recirc--header{border-bottom:none;height:auto;padding:10px 5px 5px}.recirc--header:not(.slick-initialized){max-height:115px}.recirc--header .recirc__heading{display:none}.recirc--header .flag-wrapper{font-size:.625rem;display:block;font-family:futura-pt,sans-serif;font-weight:700;line-height:10px;margin:0 0 4px;padding:0;text-transform:uppercase}.recirc--header .flag-wrapper li{display:inline-block}.recirc--header .flag-wrapper .display-flag{background-color:#c33;color:#fbfbfb;margin:0 2px 0 0;padding:3px 5px}.recirc--header .recirc__story{border-left:none;height:100px;margin:0 4px 0 0;padding:0;width:150px}.recirc--header .recirc__story-inner{display:block;height:100%;position:relative}.recirc--header .recirc__story-inner img{float:none;height:100px;margin:0;-o-object-fit:cover;object-fit:cover;width:100%}.recirc--header .recirc__story-inner:before{background:-o-linear-gradient(top,rgba(0,0,0,0) 0,rgba(0,0,0,.7) 100%);background:-webkit-gradient(linear,left top,left bottom,from(rgba(0,0,0,0)),to(rgba(0,0,0,.7)));background:linear-gradient(180deg,rgba(0,0,0,0),rgba(0,0,0,.7));content:"";height:100%;left:0;position:absolute;top:0;width:100%}.recirc--header .recirc__title{bottom:5px;color:#fff;font-size:12px;left:0;line-height:14px;padding:0 5px;position:absolute;width:100%}}.site-header{left:0;position:fixed;right:0;top:0;-webkit-transform:translateY(0);-ms-transform:translateY(0);transform:translateY(0);z-index:10001}@media only screen and (min-width:783px){.header-recirc-bar-enabled{margin-top:153px}}@media only screen and (max-width:782px){.header-recirc-bar-enabled{margin-top:1.875rem}}.container .sd-content ul li .share-facebook span{background-color:#3b5998;-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.container .sd-content ul li .share-facebook span:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 522 1000' fill='%23fff'%3E%3Cpath d='M522 0v164h-94q-57 0-70 20-20 30-20 65v114h184v179H338v458H154V542H0V363h154V234q0-118 65-174 30-30 72-45t92-15h139z'/%3E%3C/svg%3E");background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";display:block;height:70%;speak:none;text-align:center;width:70%}.container .sd-content ul li .share-twitter span{background-color:#00acee;-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.container .sd-content ul li .share-twitter span:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1226 1000' fill='%23fff'%3E%3Cpath d='M1226 119q-58 29-147 39 82-55 113-141-88 48-158 62-34-38-82-59T847 0q-69 0-127 34t-93 92-34 128q0 21 1 31 1 15 5 26-155-9-292-80Q173 161 79 45q-34 62-34 130 0 63 31 119t82 90q-63 0-113-34v6q0 61 26 114t73 88 105 46q-46 12-68 12-17 0-25-1-13-1-20-5 26 78 89 126 65 49 148 49-64 51-145 80T62 893q-21 0-31-1-15-1-31-5 175 113 384 113 167 0 308-65 129-60 225-169 90-101 138-231 47-125 47-253v-33q73-55 124-130z'/%3E%3C/svg%3E");background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";display:block;height:65%;speak:none;text-align:center;width:65%}.container .sd-content ul li .share-whatsapp span{background-color:#4dc236;-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.container .sd-content ul li .share-whatsapp span:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 992 1000' fill='%23fff'%3E%3Cpath d='M509 0Q376 0 262 66 152 131 88 241 21 355 21 487q0 136 69 252L0 1000l269-85q107 59 235 59 133 0 247-66 110-65 174-175 67-114 68-246t-65-246Q865 131 755 66 641 0 509 0zm0 893q-61 0-117-17t-106-51l-158 51 52-150q-77-111-77-239 0-109 56-204 54-92 146-146 94-56 204-56t204 56q92 54 146 146 56 95 56 204 0 112-55 206-53 92-145 145-95 55-206 55zm230-295q-9-6-42-23t-43-19q-12-5-16-5-8 0-14 9-9 13-43 47-6 6-11 6t-14-6q-3-2-21-12t-34-19q-23-14-44-33-23-24-43-53-17-25-21-37-10-16 9-26l21-21q5-5 8-11-3 7 5-10 3-7 3-13t-3-9-15-39q-12-32-19-55-4-11-9-16t-10-5h-33q-15 0-34 13-19 17-28 33-19 30-19 69-2 27 9 59 8 25 21 49 11 18 17 25 17 27 28 42 32 45 70 81 52 48 107 73 44 20 72 30 24 8 40 10 11 2 21 1 14-2 17-2 11 0 30-8t34-20q17-14 21-28 9-20 11-39 2-17-2-21-6-2-11-7-44-30-15-10z'/%3E%3C/svg%3E");background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";display:block;height:60%;speak:none;text-align:center;width:60%}.container .sd-content ul li .share-email span,.icon-email{background-color:#c33;-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.container .sd-content ul li .share-email span:before,.icon-email:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1467 1000' fill='%23fff'%3E%3Cpath d='M0 0l733 487L1467 0H0zm0 120v880h1467V120L733 693z'/%3E%3C/svg%3E");background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";display:block;height:60%;speak:none;text-align:center;width:60%}.container .sd-content ul li .share-nyp-post-url span{background-color:#c33;-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.container .sd-content ul li .share-nyp-post-url span:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg width='1000' height='1000' xmlns='http://www.w3.org/2000/svg' fill='%23fff'%3E%3Cpath d='M651.996 545.996L540.5 642.5 361 461l112-91 178.997 175.997zM21 225L225 21c15.333-14 33-21 53-21s37 7 51 21l204 204c14 14 21 31.333 21 52s-7 37.667-21 51L329 533c-15.333 13.333-33 20-53 20s-37-6.667-51-20L21 328C7 312 0 294.333 0 275s7-36 21-50zM278 71L74 278l204 204 207-204L278 71zm189 600l205-204c16-14 33.667-21 53-21s36 7 50 21l204 204c14 15.333 21 33 21 53s-7 37-21 51L775 979c-14 14-31.333 21-52 21s-37.667-7-51-21L467 775c-13.333-15.333-20-33-20-53s6.667-37 20-51zm258-153L520 722l205 207 206-205-206-206z'/%3E%3C/svg%3E");background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";display:block;height:65%;speak:none;text-align:center;width:65%}.icon-signal{background-color:rgba(0,0,0,0);-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.icon-signal:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 854 1000' fill='%23fff'%3E%3Cpath d='M424 206q-23 0-40-17t-18-41 17-41 41-16 41 17 16 40-16 41-41 17zm327 744q7 18 0 35t-26 24q-5 2-16 2-14 0-25-7t-16-22l-14-35H194l-14 35q-4 14-16 22t-25 7q-11 0-16-2-18-7-25-24t-2-35l278-714 42-29h17l41 29zM573 738l-44-111-71 71 77 77zM424 356l-70 181h140zm87 226H341l85 84zm-191 41l-44 112 42 40 77-77zM211 902h170L259 781zm215-17l78-78-78-77-77 77zm45 17h165l-46-119zm165-582l-37-37q19-18 30-44t10-51q0-23-9-46t-27-42l35-35q25 29 40 60 15 34 15 68t-14 66-43 61zm134 72l-39-39q33-31 50-73t15-88q2-45-15-88t-50-74l38-37q41 40 63 94 21 52 22 109-1 55-20 103-22 53-64 93zM219 61l36 37q-19 18-29 43t-11 50 10 48 26 42l-35 35q-25-26-40-60t-15-68 15-66 43-61zM84-12l39 40q-33 32-50 73t-17 88 17 87 50 75l-38 39q-41-42-62-95T0 186q1-55 20-103 22-53 64-95z'/%3E%3C/svg%3E");background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";display:block;height:60%;speak:none;text-align:center;width:60%}.breaking-news__close,.icon-close{background-color:rgba(0,0,0,0);-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.breaking-news__close:before,.icon-close:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1000 1000'%3E%3Cpath d='M290 491L18 219 219 17l272 272L781 0l219 219-289 290 272 272-202 202-272-273-290 290L0 781z'/%3E%3C/svg%3E");background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";display:block;height:50%;speak:none;text-align:center;width:50%}.icon-flipboard{background-color:#e12828;-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.icon-flipboard:before{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg width='20' height='20' xmlns='http://www.w3.org/2000/svg' fill='%23fff'%3E%3Cpath d='M19.411 6.85h-6.258v6.258H6.895v6.258H.638V.592H19.41z'/%3E%3C/svg%3E");background-position:50%;background-repeat:no-repeat;background-size:contain;content:"";display:block;height:60%;speak:none;text-align:center;width:60%}a img{border:none}img.size-medium{max-width:100%;height:auto}.container .sd-content ul li a.sd-button,.container .sd-social-icon-text .sd-content ul li a.sd-button{background:none;border-radius:none;border:none;-webkit-box-shadow:none;box-shadow:none;color:none!important;display:inline-block;font-family:inherit;font-size:inherit!important;font-weight:400;line-height:0!important;margin:0;padding:0;text-decoration:none!important;text-shadow:none}.container .sd-content ul li a.sd-button:before,.container .sd-social-icon-text .sd-content ul li a.sd-button:before{display:none}.container .sd-content ul li a.sd-button span,.container .sd-social-icon-text .sd-content ul li a.sd-button span{text-indent:-9999px!important}.container .article-header .sd-content ul{margin:-12px 0 0!important}.container .sd-content ul{margin:0!important}.container .sd-content ul .share-nyp-post-url{padding-right:0!important}.container .sd-content ul li{font-size:0;position:relative;z-index:1;float:left;margin:0!important;width:auto;padding:0 5px 0 0!important}.container .sd-content ul li:last-child{padding-right:0!important}.container .sd-content ul li a{width:auto!important}.container .sd-content ul li a span{border-radius:50px;width:35px!important;height:35px!important}.container .sd-title{display:none!important}@media only screen and (min-width:641px){.container .floating-share .sharedaddy .sd-content ul li{clear:both}}@media only screen and (max-width:640px){.container .floating-share h3,.desktop-share{display:none}}@media only screen and (min-width:641px){.desktop-share{display:block}}@media only screen and (max-width:640px){.mobile-share{display:block}}@media only screen and (min-width:641px){.mobile-share{display:none}}.sharing-url-wrapper{background-color:#fff;border:none;left:50%;overflow:hidden;padding:30px;position:absolute;top:50%;-webkit-transform:translate(-50%,-50%);-ms-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}@media only screen and (min-width:641px){.sd-social-icon-text .sd-content ul li a span{margin-left:4px!important}}#sharing_email{opacity:0}.breaking-news{max-height:100%;opacity:1;overflow:hidden;visibility:visible}.breaking-news+.billboard-ad{padding-top:20px}@media only screen and (max-width:640px){.breaking-news{margin:0 10px}}@media only screen and (min-width:641px){.breaking-news{padding:0 10px}}.breaking-news__story{background:#f7cb00;line-height:34px;padding:0;min-width:978px;max-width:978px;margin:0 auto}@media only screen and (max-width:640px){.breaking-news__story{max-width:100%;min-width:100%;width:100%}}.breaking-news__story h4,.breaking-news__story p{float:left;font:700 14px/34px neue-haas-grotesk-display,sans-serif;margin:0}.breaking-news__story h4{background:#000;color:#fff;font-family:futura-pt,sans-serif;letter-spacing:1.4px;margin-right:10px;padding:0 24px 0 10px;position:relative;text-transform:uppercase;z-index:2}.breaking-news__story h4:after{border-color:rgba(0,0,0,0) rgba(0,0,0,0) #f7cb00;border-style:solid;border-width:0 0 34px 20px;content:"";height:0;position:absolute;right:-1px;top:0;width:0}@media only screen and (max-width:640px){.breaking-news__story h4{font-size:12px}}.breaking-news__story p{font-family:neue-haas-grotesk-display,sans-serif;letter-spacing:.96px}@media only screen and (max-width:640px){.breaking-news__story p{clear:left;line-height:16px;padding:10px}}.breaking-news__close{border:1px solid #000;border-radius:50%;float:right;font-size:0;height:20px;margin:5px 10px 0;padding:0;width:20px}.breaking-news__close:before{height:10px;width:10px}.breaking-news--hidden{max-height:0;opacity:0;visibility:hidden}.web-alerts-modal{position:fixed;top:100px;width:100%;z-index:10500}.web-alerts-modal .modal-inner{-webkit-box-align:center;-ms-flex-align:center;align-items:center;background-color:#fff;border-top:7px solid #c33;-webkit-box-shadow:-1.73px 1px 6px rgba(0,0,0,.30196);box-shadow:-1.73px 1px 6px rgba(0,0,0,.30196);display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;font-family:proxima-nova,sans-serif;height:198px;margin:0 auto;max-width:100%;width:380px}.web-alerts-modal .modal-inner .logo{height:24px;margin:36px 0 12px;width:160px}.web-alerts-modal .modal-text{margin:0 1.5rem;max-width:334px;text-align:center}.web-alerts-modal .modal-buttons{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.web-alerts-modal .modal-button{background-color:#fff;border:none;border-radius:6px;color:#000;font-family:neue-haas-grotesk-display,sans-serif;font-size:14px;font-weight:400;line-height:1rem;margin:1px;padding:5px 10px;text-transform:uppercase}.web-alerts-modal .modal-button-nypost{background-color:#c33;color:#fff}.nyp-brightcove-wrapper{margin-bottom:20px;width:100%}.nyp-brightcove-wrapper .nyp-brightcove-player .video-js{position:absolute;top:0;bottom:0;right:0;left:0;width:100%;height:100%}</style><link rel="stylesheet" class="wp-asset-manager nypost-css" href="https://nypost.com/wp-content/themes/nypost-2016/static/css/nypost.css?ver=b63e3bf40faa15bf3b87" media="print" onload="this.onload=null;this.media='all'" /><noscript><link rel="stylesheet" href="https://nypost.com/wp-content/themes/nypost-2016/static/css/nypost.css?ver=b63e3bf40faa15bf3b87" media="all" class="wp-asset-manager nypost-css" /></noscript>		<script type="text/javascript">
			window.dataLayer = window.dataLayer || [];
			dataLayer.push({"pagename":"\/2020\/10\/08\/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen\/","page_type":"article","byline":["Mark Moore"],"tags":["2020 presidential election","Coronavirus","donald trump"],"section":"news","article_title":"Trump says he beat COVID-19 because he's a 'perfect physical specimen'","publish_date":"2020\/10\/08","date":"2020-10-08T09:23:00-04:00","publish_time":"09:23:00","article_update_date_time":"2020-10-08T11:29:46-04:00","post_id":16420050,"primary_tag":"donald trump","word_count":229,"article_type":"article","stat_tag":"enable"} );
		</script>
		<meta name="viewport" id="nypviewport" content="width=device-width, initial-scale=1" />
<script type="text/javascript">
	if ( navigator.userAgent.match(/IEMobile\/10\.0/) ) {
		var msViewportStyle = document.createElement( 'style' );
		msViewportStyle.appendChild(
			document.createTextNode( '@-ms-viewport{ width:auto!important }' )
		);
		document.getElementsByTagName( 'head' )[0].appendChild( msViewportStyle );
	}
	var mvp = document.getElementById('nypviewport'),
	slideshowVideo = 0;
	if ( screen.width <= 767 || ( slideshowVideo && screen.width < 1024 ) ) {
		mvp.setAttribute('content','width=device-width, initial-scale=1, viewport-fit=cover');
	}

			var nypost_screen = 'desktop',
			nypost_width = screen.width;

		if ( nypost_width < 640
			|| window.matchMedia( '(min-width: 568px) and (max-width: 767px) and (orientation: landscape)' ).matches ) {
			nypost_screen = 'mobile';
		} else {
			nypost_screen = 'desktop';
		}
	</script>
<meta name="copyright" content="Copyright 2020 NYP Holdings. All rights reserved."/>
<meta name="p:domain_verify" content="44b526edc36ffbcc163412ee9fe42833"/>
<meta name="robots" content="max-image-preview:large" />
<link rel="manifest" href="/wp-content/themes/nypost-2016/static/nypost-manifest.json?ver=65f1993e676f9a62d351">
	<link rel="apple-touch-icon" href="https://nypost.com/wp-content/themes/nypost-2016/static/images/apple-icons/nypost/apple-icon.png" />
							<link rel="apple-touch-icon" sizes="57x57" href="https://nypost.com/wp-content/themes/nypost-2016/static/images/apple-icons/nypost/apple-icon-57x57.png" />
					<link rel="apple-touch-icon" sizes="114x114" href="https://nypost.com/wp-content/themes/nypost-2016/static/images/apple-icons/nypost/apple-icon-114x114.png" />
					<link rel="apple-touch-icon" sizes="144x144" href="https://nypost.com/wp-content/themes/nypost-2016/static/images/apple-icons/nypost/apple-icon-144x144.png" />
				<link rel="shortcut icon" type="image/x-icon" href="https://nypost.com/wp-content/themes/nypost-2016/static/images/favicon-nypost/favicon.ico" />

<title>Trump: I beat COVID-19 because I'm a 'perfect physical specimen'</title>


<link rel="profile" href="http://gmpg.org/xfn/11" />

<link rel="canonical" href="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/" />
			<script type="text/javascript">
			// 86acbd31cd7c09cf30acb66d2fbedc91daa48b86:1585579176.21711

			!function(n,r,e,t,c){var i,o="Promise"in n,u={then:function(){return u},catch:function(n){
			return n(new Error("Airship SDK Error: Unsupported browser")),u}},s=o?new Promise((function(n,r){i=function(e,t){e?r(e):n(t)}})):u
			;s._async_setup=function(n){if(o)try{i(null,n(c))}catch(n){i(n)}},n[t]=s;var a=r.createElement("script");a.src=e,a.async=!0,a.id="_uasdk",
			a.rel=t,r.head.appendChild(a)}(window,document,'https://aswpsdkus.com/notify/v1/ua-sdk.min.js',
				'UA', {
					vapidPublicKey: "BHcJRsrG1MoeYSterZAZrbs1bch1N12irHE5BSjkWb8uYsBoMfO42Jl2U1vA31tDpFCyNuIVb-YtsxnXZUViv7o=",
					websitePushId: "web.com.nypost",
					appKey: "C1JGa9z8Re-AD50yV4b3cg",
					token: "MTpDMUpHYTl6OFJlLUFENTB5VjRiM2NnOlZ4aFNvT3h6R2gtU3RLYmVWNTVHOFkwZnlzRExKVjM2bmhCeDBLeXVzOUk"				});
			</script>
		<link rel='dns-prefetch' href='//us.tags.newscgp.com' />
<link rel='dns-prefetch' href='//s.skimresources.com' />
<link rel='dns-prefetch' href='//widgets.outbrain.com' />
<link rel='dns-prefetch' href='//nypost-com.videoplayerhub.com' />
<link rel='dns-prefetch' href='//s3.amazonaws.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel='dns-prefetch' href='//v0.wordpress.com' />
<link rel='dns-prefetch' href='//fastlane.rubiconproject.com' />
<link rel='dns-prefetch' href='//secure-assets.rubiconproject.com' />
<link rel='dns-prefetch' href='//googleads.g.doubleclick.net' />
<link rel='dns-prefetch' href='//pagead2.googlesyndication.com' />
<link rel='dns-prefetch' href='//securepubads.g.doubleclick.net' />
<link rel='dns-prefetch' href='//tpc.googlesyndication.com' />
<link rel='dns-prefetch' href='//acdn.adnxs.com' />
<link rel='dns-prefetch' href='//ib.adnxs.com' />
<link rel='dns-prefetch' href='//rb.adnxs.com' />
<link rel='dns-prefetch' href='//secure.adnxs.com' />
<link rel='dns-prefetch' href='//assets.bounceexchange.com' />
<link rel='dns-prefetch' href='//api.bounceexchange.com' />
<link rel='dns-prefetch' href='//events.bouncex.net' />
<link rel='dns-prefetch' href='//perfads.bouncex.net' />
<link rel='dns-prefetch' href='//as-sec.casalemedia.com' />
<link rel='dns-prefetch' href='//ssum-sec.casalemedia.com' />
<link rel='dns-prefetch' href='//connect.facebook.net' />
<link rel='dns-prefetch' href='//www.google-analytics.com' />
<link rel='dns-prefetch' href='//www.googletagservices.com' />
<link rel='preconnect' href='https://use.typekit.net' />
<link rel='preconnect' href='https://s0.wp.com' />
<link rel='preconnect' href='https://s1.wp.com' />
<link rel='preconnect' href='https://s2.wp.com' />
<link rel='preconnect' href='https://pixel.wp.com' />
<link rel='preconnect' href='https://fonts.googleapis.com' />
<link rel='preconnect' href='https://fonts.gstatic.com' />
	<script type="text/javascript">
	(function()
		{ var prox_url = "https://segment-data.zqtk.net/newscorpjs-1f38g3?url="+encodeURIComponent(window.location.href); var prox_script=document.createElement('script');prox_script.type='text/javascript';prox_script.src=prox_url;prox_script.async=false; if(document.getElementsByTagName("head").length>0)document.getElementsByTagName("head")[0].appendChild(prox_script); else if(document.getElementsByTagName("body").length>0)document.getElementsByTagName("body")[0].appendChild(prox_script); }
	)();
	</script>
	<script class="wp-asset-manager gdpr" type="text/javascript">window.nypScripts = window.nypScripts || {}; window.nypScripts["gdpr"] = {"euCountries":["AT","AU","BE","BG","HR","CY","CZ","DK","EE","FI","FR","DE","GR","HU","IS","IE","IT","LV","LI","LT","LU","MT","NL","NO","PL","PT","RO","SK","SI","ES","SE","GB"]}</script><script class="wp-asset-manager nypost_wp_vars" type="text/javascript">window.nypScripts = window.nypScripts || {}; window.nypScripts["nypost_wp_vars"] = {"wp_ajax_url":"https:\/\/nypost.com\/wp-admin\/admin-ajax.php","modal_image_nonce":"26c79e8d69","nypostSite":"nypost","postType":"article","isSingle":true,"isMobile":false,"pagesix_app_flyout":{"is_active":"0","max_modal_views":"1","cookie_expiry":"7","mobile_article_views":"1","desktop_article_views":"1","mobile_cookie_expiry":"7","suppress_flyout_views":"60"},"outbrain_permalink":"https:\/\/nypost.com\/2020\/10\/08\/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen\/","vip":true,"zephr_flyout_nonce":"62358cbc8b","web_alerts_modal":{"enabled":"1","modal_text":"Would you like to receive desktop browser notifications about breaking news and other major stories?","page_views":"1","modal_limit":"2","expiration_days":"2","retry_days":"9"}}</script><script class="wp-asset-manager recaptchaVars" type="text/javascript">window.nypScripts = window.nypScripts || {}; window.nypScripts["recaptchaVars"] = {"siteKey":"6LeLn6UZAAAAACBliyD9lyDraZLaLlzSFs-vcOEi","widgetId":"g-recaptcha"}</script><link rel="stylesheet" class="wp-asset-manager nypost-adobe-fonts" href="//use.typekit.net/uel0ekt.css?ver=65f1993e676f9a62d351" media="print" onload="this.onload=null;this.media='all'" /><noscript><link rel="stylesheet" href="//use.typekit.net/uel0ekt.css?ver=65f1993e676f9a62d351" media="all" class="wp-asset-manager nypost-adobe-fonts" /></noscript><link rel="stylesheet" class="wp-asset-manager brightcove-css" href="https://nypost.com/wp-content/themes/nypost-2016/static/css/nypost-brightcove.css?ver=65f1993e676f9a62d351" media="print" onload="this.onload=null;this.media='all'" /><noscript><link rel="stylesheet" href="https://nypost.com/wp-content/themes/nypost-2016/static/css/nypost-brightcove.css?ver=65f1993e676f9a62d351" media="all" class="wp-asset-manager brightcove-css" /></noscript><link rel="stylesheet" class="wp-asset-manager nypost-sitewide-notice-css" href="https://nypost.com/wp-content/themes/nypost-2016/static/css/sitewide-notice.css?ver=e54ab7c287cd96c68187" media="print" onload="this.onload=null;this.media='all'" /><noscript><link rel="stylesheet" href="https://nypost.com/wp-content/themes/nypost-2016/static/css/sitewide-notice.css?ver=e54ab7c287cd96c68187" media="all" class="wp-asset-manager nypost-sitewide-notice-css" /></noscript><meta name='description' content='President Trump said he&#039;s a &quot;perfect physical specimen&quot; and feels better than ever after battling the coronavirus.' /><!-- WP SEO -->
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/12.0.0-1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/12.0.0-1\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/nypost.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=5.4.2"}};
			/*! This file is auto-generated */
			!function(e,a,t){var r,n,o,i,p=a.createElement("canvas"),s=p.getContext&&p.getContext("2d");function c(e,t){var a=String.fromCharCode;s.clearRect(0,0,p.width,p.height),s.fillText(a.apply(this,e),0,0);var r=p.toDataURL();return s.clearRect(0,0,p.width,p.height),s.fillText(a.apply(this,t),0,0),r===p.toDataURL()}function l(e){if(!s||!s.fillText)return!1;switch(s.textBaseline="top",s.font="600 32px Arial",e){case"flag":return!c([127987,65039,8205,9895,65039],[127987,65039,8203,9895,65039])&&(!c([55356,56826,55356,56819],[55356,56826,8203,55356,56819])&&!c([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]));case"emoji":return!c([55357,56424,55356,57342,8205,55358,56605,8205,55357,56424,55356,57340],[55357,56424,55356,57342,8203,55358,56605,8203,55357,56424,55356,57340])}return!1}function d(e){var t=a.createElement("script");t.src=e,t.defer=t.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(t)}for(i=Array("flag","emoji"),t.supports={everything:!0,everythingExceptFlag:!0},o=0;o<i.length;o++)t.supports[i[o]]=l(i[o]),t.supports.everything=t.supports.everything&&t.supports[i[o]],"flag"!==i[o]&&(t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&t.supports[i[o]]);t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&!t.supports.flag,t.DOMReady=!1,t.readyCallback=function(){t.DOMReady=!0},t.supports.everything||(n=function(){t.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",n,!1),e.addEventListener("load",n,!1)):(e.attachEvent("onload",n),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&t.readyCallback()})),(r=t.source||{}).concatemoji?d(r.concatemoji):r.wpemoji&&r.twemoji&&(d(r.twemoji),d(r.wpemoji)))}(window,document,window._wpemojiSettings);
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
	<link rel='stylesheet' id='wp-block-library-css'  href='https://nypost.com/wp-includes/css/dist/block-library/style.min.css?ver=5.4.2' type='text/css' media='all' />
<style id='wp-block-library-inline-css' type='text/css'>
.has-text-align-justify{text-align:justify;}
</style>
<link rel='stylesheet' id='display-nypost-css'  href='https://nypost.com/wp-content/themes/nypost-2016/static/css/display-nypost.css?ver=fd7d0382e4e20e8d10b5' type='text/css' media='all' />
<link rel='stylesheet' id='social-logos-css'  href='https://nypost.com/wp-content/mu-plugins/jetpack-9.0/_inc/social-logos/social-logos.min.css?ver=9.0.2' type='text/css' media='all' />
<link rel='stylesheet' id='jetpack_css-css'  href='https://nypost.com/wp-content/mu-plugins/jetpack-9.0/css/jetpack.css?ver=9.0.2' type='text/css' media='all' />
<script type='text/javascript' defer src='https://us.tags.newscgp.com/prod/prebid/nyp/pb.js?ver=1.0.2'></script>
<script type='text/javascript' async src='//s.skimresources.com/js/93051X1547088.skimlinks.js?ver=1.0.0'></script>
<script type='text/javascript' defer src='https://nypost.com/wp-includes/js/jquery/jquery.js?ver=1.12.4-wp'></script>
<script type='text/javascript' defer src='https://nypost.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript' async src='https://widgets.outbrain.com/outbrain.js?ver=1.0.0'></script>
<script type='text/javascript' defer src='//nypost-com.videoplayerhub.com/galleryplayer.js?ver=1.0.0'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var sitewideNotice = {"active":"1","content":"<p>We've updated our <a href=\"\/terms\/\">Terms of Use<\/a> and by continuing, you are agreeing to comply with them.<\/p>\n","hash":"139a1e99f9aa1e03be244fe344f7b989"};
/* ]]> */
</script>
<script type='text/javascript' defer src='https://nypost.com/wp-content/themes/nypost-2016/static/js/sitewide-notice.bundle.js?ver=49aec54f3eea5c806bcf'></script>
<script type='text/javascript' async src='https://s3.amazonaws.com/maropost/uploads/755/websites/49/e2721d703295ebe3a1e1a2b09c5e9cdebadab115-v3.js?ver=1.0.0'></script>
<link rel='https://api.w.org/' href='https://nypost.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://nypost.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://nypost.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 5.4.2" />
<link rel='shortlink' href='https://wp.me/pb3Qpq-16TBw' />
<link rel="alternate" type="application/json+oembed" href="https://nypost.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fnypost.com%2F2020%2F10%2F08%2Ftrump-i-beat-covid-19-because-im-a-perfect-physical-specimen%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://nypost.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fnypost.com%2F2020%2F10%2F08%2Ftrump-i-beat-covid-19-because-im-a-perfect-physical-specimen%2F&#038;format=xml" />
			<meta property="fb:pages" content="134486075205" />
			<style type='text/css'>img#wpstats{display:none}</style>		<meta name='nypost-section' content='News' />
				<script>
		(function(d) {
			var e = d.createElement('script');
			e.src = d.location.protocol + '//tag.bounceexchange.com/2045/i.js';
			e.async = true;
			d.getElementsByTagName("head")[0].appendChild(e);
		}(document));
		</script>
				<script type="text/javascript" src="https://imasdk.googleapis.com/js/sdkloader/ima3.js" async></script>

					<script type="text/javascript" src="//native.sharethrough.com/assets/sfp.js" async></script>
					<script>
	window.Krux||((Krux=function(){Krux.q.push(arguments);}).q=[]);
	(function(){
	  function retrieve(n){
		var m, k='kx'+n;
		if (window.localStorage) {
		  return window.localStorage[k] || "";
	   } else if (navigator.cookieEnabled) {
		  m = document.cookie.match(k+'=([^;]*)');
		  return (m && unescape(m[1])) || "";
		} else {
		  return '';
		}
	  }
	  Krux.user = retrieve('user');
	  Krux.segments = retrieve('segs') && retrieve('segs').split(',') || [];
	})();
	</script>
		<script type='text/javascript'>
		var getCookie = function(name) {
			var regexp = new RegExp("(?:^" + name + "|; *" + name + ")=(.*?)(?:;|$)", "g"),
				result = regexp.exec(document.cookie);
			return (result === null) ? null : result[1];
		}
		var newsId = getCookie('_ncg_id_');
	</script>
			<script type='text/javascript'>
		var googletag = googletag || {};
		googletag.cmd = googletag.cmd || [];

		googletag.cmd.push(function () {
			googletag.pubads().disableInitialLoad();
		});

			var locdata = {};
			if ( 'undefined' !== typeof jQuery ) {
				jQuery.ajax({
					url: 'https://public-api.wordpress.com/geo/'
				}).done(function( data ) {
					locdata = data;
				});
			}
		</script>
				<!-- Start ADL's Ad Blocking Solution -->
		<script src="https://tagan.adlightning.com/nc-nypost/op.js"></script>
		<!-- End ADL's Ad Blocking Solution -->
		<script type='text/javascript'>
							var nypost_dfp_screen;
				if ( 'mobile' == nypost_screen ) {
					nypost_dfp_screen = 'mobile';
				} else if ( 'super desktop' == nypost_screen ) {
					nypost_dfp_screen = 'super desktop';
				} else if ( 'tablet landscape' == nypost_screen ) {
					nypost_dfp_screen = 'tablet landscape';
				} else if ( 'tablet portrait' == nypost_screen ) {
					nypost_dfp_screen = 'tablet portrait';
				} else {
					nypost_dfp_screen = 'desktop';
				}
			
			var dfp_ad_slots_desktop = [];
var dfp_ad_slots_mobile = [];
			(function() {
				var gads = document.createElement('script');
				gads.async = true;
				gads.type = 'text/javascript';
				var useSSL = 'https:' == document.location.protocol;
				gads.src = (useSSL ? 'https:' : 'http:') +
				'//www.googletagservices.com/tag/js/gpt.js';
				var node = document.getElementsByTagName('script')[0];
				node.parentNode.insertBefore(gads, node);
			})();
		</script>
		<script type='text/javascript'>
			/* Start Amazon Publisher Services code. */
			// Initialize the Library
			apstag.init({
				 pubID: '3105',
				 adServer: 'googletag',
				 videoAdServer: 'DFP',
				 bidTimeout: 1500,
				 deals: true
			});

			if ( nypost_dfp_screen == 'desktop' ) {
var apstagSlots = [{"slotID":"div-gpt-ad-rec_atf","slotName":"\/5850\/post.desktop\/rec_atf\/news\/stories","sizes":[[300,250],[300,251],[1,1],[300,600],[300,1050]]},{"slotID":"div-gpt-ad-billb_atf","slotName":"\/5850\/post.desktop\/billb_atf\/news\/stories","sizes":[[970,90],[970,250],[978,250],[1,1],[1,11]]},{"slotID":"div-gpt-ad-rec_btf","slotName":"\/5850\/post.desktop\/rec_btf\/news\/stories","sizes":[[300,250],[300,252],[1,1]]},{"slotID":"div-gpt-ad-rec_widget","slotName":"\/5850\/post.desktop\/rec_widget\/news\/stories","sizes":[[300,255],[300,250],[1,1]]},{"slotID":"div-gpt-ad-custom","slotName":"\/5850\/post.desktop\/custom\/news\/stories","sizes":[[1,12]]},{"slotID":"div-gpt-ad-skin","slotName":"\/5850\/post.desktop\/skin\/news\/stories","sizes":[[1,2],[1,1]]},{"slotID":"div-gpt-ad-inline","slotName":"\/5850\/post.desktop\/inline\/news\/stories","sizes":[[1,7],[1,1]]},{"slotID":"div-gpt-ad-overlay_fullpage","slotName":"\/5850\/post.desktop\/overlay_fullpage\/news\/stories","sizes":[[1,4],[1,1]]},{"slotID":"div-gpt-ad-native","slotName":"\/5850\/post.desktop\/native\/news\/stories","sizes":[[1,6],[1,1],"fluid"]}];
} else if ( nypost_dfp_screen == 'mobile' ) {
var apstagSlots = [{"slotID":"div-gpt-ad-bottom","slotName":"\/5850\/post.mobile\/bottom\/news\/stories","sizes":[[1,1],[320,50]]},{"slotID":"div-gpt-ad-overlay_fullpage","slotName":"\/5850\/post.mobile\/overlay_fullpage\/news\/stories","sizes":[[1,3],[1,1]]},{"slotID":"div-gpt-ad-native","slotName":"\/5850\/post.mobile\/native\/news\/stories","sizes":[[1,6],[1,1],"fluid"]},{"slotID":"div-gpt-ad-inline_1","slotName":"\/5850\/post.mobile\/inline_1\/news\/stories","sizes":[[300,250],[300,258],[1,7],[1,1],"fluid"]}];
}

			apstag.fetchBids({
				slots: apstagSlots,
				timeout: 1500
			}, function(bids) {
				googletag.cmd.push(function(){
					apstag.setDisplayBids();
				});
			});
			/* End Amazon Publisher Services code. */
		</script>
		<script type="text/javascript">
		var have_ad_slots = false;
		googletag.cmd.push(function() {
			if ( nypost_dfp_screen == 'desktop' ) {
dfp_ad_slots_desktop[0] = googletag.defineSlot('/5850/post.desktop/rec_atf/news/stories', [[300,250],[300,251],[1,1],[300,600],[300,1050]],'div-gpt-ad-rec_atf').addService(googletag.pubads());
dfp_ad_slots_desktop[1] = googletag.defineSlot('/5850/post.desktop/billb_atf/news/stories', [[970,90],[970,250],[978,250],[1,1],[1,11]],'div-gpt-ad-billb_atf').addService(googletag.pubads());
dfp_ad_slots_desktop[2] = googletag.defineSlot('/5850/post.desktop/rec_btf/news/stories', [[300,250],[300,252],[1,1]],'div-gpt-ad-rec_btf').addService(googletag.pubads()).setTargeting('strnativekey', "nQgEJ7XBF1bEVzEYkXEEADDF");
dfp_ad_slots_desktop[3] = googletag.defineSlot('/5850/post.desktop/rec_widget/news/stories', [[300,255],[300,250],[1,1]],'div-gpt-ad-rec_widget').addService(googletag.pubads());
dfp_ad_slots_desktop[4] = googletag.defineSlot('/5850/post.desktop/custom/news/stories', [[1,12]],'div-gpt-ad-custom').addService(googletag.pubads());
dfp_ad_slots_desktop[5] = googletag.defineSlot('/5850/post.desktop/skin/news/stories', [[1,2],[1,1]],'div-gpt-ad-skin').addService(googletag.pubads());
dfp_ad_slots_desktop[6] = googletag.defineSlot('/5850/post.desktop/inline/news/stories', [[1,7],[1,1]],'div-gpt-ad-inline').addService(googletag.pubads());
dfp_ad_slots_desktop[7] = googletag.defineSlot('/5850/post.desktop/overlay_fullpage/news/stories', [[1,4],[1,1]],'div-gpt-ad-overlay_fullpage').addService(googletag.pubads()).setTargeting('strnativekey', "rNjcTNSd2nkj1kupWXkcCyuN");
dfp_ad_slots_desktop[8] = googletag.defineSlot('/5850/post.desktop/native/news/stories', [[1,6],[1,1],"fluid"],'div-gpt-ad-native').addService(googletag.pubads()).setTargeting('strnativekey', "nQgEJ7XBF1bEVzEYkXEEADDF");
have_ad_slots = true;
}else if ( nypost_dfp_screen == 'mobile' ) {
dfp_ad_slots_mobile[0] = googletag.defineSlot('/5850/post.mobile/bottom/news/stories', [[1,1],[320,50]],'div-gpt-ad-bottom').addService(googletag.pubads());
dfp_ad_slots_mobile[1] = googletag.defineSlot('/5850/post.mobile/overlay_fullpage/news/stories', [[1,3],[1,1]],'div-gpt-ad-overlay_fullpage').addService(googletag.pubads());
dfp_ad_slots_mobile[2] = googletag.defineSlot('/5850/post.mobile/native/news/stories', [[1,6],[1,1],"fluid"],'div-gpt-ad-native').addService(googletag.pubads()).setTargeting('strnativekey', "nQgEJ7XBF1bEVzEYkXEEADDF");
dfp_ad_slots_mobile[3] = googletag.defineSlot('/5850/post.mobile/inline_1/news/stories', [[300,250],[300,258],[1,7],[1,1],"fluid"],'div-gpt-ad-inline_1').addService(googletag.pubads()).setTargeting('strnativekey', "e3tjDTQ5mcoSz7mZgd2jYx6A");
have_ad_slots = true;
}			if ( have_ad_slots ) {
				googletag.pubads().setTargeting('authors',["Mark Moore"]).setTargeting('page_type',"article").setTargeting('content',["2020-presidential-election","coronavirus","donald-trump"]).setTargeting('site',"nypost");
				var testadv = window.location.href.toString().match(/testadv=([\w\d]+)/);
				if ( testadv !== null ) {
					testadv = testadv[1].toString().replace(/testadv=/, "");
					googletag.pubads().setTargeting('testadv',[testadv]);
				}
				if ( typeof Krux != 'undefined' ) {
					googletag.pubads().setTargeting('ksg', Krux.segments);
					googletag.pubads().setTargeting('kuid', Krux.user);
				}
				if ( typeof pxSegmentIDs != 'undefined' && pxSegmentIDs != '' ) {
					googletag.pubads().setTargeting('psg', pxSegmentIDs);
				}
				if ( typeof newsId != 'undefined' ) {
					googletag.pubads().setTargeting('news_id', newsId);
				}

				if ( locdata.latitude && locdata.longitude ) {
					googletag.pubads().setTargeting( 'lat', locdata.latitude );
					googletag.pubads().setTargeting( 'lng', locdata.longitude );
				}

				var ref = window.location.href.toString().match(/utm_source=([\w\d]+)/);
				if ( ref && ref[1] ) {
					googletag.pubads().setTargeting( 'ref', [ ref[1] ] );
				} else if (document.referrer.toString().match(/nypost\.com/)) {
					googletag.pubads().setTargeting( 'ref', [ 'nypost' ] );
				} else if (document.referrer.toString().match(/pagesix\.com/)) {
					googletag.pubads().setTargeting( 'ref', [ 'pagesix' ] );
				} else if (document.referrer.toString().match(/decider\.com/)) {
					googletag.pubads().setTargeting( 'ref', [ 'decider' ] );
				}

								if ( window.videojs ) {
					if ( Object.keys( videojs.getPlayers() ).some( function ( key ) {
						return videojs.getPlayers()[key].options_.autoplay;
						})
					) {
						googletag.pubads().setTargeting( 'video', 'autoplay' );
					} else {
						googletag.pubads().setTargeting( 'video', 'no_autoplay' );
					}
				} else {
					googletag.pubads().setTargeting( 'video', 'none' );
				}
				
				googletag.pubads().enableSingleRequest();
				googletag.pubads().enableAsyncRendering();
								googletag.pubads().enableVideoAds();
				
				// Target Decider articles only for lazy loading ads.
									// Lazy loading is not fully compatible with the collapseEmptyDivs() method.
					// For other article entries that are not using lazy loading enable the collapseEmptyDivs() method.
					// see: https://support.google.com/admanager/answer/4578089#lazyloading
					googletag.pubads().collapseEmptyDivs(true);
				
				// returns a random integer from 0 to 9
				var randomUserGroup = Math.floor(Math.random() * 10).toString();
				googletag.pubads().setTargeting('nckey_userGroup', [randomUserGroup]);

				googletag.enableServices();

				googletag.pubads().addEventListener( 'slotRenderEnded', function (e) {
					var theSlot = document.getElementById(e.slot.getSlotElementId()) ;
					if (theSlot) {
						theSlot.setAttribute( 'data-nyp-ad-empty', e.isEmpty );
					}

					if ('div-gpt-ad-skin' === e.slot.getSlotElementId() && false === e.isEmpty) {
						var contentWrapper = document.getElementById('content-wrapper');
						if (null !== contentWrapper) {
							contentWrapper.classList.add('background-ad-skin');
						}
						var recirc = document.querySelector('.js-recirc');
						if (null !== recirc) {
							recirc.classList.add('hide');
						}
						var body = document.body;
						if (null !== body) {
							body.classList.remove('header-recirc-bar-enabled');
						}
					}

				} );
			}
					});
			// Store defined ad slot ids in an array for use in checking whether to display the ad slot.
			var definedSlots = [];
			if ('undefined' !== typeof googletag) {
				googletag.cmd.push(function() {
					var slots = googletag.pubads().getSlots();
					slots.forEach(function(e) {
						definedSlots.push(e.getSlotElementId());
					});
				});
			}
		</script>
				<script type="text/javascript">
			if ( 'undefined' !== typeof googletag ) {
				document.addEventListener( 'DOMContentLoaded', function() {
					const slots = ['inline_1', 'inline_2', 'inline_3', 'inline_4'];
					slots.forEach( function( slot ) {
						if ( document.getElementById( 'div-gpt-ad-' + slot ) ) {
							googletag.cmd.push( function() {
								googletag.display( 'div-gpt-ad-' + slot );
							} );
						}
					} );
				} );
			}
		</script>
						<script>
					window.optimizely = window.optimizely || [];
					window.optimizely.push(['customTag', {
						'page_type': "article",
						'section': "news",
					}]);
				</script>
						<script type="text/javascript">
			window.dataLayer = window.dataLayer || [];
			var usprivacy = '1---';
			if (
				'undefined' !== typeof window.usPrivacyCookie       // The usPrivacyCookie object is defined.
				&& 'function' === typeof window.usPrivacyCookie.get // usPrivacyCookie.get is a function.
				&& 'undefined' !== window.usPrivacyCookie.get()     // The value is defined.
				&& null !== window.usPrivacyCookie.get()            // The value is not null.
			) {
				usprivacy = window.usPrivacyCookie.get();
			}
			dataLayer.push({'usprivacy':usprivacy} );
		</script>
					<script type="application/ld+json">
			{"@context":"http:\/\/schema.org","publisher":{"@type":"Organization","name":"New York Post","sameAs":"https:\/\/nypost.com","logo":{"@type":"ImageObject","url":"https:\/\/nypost.com\/wp-content\/themes\/nypost-2016\/static\/images\/logo-nypost.png","height":60,"width":404}},"headline":"Trump says he beat COVID-19 because he's a 'perfect physical specimen'","url":"https:\/\/nypost.com\/2020\/10\/08\/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen\/","thumbnailUrl":"https:\/\/nypost.com\/wp-content\/uploads\/sites\/2\/2020\/10\/trump-covid-specimen.jpg?quality=90&strip=all","image":{"@type":"ImageObject","url":"https:\/\/nypost.com\/wp-content\/uploads\/sites\/2\/2020\/10\/trump-covid-specimen.jpg?quality=90&strip=all&w=1200","width":1200,"height":800},"mainEntityOfPage":"https:\/\/nypost.com\/2020\/10\/08\/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen\/","@type":"NewsArticle","dateCreated":"2020-10-08T13:23:00Z","datePublished":"2020-10-08T13:23:00Z","dateModified":"2020-10-08T15:29:46Z","articleSection":"news","creator":[{"name":"Mark Moore","@type":"Person"}],"author":[{"name":"Mark Moore","@type":"Person"}],"keywords":["2020 presidential election","Coronavirus","donald trump","\/article"],"video":{"@context":"http:\/\/schema.org","@type":"VideoObject","name":"Trump on Regeneron coronavirus treatment: 'I view it as a cure'","description":"President Trump says Eli Lilly and Regeneron will get approved for emergency authorization of their coronavirus treatments.","uploadDate":"2020-10-08T13:07:48Z","thumbnailUrl":"https:\/\/cf-images.us-east-1.prod.boltdns.net\/v1\/static\/4137224153001\/8666cee1-856d-4d23-a49f-3a7cfce1cc9e\/ae817073-ad5e-46a2-a1e9-add6e9241303\/160x90\/match\/image.jpg","embedUrl":"https:\/\/players.brightcove.net\/4137224153001\/6aIMRO3kiI_default\/index.html?videoId=6198762040001"}}			</script>
					<meta name='parsely-metadata' content='{"post_id":"nypost-16420050"}' />
					<meta name="keywords" content="News,2020 presidential election,Coronavirus,donald trump">
		<meta property="article:opinion" content="false"/>
		<meta property="article:content_tier" content="free"/>
		<!-- Unruly Tag -->
	<script>
		var unruly = window.unruly || {};
		unruly.native = unruly.native || {};
		unruly.native.siteId = 622640;
	</script>
	<script async src="//video.unrulymedia.com/native/native-loader.js"></script>
	<!-- End Unruly Tag -->
	<meta name="google-site-verification" content="0ChYYJ_QsKnyimSC27PNRqpEJ8sstO08-2yQ81t5yfU" />
<meta name="google-site-verification" content="Y35rxQGMDF8RBK0PXe_b3H0oZ6qw1a5l3oI4l_YXIcE" />
<meta name="google-site-verification" content="eyT36MjcFGn_qzUdS9VyWVb89Lq2f8-ItpI8WRksiyw" />
<meta name="msvalidate.01" content="8188997BC82071CE07AB711B5675CE54" />
				<meta property="fb:pages" content="134486075205" />
								<meta property="fb:pages" content="225343690812937" />
					<link rel="amphtml" href="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/amp/">
<!-- Jetpack Open Graph Tags -->
<meta property="og:type" content="article" />
<meta property="og:title" content="Trump says he beat COVID-19 because he&#8217;s a &#8216;perfect physical specimen&#8217;" />
<meta property="og:url" content="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/" />
<meta property="og:description" content="President Trump said he&#8217;s a &#8220;perfect physical specimen&#8221; and feels better than ever after battling the coronavirus. &#8220;I&#8217;m back because I am a perfect physical specimen a…" />
<meta property="article:published_time" content="2020-10-08T13:23:00+00:00" />
<meta property="article:modified_time" content="2020-10-08T15:29:46+00:00" />
<meta property="og:site_name" content="New York Post" />
<meta property="og:image:width" content="1200" />
<meta property="og:image:height" content="800" />
<meta property="og:locale" content="en_US" />
<meta name="twitter:creator" content="@nypost" />
<meta name="twitter:site" content="@nypost" />
<meta name="twitter:text:title" content="Trump says he beat COVID-19 because he&#8217;s a &#8216;perfect physical specimen&#8217;" />
<meta name="twitter:image" content="https://nypost.com/wp-content/uploads/sites/2/2020/10/trump-covid-specimen.jpg?quality=90&amp;strip=all&amp;w=680&amp;h=356&amp;crop=1" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="Trump says he beat COVID-19 because he&#039;s a &#039;perfect physical specimen&#039;" />
<meta name="twitter:description" content="President Trump said he&#8217;s a &#8220;perfect physical specimen&#8221; and feels better than ever after battling the coronavirus.
&#8220;I&#8217;m back because I am a perfect physical specimen and" />
<meta name="twitter:image:src" content="https://nypost.com/wp-content/uploads/sites/2/2020/10/trump-covid-specimen.jpg?quality=90&amp;strip=all&amp;w=680&amp;h=356&amp;crop=1" />
<meta property="og:image" content="https://nypost.com/wp-content/uploads/sites/2/2020/10/trump-covid-specimen.jpg?quality=90&amp;strip=all&amp;w=1200" />
<meta property="og:image:secure_url" content="https://i1.wp.com/nypost.com/wp-content/uploads/sites/2/2020/10/trump-covid-specimen.jpg?quality=90&#038;strip=all&#038;ssl=1" />
<meta property="article:publisher" content="https://www.facebook.com/nypost" />

<!-- End Jetpack Open Graph Tags -->
</head>
<body class="article-template-default single single-article postid-16420050 wp-embed-responsive nypost  nypost-geo-us header-recirc-bar-enabled">
			<a class="skip-link" href="#content-wrapper">Skip to main content</a>
<svg id="nypost-svg">
	<defs>
		<g id="pagesix-logo"><path d="M153.098 28.262v2.745c0 1.232.217 2.147.65 2.746.432.6 1.014.9 1.746.9.133.032.258.04.375.022.114-.017.24-.04.373-.073.966-.2 1.53-.657 1.698-1.374.167-.715.25-1.572.25-2.57 0-1.365-.716-2.39-2.147-3.07-1.433-.684-2.996-1.24-4.694-1.674-.366-.1-.732-.19-1.1-.273-.366-.082-.73-.175-1.1-.274-.6-.166-1.165-.324-1.696-.474-.532-.15-1.016-.325-1.447-.524-2.896-1.165-4.73-2.797-5.492-4.894-.767-2.1-1.166-4.294-1.2-6.592v-.175-.125c0-3.96 1.3-7.032 3.897-9.213 2.597-2.18 6.54-3.17 11.834-2.972 3.362 0 6.274.425 8.738 1.272 2.463.85 4.677 1.856 6.64 3.02v10.19h-12.582v-2.347c0-1.1-.24-1.88-.724-2.347-.483-.467-1.007-.7-1.573-.7h-.147c-.533 0-1.023.185-1.474.55-.448.367-.725.816-.823 1.35-.033.133-.05.258-.05.373v.374c0 1.332.556 2.313 1.673 2.945 1.113.632 2.338 1.115 3.67 1.447.53.134 1.057.242 1.572.325s.99.175 1.424.273c.132.033.265.06.397.075.133.017.25.042.35.074 3.63.866 6.21 2.43 7.74 4.692 1.53 2.266 2.296 4.812 2.296 7.64 0 1-.084 2.016-.25 3.047-.167 1.032-.416 2.08-.75 3.146-.897 3.06-2.504 5.125-4.817 6.19-2.312 1.065-4.77 1.747-7.364 2.047-.732.1-1.456.175-2.173.226-.716.05-1.423.092-2.122.125-.732 0-1.756-.083-3.07-.25s-2.688-.416-4.12-.75c-1.664-.432-3.245-.98-4.743-1.646-1.498-.665-2.514-1.48-3.046-2.446V28.262h13.378zM188.25 12.134v20.473c0 1 .116 1.84.35 2.52.232.685.65 1.025 1.248 1.025v7.438h-14.93V36.5c.632-.266.99-.64 1.073-1.123.084-.48.11-1.072.076-1.77v-.477-10.36c0-.8-.067-1.38-.2-1.748-.134-.366-.333-.683-.6-.948-.032-.066-.083-.133-.148-.2-.067-.065-.134-.133-.2-.2v-7.54h13.332zm-12.982-7.09c0-1.564.6-2.755 1.8-3.57C178.263.66 179.58.184 181.01.05c.166-.03.324-.05.475-.05h.476c1.564 0 3.004.408 4.318 1.225 1.314.814 1.974 2.104 1.974 3.868 0 1.767-.674 3.063-2.022 3.896-1.348.83-2.903 1.247-4.668 1.247-1.73 0-3.213-.516-4.443-1.548-1.233-1.032-1.85-2.23-1.85-3.598v-.05h-.002zM204.896 12.134v2.895c0 .698.082 1.423.25 2.172.166.748.615 1.572 1.348 2.47.865-.896 1.406-1.722 1.623-2.47.216-.75.324-1.474.324-2.173v-.275-2.621h12.185v7.09l-.624.524-.673.574c-.233.2-.458.408-.675.624-.217.217-.407.442-.574.675-.2.2-.374.4-.523.6-.15.2-.29.4-.425.6l-3.944 4.645 4.295 5.893c.333.467.632.874.898 1.224.267.35.532.674.8.975.23.232.465.433.698.6.23.167.48.3.75.398v7.04h-13.73v-2.347c0-.766-.06-1.473-.177-2.122-.118-.648-.358-1.29-.725-1.923-.2-.3-.417-.6-.65-.898s-.497-.6-.798-.897c-.232.267-.433.522-.6.772-.168.25-.316.49-.45.726-.365.632-.615 1.307-.748 2.02-.134.72-.2 1.643-.2 2.772v1.896h-11.385V36.5c.565-.166 1.183-.624 1.85-1.373.663-.75 1.478-1.705 2.444-2.87l3.545-4.794-2.747-3.545c-.966-1.33-1.863-2.32-2.695-2.972-.832-.648-1.63-1.073-2.396-1.273v-7.54h13.73zM20.073 1.57c.432.034.874.068 1.323.1.45.035.89.085 1.323.15 2.795.4 5.35 1.5 7.664 3.296 2.313 1.798 3.47 4.562 3.47 8.29v7.04c0 3.96-1.082 6.924-3.246 8.888s-5.41 2.945-9.737 2.945l-5.54-.05v1.048c-.034.866-.01 1.557.074 2.072.083.517.457.94 1.124 1.272v7.79H0v-7.84c.865-.3 1.356-.808 1.473-1.523.116-.717.158-1.49.125-2.322v-.3-.3-.125-17.849-.375-.425c.033-.8-.01-1.498-.125-2.1C1.356 10.66.865 10.194 0 9.86V1.57h20.073zm-4.744 9.44v12.184c.23.065.45.107.648.124.2.018.382.024.55.024 1.064 0 1.92-.273 2.57-.823s.974-1.49.974-2.822v-4.793c0-1.53-.35-2.555-1.048-3.07-.7-.517-1.93-.773-3.695-.773v-.053zM40.694 13.88c1.498-.55 3.012-.957 4.544-1.224 1-.166 1.99-.282 2.97-.35.983-.066 1.94-.1 2.872-.1.4 0 .815.008 1.25.023.43.017.864.058 1.297.124 2.596.3 4.976 1.166 7.14 2.597 2.164 1.433 3.246 3.663 3.246 6.69v12.533c0 .866.116 1.48.35 1.85.232.366.5.682.8.948.1.066.182.134.25.2.065.066.132.134.2.2v7.04H52.627V42.06c-.1.1-.2.175-.3.225s-.2.108-.3.175c-.167.135-.35.268-.55.4-.2.133-.4.282-.6.448-.698.467-1.547.897-2.545 1.3-1 .397-2.314.598-3.944.598-2.365 0-4.48-.683-6.343-2.047-1.864-1.364-2.896-3.81-3.096-7.34 0-2.196.633-3.978 1.898-5.342 1.265-1.365 2.646-2.363 4.145-2.996.366-.166.74-.31 1.124-.425.382-.116.74-.207 1.073-.274l8.638-2.796v-.375-.424c.033-.832-.008-1.58-.125-2.247-.117-.665-.59-1.08-1.423-1.248-.033 0-.075-.008-.125-.024-.05-.017-.092-.024-.125-.024h-.25c-.8 0-1.373.417-1.723 1.25s-.524 1.88-.524 3.145L36.5 23.99V16.1c1.298-.93 2.696-1.67 4.194-2.22zM51.83 34.976V31.43c0 .033-.243.1-.725.2-.483.1-1.024.283-1.623.55-.6.232-1.14.55-1.623.948-.484.4-.725.898-.725 1.497 0 .733.15 1.25.45 1.548.3.3.665.468 1.098.5.133 0 .266-.008.4-.024.132-.02.28-.06.448-.126.334-.1.675-.24 1.025-.424.35-.184.64-.392.874-.624.065-.066.14-.143.224-.226s.142-.158.175-.226v-.048zM66.857 36.174V23.592c0-3.13.532-5.74 1.598-7.84 1.065-2.097 3.562-3.146 7.49-3.146.6 0 1.206.01 1.822.023.616.018 1.256.107 1.922.274.63.133 1.255.357 1.872.674.616.316 1.223.773 1.822 1.373v-1.996h13.382v7.09c-.6.435-1.016.94-1.248 1.523-.233.583-.35 1.272-.35 2.072v21.97c0 5.092-1.124 8.28-3.37 9.56-2.248 1.28-5.436 2.022-9.563 2.224-.832.065-1.73.065-2.696 0-.967-.067-1.948-.185-2.947-.35-1.83-.334-3.587-.825-5.268-1.474-1.68-.65-2.904-1.357-3.67-2.122v-7.49H79.09c0 1 .083 1.84.25 2.52.167.683.732 1.023 1.698 1.023 1.23 0 1.94-.282 2.122-.848.183-.566.258-1.332.225-2.297v-.35-3.145c-.033.067-.067.108-.1.125-.034.017-.067.042-.1.074-.766.53-1.73 1.022-2.896 1.473-1.167.45-2.498.674-3.996.674-3.13 0-5.484-.814-7.065-2.445-1.582-1.632-2.373-3.812-2.373-6.54v-.048zm16.527-.4v-14.18c-.333-.132-.666-.24-1-.323-.332-.082-.632-.124-.897-.124-.7 0-1.273.26-1.723.773-.45.517-.674 1.34-.674 2.472v7.04c0 1.665.15 2.88.45 3.646.3.766.88 1.148 1.747 1.148.266 0 .574-.033.923-.102.35-.065.74-.166 1.173-.3v-.05zM98.812 34.576V22.792c0-4.294 1.23-7.13 3.695-8.513 2.463-1.382 5.958-2.073 10.486-2.073 3.562 0 6.75.624 9.562 1.872s4.22 3.637 4.22 7.164v9.787h-16.128v3.147c0 1.166.208 1.997.624 2.497.417.5.876.767 1.374.8h.149c.432-.033.84-.24 1.225-.624.38-.384.572-.856.572-1.424v-.1-.1c-.034-.034-.05-.067-.05-.102v-2.497h12.232v8.24c-.133.166-.282.315-.448.448-.167.134-.35.267-.55.398-1.133.732-2.696 1.415-4.693 2.048s-4.094 1.065-6.29 1.3c-.435.065-.867.106-1.3.125-.432.016-.865.023-1.297.023-4.328-.2-7.64-1.08-9.938-2.646-2.297-1.564-3.445-4.21-3.445-7.94v-.046zm11.834-10.585h4.693c0-1.364-.15-2.42-.45-3.17-.3-.75-.932-1.124-1.896-1.124-.966 0-1.6.375-1.897 1.124s-.45 1.822-.45 3.22v-.05z" fill="currentColor"/></g>

		<symbol id="pagesix-style-logo__pagesix">
			<path d="M41.542 33.774c-.502-.042-1.004-.125-1.506-.166-.95-.17-1.877-.449-2.762-.832a5.674 5.674 0 0 1-1.924-1.18v-4.158h5.94c0 .458.042.915.084 1.372.084.374.377.54.879.54.627 0 1.004-.166 1.087-.457a2.67 2.67 0 0 0 .084-1.289v-1.87c0 .041 0 .041-.042.041a.042.042 0 0 0-.042.042c-.478.317-.982.595-1.506.831a5.999 5.999 0 0 1-2.091.374 4.921 4.921 0 0 1-3.724-1.33 5.795 5.795 0 0 1-1.13-3.783v-6.843a9.622 9.622 0 0 1 .838-4.324c.585-1.164 1.882-1.704 3.932-1.704h.92c.342-.006.683.05 1.004.166.348.088.685.214 1.004.374.354.205.666.473.92.79V9.246h6.987v3.825a1.772 1.772 0 0 0-.627.831 3.72 3.72 0 0 0-.168 1.164v12.181c0 2.827-.585 4.615-1.757 5.321a10.066 10.066 0 0 1-5.02 1.206 3.62 3.62 0 0 1-.67.042c-.208 0-.46-.042-.71-.042zm.083-19.64c-.245.417-.375.89-.376 1.373v3.866a6.488 6.488 0 0 0 .209 1.996.89.89 0 0 0 .878.623c.155.009.31-.005.46-.041.235.009.468-.049.67-.167v-7.84c-.167-.042-.377-.125-.502-.167a.875.875 0 0 0-.46-.041.956.956 0 0 0-.879.415v-.016zm-21.795 11.7c-1.004-.79-1.507-2.12-1.632-4.033a4.046 4.046 0 0 1 1.004-2.952 5.93 5.93 0 0 1 2.134-1.663c.185-.094.382-.164.585-.208.21-.041.377-.124.586-.166l4.476-1.538v-.457c.008-.403-.006-.805-.042-1.206a.722.722 0 0 0-.71-.665h-.21a.857.857 0 0 0-.878.665 5.787 5.787 0 0 0-.252 1.705h-5.773V10.95a6.957 6.957 0 0 1 2.134-1.288c.755-.304 1.54-.527 2.343-.666a6.536 6.536 0 0 1 1.548-.166c.5-.055 1.003-.07 1.506-.041h.627c.21 0 .46.041.67.041a8.23 8.23 0 0 1 3.723 1.455 4.176 4.176 0 0 1 1.673 3.7v6.901c-.026.341.03.684.167.998.092.2.237.373.419.499.042.041.083.041.083.125l.084.124V26.5H27.36v-1.29c-.042.042-.084.126-.168.126-.083 0-.083.041-.167.124-.084.083-.167.167-.251.208-.084.042-.21.166-.293.208-.399.291-.835.529-1.297.707a4.943 4.943 0 0 1-2.05.332 4.944 4.944 0 0 1-3.304-1.08zm6.819-6.32a6.667 6.667 0 0 0-.837.291 3.422 3.422 0 0 0-.837.5 1.045 1.045 0 0 0-.376.83c-.036.294.038.59.209.832a.88.88 0 0 0 .586.291h.209c.042 0 .167-.041.209-.041.177-.044.346-.114.502-.208l.46-.333.084-.125a.315.315 0 0 0 .083-.166v-1.954a.492.492 0 0 1-.292.083zm31.961 7.4a9.974 9.974 0 0 1-5.187-1.455c-1.255-.79-1.883-2.203-1.883-4.323v-6.527c0-2.37.628-3.95 1.924-4.698a10.875 10.875 0 0 1 5.48-1.18c1.731-.03 3.446.325 5.02 1.039 1.465.665 2.176 1.995 2.176 3.99v5.364h-8.408v1.704c-.033.476.068.95.292 1.372.16.247.42.414.712.457h.083a.796.796 0 0 0 .628-.332c.2-.214.305-.499.293-.79v-.125l-.042-.041v-1.372h6.359v4.531a.505.505 0 0 1-.21.208c-.083.042-.167.166-.25.208a8.837 8.837 0 0 1-2.469 1.122c-1.071.359-2.18.596-3.305.707-.218.055-.445.07-.67.042l-.543.1zm-.627-13.428a4.32 4.32 0 0 0-.251 1.788H60.2a5.236 5.236 0 0 0-.21-1.788 1.154 1.154 0 0 0-1.505-.499 1.16 1.16 0 0 0-.502.5zM0 26.665V22.34c.412-.088.727-.418.795-.831.077-.425.091-.86.042-1.289V9.371C.844 8.982.83 8.594.795 8.207A1.088 1.088 0 0 0 0 7.417V2.802h10.5c.21 0 .46.042.67.042.229 0 .455.043.67.124a8.072 8.072 0 0 1 4.015 1.83 5.644 5.644 0 0 1 1.841 4.614v3.866c0 2.204-.586 3.825-1.673 4.948-1.088 1.122-2.803 1.621-5.062 1.621H8.074v.624c-.007.388.007.777.042 1.164.083.308.296.566.586.706v4.324H0zm7.99-11.848a.37.37 0 0 0 .293.041h.251c.489.021.967-.142 1.339-.457.386-.415.57-.977.502-1.538v-2.661a2.07 2.07 0 0 0-.502-1.704 3.868 3.868 0 0 0-1.924-.458l.041 6.777zm71.077 11.35c-.67-.126-1.422-.209-2.133-.375a24.76 24.76 0 0 1-2.469-.873 3.04 3.04 0 0 1-1.548-1.33v-6.07h6.987v1.663c-.029.515.072 1.03.293 1.496a.984.984 0 0 0 .878.5h.21a.379.379 0 0 0 .209-.042c.431-.052.783-.368.878-.79.092-.48.12-.969.084-1.455a1.833 1.833 0 0 0-1.088-1.705 15.957 15.957 0 0 0-2.468-.956c-.21-.041-.377-.125-.586-.166-.21-.042-.376-.125-.586-.166-.292-.125-.627-.167-.878-.291-.251-.125-.502-.167-.711-.291a4.982 4.982 0 0 1-2.887-2.703 10.851 10.851 0 0 1-.627-3.658v-.166a6.534 6.534 0 0 1 2.008-5.114c1.338-1.206 3.388-1.788 6.15-1.663 1.55-.036 3.094.203 4.56.707 1.2.427 2.351.985 3.43 1.663v5.695h-6.568V8.79a1.809 1.809 0 0 0-.377-1.29 1.057 1.057 0 0 0-.837-.373h-.083a1.432 1.432 0 0 0-.795.29c-.193.2-.337.442-.418.707v.458a1.731 1.731 0 0 0 .878 1.621 6.478 6.478 0 0 0 1.925.79c.25.041.585.125.836.166.251.042.502.125.711.166.042 0 .168.042.21.042a.252.252 0 0 1 .167.042 6.278 6.278 0 0 1 4.016 2.619 7.8 7.8 0 0 1 1.213 4.199c0 .54-.042 1.122-.083 1.663a12.446 12.446 0 0 1-.377 1.704 5.174 5.174 0 0 1-2.51 3.45 12.42 12.42 0 0 1-3.849 1.123c-.374.062-.75.104-1.13.125-.376 0-.71.041-1.087.041-.293-.041-.879-.083-1.548-.166zm20.524-.043v-3.949c.386-.155.71-.433.92-.79.465-.504.884-1.046 1.255-1.621l1.841-2.66-1.422-1.955a10.71 10.71 0 0 0-1.423-1.663 3.155 3.155 0 0 0-1.255-.706V8.622h7.196v1.622c.006.403.033.805.084 1.205.137.494.364.96.669 1.372a3.58 3.58 0 0 0 .837-1.372c.096-.395.152-.799.167-1.205V8.622h6.359v3.95c-.084.124-.21.166-.293.29-.115.123-.24.234-.377.333a3.035 3.035 0 0 1-.376.333c-.11.114-.209.24-.293.374a1.002 1.002 0 0 0-.25.333.905.905 0 0 0-.21.332l-2.05 2.536 2.26 3.284c.128.238.282.46.46.666.167.166.25.374.418.54.116.121.242.232.376.333.116.085.243.154.377.207V26h-7.112V24.71c-.007-.39-.035-.778-.084-1.164a4.405 4.405 0 0 0-.376-1.04l-.293-.498a4.41 4.41 0 0 0-.419-.5c-.083.167-.209.292-.292.458a1.68 1.68 0 0 0-.21.374c-.211.34-.34.725-.376 1.123a6.334 6.334 0 0 0-.084 1.538v1.04h-6.024v.082zm-8.534-.041v-3.95c.274-.117.486-.343.586-.623.055-.33.07-.665.041-.998v-6.028a7.376 7.376 0 0 0-.083-.956.996.996 0 0 0-.293-.499c0-.042-.042-.042-.042-.125l-.084-.124V8.622h6.945v11.333c-.006.463.05.924.167 1.372.027.32.306.56.628.54v4.116l-7.865.1zm1.255-19.29a2.617 2.617 0 0 1-1.004-2.037 2.293 2.293 0 0 1 .92-1.996 4.006 4.006 0 0 1 2.05-.79h.502a3.988 3.988 0 0 1 2.26.666c.703.49 1.1 1.309 1.045 2.162a2.352 2.352 0 0 1-1.046 2.161 4.33 4.33 0 0 1-2.468.665 3.237 3.237 0 0 1-2.26-.831z" fill="currentColor"/>
		</symbol>
		<symbol id="pagesix-style-logo__style">
			<path d="M170.747 0h-6.944v.915h2.3v24.943h-2.3v.915h9.245v-.915h-2.3V0zm-11.4 19.697l.302.761 3.012-7.861h1.853v-.873h-5.104v.956h1.61l-1.673 7.017zm-2.572-7.1v-.873h-12.718V7.267h-4.35V23.48a3.8 3.8 0 0 0 .836 2.52c.866 1.018 2.635 1.205 3.506 1.247 2.334.12 3.526-.956 3.89-1.418a6.234 6.234 0 0 0 .992-2.498l-.891-.22a5.646 5.646 0 0 1-.891 2.211 1.928 1.928 0 0 1-1.812.902c-.837-.075-1.322-.582-1.322-2.565V12.68h5.924l5.982 15.175-1.351 3.58a581.27 581.27 0 0 1-.54 1.371 11.647 11.647 0 0 1-1.184 2.042c-.293.469-.79.776-1.343.831a.573.573 0 0 1-.451-.715c.188-.832.836-1.863.075-2.736-.761-.873-2.824-.831-3.493.217a2.613 2.613 0 0 0 .109 2.727c.25.382 1.154 1.422 3.079 1.422 2.848 0 3.71-2.82 3.802-3.081.507-1.201.946-2.286 1.38-3.409.436-1.122.904-2.357 1.444-3.82l1.255-3.326-4.104-10.352 2.176-.008zm-26.277-1.28c-1.455-.508-3.045-1.011-3.857-1.502-1.48-.893-2.196-1.825-2.196-2.91a3.823 3.823 0 0 1 2.347-3.646c2.669-1.16 4.936-.287 5.769.54a7.479 7.479 0 0 1 1.84 2.807c.126.374.837 2.428.837 2.428h.778V2.328h-.89s0 .67-.503.703c-.707.045-1.794-.636-3.183-.973a8.502 8.502 0 0 0-4.184 0 7.782 7.782 0 0 0-5.23 4.573c-.342.877-.836 3.987.687 6.115.97 1.356 2.669 2.823 8.555 4.411 1.05.283 3.477 1.43 3.221 4.286-.087 1.002-.95 4.411-5.287 4.411-5.548 0-6.619-5.2-7.146-7.317h-.836v7.779h.886s0-.882.624-.832c.778.075 1.715.545 2.51.798 1.221.362 2.49.537 3.765.52 2.2 0 5.02-.544 7.15-3.272a8.276 8.276 0 0 0 1.597-6.173 6.232 6.232 0 0 0-2.51-3.95c-1.652-1.097-3.945-1.812-4.744-2.09zm53.82 13.934c-.813.781-1.91 1.201-3.041 1.165a3.32 3.32 0 0 1-2.598-1.019c-.736-.732-1.075-2.02-1.255-3.405-.104-.831-.113-3.741-.113-3.741h9.643a7.084 7.084 0 0 0-.74-3.576 6.423 6.423 0 0 0-3.146-2.877c-2.092-.914-4.51-.415-5.64.088-2.422 1.085-3.723 3.01-4.463 5.097-.887 2.494-.067 5.496.861 6.85a8.077 8.077 0 0 0 3.142 2.682c1.302.513 2.691.771 4.092.761a5.808 5.808 0 0 0 3.673-1.285 6.277 6.277 0 0 0 1.97-3.118v-.05h-.933a4.746 4.746 0 0 1-1.452 2.428zm-6.522-11.3c.46-1.383 1.385-1.758 2.289-1.758 1.188 0 1.95.707 1.95 3.106 0 .802.041 2.079.041 2.079h-4.748a10.37 10.37 0 0 1 .468-3.426z" fill="currentColor"/>
		</symbol>

		<g id="decider-logo">
		<path fill="#010101" d="M76,10.5h5.9V7.1H76v-3h8.1V0.3H71.6v2.6c1,1.4,1.7,3.3,1.8,5.3c0.2,2.4-0.4,4.8-1.6,6.5
	c-0.1,0.1-0.2,0.2-0.2,0.3v2.4h12.6v-3.8H76V10.5L76,10.5z M49,0.6v16.9h4.1V0.4h-4C49,0.3,49,0.5,49,0.6 M22.2,10.5h5.9V7.1h-5.9
	v-3h8.1V0.3H17.8v17.1h12.6v-3.8h-8.1L22.2,10.5L22.2,10.5z M8.1,0.3H0v17.2h8c3.1,0,5.3-1.3,6.8-3.5c2.2-3.1,1.7-8.5-0.7-11.1
	C12.8,1.4,11.2,0.3,8.1,0.3 M7.8,13.8H4.3c0-2.4,0-5,0-7.4H1.9V4.2h5.9C13.6,4.1,14,13.8,7.8,13.8 M63.4,0.3h-8.1v17.2h8
	c3.1,0,5.3-1.3,6.8-3.5c2.2-3.1,1.7-8.5-0.7-11.1C68,1.4,66.6,0.3,63.4,0.3 M63,13.8h-3.5c0-2.4,0-5,0-7.4h-2.4V4.2H63
	C68.9,4.1,69.3,13.8,63,13.8 M95.9,11c2.9-0.9,4.1-4.9,2.5-7.8c-1.9-3.5-4.2-2.9-12.6-2.9v17.3h4v-5.8h1.7l3.4,5.6h5L95.9,11
	L95.9,11z M94.6,7.7c-0.4,0.7-1.3,0.8-2.4,0.8h-2.3V4.1h2.3c1.1,0.1,2.1,0.2,2.4,1C95,5.6,95.2,6.7,94.6,7.7 M37.1,4.3
	c2.4-1.2,5.5-0.1,6.4,1.8C44.7,5.7,46,5.3,47.4,5c-1.1-3.3-4.4-5.4-8.7-5.1c-4.4,0.3-7.8,3.7-8.1,8c0,0.2,0,0.5,0,0.7l0,0v0.1
	c0,0.1,0,0.1,0,0.1l0,0c0,0.2,0,0.5,0,0.7c0.3,4.3,3.7,7.7,8.1,8c4.3,0.3,7.6-1.8,8.7-5.1c-1.4-0.3-2.6-0.6-3.9-1.1
	c-0.9,1.9-4,3-6.4,1.8c-1.6-0.8-2.3-2.5-2.4-4.3l0,0V8.7V8.6l0,0C34.8,6.9,35.5,5.1,37.1,4.3"/>
		</g>
		<g id="newscorp-logo">
			<path d="M0 77.875c.672-2.055 1.595-3.993 2.686-5.858 3.457-5.914 6.882-11.846 10.358-17.75 5.272-8.95 10.06-18.154 14.45-27.566 1.388-2.974 2.288-6.08 2.37-9.385.012-.407.23-.49.54-.574 2.123-.572 4.248-.442 6.35.065 3.245.78 4.605 2.617 4.814 6.28.317 5.537.657 11.075 1.002 16.61.155 2.48.188 4.98.562 7.428.567 3.716 1.323 7.407 2.116 11.083.46 2.126 1.148 4.203 1.737 6.3.06.22.152.428.284.795.576-1.25 1.08-2.353 1.59-3.45 7.502-16.137 15.745-31.88 25.103-47.025C76 11.53 78.045 8.24 80.148 4.988c.91-1.406 2-2.707 3.423-3.623C84.44.807 85.434.45 86.37 0h1.932c.742.317 1.52.568 2.218.964 1.704.968 2.457 2.883 1.92 4.793-.52 1.852-1.597 3.414-2.78 4.88-1.575 1.95-3.287 3.79-4.863 5.74-3.224 3.986-6.052 8.256-8.774 12.595-6.594 10.51-12.496 21.406-17.84 32.598-2.525 5.285-4.825 10.677-7.22 16.023-.704 1.572-1.583 3-3.41 3.38-.8.167-1.67.15-2.484.044-.86-.115-1.696-.43-2.537-.674-1.867-.543-2.897-1.855-2.84-3.737.16-5.233-1.344-10.153-2.64-15.115-1.023-3.92-1.77-7.894-2.15-11.92-.406-4.285-.653-8.584-.94-12.878-.063-.924-.01-1.856-.01-2.784-.074-.01-.148-.023-.222-.035-.357.67-.72 1.334-1.07 2.006-4.644 8.918-9.317 17.822-13.914 26.766-1.767 3.438-3.4 6.948-5.013 10.463-.623 1.356-1.017 2.818-1 4.348 0 .086-.025.183.005.257.517 1.287-.384 2.104-1.062 2.915-1.256 1.507-2.977 2.097-4.9 2.16-1.678.06-3.272-.3-4.81-.945C.968 81.425.377 80.65 0 79.677v-1.802zM387.468 63.718c-5.47-.146-10.292-1.914-14.644-5.122-3.234 4.765-7.41 8.31-12.968 10.02-5.495 1.693-10.954 1.624-16.268-.507-1.2 1.604-2.314 3.26-3.593 4.78-2.94 3.494-6.455 6.185-10.97 7.35-1.63.42-3.296.666-4.966.406-2.962-.462-4.945-2.452-5.587-5.534-.186-.893-.252-1.81-.38-2.773-1.018.478-2.056.966-3.093 1.458-5.534 2.62-11.147 5.038-17.095 6.578-3.41.883-6.866 1.48-10.408 1.316-2.595-.12-5.104-.624-7.38-1.945-3.514-2.04-5.555-5.137-6.315-9.09-.806-4.184-.158-8.27.958-12.306 1.77-6.397 4.682-12.3 7.96-18.033 2.98-5.215 6.245-10.243 10.064-14.89 3.435-4.174 7.18-8.018 11.88-10.802 2.17-1.286 4.468-2.236 7-2.55 4.566-.565 8.9 1.728 11.012 5.85 1.308 2.554 1.693 5.3 1.5 8.11-.48 6.984-3.138 13.18-7.064 18.883-.446.65-.976 1.26-1.556 1.792-2.89 2.648-6.524 2.23-8.307-1.786-.742-1.67-.552-3.388-.027-5.086.033-.11.108-.26.198-.29 1.492-.51 2.38-1.723 3.275-2.885 1.783-2.31 3.438-4.71 4.34-7.53.62-1.933.773-3.868-.34-5.706-.875-1.443-2.262-1.99-3.916-1.588-1.87.454-3.373 1.548-4.79 2.77-3.37 2.908-6.062 6.412-8.604 10.03-3.857 5.49-7.448 11.144-10.15 17.315-1.484 3.398-2.747 6.87-3.35 10.548-.31 1.89-.464 3.788.022 5.676.62 2.407 2.103 3.637 4.57 3.92 3.06.352 6.024-.183 8.958-.918 7.24-1.815 14.077-4.64 20.57-8.323 2.244-1.274 3.994-3.022 5.617-5 3.25-3.968 7.58-5.478 12.623-5.113.725.052 1.455.106 2.17.233 2.024.36 3.4 1.64 4.446 3.31.464.738.77 1.573 1.197 2.337.185.33.44.688.76.87 1.802 1.03 3.78 1.442 5.835 1.545 3.744.188 7.243-.582 10.34-2.772 2.072-1.47 3.663-3.365 4.467-5.81.55-1.672.627-3.397.18-5.128-.04-.158.03-.455.148-.526 2.082-1.266 5.6-1.846 7.788-.216.47.35.88.818 1.215 1.303 1.334 1.936 2.81 3.734 4.747 5.103 3.437 2.427 7.228 2.764 11.23 1.92 1.7-.356 3.413-.677 5.16-.356 2.043.376 3.446 1.97 3.602 4.03.11 1.43-.267 2.704-1.112 3.86-1.214 1.66-2.443 3.31-3.592 5.013-.485.72-.855 1.537-1.145 2.357-.364 1.038.072 1.567 1.176 1.52 2.013-.083 3.91-.703 5.78-1.377 9.958-3.586 19.007-8.805 27.338-15.3.896-.7 1.737-1.467 2.646-2.148.91-.684 1.442-1.577 1.616-2.674.193-1.223.346-2.455.467-3.69.035-.35.173-.486.474-.56 2.617-.637 5.2-.54 7.668.557 2.317 1.03 2.926 2.488 2.645 5.126-.157 1.475-.77 2.794-1.527 4.05l-.45.755c.42-.17.67-.26.91-.373 2.936-1.384 5.974-2.45 9.212-2.854 2.637-.328 5.23-.238 7.612 1.128 2.44 1.398 3.52 3.538 2.924 6.187-.28 1.247-.84 2.48-1.5 3.582-1.786 2.985-4.28 5.33-7.072 7.373-.215.157-.426.32-.64.48l.07.164c1.094-.245 2.195-.463 3.28-.74 11.537-2.96 22.053-8.01 31.405-15.416.92-.73 1.772-1.554 2.587-2.402.34-.353.58-.86.706-1.34.092-.354.242-.453.536-.484 2.735-.288 5.048.602 6.833 2.666 1.885 2.18 1.547 4.865-.937 6.696-1.786 1.316-3.72 2.448-5.65 3.547-7.94 4.51-16.122 8.49-24.834 11.297-5.563 1.79-11.188 3.342-16.96 4.283-2.536.414-5.086.767-7.67.448-1.164-.145-2.277-.445-3.244-1.12-2.072-1.44-2.174-4.612-.132-6.207 1.09-.85 2.336-1.503 3.52-2.234 3.475-2.147 6.27-4.95 8.226-8.558.08-.146.143-.3.303-.647-1.185.105-2.24.14-3.276.3-5.188.8-9.136 3.676-12.45 7.567-3.442 4.045-5.983 8.658-8.28 13.407-5.024 10.382-8.914 21.196-12.075 32.277-.347 1.212-.61 2.45-.84 3.69-.805 4.3-5.96 6.368-9.533 4.347-1.48-.837-1.793-2.276-1.706-3.82.182-3.234 1.485-6.14 2.81-9.013 5.58-12.124 11.195-24.233 16.82-36.34 1.133-2.44 2.36-4.84 3.605-7.388-.317.158-.554.262-.774.39-6.046 3.488-12.22 6.718-18.68 9.382-3.778 1.56-7.618 2.94-11.667 3.636-2.19.376-4.385.564-6.562-.066-3.035-.878-5.02-4.02-4.613-7.154.342-2.628 1.5-4.932 2.702-7.23.307-.58.625-1.158.98-1.816m-59.765 7.994c.228-.057.678-.122 1.092-.28 1.66-.64 2.98-1.765 4.165-3.05 1.02-1.103 1.957-2.274 2.413-3.748.13-.422.198-.855-.208-1.178-.396-.313-.765-.123-1.116.112-2.265 1.51-4.538 3.002-6.78 4.542-.675.464-1.02 1.2-1.157 2.01-.157.923.428 1.594 1.59 1.592M158.496 69.58c-.71.892-1.338 1.72-2.01 2.51-2.442 2.872-5.058 5.57-8.465 7.297-1.2.608-2.545 1.037-3.873 1.267-2.223.386-4.006-.58-5.407-2.287-1.65-2.01-2.572-4.38-3.298-6.83-.406-1.372-.702-2.776-1.05-4.166-.035-.14-.087-.274-.145-.454-1.577.993-3.097 1.985-4.65 2.924-5.99 3.617-12.2 6.76-18.91 8.837-4.163 1.29-8.41 1.985-12.774 1.86-3.787-.11-7.516-.575-11.012-2.167-5.05-2.3-7.947-6.198-8.648-11.716-.005-.04-.03-.076-.072-.174-.61.028-1.24.07-1.873.086-2.61.063-5.142-.205-7.358-1.766-3.084-2.172-3.278-6.547-.366-8.818.576-.45 1.296-.71 1.993-1.082.466 1.01 1.288 1.38 2.17 1.6 1.937.485 3.894.508 5.866.188.45-.073.655-.274.806-.68 1.323-3.554 3.077-6.876 5.467-9.834 4.35-5.384 9.917-8.75 16.765-9.852 1.89-.305 3.84-.434 5.753-.36 2.477.097 4.728.994 6.254 3.065 1.907 2.588 1.776 5.356.346 8.113-1.277 2.464-3.213 4.38-5.345 6.098-6.13 4.942-13.06 8.447-20.38 11.235-.276.106-.55.217-.863.34.53 3.112 2.21 5.308 5.026 6.63 2.012.947 4.16 1.252 6.363 1.33 5.093.183 9.82-1.23 14.39-3.282 5.276-2.368 10.185-5.365 14.72-8.957 1.567-1.24 2.996-2.636 4.114-4.31.787-1.178.836-1.558.46-2.828 3.678-2.11 9.176-1.19 10 4.32.102.696.118 1.41.117 2.113-.002 2.282.192 4.538.91 6.716.185.562.442 1.12.758 1.62.782 1.24 1.78 1.46 2.91.555.93-.747 1.82-1.578 2.598-2.482 2.282-2.645 4.562-5.297 6.714-8.047.885-1.13 1.428-2.523 2.152-3.783.52-.907 1.15-1.753 2.228-2.008 2.642-.627 5.14.457 5.652 3.74.21 1.345.128 2.735.192 4.103.123 2.588.185 5.183.86 7.708.125.472.293.942.513 1.377.557 1.096 1.19 1.32 2.236.698.75-.445 1.515-.945 2.09-1.586 2.344-2.614 4.633-5.28 6.914-7.95 1.21-1.42 2.346-2.9 3.545-4.328 1.89-2.255 4.246-2.972 7.083-2.096 1.51.466 3.01 1.04 4.56 1.276 3.93.596 7.65-.012 11.052-2.253 2.21-1.455 4.6-1.436 6.9-.223 3.11 1.64 3.295 5.666.278 7.553-1.405.878-3.067 1.39-4.666 1.9-3.243 1.04-6.603 1.527-9.998 1.448-2.02-.047-4.042-.398-6.042-.74-1.228-.21-2.293-.008-3.16.82-1.497 1.436-3.006 2.873-4.357 4.442-2.956 3.43-5.868 6.903-9.57 9.57-1.274.916-2.666 1.738-4.116 2.328-3.324 1.355-6.467.42-8.72-2.386-1.85-2.307-2.858-4.993-3.53-7.83l-.098-.39M89.2 54.483c1.33-.523 2.663-1.03 3.983-1.573 2.953-1.215 5.804-2.633 8.474-4.393 1.097-.723 2.11-1.555 2.732-2.75.45-.867.056-1.57-.918-1.606-.547-.018-1.116.058-1.646.2-3.446.93-6.36 2.8-8.97 5.18-1.53 1.394-2.818 2.98-3.655 4.944"/><path d="M229.663 70.84c-.896-1.027-1.69-1.89-2.43-2.797-2.167-2.654-4.395-5.265-6.44-8.01-1.76-2.364-3.058-5.008-3.536-7.966-.735-4.552.74-8.327 4.21-11.298 2.812-2.41 6.228-3.514 9.797-4.196 2.618-.5 5.264-.705 7.925-.518 1.982.14 3.904.53 5.56 1.737 1.818 1.326 2.353 3.263 1.483 5.328-1.15 2.73-3.51 3.967-6.52 3.404-1.53-.286-3.048-.674-4.59-.88-1.746-.236-3.517-.214-5.237.222-2.394.607-3.497 1.516-3.704 4.748-.146 2.284.8 4.304 1.926 6.226 1.535 2.62 3.493 4.924 5.496 7.188 1.732 1.96 3.53 3.862 5.212 5.863 1.68 2 2.42 4.317 1.248 6.794-1.207 2.553-3.316 4.05-6.218 3.993-1.855-.036-3.706-.343-5.555-.558-3.018-.352-6.033-.748-9.054-1.084-2.81-.312-5.624-.564-8.436-.85-1.382-.138-2.788-.172-4.14-.46-2.806-.597-3.635-2.17-2.63-4.868.924-2.476 2.53-4.34 5.062-5.31.54-.207.926-.192 1.42.237 1.308 1.142 2.95 1.606 4.61 1.97 3.925.853 7.89 1.362 11.914 1.29.822-.015 1.643-.125 2.627-.204"/>
		</g>

		<g id="nypost-logo">
			<path fill="#211F20" d="M260.122 1.337h-15.075l-6.11 4.582 1.05-4.678h-14.924l-2.41 2.142c-.606-.352-1.85-1.077-2.49-1.503-.95-.528-3.063-.543-3.302-.543h-23.176l-3.172 2.467c-.807-.734-2.848-2.384-5.393-2.924-4.6-1.087-5.797-.892-7.286-.818-.452.023-.916.046-1.453.046-3.27 0-6.803 1.116-8.413 1.693l.063-.562-15.117.1-6.363 5.09-.17-5.09h-14.734l-3.33 2.462.932-2.463h-13.205l-5.35 3.845-.166-3.845H97.312l-4.173 3.11-.33-3.205H57.162l-.36.19.098-.197-13.5.103-4.24 3.08-.585-3.176H24.377l-11.65 9.32L0 57.33h12.562l6.574-4.845.692 4.845h12.24l1.773-1.495.518.048.87 1.447h24.245l5.368-3.927-.64 3.927h12.197l7.436-5.205-1.24 5.205H95.04l12.462-9.37 14.91-30.543 2.317 19.816-5.66 20.097h13.71l8.96-6.878c.867 1.706 3.543 6.14 8.242 6.868 1.536.288 4.044.383 4.15.387h.02c1.903 0 3.073-.017 5.025-.388 2.295-.436 3.55-.97 5.632-1.86l.16-.067c2.095-.895 4.745-2.516 6.233-3.466l-1.098 5.403h12.977l4.963-3.412-.853 3.412h27.297l5.95-4.288 1.4 4.288h15.082l11.873-9.52-5.408-25.333 16.735-21.14z"/>
			<path fill="#231F20" d="M358.936 1.243l-2.583 1.78c-.646-.395-2.13-1.276-3.27-1.738-3.04-1.23-5.054-1.317-8.26-1.27-3.89.06-6.575.467-10.473 2.523-1.724.91-3.816 2.65-4.783 3.49-.648-1.1-2.108-3.305-3.793-4.07-3.877-1.79-6.352-1.787-10.376-1.66-3.702.118-5.85.57-9.183 1.933-2.318.95-5.233 2.99-6.413 3.847-.458-.806-1.32-2.257-1.998-3-.956-1.275-3.472-1.772-3.756-1.824l-23.473-.01L259.68 9.9l-13.206 47.43H259.9l12.02-9.21 1.626-4.97c.74.013 2.35.02 3.53-.105.86-.093 1.977-.318 2.73-.483-.28 1.803-.738 6.004.582 8.594 2.47 4.844 6.862 5.83 11.237 6.173 1.008.087 1.903.13 2.735.13 2.982 0 5.21-.555 8.275-1.576 3.104-1.035 7.08-3.61 8.403-4.5.737.92 2.563 3.07 4.28 4.073 2.443 1.43 4.23 1.604 6.944 1.87.972.097 1.838.143 2.653.143 2.828 0 5.13-.537 8.5-1.98 3.238-1.367 8.052-4.45 10.305-5.94l-1.892 7.404h12.745l11.84-9.027 8.14-28.485 9.744-8.326 2.7-9.87h-28.06z"/>
			<path fill="#FFF" d="M54.715 2.85h-9.282l-6.015 19.87L37.23 2.85H25.38L13.8 45.93l-.063.24h9.09L29.6 22.92l2.563 23.25h10.15L54.646 3.09M117.528 2.85L107.34 23.41l1.982-20.35.02-.207H99.177l-9.61 20.13L91.54 3.06l.02-.21H58.105L46.338 45.93l-.065.24h22.892l2.78-7.946h-12.69l2.92-10.214H73.71l2.385-7.946H64.37l2.907-9.08H79.61l-2.445 34.983-.014.202H87.5l10.928-23.316L96.06 46.17h9.976l20.86-43.047.13-.272M185.83 25.02l.096.015 3.096-10.834h-.052c.04-.197.13-.543.216-.88.427-1.666 1.223-4.765.81-6.347-.938-4.38-3.998-5.2-5.257-5.35-2.88-.54-3.653-.546-5.718-.566l-.652-.006c-1.444-.014-2.37-.027-3.908.195-2.304.332-3.596.63-5.636 1.625-1.353.66-2.082 1.13-3.254 2.105-2.145 1.786-4.304 5.567-4.412 5.77l-7.57 27.82c-.03.146-.73 3.642.405 5.435.62.98 1.273 1.38 2.176 1.93l.344.21c1.924 1.194 3.345 1.394 5.497 1.694l.252.036c1.028.145 1.897.212 2.735.212 1.258 0 2.44-.154 3.943-.402 2.072-.343 3.342-.582 5.347-1.528 1.57-.74 2.428-1.3 3.824-2.486 1.6-1.36 3.68-4.134 3.84-4.634h.004c1.057-3.774 3.83-13.643 3.96-13.97l-.084-.04zM222.435 6.776c-.23-.89-.492-1.39-1.08-2.063-.608-.7-1.1-.975-1.853-1.368-.43-.225-1.13-.473-1.16-.483l-23.473-.01L183.1 45.93l-.065.24h10.604l5.107-17.404 4.364-.003c.358.067 1.338.35 1.566.84.155.333.044.977-.012 1.196l-3.972 15.132-.063.237h11.17l4.577-16.21c.03-.093.705-2.266-.02-3.378-.358-.546-.718-.772-1.215-1.085l-.168-.106c-.38-.24-.92-.468-1.3-.614.564-.255 1.56-.723 2.243-1.145l.29-.177c.688-.42 1.184-.722 1.825-1.363.413-.412.94-1.126.964-1.156l3.44-11.622c.013-.064.248-1.58 0-2.536M292.205 28.69c.54-.714.777-1.296 1.054-1.97.11-.277.23-.572.384-.9 2.527-5.47 4.347-14.895 4.36-14.968.022-.076.58-1.87.19-3.034-.07-.29-.092-.56-.108-.822-.03-.4-.06-.816-.28-1.292-.36-.784-.757-1.147-1.373-1.673-.465-.397-.836-.573-1.268-.777-.222-.104-.463-.22-.748-.378l-.044-.024h-22.42l-12.05 43.08-.067.24h10.415l3.972-13.047c.695.03 3.72.162 6.293.162 1.72 0 2.91-.058 3.533-.172 1.65-.29 2.717-.653 4.253-1.456 1.652-.86 2.744-1.43 3.905-2.966M327.895 7.63c-.054-.223-.1-.445-.146-.663-.222-1.064-.43-2.07-1.372-2.584-1.145-.763-2.05-1.366-3.52-1.9-1.92-.695-3.192-.757-5.118-.85l-.235-.01c-.685-.035-1.237-.05-1.74-.05-1.37 0-2.54.12-4.168.43-1.71.326-2.685.57-4.294 1.24-1.924.804-3.07 1.408-4.778 2.87-1.213 1.035-2.707 2.972-2.77 3.054l-8.457 29.23c-.015.152-.342 3.772.882 5.607.74 1.112 1.447 1.557 2.517 2.23 1.766 1.113 3.133 1.29 5.022 1.54.233.03.476.06.727.096 1.21.166 2.154.24 3.063.24 1.064 0 2.11-.098 3.612-.336 2.195-.348 3.438-.61 5.35-1.53 1.622-.778 2.52-1.383 3.827-2.583 1.546-1.418 3.306-4.13 3.455-4.625h.002c1.107-3.695 4.008-13.357 4.15-13.687l-.09-.045.103.014 3.285-11.59h-.052c.032-.142.09-.358.147-.57.356-1.317 1.015-3.77.595-5.526"/>
			<path fill="#231F20" d="M316.247 10.71c-.237-.474-1.234-.728-2.03-.857-.255-.042-.506-.063-.748-.063-1.02 0-1.826.362-2.774.836-.807.404-1.567 2.102-1.61 2.197l-6.622 22.712c-.025.11-.583 2.71.97 3.434.71.267 1.494.512 2.392.512.175 0 .352-.01.53-.028.84-.096 1.527-.452 2.08-.738l.26-.134c.826-.445 1.134-1.34 1.318-1.876.033-.095.07-.206.1-.278h.007c.198 0 .266 0 5.67-19.72l.837-3.368c.022-.05.604-1.254-.38-2.63"/>
			<path fill="#FFF" d="M145.605 17.765l-.92-14.913h-10.8l3.43 25.523-4.783 17.795h10.414l4.95-17.133L165.67 2.852h-10.675M234 16.506l3.824-13.655H226.84l-12.713 43.077-.072.242h11.46l5.583-18.4 3.358 18.245.027.154h12.025l-4.946-23.977 15.08-19.036.24-.306h-10.5M360.007 2.85l-2.088 7.757h6.71l-9.956 35.322-.068.24h10.325l10.025-35.185h7.188l2.31-7.892.07-.242M349.434 25.256c-.732-1.103-1.394-1.758-2.156-2.516-.334-.33-.69-.683-1.08-1.102-.59-.635-1.1-1.127-1.587-1.6-.647-.63-1.258-1.222-2-2.083-.272-.316-.528-.573-.773-.823-.544-.55-1.013-1.025-1.377-1.882-.44-1.04-.73-1.725-.55-2.816.11-.665.194-1.063.613-1.51.32-.34.626-.42 1.086-.542l.245-.066c.613-.172.95-.256 1.533-.184.68.085 1.08.287 1.593.797.415.413.586.712.708 1.232.102.445.05.763-.02 1.164-.028.175-.06.36-.08.572l-.007.06c-.067.694-.108 1.113-.27 1.807-.157.66-.557 1.666-.56 1.676l-.104.26h10.446l.04-.138c.006-.024.688-2.433 1.042-3.98.102-.442.208-.823.31-1.182.237-.842.442-1.57.453-2.643v-.13c.016-1.618.026-2.786-.882-4.23-.64-1.015-1.23-1.498-2.232-2.138-1.007-.644-1.726-.83-2.812-1.115l-.174-.045c-1.187-.31-1.934-.366-3.065-.45l-.795-.06c-.802-.064-1.435-.114-2.106-.114-.636 0-1.258.047-1.958.147-.626.09-1.077.21-1.553.338-.28.076-.57.154-.92.233-.424.095-.784.153-1.134.208-.606.098-1.18.19-1.92.463-1.177.436-1.84.898-2.76 1.54l-.402.278c-1.027.71-1.608 1.14-2.484 2.01l-.236.23c-.678.67-1.168 1.15-1.688 2.08-.45.808-.612 1.376-.838 2.16l-.124.433c-.29.997-.438 1.518-.573 2.486l-.053.377c-.144.99-.246 1.708-.038 2.805.15.807.375 1.28.685 1.936l.178.378c.627 1.353 1.286 2.17 2.053 3.115.313.39.64.793.994 1.27.893 1.2 1.4 1.878 2.37 3.036.454.54.84.95 1.21 1.346.402.428.783.833 1.25 1.396.166.2.317.373.46.535.35.396.626.71.94 1.238l.08.135c.433.72.693 1.155.844 1.98.164.896.144 1.43-.09 2.28-.194.7-.326 1.12-.807 1.62-.576.602-1.074.85-1.972.985-.29.043-.527.062-.746.062-.527 0-.977-.125-1.5-.42-.59-.33-.88-.552-1.155-1.06-.267-.492-.265-.864-.262-1.427v-.186c0-.498.096-.828.215-1.245.053-.184.107-.38.16-.605.158-.692.468-1.775.47-1.787l.068-.24h-10.78l-.05.116c-.015.037-.382.926-.57 1.527-.226.707-.32 1.19-.44 1.804-.04.208-.083.428-.134.675-.09.43-.19.804-.282 1.155-.217.822-.405 1.532-.383 2.576.025 1.23.133 2.033.677 3.287.414.952.752 1.544 1.556 2.33.68.664 1.23.93 1.995 1.297l.322.156c1.58.77 2.604.98 4.407 1.247.86.127 1.605.186 2.35.186.857 0 1.666-.074 2.805-.186 2.232-.22 3.508-.403 5.53-1.146 1.506-.553 2.36-.98 3.82-1.91 1.323-.843 2.126-1.377 3.252-2.584 1.128-1.208 1.688-2.037 2.398-3.548.78-1.66 1.014-2.673 1.246-4.31.305-2.163.438-3.385-.1-5.373-.416-1.528-.94-2.315-1.822-3.647"/>
			<path fill="#231F20" d="M178.225 10.67c-.557-.63-1.172-.74-1.92-.82-.687-.075-1.088.027-1.766.194-.62.153-.962.27-1.476.59-.437.276-.963.86-.985.886l-7.04 24.095c-.016.052-.386 1.278-.09 2.018.258.646.66.95 1.226 1.233.356.178.688.253 1.11.253.168 0 .34-.01.526-.023.11-.008.227-.016.395-.023.89-.04 1.53-.07 2.32-.597.57-.38.86-.694 1.196-1.294.095-.172.128-.42.157-.64.01-.06.02-.144.032-.21h.024c.197 0 .264 0 5.668-19.723l.842-3.374c.017-.04.43-.988.295-1.628-.09-.43-.27-.66-.515-.938M210.428 12.375c-.018-.11-.026-.217-.034-.32-.032-.367-.064-.715-.405-1.022-.297-.267-.55-.352-.945-.424-.28-.052-.884-.006-.886-.004h-4.206l-3.163 10.16-.074.244h5.686l.035-.014c.037-.016.915-.378 1.377-.79.548-.49.742-.974.967-1.534.065-.162.134-.334.216-.517.396-.883.543-1.482.748-2.31l.115-.464c.08-.323.177-.606.27-.88.23-.68.43-1.267.298-2.125"/>
			<path d="M286.62 11.34c-.264-.332-.536-.455-.853-.597-.08-.036-.162-.074-.252-.118-.534-.262-1.248-.394-2.124-.394-1.463 0-2.865.367-2.924.383l-.105.027-4 13.912-.042.143.13.073c.024.015.636.366 1.082.49.322.092.608.13.95.13.15 0 .298-.006.462-.013.11-.006.224-.01.35-.014l.186-.004c.73-.02 1.21-.032 1.95-.29 1.086-.376 1.728-.864 2.457-1.864.41-.565.555-1.034.722-1.577.07-.227.146-.47.247-.737.783-2.073 1.607-5.474 1.612-5.498.014-.047.353-1.17.385-1.938.01-.19.033-.37.053-.542.068-.542.13-1.054-.282-1.57"/>
			<path fill="none" d="M0 0h387v57.708H0z"/>
		</g>
	</defs>
</svg>
<div id="email-response" style="display:none;">
	<div class="thankyou">
		<span class="email-icon icon-email"></span>
		<div class="rule"></div>
		<p>Thanks for contacting us. We&#039;ve received your submission.</p>
		<a href="#" class="back">Back to Reading</a>
	</div>
</div>
<header id="page-header" class="site-header clearfix" role="banner">
	
	<div id="nav-wrapper" class="nav-wrapper">
		<div class="container--header-nav">
			<nav id="page-nav" class="page-nav">
				<div class="nav-links">
	<div class="nav-links-wrapper">
		<div class="nav-left">
			<button class="nav-header nav-header--sections" id="sections" aria-expanded="false">
				<span class="menu-icon">
					<svg class="menu-icon-svg" focusable="false" viewBox="0 0 24 24"><path d="M24 6H0V2h24v4zm0 4H0v4h24v-4zm0 8H0v4h24v-4z"/></svg>
				</span>
				<span class="nav-text">Sections</span>
			</button>
			<div id="section-nav-wrapper" class="section-nav-wrapper" role="navigation" aria-label="main navigation">
	<div class="menu-main-menu-container"><ul id="menu-main-menu" class="menu menu-main-menu"><li id="menu-item-1612774" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-1612774"><a href="/news/">News</a></li>
<li id="menu-item-16343465" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-16343465"><a href="/2020-presidential-election/">Election 2020</a></li>
<li id="menu-item-1612773" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-1612773"><a href="/metro/">Metro</a></li>
<li id="menu-item-1612779" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1612779"><a href="https://pagesix.com/">Page Six</a></li>
<li id="menu-item-1612777" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-1612777"><a href="/sports/">Sports</a></li>
<li id="menu-item-1612768" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-1612768"><a href="/business/">Business</a></li>
<li id="menu-item-1612775" class="menu-item menu-item-type-taxonomy menu-item-object-section current-article-ancestor current-menu-parent current-article-parent menu-item-1612775"><a href="/opinion/">Opinion</a></li>
<li id="menu-item-1612769" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-1612769"><a href="/entertainment/">Entertainment</a></li>
<li id="menu-item-1617339" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-1617339"><a href="/fashion/">Fashion</a></li>
<li id="menu-item-14486425" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-14486425"><a href="https://nypost.com/shopping/">NY Post Shopping</a></li>
<li id="menu-item-1612771" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-1612771"><a href="/living/">Living</a></li>
<li id="menu-item-1612772" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-1612772"><a href="/media/">Media</a></li>
<li id="menu-item-1612778" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-1612778"><a href="/tech/">Tech</a></li>
<li id="menu-item-1615324" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-1615324"><a href="/real-estate/">Real Estate</a></li>
<li id="menu-item-9914303" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914303"><a href="/video/">Video</a></li>
<li id="menu-item-9914301" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914301"><a href="/photos/">Photos</a></li>
<li id="menu-item-9914299" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-9914299"><a href="#">Sub Menu 1</a>
<ul class="sub-menu">
	<li id="menu-item-7962507" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7962507"><a href="https://nypost.com/covers/">Covers</a></li>
	<li id="menu-item-7962530" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7962530"><a title="New York Post Columnists" href="https://nypost.com/columnists/">Columnists</a></li>
	<li id="menu-item-7962521" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7962521"><a href="https://nypost.com/horoscopes/">Horoscopes</a></li>
	<li id="menu-item-13175913" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13175913"><a href="https://nypost.com/odds/">Sports Odds</a></li>
	<li id="menu-item-16294558" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-16294558"><a href="https://nypost.com/podcasts/">Podcasts</a></li>
	<li id="menu-item-10775960" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10775960"><a href="https://email.nypost.com/">Email Newsletters</a></li>
	<li id="menu-item-14167389" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-14167389"><a href="https://store.nypost.com/">Store</a></li>
	<li id="menu-item-9914314" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9914314"><a target="_blank" rel="noopener noreferrer" href="https://subscribe.nypost.com/">Home Delivery</a></li>
</ul>
</li>
</ul></div>	<ul class="mobile-account-controls">
		<li><a class="sign-in" href="#">Sign in</a></li>
	</ul>
</div>
			<a class="nav-header nav-header--search" id="search" href="https://nypost.com/search/">
				<span class="search-icon">
					<svg class="search-icon-svg" focusable="false" viewBox="0 0 20 21"><path d="M12.02 15.524c-1.165.684-2.522 1.076-3.97 1.076C3.715 16.6.2 13.085.2 8.75.2 4.415 3.715.9 8.05.9c4.335 0 7.85 3.515 7.85 7.85 0 1.458-.397 2.823-1.09 3.993l5.14 5.23-2.81 2.76-5.12-5.21zm-3.993-1.868C5.257 13.656 3 11.4 3 8.63 3 5.857 5.256 3.6 8.027 3.6c2.772 0 5.028 2.256 5.028 5.027 0 2.77-2.256 5.026-5.028 5.026z" fill-rule="evenodd"/></svg>
				</span>
				<span class="search-text">Search</span>
			</a>
			<div id="nav-search-wrapper" class="search__form-wrapper search__form-wrapper--header">
				<form id="nav-search" class="search__form search__form--header" action="https://nypost.com/">
	<label class="search__label" for="search-field">Type to Search</label>
	<input type="text" name="s" id="search-field" class="search__input" placeholder="Type to Search" value="" />
	<button type="submit" value="search" id="search-submit" class="search__submit">
		Search	</button>
</form>
			</div>
		</div>
		<div class="nav-right">
							<a class="nav-header nav-header--tips" href="https://nypost.com/tips/">
					<i class="icon-signal"></i>
					<span>Tips</span>
				</a>
										<a class="nav-header nav-header--email" href="https://email.nypost.com/">
					<i class="icon-email"></i>
					<span>Sign Up</span>
				</a>
			
		</div>
			</div>
</div>

				<div id="header-logo-wrapper" class="header-logo-wrapper">

														<a class="dog-ear--left_link" href="https://nypost.com/podcasts/jalen-rose-renaissance-man/">
									<img
						class="dog-ear--left_image"
						src="https://nypost.com/wp-content/uploads/sites/2/2020/10/DogEars-LEFT_NYP_JALEN.png"
													srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/DogEars-LEFT_NYP_JALEN@2x.png 2x,
							https://nypost.com/wp-content/uploads/sites/2/2020/10/DogEars-LEFT_NYP_JALEN.png 1x"
																			alt="Introducing Jalen Rose Renaissance Man Podcast"
											>
									</a>
									
					
						<a href="https://nypost.com" id="header-logo" class="header-logo header-logo--nypost">
							<svg viewBox="0 0 386.999 57.708" class="logo logo--nypost" role="img" aria-labelledby="logo-nypost-title">
	<title id="logo-nypost-title">New York Post</title>
	<use xlink:href="https://nypost.com/wp-content/themes/nypost-2016/static/images/nypost-svg.svg#nypost-logo"></use>
</svg>
							<span>New York Post</span>
						</a>

					
														<a class="dog-ear--right_link" href="https://nypost.com/podcasts/jalen-rose-renaissance-man/">
									<img
						class="dog-ear--right_image"
						src="https://nypost.com/wp-content/uploads/sites/2/2020/10/DogEars-RIGHT_NYP_JALEN.png"
													srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/DogEars-RIGHT_NYP_JALEN@2x.png 2x,
							https://nypost.com/wp-content/uploads/sites/2/2020/10/DogEars-RIGHT_NYP_JALEN.png 1x"
																			alt="Introducing Jalen Rose Renaissance Man Podcast"
											>
									</a>
									
				</div>
			</nav>
		</div>
	</div>

				<div class="js-recirc recirc recirc--header recirc--outbrain"></div>
			</header>

<div id="content-wrapper" class="content-wrapper ui-panel-animate ui-panel-content-wrap-closed ui-panel-content-wrap ui-panel-content-wrap-closed">
			<div class="breaking-news breaking-news--hidden" data-breaking-id="16451499">
			<div class="breaking-news__story clearfix">
				<button class="breaking-news__close">Close</button>
				<h4>
					Live				</h4>
									<p><a href="https://nypost.com/2020/10/14/watch-live-amy-coney-barrett-confirmation-hearings-day-3/" class="postid-16451499">Supreme Court nominee Amy Coney Barrett faces questions on Day 3 of confirmation hearings</a></p>
							</div>
		</div>
				<div id="header-billboard-ad" class="billboard-ad billboard-ad__placeholder" aria-hidden="true" tabindex="-1">
			<div id="div-gpt-ad-billb_atf" class="dfp-ad dfp-ad-post dfp-billb_atf" aria-hidden="true" tabindex="-1">
<div class='ad-wrapper'>
	<script type='text/javascript'>
var adWrapper = document.querySelector('.slideshow-ad-wrapper');		if ( typeof googletag !== 'undefined' ) {
		googletag.cmd.push(function() {  if (-1 !== definedSlots.indexOf("div-gpt-ad-billb_atf")) {    googletag.display("div-gpt-ad-billb_atf");  }});
		}
	</script>
</div>
</div>
		</div>
		<div id="div-gpt-ad-skin" class="dfp-ad dfp-ad-post dfp-skin" aria-hidden="true" tabindex="-1">
<div class='ad-wrapper'>
	<script type='text/javascript'>
var adWrapper = document.querySelector('.slideshow-ad-wrapper');		if ( typeof googletag !== 'undefined' ) {
		googletag.cmd.push(function() {  if (-1 !== definedSlots.indexOf("div-gpt-ad-skin")) {    googletag.display("div-gpt-ad-skin");  }});
		}
	</script>
</div>
</div>
<div id="div-gpt-ad-overlay_fullpage" class="dfp-ad dfp-ad-post dfp-overlay_fullpage" aria-hidden="true" tabindex="-1">
<div class='ad-wrapper'>
	<script type='text/javascript'>
var adWrapper = document.querySelector('.slideshow-ad-wrapper');		if ( typeof googletag !== 'undefined' ) {
		googletag.cmd.push(function() {  if (-1 !== definedSlots.indexOf("div-gpt-ad-overlay_fullpage")) {    googletag.display("div-gpt-ad-overlay_fullpage");  }});
		}
	</script>
</div>
</div>
	<div id="content">
		<div id="div-gpt-ad-bottom" class="dfp-ad dfp-ad-post dfp-bottom" aria-hidden="true" tabindex="-1">
<div class='ad-wrapper'>
	<script type='text/javascript'>
var adWrapper = document.querySelector('.slideshow-ad-wrapper');		if ( typeof googletag !== 'undefined' ) {
		googletag.cmd.push(function() {  if (-1 !== definedSlots.indexOf("div-gpt-ad-bottom")) {    googletag.display("div-gpt-ad-bottom");  }});
		}
	</script>
</div>
</div>
		<div id="background-wrapper">
			<div class="container container--content clearfix">

<div id="article-wrapper" class="article-wrapper left-column clearfix standard" role="main">
			<div class="article-share-top nyp-sharedaddy-wrapper desktop-share">
			<div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Share this:</h3><div class="sd-content"><ul><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-16420050" class="share-facebook sd-button share-icon" href="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?share=facebook" target="_blank" title="Click to share on Facebook"><span>Facebook</span></a></li><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-16420050" class="share-twitter sd-button share-icon" href="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?share=twitter" target="_blank" title="Click to share on Twitter"><span>Twitter</span></a></li><li class="share-nyp-flipboard"><script async defer src="https://cdn.flipboard.com/web/buttons/js/flbuttons.min.js" type="text/javascript"></script>
			<a data-flip-widget="shareflip" href="https://flipboard.com" class="share-icon sd-button no-text share-nyp-flipboard" title="Flipboard">
				<span class="icon-flipboard">
					<span class="screen-reader-text">Flipboard</span>
				</span>
			</a></li><li class="share-whatsapp"><a rel="nofollow" class="share-whatsapp sd-button share-icon" href="whatsapp://send?text=Trump%20says%20he%20beat%20COVID-19%20because%20he&#039;s%20a%20&#039;perfect%20physical%20specimen&#039;%20https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?utm_source=whatsapp_sitebuttons&#038;utm_medium=site%20buttons&#038;utm_campaign=site%20buttons" title="Click to share on Whatsapp"><span>WhatsApp</span></a></li><li class="share-email"><a rel="nofollow noopener noreferrer" data-shared="" class="share-email sd-button share-icon" href="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?share=email" target="_blank" title="Click to email this to a friend"><span>Email</span></a></li><li class="share-nyp-post-url"><a rel="nofollow" data-shared="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?utm_source=url_sitebuttons&amp;utm_medium=site%20buttons&amp;utm_campaign=site%20buttons" class="share-nyp-post-url sd-button share-icon" href="" title="Click to copy URL"><span>Copy</span></a></li><li class="share-end"></li></ul></div></div></div>		</div>
			<div class="box article modal-enabled">
		<div class="article-header">
			<div class="flag-region">
														<p class="section-tag">
						<a href="/news/" class="background-color">News</a>
					</p>
				
				
				
								<div class="article-share-top nyp-sharedaddy-wrapper mobile-share">
					<div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Share this:</h3><div class="sd-content"><ul><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-16420050" class="share-facebook sd-button share-icon" href="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?share=facebook" target="_blank" title="Click to share on Facebook"><span>Facebook</span></a></li><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-16420050" class="share-twitter sd-button share-icon" href="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?share=twitter" target="_blank" title="Click to share on Twitter"><span>Twitter</span></a></li><li class="share-nyp-flipboard"><script async defer src="https://cdn.flipboard.com/web/buttons/js/flbuttons.min.js" type="text/javascript"></script>
			<a data-flip-widget="shareflip" href="https://flipboard.com" class="share-icon sd-button no-text share-nyp-flipboard" title="Flipboard">
				<span class="icon-flipboard">
					<span class="screen-reader-text">Flipboard</span>
				</span>
			</a></li><li class="share-whatsapp"><a rel="nofollow" class="share-whatsapp sd-button share-icon" href="whatsapp://send?text=Trump%20says%20he%20beat%20COVID-19%20because%20he&#039;s%20a%20&#039;perfect%20physical%20specimen&#039;%20https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?utm_source=whatsapp_sitebuttons&#038;utm_medium=site%20buttons&#038;utm_campaign=site%20buttons" title="Click to share on Whatsapp"><span>WhatsApp</span></a></li><li class="share-email"><a rel="nofollow noopener noreferrer" data-shared="" class="share-email sd-button share-icon" href="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?share=email" target="_blank" title="Click to email this to a friend"><span>Email</span></a></li><li class="share-nyp-post-url"><a rel="nofollow" data-shared="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?utm_source=url_sitebuttons&amp;utm_medium=site%20buttons&amp;utm_campaign=site%20buttons" class="share-nyp-post-url sd-button share-icon" href="" title="Click to copy URL"><span>Copy</span></a></li><li class="share-end"></li></ul></div></div></div>				</div>
				<div id="sharebar-trigger-mobile"></div>
							</div>
			<h1 class="postid-16420050">
				Trump says he beat COVID-19 because he&#8217;s a &#8216;perfect physical specimen&#8217;			</h1>
						<div id="author-byline">
				<p class="byline">By <a class="mark-moore" href="https://nypost.com/author/mark-moore/"><span>Mark Moore</span></a></p>				<div class="author-flyout mark-moore" data-author-name="Mark Moore">
	<div class="arrow"></div>
	<div class="author-flyout-inner">
		<ul class="author-flyout-links">
			<li class="author-flyout-item author-flyout-item--archive">
				<a href="https://nypost.com/author/mark-moore/" class="author-flyout-link author-flyout-link--archive" data-interaction-type="archive" title="Mark Moore's archive">
					<span>View author archive</span>
				</a>
			</li>
															<li class="author-flyout-item author-flyout-item--rss">
				<a href="https://nypost.com/author/mark-moore/feed/" class="author-flyout-link author-flyout-link--rss" data-interaction-type="rss" title="Get Mark Moore's RSS feed" target="_blank">
					<span>Get author RSS feed</span>
				</a>
			</li>
		</ul>
	</div>
</div>
<div id="columnist-contact" class="author-contact"><div class="box no-mobile module images-show widget_nypost_top_five_widget"><header class="module-title">			<h4 class="widget__title with-subtitle no-subtitle">
				<span class="widget__title-primary">Most Popular Today</span>
						</h4>
				</header>			<a href="https://nypost.com/2020/10/13/stephen-gilmores-wife-denies-rumored-cam-newton-dinner/" class="top-five-story clearfix"><!-- top-five module -->
									<span class="number">1</span>
						<picture 		class="featured-image top-five-story-image"
			>
					<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/Stephon-Gilmore-Gabrielle-Glenn-Cam-Newton.jpg?quality=80&#038;strip=all&#038;w=180&#038;h=120&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/Stephon-Gilmore-Gabrielle-Glenn-Cam-Newton.jpg?quality=80&#038;strip=all&#038;w=90&#038;h=60&#038;crop=1 1x"
				data-sizes=""
				media="(min-width: 640px)"
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
							<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/Stephon-Gilmore-Gabrielle-Glenn-Cam-Newton.jpg?quality=80&#038;strip=all&#038;w=180&#038;h=120&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/Stephon-Gilmore-Gabrielle-Glenn-Cam-Newton.jpg?quality=80&#038;strip=all&#038;w=90&#038;h=60&#038;crop=1 1x"
				media="(max-width: 639px)"
				data-sizes=""
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
					<img
				alt="Trump says he beat COVID-19 because he&#8217;s a &#8216;perfect physical specimen&#8217;"
				class="lazyload"
				src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
			>
	</picture>
				<span class="story-title top-five-story-title">Patriots teammate&#039;s &#039;annoyed&#039; wife denies Cam Newton dinner</span>			</a>
						<a href="https://nypost.com/2020/10/14/email-reveals-how-hunter-biden-introduced-ukrainian-biz-man-to-dad/" class="top-five-story clearfix"><!-- top-five module -->
									<span class="number">2</span>
						<picture 		class="featured-image top-five-story-image"
			>
					<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/Hunter-BIden-Emails-HP-4.jpg?quality=80&#038;strip=all&#038;w=180&#038;h=120&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/Hunter-BIden-Emails-HP-4.jpg?quality=80&#038;strip=all&#038;w=90&#038;h=60&#038;crop=1 1x"
				data-sizes=""
				media="(min-width: 640px)"
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
							<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/Hunter-BIden-Emails-HP-4.jpg?quality=80&#038;strip=all&#038;w=180&#038;h=120&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/Hunter-BIden-Emails-HP-4.jpg?quality=80&#038;strip=all&#038;w=90&#038;h=60&#038;crop=1 1x"
				media="(max-width: 639px)"
				data-sizes=""
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
					<img
				alt="Trump says he beat COVID-19 because he&#8217;s a &#8216;perfect physical specimen&#8217;"
				class="lazyload"
				src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
			>
	</picture>
				<span class="story-title top-five-story-title">Biden introduced Ukraine exec to VP dad: emails</span>			</a>
						<a href="https://nypost.com/2020/10/13/mike-tyson-leaves-viewers-worried-in-incoherent-interview/" class="top-five-story clearfix"><!-- top-five module -->
									<span class="number">3</span>
						<picture 		class="featured-image top-five-story-image"
			>
					<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/tyson.jpg?quality=80&#038;strip=all&#038;w=180&#038;h=120&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/tyson.jpg?quality=80&#038;strip=all&#038;w=90&#038;h=60&#038;crop=1 1x"
				data-sizes=""
				media="(min-width: 640px)"
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
							<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/tyson.jpg?quality=80&#038;strip=all&#038;w=180&#038;h=120&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/tyson.jpg?quality=80&#038;strip=all&#038;w=90&#038;h=60&#038;crop=1 1x"
				media="(max-width: 639px)"
				data-sizes=""
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
					<img
				alt="Trump says he beat COVID-19 because he&#8217;s a &#8216;perfect physical specimen&#8217;"
				class="lazyload"
				src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
			>
	</picture>
				<span class="story-title top-five-story-title">Incoherent Mike Tyson leaves viewers worried in strange interview</span>			</a>
						<a href="https://pagesix.com/2020/10/12/billie-eilish-shows-some-skin-and-more-star-snaps/?itm_source=parsely-api" class="top-five-story clearfix"><!-- top-five module -->
									<span class="number">4</span>
						<picture 		class="featured-image top-five-story-image"
			>
					<source
				data-srcset="https://pagesix.com/wp-content/uploads/sites/3/2020/10/billie-eilish.jpg?quality=80&#038;strip=all&#038;w=180&#038;h=120&#038;crop=1 2x, https://pagesix.com/wp-content/uploads/sites/3/2020/10/billie-eilish.jpg?quality=80&#038;strip=all&#038;w=90&#038;h=60&#038;crop=1 1x"
				data-sizes=""
				media="(min-width: 640px)"
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
							<source
				data-srcset="https://pagesix.com/wp-content/uploads/sites/3/2020/10/billie-eilish.jpg?quality=80&#038;strip=all&#038;w=180&#038;h=120&#038;crop=1 2x, https://pagesix.com/wp-content/uploads/sites/3/2020/10/billie-eilish.jpg?quality=80&#038;strip=all&#038;w=90&#038;h=60&#038;crop=1 1x"
				media="(max-width: 639px)"
				data-sizes=""
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
					<img
				alt="Trump says he beat COVID-19 because he&#8217;s a &#8216;perfect physical specimen&#8217;"
				class="lazyload"
				src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
			>
	</picture>
				<span class="story-title top-five-story-title">Billie Eilish shows some skin and more star snaps</span>			</a>
						<a href="https://nypost.com/2020/10/12/pence-addresses-fly-on-his-head-during-vp-debate/" class="top-five-story clearfix"><!-- top-five module -->
									<span class="number">5</span>
						<picture 		class="featured-image top-five-story-image"
			>
					<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/AFP_8RN3EV.jpg?quality=80&#038;strip=all&#038;w=180&#038;h=120&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/AFP_8RN3EV.jpg?quality=80&#038;strip=all&#038;w=90&#038;h=60&#038;crop=1 1x"
				data-sizes=""
				media="(min-width: 640px)"
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
							<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/AFP_8RN3EV.jpg?quality=80&#038;strip=all&#038;w=180&#038;h=120&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/AFP_8RN3EV.jpg?quality=80&#038;strip=all&#038;w=90&#038;h=60&#038;crop=1 1x"
				media="(max-width: 639px)"
				data-sizes=""
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
					<img
				alt="Trump says he beat COVID-19 because he&#8217;s a &#8216;perfect physical specimen&#8217;"
				class="lazyload"
				src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
			>
	</picture>
				<span class="story-title top-five-story-title">Pence addresses fly on his head during VP debate</span>			</a>
			</div><div class="box show-mobile module widget_text">			<div class="textwidget"><div id='contact-form-widget-text-4'>
<form action='/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/#contact-form-widget-text-4' method='post' class='contact-form commentsblock'>

<div class='grunion-field-wrap grunion-field-name-wrap'  >
<label
				for='gwidget-text-4-name'
				class='grunion-field-label name'
				>Name<span>(required)</span></label>
<input
					type='text'
					name='gwidget-text-4-name'
					id='gwidget-text-4-name'
					value=''
					class='name' 
					required aria-required='true'
				/>
	</div>

<div class='grunion-field-wrap grunion-field-email-wrap'  >
<label
				for='gwidget-text-4-email'
				class='grunion-field-label email'
				>Email<span>(required)</span></label>
<input
					type='email'
					name='gwidget-text-4-email'
					id='gwidget-text-4-email'
					value=''
					class='email' 
					required aria-required='true'
				/>
	</div>

<div class='grunion-field-wrap grunion-field-textarea-wrap'  >
<label
				for='contact-form-comment-gwidget-text-4-comment'
				class='grunion-field-label textarea'
				>Comment<span>(required)</span></label>
<textarea
		                name='gwidget-text-4-comment'
		                id='contact-form-comment-gwidget-text-4-comment'
		                rows='20' class='textarea'  required aria-required='true'></textarea>
	</div>
	<p class='contact-submit'>
		<button type='submit' class='pushbutton-wide'>Submit</button>		<input type='hidden' name='contact-form-id' value='widget-text-4' />
		<input type='hidden' name='action' value='grunion-contact-form' />
		<input type='hidden' name='contact-form-hash' value='c4b73003bd4b26a16a066823ea46f34274e30536' />
	</p>
</form>
</div>
</div>
		</div></div>			</div>
				<p class="byline-date">
		October 8, 2020 <span class="separator">|</span> 9:23am				<span class="separator">|</span> <a href="#" class="updated-post-date">Updated <span>October 8, 2020 | 11:29am</span></a>
							</p>
				<div class="double-rule"></div>
				<div id="featured-image-wrapper">
			<div class="nyp-brightcove-wrapper alignnone"
	     style=""
	     data-video-index="0"
	     data-video-economics="">
		<div data-aspect-ratio="default"
		     class="nyp-brightcove-player nypost-brightcove-player">
			<video-js
				id="nyp-brightcove-player-1"
				data-account="4137224153001"
				data-player="6aIMRO3kiI"
				data-replaced-player=""
				data-embed="default"
				data-video-id="6198762040001"
				data-has-analytics="true"
				data-nypost-playlist=""
				data-nypost-playlist-type="iris"
				class="video-js player-single"
				playsinline="true"
				controls
				style="">
			</video-js>
		</div>
	</div>
	<script>
		if ('function' === typeof bc) {
			bc( 'nyp-brightcove-player-1' );
		}
	</script>

	</div>
    <div id="commerce-disclosure">
      <p>Sign up for our <a href="https://email.nypost.com/?newsletter=coronavirus-updates" rel="noopener" target="_blank">special edition newsletter</a> to get a daily update on the coronavirus pandemic.</p>
 
    </div>
  										<div class="in-line-column wp-caption alignleft">
			<div id="more-on" class="more-on more-on--tag more-on--author box module inline tag desktop">
	<div class="more-on__wrapper module-wrapper">
		<div class="more-on__header more-on--tag__header tag-header">
			<h4 class="more-on__heading">More On:</h4>
							<h3 class="more-on__name"><a class="more-on__link" href="https://nypost.com/tag/donald-trump/">donald trump</a></h3>
					</div>
					<h2 class="more-on__content-title"><a href="https://nypost.com/2020/10/14/man-in-trump-gear-booted-from-flight-for-removing-mask-to-eat/" class="more-on__content-link">Man in Trump gear booted from Southwest flight for removing mask to eat</a></h2>
						<div class="rule"></div>
							<h2 class="more-on__content-title"><a href="https://nypost.com/2020/10/14/nj-teen-says-trump-banner-got-him-tossed-from-virtual-class/" class="more-on__content-link">NJ teen says he got 'clicked' out of virtual class for Trump banner</a></h2>
						<div class="rule"></div>
							<h2 class="more-on__content-title"><a href="https://nypost.com/2020/10/14/trump-talks-middle-class-tax-cuts-in-economic-club-of-ny-speech/" class="more-on__content-link">Trump talks tax cuts for middle class during speech to Economic Club of NY</a></h2>
						<div class="rule"></div>
							<h2 class="more-on__content-title"><a href="https://nypost.com/2020/10/14/trump-campaign-blasts-bidens-over-blatant-selling-of-access/" class="more-on__content-link">Trump campaign uses Post exposé to blast Bidens for 'blatant selling of access'</a></h2>
			</div>
</div>
		</div>
								<div class="entry-content entry-content-read-more">
						<p>President Trump said he&#8217;s a &#8220;perfect physical specimen&#8221; and feels better than ever after <a href="https://nypost.com/2020/10/02/president-trump-and-first-lady-test-positive-for-covid-19/">battling the coronavirus</a>.</p>
<p>&#8220;I&#8217;m back because I am a perfect physical specimen and I&#8217;m extremely young. And so I&#8217;m lucky in that way,&#8221; he said on Fox Business Thursday.</p>
<p>His comments came in response to the Commission on Presidential Debates announcing on Thursday that the next presidential debate next week in Miami <a href="https://nypost.com/2020/10/08/trump-i-will-not-waste-my-time-in-virtual-debate-with-biden/">will be virtual</a> with both Trump and Democrat Joe Biden participating from remote locations.</p>
<p>Trump <a href="https://nypost.com/2020/10/05/trump-releases-video-upon-return-to-white-house/">returned to the White House on Monday</a> after receiving&nbsp;three days of coronavirus treatment at Walter Reed National Military Medical Center that included supplemental oxygen and therapeutics, including the steroid <a href="https://nypost.com/2020/10/04/dexamethasone-the-newest-drug-in-trumps-covid-19-treatment/">dexamethasone</a> and <a href="https://nypost.com/article/what-is-regenerons-covid-19-treatment-touted-by-trump/">remdesivir</a>, a cocktail of antibodies.</p>
<figure id="attachment_16420143"  class="wp-caption aligncenter"><a class="" href="https://nypost.com/wp-content/uploads/sites/2/2020/10/trump-covid-specimen.jpg?quality=90&amp;strip=all"><img class="size-nypost-large-desktop-uncropped wp-image-16420143 lazyload"  alt="U.S. President Donald Trump waves upon return to the White House from Walter Reed National Military Medical Center" width="662" height="441" data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/trump-covid-specimen.jpg?quality=90&amp;strip=all&amp;w=300 300w, https://nypost.com/wp-content/uploads/sites/2/2020/10/trump-covid-specimen.jpg?quality=90&amp;strip=all&amp;w=640 640w, https://nypost.com/wp-content/uploads/sites/2/2020/10/trump-covid-specimen.jpg?quality=90&amp;strip=all&amp;w=1280 1280w, https://nypost.com/wp-content/uploads/sites/2/2020/10/trump-covid-specimen.jpg?quality=90&amp;strip=all&amp;w=662 662w, https://nypost.com/wp-content/uploads/sites/2/2020/10/trump-covid-specimen.jpg?quality=90&amp;strip=all&amp;w=1324 1324w" data-sizes="(max-width: 640px) 100vw, 662px"></a><figcaption class="wp-caption-text"><span>President Trump waves upon return to the White House from Walter Reed National Military Medical Center.</span><span class="credit">Getty Images</span></figcaption></figure>
<p>&#8220;I&#8217;d love to do a rally tonight. I wanted to do one last night. But I think I&#8217;m better to a point that I feel better than I did,&#8221; he said.</p>
<p>He said he <a href="https://nypost.com/2020/10/08/regeneron-seeks-emergency-approval-for-trump-backed-covid-drug/">received remdesivir</a>&nbsp;and it made all the difference.</p>
<p>&#8220;You take it and it beats the hell out of it. And I&#8217;m telling you I could have walked out of there 24 hours after I went in. I didn&#8217;t even have to go in, frankly. I think it would have gone away,&#8221; he said.</p>
			</div>
					</div>
						<div class="tag-list">
				<span>Filed under</span>
						<a href="/2020-presidential-election/" rel="tag">2020 presidential election</a>
									<span class="sep">,&nbsp;</span>
								<a href="/coronavirus/" rel="tag">Coronavirus</a>
									<span class="sep">,&nbsp;</span>
								<a href="https://nypost.com/tag/donald-trump/" rel="tag">donald trump</a>
								<span class="sep">,&nbsp;</span>
			<a href="https://nypost.com/2020/10/08/">10/8/20</a>		</div>
		
		<div id="sharebar-trigger-desktop"></div>

					<div class="floating-share">
	<div>
		<h3>Share this article:</h3>
		<div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Share this:</h3><div class="sd-content"><ul><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-16420050" class="share-facebook sd-button share-icon" href="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?share=facebook" target="_blank" title="Click to share on Facebook"><span>Facebook</span></a></li><li class="share-twitter"><a rel="nofollow noopener noreferrer" data-shared="sharing-twitter-16420050" class="share-twitter sd-button share-icon" href="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?share=twitter" target="_blank" title="Click to share on Twitter"><span>Twitter</span></a></li><li class="share-nyp-flipboard"><script async defer src="https://cdn.flipboard.com/web/buttons/js/flbuttons.min.js" type="text/javascript"></script>
			<a data-flip-widget="shareflip" href="https://flipboard.com" class="share-icon sd-button no-text share-nyp-flipboard" title="Flipboard">
				<span class="icon-flipboard">
					<span class="screen-reader-text">Flipboard</span>
				</span>
			</a></li><li class="share-whatsapp"><a rel="nofollow" class="share-whatsapp sd-button share-icon" href="whatsapp://send?text=Trump%20says%20he%20beat%20COVID-19%20because%20he&#039;s%20a%20&#039;perfect%20physical%20specimen&#039;%20https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?utm_source=whatsapp_sitebuttons&#038;utm_medium=site%20buttons&#038;utm_campaign=site%20buttons" title="Click to share on Whatsapp"><span>WhatsApp</span></a></li><li class="share-email"><a rel="nofollow noopener noreferrer" data-shared="" class="share-email sd-button share-icon" href="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?share=email" target="_blank" title="Click to email this to a friend"><span>Email</span></a></li><li class="share-nyp-post-url"><a rel="nofollow" data-shared="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/?utm_source=url_sitebuttons&amp;utm_medium=site%20buttons&amp;utm_campaign=site%20buttons" class="share-nyp-post-url sd-button share-icon" href="" title="Click to copy URL"><span>Copy</span></a></li><li class="share-end"></li></ul></div></div></div>	<div class="read-next-wrapper">
		<p class="read-next">
			<a href="https://knewz.com/young-toddler-snake-cage/?utm_source=nypost">Read Next</a>
		</p>
		<p class="read-next-link">
			<a class="desktop postid-16416570" href="https://knewz.com/young-toddler-snake-cage/?utm_source=nypost">
				Parents of kid found in cage near giant snake claim it was...			</a>
		</p>
	</div>
		</div>
</div>
		
			<div class="read-next-wrapper">
		<p class="read-next">
			<a href="https://knewz.com/young-toddler-snake-cage/?utm_source=nypost">Read Next</a>
		</p>
		<p class="read-next-link">
			<a class="desktop postid-16416570" href="https://knewz.com/young-toddler-snake-cage/?utm_source=nypost">
				Parents of kid found in cage near giant snake claim it was...			</a>
		</p>
	</div>
			
							<div class="nyp-article-footer-outbrain-wrapper">
			<div id="outbrainContainer0" data-ob-template="nypost" class="OBR" data-src="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/"></div>
			<script type="text/javascript">
				// set a default widget id
				var ob_id = "AR_3";

				// Select the proper template to use
				if ( nypost_screen == 'mobile' ) {
					ob_id = "MB_2";

									}

				OB_elements = ( typeof( OB_elements ) !== 'undefined' ) ? OB_elements : [];
				var OB_element = {};

				// Editable section
				OB_element.containerId = "outbrainContainer0";
				OB_element.widgetId  = ob_id;

				OB_elements.push( OB_element );
			</script>
		</div>
				
		<div class="comments outbrain-enabled">
					<div id="zergnet-widget-33405"></div>
		<script language="javascript" type="text/javascript">
		(function() {
		var zergnet = document.createElement('script');
		zergnet.type = 'text/javascript'; zergnet.async = true;
		zergnet.src = 'https://www.zergnet.com/zerg.js?id=33405';
		var znscr = document.getElementsByTagName('script')[0];
		znscr.parentNode.insertBefore(zergnet, znscr);
		})();
		</script>
							<script src="//assets.vidora.com/newscorp/js/nypost_articles.7c7e0f416376f79f.circular.js" defer></script>
					<div id="circular-widget"></div>
							</div>
	</div>
</div>

	
	<div id="highlight-share" class="highlight-share text-share-popup" role="dialog" aria-labelledby="text-share-popup-title">
	<p id="text-share-popup-title">Share Selection</p>
	<div class="share-content">
		<a target="_blank" class="facebook" href="" data-short-url="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/">
					</a>
		<a target="_blank" class="twitter" href="" data-short-url="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/">
					</a>
	</div>
	<div class="arrow"></div>
</div>

	<div class="sidebar right-column" id="sidebar-primary">
	<div class="box no-mobile module widget_nypost_trending_widget"><header class="module-title">				<h4 class="widget__title with-subtitle has-subtitle">
					<span class="widget__title-primary">Trending Now</span>
									<span class="widget-subtitle widget__title-subtitle">on NYPost.com</span>
								</h4>
				</header>
					<ol class="trending-list image-layout show">
		
						<li class="trending-story clearfix">
											<p class="share-count" tabindex="-1">
							<span class="screen-reader-text">This story has been shared 514,406 times.</span>
							<span aria-hidden="true">514,406</span>
						</p>
										<a class="story-photo-box" href="https://nypost.com/2020/10/14/email-reveals-how-hunter-biden-introduced-ukrainian-biz-man-to-dad/">
						<div class="trending-now__feature feature feature--branding-bg">
														<picture 		class="featured-image trending-story-image"
					tabindex="-1"
			>
					<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/Hunter-BIden-Emails-HP-4.jpg?quality=80&#038;strip=all&#038;w=600&#038;h=400&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/Hunter-BIden-Emails-HP-4.jpg?quality=80&#038;strip=all&#038;w=300&#038;h=200&#038;crop=1 1x"
				data-sizes=""
				media="(min-width: 640px)"
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
							<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/Hunter-BIden-Emails-HP-4.jpg?quality=80&#038;strip=all&#038;w=600&#038;h=400&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/Hunter-BIden-Emails-HP-4.jpg?quality=80&#038;strip=all&#038;w=300&#038;h=200&#038;crop=1 1x"
				media="(max-width: 639px)"
				data-sizes=""
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
					<img
				alt=""
				class="lazyload"
				src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
			>
	</picture>
						</div>
													<span class="trending-story__headline">Biden introduced Ukraine exec to VP dad: emails</span>
											</a>
				</li>
											<li class="trending-story clearfix">
											<p class="share-count" tabindex="-1">
							<span class="screen-reader-text">This story has been shared 346,044 times.</span>
							<span aria-hidden="true">346,044</span>
						</p>
										<a class="story-photo-box" href="https://nypost.com/2020/10/13/stephen-gilmores-wife-denies-rumored-cam-newton-dinner/">
						<div class="trending-now__feature feature feature--branding-bg">
														<picture 		class="featured-image trending-story-image"
					tabindex="-1"
			>
					<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/Stephon-Gilmore-Gabrielle-Glenn-Cam-Newton.jpg?quality=80&#038;strip=all&#038;w=600&#038;h=400&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/Stephon-Gilmore-Gabrielle-Glenn-Cam-Newton.jpg?quality=80&#038;strip=all&#038;w=300&#038;h=200&#038;crop=1 1x"
				data-sizes=""
				media="(min-width: 640px)"
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
							<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/Stephon-Gilmore-Gabrielle-Glenn-Cam-Newton.jpg?quality=80&#038;strip=all&#038;w=600&#038;h=400&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/Stephon-Gilmore-Gabrielle-Glenn-Cam-Newton.jpg?quality=80&#038;strip=all&#038;w=300&#038;h=200&#038;crop=1 1x"
				media="(max-width: 639px)"
				data-sizes=""
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
					<img
				alt=""
				class="lazyload"
				src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
			>
	</picture>
						</div>
													<span class="trending-story__headline">Patriots teammate's 'annoyed' wife denies Cam Newton dinner</span>
											</a>
				</li>
											<li class="trending-story clearfix">
											<p class="share-count" tabindex="-1">
							<span class="screen-reader-text">This story has been shared 224,311 times.</span>
							<span aria-hidden="true">224,311</span>
						</p>
										<a class="story-photo-box" href="https://nypost.com/2020/10/14/hunter-biden-emails-show-leveraging-connections-with-dad-to-boost-burisma-pay/">
						<div class="trending-now__feature feature feature--branding-bg">
														<picture 		class="featured-image trending-story-image"
					tabindex="-1"
			>
					<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/hunter-joe-biden.jpg?quality=80&#038;strip=all&#038;w=600&#038;h=400&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/hunter-joe-biden.jpg?quality=80&#038;strip=all&#038;w=300&#038;h=200&#038;crop=1 1x"
				data-sizes=""
				media="(min-width: 640px)"
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
							<source
				data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/hunter-joe-biden.jpg?quality=80&#038;strip=all&#038;w=600&#038;h=400&#038;crop=1 2x, https://nypost.com/wp-content/uploads/sites/2/2020/10/hunter-joe-biden.jpg?quality=80&#038;strip=all&#038;w=300&#038;h=200&#038;crop=1 1x"
				media="(max-width: 639px)"
				data-sizes=""
				 srcset="https://nypost.com/wp-content/themes/nypost-2016/static/images/1x1-000000-0.png 1w" sizes="100vw" >
					<img
				alt=""
				class="lazyload"
				src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
			>
	</picture>
						</div>
													<span class="trending-story__headline">Hunter Biden emails show leveraging links with dad to boost Burisma pay</span>
											</a>
				</li>
							
		</ol>

		</div><div class="box no-mobile module widget_nypost_dfp_ad_widget"><div id="div-gpt-ad-rec_atf" class="dfp-ad dfp-ad-post dfp-rec_atf" aria-hidden="true" tabindex="-1">
<div class='ad-wrapper'>
	<script type='text/javascript'>
var adWrapper = document.querySelector('.slideshow-ad-wrapper');		if ( typeof googletag !== 'undefined' ) {
		googletag.cmd.push(function() {  if (-1 !== definedSlots.indexOf("div-gpt-ad-rec_atf")) {    googletag.display("div-gpt-ad-rec_atf");  }});
		}
	</script>
</div>
</div>
</div><div class="box no-mobile module widget_nypost_dfp_ad_widget"><div id="div-gpt-ad-native" class="dfp-ad dfp-ad-post dfp-native" aria-hidden="true" tabindex="-1">
<div class='ad-wrapper'>
	<script type='text/javascript'>
var adWrapper = document.querySelector('.slideshow-ad-wrapper');		if ( typeof googletag !== 'undefined' ) {
		googletag.cmd.push(function() {  if (-1 !== definedSlots.indexOf("div-gpt-ad-native")) {    googletag.display("div-gpt-ad-native");  }});
		}
	</script>
</div>
</div>
</div><div class="box no-mobile module widget_nypost_zone_widget"><header class="module-title">
		<h4 class="widget__title with-subtitle no-subtitle">
			<span class="widget__title-primary">what to shop now</span>
				</h4>

		</header>								<div class="module-wrapper first">
															<div class="story-photo-box">
							<a href="https://nypost.com/article/best-prime-day-deals-this-year/"
																>
								<img src="https://nypost.com/wp-content/uploads/sites/2/2020/10/amazon-prime-deals-03.jpg?quality=90&#038;strip=all&#038;w=300&#038;h=200&#038;crop=1" />
								
													</a>
							<h5>
								<a href="https://nypost.com/article/best-prime-day-deals-this-year/"
																		>
									The best Amazon Prime Day deals you can buy today								</a>
							</h5>
						</div>
																											<div class="rule"></div>
												<div class="module-item">
														<h5>
								<a href="https://nypost.com/2020/10/13/prime-day-2020-headphone-deals/"
																		>
									The best headphone deals you can buy this Amazon Prime Day								</a>
							</h5>
						</div>
																											<div class="rule"></div>
												<div class="module-item">
														<h5>
								<a href="https://nypost.com/2020/10/13/prime-day-kitchen-deals/"
																		>
									The best Prime Day 2020 deals on kitchen appliances, cooking gear and more								</a>
							</h5>
						</div>
														</div>
					
		</div><div class="box no-mobile module widget_text">			<div class="textwidget"><div style="margin:-21px -21px -26px;font-family:neue-haas-grotesk-ny-post, sans-serif"><a href="https://knewz.com/?utm_source=nypost&amp;utm_medium=display&amp;utm_campaign=launch_placements" target="_blank" rel="noopener noreferrer"><img src="https://vip.nypost.com/wp-content/uploads/sites/2/2020/02/knewz_300x250.png" alt="“knewz" /></a></div>
</div>
		</div><div class="box no-mobile module widget_nypost_pagesix_rss_widget">
		<div class="module-title">
			<h4 class="widget__title">
															<span aria-hidden="true">Now On</span>
										<span class="screen-reader-text">Now on Page Six</span>
							</h4>

							<svg viewBox="0 0 220.625 57.445" class="logo">
					<use xlink:href="#pagesix-logo"></use>
				</svg>
					</div>

		<ol class="module-wrapper">
			<li class="story-photo-box widget__story--divider">
		<a href="https://pagesix.com/2020/10/14/jordyn-woods-on-critics-biggest-misconceptions-people-dont-really-know-me/">
			<img class="lazyload" data-src="https://pagesix.com/wp-content/uploads/sites/3/2020/10/Jordyn-Woods-1.jpg?quality=90&#038;strip=all&#038;w=322&#038;h=213&#038;crop=1" alt="" tabindex="-1">
						<span class="widget__story-title" aria-hidden="true">Jordyn Woods on overcoming bullying: ‘People don’t really know me’</span>
			<span class="screen-reader-text">Jordyn Woods on overcoming bullying: ‘People don’t really know me’</span>
		</a>
	</li>
			</ol>
					<a class="see-all" href="https://pagesix.com">SEE ALL</a>
				</div><div class="box no-mobile module widget_nypost_dfp_ad_widget"><div id="div-gpt-ad-rec_widget" class="dfp-ad dfp-ad-post dfp-rec_widget" aria-hidden="true" tabindex="-1">
<div class='ad-wrapper'>
	<script type='text/javascript'>
var adWrapper = document.querySelector('.slideshow-ad-wrapper');		if ( typeof googletag !== 'undefined' ) {
		googletag.cmd.push(function() {  if (-1 !== definedSlots.indexOf("div-gpt-ad-rec_widget")) {    googletag.display("div-gpt-ad-rec_widget");  }});
		}
	</script>
</div>
</div>
</div><div class="box no-mobile module widget_nypost_custom_widget"><header class="module-title">
		<h4 class="widget__title with-subtitle no-subtitle">
			<span class="widget__title-primary">Video</span>
				</h4>

		</header>			<div class="module-wrapper first">
							
									<div class="story-photo-box">
						<a href="https://nypost.com/2020/10/14/youtube-bans-covid-19-vaccine-misinformation/" class="module-link" >
							<img class="lazyload module-image" data-src="https://nypost.com/wp-content/uploads/sites/2/2020/10/youtube-coronavirus-vaccine-videos.jpg?quality=90&#038;strip=all&#038;w=300&#038;h=200&#038;crop=1" alt="YouTube to remove videos with misinformation about COVID vaccines" />																				</a>
						<h5>
							<a href="https://nypost.com/2020/10/14/youtube-bans-covid-19-vaccine-misinformation/">
								YouTube bans COVID vaccine misinformation							</a>
						</h5>
					</div>
										</div>
		</div><div id="div-gpt-ad-rec_btf" class="dfp-ad dfp-ad-post dfp-rec_btf" aria-hidden="true" tabindex="-1">
<div class='ad-wrapper'>
	<script type='text/javascript'>
var adWrapper = document.querySelector('.slideshow-ad-wrapper');		if ( typeof googletag !== 'undefined' ) {
		googletag.cmd.push(function() {  if (-1 !== definedSlots.indexOf("div-gpt-ad-rec_btf")) {    googletag.display("div-gpt-ad-rec_btf");  }});
		}
	</script>
</div>
</div>

	</div>

					</div><!-- /container -->
		</div><!-- /background-wrapper -->
	</div><!-- /content -->

	<div class="widget-more-stories">
		<div class="container">
			<div class="more-stories">
				<div class="widget-title">
					<h4 class="widget-more-stories__heading">More Stories</h4>
				</div>
				<div class="widget">
		<h4 class="widgettitle">
			page six		</h4>
		<div class="module-wrapper">
			<div class="story-photo-box">
				<a href="https://pagesix.com/2020/10/14/cardi-b-was-in-bed-with-offset-when-she-posted-her-nude-photo/"><img class="lazyload" data-srcset="https://pagesix.com/wp-content/uploads/sites/3/2018/09/cardi-b-offset.jpg?quality=80&#038;strip=all&#038;w=300&#038;h=200&#038;crop=1 1x, https://pagesix.com/wp-content/uploads/sites/3/2018/09/cardi-b-offset.jpg?quality=80&#038;strip=all&#038;w=600&#038;h=400&#038;crop=1 2x" alt="" tabindex="-1" aria-hidden="true"></a>
				<h5><a href="https://pagesix.com/2020/10/14/cardi-b-was-in-bed-with-offset-when-she-posted-her-nude-photo/">Cardi B was in bed with Offset when she accidentally posted her nude photo</a></h5>
			</div>
		</div>
	</div>
		<div class="widget">
				<div class="nyp-article-footer-outbrain-wrapper">
			<div id="outbrainContainer1" data-ob-template="nypost" class="OBR" data-src="https://nypost.com/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/"></div>
			<script type="text/javascript">
				// set a default widget id
				var ob_id = "AR_12";

				// Select the proper template to use
				if ( nypost_screen == 'mobile' ) {
					ob_id = "AR_12";

									}

				OB_elements = ( typeof( OB_elements ) !== 'undefined' ) ? OB_elements : [];
				var OB_element = {};

				// Editable section
				OB_element.containerId = "outbrainContainer1";
				OB_element.widgetId  = ob_id;

				OB_elements.push( OB_element );
			</script>
		</div>
			</div>
		<div class="widget">
		<h4 class="widgettitle">
			nypost		</h4>
		<div class="module-wrapper">
			<div class="story-photo-box">
				<a href="https://nypost.com/2020/10/14/email-reveals-how-hunter-biden-introduced-ukrainian-biz-man-to-dad/"><img class="lazyload" data-srcset="https://nypost.com/wp-content/uploads/sites/2/2020/10/Hunter-BIden-Emails-HP-4.jpg?quality=80&#038;strip=all&#038;w=300&#038;h=200&#038;crop=1 1x, https://nypost.com/wp-content/uploads/sites/2/2020/10/Hunter-BIden-Emails-HP-4.jpg?quality=80&#038;strip=all&#038;w=600&#038;h=400&#038;crop=1 2x" alt="" tabindex="-1" aria-hidden="true"></a>
				<h5><a href="https://nypost.com/2020/10/14/email-reveals-how-hunter-biden-introduced-ukrainian-biz-man-to-dad/">Biden introduced Ukraine exec to VP dad: emails</a></h5>
			</div>
		</div>
	</div>
				</div>
					</div>
	</div>

	<footer id="page-footer" class="clearfix">
		<div id="footer-wrapper" class="container">
	<div id="footer-branding">
				<a
	href="https://nypost.com/"
	id="footer-logo"
	class="footer-logo-nyp"
		data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;New York Post&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"

>
	<span class="screen-reader-text">New York Post</span>
			<svg viewBox="0 0 386.999 57.708">
			<use xlink:href="#nypost-logo"></use>
		</svg>
	</a>
			<ul class="footer-social desktop">
		
		
			
				
					
											
						<li class="footer-facebook-icon">
							<a
								href="https://www.facebook.com/nypost"
								target="_blank"
								data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Facebook&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
							>
								Facebook							</a>
						</li>

									
			
				
					
																								
						<li class="footer-twitter-icon">
							<a
								href="https://twitter.com/nypost"
								target="_blank"
								data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Twitter&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
							>
								Twitter							</a>
						</li>

									
			
				
					
																								
						<li class="footer-instagram-icon">
							<a
								href="https://instagram.com/nypost"
								target="_blank"
								data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Instagram&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
							>
								Instagram							</a>
						</li>

									
			
				
					
											
						<li class="footer-linkedin-icon">
							<a
								href="https://www.linkedin.com/company/new-york-post"
								target="_blank"
								data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;LinkedIn&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
							>
								LinkedIn							</a>
						</li>

									
			
				
					
											
						<li class="footer-email-icon">
							<a
								href="https://email.nypost.com/"
								target="_blank"
								data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Email&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
							>
								Email							</a>
						</li>

									
			
				
					
											
						<li class="footer-youtube-icon">
							<a
								href="https://www.youtube.com/nypost"
								target="_blank"
								data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;YouTube&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
							>
								YouTube							</a>
						</li>

									
						</ul>
				<div id="footer-mobile" class="mobile">
			<div id="footer-links" class="clearfix">
				<div class="menu-mobile-footer-links-container"><ul id="menu-mobile-footer-links" class="menu"><li id="menu-item-7838038" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7838038"><a href="https://email.nypost.com/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Email Newsletters&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Email Newsletters</a></li>
<li id="menu-item-10140970" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10140970"><a href="https://nypost.com/mobile-apps/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Mobile Apps&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Mobile Apps</a></li>
<li id="menu-item-10140972" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10140972"><a href="https://nypost.com/contact/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Contact Us&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Contact Us</a></li>
<li id="menu-item-10203489" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10203489"><a href="https://nypost.com/tips/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Tips&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Tips</a></li>
</ul></div>			</div>
			<div id="controls">
			</div>
				<ul class="footer-social ">
		
		
			
				
					
											
						<li class="footer-facebook-icon">
							<a
								href="https://www.facebook.com/nypost"
								target="_blank"
								data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Facebook&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
							>
								Facebook							</a>
						</li>

									
			
				
					
																								
						<li class="footer-twitter-icon">
							<a
								href="https://twitter.com/nypost"
								target="_blank"
								data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Twitter&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
							>
								Twitter							</a>
						</li>

									
			
				
					
																								
						<li class="footer-instagram-icon">
							<a
								href="https://instagram.com/nypost"
								target="_blank"
								data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Instagram&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
							>
								Instagram							</a>
						</li>

									
			
				
					
											
						<li class="footer-linkedin-icon">
							<a
								href="https://www.linkedin.com/company/new-york-post"
								target="_blank"
								data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;LinkedIn&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
							>
								LinkedIn							</a>
						</li>

									
			
				
					
											
						<li class="footer-email-icon">
							<a
								href="https://email.nypost.com/"
								target="_blank"
								data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Email&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
							>
								Email							</a>
						</li>

									
			
				
					
											
						<li class="footer-youtube-icon">
							<a
								href="https://www.youtube.com/nypost"
								target="_blank"
								data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;YouTube&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
							>
								YouTube							</a>
						</li>

									
						</ul>
		</div>
	</div>
	<div id="footer-nav" class="desktop clearfix footer-nav__nypost">
		<div class="menu-footer-menu-container"><ul id="menu-footer-menu" class="menu"><li id="menu-item-1612816" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1612816"><a href="#" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Sections &amp; Features&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Sections &#038; Features</a>
<ul class="sub-menu">
	<li id="menu-item-9914268" class="menu-item menu-item-type-taxonomy menu-item-object-section current-article-ancestor current-menu-parent current-article-parent menu-item-9914268"><a href="/news/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;News&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">News</a></li>
	<li id="menu-item-16343598" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-16343598"><a href="/2020-presidential-election/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Election 2020&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Election 2020</a></li>
	<li id="menu-item-9914279" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914279"><a href="/metro/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Metro&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Metro</a></li>
	<li id="menu-item-9914283" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914283"><a href="/sports/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Sports&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Sports</a></li>
	<li id="menu-item-9914273" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914273"><a href="/business/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Business&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Business</a></li>
	<li id="menu-item-9914280" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914280"><a href="/opinion/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Opinion&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Opinion</a></li>
	<li id="menu-item-9914274" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914274"><a href="/entertainment/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Entertainment&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Entertainment</a></li>
	<li id="menu-item-9914276" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914276"><a href="/fashion/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Fashion&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Fashion</a></li>
	<li id="menu-item-14486543" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-14486543"><a href="https://nypost.com/shopping/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;NY Post Shopping&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">NY Post Shopping</a></li>
	<li id="menu-item-9914277" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914277"><a href="/living/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Living&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Living</a></li>
	<li id="menu-item-9914278" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914278"><a href="/media/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Media&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Media</a></li>
	<li id="menu-item-9914284" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914284"><a href="/tech/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Tech&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Tech</a></li>
	<li id="menu-item-9914282" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914282"><a href="/real-estate/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Real Estate&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Real Estate</a></li>
	<li id="menu-item-9914285" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914285"><a href="/video/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Video&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Video</a></li>
	<li id="menu-item-9914281" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9914281"><a href="/photos/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Photos&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Photos</a></li>
	<li id="menu-item-9914292" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9914292"><a href="/alexa/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Alexa&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Alexa</a></li>
	<li id="menu-item-9914293" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9914293"><a href="/covers/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Covers&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Covers</a></li>
	<li id="menu-item-9914294" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9914294"><a href="/horoscopes/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Horoscopes&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Horoscopes</a></li>
	<li id="menu-item-13226362" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13226362"><a href="https://nypost.com/odds/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Sports Odds&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Sports Odds</a></li>
	<li id="menu-item-16125052" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-16125052"><a href="/columnists" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Columnists&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Columnists</a></li>
	<li id="menu-item-9914295" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9914295"><a href="/classifieds/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Classifieds&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Classifieds</a></li>
</ul>
</li>
<li id="menu-item-1612818" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1612818"><a href="#" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Newsletters &amp; Feeds&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Newsletters &#038; Feeds</a>
<ul class="sub-menu">
	<li id="menu-item-9914298" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9914298"><a href="https://email.nypost.com/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Email Newsletters&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Email Newsletters</a></li>
	<li id="menu-item-9914300" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9914300"><a href="https://nypost.com/rssfeeds/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;RSS Feeds&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">RSS Feeds</a></li>
	<li id="menu-item-9914302" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9914302"><a target="_blank" rel="noopener noreferrer" href="https://store.nypost.com/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;New York Post Store&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">New York Post Store</a></li>
	<li id="menu-item-9914304" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-9914304"><a href="#" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Home Delivery&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Home Delivery</a>
	<ul class="sub-menu">
		<li id="menu-item-9914305" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9914305"><a target="_blank" rel="noopener noreferrer" href="https://subscribe.nypost.com/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Subscribe&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Subscribe</a></li>
		<li id="menu-item-9914306" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9914306"><a target="_blank" rel="noopener noreferrer" href="https://my.nypost.com/account/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Manage Subscription&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Manage Subscription</a></li>
		<li id="menu-item-9914322" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9914322"><a target="_blank" rel="noopener noreferrer" href="https://nypost.com/home-delivery/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Delivery Help&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Delivery Help</a></li>
	</ul>
</li>
</ul>
</li>
<li id="menu-item-1612820" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1612820"><a href="#" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Help\/Support&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Help/Support</a>
<ul class="sub-menu">
	<li id="menu-item-9914310" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9914310"><a href="https://nypost.com/customer-service/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Customer Service&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Customer Service</a></li>
	<li id="menu-item-1616896" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1616896"><a target="_blank" rel="noopener noreferrer" href="http://nypost.help/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;App FAQ &amp; Help&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">App FAQ &#038; Help</a></li>
	<li id="menu-item-9914313" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-9914313"><a href="#" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Contact Us&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Contact Us</a>
	<ul class="sub-menu">
		<li id="menu-item-10211271" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10211271"><a href="https://nypost.com/tips/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Tips&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Tips</a></li>
		<li id="menu-item-9914316" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9914316"><a href="https://nypost.com/contact/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Newsroom&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Newsroom</a></li>
		<li id="menu-item-9914315" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9914315"><a href="https://nypost.com/contact/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Letters to the Editor&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Letters to the Editor</a></li>
		<li id="menu-item-9914317" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9914317"><a rel="nofollow" href="http://www.nypostreprints.com/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Reprints&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Reprints</a></li>
		<li id="menu-item-7879047" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7879047"><a href="/careers/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Careers&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Careers</a></li>
	</ul>
</li>
</ul>
</li>
<li id="menu-item-10042767" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-10042767"><a href="#" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Apps&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Apps</a>
<ul class="sub-menu">
	<li id="menu-item-10042768" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10042768"><a target="_blank" rel="nofollow" href="https://itunes.apple.com/us/app/new-york-post-iphone-edition/id410094240?mt=8" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;iPhone App&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">iPhone App</a></li>
	<li id="menu-item-10042770" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10042770"><a target="_blank" rel="nofollow" href="https://itunes.apple.com/us/app/new-york-post-ipad-edition/id378590820?mt=8" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;iPad App&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">iPad App</a></li>
	<li id="menu-item-10042771" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10042771"><a target="_blank" rel="nofollow" href="https://play.google.com/store/apps/details?id=br.com.golmobile.nypost&#038;hl=en" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Android Phone&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Android Phone</a></li>
	<li id="menu-item-10042772" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10042772"><a target="_blank" rel="nofollow" href="https://play.google.com/store/apps/details?id=com.nypost.tablet&#038;hl=en" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Android Tablet&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Android Tablet</a></li>
	<li id="menu-item-9914318" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-9914318"><a href="#" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Advertise&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Advertise</a>
	<ul class="sub-menu">
		<li id="menu-item-9914319" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9914319"><a target="_blank" rel="noopener noreferrer" href="http://advertising.nypost.com/" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Media Kit&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Media Kit</a></li>
		<li id="menu-item-10042794" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10042794"><a target="_blank" rel="noopener noreferrer" href="http://advertising.nypost.com/#contact" data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Contact&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}">Contact</a></li>
	</ul>
</li>
</ul>
</li>
</ul></div>	</div>
	<div id="footer-promo" class="desktop">
			</div>
		<div id="footer-legal">
		<p>
						<span class="copyright" id="copyright">&copy; 2020 NYP Holdings, Inc. All Rights Reserved</span>
			<a
				href="https://nypost.com/terms/"
				data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Terms of Use&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
			>
				Terms of Use			</a>
			<a
				href="https://nypost.com/privacy/"
				data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Privacy Notice&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
			>
				Privacy Notice			</a>
			<a
				class="desktop"
				href="https://nypost.com/privacy/#adchoices"
				data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Your Ad Choices&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
			>
				Your Ad Choices			</a>
			<a
				href="https://nypost.com/sitemap/"
				data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Sitemap&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
			>
				Sitemap			</a>
			<a
				class="desktop"
				href="https://nypost.com/ca-privacy-rights/"
				data-ga-event="{&quot;category&quot;:&quot;Desktop Footer&quot;,&quot;action&quot;:&quot;Your California Privacy Rights&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
			>
				Your California Privacy Rights			</a>
			<!-- OneTrust Cookies Settings button start -->
			<button id="ot-sdk-btn" class="ot-sdk-show-settings desktop">Do Not Sell My Personal Information</button>
			<!-- OneTrust Cookies Settings button end -->
		</p>
		<p class="privacy-links mobile">
			<a
				href="https://nypost.com/ca-privacy-rights/"
				data-ga-event="{&quot;category&quot;:&quot;Mobile Footer&quot;,&quot;action&quot;:&quot;Your California Privacy Rights&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
			>
				Your California Privacy Rights			</a>
			<!-- OneTrust Cookies Settings button start -->
			<button id="ot-sdk-btn" class="ot-sdk-show-settings">Do Not Sell My Personal Information</button>
			</p>
		<a href="https://wpvip.com/?utm_source=vip_powered_wpcom&#038;utm_medium=web&#038;utm_campaign=VIP%20Footer%20Credit&#038;utm_term=nypost.com" rel="generator nofollow" class="powered-by-wpcom"><img src="https://nypost.com/wp-content/mu-plugins/vip-helpers/images/vip-powered-dark-small.png" width="187" height="26" alt="Powered by WordPress.com VIP" /></a>	</div>
</div>
	</footer>
	<!-- App Flyout for Page Six -->
</div><!-- /content-wrapper -->


<div id="web-alerts-modal" class="web-alerts-modal" role="alertdialog" tabindex="0" aria-describedby="dialog-description" aria-modal="true" hidden>
	<div class="modal-inner">
		<svg viewBox="0 0 386.999 57.708" class="logo logo--nypost" role="img" aria-labelledby="logo-nypost-title">
	<title id="logo-nypost-title">New York Post</title>
	<use xlink:href="https://nypost.com/wp-content/themes/nypost-2016/static/images/nypost-svg.svg#nypost-logo"></use>
</svg>
		<p id="dialog-description" class="modal-text">
			Would you like to receive desktop browser notifications about breaking news and other major stories?		</p>
		<p class="modal-buttons">
			<button
				id="button-no"
				class="modal-button"
				data-ga-event="{&quot;category&quot;:&quot;Desktop alert sign-up&quot;,&quot;action&quot;:&quot;Not Now&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
			>
				Not Now			</button>
			<button
				id="button-yes"
				class="modal-button modal-button-nypost"
				data-ga-event="{&quot;category&quot;:&quot;Desktop alert sign-up&quot;,&quot;action&quot;:&quot;Yes Please&quot;,&quot;label&quot;:&quot;ga_current_url&quot;}"
			>
				Yes Please			</button>
		</p>
	</div>
</div>

		<script type='text/javascript'>
			var nypostGaJs = {"scrollTracking":true,"postType":"article","isTax":false,"isHome":false};
		</script>

				<script type="text/javascript" src="https://nypost.com/wp-content/themes/nypost-2016/static/js/show-ads.js"></script>
		<script>
			if ( 'undefined' === typeof dimension21 ) {
				var dimension21 = 'yes';
			}
		</script>

				<script>
			if ( typeof nypost_screen !== 'undefined' ) {
				ga('set', 'dimension8', nypost_screen);
			}
			ga('set', 'dimension3', '2020 presidential election,Coronavirus,donald trump');
ga('set', 'dimension2', 'Mark Moore');
ga('set', 'dimension1', 'article');
ga('set', 'dimension5', 'standard');
ga('set', 'dimension6', 'Trump says he beat COVID-19 because he\'s a \'perfect physical specimen\'');
ga('set', 'dimension7', '');
ga('set', 'dimension12', 'Trump says he beat COVID-19 because he\'s a \'perfect physical specimen\'');
ga('set', 'dimension9', '2020-10-08');
ga('set', 'dimension10', '09: 23');
ga('set', 'dimension11', '16420050');
ga('set', 'dimension4', 'news');
ga('set', 'dimension15', 'donald trump');
ga('set', 'dimension16', '229');
ga('set', 'dimension17', 'no');
ga('set', 'dimension40', 'yes');
ga('set', 'dimension44', 'no');
			ga('set', 'dimension21', dimension21);
			// News Connect Global Identifier
			var ncgGetCookie = function( name ) {
				var regexp = new RegExp( '(?:^' + name + '|;*' + name + ')=(.*?)(?:;|$)', 'g' ),
					result = regexp.exec( document.cookie );

				return ( null === result ) ? null : result[1];
			}

			var ncgId = ncgGetCookie( '_ncg_id_' );

			if ( null !== ncgId ) {
				ga( 'set', 'dimension32', ncgId );
			}

			// Get Amazon links.
			var hasAmazon = "false";
			var links = document.links;
			var amazonLinks = [];
			for (var i = 0; links.length > i; i++) {
				if (links[i].href.indexOf('amazon.com') > 0) {
					links[i].setAttribute(
						'data-ga-event',
					    JSON.stringify({
					        category: 'affiliate ecommerce click',
					        action: 'amazon',
					        label: links[i].href
      					})
      				);
					amazonLinks.push(links[i].href);
					hasAmazon = "amazon";
				}
			}
			ga('set', 'dimension46', hasAmazon);

			if (amazonLinks.length > 0) {
				ga('set', 'dimension47', amazonLinks.join());
			}
			ga('require', 'linkid', 'linkid.js');
			ga('require', 'displayfeatures');
			ga('set', "contentGroup1", "article");
ga('set', "contentGroup2", "news");
ga('set', "contentGroup3", "nypost.com");

							ga('send', 'pageview');
					</script>
				<!-- Google Tag Manager -->
		<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-TWX9Z9"
		height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
		<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
		new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
		})(window,document,'script','dataLayer',"GTM-TWX9Z9");</script>
		<!-- End Google Tag Manager -->
	
		
		<!-- START Parse.ly Include: Standard -->
		<div id="parsely-root" style="display: none">
		<div id="parsely-cfg" data-parsely-site="nypost.com"></div>
		</div>
		<script>
		(function(s, p, d) {
		var h=d.location.protocol, i=p+"-"+s,
		e=d.getElementById(i), r=d.getElementById(p+"-root"),
		u=h==="https:"?"d1z2jf7jlzjs58.cloudfront.net"
		:"static."+p+".com";
		if (e) return;
		e = d.createElement(s); e.id = i; e.async = true;
		e.src = h+"//"+u+"/p.js"; r.appendChild(e);
		})("script", "parsely", document);
		</script>
		<!-- END Parse.ly Include -->
			<div id="sharing_email" style="display: none;">
		<form action="/2020/10/08/trump-i-beat-covid-19-because-im-a-perfect-physical-specimen/" method="post">
			<label for="target_email">Send to Email Address</label>
			<input type="email" name="target_email" id="target_email" value="" />

			
				<label for="source_name">Your Name</label>
				<input type="text" name="source_name" id="source_name" value="" />

				<label for="source_email">Your Email Address</label>
				<input type="email" name="source_email" id="source_email" value="" />

						<input type="text" id="jetpack-source_f_name" name="source_f_name" class="input" value="" size="25" autocomplete="off" title="This field is for validation and should not be changed" />
			<div id="g-recaptcha"></div>
			<img style="float: right; display: none" class="loading" src="https://nypost.com/wp-content/mu-plugins/jetpack-9.0/modules/sharedaddy/images/loading.gif" alt="loading" width="16" height="16" />
			<input type="submit" value="Send Email" class="sharing_send" />
			<a rel="nofollow" href="#cancel" class="sharing_cancel" role="button">Cancel</a>

			<div class="errors errors-1" style="display: none;">
				Post was not sent - check your email addresses!			</div>

			<div class="errors errors-2" style="display: none;">
				Email check failed, please try again			</div>

			<div class="errors errors-3" style="display: none;">
				Sorry, your blog cannot share posts by email.			</div>
		</form>
	</div>
<div id="sharing-nyp-url" role="dialog" aria-labelledby="copy-dialog-title" style="display:none">
	<div class="sharing-url-wrapper">
			<a href="#" class="modal-close" title="Close">
			<i class="icon-close"></i>
		</a>
			<span id="copy-dialog-title" class="copy-title">click to copy</span>
		<span class="share-url"></span>
		<input id="sharing-url-input" type="text" readonly="readonly" class="sharing-url-input" aria-label="Share link" value="">
	</div>
</div>
<link rel="preload" href="https://nypost.com/wp-content/themes/nypost-2016/plugins/brightcove/build/picture-in-picture.css?ver=1.0.6" class="wp-asset-manager nypost-pip-style" media="all" as="style" onload="this.onload=null;this.rel='stylesheet'" /><noscript><link rel="stylesheet" href="https://nypost.com/wp-content/themes/nypost-2016/plugins/brightcove/build/picture-in-picture.css?ver=1.0.6" class="wp-asset-manager nypost-pip-style" media="all" /></noscript><link rel="stylesheet" class="wp-asset-manager grunion-css" href="https://nypost.com/wp-content/mu-plugins/jetpack-9.0/modules/contact-form/css/grunion.css?ver=9.0.2" media="print" onload="this.onload=null;this.media='all'" /><noscript><link rel="stylesheet" href="https://nypost.com/wp-content/mu-plugins/jetpack-9.0/modules/contact-form/css/grunion.css?ver=9.0.2" media="all" class="wp-asset-manager grunion-css" /></noscript><script type='text/javascript' defer src='https://nypost.com/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4'></script>
<script type='text/javascript' defer src='https://nypost.com/wp-content/themes/nypost-2016/static/js/nypost-article.bundle.js?ver=b9c33d3efa6a887d571d'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var nypZephr = {"siteId":"nypost","cdnDomain":"zephr.nypost.com","contentId":"16420050","contentType":"article","embedScriptBundle":["https:\/\/nypost.com\/wp-includes\/js\/jquery\/jquery.js","https:\/\/nypost.com\/wp-content\/themes\/nypost-2016\/plugins\/zephr\/build\/embed.bundle.min.js?ver=65f1993e676f9a62d351"],"env":"production","rampUp":"","components":[{"name":"flyout business-report left","options":{"scrollDelay":1200,"type":"inject"}},{"name":"flyout business-report right","options":{"scrollDelay":1200,"type":"inject","placement":"right"}},{"name":"flyout metro-daily left","options":{"scrollDelay":1200,"type":"inject"}},{"name":"flyout metro-daily right","options":{"scrollDelay":1200,"type":"inject","placement":"right"}},{"name":"flyout morning-report left","options":{"scrollDelay":1200,"type":"inject"}},{"name":"flyout morning-report right","options":{"scrollDelay":1200,"type":"inject","placement":"right"}},{"name":"flyout post-opinion left","options":{"scrollDelay":1200,"type":"inject"}},{"name":"flyout post-opinion right","options":{"scrollDelay":1200,"type":"inject","placement":"right"}},{"name":"flyout starting-lineup left","options":{"scrollDelay":1200,"type":"inject"}},{"name":"flyout starting-lineup right","options":{"scrollDelay":1200,"type":"inject","placement":"right"}},{"name":"flyout hd-app-promo left","options":{"scrollDelay":1200,"type":"inject"}},{"name":"flyout hd-app-promo right","options":{"scrollDelay":1200,"type":"inject","placement":"right"}},{"name":"flyout outside-hd-tablet-promo left","options":{"scrollDelay":1200,"type":"inject"}},{"name":"flyout outside-hd-tablet-promo right","options":{"scrollDelay":1200,"type":"inject","placement":"right"}},{"name":"flyout nyp-survey left","options":{"scrollDelay":1200,"type":"inject"}},{"name":"flyout nyp-survey right","options":{"scrollDelay":1200,"type":"inject","placement":"right"}},{"name":"flyout sports-podcasts-announcement left","options":{"scrollDelay":1200,"type":"inject"}},{"name":"flyout sports-podcasts-announcement right","options":{"scrollDelay":1200,"type":"inject","placement":"right"}}]};
/* ]]> */
</script>
<script type='text/javascript' defer src='https://nypost.com/wp-content/themes/nypost-2016/plugins/zephr/build/app.bundle.min.js?ver=65f1993e676f9a62d351'></script>
<script type='text/javascript' defer src='https://nypost.com/wp-content/themes/nypost-2016/static/js/nypost-recirc.bundle.js?ver=2acd2f4ddd0be5d7dd29'></script>
<script type='text/javascript' defer src='https://nypost.com/wp-includes/js/wp-embed.min.js?ver=5.4.2'></script>
<script type='text/javascript' defer src='https://players.brightcove.net/videojs-pip/1/videojs-pip.min.js?ver=1.0.6'></script>
<script type='text/javascript' defer src='https://nypost.com/wp-content/themes/nypost-2016/plugins/brightcove/build/picture-in-picture.js?ver=1.0.6'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var sharing_js_options = {"lang":"en","counts":"","is_stats_active":"1"};
/* ]]> */
</script>
<script type='text/javascript' defer src='https://nypost.com/wp-content/mu-plugins/jetpack-9.0/_inc/build/sharedaddy/sharing.min.js?ver=9.0.2'></script>
<script type="text/javascript">
	var windowOpen;
	document.addEventListener("DOMContentLoaded", function() {
		jQuery( 'a.share-facebook' ).on( 'click', function() {
			if ( 'undefined' !== typeof windowOpen ){ // If there's another sharing window open, close it.
				windowOpen.close();
			}
			windowOpen = window.open( jQuery(this).attr( 'href' ), 'wpcomfacebook', 'menubar=1,resizable=1,width=600,height=400' );
			return false;
		});
	});
</script>
<script type="text/javascript">
	var windowOpen;
	document.addEventListener("DOMContentLoaded", function() {
		jQuery( 'a.share-twitter' ).on( 'click', function() {
			if ( 'undefined' !== typeof windowOpen ){ // If there's another sharing window open, close it.
				windowOpen.close();
			}
			windowOpen = window.open( jQuery(this).attr( 'href' ), 'wpcomtwitter', 'menubar=1,resizable=1,width=600,height=350' );
			return false;
		});
	});
</script>
<script type="text/javascript">
	var windowOpen;
	document.addEventListener("DOMContentLoaded", function() {
		jQuery( 'a.share-flipboard' ).on( 'click', function() {
			if ( 'undefined' !== typeof windowOpen ){ // If there's another sharing window open, close it.
				windowOpen.close();
			}
			windowOpen = window.open( jQuery(this).attr( 'href' ), 'wpcomflipboard', 'menubar=1,resizable=1,width=600,height=400' );
			return false;
		});
	});
</script>
<script type="text/javascript">
	var windowOpen;
	document.addEventListener("DOMContentLoaded", function() {
		jQuery( 'a.share-whatsapp' ).on( 'click', function() {
			if ( 'undefined' !== typeof windowOpen ){ // If there's another sharing window open, close it.
				windowOpen.close();
			}
			windowOpen = window.open( jQuery(this).attr( 'href' ), 'wpcomwhatsapp', 'menubar=1,resizable=1,width=600,height=400' );
			return false;
		});
	});
</script>
<script type='text/javascript' src='https://stats.wp.com/e-202042.js' async='async' defer='defer'></script>
<script type='text/javascript'>
	_stq = window._stq || [];
	_stq.push([ 'view', {v:'ext',j:'1:9.0.2',blog:'163456144',post:'16420050',tz:'-4',srv:'nypost.com'} ]);
	_stq.push([ 'clickTrackerInit', '163456144', '16420050' ]);
</script>

<div class="hide">
<script type="text/javascript">
	/* <![CDATA[ */
	var google_conversion_id = 988380111;
	var google_custom_params = window.google_tag_params;
	var google_remarketing_only = true;
	/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
	<div style="display:inline;">
	<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/988380111/?value=0&amp;guid=ON&amp;script=0"/>
	</div>
</noscript>
</div><!-- /.hide -->
<div id="div-gpt-ad-inline" class="dfp-ad dfp-ad-post dfp-inline" aria-hidden="true" tabindex="-1">
<div class='ad-wrapper'>
	<script type='text/javascript'>
var adWrapper = document.querySelector('.slideshow-ad-wrapper');		if ( typeof googletag !== 'undefined' ) {
		googletag.cmd.push(function() {  if (-1 !== definedSlots.indexOf("div-gpt-ad-inline")) {    googletag.display("div-gpt-ad-inline");  }});
		}
	</script>
</div>
</div>

<div id="div-gpt-ad-custom" class="dfp-ad dfp-ad-post dfp-custom" aria-hidden="true" tabindex="-1">
<div class='ad-wrapper'>
	<script type='text/javascript'>
var adWrapper = document.querySelector('.slideshow-ad-wrapper');		if ( typeof googletag !== 'undefined' ) {
		googletag.cmd.push(function() {  if (-1 !== definedSlots.indexOf("div-gpt-ad-custom")) {    googletag.display("div-gpt-ad-custom");  }});
		}
	</script>
</div>
</div>
</body>
</html>
