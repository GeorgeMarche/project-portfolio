<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

        <title>Critical Care | COVID-19 UPDATES</title>

        

        <meta name="format-detection" content="telephone=no">

        
<link rel="apple-touch-icon" sizes="180x180" href=/static/img/favicons/bmc/apple-touch-icon-582ef1d0f5.png>
<link rel="icon" type="image/png" sizes="32x32" href=/static/img/favicons/bmc/favicon-32x32-5d7879efe1.png>
<link rel="icon" type="image/png" sizes="16x16" href=/static/img/favicons/bmc/favicon-16x16-c241ac1a2f.png>
<link rel="manifest" href=/static/app-bmc/manifest-3bb9ad383b.json>
<link rel="mask-icon" href=/static/img/favicons/bmc/safari-pinned-tab-427338756f.svg color="#e6e6e6">
<link rel="shortcut icon" data-test="shortcut-icon" href=/static/img/favicons/bmc/favicon-1886637b78.ico>
<meta name="msapplication-config" content=/static/app-bmc/browserconfig-ecd9aa8205.xml>
<meta name="msapplication-TileColor"
      content="#1b3051">
<meta name="msapplication-TileImage"
      content=/static/img/favicons/bmc/app-icon-144x144.png>
<meta name="theme-color"
      content="#1b3051">


        
        <script>(function(H){H.className=H.className.replace(/\bno-js\b/,'js')})(document.documentElement)</script>

        

<link rel="stylesheet" media="screen" href=/static/app-bmc/css/core-7156a8fb40.css>
<link rel="stylesheet" media="print" href=/static/app-bmc/css/print-7680b1a80b.css>

<link rel="stylesheet" id="js-mustard" href=/static/app-bmc/css/enhanced-fdba22a01a.css
      media="only screen and (-webkit-min-device-pixel-ratio:0) and (min-color-index:0), (-ms-high-contrast: none), only all and (min--moz-device-pixel-ratio:0) and (min-resolution: 3e1dpcm)">




        

        
    <script type="text/javascript">
        config = {
            env: 'live',
            site: 'ccforum.biomedcentral.com',
            siteWithPath: 'ccforum.biomedcentral.com' + window.location.pathname,
            twitterHashtag: '',
            cmsPrefix: 'https://studio-cms.springernature.com/studio/',
            
            
            figshareScriptUrl: 'https://widgets.figshare.com/static/figshare.js',
            hasFigshareInvoked: false,
            publisherBrand: 'BioMed Central',
            mustardcut: false
        };
    </script>

        
    <script type="text/javascript" data-test="dataLayer">
        window.dataLayer = [{"content":{"article":null,"contentInfo":{"imprint":"BioMed Central","title":null,"publishedAt":null,"publishedAtDate":null,"author":null,"collection":null},"attributes":{"deliveryPlatform":"oscar","template":"rebrand","cms":null,"copyright":null,"environment":"live"},"journal":{"siteKey":"ccforum.biomedcentral.com","volume":null,"issue":null,"title":"Critical Care","type":"MLS 4","journalID":13054,"section":null},"category":{"pmc":{"primarySubject":"Medicine & Public Health"},"contentType":null,"publishingSegment":"Med 41"}},"session":{"authentication":{"authenticationID":[]}},"version":"1.0.0","page":{"category":{"pageType":"other"},"attributes":{"featureFlags":[],"environment":"live"}},"event":"dataLayerCreated"}];
    </script>

        

        <script>
    window.config = window.config || {};
    window.config.mustardcut = false;

    
    if (window.matchMedia && window.matchMedia('only screen and (-webkit-min-device-pixel-ratio:0) and (min-color-index:0), (-ms-high-contrast: none), only all and (min--moz-device-pixel-ratio:0) and (min-resolution: 3e1dpcm)').matches) {
        window.config.mustardcut = true;
    }
</script>

        <!--Polyfills CustomEvent constructor in IE. Allows us to use events to manage race conditions in client side js-->
<script>
    (function () {
        if ( typeof window.CustomEvent === "function" ) return false;
        function CustomEvent ( event, params ) {
            params = params || { bubbles: false, cancelable: false, detail: null };
            var evt = document.createEvent( 'CustomEvent' );
            evt.initCustomEvent( event, params.bubbles, params.cancelable, params.detail );
            return evt;
        }

        CustomEvent.prototype = window.Event.prototype;

        window.CustomEvent = CustomEvent;
    })();
</script>

        <script class="js-entry">
    if (window.config.mustardcut) {
        (function(w, d) {
            

            var currentScript = d.currentScript || d.head.querySelector('script.js-entry');

            
            function catchNoModuleSupport() {
                var scriptEl = d.createElement('script');
                return (!('noModule' in scriptEl) && 'onbeforeload' in scriptEl)
            }

            var headScripts = [
                {'src': '/static/js/polyfill-es5-bundle-f2da88c10c.js', 'async': false},
                {'src': '/static/js/airbrake-es5-bundle-561d9c4806.js', 'async': false},
            ];

            var bodyScripts = [
                {'src': '/static/js/app-es5-bundle-c0501fe917.js', 'async': false, 'module': false},
                {'src': '/static/js/app-es6-bundle-ad524c1a43.js', 'async': false, 'module': true}
                
                
            ];

            function createScript(script) {
                var scriptEl = d.createElement('script');
                scriptEl.src = script.src;
                scriptEl.async = script.async;
                if (script.module === true) {
                    scriptEl.type = "module";
                    if (catchNoModuleSupport()) {
                        scriptEl.src = '';
                    }
                } else if (script.module === false) {
                    scriptEl.setAttribute('nomodule', true)
                }
                if (script.charset) {
                    scriptEl.setAttribute('charset', script.charset);
                }

                return scriptEl;
            }

            for (var i = 0; i < headScripts.length; ++i) {
                var scriptEl = createScript(headScripts[i]);
                currentScript.parentNode.insertBefore(scriptEl, currentScript.nextSibling);
            }

            d.addEventListener('DOMContentLoaded', function() {
                for (var i = 0; i < bodyScripts.length; ++i) {
                    var scriptEl = createScript(bodyScripts[i]);
                    d.body.appendChild(scriptEl);
                }
            });

            // Webfont repeat view
            var config = w.config;
            if (config && config.publisherBrand && sessionStorage.fontsLoaded === 'true') {
                d.documentElement.className += ' webfonts-loaded';
            }
        })(window, document);
    }
</script>


        
    
        
            <script src="/static/js/jquery-220afd743d.js"></script>
        
    

    
        <script>
    (function() {
        function deleteCookie (name, domain) {
            document.cookie = encodeURIComponent(name) +
                    '=' +
                    ';path=/' +
                    ';domain=' + domain +
                    ';expires=Thu, 01 Jan 1970 00:00:00 GMT';
        }

        var consentCookieParts = ('; ' + document.cookie).split('; OptanonConsent=');

        if (consentCookieParts.length > 1) {
            consentCookieParts.shift(); // remove redundant first part from the split array

            // onetrust can set the same cookie multiple times with different domain specificities
            for (let i=0; i<consentCookieParts.length; i++) {
                var otCookieGroups = consentCookieParts[i].split('&groups=').pop().split('&').shift();

                if (otCookieGroups.indexOf('C0001') === -1) {
                    deleteCookie('OptanonConsent', 'ccforum.biomedcentral.com');
                    deleteCookie('OptanonAlertBoxClosed', 'ccforum.biomedcentral.com');
                }
            }
        }
    })();
