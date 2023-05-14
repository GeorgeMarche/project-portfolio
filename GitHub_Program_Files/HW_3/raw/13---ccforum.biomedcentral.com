<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

        <title>Critical Care | Home page</title>

        

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
        window.dataLayer = [{"content":{"article":null,"contentInfo":{"imprint":"BioMed Central","title":null,"publishedAt":null,"publishedAtDate":null,"author":null,"collection":null},"attributes":{"deliveryPlatform":"oscar","template":"rebrand","cms":null,"copyright":null,"environment":"live"},"journal":{"siteKey":"ccforum.biomedcentral.com","volume":null,"issue":null,"title":"Critical Care","type":"MLS 4","journalID":13054,"section":null},"category":{"pmc":{"primarySubject":"Medicine & Public Health"},"contentType":null,"publishingSegment":"Med 41"}},"session":{"authentication":{"authenticationID":[]}},"version":"1.0.0","page":{"category":{"pageType":"journalHome"},"attributes":{"featureFlags":[],"environment":"live"}},"event":"dataLayerCreated"}];
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
        
    


        
    
    <link rel="canonical" href="//ccforum.biomedcentral.com"/>
    

        
    <meta name="keywords" content="Critical Care, Intensive / Critical Care Medicine, Emergency Medicine"/>
    <meta name="description" content="A pioneering open access journal with a highly respected Editorial Board, Critical Care has been leading its field for more than a decade. The journal is ..."/>

        
        
        <meta property="og:url" content="https://ccforum.biomedcentral.com/"/>
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

    <body class="journal journal-homepage"
    
          data-test="journal-home">
        
    
        
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
                 data-gpt-unitpath="/270604982/bmc/ccforum/homepage"
                 data-gpt-sizes="728x90,970x90"
                 data-gpt-targeting="pos=LB1;pmc=H3100X,H22000;"
                 data-ad-type="LB1">
                <noscript>
                    <a href="//pubads.g.doubleclick.net/gampad/jump?iu=/270604982/bmc/ccforum/homepage&amp;sz=728x90,970x90&amp;pos=LB1&amp;pmc=H3100X,H22000&amp;">
                        <img data-test="gpt-advert-fallback-img"
                             src="//pubads.g.doubleclick.net/gampad/ad?iu=/270604982/bmc/ccforum/homepage&amp;sz=728x90,970x90&amp;pos=LB1&amp;pmc=H3100X,H22000&amp;"
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
                        
                        <h1 class="c-journal-title" id="journalTitle">
                            <a href="/">
    
        
            <img class="c-journal-title__logo" src=https://ccforum.biomedcentral.com/images/13054/logo.svg alt="Critical Care logo">
        
    
    <span class="c-journal-title__text ">Critical Care</span>
    
</a>
                        </h1>
                        
                    </div>
                </div>
                <div class="c-navbar">
                    <div class="c-navbar__container">
                        
                            <div class="c-navbar__content">
                                <nav class="c-navbar__nav">
                                    <ul class="c-navbar__nav c-navbar__nav--journal" role="menu" data-test="site-navigation">
                                        
                                            <li class="c-navbar__item" role="menuitem">
                                                <a class="c-navbar__link c-navbar__link--is-shown" data-track="click" data-track-category="Home" data-track-action="Clicked journal navigation link" href='/'>Home</a>
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
                    
                        <div class="u-container">
                            <div class="u-display-flex u-justify-content-space-between u-flex-wrap">
                                <div class="ctx-search c-journal-header__search u-flex-grow">
                                    <form role="search"
                                        method="GET"
                                        action="//ccforum.biomedcentral.com/articles"
                                        class="c-form-field c-form-field--inline"
                                        data-test="journal-header-search">
                                        <input class="c-form-field__input"
                                            placeholder="Search articles within this journal"
                                            role="textbox"
                                            name="query"
                                            type="text"
                                            value=""
                                            title="Search Critical Care"
                                            data-test="journal-header-search-input">
                                        <button class="c-button" type="submit">
                                            <span class="u-visually-hidden">Search</span>
                                            <svg class="c-icon" width="16" height="16" aria-hidden="true" focusable="false">
                                                <use xlink:href="#icon-search"></use>
                                            </svg>
                                        </button>
                                        <input type="hidden" name="searchType" value="journalSearch">
                                        <input type="hidden" name="tab" value="keyword">
                                    </form>
                                </div>
                                
    

    
        <div class="">
            
        <a class="c-journal-header__submit-button" href="https://www.editorialmanager.com/cric/"
           data-track="click"
           data-track-category="Journal"
           data-track-action="manuscript submission"
           data-track-label="Critical Care"
           data-test="submit-manuscript-button">Submit manuscript</a>
    
        </div>
    


                            </div>
                        </div>
                    
                </div>
            </header>
            
        

        <div class="u-container u-mt-32 u-mb-32" id="main-content">
            <div class="c-page-layout c-page-layout--landing" data-component="sticky-container">
                <main class="c-page-layout__main">
                    
    
        
    
        <div id="aimsAndScope" class="cms-item placeholder placeholder-aimsAndScope">
            <h2>Aims and scope</h2>
            <div class="placeholder-aimsAndScope_content"><i>Critical Care</i> is a high-quality, peer-reviewed, international clinical medical journal. <i>Critical Care</i> aims to improve the care of critically ill patients by acquiring, discussing, distributing, and promoting evidence-based information relevant to intensivists. <i>Critical Care</i> aims to provide a comprehensive overview of the intensive care field.</div>
        </div>
    


    
        
    <div class="cms-item cms-collection cms-collection--split cms-collection--untitled" data-fragment="12111352">
        

        <div class="cms-collection__row">
            
                <div class="cms-collection__column">
                    <div class="cms-collection__column-inner">
                        
    <div class="cms-item cms-collection"  data-fragment="15297326">
        
        
                <div class="cms-item c-media c-media--stacked" data-fragment="15297300">
    
        <div class="c-media__figure">
            
                
<div class="cms-item c-image-copyright" data-fragment="15297310">
    <a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03314-6" class="p-corner-crop">
    
        <img src="//media.springernature.com/lw450/springer-cms/rest/v1/content/15297310/data/v16" alt="New Content Item"/>
    
    </a>
    
</div>


            
        </div>
    
    <div class="c-media__body">
        
            <h2 class="c-media__title u-text-md">
                
                    <a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-03314-6">OCTOBER EDITOR&#x27;S PICK</a>
                
            </h2>
        

        
            <p>Many COVID-19 patients evolve to ARDS, characterized by profound hypoxemia and an associated high mortality rate.&nbsp;High-flow nasal oxygen therapy is effective in decreasing the need for endotracheal intubation. Does&nbsp;the concomitant awake-prone position&nbsp;reduce even further&nbsp;the need for intubation or affect mortality?</p>
        
    </div>
