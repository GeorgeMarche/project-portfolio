












	
		
	
	
		
	
	
	
	
		
	


<!DOCTYPE html>
<!--[if lt IE 7]>  <html lang="en" class="lt-ie9 lt-ie8 lt-ie7" xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#"> <![endif]-->
<!--[if IE 7]> <html lang="en" class="lt-ie10 lt-ie9 lt-ie8" xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#"> <![endif]-->
<!--[if IE 8]> <html lang="en" class="lt-ie10 lt-ie9" xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="lt-ie10" xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#"> <!--<![endif]-->
	
	











<head>
	<link rel="alternate" hreflang="en-US" href="https://www.csoonline.com/article/3584759/the-covid-19-pandemic-has-become-a-catalyst-for-cyberattacks.html" />
	
	
	
	<!-- metas -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />		
	<title>The COVID-19 Pandemic Has Become a Catalyst for Cyberattacks | CSO Online</title>
	
	
			
			
			    <meta name="viewport" content="width=device-width, initial-scale=1.0">
         	
	
	
	
	<script>
	function getQueryVariable(variable) {
		var query = window.location.search.substring(1);
		var vars = query.split("&");
		for (var i=0;i<vars.length;i++) {
			var pair = vars[i].split("=");
			if(pair[0] == variable){return pair[1];}
		}
		return(false);
	}
	</script>
	
	<script>
	// Include CSS file for insider modal - used in insider_reg_api.js
	function addCSS(filename){
		 var headerTag = document.querySelector("header#banner");
		 var styleTag = document.createElement('link');
		 styleTag.href = filename;
		 styleTag.className = "oc-modal";
		 styleTag.type = 'text/css';
		 styleTag.rel = 'stylesheet';
		 headerTag.parentNode.insertBefore(styleTag, headerTag);
	}
	function addScript(filename){
		let headTag = document.querySelector("header#banner");
		let scriptTag = document.createElement('script');
		scriptTag.src = filename;
		scriptTag.className = 'oc-modal';
		scriptTag.type = 'text/javascript';
		headTag.parentNode.insertBefore(scriptTag, headTag);
	}
	</script>
		
	<!-- ad-related js -->
	<script src="/www/js/jquery/jquery-1.10.2.min.js"></script>
	
	<script type="text/javascript" src="/www/js/jquery/jquery_cookie.js"></script>
	
	
	
	<script type="text/javascript" src="/www/js/apollo-locales.js?v=20201007113303"></script>
	
	
	












<script src="//d2zv5rkii46miq.cloudfront.net/0/latest/cmp_shim.js"></script>

<script>
//is from EU?
var isEU = null;

var dataLayer = window.dataLayer = window.dataLayer || [];
</script>





<style type="text/css">
#sp_privacy_manager_container {
	z-index: 10000000 !important;
}
</style>



<script type="text/javascript">
//GDPR Stub file
	!function () { var e = function () { var e, t = "__tcfapiLocator", a = [], n = window; for (; n;) { try { if (n.frames[t]) { e = n; break; } } catch (e) { } if (n === window.top) break; n = n.parent } e || (!function e() { var a = n.document, r = !!n.frames[t]; if (!r) if (a.body) { var i = a.createElement("iframe"); i.style.cssText = "display:none", i.name = t, a.body.appendChild(i) } else setTimeout(e, 5); return !r }(), n.__tcfapi = function () { for (var e, t = arguments.length, n = new Array(t), r = 0; r < t; r++)n[r] = arguments[r]; if (!n.length) return a; if ("setGdprApplies" === n[0]) n.length > 3 && 2 === parseInt(n[1], 10) && "boolean" == typeof n[3] && (e = n[3], "function" == typeof n[2] && n[2]("set", !0)); else if ("ping" === n[0]) { var i = { gdprApplies: e, cmpLoaded: !1, cmpStatus: "stub" }; "function" == typeof n[2] && n[2](i) } else a.push(n) }, n.addEventListener("message", (function (e) { var t = "string" == typeof e.data, a = {}; try { a = t ? JSON.parse(e.data) : e.data } catch (e) { } var n = a.__tcfapiCall; n && window.__tcfapi(n.command, n.version, (function (a, r) { var i = { __tcfapiReturn: { returnValue: a, success: r, callId: n.callId } }; t && (i = JSON.stringify(i)), e.source.postMessage(i, "*") }), n.parameter) }), !1)) }; "undefined" != typeof module ? module.exports = e : e() }();
</script>

<script type="text/javascript">
//CCPA Stub file
      (function () { var e = false; var c = window; var t = document; function r() { if (!c.frames["__uspapiLocator"]) { if (t.body) { var a = t.body; var e = t.createElement("iframe"); e.style.cssText = "display:none"; e.name = "__uspapiLocator"; a.appendChild(e) } else { setTimeout(r, 5) } } } r(); function p() { var a = arguments; __uspapi.a = __uspapi.a || []; if (!a.length) { return __uspapi.a } else if (a[0] === "ping") { a[2]({ gdprAppliesGlobally: e, cmpLoaded: false }, true) } else { __uspapi.a.push([].slice.apply(a)) } } function l(t) { var r = typeof t.data === "string"; try { var a = r ? JSON.parse(t.data) : t.data; if (a.__cmpCall) { var n = a.__cmpCall; c.__uspapi(n.command, n.parameter, function (a, e) { var c = { __cmpReturn: { returnValue: a, success: e, callId: n.callId } }; t.source.postMessage(r ? JSON.stringify(c) : c, "*") }) } } catch (a) { } } if (typeof __uspapi !== "function") { c.__uspapi = p; __uspapi.msgHandler = l; c.addEventListener("message", l, false) } })();
</script>




<script  type="text/javascript">
window._sp_ = {
      config: {
    	  accountId: 146,
          baseEndpoint: "https://cmpv2.csoonline.com",
          targetingParams: {
            type: "GDPR"
         }
      }
}
window._sp_ccpa = {
   config: {
         mmsDomain: "https://cmp.csoonline.com",
         ccpaOrigin: "https://ccpa-service.sp-prod.net",
         accountId: 146,
         getDnsMsgMms: true,
         alwaysDisplayDns: false,
         targetingParams: {
         	type: "CCPA"
         }
   }
}
</script>

<script src="https://cmpv2.csoonline.com/wrapperMessagingWithoutDetection.js"></script>
<script src="https://ccpa.sp-prod.net/ccpa.js"></script>


 
<script>
	var debug = false;
</script>
 
 


<script>
if (typeof Promise === 'undefined') {
	//yuk but IE 11 etc only
	document.write('<script src="https://www.promisejs.org/polyfills/promise-7.0.4.min.js"></scr' + 'ipt>');
}

try {
	(function () {
		var idgus = window.idgus || {}; //if it's already set use that instead
		/*
		the cmp is code is usually first on the page so run this here to
		never let anything redefine window.idgus
		*/
		Object.defineProperty(window, 'idgus', {
			enumerable: false,
			configurable: false,
			get: function () {
				return idgus;
			},
			set: function () {
				//do nothing
			}
		});
	})();
} catch (ex) {};

window.idgus = window.idgus || {};
window.idgus.cmp = (function () {

	const PRIVACY_MANAGER_IDENT = 165662;

	//standard purps
	const STORE_ACCESS_ON_DEVICE = '5ea7dfd36ede87504f7dedc5',
		SELECT_PERSONSALISED_CONTENT_ID = '5ea7dfd36ede87504f7df18d',
		SELECT_PERSONSALISED_ADS_ID = '5ea7dfd36ede87504f7df04e',
		SELECT_BASIC_ADS_ID = '5ea7dfd36ede87504f7deeaf',
		CREATE_PERSONALISED_ADS_PROFILE_ID = '5ea7dfd36ede87504f7def8d',
		CREATE_PERSONALISED_CONTENT_PROFILE_ID = '5ea7dfd36ede87504f7df117',
		MEASURE_ADS_PERFORMANCE_ID = '5ea7dfd36ede87504f7df1f7',
		MEASURE_CONTENT_PERFORMANCE_ID = '5ea7dfd36ede87504f7df2f3',
		APPLY_MARKET_RESEARCH_ID = '5ea7dfd36ede87504f7df378',
		DEVELOP_AND_IMPROVE_PRODUCTS_ID = '5ea7dfd36ede87504f7df425';
	//custom pur and vend
	const SOCIAL_MEDIA_CONSENTS_PURPOSE_ID = '5f1019609c10086dcb659fba',
		GOOGLE_AD_MANAGER_VENDOR_ID = '5e74df5ff443bb795772df9c',
		GOOGLE_ANALYTICS_VENDOR_ID = '5e542b3a4cd8884eb41b5a72',
		TWITTER_VENDOR_ID = '5e71760b69966540e4554f01',
		FACEBOOK_VENDOR_ID = '5e716fc09a0b5040d575080f',
		LINKEDIN_VENDOR_ID = '5e777e669cb08971eb078d71',
		BLUECONIC_VENDOR_ID = '5eb32dea09c3f947e75e6f02';
	//const lang = (siteLang in LANG) ? LANG[siteLang] : LANG['en'];
	
	var bindReshowCmp = function () {
		var url = document.location.pathname;
		if (url.indexOf("/about/member-preferences") > -1) {
			if (debug) console.log('*****GDPR reshowLink executing ', url);
			$(document).ready(function() {
				$(".cmpSettings").show();
				$(".reshowLink").on("click", function(e) {
					e.preventDefault();
					window._sp_.loadPrivacyManagerModal(PRIVACY_MANAGER_IDENT);
				});
			});
		}
	}
	
	//sitepoint.com/jquery-document-ready-plain-javascript/ - wanted to avoid jquery
	if (document.readyState === "complete" || (document.readyState !== "loading" && !document.documentElement.doScroll)) {
		bindReshowCmp();
	}
	else {
		document.addEventListener("DOMContentLoaded", bindReshowCmp);
	}
	
	let consentedCustomVendors = []; //todo - not needed anymore
	let consentedPurposes = [];
	let vendorGrants = {};
	var checkIfInEU = new Promise(function (resolve, reject) {
		__tcfapi('addEventListener', 2, function (tcData, success) {
			if (debug) { console.log('GDPR addEventListener() tcData: ', tcData); }
			if (debug) { console.log('GDPR addEventListener() gdprApplies:', tcData.gdprApplies, 'eventStatus', tcData.eventStatus, 'success', success); }	
						
			isEU = tcData.gdprApplies;
			if (typeof isEU === 'undefined') {
				isEU = true;
			}
			if (debug) { console.log("GDPR in cmp-tcfv2-sp tcData.gdprApplies: " + isEU); }
			//if(promiseResolved)return;//timeout reached	
			//promiseResolved = true;
			if (success && (tcData.eventStatus === 'tcloaded' || tcData.eventStatus === 'useractioncomplete')) {
				let isEuVisitor = tcData.gdprApplies || false;
				if (isEuVisitor) {
					__tcfapi('getCustomVendorConsents', 2, (vendorConsents, success) => {
						consentedPurposes = vendorConsents.consentedPurposes || [];
						consentedCustomVendors = vendorConsents.consentedVendors || [];
						vendorGrants = vendorConsents.grants;
		
						if (debug) { console.log('GDPR addEventListener vendorConsents:', vendorConsents); }
						if (debug) { console.log('GDPR addEventListener consentedPurposes:', consentedPurposes, 'consentedCustomVendors', consentedCustomVendors, 'vendorGrants', vendorGrants); }
						
						resolve();
					});
				}
				else reject();
				// remove the ourself to not get called more than once
				//todo - needed?
				__tcfapi('removeEventListener', 2, function (success) {
					if (success) {
						console.log('addEventListener removeEventListener: ' + tcData.listenerId);
					}
				}, tcData.listenerId);
			}
		}); //addEventListener
	});
	
	//checkCCPAOptOut Promise
	var checkCCPAOptOut = new Promise(function(resolve, reject) {
		if (debug) { console.log("GDPR checkCCPAOptOut Promise"); }
	var promiseResolved = false;
	    setTimeout(function() {
	        if (debug) { console.log('GDPR checkCCPAOptOut timeout reached promiseResolved', promiseResolved); }
	        if (!promiseResolved) {
	            promiseResolved = true;
	            //assume opt out for safety
	            resolve();
	        }
	    }, 20000);
	    __uspapi('getUSPData', 1, function(uspData, success) {
	    if (promiseResolved)
	            return;
	        //timeout reached
	        promiseResolved = true;
	        if(success) {
	try {
	if (debug) { console.log('uspapi success: ', uspData); }
	var uspDataString = uspData.uspString;
	var uspDataArray = [];
	uspDataArray = uspDataString.split("");
	if (typeof uspDataArray[2] !== "undefined" && uspDataArray[2] !== "Y") {
	//user is still opted in
	reject('CCPA opted in');
	}
	else {
	//user opted out
	resolve();
	}
	}
	catch(e) {
	if (debug){ console.log('error with uspData retrieval: ', e); }
	//assume opt out for safety
	resolve();
	}
	
	} else {
	if (debug) { console.log('uspapi fail: ', uspData); }
	//assume opt out for safety
	resolve();
	}
	
	});
	});
	
	const checkConsent = function (ident) {
		if (debug) { console.log('GDPR', 'checkConsent() for ', ident); }
		let ok = false;
		if (ident in vendorGrants) {
			//has to have grant on vendor and on all associated puposes, advantage of this is we dont need to keep track of what purps a vendor is assoc with and check independetly
			const vendor = vendorGrants[ident];
			if (debug) { console.log('GDPR', 'checkConsent() is vendor true - grants ', vendor); }
			ok = vendor.vendorGrant; //has this vendor been granted at vendor level	
			if (debug) { console.log('GDPR', 'checkConsent() vendor has grant at vendor level', ok); }
			if (ok) { //if so check all purposes have been granted
				for (let purpIdent in vendor.purposeGrants) {
					ok = vendor.purposeGrants[purpIdent];
					if (debug) { console.log('GDPR', 'checkConsent() vendor has purpose ' + purpIdent + ' grant ', ok); }
					if (!ok) break;
				}
			}
			if (debug) { console.log('GDPR', 'checkConsent() vendor has ultimate grant', ok); }
			return ok;
		}
		
		//not vendor so check if purpose
		ok = consentedPurposes.some(obj => obj[__id] == ident); //not vendor just pupose
		if (debug) { console.log('GDPR', 'checkConsent() purpose has grant ', ok); }
		return ok;
	};
	
	
	return {
		isDebug: function () {
			return debug;
		},
		hold: new Promise(function (resolve, reject) { //hold till user has made or choice or doesnt need to 
			checkIfInEU.then(function () {
				if (debug) { console.log('GDPR', 'hold() ok resolved - return true'); }
				resolve(true);
			}).catch(function () { //not in eu, return ok
				if (debug) { console.log('GDPR', 'hold() not in eu - return true'); }
				resolve(true);
			});
		}),
		adsense: new Promise(function (resolve, reject) { //same as hold effectively
			checkIfInEU.then(function () {
				//const ok = checkConsent(GOOGLE_AD_MANAGER_VENDOR_ID);
				const ok = true;
				if (debug) { console.log('GDPR', 'adsense ok ', ok); }
				resolve(ok);
			}).catch(function () { //not in eu, return ok
				if (debug) { console.log('GDPR', 'adsense not in eu'); }
				resolve(true);
			});
		}),
		blueconic: new Promise(function (resolve, reject) {
			checkIfInEU.then(function () {
				const ok = checkConsent(BLUECONIC_VENDOR_ID);
				if (debug) { console.log('GDPR', 'blueconic ok', ok); }
				resolve(ok);
			}).catch(function () { //not in eu, check CCPA
				if (debug) { console.log('GDPR', 'blueconic not in eu'); }
				checkCCPAOptOut.then(function() {
					if (debug) { console.log('CCPA', 'user has opted out of Blueconic'); }
					resolve(false);
				}).catch(function(){
					if (debug) { console.log('CCPA', 'user has not opted out of Blueconic'); }
					resolve(true);
				});
				
			});
		}),
		gpt: new Promise(function (resolve, reject) { //same as hold effectively
			checkIfInEU.then(function () {
				//const ok = checkConsent(GOOGLE_AD_MANAGER_VENDOR_ID);
				const ok = true;
				if (debug) { console.log('GDPR', 'gpt ok', ok); }
				resolve(ok);
			}).catch(function () { //not in eu, return ok
				if (debug) { console.log('GDPR', 'gpt not in eu'); }
				resolve(true);
			});
		}),
		gaTrack: new Promise(function (resolve, reject) {
			checkIfInEU.then(function () {
				const ok = checkConsent(GOOGLE_ANALYTICS_VENDOR_ID);
				if (debug) { console.log('GDPR', 'gaTrack ok ', ok); }
				resolve(ok);
			}).catch(function () { //not in eu, return ok
				if (debug) { console.log('GDPR', 'gaTrack not in eu, arguments', arguments); }
				resolve(true);
			});
		}),
		adrian: new Promise(function (resolve, reject) {
			checkIfInEU.then(function () {
				const ok = checkConsent(STORE_ACCESS_ON_DEVICE);
				if (debug) { console.log('GDPR', 'adrian ok ', ok); }
				resolve(ok);
			}).catch(function () { //not in eu, return ok
				if (debug) { console.log('GDPR', 'adrian not in eu'); }
				resolve(true);
			});
		}),
		twitter: new Promise(function (resolve, reject) {
			checkIfInEU.then(function () {
				const ok = checkConsent(TWITTER_VENDOR_ID);
				if (debug) { console.log('GDPR', 'twitter ok ', ok); }
				resolve(ok);
			}).catch(function () { //not in eu, return ok
				if (debug) { console.log('GDPR', 'twitter not in eu'); }
				resolve(true);
			});
		}),
		linkedin: new Promise(function (resolve, reject) {
			checkIfInEU.then(function () {
				const ok = checkConsent(LINKEDIN_VENDOR_ID);
				if (debug) { console.log('GDPR', 'linkedin ok ', ok); }
				resolve(ok);
			}).catch(function () { //not in eu, return ok
				if (debug) { console.log('GDPR', 'linkedin not in eu'); }
				resolve(true);
			});
		}),
		facebook: new Promise(function (resolve, reject) {
			checkIfInEU.then(function () {
				const ok = checkConsent(FACEBOOK_VENDOR_ID);
				if (debug) { console.log('GDPR', 'facebook ok ', ok); }
				resolve(ok);
			}).catch(function () { //not in eu, return ok
				if (debug) { console.log('GDPR', 'facebook not in eu'); }
				resolve(true);
			});
		}),
		consentKnown: new Promise (function (resolve, reject) {
			checkIfInEU.then(function() { 
				//EU visitors
				dataLayer.push({
					'event': 'consentKnown',
					'ccpaOptedOut': false
				});
				resolve(true);
			}).catch(function(){
				//check for CCPA
				checkCCPAOptOut.then(function() {
					//CCPA applies and user has opted out
					dataLayer.push({
						'event': 'consentKnown',
						'ccpaOptedOut': true
					});
					resolve(true);
				}).catch(function(){					
					dataLayer.push({
						'event': 'consentKnown',
						'ccpaOptedOut': false
					});
					resolve(true);
				})

			});
		})
	}; // end return
	

	
	
})();



</script>



	
	
		











<script>
//if no cmp then execute as normal.
window.idgus = window.idgus || {};
window.idgus.cmp = window.idgus.cmp || {};
(function (promise) {
	promise.then(function (consentOk) {
		var isDebug = !!window.idgus.cmp.isDebug ? window.idgus.cmp.isDebug() : false;
		if (isDebug) console.log('GDPR', 'blueconic - consentOk', consentOk);
		if (!consentOk) return;
		var bcscript = document.createElement("script");
		bcscript.async = true;
		bcscript.type = "text/javascript";
	    var useSSL = "https:" == document.location.protocol;
	    bcscript.src = (useSSL ? "https:" : "http:") + "//cdn.blueconic.net/idg.js";
	    var node=document.getElementsByTagName("script")[0];
	    node.parentNode.insertBefore(bcscript, node);
	});
})(!!window.idgus.cmp.blueconic ? window.idgus.cmp.blueconic : {
	then: function (f) {
		f(true);
	}
});
</script>
	
	
	
		










<script>
// this javascript is for retrieving locale-specific ad units for DFP - see mapping in apollo-locales.js
// getting locale and editions for the site the reader is viewing
let brandAbbrev = "cso";
let brandConfigBrandId = "32";
//let myLocale = getLocale(); // getting locale on page load from URL, IP, geolocation - this will always be something. If 0, it's the global/default/core view.
let countryCode = "";
let getSlugFromId = getApolloLocaleIdMap();
let getIdFromSlug = getApolloLocaleSlugMap();