</script>

    

    <script data-test="onetrust-control">
        
            (function(w,d,t) {
                var assetPath = '/static/js/cookie-consent-es5-bundle-bfc87717cf.js';
                function cc() {
                    var h = w.location.hostname,
                        e = d.createElement(t),
                        s = d.getElementsByTagName(t)[0];

                    if (h === "ccforum.biomedcentral.com") {
                        e.src = "https://cdn.cookielaw.org/scripttemplates/otSDKStub.js";
                        e.setAttribute("data-domain-script", "6fe96aee-7031-457e-8d5c-5b01fa7ec2e0");
                    } else {
                        e.src = assetPath;
                        e.setAttribute("data-consent", h);
                    }
                    s.parentNode.insertBefore(e, s);
                }
                w.google_tag_manager ? cc() : window.addEventListener("gtm_loaded", cc);
            })(window,document,"script");
        
    </script>
    <script>
        function OptanonWrapper() {
            var elementInside = function(candidate, element) {
                if (candidate === element) {
                    return true;
                } else if (candidate.nodeName.toLowerCase() === 'body') {
                    return false;
                } else {
                    return elementInside(candidate.parentNode, element);
                }
            };

            var disclaimer = document.querySelector('.c-disclaimer[aria-hidden="false"]');
            window.dataLayer.push({event:'OneTrustGroupsUpdated'});
            if (disclaimer) {
                if (!elementInside(document.activeElement, disclaimer)) {
                    disclaimer.querySelector('button').focus();
                }
            } else {
                document.activeElement.blur();
            }
        }
    </script>

        
    
        
    

        
    
        
            <!-- Google Tag Manager -->
            <script>
                (function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({'gtm.start': new Date().getTime(), event: 'gtm.js'});
                var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s),
                        dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                
                j.addEventListener('load', function() {
                    var _ge = new CustomEvent('gtm_loaded', { bubbles: true });
                    d.dispatchEvent(_ge);
                });
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-TDGJHK');
            </script>
            <!-- End Google Tag Manager -->
        
    


        
    
    <link rel="canonical" href="//ccforum.biomedcentral.com/covid-19-updates"/>
    

        
    <meta name="keywords" content="Critical Care, Intensive / Critical Care Medicine, Emergency Medicine"/>
    <meta name="description" content="A pioneering open access journal with a highly respected Editorial Board, Critical Care has been leading its field for more than a decade. The journal is ..."/>

        
        
        <meta property="og:url" content="https://ccforum.biomedcentral.com/covid-19-updates"/>
        <meta property="og:type" content="website"/>
        <meta property="og:site_name" content="Critical Care"/>
        <meta property="og:title" content="Critical Care"/>
        <meta property="og:description" content="A pioneering open access journal with a highly respected Editorial Board, Critical Care has been leading its field for more than a decade. The journal is ..."/>
        <meta property="og:image" content="https://media.springernature.com/w110/springer-static/cover/journal/13054.jpg"/>
    
        
        
            <meta property="twitter:title" content="Critical Care"/>
            <meta property="twitter:image:alt" content="Critical Care Cover Image"/>
        
        <meta property="twitter:description" content="A pioneering open access journal with a highly respected Editorial Board, Critical Care has been leading its field for more than a decade. The journal is ..."/>
        <meta property="twitter:image" content="https://media.springernature.com/w110/springer-static/cover/journal/13054.jpg"/>
        <meta name="twitter:card" content="summary_large_image">
    
    </head>

    <body class="journal"
    
          >
        
    
        
            <!-- Google Tag Manager (noscript) -->
            <noscript>
                <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TDGJHK"
                        height="0" width="0" style="display:none;visibility:hidden"></iframe>
            </noscript>
            <!-- End Google Tag Manager (noscript) -->
        
    

        <div class="u-visually-hidden" aria-hidden="true">
    
    <?xml version="1.0" encoding="UTF-8"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"><svg xmlns="http://www.w3.org/2000/svg"><symbol id="icon-access" viewBox="0 0 18 18"><path d="M14 8a1 1 0 011 1v7h2.5a.5.5 0 01.5.5V18H0v-1.5a.5.5 0 01.5-.5H3V9a1 1 0 112 0v7h8V9a1 1 0 011-1zM6 8l2 1v5l-2 1zm6 0v7l-2-1V9zM9.573.401l7.036 4.925A.92.92 0 0116.081 7H1.92a.92.92 0 01-.528-1.674L8.427.401a1 1 0 011.146 0zM9 2.441L5.345 5h7.31z" fill-rule="evenodd"/></symbol><symbol id="icon-account" viewBox="0 0 18 18"><path d="M10.238 16.905a7.96 7.96 0 003.53-1.48c-.874-2.514-2.065-3.936-3.768-4.319V9.83a3.001 3.001 0 10-2 0v1.277c-1.703.383-2.894 1.805-3.767 4.319A7.96 7.96 0 009 17c.419 0 .832-.032 1.238-.095zm4.342-2.172a8 8 0 10-11.16 0c.757-2.017 1.84-3.608 3.49-4.322a4 4 0 114.182 0c1.649.714 2.731 2.305 3.488 4.322zM9 18A9 9 0 119 0a9 9 0 010 18z" fill-rule="evenodd"/></symbol><symbol id="icon-alert" viewBox="0 0 18 18"><path d="M4 10h2.5a.5.5 0 110 1H3.414l-1.121 1.121a1 1 0 00-.293.707V13h14v-.172a1 1 0 00-.293-.707L14 10.414V7A5 5 0 004 7zm3 4a2 2 0 104 0zm-5 0a1 1 0 01-1-1v-.172a2 2 0 01.586-1.414L3 10V7a6 6 0 1112 0v3l1.414 1.414A2 2 0 0117 12.828V13a1 1 0 01-1 1h-4a3 3 0 01-6 0z" fill-rule="evenodd"/></symbol><symbol id="icon-arrow-broad" viewBox="0 0 16 16"><path d="M7.897 12.028v-7.69l-2.45 2.446a.981.981 0 01-1.385.02.986.986 0 010-1.397l4.123-4.118a.99.99 0 011.398 0l4.123 4.118a.976.976 0 01.016 1.38.989.989 0 01-1.401-.002l-2.45-2.447v8.676c0 .541-.437.98-.985.982L.987 14a.987.987 0 110-1.972z" fill-rule="evenodd"/></symbol><symbol id="icon-arrow-down" viewBox="0 0 16 16"><path d="M3.283 11.53l4.031 4.176a.943.943 0 001.367 0l4.031-4.176c.378-.391.384-1.02.016-1.4a.942.942 0 00-1.37.003l-2.395 2.482V1L8.956.883A.977.977 0 007.998 0c-.495 0-.903.386-.959.883L7.033 1v11.615l-2.396-2.482a.936.936 0 00-1.354-.02 1.027 1.027 0 000 1.417z" fill-rule="evenodd"/></symbol><symbol id="icon-arrow-left" viewBox="0 0 16 16"><path d="M4.47 3.283L.294 7.314a.943.943 0 000 1.367l4.176 4.031c.391.378 1.02.384 1.4.016a.942.942 0 00-.003-1.37L3.385 8.963H15l.117-.007A.977.977 0 0016 7.998c0-.495-.386-.903-.883-.959L15 7.033H3.385l2.482-2.396a.936.936 0 00.02-1.354 1.027 1.027 0 00-1.417 0z" fill-rule="evenodd"/></symbol><symbol id="icon-arrow-right" viewBox="0 0 16 16"><path d="M11.53 12.717l4.176-4.031a.943.943 0 000-1.367L11.53 3.288c-.391-.378-1.02-.384-1.4-.016a.942.942 0 00.003 1.37l2.482 2.395H1l-.117.007A.977.977 0 000 8.002c0 .495.386.903.883.959L1 8.967h11.615l-2.482 2.396a.936.936 0 00-.02 1.354 1.027 1.027 0 001.417 0z" fill-rule="evenodd"/></symbol><symbol id="icon-arrow-sub" viewBox="0 0 16 16"><path d="M7.897 4.972v7.69l-2.45-2.446a.981.981 0 00-1.385-.02.986.986 0 000 1.397l4.123 4.118a.99.99 0 001.398 0l4.123-4.118a.976.976 0 00.016-1.38.989.989 0 00-1.401.002l-2.45 2.447V3.986a.982.982 0 00-.985-.982L.987 3a.987.987 0 100 1.972z" fill-rule="evenodd"/></symbol><symbol id="icon-arrow-up" viewBox="0 0 16 16"><path d="M12.717 4.47L8.686.294a.943.943 0 00-1.367 0L3.288 4.47c-.378.391-.384 1.02-.016 1.4a.942.942 0 001.37-.003l2.395-2.482V15l.007.117a.977.977 0 00.958.883c.495 0 .903-.386.959-.883L8.967 15V3.385l2.396 2.482c.379.393.986.4 1.354.02a1.027 1.027 0 000-1.417z" fill-rule="evenodd"/></symbol><symbol id="icon-article" viewBox="0 0 18 18"><path d="M13 15V2.01c0-.008-.002-.01.001-.01H2v13.006c0 .548.446.994.994.994h10.274A1.99 1.99 0 0113 15zm-12 .006V2c0-.555.447-1 .999-1H13c.552 0 .999.452.999 1.01V5h3v9.991A2.003 2.003 0 0115.006 17H2.994C1.894 17 1 16.107 1 15.006zM14 6v9a1 1 0 002 0V6zM4 4h7v4H4zm1 1v2h5V5zM4 9h7v1H4zm0 2h7v1H4zm0 2h7v1H4z" fill-rule="evenodd"/></symbol><symbol id="icon-audio" viewBox="0 0 18 18"><path d="M13.096 13.559a.503.503 0 01-.707 0 .493.493 0 010-.702A5.414 5.414 0 0013.998 9a5.414 5.414 0 00-1.609-3.856.493.493 0 010-.701.503.503 0 01.708 0A6.401 6.401 0 0115 9a6.401 6.401 0 01-1.904 4.559zm2.123 2.102a.503.503 0 01-.707 0 .493.493 0 010-.7A8.367 8.367 0 0017 9a8.367 8.367 0 00-2.488-5.96c-.195-.193-.195-.507 0-.7s.513-.194.708 0A9.355 9.355 0 0118 9a9.355 9.355 0 01-2.78 6.661zM1 11.976c-.552 0-1-.444-1-.992V7.016a.996.996 0 011-.992h2l5.42-3.84a1.005 1.005 0 011.395.231c.122.169.187.37.187.577v12.016a.996.996 0 01-1 .992c-.209 0-.412-.065-.582-.185L3 11.975zm0-.992h2.321l5.68 4.024V2.992l-5.68 4.024h-2.32z" fill-rule="evenodd"/></symbol><symbol id="icon-block" viewBox="0 0 24 24"><path d="M0 0h24v24H0z" fill-rule="evenodd"/></symbol><symbol id="icon-book" viewBox="0 0 18 18"><path d="M4 13V2h1v11h11V2H3a1 1 0 00-1 1v10.268A1.99 1.99 0 013 13zm12 1H3a1 1 0 000 2h13zm0 3H3a2 2 0 01-2-2V3a2 2 0 012-2h13a1 1 0 011 1v14a1 1 0 01-1 1zM7.5 4h6a.5.5 0 110 1h-6a.5.5 0 010-1zm1 2h4a.5.5 0 110 1h-4a.5.5 0 010-1z" fill-rule="evenodd"/></symbol><symbol id="icon-broad" viewBox="0 0 24 24"><path d="M11 16.995v-7.8l-2.482 2.482a.994.994 0 01-1.403.02 1.001 1.001 0 010-1.417l4.177-4.176a1.001 1.001 0 011.416 0l4.177 4.176a.991.991 0 01.016 1.4 1 1 0 01-1.42-.003L13 9.195v8.8c0 .55-.443.995-.998.996L4 18.995a1 1 0 010-2z" fill-rule="evenodd"/></symbol><symbol id="icon-calendar" viewBox="0 0 18 18"><path d="M12.5 0c.276 0 .5.215.5.49V1h2c1.107 0 2 .895 2 2v12c0 1.107-.895 2-2 2H3c-1.107 0-2-.895-2-2V3c0-1.107.895-2 2-2h1v1H3c-.554 0-1 .446-1 1v3h14V3c0-.554-.446-1-1-1h-2v1.51a.5.5 0 01-.5.49.492.492 0 01-.5-.49V.49a.5.5 0 01.5-.49zM16 7H2v8c0 .554.446 1 1 1h12c.554 0 1-.446 1-1zM5 13v1H4v-1zm3 0v1H7v-1zm3 0v1h-1v-1zm-6-2v1H4v-1zm3 0v1H7v-1zm6 0v1h-1v-1zm-3 0v1h-1v-1zM8 9v1H7V9zm6 0v1h-1V9zm-3 0v1h-1V9zM5.5 0c.276 0 .5.215.5.49V1h5v1H6v1.51a.5.5 0 01-.5.49.492.492 0 01-.5-.49V.49A.5.5 0 015.5 0z" fill-rule="evenodd"/></symbol><symbol id="icon-chevron-less" viewBox="0 0 10 10"><path d="M5 3.414l3.293 3.293a1 1 0 001.414-1.414l-4-4a1 1 0 00-1.414 0l-4 4a1 1 0 001.414 1.414z" fill-rule="evenodd"/></symbol><symbol id="icon-chevron-more" viewBox="0 0 10 10"><path d="M5 6.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 111.414-1.414z" fill-rule="evenodd"/></symbol><symbol id="icon-chevron-right" viewBox="0 0 10 10"><path d="M4.706 4.033L2.292 1.637A.953.953 0 012.273.283a.98.98 0 011.378 0l4.063 4.031a.96.96 0 010 1.367L3.651 9.712a.97.97 0 01-1.362.016.96.96 0 01.003-1.37l2.414-2.395L5.693 5z" fill-rule="evenodd"/></symbol><symbol id="icon-circle-fill" viewBox="0 0 16 16"><path d="M8 14A6 6 0 118 2a6 6 0 010 12z" fill-rule="evenodd"/></symbol><symbol id="icon-circle" viewBox="0 0 16 16"><path d="M8 12a4 4 0 100-8 4 4 0 000 8zm0 2A6 6 0 118 2a6 6 0 010 12z" fill-rule="evenodd"/></symbol><symbol id="icon-citation" viewBox="0 0 18 18"><path d="M8.636 6a4 4 0 012.174 7.358 6.227 6.227 0 013.462 3.641h-1.077a5.218 5.218 0 00-2.769-2.718l-.79-.33v-1.023l.63-.41a3 3 0 10-3.26 0l.63.41v1.024l-.79.329a5.218 5.218 0 00-2.77 2.718H3a6.227 6.227 0 013.461-3.641A4 4 0 018.636 6zm7.369-5C17.107 1 18 1.894 18 3.003v5.994A1.999 1.999 0 0116.005 11L13 10.999v-1h3.005A.998.998 0 0017 8.997V3.003A.997.997 0 0016.005 2H1.995A.999.999 0 001 3.003V9c0 .667.333 1 1 1l2-.001v1H2c-1 0-2-1-2-2V3.004A2 2 0 011.995 1zM7.5 4a.5.5 0 110 1h-4a.5.5 0 010-1zm3 0a.5.5 0 110 1h-1a.5.5 0 010-1zm4 0a.5.5 0 110 1h-2a.5.5 0 010-1z" fill-rule="evenodd"/></symbol><symbol id="icon-close" viewBox="0 0 16 16"><path d="M2.297 12.277a1.007 1.007 0 000 1.427 1.006 1.006 0 001.426 0L8 9.425l4.277 4.277a1.007 1.007 0 001.427 0 1.006 1.006 0 000-1.426L9.425 8l4.277-4.277a1.007 1.007 0 000-1.427 1.006 1.006 0 00-1.426 0L8 6.575 3.723 2.297a1.007 1.007 0 00-1.427 0 1.006 1.006 0 000 1.426L6.575 8z" fill-rule="evenodd"/></symbol><symbol id="icon-collections" viewBox="0 0 18 18"><path d="M15 4a2 2 0 012 2v9a2 2 0 01-2 2H7a2 2 0 01-2-2h1a1 1 0 00.883.993L7 16h8a1 1 0 00.993-.883L16 15V6a1 1 0 00-.883-.993L15 5h-1V4zm-4-3a2 2 0 012 2v9a2 2 0 01-2 2H3a2 2 0 01-2-2V3a2 2 0 012-2zm0 1H3a1 1 0 00-.993.883L2 3v9a1 1 0 00.883.993L3 13h8a1 1 0 00.993-.883L12 12V3a1 1 0 00-.883-.993zM9.5 9a.5.5 0 010 1h-5a.5.5 0 010-1zm0-2a.5.5 0 010 1h-5a.5.5 0 010-1zm0-2a.5.5 0 010 1h-5a.5.5 0 010-1z" fill-rule="evenodd"/></symbol><symbol id="icon-compare" viewBox="0 0 18 18"><path d="M12 3a6 6 0 11-3 11.197A6 6 0 119 3.803 5.961 5.961 0 0112 3zM6 4a5 5 0 102.085 9.546C6.808 12.446 6 10.817 6 9s.808-3.446 2.084-4.546A4.983 4.983 0 006 4zm6 0c-.744 0-1.45.162-2.085.454C11.192 5.554 12 7.183 12 9s-.808 3.446-2.084 4.546A5 5 0 1012 4zm-1.416 7H7.416c.156.358.353.693.585 1.001h1.998a4.97 4.97 0 00.585-1zM11 9H7c0 .343.035.678.1 1.001h3.8c.065-.323.1-.658.1-1.001zm-.416-2H7.416A4.962 4.962 0 007.1 8h3.8a4.962 4.962 0 00-.316-1zM9.001 5l-.083.063A5.03 5.03 0 008 6h2a5.03 5.03 0 00-.999-1z" fill-rule="evenodd"/></symbol><symbol id="icon-download-file" viewBox="0 0 18 18"><path d="M10.005 0c.55 0 1.318.323 1.707.712l4.576 4.576c.393.393.712 1.168.712 1.714v8.99A2.003 2.003 0 0115.006 18H2.994A1.994 1.994 0 011 16.005V1.995C1 .893 1.887 0 3 0zm0 1H3c-.557 0-1 .443-1 .995v14.01c0 .55.445.995.994.995h12.012c.546 0 .994-.45.994-1.009V7.002c0-.283-.215-.803-.419-1.007L11.005 1.42c-.204-.204-.719-.419-1-.419zM8.5 5c.276 0 .5.216.5.492v6.148l1.746-1.78a.497.497 0 01.7-.006.498.498 0 01-.002.702l-2.591 2.591a.5.5 0 01-.706 0l-2.59-2.59a.502.502 0 01-.004-.704.49.49 0 01.7.007L8 11.64V5.492C8 5.22 8.232 5 8.5 5z" fill-rule="evenodd"/></symbol><symbol id="icon-download" viewBox="0 0 16 16"><path d="M12.998 13a.999.999 0 110 2H3.002A1.006 1.006 0 012 14c0-.557.449-1 1.002-1zM8 1c.552 0 1 .445 1 .996v6.802l2.482-2.482c.392-.393 1.022-.401 1.403-.02a1.002 1.002 0 010 1.417l-4.177 4.178a1.001 1.001 0 01-1.416 0L3.115 7.713a.992.992 0 01-.016-1.4 1 1 0 011.42.002L7 8.798V1.996C7 1.446 7.444 1 8 1z" fill-rule="evenodd"/></symbol><symbol id="icon-editors" viewBox="0 0 18 18"><path d="M8.726 2.546A3 3 0 105.37 7.519l.63.409v1.024l-.79.329A5.221 5.221 0 002 14.099V15H1v-.901a6.221 6.221 0 013.825-5.741 4 4 0 114.976-6.213 4.965 4.965 0 00-1.075.4zM6 17H5v-.901a6.221 6.221 0 013.825-5.741 4 4 0 114.349 0A6.221 6.221 0 0117 16.099V17h-1v-.901a5.221 5.221 0 00-3.21-4.818l-.79-.33V9.929l.63-.409a3 3 0 10-3.26 0l.63.409v1.024l-.79.329A5.221 5.221 0 006 16.099z" fill-rule="evenodd"/></symbol><symbol id="icon-email" viewBox="0 0 18 18"><path d="M16.005 2A2 2 0 0118 4.006v9.988A2 2 0 0116.005 16H1.995A2 2 0 010 13.994V4.006A2 2 0 011.995 2zm0 1H1.995A1 1 0 001 4.006v9.988A1 1 0 001.995 15h14.01A1 1 0 0017 13.994V4.006A1 1 0 0016.005 3zM16 5.557V7l-7 4-7-4V5.557l7 4z" fill-rule="evenodd"/></symbol><symbol id="icon-error" viewBox="0 0 18 18"><path d="M9 0a9 9 0 110 18A9 9 0 019 0zm2.863 4.711L9 7.574 6.137 4.711a1.007 1.007 0 00-1.427 0 1.006 1.006 0 00.001 1.426L7.574 9l-2.863 2.863a1.007 1.007 0 000 1.427 1.006 1.006 0 001.426-.001L9 10.426l2.863 2.863a1.007 1.007 0 001.427 0 1.006 1.006 0 00-.001-1.426L10.426 9l2.863-2.863a1.007 1.007 0 000-1.427 1.006 1.006 0 00-1.426.001z" fill-rule="evenodd"/></symbol><symbol id="icon-ethics" viewBox="0 0 18 18"><path d="M6.764 1.414l.833-.833a1.984 1.984 0 012.806 0l.833.833A2 2 0 0012.65 2H14a2 2 0 012 2v1.35a2 2 0 00.586 1.414l.833.833a1.984 1.984 0 010 2.806l-.833.833A2 2 0 0016 12.65V14a2 2 0 01-2 2h-1.35a2 2 0 00-1.414.586l-.833.833a1.984 1.984 0 01-2.806 0l-.833-.833A2 2 0 005.35 16H4a2 2 0 01-2-2v-1.35a2 2 0 00-.586-1.414l-.833-.833a1.984 1.984 0 010-2.806l.833-.833A2 2 0 002 5.35V4a2 2 0 012-2h1.35a2 2 0 001.414-.586zM5.35 3H4a1 1 0 00-1 1v1.35a3 3 0 01-.879 2.121l-.833.833a.984.984 0 000 1.392l.833.833A3 3 0 013 12.65V14a1 1 0 001 1h1.35a3 3 0 012.121.879l.833.833a.984.984 0 001.392 0l.833-.833A3 3 0 0112.65 15H14a1 1 0 001-1v-1.35a3 3 0 01.879-2.121l.833-.833a.984.984 0 000-1.392l-.833-.833A3 3 0 0115 5.35V4a1 1 0 00-1-1h-1.35a3 3 0 01-2.121-.879l-.833-.833a.984.984 0 00-1.392 0l-.833.833A3 3 0 015.35 3zm3.587 11.496a.505.505 0 01-.064.003 5.474 5.474 0 01-2.759-.816.5.5 0 01.526-.85 4.474 4.474 0 002.256.666c.017 0 .035.002.052.004A.506.506 0 019 13.5a4.5 4.5 0 003.493-7.338.5.5 0 11.775-.631A5.5 5.5 0 019 14.5a.505.505 0 01-.063-.004zm1.58-10.784a.5.5 0 01-.276.961 4.485 4.485 0 00-1.156-.172C6.527 4.5 4.5 6.503 4.5 9c0 .627.128 1.235.373 1.796a.5.5 0 11-.917.4A5.483 5.483 0 013.5 9c0-3.052 2.477-5.5 5.594-5.5.486.009.963.08 1.422.212zm-1.977 6.41l2.698-2.946a.5.5 0 01.762.648l-3.016 3.343a.5.5 0 01-.693.047L6.36 9.592A.5.5 0 117 8.824z" fill-rule="evenodd"/></symbol><symbol id="icon-explore" viewBox="0 0 18 18"><path d="M9 17A8 8 0 109 1a8 8 0 000 16zm0 1A9 9 0 119 0a9 9 0 010 18zm0-2.5a.5.5 0 110-1 5.5 5.5 0 005.497-5.317.5.5 0 111 .032A6.5 6.5 0 019 15.5zM8.71 2.506a.5.5 0 11.043 1A5.5 5.5 0 003.5 9a.5.5 0 01-1 0 6.5 6.5 0 016.21-6.494zm1.137 8.048l-1.2-1.2a.5.5 0 11.707-.708l1.2 1.2 1.6-4-4.506 1.802-1.803 4.507zM13.95 4.05l-2.67 6.673a1 1 0 01-.557.557L4.05 13.95l2.67-6.673a1 1 0 01.557-.557z" fill-rule="evenodd"/></symbol><symbol id="icon-filter" viewBox="0 0 16 16"><path d="M14.974 0C15.54 0 16 .448 16 1c0 .242-.09.476-.254.658L10.052 8v5.5a.992.992 0 01-.41.8L7.59 15.8a1.044 1.044 0 01-1.437-.2.983.983 0 01-.205-.6V8L.254 1.658A.982.982 0 01.35.248C.537.087.778 0 1.026 0zM9.052 8.5H6.947v6.491l.012.007.02.002.02-.007 2.054-1.5zM1.026 1l-.015.002L6.843 7.5h2.313l5.836-6.499z"/></symbol><symbol id="icon-home" viewBox="0 0 18 18"><path d="M9 5l-6 6v5h4v-4h4v4h4v-5zm7 6.586V16a1 1 0 01-1 1h-5v-4H8v4H3a1 1 0 01-1-1v-4.414a.997.997 0 01-.707-.293l-.586-.586a1 1 0 010-1.414L9 1l8.293 8.293a1 1 0 010 1.414l-.586.586a.997.997 0 01-.707.293zM9 2.414L1.414 10l.586.586 7-7 7 7 .586-.586z" fill-rule="evenodd"/></symbol><symbol id="icon-image" viewBox="0 0 18 18"><path d="M10.005 0c.55 0 1.318.323 1.707.712l4.576 4.576c.393.393.712 1.168.712 1.714v8.99A2.003 2.003 0 0115.006 18H2.994A1.994 1.994 0 011 16.005V1.995C1 .893 1.887 0 3 0zM6.508 10.175l-3.894 6.75a.991.991 0 00.38.075h10.603l-2.433-4.215-1.575 2.728zM15.006 17c.546 0 .994-.45.994-1.009V7.002c0-.283-.215-.803-.419-1.007L11.005 1.42c-.204-.204-.719-.419-1-.419H3c-.557 0-1 .443-1 .995v13.99l4.508-7.81 3.081 5.338 1.575-2.729L14.752 17zM12 6a2 2 0 110 4 2 2 0 010-4zm0 1a1 1 0 100 2 1 1 0 000-2z" fill-rule="evenodd"/></symbol><symbol id="icon-info" viewBox="0 0 18 18"><path d="M9 0a9 9 0 110 18A9 9 0 019 0zm0 7H7.5l-.117.007a1 1 0 00-.112 1.967l.112.02L7.5 9H8v3h-.5l-.117.007a1 1 0 00-.857.764l-.02.112L6.5 13l.007.117a1 1 0 00.764.857l.112.02L7.5 14h3l.117-.007a1 1 0 00.112-1.967l-.112-.02L10.5 12H10V8l-.007-.117a1 1 0 00-.764-.857l-.112-.02zm0-3.25a1.25 1.25 0 100 2.5 1.25 1.25 0 000-2.5z" fill-rule="evenodd"/></symbol><symbol id="icon-institution" viewBox="0 0 18 18"><path d="M7 17v-2h4v2h2v-3H5v3zM4 6.998H2.474a.5.5 0 01-.339-.868l1.232-1.132H1V17h3v-2H1v-1h3v-1h1V8.997H4zm10 0v2h-1V13h1v1h3v1h-3v2h3V4.999h-2.37l1.232 1.132a.5.5 0 01-.338.868zm3-3a1 1 0 011 1V18H0V4.998a1 1 0 011-1h3.455L8.66.131a.5.5 0 01.677 0l4.205 3.865zm-4 3H5v1h8zm-2 6.001h1V9h-1zm-1 0V9H8v4zm-3 0V9H6v4zm8-4a1 1 0 011 1v2h-2v-2a1 1 0 011-1zm-12 0a1 1 0 011 1v2H2v-2a1 1 0 011-1zm5.999-7.82L3.757 5.998H14.24zM9 4.998a1 1 0 110-2 1 1 0 010 2zM8 16v1h2v-1z" fill-rule="evenodd"/></symbol><symbol id="icon-location" viewBox="0 0 18 18"><path d="M9.395 16.269a31.947 31.947 0 002.333-2.53c1.402-1.702 2.432-3.362 2.936-4.872C14.886 8.2 15 7.574 15 7a6 6 0 00-6-6C5.636 1 3 3.602 3 7c0 .574.114 1.199.336 1.867.504 1.51 1.534 3.17 2.936 4.872A31.947 31.947 0 009 16.65l.395-.38zM9 18S2 12 2 7c0-4 3.134-7 7-7a7 7 0 017 7c0 5-7 11-7 11zm0-8a3 3 0 110-6 3 3 0 010 6zm0-1a2 2 0 100-4 2 2 0 000 4z" fill-rule="evenodd"/></symbol><symbol id="icon-newsletter" viewBox="0 0 18 18"><path d="M9 11.848l2-1.143V9H7v1.705zm-3-1.714V8h6v2.134l3-1.714V2H3v6.42zM16 4.75l1.53.956a1 1 0 01.47.848V15a2 2 0 01-2 2H2a2 2 0 01-2-2V6.554a1 1 0 01.47-.848L2 4.75V2a1 1 0 011-1h12a1 1 0 011 1zm0 1.18V9l-7 4-7-4V5.93l-1 .624V15a1 1 0 001 1h14a1 1 0 001-1V6.554zM6 4h6v1H6zM5 6h8v1H5z" fill-rule="evenodd"/></symbol><symbol id="icon-orcid" viewBox="0 0 18 18"><path d="M9 1a8 8 0 110 16A8 8 0 019 1zM6.099 6.273H4.68v7.171H6.1zm4.559.025H7.665v7.146h2.91c.768 0 1.448-.148 2.042-.445s1.051-.715 1.373-1.255c.323-.54.484-1.16.484-1.86 0-.685-.16-1.303-.481-1.852a3.301 3.301 0 00-1.35-1.278c-.58-.304-1.242-.456-1.985-.456zm-.19 1.08c.788 0 1.415.223 1.88.67.466.447.698 1.055.698 1.826 0 .743-.23 1.344-.693 1.803-.462.459-1.075.688-1.839.688H9.046V7.378zM5.382 3.667a.786.786 0 00-.577.253.805.805 0 00-.25.58c0 .224.084.42.25.59a.818.818 0 001.177.004.81.81 0 00.25-.593c0-.234-.084-.432-.25-.593s-.366-.241-.6-.241z" fill-rule="evenodd"/></symbol><symbol id="icon-plus" viewBox="0 0 16 16"><path d="M1 7h6V1c0-.552.444-1 1-1 .552 0 1 .445 1 1v6h6c.552 0 1 .444 1 1 0 .552-.445 1-1 1H9v6c0 .552-.444 1-1 1-.552 0-1-.445-1-1V9H1c-.552 0-1-.444-1-1 0-.552.445-1 1-1z" fill-rule="evenodd"/></symbol><symbol id="icon-print" viewBox="0 0 18 18"><path d="M16.005 5H1.995A.997.997 0 001 6v6c0 .557.443 1 .995 1H3v-3h12v3h1.005c.55 0 .995-.447.995-1V6c0-.557-.443-1-.995-1zM14 4V1.998C14 1.45 13.548 1 12.991 1H5.01C4.452 1 4 1.45 4 1.998V4zm1 10v2.002A2.005 2.005 0 0112.991 18H5.01A1.998 1.998 0 013 16.002V14H1.995A1.992 1.992 0 010 12V6c0-1.105.893-2 1.995-2H3V1.998C3 .894 3.902 0 5.009 0h7.982C14.101 0 15 .898 15 1.998V4h1.005C17.107 4 18 4.887 18 6v6c0 1.105-.893 2-1.995 2zm-1-3H4v5.002c0 .555.447.998 1.009.998h7.982c.557 0 1.009-.45 1.009-.998zm-9 1h8v1H5zm0 2h5v1H5zm9-5a1 1 0 110-2 1 1 0 010 2z" fill-rule="evenodd"/></symbol><symbol id="icon-search" viewBox="0 0 18 18"><path d="M16.78 15.736a.748.748 0 01.007 1.053.752.752 0 01-1.053-.007l-3.103-3.104A7.136 7.136 0 011 8.136a7.136 7.136 0 1112.677 4.496zm-8.644-1.483A6.116 6.116 0 108.135 2.02a6.116 6.116 0 000 12.233z" fill-rule="evenodd"/></symbol><symbol id="icon-social-facebook" viewBox="0 0 24 24"><path d="M6.004 20A2 2 0 014 18.006V5.994C4 4.893 4.895 4 5.994 4h12.012C19.107 4 20 4.895 20 5.994v12.012A1.992 1.992 0 0117.997 20H15.04v-6.196h2.08l.31-2.415h-2.39V9.848c0-.7.194-1.176 1.196-1.176h1.28v-2.16l-.235-.025c-.344-.032-.95-.07-1.63-.07-1.843 0-3.105 1.125-3.105 3.191v1.781h-2.085v2.415h2.085V20z" fill-rule="evenodd"/></symbol><symbol id="icon-social-twitter" viewBox="0 0 24 24"><path d="M18.877 6.874a3.772 3.772 0 001.625-2.096 7.237 7.237 0 01-2.347.917A3.64 3.64 0 0015.463 4.5c-2.04 0-3.693 1.696-3.693 3.786 0 .297.031.587.094.862C8.8 8.99 6.076 7.483 4.254 5.191c-.317.56-.5 1.211-.5 1.905 0 1.314.653 2.472 1.643 3.152a3.647 3.647 0 01-1.672-.473v.045c0 1.834 1.273 3.366 2.964 3.713a3.543 3.543 0 01-.975.133c-.236 0-.471-.023-.694-.067.471 1.507 1.832 2.604 3.45 2.633a7.297 7.297 0 01-4.59 1.62c-.298 0-.59-.016-.88-.051A10.279 10.279 0 008.661 19.5c6.793 0 10.506-5.771 10.506-10.775l-.009-.49A7.527 7.527 0 0021 6.275a7.267 7.267 0 01-2.122.596z" fill-rule="evenodd"/></symbol><symbol id="icon-social-youtube" viewBox="0 0 24 24"><path d="M10.142 14.397l-.001-5.193 4.863 2.606zm9.963-7.927c-.685-.737-1.452-.74-1.804-.783-2.519-.187-6.297-.187-6.297-.187-.008 0-3.786 0-6.305.187-.352.043-1.119.046-1.804.783-.54.56-.715 1.834-.715 1.834S3 9.8 3 11.296v1.402c0 1.496.18 2.991.18 2.991s.176 1.274.715 1.835c.685.736 1.585.713 1.985.79 1.44.142 6.12.186 6.12.186s3.782-.006 6.301-.193c.352-.043 1.119-.047 1.804-.783.539-.561.715-1.835.715-1.835s.18-1.495.18-2.991v-1.402c0-1.496-.18-2.992-.18-2.992s-.176-1.273-.716-1.834z" fill-rule="evenodd"/></symbol><symbol id="icon-subject-medicine" viewBox="0 0 18 18"><path d="M12.5 8H6a3 3 0 00-3 3v1a3 3 0 003 3h1v-2h-.5a1.5 1.5 0 010-3H13a3 3 0 003-3V6a3 3 0 00-3-3h-2v2h1.5a1.5 1.5 0 010 3zM7 7V6H3.5a2.5 2.5 0 010-5h1.028a3 3 0 011.342.317l1.133.567A2 2 0 0111 2h2a4 4 0 014 4v1a4 4 0 01-4 4h-2v1h2a2 2 0 110 4h-2a2 2 0 11-4 0H6a4 4 0 01-4-4v-1a4 4 0 014-4zm0-2V2.943a2 2 0 01-.422-.154L5.422 2.21A2 2 0 004.528 2H3.5a1.5 1.5 0 000 3zm4 1v1h1.5a.5.5 0 100-1zm-1 1V2a1 1 0 10-2 0v5zm-2 4v5a1 1 0 002 0v-5zm3 2v2h2a1 1 0 000-2zm-4-1v-1h-.5a.5.5 0 100 1zM3.5 3h1a.5.5 0 010 1h-1a.5.5 0 010-1z" fill-rule="evenodd"/></symbol><symbol id="icon-success" viewBox="0 0 18 18"><path d="M9 0a9 9 0 110 18A9 9 0 019 0zm3.486 4.982l-4.718 5.506L5.14 8.465a.991.991 0 00-1.423.133 1.06 1.06 0 00.13 1.463l3.407 2.733a1 1 0 001.387-.133l5.385-6.334a1.06 1.06 0 00-.116-1.464.991.991 0 00-1.424.119z" fill-rule="evenodd"/></symbol><symbol id="icon-table" viewBox="0 0 18 18"><path d="M16.005 2A2 2 0 0118 4.006v9.988A2 2 0 0116.005 16l-4.006-.001L12 16h-1l-.001-.001h-5L6 16H5l-.001-.001L1.995 16A2 2 0 010 13.994V4.006A2 2 0 011.995 2zM4.999 7H1v6.994A1 1 0 001.995 15H5zm6 0h-5v8h5zm5.006-4h-4.006v3H17v1h-5.001v7.999l4.006.001A1 1 0 0017 13.994V4.006A1 1 0 0016.005 3zM3.5 12a.5.5 0 110 1h-1a.5.5 0 110-1zm12 0a.5.5 0 110 1h-2a.5.5 0 110-1zm-6 0a.5.5 0 110 1h-2a.5.5 0 110-1zm-6-2a.5.5 0 110 1h-1a.5.5 0 110-1zm12 0a.5.5 0 110 1h-2a.5.5 0 110-1zm-6 0a.5.5 0 110 1h-2a.5.5 0 110-1zm-6-2a.5.5 0 010 1h-1a.5.5 0 010-1zm12 0a.5.5 0 110 1h-2a.5.5 0 110-1zm-6 0a.5.5 0 010 1h-2a.5.5 0 010-1zm1.499-5h-5v3h5zm-6 0H1.995A1 1 0 001 4.006V6h3.999z" fill-rule="evenodd"/></symbol><symbol id="icon-tick-circle" viewBox="0 0 24 24"><path d="M12 2c5.523 0 10 4.477 10 10s-4.477 10-10 10S2 17.523 2 12 6.477 2 12 2zm0 1a9 9 0 100 18 9 9 0 000-18zm4.22 5.366c.361-.437.999-.49 1.424-.119s.477 1.028.115 1.465l-6.093 6.944a1 1 0 01-1.405.097l-3.897-3.367c-.43-.368-.487-1.023-.13-1.464s.994-.5 1.423-.133l3.111 2.7z" fill-rule="evenodd"/></symbol><symbol id="icon-tick" viewBox="0 0 16 16"><path d="M6.768 9.211L3.657 6.628c-.429-.352-1.066-.295-1.423.127s-.3 1.049.13 1.4l3.915 3.24a1 1 0 001.375-.096l6.105-6.66a.984.984 0 00-.115-1.402 1.021 1.021 0 00-1.424.113z" fill-rule="evenodd"/></symbol><symbol id="icon-update" viewBox="0 0 18 18"><path d="M1 13v1a1 1 0 001 1h14a1 1 0 001-1v-1h-1V3H2v10zm16-1h1v2a2 2 0 01-2 2H2a2 2 0 01-2-2v-2h1V3a1 1 0 011-1h14a1 1 0 011 1zm-1 0v1h-4.586l-1 1H7.586l-1-1H2v-1h5l1 1h2l1-1zM3 4h12v7H3zm1 1v5h10V5zm1 1h4v1H5zm0 2h4v1H5z" fill-rule="evenodd"/></symbol><symbol id="icon-upload" viewBox="0 0 18 18"><path d="M10.005 0c.55 0 1.318.323 1.707.712l4.576 4.576c.393.393.712 1.168.712 1.714v8.99A2.003 2.003 0 0115.006 18H2.994A1.994 1.994 0 011 16.005V1.995C1 .893 1.887 0 3 0zm0 1H3c-.557 0-1 .443-1 .995v14.01c0 .55.445.995.994.995h12.012c.546 0 .994-.45.994-1.009V7.002c0-.283-.215-.803-.419-1.007L11.005 1.42c-.204-.204-.719-.419-1-.419zM8.149 5.146a.5.5 0 01.705 0l2.591 2.59c.195.196.19.516.003.704a.49.49 0 01-.7-.007l-1.746-1.78V12.8a.501.501 0 01-1 0V6.653l-1.747 1.78a.497.497 0 01-.7.006.498.498 0 01.003-.702z" fill-rule="evenodd"/></symbol><symbol id="icon-video" viewBox="0 0 18 18"><path d="M16.005 2A2 2 0 0118 4.006v9.988A2 2 0 0116.005 16H1.995A2 2 0 010 13.994V4.006A2 2 0 011.995 2zm0 1H1.995A1 1 0 001 4.006v9.988A1 1 0 001.995 15h14.01A1 1 0 0017 13.994V4.006A1 1 0 0016.005 3zm-8.31 2.25L12.3 7.99c.937.557.93 1.464 0 2.017l-4.604 2.74c-.937.557-1.696.165-1.696-.894v-5.71c0-1.05.767-1.446 1.696-.894zm-.674.96v5.575c0 .3-.108.245.166.085l4.584-2.675c.305-.178.305-.216 0-.394L7.187 6.126c-.267-.156-.166-.207-.166.084z" fill-rule="evenodd"/></symbol><symbol id="icon-warning" viewBox="0 0 18 18"><path d="M9 11.75a1.25 1.25 0 110 2.5 1.25 1.25 0 010-2.5zM9.413 4a1 1 0 011 1l-.003.083-.334 4A1 1 0 019.08 10h-.16a1 1 0 01-.996-.917l-.334-4a1 1 0 01.914-1.08l.041-.002zM9 18A9 9 0 119 0a9 9 0 010 18z" fill-rule="evenodd"/></symbol><symbol id="icon-facebook-bordered" viewBox="463.812 263.868 32 32"><path d="M479.812 263.868c-8.837 0-16 7.163-16 16s7.163 16 16 16 16-7.163 16-16-7.163-16-16-16zm0 30c-7.732 0-14-6.269-14-14s6.268-14 14-14 14 6.269 14 14-6.267 14-14 14z"/><path d="M483.025 280.48l.32-2.477h-2.453v-1.582c0-.715.199-1.207 1.227-1.207h1.311v-2.213a17.753 17.753 0 00-1.907-.098c-1.894 0-3.186 1.154-3.186 3.271V278h-2.142v2.477h2.142v6.354h2.557v-6.354l2.131.003z"/></symbol><symbol id="icon-twitter-bordered" viewBox="463.812 263.868 32 32"><path d="M486.416 276.191a5.622 5.622 0 01-1.554.429 2.718 2.718 0 001.19-1.502 5.456 5.456 0 01-1.72.657 2.71 2.71 0 00-1.979-.854 2.711 2.711 0 00-2.642 3.326 7.681 7.681 0 01-5.586-2.831 2.714 2.714 0 00.839 3.618 2.748 2.748 0 01-1.227-.339v.031a2.71 2.71 0 002.174 2.656 2.735 2.735 0 01-1.229.049 2.726 2.726 0 002.531 1.883 5.442 5.442 0 01-4.01 1.123 7.672 7.672 0 004.155 1.215c4.983 0 7.71-4.129 7.71-7.711 0-.115-.004-.232-.006-.351a5.41 5.41 0 001.354-1.399z"/><path d="M479.812 263.868c-8.837 0-16 7.163-16 16s7.163 16 16 16 16-7.163 16-16-7.163-16-16-16zm0 30c-7.732 0-14-6.269-14-14s6.268-14 14-14 14 6.269 14 14-6.267 14-14 14z"/></symbol><symbol id="icon-weibo-bordered" viewBox="463.812 263.868 32 32"><path d="M479.812 263.868c-8.838 0-16 7.163-16 16s7.162 16 16 16c8.837 0 16-7.163 16-16s-7.163-16-16-16zm0 30c-7.732 0-14-6.269-14-14s6.268-14 14-14c7.731 0 14 6.269 14 14s-6.267 14-14 14z"/><path d="M478.552 285.348c-2.616.261-4.876-.926-5.044-2.649-.167-1.722 1.814-3.33 4.433-3.588 2.609-.263 4.871.926 5.041 2.647.165 1.721-1.818 3.331-4.43 3.59m5.23-5.718c-.226-.065-.374-.109-.259-.403.25-.639.276-1.188.005-1.581-.515-.734-1.915-.693-3.521-.021 0 0-.508.224-.378-.181.247-.798.209-1.468-.178-1.852-.87-.878-3.194.032-5.183 2.027-1.489 1.494-2.357 3.082-2.357 4.453 0 2.619 3.354 4.213 6.631 4.213 4.297 0 7.154-2.504 7.154-4.493.001-1.198-1.007-1.881-1.914-2.162m2.855-4.797a4.176 4.176 0 00-3.982-1.291.608.608 0 00-.465.72.604.604 0 00.72.466 2.968 2.968 0 012.827.92 3 3 0 01.625 2.918.602.602 0 00.39.762.603.603 0 00.763-.391v-.001a4.218 4.218 0 00-.878-4.103"/><path d="M485.041 276.276a2.037 2.037 0 00-1.938-.63.518.518 0 00-.396.621.517.517 0 00.617.398c.336-.071.702.03.947.307s.312.649.207.979a.52.52 0 00.336.654.523.523 0 00.657-.336 2.038 2.038 0 00-.43-1.993m-6.347 5.951c-.09.156-.293.233-.451.166-.151-.062-.204-.235-.115-.389.093-.155.284-.229.44-.168.157.056.214.235.126.391m-.832 1.074c-.253.405-.795.58-1.202.396-.403-.186-.521-.655-.27-1.051.248-.39.771-.566 1.176-.393.413.17.543.636.296 1.048m.95-2.864c-1.244-.326-2.65.294-3.19 1.396-.553 1.119-.021 2.369 1.236 2.775 1.303.42 2.84-.225 3.374-1.436.526-1.183-.132-2.402-1.42-2.735"/></symbol><symbol id="icon-arrow-left-bullet" viewBox="0 0 8 16"><path d="M3 8l5 5v3L0 8l8-8v3L3 8z"/></symbol><symbol id="icon-chevron-down" viewBox="0 0 16 16"><path d="M8 8.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414z" fill-rule="evenodd"/></symbol><symbol id="icon-download-rounded"><path d="M0 13c0-.556.449-1 1.002-1h9.996a.999.999 0 110 2H1.002A1.006 1.006 0 010 13zM7 1v6.8l2.482-2.482c.392-.392 1.022-.4 1.403-.02a1.001 1.001 0 010 1.417l-4.177 4.177a1.001 1.001 0 01-1.416 0L1.115 6.715a.991.991 0 01-.016-1.4 1 1 0 011.42.003L5 7.8V1c0-.55.444-.996 1-.996.552 0 1 .445 1 .996z"/></symbol><symbol id="icon-ext-link" viewBox="0 0 16 16"><path d="M12.9 16H3.1C1.4 16 0 14.6 0 12.9V3.2C0 1.4 1.4 0 3.1 0h3.7v1H3.1C2 1 1 2 1 3.2v9.7C1 14 2 15 3.1 15h9.7c1.2 0 2.1-1 2.1-2.1V8.7h1v4.2c.1 1.7-1.3 3.1-3 3.1z"/><path d="M12.8 2.5l.7.7-9 8.9-.7-.7 9-8.9z"/><path d="M9.7 0L16 6.2V0z"/></symbol><symbol id="icon-remove" viewBox="-296 388 18 18"><path d="M-291.7 396.1h9v2h-9z"/><path d="M-287 405.5c-4.7 0-8.5-3.8-8.5-8.5s3.8-8.5 8.5-8.5 8.5 3.8 8.5 8.5-3.8 8.5-8.5 8.5zm0-16c-4.1 0-7.5 3.4-7.5 7.5s3.4 7.5 7.5 7.5 7.5-3.4 7.5-7.5-3.4-7.5-7.5-7.5z"/></symbol><symbol id="icon-rss" viewBox="0 0 18 18"><path d="M.975 6.016l.117.004c5.759.52 10.342 5.105 10.86 10.864a1 1 0 01-1.993.18A10.003 10.003 0 00.912 8.011a1 1 0 01.063-1.996zM2.5 12.97a2.5 2.5 0 110 5 2.5 2.5 0 010-5zM1.067 0c9.096.533 16.376 7.817 16.903 16.914a1 1 0 11-1.997.115C15.505 8.947 9.033 2.471.95 1.998A1 1 0 111.067.002z" fill-rule="evenodd"/></symbol><symbol id="icon-springer-arrow-left"><path d="M15 7a1 1 0 000-2H3.385l2.482-2.482a.994.994 0 00.02-1.403 1.001 1.001 0 00-1.417 0L.294 5.292a1.001 1.001 0 000 1.416l4.176 4.177a.991.991 0 001.4.016 1 1 0 00-.003-1.42L3.385 7H15z"/></symbol><symbol id="icon-springer-arrow-right"><path d="M1 7a1 1 0 010-2h11.615l-2.482-2.482a.994.994 0 01-.02-1.403 1.001 1.001 0 011.417 0l4.176 4.177a1.001 1.001 0 010 1.416l-4.176 4.177a.991.991 0 01-1.4.016 1 1 0 01.003-1.42L12.615 7H1z"/></symbol><symbol id="icon-springer-collections" viewBox="3 3 32 32"><path fill-rule="evenodd" d="M25.583 30.125V7.121c0-.013-.003-.017.003-.017l-19.482.002v23.03c0 .97.79 1.76 1.76 1.76h18.193a3.525 3.525 0 01-.474-1.771zm-21.25.01V7.106c0-.984.792-1.772 1.769-1.772h19.484c.976 0 1.768.8 1.768 1.788v5.296h5.313V30.11c0 1.96-1.581 3.557-3.531 3.557H7.864a3.533 3.533 0 01-3.53-3.531zm23.021-15.948v15.938a1.77 1.77 0 103.542 0V14.187h-3.542zM9.646 10.646h12.396v7.083H9.646v-7.083zm1.77 1.77v3.542h8.855v-3.541h-8.854zM9.647 19.5h12.396v1.77H9.646V19.5zm0 3.542h12.396v1.77H9.646v-1.77zm0 3.541h12.396v1.771H9.646v-1.77z"/></symbol><symbol id="icon-springer-download" viewBox="-301 390 9 14"><path d="M-301 395.6l4.5 5.1 4.5-5.1h-3V390h-3v5.6h-3zm0 6.5h9v1.9h-9z"/></symbol><symbol id="icon-springer-info" viewBox="0 0 24 24"><path d="M12 0c6.627 0 12 5.373 12 12s-5.373 12-12 12S0 18.627 0 12 5.373 0 12 0zm.554 9.1h-1a1 1 0 00-1 1v8a1 1 0 001 1h1a1 1 0 001-1v-8a1 1 0 00-1-1zM12 5c-.464 0-.847.146-1.148.44-.301.292-.452.675-.452 1.15 0 .474.15.86.452 1.16.3.3.684.45 1.148.45.477 0 .863-.15 1.158-.45.295-.3.442-.686.442-1.16 0-.475-.147-.858-.442-1.15C12.863 5.145 12.477 5 12 5z"/></symbol><symbol id="icon-springer-tick-circle" viewBox="0 0 24 24"><path d="M12 24C5.373 24 0 18.627 0 12S5.373 0 12 0s12 5.373 12 12-5.373 12-12 12zM7.657 10.79a.991.991 0 00-1.423.133 1.06 1.06 0 00.13 1.464l3.897 3.367a1 1 0 001.405-.097l6.093-6.944a1.06 1.06 0 00-.115-1.465.991.991 0 00-1.424.12l-5.452 6.121-3.111-2.699z"/></symbol><symbol id="icon-updates" viewBox="0 0 18 18"><path d="M16.98 3.484h-.48c-2.52-.058-5.04 1.161-7.44 2.903-2.46-1.8-4.74-2.903-8.04-2.903-.3 0-.54.29-.54.58v9.813c0 .29.24.523.54.581 2.76.348 4.86 1.045 7.62 2.903.24.116.54.116.72 0 2.76-1.858 4.86-2.555 7.62-2.903.3-.058.54-.29.54-.58V4.064c0-.29-.24-.523-.54-.581zm-15.3 1.22c2.34 0 4.86 1.509 6.72 2.786v8.478c-2.34-1.394-4.38-2.09-6.72-2.439V4.703zm14.58 8.767c-2.34.348-4.38 1.045-6.72 2.439V7.374C12 5.632 14.1 4.645 16.26 4.645v8.826z"/><path d="M9 .058c-1.56 0-2.76 1.22-2.76 2.671C6.24 4.181 7.5 5.4 9 5.4c1.5 0 2.76-1.22 2.76-2.671 0-1.452-1.2-2.67-2.76-2.67zm0 4.413c-.96 0-1.8-.755-1.8-1.742C7.2 1.8 7.98.987 9 .987s1.8.755 1.8 1.742c0 .93-.84 1.742-1.8 1.742z"/></symbol><symbol id="icon-submit-closed" viewBox="0 0 18 18"><path d="M15 0a2 2 0 012 2v4.5a.5.5 0 11-1 0V2a1 1 0 00-.883-.993L15 1H6v3a2 2 0 01-2 2H1v10a1 1 0 00.883.993L2 17h4.5a.5.5 0 110 1H2a2 2 0 01-2-2V5.828a2 2 0 01.586-1.414L4.414.586A2 2 0 015.828 0zm-2.5 7a5.5 5.5 0 110 11 5.5 5.5 0 010-11zm0 1a4.5 4.5 0 100 9 4.5 4.5 0 000-9zm2.309 2.191a.653.653 0 010 .924l-1.386 1.384 1.386 1.386a.653.653 0 01-.924.924L12.5 13.423l-1.384 1.386a.653.653 0 01-.924-.924l1.385-1.386-1.385-1.384a.653.653 0 01.924-.924l1.384 1.385 1.386-1.385a.653.653 0 01.924 0zM5 1.413L1.413 5H4a1 1 0 001-1z"/></symbol><symbol id="icon-submit-open" viewBox="0 0 18 18"><path d="M15 0a2 2 0 012 2v5.5a.5.5 0 11-1 0V2a1 1 0 00-.883-.993L15 1H6v3a2 2 0 01-2 2H1v10a1 1 0 00.883.993L2 17h7.5a.5.5 0 110 1H2a2 2 0 01-2-2V5.828a2 2 0 01.586-1.414L4.414.586A2 2 0 015.828 0zm-.544 8.189l3.354 3.354c.251.251.254.66.004.91a.643.643 0 01-.907-.009l-2.26-2.304v7.223A.64.64 0 0114 18a.65.65 0 01-.647-.637l-.001-7.223-2.262 2.304a.634.634 0 01-.906.01.65.65 0 01.004-.91l3.354-3.355a.647.647 0 01.914 0zM13.5 5a.5.5 0 110 1h-6a.5.5 0 010-1zM5 1.413L1.413 5H4a1 1 0 001-1zM13.5 3a.5.5 0 110 1h-6a.5.5 0 010-1z"/></symbol><symbol id="icon-submit-upcoming" viewBox="0 0 18 18"><path d="M15 0a2 2 0 012 2v4.5a.5.5 0 11-1 0V2a1 1 0 00-.883-.993L15 1H6v3a2 2 0 01-2 2H1v10a1 1 0 00.883.993L2 17h4.5a.5.5 0 110 1H2a2 2 0 01-2-2V5.828a2 2 0 01.586-1.414L4.414.586A2 2 0 015.828 0zm-2.5 7a5.5 5.5 0 11-3.6 1.342l-1.516.022a.497.497 0 01-.5-.49c0-.243.178-.445.41-.487l.09-.008h2.663a.5.5 0 01.491.41l.008.089v2.664c0 .276-.23.499-.495.499a.488.488 0 01-.483-.41l-.007-.09.02-1.466A4.5 4.5 0 1012.5 8c-.77 0-.77-1-.001-1zm0 2.85a.65.65 0 01.643.554l.007.096v1.731l.81.81a.65.65 0 01.068.838l-.068.08a.65.65 0 01-.84.07l-.08-.07-.97-.97a.75.75 0 01-.21-.412l-.01-.118V10.5a.65.65 0 01.65-.65zM5 1.413L1.413 5H4a1 1 0 001-1z"/></symbol></svg>