</div>

        
            <div class="cms-item c-media c-media--stacked" data-fragment="17977766">
    
        <div class="c-media__figure">
            
                
<div class="cms-item c-image-copyright" data-fragment="17977772">
    <a href="/covid-19-updates" class="p-corner-crop">
    
        <img src="//media.springernature.com/lw450/springer-cms/rest/v1/content/17977772/data/v1" alt="New Content Item"/>
    
    </a>
    
</div>


            
        </div>
    
    <div class="c-media__body">
        
            <h2 class="c-media__title u-text-md">
                
                    <a href="/covid-19-updates">COVID-19 UPDATES</a>
                
            </h2>
        

        
            <p>We collect here all most recent research updates on COVID-19 epidemics published in the journal to make them easily discoverable to the research community</p>
        
    </div>
</div>

        
    </div>


                    </div>
                </div>
            
                <div class="cms-collection__column">
                    <div class="cms-collection__column-inner">
                        
    <div class="cms-item cms-collection"  data-fragment="15297328">
        
        
            <div data-fragment="17994862">
    
        <div class="c-status-message c-status-message--boxed c-status-message--info u-mb-16"
     data-test="flash-info"
     >
    <svg class="c-status-message__icon c-status-message__icon--top c-icon u-mt-2" width="18" height="18" aria-hidden="true" focusable="false">
        <use xlink:href="#icon-info"></use>
    </svg>
    <div data-test="flash-message">
        
            <p><em>Critical Care</em> <strong><span class="underline">strongly encourages</span></strong> Authors of <span class="underline">Research articles</span> and <span class="underline">Review articles</span> to submit a <strong>Graphical Abstract</strong>.</p><p><strong>A graphical abstract is a figure that clearly and succinctly conveys the main message of your research (paper).</strong>&nbsp;</p><p>The goal of a graphical abstract is&nbsp;to attract readers' attention to the article and encourage them to read the whole paper, but also promote interdisciplinary scholarship and help readers quickly identify which papers are most relevant to their research interests.</p><p>See the journal Submission Guidelines for more info on how to prepare a Graphical Abstract<br /><a href="https://ccforum.biomedcentral.com/submission-guidelines/preparing-your-manuscript/research" class="is-external">Research articles</a><br /><a href="https://ccforum.biomedcentral.com/submission-guidelines/preparing-your-manuscript/review" class="is-external">Review articles</a></p>
        
    </div>
</div>

    
</div>

        
            <div class="cms-item c-media c-media--stacked" data-fragment="17461912">
    
        <div class="c-media__figure">
            
                
<div class="cms-item c-image-copyright" data-fragment="17520266">
    <a href="/new-content-item" class="p-corner-crop">
    
        <img src="//media.springernature.com/lw450/springer-cms/rest/v1/content/17520266/data/v1" alt="New Content Item"/>
    
    </a>
    
</div>


            
        </div>
    
    <div class="c-media__body">
        
            <h2 class="c-media__title u-text-md">
                
                    <a href="/new-content-item">How I...</a>
                
            </h2>
        

        
    </div>
</div>

        
            <div class="cms-item" data-fragment="16372612">
    
    <h2>Critical Care&#x27;s monthly most trending articles </h2>
    
    <div>
        
        <div>
            
            
<div class="cms-item c-image-copyright" data-fragment="16372616">
    <a href="https://www.altmetric.com/explorer/report/da720a31-81d6-41c2-b065-b3eca80e6ced" >
    
        <img src="//media.springernature.com/lw450/springer-cms/rest/v1/content/16372616/data/v3" alt="Altmetrics"/>
    
    </a>
    
</div>


            
        </div>
        
        <div class="u-mb-16-at-xxs u-mb-16-at-xs">
            
            
                <a href="https://www.altmetric.com/explorer/report/da720a31-81d6-41c2-b065-b3eca80e6ced" class="c-button c-button--primary" data-test="teaser-button-link"> Read More </a>
            
        </div>
    </div>
</div>

        
    </div>


                    </div>
                </div>
            
        </div>
    </div>


    
        
    <div class="cms-item cms-collection cms-collection--split cms-collection--untitled" data-fragment="729550">
        

        <div class="cms-collection__row">
            
                <div class="cms-collection__column">
                    <div class="cms-collection__column-inner">
                        
    <div class="cms-item cms-collection"  data-fragment="729546">
        
        
            
    <div class="cms-item cms-collection" data-tabs="tabs" data-fragment="727126">
        
            <h2 class="cms-collection__title">Articles</h2>
        
        <ul class="c-nav c-nav--tabs c-nav--fill u-mb-16" role="tablist">
            
                
                    <li role="presentation" class="c-nav__item">
                        <a class="c-nav__link is-active"
                           href="#tab-1"
                           aria-controls="tab-1"
                           role="tab"
                           data-toggle="tab"
                           data-track="click" data-track-category="Recent" data-track-action="Clicked tab"
                        >Recent</a>
                    </li>
                
            
                
                    <li role="presentation" class="c-nav__item">
                        <a class="c-nav__link"
                           href="#tab-2"
                           aria-controls="tab-2"
                           role="tab"
                           data-toggle="tab"
                           data-track="click" data-track-category="Featured Articles" data-track-action="Clicked tab"
                        >Featured Articles</a>
                    </li>
                
            
                
                    <li role="presentation" class="c-nav__item">
                        <a class="c-nav__link"
                           href="#tab-3"
                           aria-controls="tab-3"
                           role="tab"
                           data-toggle="tab"
                           data-track="click" data-track-category="Most accessed" data-track-action="Clicked tab"
                        >Most accessed</a>
                    </li>
                
            
        </ul>
        
            
                <div role="tabpanel" class="c-tab-content is-active" id="tab-1">
                    
    
    <div data-test="recent-articles">
        <div data-track-component="Recent">
        <div data-total="16997" data-test="search-content">
    <ol class="c-list-group c-list-group--bordered c-list-group c-list-group--md">
        
        <li class="c-list-group__item u-position-relative">
            <article class="c-listing" itemscope itemtype="http://schema.org/ScholarlyArticle">
                <h3 class="c-listing__title u-mb-8" itemprop="name">
                    
                        <a itemprop="url" href="/articles/10.1186/s13054-020-03339-x" data-track="click" data-track-action="Clicked article link" data-track-label="article 0">Dynamic trajectory of platelet-related indicators and survival of severe COVID-19 patients</a>
                    
                </h3>
                <p class="c-listing__authors u-mb-4" data-test="authors"><span class="u-visually-hidden">Authors: </span>Jieyu He, Yongyue Wei, Jiao Chen, Feng Chen, Wei Gao and Xiang Lu</p>
                <div class="c-meta">
                    <p class="c-meta__item"><span class="u-visually-hidden">Content type: </span>Research Letter</p>
                    <p class="c-meta__item" itemprop="datePublished" data-test="published-on">14 October 2020</p>
                </div>
                

            </article>
        </li>
        
        <li class="c-list-group__item u-position-relative">
            <article class="c-listing" itemscope itemtype="http://schema.org/ScholarlyArticle">
                <h3 class="c-listing__title u-mb-8" itemprop="name">
                    
                        <a itemprop="url" href="/articles/10.1186/s13054-020-03316-4" data-track="click" data-track-action="Clicked article link" data-track-label="article 1">Mortality in non-elderly septic patients was increased with hypothermia and decreased with fever while mortality in elderly patients was not associated with body temperature: beware of some confounders!</a>
                    
                </h3>
                <p class="c-listing__authors u-mb-4" data-test="authors"><span class="u-visually-hidden">Authors: </span>Patrick M. Honore, Leonel Barreto Gutierrez, Luc Kugener, Sebastien Redant, Rachid Attou, Andrea Gallerani and David De Bels</p>
                <div class="c-meta">
                    <p class="c-meta__item"><span class="u-visually-hidden">Content type: </span>Letter</p>
                    <p class="c-meta__item" itemprop="datePublished" data-test="published-on">13 October 2020</p>
                </div>
                
    <div class="u-mb-16">
        <div class="c-listing__text c-listing__text--light">
            
                <div class="c-status-message c-status-message--info u-text-xs">
    <svg class="c-status-message__icon c-status-message__icon--top c-icon" width="18" height="18" aria-hidden="true" focusable="false">
        <use xlink:href="#icon-info"></use>
    </svg>
    <div data-test="flash-message">
        
                    
                        
                            <p data-test="relatedToMessage">
                                The
                                <a href="/articles/10.1186/s13054-020-02976-6">
                                    original article</a> was published in <em>Critical Care</em>
                                2020
                                <strong>24</strong>:387
                            </p>
                        
                    
                
    </div>