// if selectedLocale cookie exists, get locale
if (typeof getSelectedLocale() !== 'undefined'  && getSelectedLocale() === getLocale()) { // get locale from cookie if available otherwise, use another locale source (from geolocation, url slug, etc.)
 	countryCode = getSlugFromId[getSelectedLocale()];
} else {
	countryCode = getSlugFromId[getLocale()];
}
//console.log("+++ 1) in locales.editions.jsp - COUNTRY CODE IS DEFINED AS: "+countryCode+"+++");
// if countryCode is empty string at this point, it means localeId = 0 which is global (default/core)...
if (countryCode == "") {
	countryCode = "us"; // country code for default global is currently US
}
//console.log("====INSIDE locales-editions.jsp - getSelectedLocale() = " + getSelectedLocale() + " and getLocale() = " + getLocale() + " and countryCode = " + countryCode);
//US social media accounts are the default if locale cannot be determined
var twitterUrl = "https://twitter.com/csoonline";
var linkedInUrl = "http://www.linkedin.com/company/csoonline";
var facebookUrl = "https://www.facebook.com/CSOonline";
var youTubeUrl = "";
var twitterHandle = "csoonline";

if (countryCode === 'asean') {
	twitterUrl = "https://twitter.com/csoonline";
	linkedInUrl = "http://www.linkedin.com/company/csoonline";
	facebookUrl = "https://www.facebook.com/CSOonline";
	twitterHandle = "csoonline";
}
if (countryCode === 'middle-east') {
	twitterUrl = "";
	linkedInUrl = "";
	facebookUrl = "";
	twitterHandle = "";
}
if (countryCode === 'uk') {
	twitterUrl = "https://twitter.com/csoonline";
	linkedInUrl = "http://www.linkedin.com/company/csoonline";
	facebookUrl = "https://www.facebook.com/CSOonline";
	twitterHandle = "";
}
if (countryCode === 'in') {
	twitterUrl = "https://twitter.com/cso_india";
	linkedInUrl = "";
	facebookUrl = "https://www.facebook.com/CSOOnlineIndia/";
	twitterHandle = "CSO_India";
	youTubeUrl = "";
}
if (countryCode === 'africa') {
	twitterUrl = "";
	linkedInUrl = "";
	facebookUrl = "";
	twitterHandle = "";
	youTubeUrl = "";
}
if (countryCode === 'au') {
	twitterUrl = "https://twitter.com/cso_australia";
	linkedInUrl = "http://www.linkedin.com/company/cso-au/";
	facebookUrl = "https://www.facebook.com/csoonline/";
	twitterHandle = "cso_australia";
}
if (countryCode === 'nz') {
	twitterUrl = "";
	linkedInUrl = "";
	facebookUrl = "";
	twitterHandle = "";
}
if (countryCode === 'nl') {
	twitterUrl = "";
	linkedInUrl = "";
	facebookUrl = "";
	twitterHandle = "";
}

//US business unit is the default if locale cannot be determined
var busUnit = "IDG Communications, Inc.";
//cookie policy page
var localeEdition = "United States Edition";
var busUnitAddress = "IDG Communications, Inc. (“IDGC”)<br>5 Speen Street<br>Framingham, Massachusetts 01701<br>United States of America";
if (countryCode === 'asean') {
	busUnit = "IDG Communications, Inc.";
	localeEdition = "ASEAN Edition";
	busUnitAddress = "IDG Communications, Inc. (“IDGC”)<br>5 Speen Street<br>Framingham, Massachusetts 01701<br>United States of America";
}
if (countryCode === 'middle-east') {
	busUnit = "";
	localeEdition = "";
	busUnitAddress = "";
}
if (countryCode === 'uk') {
	busUnit = "IDG Communications Ltd.";
	localeEdition = "United Kingdom Edition";
	busUnitAddress = "IDG Communications Ltd<br>101 Euston Road<br>London<br>NW1 2RA<br>United Kingdom";
}
if (countryCode === 'in') {
	busUnit = "IDG Media Private Ltd";
	localeEdition = "India Edition";
	busUnitAddress = "IDG Media Private Limited,<br>35/2, 3rd Floor, Langford Road Cross,<br>Bengaluru - 560025";
}
if (countryCode === 'africa') {
	busUnit = "";
	localeEdition = "";
	busUnitAddress = "";
}
if (countryCode === 'au') {
	busUnit = "IDG Communications. ABN 14 001 592 650";
	localeEdition = "Australia Edition";
	busUnitAddress = "IDG Communications Pty Ltd<br>A.B.N. 14 001 592 650<br>Level 10, 15 Blue Street<br>North Sydney NSW 2060<br>Australia";
}
if (countryCode === 'nz') {
	busUnit = "IDG Communications. ABN 14 001 592 650";
	localeEdition = "";
	busUnitAddress = "IDG Communications Pty Ltd<br>A.B.N. 14 001 592 650<br>Level 10, 15 Blue Street<br>North Sydney NSW 2060<br>Australia";
}
if (countryCode === 'nl') {
	busUnit = "";
	localeEdition = "";
	busUnitAddress = "";
}
</script>

	
	
	<script src="/www/js/init_device.js"></script>
	
	

	

	
		
			
			



















	<script async="async" src="//cdn.adsafeprotected.com/iasPET.1.js"></script>




	<script async src="//js-sec.indexww.com/ht/p/183980-47728333013839.js"></script>

	
<script type="text/javascript" src="/www/js/ads/gpt_includes.js?v=20201007113303"></script>



<script type="text/javascript">
	if (adLayer==null || adLayer=='undefined') {
		var adLayer=[];
	}
	
		
			adLayer["itemType"]="article";
		
		
	
</script>
	
<script type="text/javascript">
	// Set up ad related variables
	try {
		IDG.GPT.unitName = "/8456/IDG.G_B2B_CSOOnline.com";
	}
	catch (exception) {
		console.log ("google_dfp can't use IDG.GPT "+ exception);
	}

	try {
		IDG.GPT.unitName = IDG.GPT.unitName + "/" + "technology-business_section";
	}
	catch (exception) {
		console.log ("google_dfp can't use IDG.GPT "+ exception);
	}
	// global variables
	var global_ShowSuper = true;
	var global_ShowHero = false;
	
	//XFP global targeting, more targeting thm_pre
	var url = window.location.href;
	if(url.indexOf("?")>1){
		url=url.split('?')[0];
	}
	

	try {
		IDG.GPT.addTarget("URL", encodeURIComponent(url));
	}
	catch (exception) {
		console.log ("google_dfp can't use IDG.GPT "+ exception);
	}
	try {IDG.GPT.addTarget("zone", 'article-blog/technology-business');}	catch (exception) {console.log ("google_dfp can't use IDG.GPT "+ exception);}
	try{IDG.GPT.addTarget("channel", '');}	catch (exception) {console.log ("google_dfp can't use IDG.GPT "+ exception);}try{IDG.GPT.addTarget("blogId", '3056');}	catch (exception) {console.log ("google_dfp can't use IDG.GPT "+ exception);}try{IDG.GPT.addTarget("articleId", '3584759');}	catch (exception) {console.log ("google_dfp can't use IDG.GPT "+ exception);}try{IDG.GPT.addTarget("type", 'opinion');}	catch (exception) {console.log ("google_dfp can't use IDG.GPT "+ exception);}try{IDG.GPT.addTarget("typeId", '5');}	catch (exception) {console.log ("google_dfp can't use IDG.GPT "+ exception);}try{IDG.GPT.addTarget("manufacturer", 'microsoft');}	catch (exception) {console.log ("google_dfp can't use IDG.GPT "+ exception);}try{IDG.GPT.addTarget("templateType", 'article-default');}	catch (exception) {console.log ("google_dfp can't use IDG.GPT "+ exception);}
	
	try {IDG.GPT.addTarget("categoryIds", ['3871']);}	catch (exception) {console.log ("google_dfp can't use IDG.GPT "+ exception);}
	try{IDG.GPT.addTarget("categorySlugs", ['technology-business']);}	catch (exception) {console.log ("google_dfp can't use IDG.GPT "+ exception);}
	try {IDG.GPT.addTarget("goldenIds", ['683']);}	catch (exception) {console.log ("google_dfp can't use IDG.GPT "+ exception);}
	try {
		if (null != IDG.GPT.getQsVal("env")) {		
			IDG.GPT.addTarget("env", IDG.GPT.getQsVal("env").replace(/\W/g, "") );
		}
	}
	catch (exception) {
		console.log ("google_dfp can't use IDG.GPT "+ exception);
	}	
	
		try {
			IDG.GPT.addTarget("author", 'Tom Schmidt');
		}
		catch (exception) {
			console.log ("google_dfp can't use IDG.GPT "+ exception);
		}
	
	
	
		

	try {
		IDG.GPT.addTarget("page_type", '');
	}
	catch (exception) {
		console.log ("google_dfp can't use IDG.GPT "+ exception);
	}	

	
		try {
			IDG.GPT.addTarget("blog_name", 'Real Perspectives on Securing a Distributed Workforce');
		}
		catch (exception) {
			console.log ("google_dfp can't use IDG.GPT "+ exception);
		}
	
	
	
		try {
			IDG.GPT.addTarget("sponsored", 'true');
		}
		catch (exception) {
			console.log ("google_dfp can't use IDG.GPT "+ exception);
		}
	
	
		try {
			IDG.GPT.addTarget("insiderContent", 'false');
		}
		catch (exception) {
			console.log ("google_dfp can't use IDG.GPT "+ exception);
		}
	
	
	
	
	
	
	//k/v for Inskin partner
	var fn_pageskin = screen.width >= 1330 ? "true" : "false";
	try {
		IDG.GPT.addTarget("inskin_yes", fn_pageskin);
        IDG.GPT.log("Inskin: added k/v pair inskin_yes : "+fn_pageskin);
	} catch (exception) {
		console.log("Inskin: google_dfp can't use IDG.GPT " + exception);
	}
</script>



<script type="text/javascript">
	
	
	
	
		
		
		
		
		
		
		
		
	
	
	
			try {
					IDG.GPT.isNewHeader = true;
				}
				catch (exception) {
					console.log ("google_dfp can't use IDG.GPT "+ exception);
				}
	
	
	

</script>
  
<script src="/www.idge/js/thm_pre.js?v=20201007113303"></script>


	
	
		<script>
		// IDGMPM-16419 - moved out of adsel queue for IDGMPM-16933
		googletag.cmd.push(function() {
		  if (googletag.pubads().getTargeting('permutive').length == 0) {
			
			//IDGMPM-18418 - capture paermutive key-values
			window.headertag = window.headertag || {};
			window.headertag.cmd = window.headertag.cmd || [];
			window.headertag.cmd.push(function() {
				try {
					var segs = JSON.parse(localStorage._pdfps || '[]').slice(0,250);
					window.headertag.setUserKeyValueData({ segments: {"permutive": segs} });                
				} catch (e) {}
			});
			
		    var kvs = localStorage.getItem('_pdfps');
		    googletag.pubads().setTargeting('permutive', kvs ? JSON.parse(kvs) : []);
		    console.log('ad targeting permutive kvs: ', kvs);
		  }
		});
		</script>
	

<script type="text/javascript" src="/www/js/ads/gpt_starter.js?1234"></script>
	<script>
		loadGPT();
	</script>

	
		<script type="text/javascript" src="/www/js/ads/ias_gpt_launcher.js?v=20201007113303"></script>
	

	



		
		
	
	
	
		
				
		
		
		
	

	<link rel="canonical" href="https://www.csoonline.com/article/3584759/the-covid-19-pandemic-has-become-a-catalyst-for-cyberattacks.html" />
	
	
		
	

	<meta itemprop="url" content="https://www.csoonline.com/article/3584759/the-covid-19-pandemic-has-become-a-catalyst-for-cyberattacks.html" />
	<meta name="description" content="Members of IDG’s Influencer Network assess the Impact of delayed security projects and look to the future" />
	
		
			<meta name="DC.date.issued" content="2020-10-05T14:13-05:00" />
			<meta name="date" content="2020-10-05" />
			
		
		
		
		
	
	
	
	
		
		
		
			
			
				
			
			
			
		
	
	
		
		
			<meta property="og:title" content="The COVID-19 Pandemic Has Become a Catalyst for Cyberattacks">
		
	
	<meta property="og:description" content="Members of IDG’s Influencer Network assess the Impact of delayed security projects and look to the future">	
	
	
		
			<meta property="og:image" content="https://images.idgesg.net/images/article/2020/10/istock-1194430783-100860865-large.jpg" />
			<meta property="og:image:width" content="1200" />
			<meta property="og:image:height" content="675" />
			<meta itemprop="image" content="https://images.idgesg.net/images/article/2020/10/istock-1194430783-100860865-large.jpg" />
			<meta itemprop="thumbnailURl" content="https://images.idgesg.net/images/article/2020/10/istock-1194430783-100860865-large.jpg" />
			<link rel="image_src" href="https://images.idgesg.net/images/article/2020/10/istock-1194430783-100860865-large.jpg" />
			<meta name="twitter:image" content="https://images.idgesg.net/images/article/2020/10/istock-1194430783-100860865-large.jpg" />
		
		
	
	
		
			<meta property="og:type" content="article" />
			
			
			
			
			
			
			
			
			
			<meta name="author" content="Tom Schmidt">
			
			
			
			
			
				<meta name="robots" content="NOFOLLOW" />
			
		
		 
		
	<meta property="og:site_name" content="CSO Online" />
	<meta property="fb:app_id" content="147046808648758" />
	
		
			<meta property="og:url" content="https://www.csoonline.com/article/3584759/the-covid-19-pandemic-has-become-a-catalyst-for-cyberattacks.html">
		
		
	
	
	<!-- Use Twitter Summary Card with Large Image for articles and videos -->
	
		
				<meta name="twitter:card" content="summary_large_image">
		
		
	

	<meta name="twitter:site" content="@csoonline">
	<meta name="twitter:description" content="Members of IDG’s Influencer Network assess the Impact of delayed security projects and look to the future">

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<meta name="rating" content="General">
	
	<meta name="robots" content="NOODP,NOYDIR" />
	
	
		<meta name="google-site-verification" content="kKrBZpBg8lV-8uPnwdrHwxRDGrI76jJkp4iUgs2mmBk" />
	
	
	
		<meta name="msvalidate.01" content="04917178B598F0648B9BAD693FEC29A3" />
	
		
	<!-- pagination -->
	
	
	
	
	
	
	
	
	
	
	
					
		
		
			
			
		
	
	
	<!-- css -->
	
	
	
		
			
			
			
			
				
					
						
						
							<link rel="stylesheet" href="/www/css/article.css?v=20201007113303" />
						
					
					
					
					
			
				
		
		
		
			<link rel="stylesheet" href="/www.idge/css/insider-promo-styles.css?v=20201007113303" />
		
		<link rel="stylesheet" href="/www.idge/css/print.css" media="print" />
		
	
	
		
			
			
				
				
					<link rel="stylesheet" href="/www.idge.cso/css/article.css?v=20201007113303" />
				
			
		
	
	
	<link rel="stylesheet" href="/www.idge/css/webfonts/ss-social.css" />
	<link rel="stylesheet" href="/www.idge/css/webfonts/ss-standard.css" />
	<!--[if lte IE 8]>  
		<link href="/www.idge/css/webfonts/ss-ie8.css" rel="stylesheet" />
	<![endif]--> 
	
	
	
	
	
	
		<script>
		var	suppressItemsForHoliday = "false";
	</script>

	
		
	
	
	
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
	
	
	
		<link rel="stylesheet" href="https://use.typekit.net/xyb0fnv.css" />
	
	
	<!--  fav and touch icons -->
	<link rel="shortcut icon" type="image/x-icon" href="https://idge.staticworld.net/cso/favicon.ico"/>
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://idge.staticworld.net/cso/CSO_logo_144x144.png" />
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://idge.staticworld.net/cso/CSO_logo_114x114.png" />
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://idge.staticworld.net/cso/CSO_logo_72x72.png" />
	<link rel="apple-touch-icon-precomposed" sizes="57x57" href="https://idge.staticworld.net/cso/CSO_logo_57x57.png" />
	<link rel="apple-touch-icon" href="https://idge.staticworld.net/cso/CSO_logo_300x300.png" />
	
	
	
	
	
		<script>
			$(document).ready(function(){
				if(typeof(IDG.insiderReg.readCookie('nsdr')) !== 'undefined'){
					$('#welcome-message').show();			
					IDG.insiderReg.personalize();
				}else{
					$('.signin-register').show();	
				}
			});
		</script>
   	    
   	    











<script>
var isProd = 'true';

var ocEnabledSite = "true";

var brandCode = "cso";
var brandName="CSO Online";
var brandId = "2";
var regDebugLog=false;

// Marketing Channels Preference
var brandIdDemandgen=false;
var brandIdEvents=false;
var brandIdResearch=false;
var brandIdThirdparty=false;
var isEu=false;

// API URL and API key
var regApiUrl='https://api-stage.idgcommunications.net/api/v1/'; // replaced below with property in .properties file
var apiKey="HLyMXLISSW7HAYGgbx2Vb1Gf1OLcGmMG5BcwZ4Vb";

var tokenPrefix='www';
var tokenSuffix='.com/insider/token?';
var brandDomain=".csoonline.com";
var insiderContentType="article";
var notEmptyArticle=false;
var notEmptyMediaResource=false;
var isInsiderPremium=false;
var isResourceInsiderPremium=false;

var ownerIds=["0c99a1d7-c4e7-42a5-910f-a22134d1f98d"];
var campaignId="2a3b7224-f920-41a1-bea6-615aa59ea0f8";
var assetId="697422d1-7acb-40f6-be13-0e67329bc9ec";
var placementId="2d44d74a-e883-4d18-ada8-b2f0e61a1d90";
var clientCompany="IDG Communications US";
var businessUnit="IDG Communications US";

</script>
<script>
function getOneRegIDs(countryCode) {
	let obj = {};
	if (countryCode === 'uk') {
		obj={
			brandId: "94",
			ownerIds: ["f3efa90a-2330-4d42-bbc7-f7f96eb0f3db"],
			campaignId: "a465ea50-b639-4f98-ad1c-bc0b8c80e3c9",
			assetId: "5ab2586f-3bb6-4ad3-84e2-bdd230980e88",
			placementId: "77a1e657-f12c-4f7c-b685-6a9da2eb25d6",
			businessUnit: "IDG UK"
		}
	}
	if (countryCode === 'africa') {
		obj={
			brandId: "",
			ownerIds: ["02b2821f-2118-442a-9f16-df416847133f"],
			campaignId: "89c3e1d5-f5c6-4934-b683-751414ffe5b7",
			assetId: "8848c7a9-7ed0-4119-ba20-e9f06869928c",
			placementId: "7d80c555-1916-4c7b-bd56-dd10767d83b8",
			businessUnit: "IDG Connect"
		}
	}
	if (countryCode === "asean") {
		obj={
			brandId: "120",
			ownerIds: ["02b2821f-2118-442a-9f16-df416847133f"],
			campaignId: "77f2f4c1-c3f3-4796-be52-d44c982bc824",
			assetId: "59fdb971-7da7-48a0-bd6d-e52db502b83f",
			placementId: "b1f22813-ff0d-42d8-90d9-c1fbd47b3424",
			businessUnit: "IDG Connect"
		}
	}
	if (countryCode === 'mideast' || countryCode === 'middle-east') {
		obj={
			brandId: "",
			ownerIds: ["02b2821f-2118-442a-9f16-df416847133f"],
			campaignId: "2e8ce243-c3b2-417b-a893-ba4fb496776b",
			assetId: "511c10e5-69b7-4a0d-861f-99b048e129f8",
			placementId: "59a18947-cead-4faf-8d94-2fd9bba346a4",
			businessUnit: "IDG Connect"
		}
	}
	if (countryCode === 'in') {
		obj={
			brandId: "57",
			ownerIds: ["b6973a30-3c15-4667-9165-e206b8876adc"],
			campaignId: "cf43ee09-cb17-4704-aec9-3c3faefee27f",
			assetId: "f411310d-fa2f-4518-93c9-e08962d736b2",
			placementId: "6813ef80-eb35-4d48-94f0-4b64c406ca52",
			businessUnit: "IDG India"
		}
	}
	if (countryCode === 'au') {
		obj={
			brandId: "60",
			ownerIds: ["dfcefb71-7919-4a1b-9b77-6a1c05314109"],
			campaignId: "371454ac-79e0-4bef-9a02-6ba52dc58e51",
			assetId: "fe648fe7-937f-4f7d-8822-2125efbbde26",
			placementId: "d6d61fb9-333b-4721-ae7a-3b069224c628",
			businessUnit: "IDG Australia"
		}
	}
	if (countryCode === 'nz') {
		obj={
			brandId: "",
			ownerIds: ["dfcefb71-7919-4a1b-9b77-6a1c05314109"],
			campaignId: "371454ac-79e0-4bef-9a02-6ba52dc58e51",
			assetId: "fe648fe7-937f-4f7d-8822-2125efbbde26",
			placementId: "d6d61fb9-333b-4721-ae7a-3b069224c628",
			businessUnit: "IDG New Zealand"
		}
	}

	return obj;
}
</script>