</div>


        

        
    <div class="u-vh-full">
        <a class="u-visually-hidden u-visually-hidden-focus" href="#main-content">
    <span class="c-banner">Skip to main content</span>
</a>

        
            
    <aside class="adsbox c-ad c-ad--728x90">
        <div class="c-ad__inner" >
            <p class="c-ad__label">Advertisement</p>
            <div id="div-gpt-ad-LB1"
                 data-gpt-unitpath="/270604982/bmc/ccforum"
                 data-gpt-sizes="728x90,970x90"
                 data-gpt-targeting="pos=LB1;pmc=H3100X,H22000;"
                 data-ad-type="LB1">
                <noscript>
                    <a href="//pubads.g.doubleclick.net/gampad/jump?iu=/270604982/bmc/ccforum&amp;sz=728x90,970x90&amp;pos=LB1&amp;pmc=H3100X,H22000&amp;">
                        <img data-test="gpt-advert-fallback-img"
                             src="//pubads.g.doubleclick.net/gampad/ad?iu=/270604982/bmc/ccforum&amp;sz=728x90,970x90&amp;pos=LB1&amp;pmc=H3100X,H22000&amp;"
                             alt="Advertisement"
                             width="728"
                             height="90">
                    </a>
                </noscript>
            </div>
        </div>
    </aside>

        
        

         
    
        <div id="membership-message-loader-desktop" class="placeholder" data-placeholder="/placeholder/v1/membership/message"></div>
    
    
        <div id="top" class="u-position-relative">
    <header class="c-header" data-test="publisher-header">
        <div class="c-header__container">
            <div class="c-header__brand u-mr-48" itemscope itemtype="http://schema.org/Organization" data-test="navbar-logo-header">
                <div class="c-logo">
    <a href="https://www.biomedcentral.com" itemprop="url">
        <img alt="BMC" itemprop="logo" width="76" height="18" role="img" src=/static/images/bmc/logos/logo-bmc-white-aj-5161b51dc0.svg>
        <div class="c-logo__strapline">
            <img alt="Part of Springer Nature" width="173" height="16" role="img" src=/static/images/bmc/logos/logo-bmc-white-strapline-sn-7ea0ab832c.svg>
        </div>
    </a>