</div>

            
        </div>
    </div>


            </article>
        </li>
        
        <li class="c-list-group__item u-position-relative">
            <article class="c-listing" itemscope itemtype="http://schema.org/ScholarlyArticle">
                <h3 class="c-listing__title u-mb-8" itemprop="name">
                    
                        <a itemprop="url" href="/articles/10.1186/s13054-020-03322-6" data-track="click" data-track-action="Clicked article link" data-track-label="article 2">Blood purification therapy with a hemodiafilter featuring enhanced adsorptive properties for cytokine removal in patients presenting COVID-19: a pilot study</a>
                    
                </h3>
                <p class="c-listing__authors u-mb-4" data-test="authors"><span class="u-visually-hidden">Authors: </span>Gianluca Villa, Stefano Romagnoli, Silvia De Rosa, Massimiliano Greco, Marco Resta, Diego Pomarè Montin, Federico Prato, Francesco Patera, Fiorenza Ferrari, Giuseppe Rotondo and Claudio Ronco</p>
                <div class="c-meta">
                    <p class="c-meta__item"><span class="u-visually-hidden">Content type: </span>Research</p>
                    <p class="c-meta__item" itemprop="datePublished" data-test="published-on">12 October 2020</p>
                </div>
                

            </article>
        </li>
        
        <li class="c-list-group__item u-position-relative">
            <article class="c-listing" itemscope itemtype="http://schema.org/ScholarlyArticle">
                <h3 class="c-listing__title u-mb-8" itemprop="name">
                    
                        <a itemprop="url" href="/articles/10.1186/s13054-020-03274-x" data-track="click" data-track-action="Clicked article link" data-track-label="article 3">Early hyperoxemia is associated with lower adjusted mortality after severe trauma: results from a French registry</a>
                    
                </h3>
                <p class="c-listing__authors u-mb-4" data-test="authors"><span class="u-visually-hidden">Authors: </span>Josefine S. Baekgaard, Paer-Selim Abback, Marouane Boubaya, Jean-Denis Moyer, Delphine Garrigue, Mathieu Raux, Benoit Champigneulle, Guillaume Dubreuil, Julien Pottecher, Philippe Laitselart, Fleur Laloum, Coralie Bloch-Queyrat, Frédéric Adnet and Catherine Paugam-Burtz</p>
                <div class="c-meta">
                    <p class="c-meta__item"><span class="u-visually-hidden">Content type: </span>Research</p>
                    <p class="c-meta__item" itemprop="datePublished" data-test="published-on">12 October 2020</p>
                </div>
                

            </article>
        </li>
        
        <li class="c-list-group__item u-position-relative">
            <article class="c-listing" itemscope itemtype="http://schema.org/ScholarlyArticle">
                <h3 class="c-listing__title u-mb-8" itemprop="name">
                    
                        <a itemprop="url" href="/articles/10.1186/s13054-020-03294-7" data-track="click" data-track-action="Clicked article link" data-track-label="article 4">Infliximab can reduce mortality from 35 to 14% in critically ill patients with COVID-19: perhaps some potential confounders to consider</a>
                    
                </h3>
                <p class="c-listing__authors u-mb-4" data-test="authors"><span class="u-visually-hidden">Authors: </span>Patrick M. Honore, Leonel Barreto Gutierrez, Luc Kugener, Sebastien Redant, Rachid Attou, Andrea Gallerani and David De Bels</p>
                <div class="c-meta">
                    <p class="c-meta__item"><span class="u-visually-hidden">Content type: </span>Letter</p>
                    <p class="c-meta__item" itemprop="datePublished" data-test="published-on">9 October 2020</p>
                </div>
                
    <div class="u-mb-16">
        <div class="c-listing__text c-listing__text--light">
            
                <div class="c-status-message c-status-message--info u-text-xs">
    <svg class="c-status-message__icon c-status-message__icon--top c-icon" width="18" height="18" aria-hidden="true" focusable="false">
        <use xlink:href="#icon-info"></use>
    </svg>
    <div data-test="flash-message">
        
                    
                        
                            <p data-test="relatedToMessage">
                                The
                                <a href="/articles/10.1186/s13054-020-03158-0">
                                    original article</a> was published in <em>Critical Care</em>
                                2020
                                <strong>24</strong>:444
                            </p>
                        
                    
                
    </div>