<script>
if (countryCode !== "" && countryCode !== "us") {
	clientCompany="IDG Communications";
	
	let oneRegIDs = getOneRegIDs(countryCode);
	
	brandId = oneRegIDs.brandId;
	ownerIds = oneRegIDs.ownerIds;
	campaignId = oneRegIDs.campaignId;
	assetId = oneRegIDs.assetId;
	placementId = oneRegIDs.placementId;
	businessUnit = oneRegIDs.businessUnit;
}
if (countryCode == 'nl') {
	brandId = "";
	ownerIds=["995bcc26-0146-4b23-a843-e4a9dab15ab2"];
	campaignId="9c573c52-3bb0-406c-8925-8ae3610d4b46";
	assetId="d8343ec7-7fd4-4232-b227-62d98ea9525b";
	placementId="3dbe27d8-52a6-4b42-b07a-cdd7dc6f5b97";
	clientCompany="IDG Communications";
	businessUnit="IDG Benelux";
}
if (countryCode == 'nl') {
	brandId = "";
	ownerIds=["995bcc26-0146-4b23-a843-e4a9dab15ab2"];
	campaignId="9c573c52-3bb0-406c-8925-8ae3610d4b46";
	assetId="d8343ec7-7fd4-4232-b227-62d98ea9525b";
	placementId="3dbe27d8-52a6-4b42-b07a-cdd7dc6f5b97";
	clientCompany="IDG Communications";
	businessUnit="IDG Netherlands";
}


	regApiUrl="https://lqxgcyk808.execute-api.us-east-1.amazonaws.com/prod_h2/api/v1/";



	regDebugLog=false;



	tokenPrefix="http://www";



	tokenSuffix="/insider/token";





	notEmptyArticle=true;


	



 

</script>










	



	
	
	
















	

	
	<script src="/www/js/ads/ad.js"></script>
	
	<script>var oneRegPlacementID = "";</script>
	
		
	<script>
		const articlePaidAccess = [];
	</script>
	
	
	
		
			
				
			
			
			
			
			
			
			
			

				
			
		
		
		
	
	
		
	
	
	
	
	
	





	
		
	
		
	
	





		
		
		
		
		  
		

	
	
	
	
	

	
	  	 
	    
	    
	 
	 
	
	
	
	
	
	
	
	
	
	
		
			
			
			
			
		
		
		
	

	<script>
	var supMontMods = false;
	</script>
	
	
	
	
		
		
			<script>
				supMontMods = true;
			</script>
			
			
		
		
		
	
	
	
	
	
	
	
	
	
	
	
		
			
				
				
				
					
				
			
			
			
			
		
		
		
	
	
	
	
	
	
	
	

	
	
	
	
	
		 
		

		<script>	
		{	
			let categorySlug = 'technology-business';
			
			const stripOutIllegal = s => s.replace(/[~'"=!+#;^()<>&[]]/g,'');
			
			window.ntvConfig = window.ntvConfig || {} ;
			window.ntvConfig.keyValues = window.ntvConfig.keyValues || {};
			const segs = localStorage.getItem('_pnativo');
			if (segs) {
				window.ntvConfig.keyValues.permutive = JSON.parse(segs).join(",");
			}
			
			const metaKeywordsTag = document.querySelector("meta[name='keywords']");
			if ( metaKeywordsTag && (metaKeywordsTag.hasAttribute('content')) ) {
				const kwds = metaKeywordsTag.content.split(',').filter(kw => kw.length <= 40);
				window.ntvConfig.keyValues.contextual = stripOutIllegal(kwds.join(','));
			}
			[categorySlug].forEach(function(val) {
				if (val.length !== 0) {
					window.ntvConfig.keyValues.channel = stripOutIllegal(val);
				}
			});
			if (typeof(window.ntvConfig.keyValues.channel) === "undefined") {
				window.ntvConfig.keyValues.channel = "";
			}
		}
		</script>
	
	
	
	

	
	
	
	<script type="text/javascript">
		var prodNames = '';
		var prodManufacturers = '';
		var prodCategories = '';
		var prodVendors = '';
	</script>
	
	
	
		
		<script src="/www/js/insider/insider_reg_api.js?v=20201007113303"></script>
	
	
	
	<script>
	var insiderSignedIn = document.cookie.indexOf("nsdr") > -1; //check if Insider cookie exists
	var idg_uuid = $.cookie('idg_uuid') || '';
	
	var dlJobFunction = '';
	var dlJobPosition = '';
	var dlIndustry = '';
	
	if (insiderSignedIn) {
		var insiderToken = IDG.insiderReg.readCookie("nsdr");
		var tokens = IDG.insiderReg.readCookieProperty(insiderToken);
		if (!(tokens['jobPosition']===undefined)) {
			//dlJobPosition = tokens['jobPosition'];
			//OC-1647 change to indicate this data was remove
			dlJobPosition = "removed";
		}
		if (!(tokens['jobFunction']===undefined)) {
			dlJobFunction = tokens['jobFunction'];
		}
		if (!(tokens['industry']===undefined)) {
			dlIndustry = tokens['industry'];
		}
	}
	
	insiderSignedIn = insiderSignedIn.toString(); //per Infotrust this needs to be a string, not a boolean
	
	var sincePublished = '8 days';
	sincePublished = sincePublished.split(" ")[0];
	
	//get edition from countryCode
	var edition = '';
	if (typeof countryCode !== 'undefined' && countryCode !== "") {//should be defined in locales-editions.jsp if brand has editions
		edition = countryCode.toLowerCase();
	}

	var catIdList = '3871';
	var goldenTaxList = '683,683';
	var primaryCatList = 'technology industry';
	

	// if huid parameter from email link query string is available and no reg cookie defined, assign huid to idg_uuid
	if (getQueryVariable("huid") !== false && idg_uuid === '') {
		idg_uuid = getQueryVariable("huid");
		$.cookie('idg_uuid', idg_uuid, {path:'/', domain: ".csoonline.com", expires: 90/*,secure:true*/});
	}
	
	dataLayer.push({
		'articleId': '3584759',
		'articleDisplayId':'1',
		'articleHasVideo':'false',
		'articleLocale': 'us',
		'articleTitle': 'The COVID-19 Pandemic Has Become a Catalyst for Cyberattacks',
		'articleType': 'Opinion',
		'audience':'enterprise',
		'author':'Tom Schmidt',
		'blogName':'Real Perspectives on Securing a Distributed Workforce',
		'brandpost': 'true',
		'categoryIdAll': (catIdList.length > 0 ? catIdList.split(',') : []),
		'categoryIdList':catIdList,
		'categoryIdPrimary': '3871',
		'contentStrategy': '',
		'contentType':'opinion',
		'datePublished':'2020-10-06',
		'dateUpdated':'2020-10-06',
		'daysSincePublished':"8",
		'daysSinceUpdated':'8',
		'de_normalized_company_name':$.cookie('de_normalized_company_name'),
		'displayType':'article',
		'edition':edition,
		'environment':'production',
		'ga_enabled':'true',
		'gaTrackingId':'UA-300704-9',
		'geolocEnabled':'true',
		'goldenTaxArray': (goldenTaxList.length > 0 ? goldenTaxList.split(',') : []),
		'goldenTaxonomyIdAll': '683, 683',
		'goldenTaxonomyIdPrimary': '683',
		'goldenTaxonomyIdList': '683',
		'industry': dlIndustry,
		'insiderSignedIn':insiderSignedIn,
		'ip_normalized_company_name':$.cookie('ip_normalized_company_name'),
		'isBlog':'true',
		'isInsiderContent':'false',
		'isICN': 'false',
		'jobFunction': dlJobFunction,
		'jobPosition': dlJobPosition,
		'oneRegPlacementID':oneRegPlacementID,
		'pageNumber':'1',
		'platform':'Web',
		'podcastSponsored': 'false',
		'primaryCategory': 'technology industry',
		'ancestorGoldenCategories': 'cso',
		'primaryCatArray': (primaryCatList.length > 0 ? primaryCatList.split(',') : []),
		'primaryCategoryAll': 'technology industry, ',
		'primaryCategoryList': '',
		'primaryAncestorCategoryList': 'technology industry,cso',
		'prodCategories':prodCategories.slice('|', -1),
		'prodManufacturers':prodManufacturers.slice('|', -1),
		'prodNames':prodNames.slice('|', -1),
		'prodVendors':prodVendors.slice('|', -1),
		'property': 'cso online',
		'propertyCountry':'US',
		'purchaseIntent':'',
		'skimlinksId':'111346X1569475',
		'source':'cso',
		'sponsorName':'Tanium',
		'suppressMonetization': supMontMods.toString(),
		'tags': '',
		'userId':idg_uuid,
		'videoAutoplay':'false',
		'youtubeId':''
	});
	</script>

	
	
	










<script>
	var dataLayer = window.dataLayer = window.dataLayer || [];
	var adBlockStatus = 'false';
	
	//look for variable set in ad.js
	if (window.canRunAds === undefined) {
		adBlockStatus = 'true';
	} else {
		adBlockStatus = 'false';
	}
	
	dataLayer.push({
		'adBlockStatus': adBlockStatus
	});
</script>





	<!-- Google Tag Manager -->
	<noscript><iframe src="//www.googletagmanager.com/ns.html?GTM-WR6LD2P"
	height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-WR6LD2P');</script>
	<!-- End Google Tag Manager -->

	
	
	
		<script>
			var numberFromDataLayer = function(property) {
			  if (window.dataLayer && dataLayer[0] && typeof dataLayer[0][property] == "number") {
			    return dataLayer[0][property];
			  }
			  return null;
			};
			
			var stringFromDataLayer = function(property) {
			  if (window.dataLayer && dataLayer[0] && typeof dataLayer[0][property] == "string") {
			    return dataLayer[0][property];
			  }
			  return "";
			};
		</script>
	

	

	
		










<script>
// IDGMPM-16419 - updated in IDGMPM-16933
	!function(n,e,o,r,i){if(!e){e=e||{},window.permutive=e,e.q=[],e.config=i||{},e.config.projectId=o,e.config.apiKey=r,e.config.environment=e.config.environment||"production";for(var t=["addon","identify","track","trigger","query","segment","segments","ready","on","once","user","consent"],c=0;c<t.length;c++){var f=t[c];e[f]=function(n){return function(){var o=Array.prototype.slice.call(arguments,0);e.q.push({functionName:n,arguments:o})}}(f)}}}(document,window.permutive,"f5b3be27-f789-4ef1-8867-37c67da5b361","84c7e805-5ce9-41f4-b988-3529488bab1c",{});
	  permutive.addon('web', {
	    page: {
	      type: stringFromDataLayer('displayType'),
	      language: 'en',
	      tags: stringFromDataLayer('tags').split(","),
	      audience: stringFromDataLayer('audience'),
	      description: 'Members of IDG’s Influencer Network assess the Impact of delayed security projects and look to the future',
	      
	      article: {
	        authors: stringFromDataLayer('author').split(","),
	        description: 'Members of IDG’s Influencer Network assess the Impact of delayed security projects and look to the future',
	        id: stringFromDataLayer('articleId'),
	        isInsiderContent: (stringFromDataLayer('isInsiderContent') == "true"),
	        modifiedAt: "2020-10-06T08:19:21Z",
	        publishedAt: "2020-10-06T08:19:21Z",
	        source: stringFromDataLayer('source'),
	        title: stringFromDataLayer('articleTitle'),
	        type: stringFromDataLayer('articleType'),
	        purchaseIntent: stringFromDataLayer('purchaseIntent')
	      },
	      
 		  	      
	      gTax: {
	        primaryIds: [683,],
	        secondaryIds: [683,683]
	      },	      
	      tax: {
	    	  primaryCategories: stringFromDataLayer('ancestorGoldenCategories').length > 0 ? stringFromDataLayer('ancestorGoldenCategories').split(",").concat(stringFromDataLayer('primaryCategory')) : [stringFromDataLayer('primaryCategory')] ,
	          secondaryCategories: stringFromDataLayer('primaryAncestorCategoryList').length > 0 ? stringFromDataLayer('primaryCategoryList').split(",").concat(stringFromDataLayer('primaryAncestorCategoryList').split(",")) : stringFromDataLayer('primaryCategoryList').split(",")
	      },
	      
	      ads: {
	        adblocker: (adBlockStatus == "true"), //detected further up the page
	        enabled: true
	      }	     
	    }
	  });

	  dlJobPosition = dlJobPosition || null;
	  dlIndustry = dlIndustry || null;

	  if (dlJobPosition !== '' || dlIndustry !== '' || stringFromDataLayer('userId') !== '') {
		  if (stringFromDataLayer('userId') !== '') {
				var userData = {};

				var hermesAttrs = {
					"companySize" : "543ea0bd-604a-4011-99e7-806fc8979b5e",
					"country" : "ea76d652-29bd-4a6c-ae50-a5d08ea28c5e",
				};
				var userKeys = Object.keys(hermesAttrs);

				$.ajax({
					type: "get",
				    crossDomain: true,
					url: "https://lqxgcyk808.execute-api.us-east-1.amazonaws.com/prod_h2/api/v1/profiles/" + idg_uuid,
					dataType: "json",
					data: {}, 
					headers : {
						"Content-Type": "application/x-www-form-urlencoded",
						"x-api-key":"HLyMXLISSW7HAYGgbx2Vb1Gf1OLcGmMG5BcwZ4Vb"
					}
				}).done(function(responseData){ 
					userKeys.forEach(function(key) {
						if (typeof(responseData.attrs[hermesAttrs[key]].option_label) !== "undefined") { 
							userData[key] = responseData.attrs[hermesAttrs[key]].option_label;
						}
						else { 
							userData[key] = responseData.attrs[hermesAttrs[key]].value;
						}
					});

					window.permutive.track('User', {
					  companySize: userData['companySize'],
					  country: userData['country'],
					  id: (stringFromDataLayer('userId') !== "" ? stringFromDataLayer('userId') : null),
					  jobIndustry: (dlIndustry !== "" ? dlIndustry : null),
					  jobPosition: (dlJobPosition !== "" ? dlJobPosition : null),
					  loggedIn: (stringFromDataLayer('insiderSignedIn') == 'true')
					})
					
					
				}).fail(function(data){
					//console.log("Error retrieving data: " + data.responseJSON.error);
				});  

			}
			else {
				window.permutive.track('User', {
				  companySize: null,
				  country: null,
				  id: (stringFromDataLayer('userId') !== "" ? stringFromDataLayer('userId') : null),
				  jobIndustry: (dlIndustry !== "" ? dlIndustry : null),
				  jobPosition: (dlJobPosition !== "" ? dlJobPosition : null),
				  loggedIn: (stringFromDataLayer('insiderSignedIn') == 'true')
				});
			}
	  }
	
	  //product js vars defined in document-head	  
	  if (prodNames !== '' || prodManufacturers !== '' || prodCategories !== '' || prodVendors !== '') {
		  window.permutive.track('Product', {
			  names: stringFromDataLayer('prodNames').split("|"),
			  categories: stringFromDataLayer('prodCategories').split("|"),
			  manufacturers: stringFromDataLayer('prodManufacturers').split("|"),
			  vendors: stringFromDataLayer('prodVendors').split("|")
		});

	  }
		 

</script>

<script>
	$.ajax({
		url: "https://cdn.permutive.com/f5b3be27-f789-4ef1-8867-37c67da5b361-web.js",
	  	dataType: "script",
	  	cache: true, // default is false
	  	async: true // default is true
	});
</script>
	
	
	
	
	

	

	
	
		
		
			
			
		
		
	
	
</head>



	<body id="article3584759" class="article blog3056 cso online">
		
			
			
					
					
						
						
					




















<script>
	var isJWfloatTest = false;
</script>




	

		
			
			
				<!-- Begin welcome ad overlay - gpt-overlay position  -->
				
					<div id="superadunit" class="hidden">
						<div class="ad">
							<div class="ad-header">
								<div class="brand-logo"></div>
								<a href="javascript:unhide('superadunit');" id="superstitial-text">Close Ad</a>
							</div>
							<div id="gpt-overlay" class=" ad-container">
								<script type="text/javascript">
									
										IDG.GPT.addDisplayedAd("gpt-overlay", "true");
										IDG.GPT.displayGoogleTagSlot('gpt-overlay');
									
								</script>
							</div>
						</div>
					</div>
				
				
				<!--  End welcome ad overlay - gpt-overlay position -->
				
			
			
			
			
			
			
		
	
 	
 
 
				
			
		
		













	
		<link rel="stylesheet" href="/www/css/oc-header.css?v=20201007113303" />
		<link rel="stylesheet" href="/www.idge.cso/css/oc-header.css?v=20201007113303" />
		











<header id="banner">
	
		<div class="ad">
			
				
			




















<script>
	var isJWfloatTest = false;
</script>




	

		
			
			
			
			
			
			
				<div id="oc_ad_1" class=" ad-container test">					
				</div>				
				<script type="text/javascript">
				
					IDG.GPT.addDisplayedAd("oc_ad_1", "true");
					$('#oc_ad_1').responsiveAd({screenSize:'971 1115', scriptTags: []});
                    IDG.GPT.log("Creating ad: oc_ad_1 - [971 1115]");
                    
				
				</script>
			
		
	
 	
 
  
		</div>
	
	
	
</header>
<script>
$(document).ready(function() {
	var params = {
			def : "blox4.dynamic",
			geo : getLocale(),
			definition : "nav.fixed",
			placement : "Nav Fixed"
			}
		$.get(
			"/napi/tile",
			params,
			function(data, status, xhr) {
				$('#custom_header').html(data);
			},
			"html");
});
	
//This is for sites without editions but using the new header and mega menu.
var hasEditions = "";
if ("true" !== "" && "true" !== null) {
	hasEditions = true;
}
</script>
<section id="oc-head" class="no-stick-important">
		<div class="oc-head-inner">
			<div class="oc-head-left">
				<a href="/" class="masthead"><span class="logo">cso online</span></a>
				
				
					
					
					
					
					<div class="edition-picker">
						<div class="current-edition" data-edition-name="current"><span id="current-edition">UNITED STATES</span> <i class="fas fa-caret-down"></i></div>
						<ul id="edition-picker-nav">

							
							   
							   
							   
							   
								   
									   <li class="edition-picker-item locale-">
									   		<a data-edition-name="US" data-edition-localeid="0" href="/">United States </a>
									   </li>
								   
								   
								
							
							   
							   
							   
							   
								   
								   
									   <li class="edition-picker-item locale-asean">
									   		<a data-edition-name="asean" data-edition-localeid="6" href="/asean/">ASEAN </a>
									   </li>
								   
								
							
							   
							   
							   
							   
								   
								   
									   <li class="edition-picker-item locale-au">
									   		<a data-edition-name="au" data-edition-localeid="3" href="/au/">Australia </a>
									   </li>
								   
								
							
							   
							   
							   
							   
								   
								   
									   <li class="edition-picker-item locale-in">
									   		<a data-edition-name="in" data-edition-localeid="5" href="/in/">India </a>
									   </li>
								   
								
							
							   
							   
							   
							   
								   
								   
									   <li class="edition-picker-item locale-uk">
									   		<a data-edition-name="uk" data-edition-localeid="2" href="/uk/">United Kingdom </a>
									   </li>
								   
								
							

						</ul>
					</div>
				
				
			</div>
			
			<div id="custom_header">
			</div>
			
			<div class="oc-head-right">
				
					
				
				
					<div class="insider-controls">
						<div class="insider-controls-hover">
							<a class="insider edition-link-url" href="/insider/"></a>
							<i class="far fa-user"></i>
						</div>
					            	
					       <div id="insider-welcome">
						           <div id="insider-selector">				                        
						               <div class="stories">
						                        	
						                        	<div class="personalization"><strong>Welcome<span id="person-first-name"></span>!</strong> Here are the latest Insider stories.</div>
						                        	
						                        	











	
	
	
	
	
	
	
	
	
	
































































	<ul>
		
			
			
				
					
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
							
						
						
						
							
						
						
						
					











<li><a  href="/article/3584930/azure-security-benchmark-v2-what-you-need-to-know.html">Azure Security Benchmark v2: What you need to know</a></li>
				
				
			
		
			
			
				
					
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
							
						
						
						
							
						
						
						
					











<li><a  href="/article/3584379/taking-aim-at-the-cybersecurity-skills-shortage-5-approaches-to-closing-the-gap.html">Taking aim at the cybersecurity skills shortage: 5 approaches to closing the gap</a></li>
				
				
			
		
			
			
				
					
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
							
						
						
						
							
						
						
						
					











<li><a  href="/article/3583972/homomorphic-encryption-tools-find-their-niche.html">Homomorphic encryption tools find their niche</a></li>
				
				
			
		
			
			
				
					
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
							
						
						
						
							
						
						
						
					











<li><a  href="/article/3574730/10-biggest-cybersecurity-manda-deals-in-2020.html">11 biggest cybersecurity M&amp;A deals in 2020</a></li>
				
				
			
		
	</ul>




													
													<div class="sign-out-link">
														<a class="more-insider edition-link-url" href="/insider/">More Insider</a>
														<a class="sign-out" href="javascript://" onclick="IDG.insiderReg.logout()">Sign Out</a>
													</div>
										</div>										
		
						          </div>
						              <div class="signin-register">
						              		
											<a href="javascript://" onclick="IDG.insiderReg.registerLinkEvent('insider-reg-signin')" class="js-open-modal signin" data-modal-id="insider-popup">Sign In</a> 
											<a href="javascript://" onclick="IDG.insiderReg.registerLinkEvent('insider-reg-form-short')" class="js-open-modal register" data-modal-id="insider-popup">Register</a>	
										</div>
										<a class="nav-ip-dropdown" href="https://www.idginsiderpro.com/subscribe">
												<div><b><em>NEW</em></b> FROM IDG</div>
												<span class="dropdownIPLogo"></span>
												<span>Learn More</span>
										</a>
						   </div>
						         
					</div>
					  	
				
				
					<a href="#search" class="search-btn"><i class="fas fa-search"></i></a>
					<div class="search-expand">
						<a href="" class="mega-close ss-delete"></a>
						
					    
					   		  
						    		










<div class="gcse-searchbox" >
    <script>
		(function() {
			var cx = '011881588825642368632:b0mgdf4z90i';
			var gcse = document.createElement('script');
			gcse.type = 'text/javascript';
			gcse.async = true;
			gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(gcse, s);
		})();
	</script>
	<gcse:searchbox-only resultsUrl="/search"></gcse:searchbox-only>
	<script>
		$(window).load(function(){
			const hdrSearchBox = document.querySelector(".gcse-searchbox input.gsc-input");
			hdrSearchBox.setAttribute("placeholder", "Start Searching");
		});
	</script>
</div>
							
							
						
						
					</div>
				
				
					<a class="mega-btn"></a>
					
				
			</div>
		</div>
</section>











<script>
$(document).ready(function() {	
	var paramsmegamenu1 = {
			def : "blox4.dynamic",
			geo : getLocale(),
			placement : "Nav Mega Column 1"
			}
		$.get(
			"/napi/tile",
			paramsmegamenu1,
			function(data, status, xhr) {
				$('#megacolumn1').html(data);
				if (hasEditions === true) {
					addSlugCode();
				}
			},
			"html");
	var paramsmegamenu2 = {
			def : "blox4.dynamic",
			geo : getLocale(),
			placement : "Nav Mega Column 2"
			}
		$.get(
			"/napi/tile",
			paramsmegamenu2,
			function(data, status, xhr) {
				$('#megacolumn2').html(data);
				if (hasEditions === true) {
					addSlugCode();
				}
			},
			"html");
	var paramsmegamenu3 = {
			def : "blox4.dynamic",
			geo : getLocale(),
			placement : "Nav Mega Column 3"
			}
		$.get(
			"/napi/tile",
			paramsmegamenu3,
			function(data, status, xhr) {
				$('#megacolumn3').html(data);
				if ( hasEditions === true) {
					addSlugCode();
				}
			},
			"html");
	var paramsmegamenu4 = {
			def : "blox4.dynamic",
			geo : getLocale(),
			placement : "Nav Mega Column 4"
			}
		$.get(
			"/napi/tile",
			paramsmegamenu4,
			function(data, status, xhr) {
				$('#megacolumn4').html(data);
				if (hasEditions === true) {
					addSlugCode();
				}
			},
			"html");
});
	
</script>
<nav class="megamenu">
		<div class="megamenu-inner">
			<div class="mega-mobile-nav">
				<a href="#search" class="search-btn"><i class="fas fa-search"></i></a>
				
				
					<div class="mega-insider-icons insider-controls">
					<i class="far fa-user"></i>
					<a class="insider" href="/about/learn-about-insider.html"></a>
					<a class="sign-out-link" href="javascript://" onclick="IDG.insiderReg.logout()">Sign Out</a>
					<div class="signin-register">
						<a href="javascript://" onclick="IDG.insiderReg.registerLinkEvent('insider-reg-signin')" class="js-open-modal signin" data-modal-id="insider-popup">Sign In</a> 
						<a href="javascript://" onclick="IDG.insiderReg.registerLinkEvent('insider-reg-form-short')" class="js-open-modal register" data-modal-id="insider-popup">Register</a>
					</div>
				</div>
				
			</div>
			<a href="" class="mega-close ss-delete"></a>
		
			<div class="mega-logo-content">
			<img class="mega-logo" src="https://alt.idgesg.net/images/furniture/cso/CSO-logo-nameplate.svg" />
			
			<div class="mega-4col">
				<div class="mega-col">
					
						<div class="mega-grp new-insiderpro">
							<div class="mega-hed">NEW <span>Insider</span> PRO
								<a class="ip-learnmore" href="https://www.idginsiderpro.com/subscribe">Learn More</a>
							</div>
						</div>
						<div class="mega-grp latest-insider">					
							<div class="mega-hed ss-directright right">Latest <span>Insider</span></div>
							
							











	
	
	
	
	
	
	
	
	
	
































































	<ul>
		
			
			
				
					
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
							
						
						
						
							
						
						
						
					











<li><a  href="/article/3585129/how-silentfade-group-steals-millions-from-facebook-ad-spend-accounts.html">How SilentFade group steals millions from Facebook ad spend accounts</a></li>
				
				
			
		
			
			
				
					
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
							
						
						
						
							
						
						
						
					











<li><a  href="/article/3584451/silo-for-safe-access-a-more-secure-web-browser-for-some-use-cases.html">Silo for Safe Access: A more secure web browser for some use cases</a></li>
				
				
			
		
			
			
				
					
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
							
						
						
						
							
						
						
						
					











<li><a  href="/article/3584132/6-steps-to-building-a-strong-breach-response-plan.html">6 steps to building a strong breach response plan</a></li>
				
				
			
		
			
			
				
					
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
							
						
						
						
							
						
						
						
					











<li><a  href="/article/3583941/preparing-for-flash-and-office-2010-end-of-life.html">Preparing for Flash and Office 2010 end-of-life</a></li>
				
				
			
		
	</ul>




							
							<div id="ip-below-personalize-list" class="mega-grp insider-controls">
								<a class="nav-ip-dropdown" href="https://www.idginsiderpro.com/subscribe">
									<div><b><em>NEW</em></b> FROM IDG</div>
									<span class="dropdownIPLogo"></span>
									<div>Learn More</div>
								</a>
							</div>
						</div>
					
					
						<div id="megacolumn1">
						</div>
				</div>
				<div class="mega-col">
						 <div id="megacolumn2">
						</div>
				</div>
				<div class="mega-col">
					
						
							<div class="mega-grp ip-controls">
								<span class="megamenuIPLogo"></span>
								<div class="mega-hed"><b>NEW FROM IDG</b></div>							
								<span>Subscribe to access expert insight on business technology - in an ad-free environment. <a href="https://www.idginsiderpro.com/subscribe">Learn more</a> </span>
							</div>
							<div class="mega-grp insider-controls">
								<div class="mega-insider-icons">
									<a class="insider" href="/about/learn-about-insider.html"></a>
									<i class="far fa-user"></i>
								</div>
								<div class="personalization"><strong>Welcome<span id="person-first-name"></span>!</strong> Check out the latest Insider stories <a href="/insider" class="edition-link-url">here.</a></div>
								<a class="sign-out-link" href="javascript://" onclick="IDG.insiderReg.logout()">Sign Out</a>
								<div class="signin-register">
									
									<a href="javascript://" onclick="IDG.insiderReg.registerLinkEvent('insider-reg-signin')" class="js-open-modal signin" data-modal-id="insider-popup">Sign In</a> 
									<a href="javascript://" onclick="IDG.insiderReg.registerLinkEvent('insider-reg-form-short')" class="js-open-modal register" data-modal-id="insider-popup">Register</a>
								</div>
							</div>
						
						
					
					 <div id="megacolumn3">
					 </div>
				</div>
				<div class="mega-col">
					<div class="mega-grp idg-network">
						<div class="mega-hed ss-directright right">More from the IDG Network</div>
						
							<div id="megacolumn4">
						    </div>
					</div>
				</div>
			</div>
			</div>
			
			<div class="mega-footer">
				    	<ul class="mega-about">
				    		
		            		
							
							
							
								<li><a href="/about/about.html"  >About Us</a> <span class="bar">|</span>
							
								<li><a href="/about/contactus.html"  >Contact</a> <span class="bar">|</span>
							
								<li><a href="/about/privacy.html"  >Privacy Policy</a> <span class="bar">|</span>
							
								<li><a href="/about/cookie-policy.html"  >Cookie Policy</a> <span class="bar">|</span>
							
								<li><a href="/about/member-preferences.html"  >Member Preferences</a> <span class="bar">|</span>
							
								<li><a href="/about/contactus.html#advertise-with-us"  >Advertising</a> <span class="bar">|</span>
							
								<li><a href="https://www.idg.com/work-here/" target="_blank" rel="nofollow" >IDG Careers</a> <span class="bar">|</span>
							
								<li><a href="/about/adchoices.html"  >Ad Choices</a> <span class="bar">|</span>
							
								<li><a href="/about/affiliates.html"  >E-commerce Links</a> <span class="bar">|</span>
							
								<li><a href="/about/ccpa.html"  >California: Do Not Sell My Personal Info</a> <span class="bar">|</span>
							
						
		            	</ul>
		            	<ul class="mega-social">
		            		<li>Follow Us</li>
						
							<li class="lkndn"><a class="social-media-li" href="http://www.linkedin.com/company/csoonline" rel="nofollow" target="_blank"><i class="ss-icon ss-social-circle brand ss-linkedin"></i></a></li>
						
						
							<li><a class="social-media-tw" href="https://twitter.com/csoonline" rel="nofollow" target="_blank"><i class="ss-icon ss-social-circle ss-twitter"></i></a></li>
						
						
							<li><a class="social-media-fb" href="https://www.facebook.com/CSOonline" rel="nofollow" target="_blank"><i class="ss-icon ss-social-circle brand ss-facebook"></i></a></li>				
						
							
	            		</ul>
		            
			            <script>
			            	if (facebookUrl !== null && facebookUrl !== "") {
				            	document.querySelector(".social-media-fb").setAttribute("href", facebookUrl);
			            	}
			            	if (twitterUrl !== null && twitterUrl !== "") {
				            	document.querySelector(".social-media-tw").setAttribute("href", twitterUrl);
			            	}
			            	if (typeof linkedInUrl !== "undefined" && linkedInUrl !== null && linkedInUrl !== "") {
				            	document.querySelector(".social-media-li").setAttribute("href", linkedInUrl);
			            	}
			            </script>
					

		</div>
	</div>
	<div class="mega-submenu">
			<a href="" class="mega-mobile-nav ss-left"></a>
			<a href="" class="mega-close ss-delete"></a>
			<div class="submenu-contents"></div>
	</div>
</nav>



	<style>
		#insider-popup.modal-box {
			display: none;
			position: absolute;
			z-index: 6100000;
			width: 100%;
			background: transparent;
			border-bottom: 0 none;
			border-radius: 0px;
			box-shadow: none;
			border: 0 none;
			top: 0;
			bottom: 0;
			left: 0;
			right: 0;
			margin: 0 auto;
		}
		@media only screen and ( min-width: 48em ) {
			#insider-popup.modal-box {
				width: 770px;
			}
		}
		@media only screen and ( min-width: 60.625em ) {
			#insider-popup.modal-box {
				width: 850px;
			}
		}
	</style>



	<div id="insider-popup" class="modal-box ">
	
		<div class="insider-modal-wrapper">
	  
			<div class="modal-header-title">
				<div class="modal-banner-insider"><span class="insider"></span></div>
		    	<div class="modal-close close">×</div>
		  	</div>
		  	
		  	<div class="modal-body">
		  		
		  			
						<script>