</div>

            </div>
            <div class="c-header__navigation">
                <button
                    type="button"
                    class="c-header__link u-button-reset u-mr-24"
                    data-expander
                    data-expander-target="#publisher-header-search"
                    data-expander-autofocus="firstTabbable"
                    data-test="header-search-button"
                    aria-controls="publisher-header-search"
                    aria-expanded="false">
                    <span class="u-display-flex u-align-items-center">
                        Search
                        <svg class="c-icon u-ml-8" width="14" height="14" aria-hidden="true" focusable="false">
                            <use xlink:href="#icon-search"></use>
                        </svg>
                    </span>
                </button>
                <nav>
                    <ul class="c-header__menu" data-enhanced-menu data-test="publisher-navigation">
                        
                            
                                <li class="c-header__item u-hide-at-lt-lg">
                                    <a class="c-header__link"
                                       href="//www.biomedcentral.com/journals">
                                        Explore journals
                                    </a>
                                </li>
                            
                                <li class="c-header__item u-hide-at-lt-lg">
                                    <a class="c-header__link"
                                       href="//www.biomedcentral.com/getpublished">
                                        Get published
                                    </a>
                                </li>
                            
                                <li class="c-header__item u-hide-at-lt-lg">
                                    <a class="c-header__link"
                                       href="//www.biomedcentral.com/about">
                                        About BMC
                                    </a>
                                </li>
                            
                        
                        <li class="c-header__item">
                            <a data-enhanced-account
                               class="c-header__link"
                               href="https://www.biomedcentral.com/account"
                               data-test="login-link">
                                My account
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <div class="c-popup-search u-js-hide" id="publisher-header-search">
        <div class="u-container">
            <div class="c-popup-search__container">
                <div class="ctx-search">
    <form role="search" class="c-form-field" method="GET" action="//www.biomedcentral.com/search" data-track="submit"
        data-track-category="Search and Results" data-track-action="Submit search" data-dynamic-track-label data-track-label="" data-test="global-search">
        <label for="publisherSearch" class="c-form-field__label">Search all BMC articles</label>
        <div class="u-display-flex">
            <input id="publisherSearch" class="c-form-field__input" data-search-input autocomplete="off" role="textbox" data-test="search-input" name="query" type="text" value=""/>
            <div>
                <button class="c-button" type="submit" data-test="search-submit-button">
    <span class="u-visually-hidden">Search</span>
    <svg class="c-icon" width="16" height="16" aria-hidden="true" focusable="false">
        <use xlink:href="#icon-search"></use>
    </svg>
</button>


            </div>
        </div>
        <input type="hidden" name="searchType" value="publisherSearch"/>
    </form>
</div>

            </div>
        </div>
    </div>
</div>

    

        
            <header class="c-journal-header c-journal-header--critical-care ctx-journal-header">
                <div class="u-container">
                    <div class="c-journal-header__inner ">
                        
                        <div class="c-journal-title" id="journalTitle">
                            <a href="/">
    
        
            <img class="c-journal-title__logo" src=https://ccforum.biomedcentral.com/images/13054/logo.svg alt="Critical Care logo">
        
    
    <span class="c-journal-title__text ">Critical Care</span>
    