</div>

            
        </div>
    </div>


            </article>
        </li>
        
    </ol>
</div>

        </div>
        <div class="u-display-flex u-flex-justify-space-between u-flex-align-baseline u-flex-wrap">
            <p class="u-text-sm u-mr-16 u-mb-8">
                <a href="/articles/most-recent/rss.xml"
                class="u-display-flex u-align-items-center"
                target="_blank"
                rel="noopener"
                data-test="recent-articles-feed">
                    Most recent articles RSS
                    <svg class="c-icon u-ml-8" width="11" height="11" aria-hidden="true" focusable="false">
                        <use xlink:href="#icon-rss"></use>
                    </svg>
                </a>
            </p>
            <p>
                <a href="/articles" class="c-button" data-track="click" data-track-category="Recent" data-track-action="Clicked view all articles link">
                    <span class="u-display-flex u-align-items-center">
                        View all articles
                        <svg class="c-icon u-ml-8" width="12" height="12" aria-hidden="true" focusable="false">
                            <use xlink:href="#icon-chevron-right"></use>
                        </svg>
                    </span>
                </a>
            </p>
        </div>
    </div>
    


                </div>
            
        
            
                <div role="tabpanel" class="c-tab-content " id="tab-2">
                    <div class="cms-item cms-article cleared" data-fragment="11002958">
    <div class="cms-article__body cleared">
        
            <p class="intro--paragraph"><sub>Editorial | 06 August 2019</sub><br><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-019-2551-1" target="_self" class="is-external">Is this patient really “(un)stable”? How to describe cardiovascular dynamics in critically ill patients</a><br><sub><strong>Jean-Louis Vincent, Maurizio Cecconi and Bernd Saugel</strong></sub></p><p class="intro--paragraph"><sub>Research | 01 August 2019</sub><br><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-019-2548-9" target="_self" class="is-external">Vitamin A deficiency in critically ill children with sepsis</a><br><sub><strong>Xuepeng Zhang, Kaiying Yang, Linwen Chen, Xuelian Liao, Liping Deng, Siyuan Chen and Yi Ji</strong></sub></p><p class="intro--paragraph"><sub>Letter | 30 July 2019</sub><br><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-019-2538-y" target="_self" class="is-external">Vitamin C administration in the critically ill: a summary of recent meta-analyses</a><br><sup><strong>Anitra C. Carr</strong></sup></p><p class="intro--paragraph"><sub>Research | 24 July 2019</sub><br><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-019-2542-2" target="_self" class="is-external">Association of sublingual microcirculation parameters and endothelial glycocalyx dimensions in resuscitated sepsis​​​​​​​</a><br><sup><strong>Alexandros Rovas, Laura Mareen Seidel, Hans Vink, Timo Pohlkötter, Hermann Pavenstädt, Christian Ertmer, Michael Hessler and Philipp Kümpers</strong></sup></p><p class="intro--paragraph"><sub>Editorial | 04 July 2019</sub><br><a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-019-2529-z" target="_self" class="is-external">How I manage intracranial hypertension​​​​​​​</a><br><sup><strong>Chiara Robba and Giuseppe Citerio</strong></sup></p>
        
    </div>
</div>

                </div>
            
        
            
                <div role="tabpanel" class="c-tab-content " id="tab-3">
                    
    
    <div data-test="most-accessed-articles">
        <div data-track-component="Most accessed">
            <div data-total="5" data-test="search-content">
    <ol class="c-list-group c-list-group--bordered c-list-group c-list-group--md">
        
        <li class="c-list-group__item u-position-relative">
            <article class="c-listing" itemscope itemtype="http://schema.org/ScholarlyArticle">
                <h3 class="c-listing__title u-mb-8" itemprop="name">
                    
                        <a itemprop="url" href="/articles/10.1186/cc2872" data-track="click" data-track-action="Clicked article link" data-track-label="article 0">Acute renal failure – definition, outcome measures, animal models, fluid therapy and information technology needs: the Second International Consensus Conference of the Acute Dialysis Quality Initiative (ADQI) Group</a>
                    
                </h3>
                <p class="c-listing__authors u-mb-4" data-test="authors"><span class="u-visually-hidden">Authors: </span>Rinaldo Bellomo, Claudio Ronco, John A Kellum, Ravindra L Mehta and Paul Palevsky</p>
                <div class="c-meta">
                    <p class="c-meta__item"><span class="u-visually-hidden">Content type: </span>Research</p>
                    <p class="c-meta__item" itemprop="datePublished" data-test="published-on">24 May 2004</p>
                </div>
                

            </article>
        </li>
        
        <li class="c-list-group__item u-position-relative">
            <article class="c-listing" itemscope itemtype="http://schema.org/ScholarlyArticle">
                <h3 class="c-listing__title u-mb-8" itemprop="name">
                    
                        <a itemprop="url" href="/articles/10.1186/cc12685" data-track="click" data-track-action="Clicked article link" data-track-label="article 1">Management of bleeding and coagulopathy following major trauma: an updated European guideline</a>
                    
                </h3>
                <p class="c-listing__authors u-mb-4" data-test="authors"><span class="u-visually-hidden">Authors: </span>Donat R Spahn, Bertil Bouillon, Vladimir Cerny, Timothy J Coats, Jacques Duranteau, Enrique Fernández-Mondéjar, Daniela Filipescu, Beverley J Hunt, Radko Komadina, Giuseppe Nardi, Edmund Neugebauer, Yves Ozier, Louis Riddez, Arthur Schultz, Jean-Louis Vincent and Rolf Rossaint</p>
                <div class="c-meta">
                    <p class="c-meta__item"><span class="u-visually-hidden">Content type: </span>Research</p>
                    <p class="c-meta__item" itemprop="datePublished" data-test="published-on">19 April 2013</p>
                </div>
                

            </article>
        </li>
        
        <li class="c-list-group__item u-position-relative">
            <article class="c-listing" itemscope itemtype="http://schema.org/ScholarlyArticle">
                <h3 class="c-listing__title u-mb-8" itemprop="name">
                    
                        <a itemprop="url" href="/articles/10.1186/cc660" data-track="click" data-track-action="Clicked article link" data-track-label="article 2">Weaning from mechanical ventilation</a>
                    
                </h3>
                <p class="c-listing__authors u-mb-4" data-test="authors"><span class="u-visually-hidden">Authors: </span>Inmaculada Alía and Andrés Esteban</p>
                <div class="c-meta">
                    <p class="c-meta__item"><span class="u-visually-hidden">Content type: </span>Review</p>
                    <p class="c-meta__item" itemprop="datePublished" data-test="published-on">18 February 2000</p>
                </div>
                
    <div class="u-mb-16">
        <div class="c-listing__text c-listing__text--light">
            
                <div class="c-status-message c-status-message--info u-text-xs">
    <svg class="c-status-message__icon c-status-message__icon--top c-icon" width="18" height="18" aria-hidden="true" focusable="false">
        <use xlink:href="#icon-info"></use>
    </svg>
    <div data-test="flash-message">
        
                    
                        
                            <p data-test="relatedFromMessage">
                                The
                                <a href="/articles/10.1186/cc4996">
                                    Erratum to this article</a> has been published in <em>
                                Critical Care</em>
                                2006
                                <strong>10</strong>:414
                            </p>
                        
                    
                
    </div>