$(document).ready(function(){
	$('a[data-link]').click(function() {
		
		  //get this link's dataLink value
		  var dataLink = $(this).attr('data-link');

		  //select the div with the same value
		  var toKeep = 'div[data-link="'+dataLink+'"]';
	
		  //select data-link divs that are not the above div
		  $('div[data-link]').not(toKeep).hide();
		  
		  if($(this).hasClass('link-transition')){
			  $(toKeep).fadeIn(800);
		  } else {
			  $(toKeep).show();
		  }
	
		  //prevent location change
		  return false;
	});
	

});
</script>

					
					
				
		  	</div>
		  	
		  	<div class="modal-footer">
		    	<div class="modal-close close-btn">Close</div>
		  	</div>
		</div>
	  	
	</div>

	<script>
		$(document).ready(function(){

			var appendthis =  ("<div class='modal-overlay modal-close'></div>");
			if($thm.deviceWidthAtLeast($thm.deviceBreakpoints.tablet)){
				$('.modal-box').css({
					//top: ($(window).height() - $(".modal-box").outerHeight()) / 2,
					top: 10,
					left: 0
				});
			}
			
			
			if(!$thm.deviceWidthAtLeast($thm.deviceBreakpoints.tablet)){
				$('.modal-box').height($(document).height());
				$('.modal-box').css('top','0');
			}
			
			var userAg = navigator.userAgent;

			$('a[data-modal-id]').click(function(e) {
				e.preventDefault();
				$('body').append(appendthis);
				$('.modal-overlay').fadeTo(500, 0.9);
				$('.modal-overlay').height($(document).height());
				var modalBox = $(this).attr('data-modal-id');
				
				if ($(".modal-box").hasClass('triggered') || (userAg.indexOf("Firefox")!=-1)) {
					$('#'+modalBox).fadeIn($(this).data()); // triggered by something other than onclick of link such as scroll to point in window
				} else {
					// IDGMPM-16177
					//if(!$thm.deviceWidthAtLeast($thm.deviceBreakpoints.tablet)){
						$('#'+modalBox).toggle('slide', {direction: 'up'}, 800);
					//} else {
				   // 	$('#'+modalBox).toggle('slide', {direction: 'left'}, 600);
					//}
				}

				if(!$thm.deviceWidthAtLeast($thm.deviceBreakpoints.tablet)){
					$("html, body").animate({
			            scrollTop: 0
			        }, 700);
			        
			        
			        $('a.btn.continue-on').click(function() {
			        	$('html, body').animate({
			        		scrollTop: 0
			        	}, 500);
			        });
			        
			        return false;
			        
				}
				if (navigator.userAgent.match(/(iPad)/)) {
					$("html, body").animate({
			            scrollTop: 0
			        }, 500);
				}
			});
		  
		  
			$(".modal-close, .modal-overlay").click(function() {
				$('.select2-drop').css('display','none');
				$(".modal-overlay").fadeOut(500, function() {
					$(".modal-overlay").remove();
				});
				if ($(".modal-box").hasClass('triggered') || (userAg.indexOf("Firefox")!=-1)) {
					$(".modal-box").fadeOut(500);
				} else {
					// IDGMPM-16177
					//if(!$thm.deviceWidthAtLeast($thm.deviceBreakpoints.tablet)){
						$('.modal-box').toggle('slide', {direction: 'up'}, 800);
					//} else {
					//	$('.modal-box').toggle('slide', {direction: 'left'}, 600);
					//}
				}
				// remove the stylesheet added in header.jsp
				setTimeout(function(){
					$("link.oc-modal").remove();
					$("script.oc-modal").remove();
				}, 1000);
			});
		
		});
	</script>


<script>
var relatedTop;
</script>

		
	<link rel="stylesheet" href="/www/css/content-ribbon.css?v=20201007113303" />

	











<!-- Related Content -->




	<script>
	// Remove related content ribbon if device is less than tablet size (768px)
	if ($thm.deviceWidthLessThan($thm.deviceBreakpoints.tablet)) {
		$('.related-content-wrapper').remove();
	}

	</script>
	



<script>
var coreEdition = '';
var coreEditionAbbr = 'US';
var coreEditionDescription = 'United States';
//debugger;
$(document).ready(function() {
	$('.edition-picker').css("display",'inline-block');
	//reader selects edition from picker
	$("li.edition-picker-item a").on('click', function() {
		//debugger;
		//console.log("====edition-picker onclick - localeId from slug = " +  getIdFromSlug[$(this).attr("data-edition-name")]);
		var localeSlug = $(this).attr("data-edition-name");
		var selectedLocaleId = $(this).attr("data-edition-localeid");
		var dataLayer = window.dataLayer = window.dataLayer || [];
		dataLayer.push({
			'event': 'editionChange',
			'eventCategory':'Edition Change',
			'eventAction':localeSlug,
			'eventLabel':''
		});
		setSelectedLocale(selectedLocaleId); // save selection in cookie
		
	});
	var getDescFromId = getApolloLocaleDescMap();
	var localeDesc = "";
	//debugger;
	// if selectedLocale cookie exists, get locale
	if (typeof  getSelectedLocale() !== 'undefined' && getSelectedLocale() === getLocale()) { // get locale from cookie if available otherwise, use another locale source (from geolocation, url slug, etc.)
	 	countryCode = getSlugFromId[getSelectedLocale()];
	 	localeDesc = getDescFromId[getSelectedLocale()];
	} else {
		countryCode = getSlugFromId[getLocale()];
		localeDesc = getDescFromId[getLocale()];
	}
	// if countryCode is empty string at this point, it means getLocale() has localeId as 0 which is global locale.
	if (!countryCode) {
		countryCode = coreEditionAbbr; // country code for default global depends on brand (US for cio.com)
		localeDesc = coreEditionDescription;
	}

	// set current edition in header
	$("#current-edition").html(localeDesc.toUpperCase());
});
</script>