</a>
                        </div>
                        
                    </div>
                </div>
                <div class="c-navbar">
                    <div class="c-navbar__container">
                        
                            <div class="c-navbar__content">
                                <nav class="c-navbar__nav">
                                    <ul class="c-navbar__nav c-navbar__nav--journal" role="menu" data-test="site-navigation">
                                        
                                            <li class="c-navbar__item" role="menuitem">
                                                <a class="c-navbar__link" data-track="click" data-track-category="Home" data-track-action="Clicked journal navigation link" href='/'>Home</a>
                                            </li>
                                        
                                            <li class="c-navbar__item" role="menuitem">
                                                <a class="c-navbar__link" data-track="click" data-track-category="About" data-track-action="Clicked journal navigation link" href='/about'>About</a>
                                            </li>
                                        
                                            <li class="c-navbar__item" role="menuitem">
                                                <a class="c-navbar__link" data-track="click" data-track-category="Articles" data-track-action="Clicked journal navigation link" href='/articles'>Articles</a>
                                            </li>
                                        
                                            <li class="c-navbar__item" role="menuitem">
                                                <a class="c-navbar__link" data-track="click" data-track-category="Submission Guidelines" data-track-action="Clicked journal navigation link" href='/submission-guidelines'>Submission Guidelines</a>
                                            </li>
                                        
                                    </ul>
                                </nav>
                            </div>
                        
                    </div>
                </div>
                <div class="c-journal-header__identity c-journal-header__identity--ruby-dark-blue">
                    
                </div>
            </header>
            
        

        <div class="u-container u-mt-32 u-mb-32" id="main-content">
            <div class="c-page-layout c-page-layout--default" data-component="sticky-container">
                
                
    
        
    
        
            
        
    
        
            
        
    
        
            
        
    




                <main class="c-page-layout__main">
                    
                        
                        <h1>COVID-19 UPDATES</h1>
                    
                    
    
        <div class="cms-item cms-article cleared" data-fragment="17977734">
    <div class="cms-article__body cleared">
        
            <p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03339-x" class="is-external">Dynamic trajectory of platelet-related indicators and survival of severe COVID-19 patients</a><br>Jieyu He, Yongyue Wei, Jiao Chen, et al.<br>Critical Care&nbsp;2020&nbsp;24:607<br>Research Letter<br>Published on:&nbsp;14 October 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03322-6" class="is-external">Blood purification therapy with a hemodiafilter featuring enhanced adsorptive properties for cytokine removal in patients presenting COVID-19: a pilot study</a><br>Gianluca Villa, Stefano Romagnoli, Silvia De Rosa, et al.<br>Critical Care&nbsp;2020&nbsp;24:605<br>Research<br>Published on:&nbsp;12 October 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03291-w" class="is-external">Biomarkers for antimicrobial stewardship: a reappraisal in COVID-19 times?</a><br>Miranda van Berkel, Matthijs Kox, Tim Frenzel, Peter Pickkers and Jeroen Schouten<br>Critical Care&nbsp;2020&nbsp;24:600<br>Research Letter<br>Published on:&nbsp;6 October 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03314-6" class="is-external">Awake prone positioning does not reduce the risk of intubation in COVID-19 treated with high-flow nasal oxygen therapy: a multicenter, adjusted cohort study</a><br>Carlos Ferrando, Ricard Mellado-Artigas, Alfredo Gea, et al.<br>Critical Care&nbsp;2020&nbsp;24:597<br>Research<br>Published on:&nbsp;6 October 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03304-8" class="is-external">Evidence of a wide gap between COVID-19 in humans and animal models: a systematic review</a><br>Salleh N. Ehaideb, Mashan L. Abdullah, Bisher Abuyassin and Abderrezak Bouchama<br>Critical Care&nbsp;2020&nbsp;24:594<br>Research<br>Published on:&nbsp;6 October 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03278-7" class="is-external">Challenges for the care delivery for critically ill COVID-19 patients in developing countries: the Brazilian perspective</a><br>Jorge I. F. Salluh, Thiago Lisboa and Fernando A. Bozza<br>Critical Care&nbsp;2020&nbsp;24:593<br>Commentary<br>Published on:&nbsp;30 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03306-6" class="is-external">Efficacy of tocilizumab in patients with COVID-19 ARDS undergoing noninvasive ventilation</a><br>Francesco Menzella, Matteo Fontana, Carlo Salvarani, et al.<br>Critical Care&nbsp;2020&nbsp;24:589<br>Research<br>Published on:&nbsp;29 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03302-w" class="is-external">Presence of SARS-CoV-2 in urine is rare and not associated with acute kidney injury in critically ill COVID-19 patients</a><br>Robert Frithiof, Anders Bergqvist, Josef D. Järhult, et al.<br>Critical Care&nbsp;2020&nbsp;24:587<br>Research Letter<br>Published on:&nbsp;29 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03298-3" class="is-external">COVID-19: instruments for the allocation of mechanical ventilators—a narrative review</a><br>Marcelo José dos Santos, Maristela Santini Martins, Fabiana Lopes Pereira Santana, et al.<br>Critical Care&nbsp;2020&nbsp;24:582<br>Review<br>Published on:&nbsp;29 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03286-7" class="is-external">Persistent hypermetabolism and longitudinal energy expenditure in critically ill patients with COVID-19</a><br>John Whittle, Jeroen Molinger, David MacLeod, et al.<br>Critical Care&nbsp;2020&nbsp;24:581<br>Research Letter<br>Published on:&nbsp;28 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03289-4" class="is-external">Lessons from an ICU recovery clinic: two cases of meralgia paresthetica after prone positioning to treat COVID-19-associated ARDS and modification of unit practices</a><br>Amy L. Bellinghausen, Jamie N. LaBuzetta, Frank Chu, et al.<br>Critical Care&nbsp;2020&nbsp;24:580<br>Research Letter<br>Published on:&nbsp;27 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03288-5" class="is-external">Oral favipiravir for patients with delayed SARS-CoV-2 viral RNA clearance: a case series</a><br>Dian Fu, Ruiyuan Cao, Lei Zhao, Wei Li, et al.<br>Critical Care&nbsp;2020&nbsp;24:578<br>Research Letter<br>Published on:&nbsp;25 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03299-2" class="is-external">SuPAR levels in BAL fluid from patients with acute respiratory distress syndrome—a pilot study</a><br>Alexander C. Reisinger, Gerald Hackl, Tobias Niedrist, et al.<br>Critical Care&nbsp;2020&nbsp;24:576<br>Research Letter<br>Published on:&nbsp;25 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03293-8" class="is-external">Fibrin-derived peptide Bβ15-42 (FX06) as salvage treatment in critically ill patients with COVID-19-associated acute respiratory distress syndrome</a><br>Elisabeth H. Adam, Benedikt Schmid, Michael Sonntagbauer, et al.<br>Critical Care&nbsp;2020&nbsp;24:574<br>Research Letter<br>Published on:&nbsp;24 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03290-x" class="is-external">Sensitivity of point-of-care IgM and IgG test in critically ill patients with SARS-Cov-2</a><br>Lee S. Nguyen, Driss Laghlam, Emmanuelle De Gonfreville, et al.<br>Critical Care&nbsp;2020&nbsp;24:573<br>Research Letter<br>Published on:&nbsp;24 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03281-y" class="is-external">Critical care for COVID-19 during a humanitarian crisis—lessons learnt from Yemen</a><br>James S. Lee and Aurélie Godard<br>Critical Care&nbsp;2020&nbsp;24:572<br>Editorial<br>Published on:&nbsp;23 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03231-8" class="is-external">Practical strategies to reduce nosocomial transmission to healthcare professionals providing respiratory care to patients with COVID-19</a><br>Ramandeep Kaur, Tyler T. Weiss, Andrew Perez, et al.<br>Critical Care&nbsp;2020&nbsp;24:571<br>Review<br>Published on:&nbsp;23 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03285-8" class="is-external">Rapid positioning of nasogastric tube by ultrasound in COVID-19 patients</a><br>Anyu Qian, Shanxiang Xu, Xiao Lu, et al.<br>Critical Care&nbsp;2020&nbsp;24:568<br>Research Letter</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03287-6" class="is-external">Glucocorticoid therapy does not delay viral clearance in COVID-19 patients</a><br>Jingjing Ji, Jinxia Zhang, Ziyun Shao, Qifeng Xie,&nbsp; et al.<br>Critical Care&nbsp;2020&nbsp;24:565<br>Research Letter<br>Published on:&nbsp;21 September 2020</p><p><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03292-9" class="is-external">Endobronchial ultrasound is feasible and safe to diagnose pulmonary embolism in non-transportable SARS-CoV-2 ARDS patients requiring extracorporeal lung support</a><br>Maxens Decavele, Valery Trosini-Désert, Samia Boussouar, et al.<br>Critical Care&nbsp;2020&nbsp;24:564<br>Research Letter<br>Published on:&nbsp;21 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03282-x" class="is-external">Medical Research Council-sumscore: a tool for evaluating muscle weakness in patients with post-intensive care syndrome</a><br>Zeynep Turan, Mahir Topaloglu and Ozden Ozyemisci Taskiran<br>Critical Care&nbsp;2020&nbsp;24:562<br>Letter<br>Published on:&nbsp;18 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03260-3" class="is-external">Thrombotic and haemorrhagic complications in critically ill patients with COVID-19: a multicentre observational study</a><br>Akshay Shah, Killian Donovan, Anna McHugh, et al.<br>Critical Care&nbsp;2020&nbsp;24:561<br>Research<br>Published on:&nbsp;18 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03273-y" class="is-external">Comparison of published guidelines for management of coagulopathy and thrombosis in critically ill patients with COVID 19: implications for clinical practice and future investigations</a><br>Adam Flaczyk, Rachel P. Rosovsky, Clay T. Reed, Brittany K. Bankhead-Kendall, Edward A. Bittner and Marvin G. Chang<br>Critical Care&nbsp;2020&nbsp;24:559<br>Review<br>Published on: 16&nbsp;September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03268-9" class="is-external">Assessment of pulmonary surfactant in COVID-19 patients</a><br>Peter Schousboe,&nbsp;Lothar Wiese,&nbsp;Christian Heiring, et al.<br>Critical Care&nbsp;2020&nbsp;24:552<br>Letter<br>Published on: 7&nbsp;September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03267-w" class="is-external">COVID-19: more than a cytokine storm</a><br>Giovanni Riva, Vincenzo Nasillo, Enrico Tagliafico, et al.<br>Critical Care&nbsp;2020&nbsp;24:549<br>Commentary<br>Published on:&nbsp;4 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03242-5" class="is-external">Positive end-expiratory pressure titration in COVID-19 acute respiratory failure: electrical impedance tomography vs. PEEP/FiO2&nbsp;tables</a><br>Nicolò Sella, Francesco Zarantonello, Giulio Andreatta, et al.<br>Critical Care&nbsp;2020&nbsp;24:540<br>Research Letter<br>Published on:&nbsp;1 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03244-3" class="is-external">Nasopharyngeal viral load predicts hypoxemia and disease outcome in admitted COVID-19 patients</a><br>Amir Shlomai, Haim Ben-Zvi, Ahinoam Glusman Bendersky, et al.<br>Critical Care&nbsp;2020&nbsp;24:539<br>Research Letter<br>Published on:&nbsp;1 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03221-w" class="is-external">Impact of negative air pressure in ICU rooms on the risk of pulmonary aspergillosis in COVID-19 patients</a><br>Philippe Ichai, Faouzi Saliba, Patricia Baune, et al.<br>Critical Care&nbsp;2020&nbsp;24:538<br>Research Letter<br>Published on:&nbsp;1 September 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03252-3" class="is-external">Herpes simplex virus and cytomegalovirus reactivations among severe COVID-19 patients</a><br>Pierre Le Balc’h, Kieran Pinceaux, Charlotte Pronier, et al.<br>Critical Care&nbsp;2020&nbsp;24:530<br>Research Letter<br>Published on:&nbsp;28 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03253-2" class="is-external">Respiratory physiology of COVID-19-induced respiratory failure compared to ARDS of other etiologies</a><br>Domenico Luca Grieco, Filippo Bongiovanni, Lu Chen, et al.<br>Critical Care&nbsp;2020&nbsp;24:529<br>Research<br>Published on:&nbsp;28 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03246-1" class="is-external">RNA-expression of adrenomedullin is increased in patients with severe COVID-19</a><br>Julian Hupf, Julian Mustroph, Frank Hanses, et al.<br>Critical Care&nbsp;2020&nbsp;24:527<br>Research Letter<br>Published on:&nbsp;28 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03255-0" class="is-external">Longitudinal changes of inflammatory parameters and their correlation with disease severity and outcomes in patients with COVID-19 from Wuhan, China</a><br>Zhilin Zeng, Haijing Yu, Huilong Chen, et al.<br>Critical Care&nbsp;2020&nbsp;24:525<br>Research<br>Published on:&nbsp;27 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03224-7" class="is-external">Efficacy of tocilizumab treatment in severely ill COVID-19 patients</a><br>Jie Zhao, Wei Cui and Bao-ping Tian<br>Critical Care&nbsp;2020&nbsp;24:524<br>Research Letter<br>Published on:&nbsp;27 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03248-z" class="is-external">Successful ventilation of two animals with a single ventilator: individualized shared ventilator setup in an in vivo model</a><br>Michiel Stiers, Tom Bleeser, Matthias Mergeay, et al.<br>Critical Care&nbsp;2020&nbsp;24:523<br>Research Letter<br>Published on:&nbsp;27 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03249-y" class="is-external">Vitamin C levels in patients with SARS-CoV-2-associated acute respiratory distress syndrome</a><br>Luis Chiscano-Camón, Juan Carlos Ruiz-Rodriguez, et al.<br>Critical Care&nbsp;2020&nbsp;24:522<br>Research Letter<br>Published on:&nbsp;26 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03250-5" class="is-external">COVID-19 and ethics in the ICU</a><br>Sarah E. Nelson<br>Critical Care&nbsp;2020&nbsp;24:519<br>Editorial<br>Published on:&nbsp;25 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03240-7" class="is-external">Incidence of ARDS and outcomes in hospitalized patients with COVID-19: a global literature survey</a><br>Susan J. Tzotzos, Bernhard Fischer, Hendrik Fischer and Markus Zeitlinger<br>Critical Care&nbsp;2020&nbsp;24:516<br>Research letter<br>Published on:&nbsp;21 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03128-6" class="is-external">Usefulness and safety of a dedicated team to prone patients with severe ARDS due to COVID-19</a><br>Antoine Kimmoun, Bruno Levy and Bruno Chenuel<br>Critical Care&nbsp;2020&nbsp;24:509<br>Research Letter<br>Published on:&nbsp;18 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03222-9" class="is-external">Inhaled nitric oxide in patients admitted to intensive care unit with COVID-19 pneumonia</a><br>Guido Tavazzi, Pozzi Marco, Silvia Mongodi, et al.<br>Critical Care&nbsp;2020&nbsp;24:508<br>Research Letter<br>Published on:&nbsp;17 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03230-9" class="is-external">ECMO during the COVID-19 pandemic: when is it unjustified?</a>Darryl Abrams, Roberto Lorusso, Jean-Louis Vincent and Daniel Brodie<br>Critical Care&nbsp;2020&nbsp;24:507<br>Editorial<br>Published on:&nbsp;17 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03220-x" class="is-external">Auxora versus standard of care for the treatment of severe or critical COVID-19 pneumonia: results from a randomized controlled trial</a><br>Joseph Miller, Charles Bruen, Michael Schnaus, et al.<br>Critical Care&nbsp;2020&nbsp;24:502<br>Research<br>Published on:&nbsp;14 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03228-3" class="is-external">High-dose intravenous vitamin C may help in cytokine storm in severe SARS-CoV-2 infection</a><br>Adriana Françozo de Melo and Mauricio Homem-de-Mello<br>Critical Care&nbsp;2020&nbsp;24:500<br>Letter<br>Published on:&nbsp;13 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03223-8" class="is-external">Blood type A associates with critical COVID-19 and death in a Swedish cohort</a><br>Michael Hultström, Barbro Persson, Oskar Eriksson, et al.<br>Critical Care&nbsp;2020&nbsp;24:496<br>Research Letter<br>Published on:&nbsp;12 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03218-5" class="is-external">Unspecific post-mortem findings despite multiorgan viral spread in COVID-19 patients</a><br>Myriam Remmelink, Ricardo De Mendonça, Nicky D’Haene, et al.<br>Critical Care&nbsp;2020&nbsp;24:495<br>Research<br>Published on:&nbsp;12 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03197-7" class="is-external">A physiological approach to understand the role of respiratory effort in the progression of lung injury in SARS-CoV-2 infection</a><br>Pablo Cruces, Jaime Retamal, Daniel E. Hurtado, et al.<br>Critical Care&nbsp;2020&nbsp;24:494<br>Review<br>Published on:&nbsp;10 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03215-8" class="is-external">Therapeutic plasma exchange in patients with COVID-19 pneumonia in intensive care unit: a retrospective study</a><br>Bulent Gucyetmez, Hakan Korkut Atalan, Ibrahim Sertdemir, et al.<br>Critical Care&nbsp;2020&nbsp;24:492<br>Research Letter<br>Published on:&nbsp;8 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03200-1" class="is-external">Delirium and encephalopathy in severe COVID-19: a cohort analysis of ICU patients</a><br>Julie Helms, Stéphane Kremer, Hamid Merdji, et al.&nbsp;<br>Critical Care&nbsp;2020&nbsp;24:491<br>Research<br>Published on:&nbsp;8 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03194-w" class="is-external">International variation in the management of severe COVID-19 patients</a><br>Elie Azoulay, Jan de Waele, Ricard Ferrer, et al.<br>Critical Care&nbsp;2020&nbsp;24:486<br>Research<br>Published on:&nbsp;5 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03209-6" class="is-external">Serum levels of receptor-interacting protein kinase-3 in patients with COVID-19</a><br>Hideta Nakamura, Takeshi Kinjo, Wakako Arakaki, et al.<br>Critical Care&nbsp;2020&nbsp;24:484<br>Research Letter<br>Published on:&nbsp;4 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03171-3" class="is-external">Plasma exchange in critically ill COVID-19 patients</a><br>Christian Morath, Markus A. Weigand, Martin Zeier, et al.<br>Critical Care&nbsp;2020&nbsp;24:481<br>Research Letter<br>Published on:&nbsp;4 August 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03176-y" class="is-external">Development of a work of breathing scale and monitoring need of intubation in COVID-19 pneumonia</a><br>Mylene Apigo, Jeffrey Schechtman, Nyembezi Dhliwayo, et al.&nbsp;<br>Critical Care&nbsp;2020&nbsp;24:477<br>Research Letter<br>Published on:&nbsp;31 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03195-9" class="is-external">ACEI/ARB therapy in COVID-19: the double-edged sword of ACE2 and SARS-CoV-2 viral docking</a><br>Chidinma L. Onweni, Yu Shrike Zhang, Thomas Caulfield, et al.<br>Critical Care&nbsp;2020&nbsp;24:475<br>Research Letter<br>31 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03189-7" class="is-external">Efficacy of convalescent plasma for the treatment of severe influenza</a><br>Zhiheng Xu, Jianmeng Zhou, Yongbo Huang, et al.<br>Critical Care&nbsp;2020&nbsp;24:469<br>Research<br>Published on:&nbsp;29 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03183-z" class="is-external">Cardiac injury associated with severe disease or ICU admission and death in hospitalized patients with COVID-19: a meta-analysis and systematic review</a><br>Xinye Li, Xiandu Pan, Yanda Li, et al.<br>Critical Care&nbsp;2020&nbsp;24:468<br>Research<br>Published on:&nbsp;28 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03181-1" class="is-external">Pooled prevalence of deep vein thrombosis among coronavirus disease 2019 patients</a><br>Ying Wang, Li Shi, Haiyan Yang, et al.<br>Critical Care&nbsp;2020&nbsp;24:466<br>Research Letter<br>Published on:&nbsp;28 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03173-1" class="is-external">Age, sex, and comorbidities predict ICU admission or mortality in cases with SARS-CoV2 infection: a population-based cohort study</a><br>Filipe S. Cardoso, Ana L. Papoila, Rita Sá Machado and Pedro Fidalgo<br>Critical Care&nbsp;2020&nbsp;24:465<br>Research Letter<br>Published on:&nbsp;28 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03175-z" class="is-external">Incidence and mortality of pulmonary embolism in COVID-19: a systematic review and meta-analysis</a><br>Shu-Chen Liao, Shih-Chieh Shao, Yih-Ting Chen, et al.<br>Critical Care&nbsp;2020&nbsp;24:464<br>Research Letter<br>Published on:&nbsp;27 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03172-2" class="is-external">Provision of ECPR during COVID-19: evidence, equity, and ethical dilemmas</a><br>Elliott Worku, Denzil Gill, Daniel Brodie, et al.<br>Critical Care&nbsp;2020&nbsp;24:462<br>Viewpoint<br>Published on:&nbsp;27 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03161-5" class="is-external">Lactate dehydrogenase elevations is associated with severity of COVID-19: a meta-analysis</a><br>Xiao-Yun Chen, Ming-Yao Huang, Zheng-wei Xiao, et al.<br>Critical Care&nbsp;2020&nbsp;24:459<br>Research Letter<br>Published on:&nbsp;24 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03182-0" class="is-external">Could the severity of COVID-19 be increased by low gastric acidity?</a><br>Elizabeth Price<br>Critical Care&nbsp;2020&nbsp;24:456<br>Research Letter<br>Published on:&nbsp;22 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03148-2" class="is-external">Nebulised heparin as a treatment for COVID-19: scientific rationale and a call for randomised evidence</a><br>Frank M. P. van Haren, Clive Page, John G. et al.<br>Critical Care&nbsp;2020&nbsp;24:454<br>Review<br>Published on:&nbsp;22 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03141-9" class="is-external">Plasma levels of soluble ACE2are associated with sex, Metabolic Syndrome, and its biomarkers in a large cohort, pointing to a possible mechanism for increased severity in COVID-19</a><br>Sergey A. Kornilov, Isabelle Lucas, et al.<br>Critical Care&nbsp;2020&nbsp;24:452<br>Research Letter<br>Published on:&nbsp;22 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03170-4" class="is-external">Chinese herbal experience for the 2019 novel coronavirus</a><br>Ronglin Jiang, Kungen Wang, Wei Mao, et al.<br>Critical Care&nbsp;2020&nbsp;24:451<br>Research Letter<br>Published on:&nbsp;21 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03163-3" class="is-external">Convalescent plasma to treat critically ill patients with COVID-19: framing the need for randomised clinical trials</a><br>Manu Shankar-Hari, Lise Estcourt, Heli Harvala, et al.<br>Critical Care&nbsp;2020&nbsp;24:449<br>Editorial<br>Published on:&nbsp;20 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03138-4" class="is-external">Detection of IgG antibody during the follow-up in patients with COVID-19 infection</a><br>Jiao Liu, Jun Guo, Qianghong Xu, et al.<br>Critical Care&nbsp;2020&nbsp;24:448<br>Research Letter<br>Published on:&nbsp;20 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03159-z" class="is-external">Nutrition of the COVID-19 patient in the intensive care unit (ICU): a practical guidance</a><br>Ronan Thibault, Philippe Seguin, Fabienne Tamion,&nbsp; et al.<br>Critical Care&nbsp;2020&nbsp;24:447<br>Review<br>Published on:&nbsp;19 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03164-2" class="is-external">Neuromuscular blocking agents (NMBA) for COVID-19 acute respiratory distress syndrome: a multicenter observational study</a><br>Romain Courcelle, Stéphane Gaudry, Nicolas Serck, et al.&nbsp;<br>Critical Care&nbsp;2020&nbsp;24:446<br>Research Letter<br>Published on:&nbsp;19 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03166-0" class="is-external">Blocking IL-1 to prevent respiratory failure in COVID-19</a><br>Frank L. van de Veerdonk and Mihai G. Netea<br>Critical Care&nbsp;2020&nbsp;24:445<br>Review<br>Published on:&nbsp;18 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03158-0" class="is-external">Infliximab against severe COVID-19-induced cytokine storm syndrome with organ failure—a cautionary case series</a><br>Andreas Stallmach, Andreas Kortgen, Falk Gonnert, et al.<br>Critical Care&nbsp;2020&nbsp;24:444<br>Research Letter<br>Published on:&nbsp;17 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03124-w" class="is-external">The application of 6S and PDCA management strategies in the nursing of COVID-19 patients</a><br>Wenju Wei, Sicong Wang, Hongliang Wang and Hongjia Quan<br>Critical Care&nbsp;2020&nbsp;24:443<br>Editorial<br>Published on:&nbsp;16 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03134-8" class="is-external">Mortality rate of acute kidney injury in SARS, MERS, and COVID-19 infection: a systematic review and meta-analysis</a><br>Yih-Ting Chen, Shih-Chieh Shao, Edward Chia-Cheng Lai, et al.<br>Critical Care&nbsp;2020&nbsp;24:439<br>Research Letter<br>Published on:&nbsp;16 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03123-x" class="is-external">Development and validation of a risk factor-based system to predict short-term survival in adult hospitalized patients with COVID-19: a multicenter, retrospective, cohort study</a><br>Shuai Zhang, Mengfei Guo, Limin Duan, et al.<br>Critical Care&nbsp;2020&nbsp;24:438<br>Research<br>Published on:&nbsp;16 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03130-y" class="is-external">Cytokine adsorption in patients with severe COVID-19 pneumonia requiring extracorporeal membrane oxygenation</a><br>Marina Rieder, Tobias Wengenmayer, Dawid Staudacher, et al.<br>Critical Care&nbsp;2020&nbsp;24:435<br>Research Letter<br>Published on:&nbsp;14 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03160-6" class="is-external">Nurse-performed ultrasound: a new weapon against COVID-19</a><br>Jianhua Sun, Qi Li, Xinjuan Wu, Xiaoting Wang and Dawei Liu<br>Critical Care&nbsp;2020&nbsp;24:430<br>Letter<br>Published on:&nbsp;14 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03154-4" class="is-external">Atorvastatin associated with decreased hazard for death in COVID-19 patients admitted to an ICU: a retrospective cohort study</a><br>Guillermo Rodriguez-Nava, Daniela Patricia Trelles-Garcia, Maria Adriana Yanez-Bello, et al.<br>Critical Care&nbsp;2020&nbsp;24:429<br>Research Letter<br>Published on:&nbsp;14 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03162-4" class="is-external">Prone positioning under VV-ECMO in SARS-CoV-2-induced acute respiratory distress syndrome</a><br>Bruno Garcia, Nicolas Cousin, Claire Bourel, et al.<br>Critical Care&nbsp;2020&nbsp;24:428<br>Research Letter<br>Published on:&nbsp;14 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03150-8" class="is-external">Walkie talkies to aid health care workers’ compliance with personal protective equipment in the fight against COVID-19</a><br>Dominic Fenn, Jonny Coppel, Jessica Kearney, et al.<br>Critical Care&nbsp;2020&nbsp;24:424<br>Letter<br>Published on:&nbsp;13 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03120-0" class="is-external">Role of angiotensin-converting enzyme 2 (ACE2) in COVID-19</a><br>Wentao Ni, Xiuwen Yang, Deqing Yang, et al.<br>Critical Care&nbsp;2020&nbsp;24:422<br>Review<br>Published on:&nbsp;13 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03121-z" class="is-external">Neurological manifestations of COVID-19: a systematic review</a><br>Gaurav Nepal, Jessica Holly Rehrig, Gentle Sunder Shrestha, et al.<br>Critical Care&nbsp;2020&nbsp;24:421<br>Research<br>Published on:&nbsp;13 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03142-8" class="is-external">Administration of umbilical cord mesenchymal stem cells in patients with severe COVID-19 pneumonia</a><br>Zhinian Guo, Yunlong Chen, Xiaoyu Luo, et al.<br>Critical Care&nbsp;2020&nbsp;24:420<br>Research Letter<br>Published on:&nbsp;11 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03131-x" class="is-external">COVID-19-associated acute cerebral venous thrombosis: clinical, CT, MRI and EEG features</a><br>Fabian Roy-Gash, De Mesmay Marine, Devys Jean-Michel, et al.<br>Critical Care&nbsp;2020&nbsp;24:419<br>Research Letter<br>Published on:&nbsp;11 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03117-9" class="is-external">Comparison of hydroxychloroquine, lopinavir/ritonavir, and standard of care in critically ill patients with SARS-CoV-2 pneumonia: an opportunistic retrospective analysis</a><br>Marie Lecronier, Alexandra Beurton, Sonia Burrel, et al.<br>Critical Care&nbsp;2020&nbsp;24:418<br>Research<br>Published on:&nbsp;11 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03137-5" class="is-external">Effect of favipiravir and an anti-inflammatory strategy for COVID-19</a><br>Hitoshi Yamamura, Hiroshi Matsuura, Junichiro Nakagawa, et al.<br>Critical Care&nbsp;2020&nbsp;24:413<br>Research Letter<br>Published on:&nbsp;9 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03133-9" class="is-external">Impact of initial respiratory compliance in ventilated patients with acute respiratory distress syndrome related to COVID-19</a><br>Florent Laverdure, Amélie Delaporte, Astrid Bouteau, et al.<br>Critical Care&nbsp;2020&nbsp;24:412<br>Research Letter<br>Published on:&nbsp;9 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03151-7" class="is-external">Adrenomedullin in COVID-19 induced endotheliitis</a><br>Darius Cameron Wilson, Joerg C. Schefold, Jaume Baldirà, et al.<br>Critical Care&nbsp;2020&nbsp;24:411<br>Letter<br>Published on:&nbsp;9 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03135-7" class="is-external">Co-infections in COVID-19 critically ill and antibiotic management: a prospective cohort analysis</a><br>Alexia Verroken, Anaïs Scohy, Ludovic Gérard, et al.<br>Critical Care&nbsp;2020&nbsp;24:410<br>Research Letter<br>Published on:&nbsp;9 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03143-7" class="is-external">Angiotensin II treatment in COVID-19 patients: more risk than benefit? A single-center experience</a><br>Ulrike Heinicke, Elisabeth Adam, Michael Sonntagbauer, et al.&nbsp;<br>Critical Care&nbsp;2020&nbsp;24:409<br>Research Letter<br>Published on:&nbsp;9 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03129-5" class="is-external">Transpulmonary pressure in SARS-CoV-2-associated acute respiratory distress syndrome: a single-center observational study</a><br>Severin Ramin, Jonathan Charbit, Geoffrey Dagod, et al.<br>Critical Care&nbsp;2020&nbsp;24:408<br>Research Letter<br>Published on:&nbsp;9 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03139-3" class="is-external">Unrecognized diabetes in critically ill COVID-19 patients</a><br>Sebastian J. Klein, Dietmar Fries, Susanne Kaser, et al.<br>Critical Care&nbsp;2020&nbsp;24:406<br>Research Letter<br>Published on:&nbsp;9 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03118-8" class="is-external">Molecular mechanisms of sex bias differences in COVID-19 mortality</a><br>Yuchong Li, Mirjana Jerkic, Arthur S. Slutsky and Haibo Zhang<br>Critical Care&nbsp;2020&nbsp;24:405<br>Viewpoint<br>Published on:&nbsp;9 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03140-whttp://" class="is-external">Double trouble: methanol outbreak in the wake of the COVID-19 pandemic in Iran—a cross-sectional assessment</a><br>Hossein Hassanian-Moghaddam, Nasim Zamani, Ali-Asghar Kolahi, Rebecca McDonald and Knut Erik Hovda<br>Critical Care&nbsp;2020&nbsp;24:402<br>Research Letter<br>Published on:&nbsp;9 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03136-6" class="is-external">Is delirium a specific complication of viral acute respiratory distress syndrome?</a><br>Markus Jäckel, Xavier Bemtgen, Tobias Wengenmayer, et al.<br>Critical Care&nbsp;2020&nbsp;24:401<br>Research Letter<br>Published on:&nbsp;9 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03132-w" class="is-external">Visualisation of epidemiological map using an Internet of Things infectious disease surveillance platform</a><br>Guanghao Sun, Nguyen Vu Trung, Le Thi Hoi, et al.<br>Critical Care&nbsp;2020&nbsp;24:400<br>Research Letter<br>Published on:&nbsp;9 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03127-7" class="is-external">Classification of COVID-19 in intensive care patients</a><br>Xiaofan Lu, Yang Wang, Taige Chen, Jun Wang and Fangrong Yan<br>Critical Care&nbsp;2020&nbsp;24:399<br>Research Letter</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03125-9" class="is-external">COVID-19: a hypothesis regarding the ventilation-perfusion mismatch</a><br>Mario G. Santamarina, Dominique Boisier, Roberto Contreras, et al.<br>Critical Care&nbsp;2020&nbsp;24:395<br>Editorial<br>Published on: 6 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03098-9" class="is-external">Clinical course and predictors of 60-day mortality in 239 critically ill patients with COVID-19: a multicenter retrospective study from Wuhan, China</a><br>Jiqian Xu, Xiaobo Yang, Luyu Yang, et al.<br>Critical Care&nbsp;2020&nbsp;24:394<br>Research<br>Published on:&nbsp;6 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03078-z" class="is-external">Nafamostat mesylate treatment in combination with favipiravir for patients critically ill with Covid-19: a case series</a><br>Kent Doi, Mahoko Ikeda, Naoki Hayase, et al.<br>Critical Care&nbsp;2020&nbsp;24:392<br>Research Letter<br>Published on:&nbsp;3 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03095-y" class="is-external">Virtual reality device training for extracorporeal membrane oxygenation</a><br>Georg Wolff, Raphael R. Bruno, Martina Reiter, et al.&nbsp;<br>Critical Care&nbsp;2020&nbsp;24:390<br>Letter<br>Published on:&nbsp;2 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03022-1" class="is-external">Acute complications and mortality in hospitalized patients with coronavirus disease 2019: a systematic review and meta-analysis</a><br>Nicola Potere, Emanuele Valeriani, Matteo Candeloro, et al<br>Critical Care&nbsp;2020&nbsp;24:389<br>Research<br>Published on:&nbsp;2 July 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03104-0" class="is-external">Hospital preparedness for mass critical care during SARS-CoV-2 pandemic</a><br>Thomas Wurmb, Katja Scholtes, Felix Kolibay, et al.&nbsp;<br>Critical Care&nbsp;2020&nbsp;24:386<br>Viewpoint<br>Published on:&nbsp;30 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03087-y" class="is-external">Italian pulmonologist units and COVID-19 outbreak: “mind the gap”!</a><br>Raffaele Scala, Teresa Renda, Antonio Corrado and Adriano Vaghi<br>Critical Care&nbsp;2020&nbsp;24:381<br>Letter<br>Published on:&nbsp;29 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02988-2" class="is-external">Mobilization practices in critically ill children: a European point prevalence study (EU PARK-PICU)</a><br>Erwin Ista, Barnaby R. Scholefield, Joseph C. Manning, et al.<br>Critical Care&nbsp;2020&nbsp;24:368<br>Research<br>Published on:&nbsp;24 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03079-y" class="is-external">VEGF-D: a novel biomarker for detection of COVID-19 progression</a><br>Yaxian Kong, Junyan Han, Xueying Wu, et al.<br>Critical Care&nbsp;2020&nbsp;24:373<br>Research Letter<br>Published on:&nbsp;23 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03086-z" class="is-external">Screening for low testosterone is needed for early identification and treatment of men at high risk of mortality from Covid-19</a><br>Simon Peter Rowland and Elizabeth O’Brien Bergin<br>Critical Care&nbsp;2020&nbsp;24:367<br>Letter<br>Published on:&nbsp;19 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03060-9" class="is-external">“War to the knife” against thromboinflammation to protect endothelial function of COVID-19 patients</a><br>Gabriele Guglielmetti, Marco Quaglia, Pier Paolo Sainaghi, et al.<br>Critical Care&nbsp;2020&nbsp;24:365<br>Viewpoint<br>Published on:&nbsp;19 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03000-7" class="is-external">Prevention of thrombotic risk in hospitalized patients with COVID-19 and hemostasis monitoring</a><br>Sophie Susen, Charles Ambroise Tacquard, Alexandre Godon, et al.<br>Critical Care&nbsp;2020&nbsp;24:364<br>Review<br>Published on:&nbsp;19 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02990-8" class="is-external">Bedside rapid placement of nasointestinal feeding tube via ultrasound-guided stylet positioning in critical COVID-19 patients</a><br>Chuan-xi Chen, Zheng-deng Wei, Yong-jun Liu, et al.<br>Critical Care&nbsp;2020&nbsp;24:361<br>Research Letter<br>Published on:&nbsp;18&nbsp;June 2020&nbsp;</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03077-0" class="is-external">The unique characteristics of COVID-19 coagulopathy</a><br>Toshiaki Iba, Jerrold H. Levy, Jean Marie Connors, et al.<br>Critical Care&nbsp;2020&nbsp;24:360<br>Review<br>Published on:&nbsp;18 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03043-w" class="is-external">Compassionate use of others’ immunity — understanding gut microbiome in Covid-19</a><br>Prashanth Thalanayar Muthukrishnan and Robert Faillace<br>Critical Care&nbsp;2020&nbsp;24:358<br>Letter<br>Published on:&nbsp;18 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03041-y" class="is-external">Single ventilator for multiple patients during COVID19 surge: matching and balancing patients</a><br>Lonnie G. Petersen, James Friend and Sidney Merritt<br>Critical Care&nbsp;2020&nbsp;24:357<br>Research Letter<br>Published on:&nbsp;18 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03065-4" class="is-external">Prevalence and impact of acute renal impairment on COVID-19: a systematic review and meta-analysis</a><br>Xianghong Yang, Yiyang Jin, Ranran Li, Zhongheng Zhang, et al.&nbsp;<br>Critical Care&nbsp;2020&nbsp;24:356<br>Research<br>Published on:&nbsp;18 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03062-7" class="is-external">The vascular endothelium: the cornerstone of organ dysfunction in severe SARS-CoV-2 infection</a><br>Stéphanie Pons, Sofiane Fodil, Elie Azoulay and Lara Zafrani<br>Critical Care&nbsp;2020&nbsp;24:353<br>Review<br>Published on:&nbsp;16 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03081-4" class="is-external">The ARDSnet protocol may be detrimental in COVID-19</a><br>Vasiliki Tsolaki, George E. Zakynthinos and Dimosthenis Makris<br>Critical Care&nbsp;2020&nbsp;24:351<br>Letter<br>Published on:&nbsp;16 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03074-3" class="is-external">Paediatric and adult critical care medicine: joining forces against Covid-19</a><br>Martin C. J. Kneyber, Bernadette Engels and Peter H. J. van der Voort<br>Critical Care&nbsp;2020&nbsp;24:350<br>Letter<br>Published on:&nbsp;16 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03085-0" class="is-external">Micronutrient status of COVID-19 patients: a critical consideration</a><br>Anitra C. Carr<br>Critical Care&nbsp;2020&nbsp;24:349<br>Letter<br>Published on:&nbsp;16 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03044-9" class="is-external">Invasive mechanical ventilation in COVID-19 patient management: the experience with 469 patients in Wuhan</a><br>Jing Hua, Chenchen Qian, Zhibing Luo, et al.<br>Critical Care&nbsp;2020&nbsp;24:348<br>Research Letter<br>Published on:&nbsp;16 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03009-y" class="is-external">Incidence of acute kidney injury in COVID-19 infection: a systematic review and meta-analysis</a><br>Yih-Ting Chen, Shih-Chieh Shao, Cheng-Kai Hsu, et al.<br>Critical Care&nbsp;2020&nbsp;24:346<br>Research Letter<br>Published on:&nbsp;16 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03080-5" class="is-external">Early rehabilitation with dedicated use of belt-type electrical muscle stimulation for severe COVID-19 patients</a><br>Kensuke Nakamura, Hidehiko Nakano, Hiromu Naraba, et al.<br>Critical Care&nbsp;2020&nbsp;24:342<br>Letter<br>Published on:&nbsp;15 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03034-x" class="is-external">Clinical features and outcomes of COVID-19 patients with gastrointestinal symptoms</a><br>Chao Cao, Meiping Chen, Li He, et al.<br>Critical Care&nbsp;2020&nbsp;24:340<br>Research Letter<br>Published on:&nbsp;15 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03033-y" class="is-external">COVID-19 targets the right lung</a><br>Jingwen Li, Xiaxia Yu, Shaoping Hu, Zhicheng Lin, Nian Xiong and Yi Gao<br>Critical Care&nbsp;2020&nbsp;24:339<br>Research Letter<br>Published on:&nbsp;15 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03076-1" class="is-external">Infection prevention and control in nursing severe coronavirus disease (COVID-19) patients during the pandemic</a><br>Lei Ye, Shulan Yang and Caixia Liu<br>Critical Care&nbsp;2020&nbsp;24:338<br>Editorial<br>Published on:&nbsp;12 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03063-6" class="is-external">A plea for avoiding systematic intubation in severely hypoxemic patients with COVID-19-associated respiratory failure</a><br>Eduardo Villarreal-Fernandez, Ravi Patel, Reshma Golamari, et al.<br>Critical Care&nbsp;2020&nbsp;24:337<br>Research Letter<br>Published on:&nbsp;12 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03048-5" class="is-external">Interferon beta-1a for COVID-19: critical importance of the administration route</a><br>Juho Jalkanen, Maija Hollmén and Sirpa Jalkanen<br>Critical Care&nbsp;2020&nbsp;24:335<br>Commentary<br>Published on:&nbsp;12 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03064-5" class="is-external">A valuable and affordable handheld ultrasound in combating COVID-19</a><br>Feng Qian, Xueqin Zhou, Jianqiao Zhou, et al.<br>Citation:Critical Care&nbsp;2020&nbsp;24:334<br>Research Letter<br>Published on:&nbsp;12 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03054-7" class="is-external">Non-invasive ventilation in the treatment of early hypoxemic respiratory failure caused by COVID-19: considering nasal CPAP as the first choice</a><br>Lili Guan, Luqian Zhou, Jehane Michael Le Grange, et al.&nbsp;<br>Critical Care&nbsp;2020&nbsp;24:333<br>Letter</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03052-9" class="is-external">COVID-19: opening a new paradigm in thromboprophylaxis for critically ill patients?</a><br>Raquel Ferrandis, Juan V. Llau, Manuel Quintana, et al.<br>Critical Care&nbsp;2020&nbsp;24:332<br>Letter<br>Published on:&nbsp;11 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03020-3" class="is-external">Exploring pharmacological approaches for managing cytokine storm associated with pneumonia and acute respiratory distress syndrome in COVID-19 patients</a><br>Irma Convertino, Marco Tuccori, Sara Ferraro, et al.<br>Critical Care&nbsp;2020&nbsp;24:331<br>Viewpoint<br>Published on:&nbsp;11 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03069-0" class="is-external">Ventilator management in the age of COVID-19: response to “Logistic and organizational aspects of a dedicated intensive care unit for COVID-19 patients”</a><br>Alastair E. Moody, Bryce D. Beutler, Daniel Antwi-Amoabeng, et al.<br>Critical Care&nbsp;2020&nbsp;24:329<br>Letter</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02983-7" class="is-external">Intra-hospital preventive principles to protect frontline healthcare workers to overcome pandemic COVID-19 in Taiwan</a><br>Ting-Wan Tan, Chih-Ming Chang and Man-Na Chang<br>Critical Care&nbsp;2020&nbsp;24:328<br>Editorial<br>Published on:&nbsp;11 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03058-3" class="is-external">Low molecular weight heparins in COVID-19 patients: beware of augmented renal clearance!</a><br>Teresa Maria Tomasa-Irriguible, Sergi Martínez-Vega, Ester Mor-Marco, et al.<br>Critical Care&nbsp;2020&nbsp;24:325<br>Research Letter<br>Published on:&nbsp;10 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03050-x" class="is-external">Should we deny ICU admission to the elderly? Ethical considerations in times of COVID-19</a><br>Lenneke E. M. Haas, Dylan W. de Lange, Diederik van Dijk and Johannes J. M. van Delden<br>Critical Care&nbsp;2020&nbsp;24:321<br>Commentary<br>Published on:&nbsp;9 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03051-w" class="is-external">Systemic hypoferremia and severity of hypoxemic respiratory failure in COVID-19</a><br>Akshay Shah, Joe N. Frost, Louise Aaron, Killian Donovan and Hal Drakesmith<br>Critical Care&nbsp;2020&nbsp;24:320<br>Research Letter<br>Published on:&nbsp;9 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02985-5" class="is-external">A simple custom appliance against droplet and aerosol transmission of COVID-19 during advanced airway management</a><br>Meng Chi, Changming Lou, Xiuli Zhao, Xin Sui and Fei Han<br>Critical Care&nbsp;2020&nbsp;24:319<br>Research Letter<br>Published on:&nbsp;8 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03055-6" class="is-external">Blocking mineralocorticoid receptor with spironolactone may have a wide range of therapeutic actions in severe COVID-19 disease</a><br>Lucas Liaudet and Csaba Szabo<br>Critical Care&nbsp;2020&nbsp;24:318<br>Letter<br>Published on:&nbsp;8 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03047-6" class="is-external">Extracorporeal membrane oxygenation programs for COVID-19 in China</a><br>Chenglong Li, Xiaotong Hou, Zhaohui Tong, et al.<br>Critical Care&nbsp;2020&nbsp;24:317<br>Research Letter<br>Published on:&nbsp;8 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03038-7" class="is-external">Three-step checklist for tracheostomy in critically ill COVID-19 patients</a><br>Maria Vargas and Giuseppe Servillo<br>Critical Care&nbsp;2020&nbsp;24:316<br>Research Letter<br>Published on: 8 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03037-8" class="is-external">Non-febrile COVID-19 patients were common and often became critically ill: a retrospective multicenter cohort study</a><br>Yichen Li, Na Jiao, Lixin Zhu, et al.<br>Critical Care&nbsp;2020&nbsp;24:314<br>Research Letter<br>Published on:&nbsp;8 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03036-9" class="is-external">Prehospital pulse oximetry: a red flag for early detection of silent hypoxemia in COVID-19 patients</a><br>Romain Jouffroy, Daniel Jost and Bertrand Prunet<br>Critical Care&nbsp;2020&nbsp;24:313<br>Research Letter</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03023-0" class="is-external">Neutrophil Elastase Inhibitors: A potential prophylactic treatment option for SARS-CoV-2-induced respiratory complications?</a><br>Mahmoud M. A. Mohamed, Ismail Amr El-Shimy and Muhammad Abdul Hadi<br>Critical Care&nbsp;2020&nbsp;24:311<br>Editorial<br>Published on:&nbsp;8 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03026-x" class="is-external">Critical care physicians treating COVID-19: mind the nervous system!</a><br>Julian Bösel<br>Critical Care&nbsp;2020&nbsp;24:310<br>Letter<br>Published on:&nbsp;8 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03024-z" class="is-external">Peritoneal dialysis for COVID-19-associated acute kidney injury</a><br>Mika Nagatomo, Hiroyuki Yamada, Ken Shinozuka, et al.<br>Critical Care&nbsp;2020&nbsp;24:309<br>Research Letter<br>Published on:&nbsp;8 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02921-7" class="is-external">Team management in critical care units for patients with COVID-19: an experience from Hunan Province, China</a><br>Li Tang, Xian-Mei Zhao and Xiao-Yan Yu<br>Critical Care&nbsp;2020&nbsp;24:304<br>Editorial<br>Published on:&nbsp;6 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03049-4" class="is-external">PEEP levels in COVID-19 pneumonia</a><br>Vasiliki Tsolaki, Ilias Siempos, Eleni Magira, et al.<br>Critical Care&nbsp;2020&nbsp;24:303<br>Research Letter<br>Published on:&nbsp;6 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02979-3" class="is-external">ECMO use in COVID-19: lessons from past respiratory virus outbreaks—a narrative review</a><br>Hwa Jin Cho, Silver Heinsar, In Seok Jeong, et al.<br>Critical Care&nbsp;2020&nbsp;24:301<br>Review<br>Published on:&nbsp;6 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02992-6" class="is-external">Lung ventilation function characteristics of survivors from severe COVID-19: a prospective study</a><br>Xianyong Li, Changsong Wang, Shengjie Kou,&nbsp;<br>Critical Care&nbsp;2020&nbsp;24:300<br>Research Letter<br>Published on:&nbsp;6 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03046-7" class="is-external">Clinical characteristics of invasive pulmonary aspergillosis in patients with COVID-19 in Zhejiang, China: a retrospective case series</a><br>Jie Wang, Qing Yang, Piaopiao Zhang, et al.<br>Critical Care&nbsp;2020&nbsp;24:299<br>Research Letter<br>Published on:&nbsp;5 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03045-8" class="is-external">Body temperature correlates with mortality in COVID-19 patients</a><br>Serena Tharakan, Koichi Nomoto, Satoshi Miyashita and Kiyotake Ishikawa<br>Critical Care&nbsp;2020&nbsp;24:298<br>Research Letter<br>Published on:&nbsp;5 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03035-w" class="is-external">How COVID-19 pandemic changed our communication with families: losing nonverbal cues</a><br>Annachiara Marra, Pasquale Buonanno, Maria Vargas, et al.<br>Critical Care&nbsp;2020&nbsp;24:297<br>Editorial<br>Published on:&nbsp;5 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03032-z" class="is-external">Angiotensin II administration to COVID-19 patients is not advisable</a><br>Robert C. Speth<br>Citation:Critical Care&nbsp;2020&nbsp;24:296<br>Commentary<br>Published on:&nbsp;5 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03028-9" class="is-external">COVID-19—immunity from prosecution for physicians forced to allocate scarce resources: the Italian perspective</a><br>Marco Ricci and Pasquale Gallina<br>Critical Care&nbsp;2020&nbsp;24:295<br>Letter<br>Published on:&nbsp;5 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03021-2" class="is-external">Admission decisions to intensive care units in the context of the major COVID-19 outbreak: local guidance from the COVID-19 Paris-region area</a><br>Élie Azoulay, Sadek Beloucif, Bertrand Guidet, et al.<br>Critical Care&nbsp;2020&nbsp;24:293<br>Viewpoint</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03018-x" class="is-external">In-hospital airway management of COVID-19 patients</a><br>Elise H. Sullivan, Lauren E. Gibson, Lorenzo Berra, et al.<br>Critical Care&nbsp;2020&nbsp;24:292<br>Review<br>Published on:&nbsp;5 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03015-0" class="is-external">Elevation of plasma angiotensin II level is a potential pathogenesis for the critically ill COVID-19 patients</a><br>Zhiyong Wu, Rui Hu, Cuizhen Zhang, et al.<br>Critical Care&nbsp;2020&nbsp;24:290<br>Research Letter<br>Published on:&nbsp;5 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03013-2" class="is-external">The challenge of ventilator-associated pneumonia diagnosis in COVID-19 patients</a><br>Bruno François, Pierre-François Laterre, Charles-Edouard Luyt and Jean Chastre<br>Critical Care&nbsp;2020&nbsp;24:289<br>Editorial<br>Published on:&nbsp;5 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03007-0" class="is-external">Neutrophil-to-lymphocyte ratio as a predictive biomarker for moderate-severe ARDS in severe COVID-19 patients</a><br>Aijia Ma, Jiangli Cheng, Jing Yang, et al.<br>Critical Care 2020&nbsp;24:288<br>Research Letter<br>Published on:&nbsp;5 June 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03006-1" class="is-external">Mortality rates of patients with COVID-19 in the intensive care unit: a systematic review of the emerging literature</a><br>Pipetius Quah, Andrew Li and Jason Phua<br>Critical Care&nbsp;2020&nbsp;24:282<br>Letter&nbsp;<br>Published on: 4&nbsp;June&nbsp;2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03002-5" class="is-external">Precision medicine for COVID-19: a call for better clinical trials</a><br>Gentle Sunder Shrestha, Hem Raj Paneru and Jean-Louis Vincent<br>Critical Care&nbsp;2020&nbsp;24:282<br>Editorial<br>Published on:&nbsp;2&nbsp;June&nbsp;2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03014-1" class="is-external">Cyclosporine A: a valid candidate to treat COVID-19 patients with acute respiratory failure?</a><br>Martin Cour, Michel Ovize and Laurent Argaud<br>Critical Care&nbsp;2020&nbsp;24:276<br>Editorial<br>Published on:&nbsp;2&nbsp;June&nbsp;2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03025-y" class="is-external">Thrombotic and hemorrhagic events in critically ill COVID-19 patients: a French monocenter retrospective study</a><br>Megan Fraissé, Elsa Logre, Olivier Pajot, et al.<br>Critical Care&nbsp;2020&nbsp;24:275<br>Research Letter<br>Published on:&nbsp;2&nbsp;June&nbsp;2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02931-5" class="is-external">Severe pulmonary embolism in COVID-19 patients: a call for increased awareness</a><br>Guillaume Hékimian, Guillaume Lebreton, Nicolas Bréchot, et al.<br>Critical Care&nbsp;2020&nbsp;24:274<br>Research Letter<br>Published on:&nbsp;2&nbsp;June&nbsp;2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02997-1" class="is-external">Recommendations for the use of vascular access in the COVID-19 patients: an Italian perspective</a><br>Mauro Pittiruti and Fulvio Pinelli<br>Critical Care&nbsp;2020&nbsp;24:269<br>Commentary<br>Published on:&nbsp;29 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02999-z" class="is-external">Description of an alternative method for optimal and comfortable two-handed face mask ventilation: the transverse mandibular technique</a><br>Francois Lemay and Jeremy Cooper<br>Critical Care 2020 24:267<br>Letter<br>Published on: 26 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02962-y" class="is-external">How machine learning could be used in clinical practice during an epidemic</a><br>Charles Verdonk, Franck Verdonk and Gérard Dreyfus<br>Critical Care 2020 24:265<br>Editorial<br>Published on: 26 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02969-5" class="is-external">Universal mobile protection system for aerosol-generating medical interventions in COVID-19 patients</a><br>Florian Straube, Clemens Wendtner and Ellen Hoffmann<br>Critical Care 2020 24:264<br>Letter<br>Published on: 26 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02896-5" class="is-external">COVID-19 patients exhibit less pronounced immune suppression compared with bacterial septic shock patients</a><br>Matthijs Kox, Tim Frenzel, Jeroen Schouten, et al.<br>Critical Care 2020 24:263<br>Research Letter<br>Published on: 26 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02998-0" class="is-external">The importance of a “socially responsible” approach during COVID-19: the invisible heroes of science in Italy</a><br>Filippo Sanfilippo, Elena Bignami, Ferdinando Luca Lorini and Marinella Astuto<br>Critical Care 2020 24:261<br>Letter<br>26 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02971-x" class="is-external">Essential ICU drug shortages for COVID-19: what can frontline clinicians do?</a><br>Wen Ting Siow, Simeon H. Tang, Rohit Vijay Agrawal, et al.<br>Critical Care 2020 24:260<br>Letter<br>Published on: 26 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02981-9" class="is-external">Two consecutive myocardial tissue insults for inpatients with COVID-19</a><br>Minghua Su, Jieru Peng, Mengjun Wu, et al.<br>Critical Care 2020 24:259<br>Research Letter<br>Published on: 26 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02970-y" class="is-external">Prone ventilation of critically ill adults with COVID-19: how to perform CPR in cardiac arrest?</a><br>Wioletta Mędrzycka-Dąbrowska, Katarzyna Lewandowska, Daniel Ślęzak and Sebastian Dąbrowski<br>Citation:Critical Care 2020 24:258<br>Letter<br>Published on: 26 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02933-3" class="is-external">Clinical analysis of sinus bradycardia in patients with severe COVID-19 pneumonia</a><br>Lijuan Hu, Linjing Gong, Zhilong Jiang, et al.<br>Critical Care 2020 24:257<br>Research Letter<br>Published on: 26 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03001-6" class="is-external">Prone positioning combined with high-flow nasal or conventional oxygen therapy in severe Covid-19 patients</a><br>Cyrielle Despres, Yannick Brunin, Francis Berthier, et al.<br>Critical Care 2020 24:256<br>Research Letter<br>Published on: 26 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02995-3" class="is-external">The association of low serum albumin level with severe COVID-19: a systematic review and meta-analysis</a><br>Muhammad Aziz, Rawish Fatima, Wade Lee-Smith and Ragheb Assaly<br>Critical Care 2020 24:255<br>Research Letter<br>Published on: 26 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02991-7" class="is-external">Early awake prone position combined with high-flow nasal oxygen therapy in severe COVID-19: a case series</a><br>Qiancheng Xu, Tao Wang, Xuemei Qin, Yanli Jie, Lei Zha and Weihua Lu<br>Critical Care 2020 24:250<br>Research Letter<br>Published on: 24 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02980-w" class="is-external">Effect of flow and cannula size on generated pressure during nasal high flow</a><br>Maximilian Pinkham and Stanislav Tatkov<br>Research Letter<br>Critical Care 2020 24:248<br>Published on: 24 May 2020&nbsp;</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02952-0" class="is-external">Duration of SARS-CoV-2 viral RNA in asymptomatic carriers</a><br>Xiquan Yan, Xiaotong Han, Yong Fan, Zhixiong Fang, Da Long and Yimin Zhu<br>Critical Care 2020 24:245<br>Research Letter<br>Published on: 24 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02964-w" class="is-external">Adjuvant corticosteroid therapy for critically ill patients with COVID-19</a><br>Xiaofan Lu, Taige Chen, Yang Wang, Jun Wang and Fangrong Yan<br>Critical Care 2020 24:241<br>Research Letter<br>Published on: 19 May 2020&nbsp;</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02944-0" class="is-external">Crucial role of temporary airborne infection isolation rooms in an intensive care unit: containing the COVID-19 outbreak in South Korea</a><br>Shin Yup Lee, Sun Ha Choi, Ji Eun Park, et al.<br>Critical Care 2020 24:238<br>Research Letter<br>Published on: 18 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02955-x" class="is-external">Logistic and organizational aspects of a dedicated intensive care unit for COVID-19 patients</a><br>Maria Vargas, Giuseppe De Marco, Stefania De Simone and Giuseppe Servillo<br>Critical Care 2020 24:237<br>Research Letter<br>Published on: 18 May 2020&nbsp;</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02958-8" class="is-external">Cardiovascular phenotypes in ventilated patients with COVID-19 acute respiratory distress syndrome</a><br>Bruno Evrard, Marine Goudelin, Noelie Montmagnon, Anne-Laure Fedou, Thomas Lafon and Philippe Vignon<br>Critical Care 2020 24:236<br>Research Letter<br>Published on: 18 May 2020&nbsp;</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02965-9" class="is-external">With the current COVID pandemic: should we use single-use flexible bronchoscopes instead of conventional bronchoscopes?</a><br>Patrick M. Honore, Aude Mugisha, Luc Kugener, et al.<br>Critical Care 2020 24:234<br>Letter<br>Published on: 18 May 2020&nbsp;</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02954-y" class="is-external">Unconventional approaches to mechanical ventilation—step-by-step through the COVID-19 crisis</a><br>Christopher Lotz, Quirin Notz, Peter Kranke, Markus Kredel and Patrick Meybohm<br>Critical Care 2020 24:233<br>Editorial<br>Published on: 18 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02953-z" class="is-external">Advanced respiratory monitoring in COVID-19 patients: use less PEEP!</a><br>Lisanne Roesthuis, Maarten van den Berg and Hans van der Hoeven<br>Critical Care 2020 24:230<br>Research Letter<br>Published on: 15 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02960-0" class="is-external">COVID-19: room for treating T cell exhaustion?</a><br>Giovanni Riva, Vincenzo Nasillo, Enrico Tagliafico, Tommaso Trenti and Mario Luppi<br>Critical Care 2020 24:229<br>Letter<br>Published on: 15 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02957-9" class="is-external">COVID-19 mortality and ICU admission: the Italian experience</a><br>Paolo Immovilli, Nicola Morelli, Elio Antonucci, et al.<br>Critical Care 2020 24:228<br>Letter<br>Published on: 15 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02928-0" class="is-external">Angiotensin II infusion in COVID-19-associated vasodilatory shock: a case series</a><br>Alberto Zangrillo, Giovanni Landoni, Luigi Beretta, et al.<br><em>Critical Care</em>&nbsp;2020&nbsp;24:227<br>Research Letter<br>Published on:&nbsp;15 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02945-z" class="is-external">Safe doubling of ventilator capacity: a last resort proposal for last resorts</a><br>J. Geoffrey Chase, Yeong Shiong Chiew, Bernard Lambermont, et al.<br><em>Critical Care</em>&nbsp;2020&nbsp;24:222<br>Research Letter<br>Published on:&nbsp;14 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02942-2" class="is-external">Age and sex differences in soluble ACE2 may give insights for COVID-19</a><br>Per Swärd, Andreas Edsfeldt, Anton Reepalu, et al.<br><em>Critical Care</em>&nbsp;2020&nbsp;24:221<br>Research Letter<br>Published on:&nbsp;14 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02939-x" class="is-external">Patients with COVID-19 in 19 ICUs in Wuhan, China: a cross-sectional study</a><br>Yuan Yu, Dan Xu, Shouzhi Fu, Jun Zhang, et al.<br><em>Critical Care</em>&nbsp;2020&nbsp;24:219<br>Research<br>Published on:&nbsp;14 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02916-4" class="is-external">Preparing your intensive care unit for the COVID-19 pandemic: practical considerations and strategies</a><br>Ken Junyang Goh, Jolin Wong, Jong-Chie Claudia Tien, et al.<br><em>Critical Care</em>&nbsp;2020&nbsp;24:215<br>Review<br>Published on:&nbsp;11 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02940-4" class="is-external">Simultaneous ventilation of two simulated ARDS patients in COVID-19 pandemic</a><br>Danny Epstein, Yoav Hoffman, George Dahoud, et al.<br><em>Critical Care</em>&nbsp;2020&nbsp;24:214<br>Research Letter<br>Published on: 11 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02919-1" class="is-external">Students Supporting Critical Care – A contention plan to prevent the decompensation of ICUs in the COVID-19 pandemic:Translating Bjorn Ibsens’ polio-lessons to modern times</a><br>Pedro David Wendel Garcia, Paola Massarotto, et al.<br><em>Critical Care</em>&nbsp;2020&nbsp;24:211<br>Letter<br>Published on:&nbsp;8 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02932-4" class="is-external">Chloroquine for COVID-19: rationale, facts, hopes</a><br>Andrea Cortegiani et al.<br>Critical Care&nbsp;2020&nbsp;24:210<br>Editorial<br>Published on:&nbsp;8 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02934-2" class="is-external">Use of triiodothyronine to treat critically ill COVID-19 patients: a new clinical trial</a><br>Constantinos Pantos et al.<br>Research Letter&nbsp;<br>Published on: 8&nbsp;May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02938-y" class="is-external">COVID-19 pandemic, healthcare providers’ contamination and death: an international view</a><br>Hossein Hassanian-Moghaddam, Nasim Zamani and Ali-Asghar Kolahi<br>Critical Care 2020 24:208<br>Letter<br>Published on: 8 May 2020&nbsp;</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02930-6" class="is-external">Our recommendations for acute management of COVID-19</a><br>Francesco Mojoli, Silvia Mongodi, Anita Orlando, et al.<br>Critical Care 2020 24:207<br>Editorial<br>Published on: 8 May 2020&nbsp;<br>&nbsp;</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02929-z" class="is-external">Avoiding hospital-related infections during the COVID-19 epidemic</a><br>Jiarong Ye, Liqi Yang, Xiaotu Xi, et al.<br>Critical Care 2020 24:206<br>Editorial<br>Published on: 8 May 2020&nbsp;</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02925-3" class="is-external">COVID-19 and ECMO: the interplay between coagulation and inflammation—a narrative review</a><br>Mariusz Kowalewski, Dario Fina, Artur Słomka, et al.&nbsp;<br>Critical Care 2020 24:205<br>Review<br>Published on: 8 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02927-1" class="is-external">Ethics guidelines on COVID-19 triage—an emerging international consensus</a><br>Susanne Joebges and Nikola Biller-Andorno<br>Critical Care 2020 24:201<br>Editorial<br>Published on: 6 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02926-2" class="is-external">Psychological stress of ICU nurses in the time of COVID-19</a><br>Xin Shen, Xiaoyue Zou, Xiaofeng Zhong, et al.<br>Critical Care 2020 24:200<br>Editorial<br>Published on: 6 May 2020</p><p class="divider--paragraph">&nbsp;<a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02911-9" class="is-external">Acute respiratory failure in COVID-19: is it “typical” ARDS?</a><br>Xu Li and Xiaochun Ma<br>Critical Care 2020 24:198<br>Review<br>Published on: 6 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02907-5" class="is-external">Heating, ventilation and air conditioning (HVAC) in intensive care unit</a><br>Sai Saran, Mohan Gurjar, Arvind Baronia, et al.&nbsp;<br>Critical Care 2020 24:194<br>Review<br>Published on: 6 May 2020&nbsp;</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02908-4" class="is-external">Can computed tomography be a primary tool for COVID-19 detection? Evidence appraisal through meta-analysis</a><br>Edward Pei-Chuan Huang, Chih-Wei Sung, et al.<br>Critical Care 2020 24:193<br>Research Letter<br>Published on: 6 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02924-4" class="is-external">Liver injury in critically ill patients with COVID-19: a case series</a><br>Filipe S. Cardoso, Rui Pereira and Nuno Germano<br>Critical Care 2020 24:190<br>Research Letter<br>Published on: 5 May 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02895-6" class="is-external">Clinical course and outcome of 107 patients infected with the novel coronavirus, SARS-CoV-2, discharged from two hospitals in Wuhan, China</a><br>Dawei Wang, Yimei Yin, Chang Hu, et al.&nbsp;<br>Critical Care 2020 24:188<br>Research<br>Published on: 30 April 2020</p><p class="divider--paragraph">&nbsp;<a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02897-4" class="is-external">Soluble urokinase plasminogen activator receptor (suPAR) as an early predictor of severe respiratory failure in patients with COVID-19 pneumonia</a><br>Nikoletta Rovina, Karolina Akinosoglou, Jesper Eugen-Olsen, Salim Hayek, Jochen Reiser and Evangelos J. Giamarellos-Bourboulis<br>Critical Care 2020 24:187<br>Research Letter<br>Published on: 30 April 2020&nbsp;</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02894-7" class="is-external">Shining a light on the evidence for hydroxychloroquine in SARS-CoV-2</a><br>Nicholas E. Ingraham, David Boulware, Matthew A. Sparks, et al.<br>Critical Care 2020 24:182<br>Commentary<br>Published on: 28 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02902-w" class="is-external">Clinical determinants for fatality of 44,672 patients with COVID-19</a><br>Guangtong Deng, Mingzhu Yin, Xiang Chen and Furong Zeng<br>Critical Care 2020 24:179<br>Letter<br>Published on: 28 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02884-9" class="is-external">The role of telemedicine during the COVID-19 epidemic in China—experience from Shandong province</a><br>Xuan Song, Xinyan Liu and Chunting Wang<br>Critical Care 2020 24:178<br>Editorial<br>Published on: 28 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02882-x" class="is-external">COVID-19: ICU delirium management during SARS-CoV-2 pandemic</a><br>Katarzyna Kotfis, Shawniqua Williams Roberson, Jo Ellen Wilson, et al.<br>Critical Care 2020 24:176<br>Review<br>Published on: 28 April 2020</p><p class="divider--paragraph">&nbsp;<a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02881-y" class="is-external">Is a more aggressive COVID-19 case detection approach mitigating the burden on ICUs? Some reflections from Italy</a><br>Giulia Lorenzoni, Corrado Lanera, Danila Azzolina, Paola Berchialla and Dario Gregori<br>Critical Care 2020 24:175<br>Research Letter<br>Published on: 28 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02876-9" class="is-external">Lung ultrasound findings in patients with COVID-19 pneumonia</a><br>Changyang Xing, Qiaoying Li, Hong Du, et al.<br>Critical Care 2020 24:174<br>Research Letter<br>Published on: 28 April 2020&nbsp;</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02893-8" class="is-external">SARS-CoV-2 viral load in sputum correlates with risk of COVID-19 progression</a><br>Xia Yu, Shanshan Sun, Yu Shi, Hao Wang, et al.<br>Critical Care 2020 24:170<br>Research Letter<br>Published on: 23 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02892-9" class="is-external">High-flow nasal cannula may be no safer than non-invasive positive pressure ventilation for COVID-19 patients</a><br>Kenneth E. Remy, John C. Lin and Philip A. Verhoef<br>Critical Care 2020 24:169<br>Research Letter<br>Published on: 23 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02890-x" class="is-external">Managing COVID-19 in resource-limited settings: critical care considerations</a><br>Wen Ting Siow, Mei Fong Liew, Babu Raja Shrestha, et al.<br>Critical Care 2020 24:167<br>Editorial<br>Published on: 22 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02891-w" class="is-external">Clinical ethics recommendations for the allocation of intensive care treatments in exceptional, resource-limited circumstances: the Italian perspective during the COVID-19 epidemic</a><br>Marco Vergano, Guido Bertolini, Alberto Giannini, et al.<br>Critical Care 2020 24:165<br>Editorial<br>Published on: 22 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02871-0" class="is-external">The application of strong matrix management and PDCA cycle in the management of severe COVID-19 patients</a><br>Yuanchao Li, Hongliang Wang and Jundong Jiao<br>Critical Care 2020 24:157<br>Editorial<br>Published on: 17 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02872-z" class="is-external">Acute kidney injury in SARS-CoV-2 infected patients</a><br>Vito Fanelli, Marco Fiorentino, Vincenzo Cantaluppi, et al.&nbsp;<br>Critical Care 2020 24:155<br>Commentary<br>Published on: 16 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02880-z" class="is-external">COVID-19 pneumonia: ARDS or not?</a><br>Luciano Gattinoni, Davide Chiumello and Sandra Rossi<br>Critical Care 2020 24:154<br>Editorial<br>Published on: 16 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02877-8" class="is-external">A case of a readmitted patient who recovered from COVID-19 in Chengdu, China</a><br>Xiao-jin Li, Zhong-wei Zhang and Zhi-yong Zong<br>Critical Care 2020 24:152<br>Research Letter<br>Published on: 16 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-2840-8" class="is-external">Prognosis when using extracorporeal membrane oxygenation (ECMO) for critically ill COVID-19 patients in China: a retrospective case series</a><br>Yingchun Zeng, Zhongxiang Cai, Yunyan Xianyu, et al.<br><em>Critical Care</em>&nbsp;2020&nbsp;24:148<br>Research Letter<br>Published on:&nbsp;15 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02874-x" class="is-external">The model of epidemic (COVID-19) prevention and control in rural of China</a><br>Bao Fu and Xiaoyun Fu<br>Critical Care 2020 24:146<br>Letter<br>Published on: 14 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02864-z" class="is-external">How to transform a general hospital into an “infectious disease hospital” during the epidemic of COVID-19</a><br>Hongli He, Caiying Hu, Nian Xiong, et al.&nbsp;<br>Critical Care 2020 24:145<br>Letter<br>Published on: 14 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02856-z" class="is-external">Using echocardiography to guide the treatment of novel coronavirus pneumonia</a><br>Qian-Yi Peng, Xiao-Ting Wang and Li-Na Zhang<br>Critical Care 2020 24:143<br>Editorial<br>Published on: 10 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02862-1" class="is-external">COVID-19 and the RAAS—a potential role for angiotensin II?</a><br>Laurence W. Busse, Jonathan H. Chow, Michael T. McCurdy and Ashish K. Khanna<br>Critical Care 2020 24:136<br>Editorial<br>Published on: 7 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02863-0" class="is-external">Practice of novel method of bedside postpyloric tube placement in patients with coronavirus disease 2019</a><br>Shou-Tao Yuan, Wen-Hao Zhang, Lei Zou, et al.<br>Critical Care 2020 24:135<br>Letter<br>Published on: 7 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02851-4" class="is-external">A new clinical trial to test high-dose vitamin C in patients with COVID-19</a><br>Anitra C. Carr<br>Critical Care 2020 24:133<br>Letter<br>Published on: 7 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-2836-4" class="is-external">A novel treatment approach to the novel coronavirus: an argument for the use of therapeutic plasma exchange for fulminant COVID-19</a><br>Philip Keith, Matthew Day, Linda Perkins, et al.<br>Critical Care 2020 24:128<br>Editorial<br>Published on: 2 April 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-02848-z" class="is-external">Covid-19 in China: ten critical issues for intensive care medicine</a><br>Li Li, Shijin Gong and Jing Yan<br>Critical Care 2020 24:124<br>Editorial<br>Published on: 31 March 2020</p><p class="divider--paragraph">&nbsp;<a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-2841-7" class="is-external">Special attention to nurses’ protection during the COVID-19 epidemic</a><br>Authors:Lishan Huang, Guanwen Lin, Li Tang, et al.<br>Critical Care 2020 24:120<br>Editorial<br>Published on: 27 March 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-2817-7" class="is-external">Familial cluster of COVID-19 infection from an asymptomatic</a><br>Jinjun Zhang, Sijia Tian, Jing Lou and Yuguo Chen<br>Critical Care 2020 24:119<br>Research Letter<br>Published on: 27 March 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-2833-7" class="is-external">Host susceptibility to severe COVID-19 and establishment of a host risk score: findings of 487 cases outside Wuhan</a><br>Yu Shi, Xia Yu, Hong Zhao, et al.<br>Critical Care 2020 24:108<br>Research Letter<br>Published on: 18 March 2020</p><p class="divider--paragraph">&nbsp;<a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-2832-8" class="is-external">COVID-19 infection epidemic: the medical management strategies in Heilongjiang Province, China</a><br>Hongliang Wang, Sicong Wang and Kaijiang Yu<br>Critical Care 2020 24:107<br>Editorial<br>Published on: 18 March 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-2828-4" class="is-external">Safe patient transport for COVID-19</a><br>Mei Fong Liew, Wen Ting Siow, Ying Wei Yau and Kay Choong See<br>Critical Care 2020 24:94<br>Letter<br>Published on: 18 March 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-2818-6" class="is-external">Treatment of COVID-19: old tricks for new challenges</a><br>Anne Catherine Cunningham, Hui Poh Goh and David Koh<br>Critical Care 2020 24:91<br>Editorial<br>Published on: 16 March 2020</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-2824-8" class="is-external">Coronavirus: just imagine…</a><br>Jean-Louis Vincent and Arthur S. Slutsky<br>Critical Care 2020 24:90<br>Editorial<br>Published on: 16 March 202</p><p class="divider--paragraph"><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-2814-x" class="is-external">Preparing for COVID-19: early experience from an intensive care unit in Singapore</a><br>Mei Fong Liew, Wen Ting Siow, Graeme MacLaren and Kay Choong See<br>Critical Care 2020 24:83<br>Letter<br>Published on: 9 March 2020<br>&nbsp;</p>
        
    </div>