</div>

            
        </div>
    </div>


            </article>
        </li>
        
        <li class="c-list-group__item u-position-relative">
            <article class="c-listing" itemscope itemtype="http://schema.org/ScholarlyArticle">
                <h3 class="c-listing__title u-mb-8" itemprop="name">
                    
                        <a itemprop="url" href="/articles/10.1186/cc13775" data-track="click" data-track-action="Clicked article link" data-track-label="article 3">Ventilator-associated pneumonia in the ICU</a>
                    
                </h3>
                <p class="c-listing__authors u-mb-4" data-test="authors"><span class="u-visually-hidden">Authors: </span>Atul Ashok Kalanuria, Wendy Zai and Marek Mirski</p>
                <div class="c-meta">
                    <p class="c-meta__item"><span class="u-visually-hidden">Content type: </span>Review</p>
                    <p class="c-meta__item" itemprop="datePublished" data-test="published-on">18 March 2014</p>
                </div>
                
    <div class="u-mb-16">
        <div class="c-listing__text c-listing__text--light">
            
                <div class="c-status-message c-status-message--info u-text-xs">
    <svg class="c-status-message__icon c-status-message__icon--top c-icon" width="18" height="18" aria-hidden="true" focusable="false">
        <use xlink:href="#icon-info"></use>
    </svg>
    <div data-test="flash-message">
        
                    
                        
                            <p data-test="relatedFromMessage">
                                The
                                <a href="/articles/10.1186/s13054-016-1206-8">
                                    Erratum to this article</a> has been published in <em>
                                Critical Care</em>
                                2016
                                <strong>20</strong>:29
                            </p>
                        
                    
                
    </div>
</div>

            
        </div>
    </div>


            </article>
        </li>
        
        <li class="c-list-group__item u-position-relative">
            <article class="c-listing" itemscope itemtype="http://schema.org/ScholarlyArticle">
                <h3 class="c-listing__title u-mb-8" itemprop="name">
                    
                        <a itemprop="url" href="/articles/10.1186/cc2845" data-track="click" data-track-action="Clicked article link" data-track-label="article 4">How low is too low? Cardiac risks with anemia</a>
                    
                </h3>
                <p class="c-listing__authors u-mb-4" data-test="authors"><span class="u-visually-hidden">Authors: </span>Samir M Fakhry and Paola Fata</p>
                <div class="c-meta">
                    <p class="c-meta__item"><span class="u-visually-hidden">Content type: </span>Review</p>
                    <p class="c-meta__item" itemprop="datePublished" data-test="published-on">14 June 2004</p>
                </div>
                

            </article>
        </li>
        
    </ol>
</div>

        </div>
        <div class="u-display-flex u-flex-justify-space-between u-flex-align-baseline u-flex-wrap">
            <p class="u-text-sm u-mr-16 u-mb-8">
                <a href="/articles/most-accessed/rss.xml"
                   class="u-display-flex u-align-items-center"
                   target="_blank"
                   rel="noopener"
                   data-test="most-accessed-feed">
                    <span>Most accessed articles RSS</span>
                    <svg class="c-icon u-ml-8" width="11" height="11" aria-hidden="true" focusable="false">
                        <use xlink:href="#icon-rss"></use>
                    </svg>
                </a>
            </p>
            <p class="u-text-right">
                <a href="/articles" class="c-button" data-track="click" data-track-category="Most accessed" data-track-action="Clicked view all articles link">
                    <span class="u-display-flex u-align-items-center">
                        View all articles
                        <svg class="c-icon u-ml-8" width="16" height="16" aria-hidden="true" focusable="false">
                            <use xlink:href="#icon-chevron-right"></use>
                        </svg>
                    </span>
                </a>
            </p>
        </div>
    </div>
    


                </div>
            
        
    </div>


        
            <div data-test="rss-feed" class="cms-item" data-fragment="15035468">
    
        
            
    <h2 data-test="rss-feed-title">Latest blogs</h2>
    
        <div class="c-box c-box--borderless" data-test="rss-feed-container">
            <ul class="c-list-group c-list-group--bordered c-list-group c-list-group--md">
                
                    <li class="c-list-group__item">
                        <article class="c-media c-media--sm">
                            
                                <div class="c-media__figure">
                                    <img src="//media.springernature.com/w100/bmc-blogs/on-medicine/wp-content/uploads/sites/6/2018/11/Fotolia_87064832_Subscription_Yearly_XL-125x125.jpg" alt="The psychological impact of intensive care">
                                </div>
                            
                            <div class="c-media__body">
                                <h3 class="c-media__title">
                                    
                                        <a href="http://blogs.biomedcentral.com/on-medicine/2018/12/06/the-psychological-impact-of-intensive-care/">The psychological impact of intensive care</a>
                                    
                                </h3>
                                
                                    <p class="u-text-sm">06 December 2018</p>
                                
                            </div>
                        </article>
                    </li>
                
                    <li class="c-list-group__item">
                        <article class="c-media c-media--sm">
                            
                                <div class="c-media__figure">
                                    <img src="//media.springernature.com/w100/bmc-blogs/on-medicine/wp-content/uploads/sites/6/2018/09/doctor-563429_960_720-125x125.jpg" alt="The gender gap in critical care medicine: how are we doing globally?">
                                </div>
                            
                            <div class="c-media__body">
                                <h3 class="c-media__title">
                                    
                                        <a href="http://blogs.biomedcentral.com/on-medicine/2018/10/04/women-in-intensive-care/">The gender gap in critical care medicine: how are we doing globally?</a>
                                    
                                </h3>
                                
                                    <p class="u-text-sm">04 October 2018</p>
                                
                            </div>
                        </article>
                    </li>
                
                    <li class="c-list-group__item">
                        <article class="c-media c-media--sm">
                            
                                <div class="c-media__figure">
                                    <img src="//media.springernature.com/w100/bmc-blogs/on-medicine/wp-content/uploads/sites/6/2018/09/stockphoto-laptop-and-contract-125x125.jpg" alt="Big data, big ethics: how to handle research data from medical emergency settings?">
                                </div>
                            
                            <div class="c-media__body">
                                <h3 class="c-media__title">
                                    
                                        <a href="http://blogs.biomedcentral.com/on-medicine/2018/09/13/big-data-big-ethics-handle-research-data-medical-emergency-settings/">Big data, big ethics: how to handle research data from medical emergency settings?</a>
                                    
                                </h3>
                                
                                    <p class="u-text-sm">13 September 2018</p>
                                
                            </div>
                        </article>
                    </li>
                
            </ul>
        </div>
    

        
    