<script>
	var ocHeadTop, menuWidth;//needs to be in global scope because it's used in multiple closures
	$(document).ready(function() {
		// this is how Modernizr detects touch
		var hasTouch = 'ontouchstart' in window;
		
		
			$('body').addClass('insider-plus'); //adds class required for styling of Insider signin/register modal
		
		
		if (document.cookie.indexOf("nsdr") > -1 || window.location.href.indexOf("nsdr=true") > -1 ) {
			$(".insider-controls").addClass("signed-in");
			$(".insider-controls .far.fa-user").removeClass("far").addClass("fas");
		}
		$(".insider-controls-hover").mouseenter(function() {
			$('#insider-welcome').slideDown();
		});
		$(".insider-controls").mouseleave(function() {
			$('#insider-welcome').slideUp();
		});
							if ($thm.deviceWidthAtLeast($thm.deviceBreakpoints.tablet) && $thm.deviceHeight() < 768 ) {
									if($('html').hasClass('touch')) {
										$('#insider-popup.modal-box .modal-body').addClass('short');
									} else {
										$('#insider-popup.modal-box .modal-body').addClass('short-desk');
									}
							}
							
								ocHeadTop = $("#oc-head").offset().top;
								var scrollTop;
								$(window).scroll(function() {
									scrollTop = $(window).scrollTop();
									//console.log("scrollTop="+scrollTop);
									//console.log("ocHeadTop="+ocHeadTop);
									if (scrollTop > ocHeadTop) {
										$("#oc-head").addClass("stick");
										$("#skinAdTarget").addClass("stick");
										$("body#homepage #page-wrapper").addClass("stick-pad");
									}
									else {
										$('#oc-head').removeClass('stick');
										$("#skinAdTarget").removeClass("stick");
										$("body#homepage #page-wrapper").removeClass("stick-pad");
									}
								});
							
							
							
						if ($thm.deviceWidthAtLeast($thm.deviceBreakpoints.tablet)) {
							$("#oc-head .search-btn").click(function(e) {
								e.preventDefault();
								$(".search-expand").slideToggle();
							});
							$(document).click(function(evt) {
								if (!$(event.target).closest(".search-expand").length && !$(event.target).closest("#oc-head .search-btn").length) {
									if($('.search-expand').is(":visible")) {
										$(".search-expand").slideUp();
									}
								}
							});
							
						}//end tablet/desktop logic
						
						$(".mega-btn").click(function(e) {
							e.preventDefault();
							$("body,html,.homepage-hero").addClass("no-scroll");
							$(".megamenu").addClass("open");
							if ($thm.deviceWidthLessThan($thm.deviceBreakpoints.tablet)){
								menuWidth = $(".megamenu-inner").width();
								$(".mega-submenu").css({left:menuWidth+"px",position:"fixed"});
							}
						});
						$(".mega-close").click(function(e) {
							e.preventDefault();
							$("body,html,.homepage-hero").removeClass("no-scroll");
							$(".megamenu").removeClass("open");
							$(".megamenu-inner").css({left:"0"});
							$(".mega-submenu").css({position:"absolute"});
							$(".submenu-contents").empty();
							$(".search-expand").slideUp();
							
						});
						if ($thm.deviceWidthLessThan($thm.deviceBreakpoints.tablet)){
							$(document).on("click",".mega-hed.fa-caret-down",function(e) {
								e.preventDefault();
								var $list = $(this).siblings("ul");
								
								$(".mega-col ul.open").not($list).removeClass("open").slideUp();
								if ($list.hasClass("open")) {
									$list.removeClass("open").slideUp();
								}
								else {
									$list.addClass("open").slideDown();
								}
							});
							
							$(".megamenu-inner .idg-network .mega-hed").click(function(e) {
								e.preventDefault();
								var contentCopy = $(".idg-network").clone();
								$(".submenu-contents").append(contentCopy);
								$(".mega-submenu .idg-network .mega-hed").removeClass("ss-directright");
								menuWidth = $(".megamenu-inner").width();
								animateSlideLeft(menuWidth);
								
							});
							$(".megamenu-inner .latest-insider").click(function(e) {
								e.preventDefault();
								var contentCopy = $(".latest-insider").clone();
								$(".submenu-contents").append(contentCopy)
								$(".mega-submenu .latest-insider .mega-hed").removeClass("ss-directright");
								menuWidth = $(".megamenu-inner").width();
								animateSlideLeft(menuWidth);
							});
							$(".mega-submenu .ss-left").click(function(e) {
								e.preventDefault();
								menuWidth = $(".mega-submenu").width();
								animateSlideRight(menuWidth);								
							});
							$(".megamenu-inner .search-btn").click(function(e) {
								e.preventDefault();
								$(".submenu-contents").append($("#oc-head .search-expand"));
								$(".mega-submenu .search-expand").show();
								menuWidth = $(".megamenu-inner").width();
								animateSlideLeft(menuWidth);
							});
							$(".mega-insider-icons").click(function(e) {
								if (document.cookie.indexOf("nsdr") > -1 || window.location.href.indexOf("nsdr=true") > -1) {
										e.preventDefault();
										var contentCopy = $("#insider-selector .stories").clone();
										$(".submenu-contents").append(contentCopy).addClass("insider-controls signed-in");
										menuWidth = $(".megamenu-inner").width();
										animateSlideLeft(menuWidth);
								}				
							});
						}//end mobile-only
		// if browser does not support touch, ok to use mouse hover
		

			if (hasTouch === false) {
				$(".current-edition").mouseenter(function() {
					if ($('.edition-picker i').hasClass('fa-caret-down')) {
						$('.edition-picker i').removeClass('fa-caret-down');
						$('.edition-picker i').addClass('fa-caret-up');
					}
					$('#edition-picker-nav').slideDown(200);
				});
				$(".edition-picker").mouseleave(function() {
					if ($('.edition-picker i').hasClass('fa-caret-up')) {
						$('.edition-picker i').removeClass('fa-caret-up');
						$('.edition-picker i').addClass('fa-caret-down');
					}
					$('#edition-picker-nav').slideUp(200);
				});
			}
		// if browser supports touch or not
		$(".current-edition").click(function(e) {
			if ($('.edition-picker i').hasClass('fa-caret-down')) {
				$('.edition-picker i').removeClass('fa-caret-down');
				$('.edition-picker i').addClass('fa-caret-up');
			} else {
				$('.edition-picker i').removeClass('fa-caret-up');
				$('.edition-picker i').addClass('fa-caret-down');
				
			}
			$('#edition-picker-nav').slideToggle(200);
		});
		
						
	});//end document ready
	
						function animateSlideLeft(val) {
							$(".megamenu-inner, .mega-submenu").animate({
								left: "-="+val+"px"
							}, 500);
						};
						function animateSlideRight(val) {
							$(".megamenu-inner, .mega-submenu").animate({
								left: "+="+val+"px"
							}, 500, function() {
								if ($(".mega-submenu .search-expand").length > 0) {
									$("#oc-head .search-btn").after($(".mega-submenu .search-expand"));
								}
								$(".submenu-contents").empty();
							});
						};
						
						  	function calcAdHeight() {
						  		googletag.pubads().addEventListener('slotRenderEnded', function(event) {
									var slotId = event.slot.getSlotElementId();
									if (slotId == 'oc_ad_1') {
										if (event.isEmpty) {
											//calculate based on zero height
											$("#banner .ad").css("height",0);
											//console.log("ocHeadTop set to: "+ocHeadTop);
										}
										else {
											//calculate based on whatever the height is at the breakpoint
											if ($thm.deviceWidthLessThan($thm.deviceBreakpoints.tablet)){
												$("#banner .ad").css("height","195px");//195px is height of the responsive "top hat" ad at mobile
												ocHeadTop = ocHeadTop + 195;
												relatedTop = 195;
											}
											else {
												$("#banner .ad").css("height","255px");//height at tablet/desktop
												ocHeadTop = ocHeadTop + 255;
												relatedTop = 255;
											}
										}
									}
								});
						  	};
					  	
							try {
								IDG.GPT.googleCommandPush(calcAdHeight);
							}
							catch(e){
								console.log('error calculating ad height: ' + e);
							}
						
					</script>

	
	



		
		













<div id="page-wrapper" class="page-wrapper">
	
	













<div id="skinAdTarget"></div>


			
		











	
	
	
	
	
	
	
	
	
	
	
	
	
	
	





	
	
 	


	
	<section role="main" itemscope itemtype="http://schema.org/Article">
	
		
		
		

		<article itemscope itemtype="http://schema.org/BlogPosting"  class="blog" >

		















<!-- Events Header -->

 
 
	
		
		
		
		
		
					    			
		
	
	
	
	
	

 
 
 
 
  
  
 
 












	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


<!-- //end Events Header -->


	
	
	
	
	
	
		
	



	
		
	
	
		





















			
		
	
	
	
















<script src="/www/js/date-time-moments.js"></script>


	
		<script>
		$(document).ready(function() {
			var fullDate = "2020-10-05T14:13-0700";
			var timeDate = "";
			var dateFormat = "MMM D, YYYY h:mm a z";
			var dateFormatIntl = "D MMMM YYYY H:mm z";
			
			if ( document.getElementById("current-edition").textContent !== "UNITED STATES" ) {
				if ( document.getElementById("current-edition").textContent === "INDIA" ) {
					timeDate = moment(fullDate).tz('Asia/Calcutta').format(dateFormatIntl); // intl format eg: 10 AUGUST 2019 24 hours format no am/pm
				} else if ( document.getElementById("current-edition").textContent === "UNITED KINGDOM" ) {
					timeDate = moment(fullDate).tz('Europe/London').format(dateFormatIntl); // 24 hours format no am/pm
				} else if ( document.getElementById("current-edition").textContent === "ASEAN" ) {
					timeDate = moment(fullDate).tz('Asia/Singapore').format('D MMMM YYYY H:mm') + " SGT"; // 24 hours format no am/pm
				} else if ( document.getElementById("current-edition").textContent === "MIDDLE EAST" ) {
					timeDate = moment(fullDate).tz('Asia/Riyadh').format('D MMMM YYYY H:mm') + " AST"; // 24 hours format no am/pm
				} else if ( document.getElementById("current-edition").textContent === "AFRICA" ) {
					timeDate = moment(fullDate).tz('Africa/Johannesburg').format(dateFormatIntl); // 24 hours format no am/pm
				} else if ( document.getElementById("current-edition").textContent === "AUSTRALIA" ) {
					timeDate = moment(fullDate).tz('Australia/Sydney').format(dateFormatIntl); // 24 hours format no am/pm
				} else if ( document.getElementById("current-edition").textContent === "NEW ZEALAND" ) {
					timeDate = moment(fullDate).tz('Pacific/Auckland').format(dateFormatIntl); // 24 hours format no am/pm
				} else if ( document.getElementById("current-edition").textContent === "NETHERLANDS" ) {
					timeDate = moment(fullDate).tz('Europe/Amsterdam').format(dateFormatIntl); // 24 hours format no am/pm
				}
				else {
					timeDate = moment(fullDate).tz(Intl.DateTimeFormat().resolvedOptions().timeZone).format(dateFormatIntl); // 24 hours format no am/pm
				}
				document.querySelector(".format-date").textContent = timeDate;
			} else { // edition = UNITED STATES
				timeDate = moment(fullDate).tz('America/Los_Angeles').format(dateFormat); // US format eg: AUGUST 10, 2019 12 hour format
				document.querySelector(".format-date").textContent = timeDate;
			}
		});
		</script>
	
	
















	<style>
		nav.breadcrumbs { visibility: hidden; }
	</style>
	<script type="text/javascript">
	$(document).ready(function() {
		if ( document.getElementById("current-edition").textContent !== "UNITED STATES" ) {
			
	        var Obj = { 
	        	Centers: "Centre",
	        	Center: "Centre",
                Consumerization: "Consumerisation", 
                Fiber: "Fibre", 
                Internationalization: "Internationalisation",
                Licensing: "Licencing",
                Optimization: "Optimisation",
                Theater: "Theatre",
                Virtualization: "Virtualisation",
                Visualization: "Visualisation" 
            };
			
			if ( $("span").hasClass("primary-cat-name2") || $("span").hasClass("article-primary-cat") || $("span").hasClass("primary-cat-name") ) {
				var primaryCatName = "";
				var pluralCategory = document.querySelectorAll(".primary-cat-name2, .article-primary-cat, .primary-cat-name");
				
				pluralCategory = [].slice.call(pluralCategory);
				
				pluralCategory.forEach(function(element) {			
					primaryCatName = element.textContent.replace(/Centers|Center|Consumerization|Fiber|Internationalization|Licensing|Optimization|Theater|Virtualization|Visualization/, function(matched) { 
						return Obj[matched];
		            });			
					$(element).text(primaryCatName);
				});
			}
		} 
		$('nav.breadcrumbs').css('visibility','visible');
	});
	</script>















	
		<meta itemprop="keywords" content="Tanium, technology industry,  "/>
	
	







<header class='cat'>

	
	
	
	
	
	
	
	
	<nav class="breadcrumbs horiz">
		<ul itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
			<li><a class="edition-link-url" href="/" itemprop="url"><span itemprop="title">Home</span></a></li>
			
				
				
					<li><a class="edition-link-url primary-cat-url" href="/category/technology-business/" itemprop="url"><span class="primary-cat-name" itemprop="title">Technology Industry</span></a></li>
				
				
			
		</ul>
	</nav>
	
	
	
	
		<div class="blog-byline vcard author " itemscope itemtype="http://schema.org/Person" itemprop="author">
			<div class="brand sponsored">
				
				
					
						
							
							
							
							
						



















	<a href="/blog/real-perspectives-on-securing-a-distributed-workforce/">
		<img  class="smallImage  imgId100854688 " src="https://images.idgesg.net/images/article/2020/08/tanium_tbug_150px-100854688-small.jpg" width="34" width="34" alt="Real Perspectives on Securing a Distributed Workforce" itemprop="image" />
	</a>

					
					
					
				
				
				<div class="blog-branding-text">
					
					
						
							
							
								<span class="brandpost">BrandPost</span> Sponsored by Tanium <span class="divider">|</span> <a class="learn-more" href="#">Learn More</a>
							
						
					
					
					
					
					<div class="blog-title"><a href="/blog/real-perspectives-on-securing-a-distributed-workforce/" class="edition-link-url">Real Perspectives on Securing a Distributed Workforce</a></div>
					
					
					
																				
						
							
								
								<div class="cat sponsored byline vcard author ">		
									<div class="byline-wrapper">
										<p class="name" itemscope itemtype="http://schema.org/Person" itemprop="author">
											
												
											
















<span class="by">By </span><span class="fn" itemprop="name">Tom Schmidt</span>
										
										<span class="dateline">
											<span class="pipe job"> | </span>
											
											
											
											<span class="pub-date"  itemprop="datePublished" 
											    content="2020-10-05T14:13-0700"><span class="format-date"></span>
												
											</span>
											</span>
										</p>
									</div>
								</div>
							
										
					
				</div>
			</div>
			
				<div class="about">
					<div class="about-title">About <span class="divider">|</span> <a href="/blog/real-perspectives-on-securing-a-distributed-workforce/index.rss"><i class="ss-icon ss-social ss-rss"></i></a></div>
					<p>When the pandemic hit, organizations were hit with an overnight shift to distributed workforce. This blog explores data points, perspectives and plans for the new normal.</p>
				</div>
			
		</div>
	
	
	
	
	
	
	
		
		
			<div class="category"><a class="edition-link-url" href="/opinion" itemprop="genre">Opinion</a></div>
		
	
	

	<h1 itemprop="headline">The COVID-19 Pandemic Has Become a Catalyst for Cyberattacks</h1>
	
	
	
	
		<section class="deck viewability">
			<h3 itemprop="description">Members of IDG’s Influencer Network assess the Impact of delayed security projects and look to the future</h3>
		</section>
	
	
	
	
	
	
	
	
			<div class="cat-social sponsored">
				
					
				















 



	

				

	
	
		
		
	





	


<div id="sharer" class="cat sidecar show blog">
<ul id="share-tool" class="expand">

	
		<li class="sosh">
			<a data-socialsite="Facebook" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.csoonline.com%2Farticle%2F3584759%2Fthe-covid-19-pandemic-has-become-a-catalyst-for-cyberattacks.html" target="_blank">
				<img class="sidecar-icon" src="//idge.staticworld.net/images/facebook.svg" />
			</a>
		</li>	
	<li class="sosh">
		<a data-socialsite="Twitter" class="twit-hand" href="https://twitter.com/intent/tweet?url=https%3A%2F%2Fwww.csoonline.com%2Farticle%2F3584759%2Fthe-covid-19-pandemic-has-become-a-catalyst-for-cyberattacks.html&via=csoonline&text=The+COVID-19+Pandemic+Has+Become+a+Catalyst+for+Cyberattacks" target="_blank">
			<img class="sidecar-icon" src="//idge.staticworld.net/images/twitter.svg" />
		</a>
	</li>
	<li class="sosh">
		<a data-socialsite="Linkedin" href="http://www.linkedin.com/shareArticle?url=https%3A%2F%2Fwww.csoonline.com%2Farticle%2F3584759%2Fthe-covid-19-pandemic-has-become-a-catalyst-for-cyberattacks.html&title=The+COVID-19+Pandemic+Has+Become+a+Catalyst+for+Cyberattacks" target="_blank">
			<img class="sidecar-icon" src="//idge.staticworld.net/images/linkedin.svg" />
		</a>
	</li>	
	<li class="sosh hide">
			<a data-socialsite="Reddit" href="http://reddit.com/submit?url=https%3A%2F%2Fwww.csoonline.com%2Farticle%2F3584759%2Fthe-covid-19-pandemic-has-become-a-catalyst-for-cyberattacks.html&title=The+COVID-19+Pandemic+Has+Become+a+Catalyst+for+Cyberattacks" target="_blank">
				<img class="sidecar-icon" src="//idge.staticworld.net/images/reddit.svg" />
			</a>
	</li>	
	<li class="sosh hide">
		<a href="mailto:?Subject=The COVID-19 Pandemic Has Become a Catalyst for Cyberattacks&Body=Check%20out%20this%20article%20from%20CSO Online%3A%20https%3A%2F%2Fwww.csoonline.com%2Farticle%2F3584759%2Fthe-covid-19-pandemic-has-become-a-catalyst-for-cyberattacks.html" target="_blank" rel="nofollow" id="email-icon">
			<img class="sidecar-icon" src="//idge.staticworld.net/images/mail.svg" />	
		</a>
	</li>
	<li class="sosh hide print">
		<a href="javascript:window.print();">
			<img class="sidecar-icon" src="//idge.staticworld.net/images/print.svg" />
		</a>
	</li>
	<li class="more">
		<div class="more-icon" onclick="document.getElementById('share-tool').className = 'expand';"></div>
	</li>




</ul>
</div>

<script type="text/javascript">
$(document).ready(function() {
	if (twitterHandle != "") {
		$("a[href*=via]").attr("href", function(_, href) {
			  return href.replace(/via=csoonline/, "via="+twitterHandle);
		});
	}
	
	//Add Social Share Event Tag in GTM - IDGMPM-17271
	$("a[data-socialsite]").click(function() {
		var dataLayer = window.dataLayer = window.dataLayer || [];
		dataLayer.push({
			'event': 'socialShare', 
		  	'eventCategory': 'Social Share',
		  	'eventAction': $(this).attr("data-socialsite"), 
		  	'eventLabel': window.document.title
		});
		
	});
});
</script>

<script type="text/javascript">
var isValidEmailAddress = isValidEmailAddress || function(emailAddress) {
    var pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,5}$/i);
    return pattern.test(emailAddress);
};
function encodeQueryData(params) {
	var ret = [];
	for (var paramKey in params) {
		ret.push(encodeURIComponent(paramKey) + "=" + encodeURIComponent(params[paramKey]));
	}
	return ret.join("&");
}
</script>

			</div>
	
	
	

	
		
			
		
	
	
		
	
	
		
			<div class="ad viewability" id="viewabilityAdContainer">
				<div id="viewabilityAdUnit">
					
						
					




















<script>
	var isJWfloatTest = false;
</script>




	

		
			
			
			
			
			
			
				<div id="topleaderboard" class=" ad-container test">					
				</div>				
				<script type="text/javascript">
				
					IDG.GPT.addDisplayedAd("topleaderboard", "true");
					$('#topleaderboard').responsiveAd({screenSize:'971 1115', scriptTags: []});
                    IDG.GPT.log("Creating ad: topleaderboard - [971 1115]");
                    
				
				</script>
			
		
	
 	
 
 
				</div>
			</div>
			
				<script src="/www/js/ads/stickyLb.js"></script>
				<script>
					var parallaxArgs = {
						topNavEl: 'oc-head',
						topNavIsSticky: true,
						leaderboadrdId: 'topleaderboard', 
						adContainer: 'viewabilityAdContainer',
						adUnit: 'viewabilityAdUnit',
						viewabilityTime: 10000
					}
				</script>
				
				
					
					
						<script>
						//console.log("%c Non-premium article or Insider logged in; wait to see if we have a skin ad before initializing sticky LB", 'background: #222; color: #bada55');

							function runStickyLb() {
								googletag.pubads().addEventListener('slotRenderEnded', function(event) {
									const slotId = event.slot.getSlotElementId();
									if (slotId == 'gpt-skin') {
										//console.log("%c slotId="+slotId, 'background: #222; color: #bada55');
										if (event.isEmpty) {
											//console.log("%c skin ad NOT running; okay to run sticky leaderboard", 'background: #222; color: #bada55');
											
											 parallaxLb(parallaxArgs);
										}
										else {
											//console.log("%c skin ad running; suppress sticky leaderboard and adjust other sticky page elements", 'background: #222; color: #bada55');
											document.querySelector("#oc-head").classList.remove("no-stick-important"); //make header sticky again
											if (document.querySelector("#collection-module-top") !== null) {//if there's a content collection, tuck it into the article body
												document.querySelector("#collection-module-top").classList.remove("stickfix");
												document.querySelector("#collection-module-top").style.position = "static";
											}
										}
									}
								});
							};
							try {
								IDG.GPT.googleCommandPush(runStickyLb);
							}
							catch(e){
								console.log('error determining if sticky LB can run: ' + e);
							}
							
						</script>
					
				
				
			
		
	
	
	
	
	