</div>

    


                </main>

                <div class="c-page-layout__side u-text-sm">
                    
        
        
                    
                    
    


                    
                        
    <aside class="adsbox c-ad c-ad--160x600">
        <div class="c-ad__inner" data-component="sticky" data-test="skyscraper-ad">
            <p class="c-ad__label">Advertisement</p>
            <div id="div-gpt-ad-SKY1"
                 data-gpt-unitpath="/270604982/bmc/ccforum"
                 data-gpt-sizes="160x600"
                 data-gpt-targeting="pos=SKY1;pmc=H3100X,H22000;"
                 data-ad-type="SKY1">
                <noscript>
                    <a href="//pubads.g.doubleclick.net/gampad/jump?iu=/270604982/bmc/ccforum&amp;sz=160x600&amp;pos=SKY1&amp;pmc=H3100X,H22000&amp;">
                        <img data-test="gpt-advert-fallback-img"
                             src="//pubads.g.doubleclick.net/gampad/ad?iu=/270604982/bmc/ccforum&amp;sz=160x600&amp;pos=SKY1&amp;pmc=H3100X,H22000&amp;"
                             alt="Advertisement"
                             width="160"
                             height="600">
                    </a>
                </noscript>
            </div>
        </div>
    </aside>

                    
                </div>
            </div>
        </div>

        
            <div class="c-journal-footer">
                <div class="c-journal-footer__inner">
                    <div class="c-journal-footer__summary">
                        <h4 class="c-journal-title c-journal-title--footer">
                            <img class="c-journal-title__logo" src="https://ccforum.biomedcentral.com/images/13054/logo.svg"/>
                            <span class="c-journal-title__text">Critical Care</span>
                        </h4>
                         <p class="c-journal-footer__issn">ISSN: 1364-8535</p>
                    </div>
                    
                        <div class="c-journal-footer__contact">
                            <h4 class="c-journal-footer__contact-title c-journal-footer__contact-title--adjust-for-logo">Contact us</h4>
                            <ul class="c-journal-footer__contact-list">
                                
                                    <li class="c-journal-footer__contact-item">Submission enquiries: <a href="https://www.editorialmanager.com/cric/" target="_blank">Access here and click Contact Us</a></li>
                                
                                
                                    <li class="c-journal-footer__contact-item">General enquiries: <a href="mailto:info@biomedcentral.com">info@biomedcentral.com</a></li>
                                
                            </ul>
                        </div>
                    
                </div>
            </div>
        
         
    <footer>
        
            <div class="c-publisher-footer" data-test="publisher-footer">
    <div class="u-container">
        
        <div class="u-display-flex u-flex-wrap u-justify-content-space-between" data-test="publisher-footer-menu">
            <div class="u-display-flex">
                
                    
                        <ul class="c-list-group c-list-group--sm u-mr-24 u-mb-16">
                            
                                <li class="c-list-group__item">
                                    <a class="u-gray-link" href="http://blogs.biomedcentral.com/">Read more on our blogs</a>
                                </li>
                            
                                <li class="c-list-group__item">
                                    <a class="u-gray-link" href="//www.biomedcentral.com/login">Receive BMC newsletters</a>
                                </li>
                            
                                <li class="c-list-group__item">
                                    <a class="u-gray-link" href="//www.biomedcentral.com/account">Manage article alerts</a>
                                </li>
                            
                                <li class="c-list-group__item">
                                    <a class="u-gray-link" href="https://authorservices.springernature.com/go/10BMC">Language editing for authors</a>
                                </li>
                            
                                <li class="c-list-group__item">
                                    <a class="u-gray-link" href="http://authorservices.springernature.com/scientific-editing/">Scientific editing for authors</a>
                                </li>
                            
                        </ul>
                    
                        <ul class="c-list-group c-list-group--sm u-mr-24 u-mb-16">
                            
                                <li class="c-list-group__item">
                                    <a class="u-gray-link" href="//www.biomedcentral.com/about/policies">Policies</a>
                                </li>
                            
                                <li class="c-list-group__item">
                                    <a class="u-gray-link" href="//www.biomedcentral.com/accessibility">Accessibility</a>
                                </li>
                            
                                <li class="c-list-group__item">
                                    <a class="u-gray-link" href="//www.biomedcentral.com/about/press-centre">Press center</a>
                                </li>
                            
                        </ul>
                    
                        <ul class="c-list-group c-list-group--sm u-mr-24 u-mb-16">
                            
                                <li class="c-list-group__item">
                                    <a class="u-gray-link" href="https://support.biomedcentral.com/support/home">Support and Contact</a>
                                </li>
                            
                                <li class="c-list-group__item">
                                    <a class="u-gray-link" href="https://biomedcentral.typeform.com/to/VLXboo">Leave feedback</a>
                                </li>
                            
                                <li class="c-list-group__item">
                                    <a class="u-gray-link" href="//www.biomedcentral.com/about/jobs">Careers</a>
                                </li>
                            
                        </ul>
                    
                
            </div>
            <div class="u-mb-24">
                <h3 id="social-menu" class="u-text-sm u-reset-margin u-text-normal">Follow BMC</h3>
                <ul class="u-display-flex u-list-reset" data-test="footer-social-links">
                    
                        <li class="u-mt-8 u-mr-8">
                            <a href="https://twitter.com/biomedcentral"
                               class="u-gray-link">
                                <span class="u-visually-hidden">BMC Twitter page</span>
                                <svg class="c-icon" width="24" height="24" aria-hidden="true" focusable="false">
                                    <use xlink:href="#icon-twitter-bordered"></use>
                                </svg>
                            </a>
                        </li>
                    
                        <li class="u-mt-8 u-mr-8">
                            <a href="https://www.facebook.com/BioMedCentral"
                               class="u-gray-link">
                                <span class="u-visually-hidden">BMC Facebook page</span>
                                <svg class="c-icon" width="24" height="24" aria-hidden="true" focusable="false">
                                    <use xlink:href="#icon-facebook-bordered"></use>
                                </svg>
                            </a>
                        </li>
                    
                        <li class="u-mt-8 u-mr-8">
                            <a href="http://www.weibo.com/biomedcentral"
                               class="u-gray-link">
                                <span class="u-visually-hidden">BMC Weibo page</span>
                                <svg class="c-icon" width="24" height="24" aria-hidden="true" focusable="false">
                                    <use xlink:href="#icon-weibo-bordered"></use>
                                </svg>
                            </a>
                        </li>
                    
                </ul>
            </div>
        </div>
        <p class="u-reset-margin">
            By using this website, you agree to our
            <a class="u-gray-link" href="//www.biomedcentral.com/terms-and-conditions">Terms and Conditions</a>,
            <a class="u-gray-link" href="https://www.springernature.com/ccpa">California Privacy Statement</a>,
            <a class="u-gray-link" href="//www.biomedcentral.com/privacy-statement">Privacy
                statement</a> and
            <a class="u-gray-link" href="//www.biomedcentral.com/cookies" data-test="cookie-link">Cookies</a> policy.
            
                <a class="optanon-toggle-display u-gray-link" href="javascript:void(0);">Manage cookies/Do not sell my data</a> we use in the preference centre.
            
        </p>
    </div>