</div>

        
            <div class="cms-item c-media" data-fragment="15297382">
    
        <div class="c-media__figure">
            
                
<div class="cms-item c-image-copyright" data-fragment="15297390">
    <a href="https://ccforum.biomedcentral.com/about/20anniversary" >
    
        <img src="//media.springernature.com/lw450/springer-cms/rest/v1/content/15297390/data/v1" alt="20th Anniversary"/>
    
    </a>
    
</div>


            
        </div>
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://ccforum.biomedcentral.com/about/20anniversary">Celebrating Critical Care&#x27;s 20th Anniversary</a>
                
            </h2>
        

        
            <p>2017 marked the 20th anniversary of&nbsp;Critical Care.&nbsp;To celebrate, we put together a page to celebrate the great milestones of the journal, including a timeline, opinions from those in the field, links to some of our most popular articles and more.&nbsp;</p>
        
    </div>
</div>

        
    </div>


                    </div>
                </div>
            
                <div class="cms-collection__column">
                    <div class="cms-collection__column-inner">
                        
    <div class="cms-item cms-collection"  data-fragment="729548">
        
        
            <div class="cms-item cms-video" data-fragment="17141380">
    <div class="c-video">
        <div class="c-video__wrapper" data-test="video-test">
            
                <div class="c-video__content" data-video="https://www.youtube.com/embed/dEsCQREWQIQ">
                    <p class="c-video__warning u-js-hide">
                        Your browser needs to have JavaScript enabled to view this video
                    </p>
                    
                </div>
            
        </div>

        
    </div>
</div>

        
            <div class="cms-item c-media c-media--stacked" data-fragment="15296978">
    
        <div class="c-media__figure">
            
                
<div class="cms-item c-image-copyright" data-fragment="13344850">
    <a href="/editorials" class="p-corner-crop">
    
        <img src="//media.springernature.com/lw450/springer-cms/rest/v1/content/13344850/data/v6" alt="Editorials"/>
    
    </a>
    
</div>


            
        </div>
    
    <div class="c-media__body">
        
            <h2 class="c-media__title u-text-md">
                
                    <a href="/editorials">Editorials &amp; Commentaries</a>
                
            </h2>
        

        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="15354334">
    
        <div class="c-media__figure">
            
                
<div class="cms-item c-image-copyright" data-fragment="15354338">
    <a href="https://ccforum.biomedcentral.com/articles/supplements/volume-21-supplement-3" >
    
        <img src="//media.springernature.com/lw450/springer-cms/rest/v1/content/15354338/data/v3" alt="New Content Item"/>
    
    </a>
    
</div>


            
        </div>
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://ccforum.biomedcentral.com/articles/supplements/volume-21-supplement-3">Future of Critical Care Medicine (FCCM) 2016</a>
                
            </h2>
        

        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="15297358">
    
        <div class="c-media__figure">
            
                
<div class="cms-item c-image-copyright" data-fragment="15297374">
    <a href="https://www.biomedcentral.com/collections/annualupdate2020" >
    
        <img src="//media.springernature.com/lw450/springer-cms/rest/v1/content/15297374/data/v5" alt="Annual update"/>
    
    </a>
    
</div>


            
        </div>
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://www.biomedcentral.com/collections/annualupdate2020">Selected articles from the Annual Update in Intensive Care and Emergency Medicine 2020</a>
                
            </h2>
        

        
    </div>
</div>

        
            
    <div class="cms-item cms-collection" id="video+abstract%3A+the+digestive+tract+as+the+origin+of+systemic+inflammation" data-fragment="12111196">
        
            <h2 class="cms-collection__title">Video Abstract: The digestive tract as the origin of systemic inflammation</h2>
        
        
            <div class="cms-item cms-video" data-fragment="12111162">
    <div class="c-video">
        <div class="c-video__wrapper" data-test="video-test">
            
                <div class="c-video__content" >
                    <p class="c-video__warning u-js-hide">
                        Your browser needs to have JavaScript enabled to view this video
                    </p>
                    
                        <script type="text/javascript" src="https://www.edge-cdn.net/videojs_1234369?playerskin&#x3D;37016"></script>
                    
                </div>
            
        </div>

        
    </div>
</div>

        
    </div>


        
            
    <div class="cms-item">
        <h2>Latest Tweets</h2>
        <div class="c-box c-box--borderless app-twitter-timeline" data-twitter-timeline>
            <a class="twitter-timeline" data-chrome="noheader" data-tweet-limit="3" href="https://twitter.com/Crit_Care"></a>
            <p class="u-mb-0 u-js-hide">
                Your browser needs to have JavaScript enabled to view this timeline
            </p>
        </div>
    </div>


        
    </div>


                    </div>
                </div>
            
        </div>
    </div>


    
        
    <div class="cms-item cms-collection cms-collection--split cms-collection--untitled" data-fragment="15297834">
        

        <div class="cms-collection__row">
            
                <div class="cms-collection__column">
                    <div class="cms-collection__column-inner">
                        
    <div class="cms-item cms-collection"  data-fragment="15297836">
        
        
            
    <div class="cms-item cms-collection" id="latest+supplements" data-fragment="15297432">
        
            <h2 class="cms-collection__title">Latest Supplements</h2>
        
        
            <div class="cms-item c-media" data-fragment="17880794">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://ccforum.biomedcentral.com/articles/supplements/volume-24-supplement-1">40th International Symposium on Intensive Care and Emergency Medicine</a>
                
            </h2>
        

        
            <p><sup>Meeting abstracts<br />Volume 24 Supplement 1<br />Brussels, Belgium | 15-18&nbsp;March 2020</sup></p>
        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="16573162">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://ccforum.biomedcentral.com/articles/supplements/volume-23-supplement-2">39th International Symposium on Intensive Care and Emergency Medicine</a>
                
            </h2>
        

        
            <p><sup>Meeting abstracts<br />Volume 23 Supplement 2<br />Brussels, Belgium | 19-22 March 2019</sup></p>
        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="15297480">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://ccforum.biomedcentral.com/articles/supplements/volume-22-supplement-1">38th International Symposium on Intensive Care and Emergency Medicine</a>
                
            </h2>
        

        
            <p><sup>Meeting abstracts<br />Volume 22 Supplement 1<br />Brussels, Belgium | 20-23 March 2018</sup></p>
        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="15297456">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://ccforum.biomedcentral.com/articles/supplements/volume-21-supplement-3">Future of Critical Care Medicine (FCCM) 2016</a>
                
            </h2>
        

        
            <p><sup>Reviews<br />Volume 21 Supplement 3</sup></p>
        
    </div>