</header>




	<div class="constrain-970">
		
		
		
		
			
				<div class="lede-container">
					
					
					
						
						
							
				                
				                	
				                	
				                
				                
								
								
								
							
							
							
							
							<figure itemprop="image" itemscope itemtype="http://schema.org/ImageObject" class="hero-img">
								<meta itemprop="representativeOfPage" content="1" />
								<meta itemprop="height" content="675" />
								<meta itemprop="width" content="1200" />
					    		
					    		<img data-original="https://images.idgesg.net/images/article/2020/10/istock-1194430783-100860865-large.jpg" class="lazy" loading="lazy" alt="istock 1194430783" itemprop="contentUrl" itemprop="url" />
					    		
					    		<figcaption>
					    			
					    			
					    				<span class="credit" itemprop="copyrightHolder">
					    					
							    				
							    				iStock
						    				
				
							    			
							    				
							    				
							    				
												
												  	
												
												  	
												
												  	
												
												  	
												
												  	
												
												  	
												
												  	
												
												  	
												
												  	
												
												  	
												
												  	
												
												  	
												
							    				
							    				
												
											
									
										</span>
					    			
									
					    		</figcaption>
							</figure>
							
				
						
						
					
				</div>
			
			
		
	



<section class="epo cat-narrow" id="drr-top-ad">

	
	
	
	
	
	
		<div class="ad top-ad">
	
		
		
			
				
					
					
						
					
				
				
				
			




















<script>
	var isJWfloatTest = false;
</script>




	

		
			
			
			
			
			
			
				<div id="topimu" class="adunit ad-container test">					
				</div>				
				<script type="text/javascript">
				if($(window).width() >= 930) {
					IDG.GPT.addDisplayedAd("topimu", "true");
					$('#topimu').responsiveAd({screenSize:'971 1115', scriptTags: []});
                    IDG.GPT.log("Creating ad: topimu - [971 1115]");
                    
				}
				</script>
			
		
	
 	
 
 
		
	
</div>
	
	
	
	
	
	
	
	
	
	
	
	
	

		
		
	
		
	
	
</section>

</div>







<div class="constrain-970">
	
</div>




<script src="/www/js/deal-modules.js"></script>

		
		



		<section class="bodee">

			
				
				
					












	
		


























<style>
	#drr-container figure.large.video {
		border-bottom: 0 none;
	}
	figure#page-lede.thm-gallery #bcplayer-gallery #bcplayer-gallery_ad > div {
		width: 100%;
		height: 100%;
		transition: all 0.5s ease;
	}
</style>
<style>
.jwplayer.jw-state-paused .jw-display {
	display: table !important;
	padding: 0;
}
.jwplayer .jw-display-icon-container {
    float: none;
    padding: 0;
    margin: 0;
}
.jw-flag-small-player .jw-display {
	padding-top: 0px;
}
.jwplayer .jw-display-icon-container .jw-icon-rewind {
	visibility: hidden;
}
.jwplayer .jw-display-icon-container .jw-icon-next {
	visibility: hidden;
}
.jwplayer .jw-display-icon-container  .jw-icon-display .jw-svg-icon-play path,
.jw-state-idle .jw-svg-icon-play path,
.jwplayer .jw-display-icon-container  .jw-icon-display .jw-svg-icon-replay path,
.jw-state-complete .jw-svg-icon-replay path {    
    display: none;
}
.jwplayer .jw-display-icon-container  .jw-icon-display .jw-svg-icon-play,
.jw-state-idle .jw-svg-icon-play,
.jwplayer .jw-display-icon-container  .jw-icon-display .jw-svg-icon-replay,
.jw-state-complete .jw-svg-icon-replay {
    background-size: contain;
    background-repeat: no-repeat;
    background-color: transparent;
    background-image: url(//idge.staticworld.net/idgtv/btn-play-default.svg);
    background-position: center center;
    bottom: 0;
    border-radius: 0;
    box-shadow: none;
    left: 0;
    margin: auto;
    right: 0;
    top: 0;
}
.jwplayer .jw-display-icon-container .jw-icon,
.jwplayer .jw-display-icon-container  .jw-icon-display .jw-svg-icon-play,
.jw-state-idle .jw-svg-icon-play,
.jwplayer .jw-display-icon-container  .jw-icon-display .jw-svg-icon-replay,
.jw-state-complete .jw-svg-icon-replay {
    height: 81px;
    width: 78px;
}

/* new floating styles for TH IDGMPM-19038 */
body.techhive article .thm-gallery .items .embed-wrapper .embed-container {
    padding-bottom: 53.25%;
}

body.techhive #bcplayer-gallery {
	overflow: visible !important;
}

@media only screen and (max-width: 929px) {
	body.techhive .embed-container {
    	width: 100%;
  		height: auto;
  		display: inline-block;
        position: relative;
  		border: none;
  		overflow: hidden;
  		z-index: 10000;
  		margin-top: 15px;
  		overflow: visible !important;
	}
  	body.techhive #bcplayer-gallery {
      	margin-bottom: 10px;
    }
}

@media only screen and (min-width: 930px) {
	body.techhive .embed-container {
  		bottom: 22px;
  		width: 100%;
  		height: auto;
      	position: relative;
        border: none;
      	overflow: hidden;
  		z-index: 100001;
  		margin-top: 75px;
    	padding-bottom: 8px;
    	overflow: visible !important;
	}
}

@media only screen and (min-width: 1190px) {
	body.techhive .embed-container #bcplayer-gallery.jw-flag-floating .jw-wrapper {
		right: calc(50% - 585px);
	}
}
@media only screen and (max-width: 1189px) {
	body.techhive .embed-container #bcplayer-gallery.jw-flag-floating .jw-wrapper {
		right: calc(50% - 485px);
		max-width: 300px !important;
	}
}
@media only screen and (max-width: 969px) {
	body.techhive .embed-container #bcplayer-gallery.jw-flag-floating .jw-wrapper {
		right: calc(50% - 460px);
		max-width: 300px !important;
	}
}
@media only screen and (max-width: 930px) {
	body.techhive .embed-container #bcplayer-gallery.jw-flag-floating .jw-wrapper {
		right: calc(50% - 447px);
		max-width: 300px !important;
	}
}
@media only screen and (max-width: 929px) {
	body.techhive article .thm-gallery .items .embed-wrapper .embed-container {
	    padding-bottom: 58.25%;
	}
}

body.techhive .embed-container > div {
	margin-top: 20px;
  	top: 0px;
  	left: 0px;
  	width: 100%;
  	height: 100%;
  	border: none;
  	overflow: hidden;
  	position: relative;
  	overflow: visible !important;
}

body.techhive .embed-container #bcplayer-gallery .jw-wrapper:before {
   	position: absolute;
    top: -35px;
    height: 35px;
    line-height: 28px;
    box-sizing: border-box;
    text-transform: none;
    padding: 4px;
    padding-left: 8px;
    width: 100%;
    font-size: 20px;
    border-top: 1px solid #a31e22;
    border-left: 1px solid #a31e22;
    border-right: 1px solid #a31e22;
    background-color: #a31e22;
    display: inline-block;
   	background-image: url("https://alt.idgesg.net/images/logos/cso-logo-video.svg");
   	content: ' ';
   	background-size: auto 20px;
   	background-repeat: no-repeat;
   	background-position: 8px center;
   }
    
body.techhive .embed-container > div #bcplayer-gallery .jw-logo.jw-logo-bottom-right {
	display: none;
}

body.techhive #bcplayer-gallery.jwplayer.jw-flag-floating .jw-float-icon {
    display: inline-block !important;
    color: #ffffff;
    top: -30px;
    right: -15px;
}
body.techhive #bcplayer-gallery.jwplayer.jw-flag-floating .jw-controls {
	overflow: visible;
}
</style>
<script>
$(document).ready(function() {
	var params = {
			def : "editfakeSideBar",
			geo : getLocale(),
			aid : 3584759
			}
		$.get(
			"/napi/tile",
			params,
			function(data, status, xhr) {
				//alert(article);
				$('#editorialfakesidebardiv').html(data);
			},
			"html");
	
	
	var params = {
			def : "sponsoredfakeSideBar",
			geo : getLocale(),
			aid : 3584759
			}
		$.get(
			"/napi/tile",
			params,
			function(data, status, xhr) {
				//alert(article);
				$('#sponsoredfakesidebardiv').html(data);
			},
			"html");
	
	
	var params = {
			def : "nativefakeSideBar",
			geo : getLocale(),
			aid : 3584759
			}
		$.get(
			"/napi/tile",
			params,
			function(data, status, xhr) {
				//alert(article);
				$('#nativefakesidebardiv').html(data);
			},
			"html");
	
});
</script>

	



	
	
	
	
	
	
	
	
	
	
	
		
		
			
			
			<script>
				var dataLayer = window.dataLayer = window.dataLayer || [];
				dataLayer.push({
					'event': 'loadTopCollectionModule'
					});
			</script>
			
		
	
	
	
	
	
	
			
	
	
	
	
	
	
		
		
			
		
	
	
	
	
	
		
			
				
				
				
					
				
				
			
		
		
	
	
		
		
			<div id="drr-container" class='cat ' itemprop="articleBody">
		
		
		
		
	
		
			
			
				<p><a href="https://world-at-home.tanium.com/" rel="nofollow">In a recent survey</a>, we learned that more than 90% of C-level executives and VPs interviewed have delayed or cancelled key security projects to accommodate the transition to a distributed workforce. What can we expect the impact to be on organizations as a result of delayed or cancelled security projects?</p><p>For answers, we turned to members of the <a href="https://www.cio.com/idginfluencernetwork/">IDG Influencer Network</a>, a community of industry analysts, IT professionals, and journalists. While their viewpoints were varied, as would be expected, Helen Yu (<a href="https://twitter.com/YuHelenYu" rel="nofollow">@YuHelenYu</a>), a C-Level Tech Executive, spoke for many when she said, “The COVID-19 pandemic has become a catalyst for cyberattacks.”</p><p>Will Kelly (<a href="https://twitter.com/willkelly" rel="nofollow">@willkelly</a>), a Senior Technical Writer, was similarly blunt: “We’re going to see a new era of corporate data breaches,” he said.</p><p>Frank Cutitta (<a href="https://twitter.com/fcutitta" rel="nofollow">@fcutitta</a>), CEO and Founder of HealthTech Decisions Lab, worries that the consequences could be grave, especially given that businesses have become much more reliant on rapidly deployed technology to fill the gap in face-to-face interactions.</p><p>“History tells us that developing a culture of security at the employee level is not for the faint of heart,“ he added. “Yes, we can send phishing tests to employees to see if they bite, but with more sophisticated hacks and ransomware, the lack of sophisticated security platforms will take its toll.”</p><p>“Information security abhors a vacuum. Attackers and your firm’s adversaries will capitalize on those delays to their advantage,” warned Ben Rothke (<a href="https://twitter.com/benrothke" rel="nofollow">@benrothke</a>), Senior Information Security Specialist at Tapad. “Attackers were ready with their stimulus scams well before the stimulus checks were even mailed. Most delays in information security deployments have a corresponding risk that must be considered.”</p><p>“Playing defense with an uptick in phishing attacks and malware is a horrible position to be in, but it’s the likelihood for not just small-cap companies but also mid-caps,” said Sarah Ramsingh (<a href="https://twitter.com/SarahRamsingh" rel="nofollow">@SarahRamsingh</a>), a Machine Learning and Quantum Mechanics Expert. “The impact is having your organization in a more vulnerable position.”</p><p>“Security moves very fast, obviously, and it’s already hard to keep up with the attackers,” said Tricia Howard (<a href="https://twitter.com/TriciaKicksSaaS" rel="nofollow">@TriciaKicksSaaS</a>), Marketing Manager at HolistiCyber. “This is why burnout is so rampant in our industry. Security professionals are having to be on 24/7 and it’s not sustainable.”</p><p><strong>An ‘acceptable trade-off’ if bankruptcy is the only other option</strong></p><p>Kayne McGladrey (<a href="https://twitter.com/kaynemcgladrey" rel="nofollow">@kaynemcgladrey</a>), Cybersecurity Strategist at Ascent Solutions, said delaying or cancelling security projects is “an acceptable trade-off” only if bankruptcy is the alternative.</p><p>“Due to the pandemic, this is the choice that some organizations face today,” he continued. “Other organizations should first prioritize their security projects to mitigate those risks with the highest potential impact to the business. Organizations should then have a difficult conversation about residual risks with their cyber insurance providers, and plan to implement monitoring of those risks not transferred to insurance or mitigated through implementation of technical controls.”</p><p><strong>‘Security needs to be front and center’</strong></p><p>Not all of the Influencers painted such a bleak picture.</p><p>“Now’s the time to double down on information security,” advised George Gerchow (<a href="https://twitter.com/georgegerchow" rel="nofollow">@georgegerchow</a>), Chief Security Officer at Sumo Logic. “Since the pandemic started, we’ve seen a rise in ransomware, endpoint attacks, phishing, and nation-state indicators of compromise. In times of high uncertainty and anxiety, bad actors thrive. Lock down those endpoints and start building a Zero Trust model.”</p><p>Former IT Director Cedric Wells (<a href="https://twitter.com/cedricfwells" rel="nofollow">@cedricfwells</a>) agreed.</p><p>“Understandably, many organizations are closely watching their cash flow and preparing for the worst with what has now been declared as a recession,” he said. “I agree that there needs to be more scrutiny and prioritization of security projects. However, now more than ever, with a more distributed workforce, security needs to be front and center. Delaying or canceling security projects at a minimum will put organizations at a greater risk.”</p><p>Scott Schober (<a href="https://twitter.com/ScottBVS" rel="nofollow">@ScottBVS</a>), President and CEO of Berkeley Varitronics Systems Inc., was also optimistic, pointing out that when companies put off expenditures in areas such as security, they tend to come back and spend at an accelerated rate when economic conditions improve.</p><p>“Once the pandemic fears calm, CEOs, CIOs and CISOs will be preparing for a new wave of security spending,” he predicted.</p><p>Brian Thomas (<a href="https://twitter.com/DivergentCIO" rel="nofollow">@DivergentCIO</a>), Chief Technology Officer for Coruzant Technologies, expressed a similar view.</p><p>“While some of these projects may have been delayed, by and large technology leaders still have critical security projects at the top of their priority list,” he said. “There is too much at stake today with the plethora of malware and ransomware attacks, no matter the company size or budget.”</p><p>“Working with customers every day, and the partners who serve them in the Microsoft ecosystem, I am seeing less of a pullback and more differentiation in how our customers worldwide are approaching projects in the security space,” said Wayne Anderson (<a href="https://twitter.com/DigitalSecArch" rel="nofollow">@DigitalSecArch</a>), Security and Compliance Architect with Microsoft’s M365 Center of Excellence. “It isn’t a matter of ‘Are companies spending more or not?’ but rather it’s a question of ‘Which projects are getting investment right now?’ While there are about a fifth of companies that are overall decreasing cybersecurity budget, broadly a majority are reorienting around the remote work atmosphere and the data streams that are critical to next-generation business.”</p><p>Ratan Jyoti (<a href="https://twitter.com/reach2ratan" rel="nofollow">@reach2ratan</a>), Chief Information Security Officer of Ujjivan Small Finance Bank Limited, was also focused on the future.</p><p>“It’s high time for organizations to reorient their security budget in the right area,” he said. “There can be a huge spike in security budgets in 2021 as remote working has introduced a new array of risks that must be managed. I also see a huge hike in cloud and automation in 2021.”</p><p>“There may be projects that will have to be deferred around increasing efficiency or improving the user experience, which may set the organization back compared to their peers, but these activities can't be prioritized over preventing breaches and maintaining compliance,” said Larry Larmeu (@LarryLarmeu), an Enterprise Technology Leader.</p><p>Caroline Wong (<a href="http://twitter.com/CarolineWMWong" rel="nofollow">@CarolineWMWong</a>), CIO of Cobalt, said that if key security projects were delayed or cancelled to make room for critical projects that would enable a distributed workforce to work more securely (for example, VPN implementation or training on how to setup a secure home WiFi network), “then it could be a positive change, resulting in a more secure setup given the new work environment.”</p><p>Within the first two months of the COVID-19 pandemic, Tanium helped the world’s most demanding organizations recover their operations and regain control and visibility. Learn how to secure your distributed workforce today with <a href="https://world-at-home.tanium.com/" rel="nofollow">Tanium as a Service</a>, the world’s first unified endpoint management and security solution with a single console, a single agent, and zero infrastructure.</p>
			
		
		
	
		
		
			
		
		
		
		
			
			
			
			
		
		
	</div>
	
	
	
		
		
		
	
	
	
	
	
	
	
	
	    <div class="apart-alt tags">
	    <span class="related">Related: </span>
	    <ul>
			
				<li><a class="edition-link-url primary-cat-url2" href="/category/technology-business"><span class="primary-cat-name2">Technology Industry</span></a></li>
			 
			
				
				
					 
						 
				    				
					
				
					
			
	    </ul>
	   
		</div>
	
	
	
		
			
			
			
		











	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
			
	   		














	   		
	   		
			
	
	
	
	
		












	
	


<script>
//set business unit / publisher: US / global is default
var contentCopyright = "IDG Communications, Inc.";
var contentEdition = "us";
// if there's an article locale ID, use that to get the business unit / publisher for copyright (empty string is global)
if ( contentEdition != "" || contentEdition != null ) {
	// get locale slug of article (contentEdition)
	 contentEdition = "us";
	if (contentEdition === 'us') {
		contentCopyright = "IDG Communications, Inc.";
	}
	if (contentEdition === 'asean') {
		contentCopyright = "IDG Communications, Inc.";
	}
	if (contentEdition === 'mideast' || contentEdition === 'middle-east') {
		contentCopyright = "";
	}
	if (contentEdition === 'uk') {
		contentCopyright = "IDG Communications Ltd.";
	}
	if (contentEdition === 'au') {
		contentCopyright = "IDG Communications. ABN 14 001 592 650";
	}
	if (contentEdition === 'nz') {
		contentCopyright = "IDG Communications. ABN 14 001 592 650";
	}
	if (contentEdition === 'in') {
		contentCopyright = "IDG Media Private Ltd";
	}
	if (contentEdition === 'nl') {
		contentCopyright = "";
	}
}
$(document).ready(function() {
	if (contentCopyright != null && contentCopyright != "") {
		document.querySelector("span.ccbu").textContent = contentCopyright;
	}
});
</script>


	<p class="content-copy">Copyright &copy; 2020 <span class="ccbu">IDG Communications, Inc.</span></p>

	
		 
	
	
	
	
	
		
		
	

















	 
	




<script>
$("body").on('click', 'a[data-product-id]', function() {
	var e = e || window.event;
	var dataLayer = window.dataLayer = window.dataLayer || [];
	var prodName = $(this).attr("data-product-name");
	prodName = prodName.replace("\\'","'"); // to counter the effects of over-escaping
	
	if ( $(this).parents('.slideshow').length > 0 ) {
		var productLinkPosition = "Slideshow";
	} else if ( $(this).parents('.emo-sb').length > 0 ) {
		var productLinkPosition = "Product Sidebar";
	} else if ( $(this).parents('.at-a-glance.top').length > 0 ) {
		var productLinkPosition = "AAG Top";
	} else if ( $(this).parents('.at-a-glance').length > 0 ) {
		var productLinkPosition = "AAG Bottom";
	} else if ( $(this).parents('.quick-hits.medium').length > 0 ) {
		var productLinkPosition = "Quick Hit Medium";
	} else if ( $(this).parents('.quick-hits').length > 0 ) {
		var productLinkPosition = "Quick Hit Full";
	} else if ( $(this).parents('.product-chart').length > 0 ) {
		var productLinkPosition = "Product Chart";
	} else if ( $(this).parents('.emo-list').length > 0 ) {
		var productLinkPosition = "Product List";
	} else {
		var productLinkPosition = "Body Text";
	}
	
	dataLayer.push({
		'event': 'affiliateLink', 
	  	'eventCategory': 'Affiliate Link', // Hardcoded, not dynamic
	  	'eventAction': 'Click', // Hardcoded, not dynamic
	  	'eventLabel': ''+e.target+'', // The URL the affiliate link leads to
	  	'productVendor': $(this).attr("data-bkvndr"), // The vendor of the product
	  	'productManufacturer': $(this).attr("data-bkmfr"), // The manufacturer of the product
	  	'productName': prodName, // The name of the product
	  	'productId': $(this).attr("data-product-id"), // The ID of the product
	  	'productLinkPosition': productLinkPosition // location of product link (Product Sidebar, Product Chart, etc.)
	});
	
	window.permutive.track('AffiliateLinkClick', {
	    category: $(this).attr("data-bkc"),
	    name: prodName,
	    manufacturer: $(this).attr("data-bkmfr"),
	    vendor: $(this).attr("data-bkvndr")
	});
	
});
</script>