</div>

        
        <div class="c-corporate-footer">
    <div class="u-container">
        <img src=/static/images/logo-springernature-44af1f90df.svg class="c-corporate-footer__logo" alt="Springer Nature" itemprop="logo" role="img">
        <p class="c-corporate-footer__legal" data-test="copyright"> &#169; 2020 BioMed Central Ltd unless otherwise stated. Part of
            <a class="c-corporate-footer__link" href="https://www.springernature.com" itemscope itemtype="http://schema.org/Organization" itemid="#parentOrganization">Springer Nature</a>.
        </p>
    </div>
</div>

        
    </footer>

    </div>
    <noscript>
	<img hidden src="https://verify.nature.com/verify/nature.png" border="0" width="0" height="0" style="display: none">
</noscript>


        
    <svg class="u-hide hide">
        <symbol id="global-icon-chevron-right" viewBox="0 0 16 16">
            <path d="M7.782 7L5.3 4.518c-.393-.392-.4-1.022-.02-1.403a1.001 1.001 0 011.417 0l4.176 4.177a1.001 1.001 0 010 1.416l-4.176 4.177a.991.991 0 01-1.4.016 1 1 0 01.003-1.42L7.782 9l1.013-.998z" fill-rule="evenodd"/>
        </symbol>
        <symbol id="global-icon-download" viewBox="0 0 16 16">
            <path d="M2 14c0-.556.449-1 1.002-1h9.996a.999.999 0 110 2H3.002A1.006 1.006 0 012 14zM9 2v6.8l2.482-2.482c.392-.392 1.022-.4 1.403-.02a1.001 1.001 0 010 1.417l-4.177 4.177a1.001 1.001 0 01-1.416 0L3.115 7.715a.991.991 0 01-.016-1.4 1 1 0 011.42.003L7 8.8V2c0-.55.444-.996 1-.996.552 0 1 .445 1 .996z" fill-rule="evenodd"/>
        </symbol>
        <symbol id="global-icon-email" viewBox="0 0 18 18">
            <path d="M1.995 2h14.01A2 2 0 0118 4.006v9.988A2 2 0 0116.005 16H1.995A2 2 0 010 13.994V4.006A2 2 0 011.995 2zM1 13.994A1 1 0 001.995 15h14.01A1 1 0 0017 13.994V4.006A1 1 0 0016.005 3H1.995A1 1 0 001 4.006zM9 11L2 7V5.557l7 4 7-4V7z" fill-rule="evenodd"/>
        </symbol>
        <symbol id="global-icon-institution" viewBox="0 0 18 18">
            <path d="M14 8a1 1 0 011 1v6h1.5a.5.5 0 01.5.5v.5h.5a.5.5 0 01.5.5V18H0v-1.5a.5.5 0 01.5-.5H1v-.5a.5.5 0 01.5-.5H3V9a1 1 0 112 0v6h8V9a1 1 0 011-1zM6 8l2 1v4l-2 1zm6 0v6l-2-1V9zM9.573.401l7.036 4.925A.92.92 0 0116.081 7H1.92a.92.92 0 01-.528-1.674L8.427.401a1 1 0 011.146 0zM9 2.441L5.345 5h7.31z" fill-rule="evenodd"/>
        </symbol>
        <symbol id="global-icon-search" viewBox="0 0 22 22">
            <path fill-rule="evenodd" d="M21.697 20.261a1.028 1.028 0 01.01 1.448 1.034 1.034 0 01-1.448-.01l-4.267-4.267A9.812 9.811 0 010 9.812a9.812 9.811 0 1117.43 6.182zM9.812 18.222A8.41 8.41 0 109.81 1.403a8.41 8.41 0 000 16.82z"/>
        </symbol>
    </svg>

    </body>
</html>