</div>

        
            <div class="cms-item c-media c-media--stacked" data-fragment="15297430">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title u-text-md">
                
                    <a href="https://ccforum.biomedcentral.com/articles/10.1186/s13054-017-1706-1">9th International Symposium on Intensive Care and Emergency Medicine for Latin America</a>
                
            </h2>
        

        
            <p><sup>Meeting abstracts<br />Volume 21 Supplement 2<br />São Paulo, Brazil | June 14-17 2017</sup></p>
        
    </div>
</div>

        
    </div>


        
            <div id="expedited+peer+review" class="cms-item cms-article" data-fragment="10552252">
    <h2>Expedited peer review</h2>
    <div class="cms-article__body">
        
            <p>We recognise that scientifically sound, high quality manuscripts are often turned away from broad-scope "high-impact" journals based on the issue of "general interest." <em>Critical Care</em> will consider rapid publication of such manuscripts if they are submitted together with the original peer reviewer reports, letter of rejection, and a rebuttal<em>. </em>Please also mention this in your cover letter.</p><p><em>Additional peer review may be necessary and the final decision will be made by the Editor.</em></p>
        
    </div>
</div>

        
    </div>


                    </div>
                </div>
            
                <div class="cms-collection__column">
                    <div class="cms-collection__column-inner">
                        
    <div class="cms-item cms-collection"  data-fragment="15297838">
        
        
            
    <div class="cms-item cms-collection" id="thematic+series" data-fragment="15297686">
        
            <h2 class="cms-collection__title">Thematic Series</h2>
        
        
            <div class="cms-item c-media c-media--stacked" data-fragment="17461912">
    
        <div class="c-media__figure">
            
                
<div class="cms-item c-image-copyright" data-fragment="17520266">
    <a href="/new-content-item" class="p-corner-crop">
    
        <img src="//media.springernature.com/lw450/springer-cms/rest/v1/content/17520266/data/v1" alt="New Content Item"/>
    
    </a>
    
</div>


            
        </div>
    
    <div class="c-media__body">
        
            <h2 class="c-media__title u-text-md">
                
                    <a href="/new-content-item">How I...</a>
                
            </h2>
        

        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="16922840">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://www.biomedcentral.com/collections/asm">Acute Stroke Management</a>
                
            </h2>
        

        
            <p><sup>Edited by Prof Marek Mirski</sup><br /></p>
        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="16922796">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://www.biomedcentral.com/collections/influenza2009">Influenza: A Decade After the 2009 Pandemic</a>
                
            </h2>
        

        
            <p><sup>Edited by Prof Adrienne Randolph</sup></p>
        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="15963718">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://www.biomedcentral.com/collections/Vasoplegia">Vasoplegia</a>
                
            </h2>
        

        
            <p><sup>Edited by Prof Lui Forni</sup></p>
        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="15804554">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://www.biomedcentral.com/collections/CPR">CPR</a>
                
            </h2>
        

        
            <p><sup>Edited by Prof Jerry Nolan</sup></p>
        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="15297688">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://www.biomedcentral.com/collections/FutureCritCare">The future of critical care</a>
                
            </h2>
        

        
            <p><sup>Edited by Prof Jean-Louis Vincent</sup></p>
        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="15297706">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://www.biomedcentral.com/collections/PHYSCIRC">Physiology of the circulation</a>
                
            </h2>
        

        
            <p><sup>Edited by Prof Sheldon Magder</sup></p>
        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="15297714">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://www.biomedcentral.com/collections/ECHO">Echography in critically ill patients</a>
                
            </h2>
        

        
            <p><sup>Edited by Prof Daniel De Backer</sup></p>
        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="15297744">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://www.biomedcentral.com/collections/PyrexiaICU">Pyrexia in the ICU</a>
                
            </h2>
        

        
            <p><sup>Edited by Prof Lui Forni</sup></p>
        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="15297760">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://www.biomedcentral.com/collections/AKI">Acute Kidney Injury (AKI)</a>
                
            </h2>
        

        
            <p><sup>Edited by Prof Michael Joannidis</sup></p>
        
    </div>
</div>

        
            <div class="cms-item c-media" data-fragment="15297784">
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    <a href="https://www.biomedcentral.com/collections/NCRC">Neurocritical care</a>
                
            </h2>
        

        
            <p><sup>Edited by Prof Fabio Taccone</sup></p>
        
    </div>
</div>

        
    </div>


        
    </div>


                    </div>
                </div>
            
        </div>
    </div>


    
        <div class="cms-item c-media" data-fragment="15297258">
    
        <div class="c-media__figure">
            
                
<div class="cms-item c-image-copyright" data-fragment="734196">
    
        <img class="cms-image__img" src="//media.springernature.com/lw450/springer-cms/rest/v1/content/734196/data/v5" alt="Jean-Louis Vincent"/>
    
    
</div>


            
        </div>
    
    <div class="c-media__body">
        
            <h2 class="c-media__title">
                
                    Prof Jean-Louis Vincent, Editor-in-Chief
                
            </h2>
        

        
            <p>Prof Vincent is Professor of intensive care at the University of Brussels and intensivist in the Department of Intensive Care at the Erasme University Hospital in Brussels. He is President of the World Federation of Societies of Intensive and Critical Care Medicine (WFSICCM) and a Past-President of the Belgian Society of Intensive Care Medicine (SIZ), the European Society of Intensive Care Medicine (ESICM), the European Shock Society (ESS) and the International Sepsis Forum (ISF). He is member of the Royal Medical Academy of Belgium.</p>
        
    </div>