<script>
$("#drr-top-ad .related-promo-wrapper .title > a").on('click',function(e){
	var dataLayer = window.dataLayer = window.dataLayer || [];
	
	var $clickEl = $(this);
	var clickUrl = $clickEl.attr("href");
	var clickText = $clickEl.text().trim();
	var linkLocation = "Promo";		
	
	dataLayer.push({
		'event': 'promoModuleLink', 
	  	'eventCategory': 'Promotion module',
	  	'eventAction': 'Click',
	  	'eventLabel': linkLocation+" | "+clickText+" | "+clickUrl
	});
});
</script>
	

	
	
	
	
	
	












	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		<!-- blx4 #1174 blox4.html  -->
			

		
			
				
					
					
					
						
							
					
						
					
					
					
					
					
					
						
					
				
				
			
		















	





<script src="/www/js/video/embedder-jwp.js?v=20201007113303"></script>

<script type="text/javascript" src="/www/js/ads/jquery.lazyload-ad.js"></script>

















<script type="text/javascript">

$(document).ready(function() {
	$('.articleBloxAd').filter( ":visible" ).each(function(index, item) {
		var id = $(item).attr('id');
		var divClass = $(item).attr('class');
		var adString = IDG.GPT.getLazyAdCode();
		$(item).replaceWith("<div id=\"" + id + "\" class=\"lazyload_blox_ad " + divClass + "\">" + adString + "</div>");
	});
	try {
		$("div.lazyload_blox_ad").lazyLoadAd({
	        threshold    : 0,         // You can set threshold on how close to the edge ad should come before it is loaded. Default is 0 (when it is visible).
	        forceLoad    : false,       // Ad is loaded even if not visible. Default is false.
	        onLoad       : false,       // Callback function on call ad loading
	        onComplete   : false,       // Callback function when load is loaded
	        timeout      : 1500,        // Timeout ad load
	        debug        : false,       // For debug use : draw colors border depends on load status
	        xray         : false        // For debug use : display a complete page view with ad placements
		}) ;
	}
	catch (exception){
		console.log("error loading lazyload_ad " + exception);
	}
});

</script>
		

	
	













<style>
@media only screen and (min-width: 60.625em) {
	article .apart.ad.not-lazy {
		margin-left: 0;
		float: right;
	}
}
/* this spaces the ads in the right rail */
@media only screen and ( min-width: 48em ) {
	article #drr-top-ad.epo.cat-narrow #imu2 {
		margin-top: 500px; /*originally 354px*/
	}
	.topDeals.topper {
		margin-top: 500px;
	}
}
@media only screen and ( min-width: 48em ) and ( max-width: 58.063em ) {
	article #drr-top-ad.epo.cat-narrow #imu2 {
		margin-top: 0;
	}
}
@media only screen and ( min-width: 60.625em ) {
	article #drr-top-ad.epo.cat-narrow #imu2 {
		margin-top: 500px; /*originally 354px*/
	}
	.topDeals.topper {
		margin-top: 500px;
	}
}
@media only screen and ( min-width: 48em ) {
	article #drr-top-ad.epo.cat-narrow div[id^=imu] {
		margin-top: 500px;
	}
}
@media only screen and ( min-width: 48em ) and ( max-width: 58.063em ) {
	article #drr-top-ad.epo.cat-narrow div[id^=imu] {
		margin-top: 0;
	}
}
@media only screen and ( min-width: 60.625em ) {
	article #drr-top-ad.epo.cat-narrow div[id^=imu] {
		margin-top: 500px;
	}
}
</style>

<script type="text/javascript">
$(function() {
	var MOBILE_BREAK = 929;
	
	
	if (typeof $.fn.lazyload === 'undefined' ) {
		if ('loading' in HTMLImageElement.prototype) {
		    const images = document.querySelectorAll('img[loading="lazy"]');
		    images.forEach(img => {
		      img.src = img.dataset.original;
		    });
			if ($(window).width() <= MOBILE_BREAK) {
				exeImuMobile();
			} else {
				exeImuDesktop();
			}
		} 
		else { 
			$.getScript('/www/js/jquery/jquery.lazyload.min.js',function(){
				 
				 if (adBlockStatus === 'false') {
					$("img.lazy").each(function () {
						if ($(this).parents('.hero-img').length > 0) {
						 var tempHeight = $("#drr-container").width()*.667;
						}
						else {
						 var tempHeight = $(this).width()*.667;
						}
						$(this).height(tempHeight);
					});
					$("img.lazy").lazyload({	 
					   	effect : "fadeIn", 
					   	threshold: 200,
					   	failure_limit:25
					});
					if ($(window).width() <= MOBILE_BREAK) {
						exeImuMobile();
					} else {
						exeImuDesktop();
					}
					$("img.lazy").each(function (){
						$(this).height("");
					 });
				 } 
			});	
		}
	}
	
	else {
			
		if ($(window).width() <= MOBILE_BREAK) {
			exeImuMobile();
		} else {
			exeImuDesktop();
		}
	}
});

function exeImuMobile() {
	//NOTE: don't include the conditionals for if a site has lazyloaded ads or not - they all do at this point.

	//define necessary variables
	var TOP_IMU_HEIGHT = 250,
	GRAF_HEIGHT = 25,
	AD_HEIGHT_BUFFER = 350,
	RIGHT_PIXEL_WINDOW = 300, // this is for not near end of page element
	DEBUG = false;

var placementIndex = [],
	adPositions = new Array(0,1,2,3); // IMU, IMU, IMU, IMU++ 
	cumulativeHeight = 0,
	loopCounter = 0,
	placementTarget = TOP_IMU_HEIGHT + GRAF_HEIGHT; // IMU, IMU, IMU 


if ($("figure.hero-img").height()) {
	placementTarget += $("figure.hero-img").height();
}

//Right Rail modules in mobile view
$( ".techDealsModule ul li:nth-child(2)" ).nextAll( "li" ).addClass( "after" );
$( ".topDealsModule ul li:nth-child(2)").nextAll( "li" ).addClass( "after" );

if ($("#drr-container p").length >= 8) {
	$(".techDeals,.topDeals").insertAfter( "#drr-container > p:eq(7)");
} else {
	$("div.techDeals, div.topDeals").hide();
}

// Add heights of all elements up through read these next (no longer existws) (which is placed after fourth p tag) 
var firstModIndex = $("#drr-container > p:eq(3)").index();
$("#drr-container").children().slice(0, firstModIndex).each(function() {
	placementTarget += $(this).height();
});
// Define first mobile ad here so imu counter shows imu1 first imu2 second, etc.
var firstMobileAdHtml = getLazyLoadAdHtml();

// Place Right-rail div containers 
$("#drr-container").children().each(function(index,value) {
	//ignore any hidden elements in the body, like the mobile-only "read this next" module
	if ($(this).is(':visible')) {
		if (DEBUG) {
			console.log($(this));
		}
		if (cumulativeHeight >= placementTarget) {
			if (DEBUG) {
				console.log("cumulativeHeight >= placementTarget and cumulativeHeight is " + cumulativeHeight + " and placementTarget is " + placementTarget);
			}
			var placementDiff = 0;
			//if ($.inArray(loopCounter, adPositions) != -1 || loopCounter >= 5) {
			if ($.inArray(loopCounter, adPositions) != -1 || (loopCounter >= 5 && loopCounter < 20) ) { //limiting number of imu placements
				
				try {
                    IDG.GPT.addExtIMU();
                    var adDivString;
                    if (true) {
                        adDivString = getLazyLoadAdHtml();
                    } else {
                        IDG.GPT.IMUCounter = IDG.GPT.IMUCounter + 1;
                        var slotName = IDG.GPT.getIMUSlotName(),
                            adString = "<div id='" + slotName + "'></div><script>$('#" + slotName + "').responsiveAd({screenSize:'971 1115', scriptTags: []}, false);if (Object.keys(IDG.GPT.companions).length > 0) {IDG.GPT.refreshAd('" + slotName + "');}<\/script>";
                        adDivString = "<div class='apart ad'>" + adString + "</div>";
                        IDG.GPT.defineGoogleTagSlot(slotName ,[[320,50],[300,250],[300,50]],false,true);
                    }
                    placementDiff = applyInsert($(this), adDivString);
                    if (DEBUG) {
                        console.log("Just placed an ad and the placementDiff is: " + placementDiff);
                    }
                    placementTarget = cumulativeHeight + placementDiff + AD_HEIGHT_BUFFER;
				}
				catch (e){
				    console.log("Error: "+e);
                }
				
			}// end inArray() 
			loopCounter++;
		}
		// Avoid placing elements too soon due to non-large figures inflating the cumulative height
		if ($(this).is("figure") && !$(this).is("figure.large")) {
			cumulativeHeight += GRAF_HEIGHT;
		}
		else {
			cumulativeHeight += $(this).height() + GRAF_HEIGHT;
		}
	}
});	// end $("#drr-container").children().each()
	
// For mobile only, place ad after second paragraph. (This is imu2.)
if (firstMobileAdHtml) {
	$(firstMobileAdHtml).insertAfter("#drr-container > p:eq(1)");
}


$("div.lazyload_ad_article").lazyLoadAd({
	threshold    : 0,
	forceLoad    : false,       // Ad is loaded even if not visible. Default is false.
	onLoad       : false,       // Callback function on call ad loading
	onComplete   : false,       // Callback function when load is loaded
	timeout      : 1500,        // Timeout ad load
	debug        : false,       // For debug use : draw colors border depends on load status
	xray         : false      // For debug use : display a complete page view with ad placements
});
	
/*
* Increments imu counter and generates a 'name' based on count like imu2, imu3, etc.
* Returns the html and code script needed for the lazy load ad js.
*/
function getLazyLoadAdHtml() {
	try {
        var adString = IDG.GPT.getLazyAdCode(true);
        return "<div class=\"apart ad lazyload_ad_article\">" + adString + "</div>";
    }
    catch(e) {
	    console.log("Error: "+e);
    }
}

/** 
 * @param jqo Original jquery object target
 * @param divString The div to be inserted.
 * @return Difference in height between original placement target and final target.
 * Checks first 4 elements for an allowable placement (600 pixel window).
 * If none, place element in first location that does not follow a reject element.
 */
function applyInsert(jqo, divString) { 
	if (DEBUG) {
		console.log("applyInsert at top and jqo index is: " + jqo.index());
	}
	
	for (var i=0; i<=4; i++) {
		$thisElement = jqo.nextAll().andSelf().slice(i, i+1);
		if (DEBUG) {
			console.log("Checking first four and i is: " + i + " and this element index is " + $thisElement.index() );
		}
		if ($thisElement.index() < 0) {
			break;
		}
		if (allowPlacement($thisElement)) {
			return addElement(jqo, $thisElement, divString);
		}  
	}
	if (DEBUG) {
		console.log("No nearby allows so just place in first spot that is not after reject.");
	}
	var numElements = jqo.nextAll().length;
	var startIndex = jqo.index();
	for (var i=startIndex; i<=numElements; i++) {
		var $element = $("#drr-container").children().eq(i);
		// This element is eligible when not null, not in placement index, and previous element is not reject
		if ($element != null && (placementIndex == null || placementIndex.indexOf(i) == -1) && !isReject($element.prev())) {
			return addElement(jqo, $element, divString);
		}
	}
	if (DEBUG) {
		console.log("Not going to place element: return 0.");
	}
	return 0; 
}
	
/**
 * @param jqo Original jquery object
 * @param allowElement Element that is good placement for module/ad
 * @param divString The div to be inserted before the good element
 * @return placementHeightDiff Diff in height between original placement target and current target.
 *
 * If element is not too close to the end the insert the div before allowable element. 
 * Add element index to placementIndex to keep track of which elements already have placements
 */
function addElement(jqo, allowElement, divString) {
	var offset = allowElement.index() - jqo.index();
	if (DEBUG) {
		console.log("addElement: jqo index is " + jqo.index() + " allowElement index is " + allowElement.index());
	}
	
	if (elementNotNearEnd(allowElement, RIGHT_PIXEL_WINDOW)) {
		allowElement.before(divString);
		if (DEBUG) {
			console.log("addElement: Adding " + allowElement.index() + " to placementIndex.");
		}
		placementIndex.push(allowElement.index());
		if (offset == 0) {
			return 0;
		}
		else {
			return getHeightDifference(jqo,allowElement);
		}

	}
	else {
		if (DEBUG) {
			console.log("addElement: Near the end so do NOT add.");
		}
		return 0;
	} 
}

function getHeightDifference(jqo,allowElement) {
	var offset = allowElement.index() - jqo.index(),
		height = 0,
		children = null;
	if (offset > 0) {
		children = $("#drr-container").children().slice(jqo.index(), allowElement.index());
	}
	else {
		children = $("#drr-container").children().slice(allowElement.index(), jqo.index());
	
	}
	if (children != null) {
		children.each(function(i) {
			if (DEBUG) {
				console.log("About to add this element's height to heigh diff offset");
				console.log($(this));
			}
   			height += $(this).height() + GRAF_HEIGHT;
		});
	}
	if (offset < 0) {
		height *= -1;
	}
	if (DEBUG) {
		console.log("getHeightDifference: offset was " + offset + " and height diff is : " + height);
	}		
	return height;
}

function allowPlacement(jqo) {
	if (jqo.prev() != null && isReject(jqo.prev())) {
		return false;
	}
	return true;
}

function isReject(jqo) {
	if (jqo != null) {
		if (jqo.is('h2') || jqo.is('h3') || jqo.is('h4') || jqo.is('h5')) {
			if (DEBUG) {
				console.log("isReject: found header");
			}
			return true;
		}
	}
	return false;
}
	 
// Returns true if height of all elements after this one is more than 500; false otherwise 
function elementNotNearEnd(element, pixelWindow) {
	if (pixelWindow === null) {
		pixelWindow = 500;
	}
	if (element === null) {
		return false;
	}
	var remainingHeight = 0,
		children = $("#drr-container").children().slice(element.index());
	if (children === null) {
		return false;
	}
	children.each(function(i){
	   remainingHeight += $(this).height();
	});
	if ( remainingHeight > pixelWindow) {
		return true;
	}
	else {
		if (DEBUG) {
			console.log("Element too close to end. Remaining height is: " + remainingHeight + " and window is " + pixelWindow);	 
		}
		return false;
	}
}


} // end function exeImuRMobile()

	
function exeImuDesktop() {
	var DEBUG = false;
	
	// use this to get artBodyHeight
	var heroImgHeight = $('figure.hero-img').outerHeight(true);
	if (heroImgHeight === null) {
		heroImgHeight = 0;
	}
	// use this to get artBodyHeight
	var galleryItemHeight = $('figure.thm-gallery').outerHeight(true);
	if (galleryItemHeight === null) {
		galleryItemHeight = 0;
	}
	// use this to get artBodyHeight
	var atAglanceTop = $('.at-a-glance.top').height();
	if (atAglanceTop === null) {
		atAglanceTop = 0;
	}
	// use this to get artBodyHeight
	var drrContainerHeight = $('div#drr-container').outerHeight(true);
	
	// subtract this from availRRheight
	var teadsInreadHeight = $('div.teads-inread').height();
	if (teadsInreadHeight === null) {
		teadsInreadHeight = 0;
	}
	// subtract this from availRRheight
	var unrulyAdHeight = $('.unruly_in_article_placement').height();
	if (unrulyAdHeight === null) {
		unrulyAdHeight = 0;
	}
	//just in case the in-article ads are picked up... subtract from availRRheight
	var collapsibleAdHeight = unrulyAdHeight + teadsInreadHeight;
	
	// new Deals modules that need to be subtracted from availRRheight
	var techDealsHeight=0;
	if ($("#drr-top-ad").children(".techDeals").length>0) {
		techDealsHeight = 500;
	}
	
	var prodDealsHeight=0;
	if ($("#drr-top-ad").children(".topDeals").length>0) {
		prodDealsHeight = 500;
	}
	
	var modulesRRHeight = techDealsHeight + prodDealsHeight;
	
	// new available RR height: availRRheight
	var availRRheight = ( heroImgHeight + galleryItemHeight + atAglanceTop + drrContainerHeight);
	
	availRRheight = availRRheight - (collapsibleAdHeight + modulesRRHeight);
	
	// if there is a gallery video, remove the amount of space used to push the right rail down to accommodate the video in the RR (CAT-102)
	if (galleryItemHeight > 0) {
		if (DEBUG) {
			console.log("if galleryItemHeight greater than zero subtract 476 from workingRRheight / availRRheight: " + galleryItemHeight);
		}
		availRRheight = availRRheight - 476;
	}
	
	var topIMUheight = 0;
    var topIMUonPageload = false; // this is used when topimu height is acquired on pageload so height is not subtracted from availRRheight twice
	if ( $("#topimu").length !== 0 ) {
		topIMUheight = $('#topimu').height();
	}
	if ( $("#gpt-showcase").length !== 0 ) {
		topIMUheight = $('#gpt-showcase').height();
	}
	if (topIMUheight === 0) {
		topIMUonPageload = false;
	} else {
		topIMUonPageload = true;
	}
	
	availRRheight = availRRheight - topIMUheight;

	if (DEBUG) {
		console.log("-----on pageload: topIMUheight = " + topIMUheight + " and topIMUonPageload = " + topIMUonPageload + " typeof: " + typeof topIMUonPageload);
	}
	
	if (DEBUG) {
		console.log('-----initial available RR height = ' + availRRheight);
	}
	
	// removing topper class that adds space on top of top deals module on short RR heights
	// topper class is only on PCW, MW, TH top deals module
	if (availRRheight < 1900) {
		$("div.topDeals").removeClass("topper");
	}

	
    var adDivString;
    var adSlotsSizes = [[300,250]]; // default - heights are updated below
    var dynamicAd = true; // needed for imu's above imu4
	var imuHeight = 0; // for all the IMUs - used in slotRenderEnded event
    var slotIdTop = ""; // slotRenderEnded for topimu / gpt-showcase
	var slotId = ""; // used in slotRenderEnded event for IMUs (not topimu)
    var buffspace = 500; // See above. The default is 390. This comes from the rrSpace property in brands' properties.
	var heightLimit = 250 + buffspace; // chose this because smallest ad (250) plus buffspace = 640 pixels which is greater than 639 :)
	// this is used to trigger that particular action (placed ad) only once
	var triggered_no_times = 0;
    var counter = 0; // keeps track of number of ads placed
    var imuArray = [];

// Beginning of new code... IDGMPM-17422
googletag.cmd.push(function() {
	var topIMULoaded = false;
	//if the top IMU has already loaded...
	if ( typeof IDG.GPT.loadedAdDimensions['topimu'] !== "undefined") {
		slotIdTop = "topimu";
		topIMULoaded = true;
	}
	else if ( typeof IDG.GPT.loadedAdDimensions['gpt-showcase'] !== "undefined") {
		slotIdTop = "gpt-showcase";
		topIMULoaded = true;
	}
	
	if (topIMULoaded) {
		imuHeight = IDG.GPT.loadedAdDimensions[slotIdTop][1];
		
		if (imuArray.indexOf(slotIdTop) == -1) {
			imuArray.push(""+slotIdTop+"");
			// subtract just-placed topimu height from availRRheight
			if (topIMUonPageload === false) {
				availRRheight = availRRheight - imuHeight;	
	    		if (DEBUG) {
	    			console.log("-----topimu: e.slot.getSlotElementId() = " + e.slot.getSlotElementId() + " and availRRheight = " + availRRheight);
	            }
			}
		}
	}
	
	// this is for detecting direction of scrolling
	var lastScrollTop = 0;
	// do the following while scrolling
	// debounce listen to the scroll ( >ie9 only )
    //if (window.addEventListener) {
   	window.addEventListener('scroll', rrdebounce(function(event) {
       	
           var st = window.pageYOffset || document.documentElement.scrollTop; // Credits: "https://github.com/qeremy/so/blob/master/so.dom.js#L426"
        	if (st > lastScrollTop) {
		
			var y_scroll_pos = window.pageYOffset; // get offset from scrolling
			//var imuDivOffset = $("#"+slotIdTop).offset().top; // get offset of topimu on scroll
			var imuDivOffset = 0;
			
			// getting top offset for topimu... using this to trigger placement of imu2 - only happens once
			if ( (slotIdTop === 'topimu' || slotIdTop === 'gpt-showcase') && triggered_no_times == 0) {
				imuDivOffset = $("#"+slotIdTop).offset().top;
			} else {
				// need to get this top offset after each ad is placed - occurs for each ad placed after the topimu
				if (slotId.indexOf("imu") === 0 && triggered_no_times > 0) {
					imuDivOffset = $("#"+slotId).offset().top;
				}
			}

			// if scroll position is greater than the just-placed imu's top offset means we've hit/passed the top of the imu, display next imu do this only once per ad
			if (y_scroll_pos > imuDivOffset && availRRheight > heightLimit) {

				// this block creates ad string and appends ad to #drr-top-ad div
				try {			        
			        // THIS DETERMINES AD SLOT SIZES BASED ON AVAIL RR HEIGHT
			        if (availRRheight > 999) { // if availRRheight is equal to or greater than 1000 pixels, place ad either 250 or 600 pixels tall
			        	adSlotsSizes = [[300,250],[300,600],[120,600],[160,600]];
			        } else { // if availRRheight is less than 1000 pixels and greater than or equal to 650 pixels tall...
			        	if (availRRheight < 1000 && availRRheight > 649) {
			        		adSlotsSizes = [[300,250]];
			        	}
			        }
			        // this needs to be equal. if triggered is more than counter, it will place all the ads on the page
			        if (triggered_no_times === counter) {
		
				        // THIS CREATES AD CODE STRING
			        	IDG.GPT.IMUCounter = IDG.GPT.IMUCounter + 1;
			            var slotName = IDG.GPT.getIMUSlotName(),
			                 adString = "<div id='" + slotName + "'></div><script>$('#" + slotName + "').responsiveAd({screenSize:'971 1115', scriptTags: []}, "+dynamicAd+");if (Object.keys(IDG.GPT.companions).length > 0 || IDG.GPT.disableInitialLoad) {IDG.GPT.refreshAd('" + slotName + "');}<\/script>";
			            adDivString = "<div class='apart ad not-lazy'>" + adString + "</div>";
			            IDG.GPT.defineGoogleTagSlot(slotName,adSlotsSizes,false,true); 	
		            
			            // PLACE AD CODE STRING
				        $(adDivString).appendTo('#drr-top-ad');
				        if (DEBUG) {
				        	console.log("********PLACED AD CODE: "+ slotName+" ********");
				        }
					}
					// this is so ads are placed one at a time, after ad height and buffer space is subtracted from availRRheight in slotRenderEnded event listener
		            triggered_no_times = counter + 1;
		
				} catch (e) {
				    console.log("Error: "+ e);	
				}


			} // end if y_scroll_pos > imuDivOffset
			//console.log(".............scrolling down.......");	
        	} // end if st > lastScrollTop for detection scroll direction
        	else { 
        		//console.log("...........scrolling up..............");
        	}
    	
    lastScrollTop = st <= 0 ? 0 : st; // For Mobile or negative scrolling
   	}, 5));   // end scroll / rrdebounce... run maximum of one time every 5ms
   	
//} // end window.addeventlistener test
		
	// using slotRenderEnded to get height of newly-placed ad
    googletag.pubads().addEventListener('slotRenderEnded', function(e) { 
		if (DEBUG) {
			console.log("-----e.slot.getSlotElementId() = " + e.slot.getSlotElementId());
        }
    	// ...For topimu on page load...
    	if ( (e.slot.getSlotElementId() === "topimu" || e.slot.getSlotElementId() === "gpt-showcase") && !e.isEmpty ) { //also ensure it's not an empty ad response
    		slotIdTop = e.slot.getSlotElementId();
			imuHeight = e.size[1];
			
			if (imuArray.indexOf(slotIdTop) == -1) {
				imuArray.push(""+slotIdTop+"");
				// subtract just-placed topimu height from availRRheight
				if (topIMUonPageload === false) {
					availRRheight = availRRheight - imuHeight;	
		    		if (DEBUG) {
		    			console.log("-----topimu: e.slot.getSlotElementId() = " + e.slot.getSlotElementId() + " and availRRheight = " + availRRheight);
		            }
				}
			}
			
		}
    	
    	// ...For all other IMUs...
    	if ( e.slot.getSlotElementId().indexOf("imu") === 0 && !e.isEmpty ) {
			slotId = e.slot.getSlotElementId();
			imuHeight = e.size[1];
			// if array does not contain this slotId, add it to array and subtract height
			if (imuArray.indexOf(slotId) == -1) {
				imuArray.push(""+slotId+"");
				// subtract just-placed ad's height plus 390 buffspace pixels from availRRheight
		        availRRheight = availRRheight - (imuHeight + buffspace);
		        if (DEBUG) {
					console.log("----inside slotRenderEnded event for IMUs: slotId = --" + slotId + "----calculating availRRheight: " + availRRheight + " subtracting imuHeight = " + imuHeight + " plus " + buffspace + " buffer (buffspace)");
		        }
			}

			counter = triggered_no_times;
    	}

	});// end eventListener slotRenderEnded
});	// end google.cmd.push

	
	
	// rate-limits certain functions, handy for attaching to scroll events, for instance
    function rrdebounce(func, wait, immediate){
        var timeout;
        return function(){
            var context = this, args = arguments;
            var later = function(){
                timeout = null;
                if (!immediate) func.apply(context, args);
            };
            var callNow = immediate && !timeout;
            clearTimeout(timeout);
            timeout = setTimeout(later, wait);
            if (callNow) func.apply(context, args);
        };
    }

} // end function executeDRRDesktop()
	