</div>

    


                    
                        <div class="u-mt-24">
                            
    <aside class="adsbox c-ad c-ad--300x250">
        <div class="c-ad__inner" >
            <p class="c-ad__label">Advertisement</p>
            <div id="div-gpt-ad-MPU1"
                 data-gpt-unitpath="/270604982/bmc/ccforum/homepage"
                 data-gpt-sizes="300x250"
                 data-gpt-targeting="pos=MPU1;pmc=H3100X,H22000;"
                 data-ad-type="MPU1">
                <noscript>
                    <a href="//pubads.g.doubleclick.net/gampad/jump?iu=/270604982/bmc/ccforum/homepage&amp;sz=300x250&amp;pos=MPU1&amp;pmc=H3100X,H22000&amp;">
                        <img data-test="gpt-advert-fallback-img"
                             src="//pubads.g.doubleclick.net/gampad/ad?iu=/270604982/bmc/ccforum/homepage&amp;sz=300x250&amp;pos=MPU1&amp;pmc=H3100X,H22000&amp;"
                             alt="Advertisement"
                             width="300"
                             height="250">
                    </a>
                </noscript>
            </div>
        </div>
    </aside>

                        </div>
                    
                </main>
                <div class="c-page-layout__side u-text-sm">
                    
        
        
                    
                    
    
        
<div class="cms-item c-image-copyright" data-fragment="728286">
    
        <img class="cms-image__img" src="//media.springernature.com/lw450/springer-cms/rest/v1/content/728286/data/v4" alt="CC logo"/>
    
    
</div>


    
        
    
    

    
        <div class="c-separator c-submit-manuscript">
            
        <a class="c-button c-button--full-width c-button--primary" href="https://www.editorialmanager.com/cric/"
           data-track="click"
           data-track-category="Journal"
           data-track-action="manuscript submission"
           data-track-label="Critical Care"
           data-test="submit-manuscript-button">Submit manuscript</a>
    
        </div>
    




    
        
    <div class="c-separator" data-fragment="693286">
        
        <ul class="c-list-group c-list-group--bordered c-list-group c-list-group--md">
            
                <li class="c-list-group__item">
                    
<a class="teaser-placement"  href="/about/editorial-board">Editorial Board</a>




                </li>
            
                <li class="c-list-group__item">
                    
<a class="teaser-placement"  href="https://www.biomedcentral.com/about/foreditors">Instructions for Editors</a>




                </li>
            
                <li class="c-list-group__item">
                    
            <a href="https://www.biomedcentral.com/add-article-alert?journalId&#x3D;13054">
                Sign up for article alerts and news from this journal
            </a>
        

                </li>
            
        </ul>
    </div>


    
        
    
        <div class="c-separator">
            <h3>Follow</h3>
            <ul class="c-social-links">
                
                    <li class="c-social-links__item">
                        <a href="https://twitter.com/Crit_Care"
                           data-track="click" data-track-category="Social Media"
                           data-track-action="Click Follow Social Media" data-track-label="Twitter">
                            <span class="u-visually-hidden">Follow us on Twitter</span>
                            <svg class="c-icon c-social-links__icon" width="24" height="24" aria-hidden="true" focusable="false">
                                <use xlink:href="#icon-twitter-bordered"></use>
                            </svg>
                        </a>
                    </li>
                
                
            </ul>
        </div>
    


    
        
    <div class="c-separator" data-fragment="15283176">
        <h3>Annual Journal Metrics</h3>
        <ul class="c-list-group c-list-group--bordered c-list-group c-list-group--md">
            
                <li class="c-list-group__item">
                    <div class="cms-item cms-article cleared" data-fragment="15283178">
    <div class="cms-article__body cleared">
        
            <p><strong>Speed</strong><br>41 days to first decision for reviewed manuscripts only<br>20 days to first decision for all manuscripts<br>81 days from submission to acceptance<br>25 days from acceptance to publication<br><br><strong>Citation Impact</strong><br>6.407&nbsp;-&nbsp;<a href="http://gateway.webofknowledge.com/gateway/Gateway.cgi?GWVersion=2&amp;SrcApp=AMR&amp;SrcAuth=SpringerNature&amp;KeyISSN=1364-8535&amp;DestApp=IC2JCR&amp;PointOfEntry=Record" target="_blank" class="is-external">2-year Impact Factor</a><br>6.946&nbsp;-&nbsp;<a href="http://gateway.webofknowledge.com/gateway/Gateway.cgi?GWVersion=2&amp;SrcApp=AMR&amp;SrcAuth=SpringerNature&amp;KeyISSN=1364-8535&amp;DestApp=IC2JCR&amp;PointOfEntry=Record" target="_blank" class="is-external">5-year Impact Factor</a><br>2.508&nbsp;- <a href="https://www.scopus.com/sourceid/29914" target="_blank" class="is-external">SNIP (</a><a href="https://www.scopus.com/sourceid/29914" target="_self" class="is-external">Source-Normalized Impact&nbsp;per Paper)</a><br>2.384&nbsp;- <a href="https://www.scopus.com/sourceid/29914" target="_blank" class="is-external">SJR (</a><a href="https://www.scopus.com/sourceid/29914" target="_self" class="is-external">SCImago Journal Rank)</a><br><br><strong>Usage&nbsp;</strong><br>6,038,456&nbsp;Downloads<br>17,452&nbsp;Altmetric Mentions</p>
        
    </div>
</div>

                </li>
            
                <li class="c-list-group__item">
                    <div class="cms-item" data-fragment="15316548">
    
    <div>
        
        <div class="u-mb-16-at-xxs u-mb-16-at-xs">
            
            
                <a href="https://www.biomedcentral.com/p/bmc-impact" class="c-button c-button--primary" data-test="teaser-button-link"> More about our metrics </a>
            
        </div>
    </div>
</div>

                </li>
            
        </ul>
    </div>


    


                    
                        
    <aside class="adsbox c-ad c-ad--160x600">
        <div class="c-ad__inner" data-component="sticky" data-test="skyscraper-ad">
            <p class="c-ad__label">Advertisement</p>
            <div id="div-gpt-ad-SKY1"
                 data-gpt-unitpath="/270604982/bmc/ccforum/homepage"
                 data-gpt-sizes="160x600"
                 data-gpt-targeting="pos=SKY1;pmc=H3100X,H22000;"
                 data-ad-type="SKY1">
                <noscript>
                    <a href="//pubads.g.doubleclick.net/gampad/jump?iu=/270604982/bmc/ccforum/homepage&amp;sz=160x600&amp;pos=SKY1&amp;pmc=H3100X,H22000&amp;">
                        <img data-test="gpt-advert-fallback-img"
                             src="//pubads.g.doubleclick.net/gampad/ad?iu=/270604982/bmc/ccforum/homepage&amp;sz=160x600&amp;pos=SKY1&amp;pmc=H3100X,H22000&amp;"
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
    <script async="async" src="https://cdn.pbgrd.com/bmc-core.js"></script>


        
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