</script>		



<script>
// this debouce() function is used here and with related-content ribbon-ribbon.jsp
function debounce(func, wait, immediate){
    var timeout;
    return function(){
        var context = this, args = arguments;
        var later = function(){
            timeout = null;
            if (!immediate) func.apply(context, args);
        };
        var callNow = immediate && !timeout;
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
        if (callNow) func.apply(context, args);
    };
}

let galleryNode; // undefined if element is not found
let mobileDeviceWidth = 0;
let eventDeviceOrientation = "portrait";

if (window.innerWidth > 0) {
	mobileDeviceWidth = window.innerWidth;
} else {
	mobileDeviceWidth = document.documentElement.clientWidth;
}

if ($("figure").hasClass("thm-gallery")) {
	galleryNode = document.querySelector('.thm-gallery .embed-wrapper');
}

var supportsOrientationChange = "onorientationchange" in window,
orientationEvent = supportsOrientationChange ? "orientationchange" : "resize";

window.addEventListener(orientationEvent, function() {
	  // if device is rotated to landscape orientation
	  if (window.orientation === 90 || window.orientation === -90) {
		  eventDeviceOrientation = "landscape";
	  } else {
		  eventDeviceOrientation = "portrait";
	  }
}, false);

if (typeof galleryNode !== 'undefined') {	
	if (mobileDeviceWidth <= 480) {
		window.addEventListener('scroll', debounce(function(e) {
			// if device is rotated to landscape after page load, do not pause and play video!
			if (eventDeviceOrientation !== "landscape") {
				if (isVisible(galleryNode)) {
					jwplayer('bcplayer-gallery').play();
				} else {
			    	jwplayer('bcplayer-gallery').pause();
			  	}
			}			
		}, 5));
	}
}
</script>


	
	
	
	




					










				
			
		
		</section><!-- /.bodee -->

		














 




	
		
			
				
					











<script>
	if (suppressItemsForHoliday == "true") {
		$("div#content-recommender").remove();
	}
</script>

<script>var suppressEd = false;</script>

	<script>
		if (countryCode !== "" && (countryCode === 'in' || countryCode === "africa" || (brandAbbrev === "cio" && countryCode === "nz") || brandAbbrev === "cso" && countryCode === "au" )) {
			suppressEd = true;
			$("div#content-recommender").remove();
		}
	</script>






				
				
			
			
		

		
			
			
		
			
				
					<div class="lazyload_ad">
						<code type="text/javascript">
						<!--
						var slotName = 'bottomleaderboard';
						var slotSize = [];
						if ($thm.deviceClass == 'mobile') {
							slotSize = [[300,50],[320,50],[300,250]];
						}
						else if ($thm.deviceClass == 'tablet') {
							slotSize = [[728,90],[468,60]];
						}
						else {
							slotSize = [[728,90],[970,90],[970,250]];
						}
						IDG.GPT.addDisplayedAd(slotName, "true");
						document.write('<div id="' + slotName + '" class="ad-container">');
							IDG.GPT.defineGoogleTagSlot(slotName, slotSize, false, true);
						document.write('</div>');
							$('#' + slotName).responsiveAd({screenSize:'971 1115', scriptTags: []}, true);
						//-->
						</code>
					</div>
							
	
	



	
	
	




		</article>

	</section><!-- /role=main -->

	
	
	

</div><!-- /#page-wrapper -->
		
		












	<link rel="stylesheet" href="/www.idge/css/foot.css?v=20201007113303" />
	<link rel="stylesheet" href="/www.idge.cso/css/foot.css?v=20201007113303" />





<footer>

    <section class="brand" itemscope itemtype="http://schema.org/Organization">
   	
   		<link itemprop="url" href="http://www.csoonline.com"> 
        <a href="/"><span class="logo">CSO Online</span></a>
		<span class="tagline"> CSO provides news, analysis and research on security and risk management</span>
        
        
	        <span class="follow">
				<label>Follow us</label>
	            	<ul>
	            		














	
	
		<li class="lnkdn"><a class="social-media-li-foot" href="http://www.linkedin.com/company/csoonline" itemprop="sameAs" rel="nofollow" target="_blank" onclick="brandFollowTrack('LinkedIn')"><i class="ss-icon ss-social-circle brand ss-linkedin"></i></a></li>
	
	
		<li><a class="social-media-tw-foot" href="https://twitter.com/csoonline" itemprop="sameAs" rel="nofollow" target="_blank" onclick="brandFollowTrack('Twitter')"><i class="ss-icon ss-social-circle ss-twitter"></i></a></li>
	
	
		<li><a class="social-media-fb-foot" href="https://www.facebook.com/CSOonline" itemprop="sameAs" rel="nofollow" target="_blank" onclick="brandFollowTrack('Facebook')"><i class="ss-icon ss-social-circle brand ss-facebook"></i></a></li>				
	
	
		<script>
			if (typeof facebookUrl !== "undefined" && facebookUrl !== null && facebookUrl !== "") {
				document.querySelector(".social-media-fb-foot").setAttribute("href", facebookUrl);
			}
			if (typeof twitterUrl !== "undefined" && twitterUrl !== null && twitterUrl != "") {
				document.querySelector(".social-media-tw-foot").setAttribute("href", twitterUrl);
			}
			if (typeof linkedInUrl !== "undefined" && linkedInUrl !== null && linkedInUrl !== "") {
					document.querySelector(".social-media-li-foot").setAttribute("href", linkedInUrl);
			} 
		</script>
	


	            	</ul>
	        </span>
        
        
    </section>
    
    
    <section class="about">
		<div class="wrapper"> 
        	<nav class="tertiary" id="ft3">
            	<ul>
            		
















<li><a class="edition-link-url" href="/about/about.html"  >About Us</a>

<li><a class="edition-link-url" href="/about/contactus.html"  >Contact</a>

<li><a class="edition-link-url" href="/about/privacy.html"  >Privacy Policy</a>

<li><a class="edition-link-url" href="/about/cookie-policy.html"  >Cookie Policy</a>

<li><a class="edition-link-url" href="/about/member-preferences.html"  >Member Preferences</a>

<li><a class="edition-link-url" href="/about/contactus.html#advertise-with-us"  >Advertising</a>

<li><a class="edition-link-url" href="https://www.idg.com/work-here/" target="_blank" rel="nofollow" >IDG Careers</a>

<li><a class="edition-link-url" href="/about/adchoices.html"  >Ad Choices</a>

<li><a class="edition-link-url" href="/about/affiliates.html"  >E-commerce Links</a>

<li><a class="edition-link-url" href="/about/ccpa.html"  >California: Do Not Sell My Personal Info</a>




            	</ul>
        	</nav>
		</div>
	</section>
	
    <section class="copyright">
        <div class="wrapper">
			
        	
        		<img src="https://alt.idgesg.net/images/logos/logo-footer-white.png" alt="IDG Communications" />
        	
        
        	
        	<p><a href="/about/tos.html">Copyright</a> &copy; 2020 <span class="bu">IDG Communications, Inc.</span></p>
			<div class="network">
				<div id="network-selector">
                <div class="label">Explore the IDG Network <i class="ss-icon tick">descend</i></div>
                <ul>
                	
                		
                		
                	














	
		<li><a href="https://www.cio.com" target="_blank" rel="nofollow">CIO</a></li>
	
		<li><a href="https://www.computerworld.com" target="_blank" rel="nofollow">Computerworld</a></li>
	
		<li><a href="https://www.csoonline.com" target="_blank" rel="nofollow">CSO Online</a></li>
	
		<li><a href="https://www.infoworld.com" target="_blank" rel="nofollow">InfoWorld</a></li>
	
		<li><a href="https://www.networkworld.com" target="_blank" rel="nofollow">Network World</a></li>
	

                </ul>
				</div><!-- /#network-selector -->
			</div><!-- /.network -->
		</div><!-- /.wrapper -->
    </section>
</footer>


<script src="/www/js/jquery/jquery-ui.js"></script>
<script src="/www/js/jquery/jquery.dfp.min.js"></script>
<script src="/www.idge/js/mule/shortstack_nav.js"></script>




	
		
			
		




















<script>
	var isJWfloatTest = false;
</script>




	

		
			
			
			
			
			
			
				<div id="mobilewelcomead" class=" ad-container test">					
				</div>				
				<script type="text/javascript">
				
					IDG.GPT.addDisplayedAd("mobilewelcomead", "true");
					$('#mobilewelcomead').responsiveAd({screenSize:'971 1115', scriptTags: []});
                    IDG.GPT.log("Creating ad: mobilewelcomead - [971 1115]");
                    
				
				</script>
			
		
	
 	
 
 
	




<script src="/www/js/analytics/tracking.js"></script>



	<script src="/www.idge/js/jquery/plugins/jquery.colorbox-min.js"></script>
	<script src="/www.idge/js/article.js?v=20201007113303"></script>
	
	<script src="/www.idge/js/jquery/responsive-tables.js"></script>
	<script src="/www.idge/js/jquery/jquery.tablesorter.min.js"></script>
	<script>
	$(document).ready(function() {
		$("table.tablesorter").tablesorter({
			widgets: ['zebra']
		});
		
		$("table.tablesorter tbody tr").hover(function() {
			$(this).toggleClass("selected");
		});
		
		$("table.tablesorter thead tr th").each(function(){			
			if ($(this).find('.ss-icon').length < 1) {
				$(this).append('<i class="ss-icon"></i>');
			}
		});
		
	});
	</script>
	




<script src="/www.idge/js/global.js?v=20201007113303"></script>
<script src="/www/js/webfonts/ss-social.js"></script>
<script src="/www/js/webfonts/ss-standard.js"></script>
<script src="/www/js/analytics/brandAnalytics.js"></script>
















	<script src="/www/js/locales-editions-slug.js?v=20201007113303"></script>





		
		
			
				
			




















<script>
	var isJWfloatTest = false;
</script>




	

		
			
			
			
			
			
			
				<div id="catfish" class=" ad-container test">					
				</div>				
				<script type="text/javascript">
				
					IDG.GPT.addDisplayedAd("catfish", "true");
					$('#catfish').responsiveAd({screenSize:'971 1115', scriptTags: []});
                    IDG.GPT.log("Creating ad: catfish - [971 1115]");
                    
				
				</script>
			
		
	
 	
 
 
		
		
			
		




















<script>
	var isJWfloatTest = false;
</script>




	

		
			
			
				<!--  Begin gpt-skin -->
				<div id="gpt-skin" class=" ad-container">					
				</div>
				<script type="text/javascript">
					IDG.GPT.addDisplayedAd("gpt-skin", "true");
					IDG.GPT.displayGoogleTagSlot('gpt-skin');
				</script>
				<!--  End gpt-skin -->	
			
			
			
			
			
		
	
 	
 
 
	


<!-- Include here when empty article and when not empty and article is slideshow as this script is included with DRR code in body-base.jsp. -->
<!-- Also do not include on search page with new right rail. OC-1778 -->



<script type="text/javascript">
// -- Load Lazy Advertisement placement as deferred
$("div.lazyload_ad").lazyLoadAd({
        threshold    : 0,         // You can set threshold on how close to the edge ad should come before it is loaded. Default is 0 (when it is visible).
        forceLoad    : false,       // Ad is loaded even if not visible. Default is false.
        onLoad       : false,       // Callback function on call ad loading
        onComplete   : false,       // Callback function when load is loaded
        timeout      : 1500,        // Timeout ad load
        debug        : false,       // For debug use : draw colors border depends on load status
        xray         : false        // For debug use : display a complete page view with ad placements
}) ;
</script>







<script type='text/javascript'>

	var ocHead = $("#oc-head").outerHeight();
	var relatedContentHeight = $(".related-content-wrapper").outerHeight();
	relatedTop = ocHead+50;
		$(document).ready(function() {
			// moved debounce fn to body-base.jsp for use with mobile gallery script
			
			 var lastScrollTop = 0;
			 
			 if (window.addEventListener) {
		        window.addEventListener('scroll', debounce(function(e){
		        
		        var containerOffset = $("#drr-container p:last").offset().top;
			    var containerHeight = $("#drr-container p:last").outerHeight();
			    var windowHeight = $(window).height();
			    var windowScrolltop = $(this).scrollTop();

			    if (windowScrolltop > lastScrollTop) {
			    	// user is scrolling DOWN: hide ribbon
			    	$(".related-content-wrapper").css('top','-'+relatedTop+'px');
			    	
		    	 	if ((windowScrolltop > (containerOffset+containerHeight-windowHeight))&& !($('#oc-head').hasClass('no-stick-important'))) {
			    		// user is scrolling down and sees last paragraph: show ribbon
			    		$(".related-content-wrapper").css('top',ocHead+'px');
		    		}
			    	
			    } else {		        	
			    	$(".related-content-wrapper").css('top','-'+relatedTop+'px');
			    }
			   
			   	lastScrollTop = windowScrolltop;
					
		               
		        }, 5));   // run maximum of one time every 5ms
		    }
		    
		});
	
</script>












	
		
	
	
		
	
	

<!-- Begin comScore Tag -->
<script>
var _comscore = _comscore || [];
_comscore.push(
{ c1: "2", c2: "6035308", c3: "", c5: "Technology Industry", c6: "Article: Opinion", c15: "3584759" });
(function()
{
	var s = document.createElement("script"), el = document.getElementsByTagName("script")[0];
	s.async = true; s.src = (document.location.protocol == "https:" ? "https://sb" : "http://b") + ".scorecardresearch.com/beacon.js";
	el.parentNode.insertBefore(s, el);
})();
</script>
<noscript>
<img src="https://sb.scorecardresearch.com/p?c1=2&c2=6035308&cv=2.0&cj=1" />
</noscript>
<!-- End comScore Tag -->














<script type="text/javascript">
//consent.digitalelement.queue.push(function(){
	$thm.logPlEvent({"b":"cso","e":"view","t":"article","id":"3584759"});
//});
</script>

		<div id="loginModal"></div>
		<div id="logoffModal"></div>


		
	<script type="text/javascript">
		var subscribersSiteId = "eedeabb0-9a59-4b6b-9df3-e55745819adf"; 
	</script>
	<script type="text/javascript" src="https://cdn.subscribers.com/assets/subscribers.js"></script>

		
		
		
		
		<script type="text/javascript">
			a=top;f=self;
			var acceptedDomains = ["lookbookhq.com"];
			var cleanedHost = a.location.hostname.split(".").slice(-2).join(".");
			if(a!=f && acceptedDomains.indexOf(cleanedHost) < 0) {
				a.location=f.location;
			}
		</script>			

		













	</body>
</html>