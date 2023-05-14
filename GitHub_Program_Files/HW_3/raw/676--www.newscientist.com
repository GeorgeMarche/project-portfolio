<!DOCTYPE html>
<html lang="en-US" >
    <head>
        <title>New Scientist | Science news and science articles from New Scientist</title>
                    <script id="iab-tcf-stub-script">
    (function() {
        var makeStub = function() {
            var TCF_LOCATOR_NAME = '__tcfapiLocator';
            var queue = [];
            var win = window;
            var cmpFrame;

            function addFrame() {
                var doc = win.document;
                var otherCMP = !!(win.frames[TCF_LOCATOR_NAME]);

                if (!otherCMP) {
                    if (doc.body) {
                        var iframe = doc.createElement('iframe');
                        iframe.style.cssText = 'display:none';
                        iframe.name = TCF_LOCATOR_NAME;
                        doc.body.appendChild(iframe);
                    } else {
                        setTimeout(addFrame, 5);
                    }
                }
                return !otherCMP;
            }

            function tcfAPIHandler() {
                var gdprApplies;
                var args = arguments;
                if (!args.length) {
                    /**
                     * shortcut to get the queue when the full CMP
                     * implementation loads; it can call tcfapiHandler()
                     * with no arguments to get the queued arguments
                     */
                    return queue;
                } else if (args[0] === 'setGdprApplies') {
                    /**
                     * shortcut to set gdprApplies if the publisher
                     * knows that they apply GDPR rules to all
                     * traffic (see the section on "What does the
                     * gdprApplies value mean" for more
                     */

                    if (args.length > 3 && parseInt(args[1], 10) === 2 && typeof args[3] === 'boolean') {
                        gdprApplies = args[3];
                        if (typeof args[2] === 'function') {
                            args[2]('set', true);
                        }
                    }
                } else if (args[0] === 'ping') {
                    /**
                     * Only supported method; give PingReturn
                     * object as response
                     */

                    var retr = {
                        gdprApplies: gdprApplies,
                        cmpLoaded: false,
                        cmpStatus: 'stub',
                    };

                    if (typeof args[2] === 'function') {
                        args[2](retr);
                    }
                } else {
                    /**
                     * some other method, just queue it for the
                     * full CMP implementation to deal with
                     */
                    queue.push(args);
                }
            }

            function postMessageEventHandler(event) {
                var msgIsString = typeof event.data === 'string';
                var json = {};

                try {
                    /**
                     * Try to parse the data from the event.  This is important
                     * to have in a try/catch because often messages may come
                     * through that are not JSON
                     */

                    if (msgIsString) {
                        json = JSON.parse(event.data);
                    } else {
                        json = event.data;
                    }

                } catch (ignore) {}

                var payload = json.__tcfapiCall;
                if (payload) {
                    window.__tcfapi(
                        payload.command,
                        payload.version,
                        function (retValue, success) {
                            var returnMsg = {
                                __tcfapiReturn: {
                                    returnValue: retValue,
                                    success: success,
                                    callId: payload.callId,
                                },
                            };

                            if (msgIsString) {
                                returnMsg = JSON.stringify(returnMsg);
                            }

                            if (event && event.source && event.source.postMessage) {
                                event.source.postMessage(returnMsg, '*');
                            }
                        },
                        payload.parameter,
                    );
                }
            }

            /**
             * Iterate up to the top window checking for an already-created
             * "__tcfapilLocator" frame on every level. If one exists already then we are
             * not the master CMP and will not queue commands.
             */
            while (win) {
                try {
                    if (win.frames[TCF_LOCATOR_NAME]) {
                        cmpFrame = win;
                        break;
                    }
                } catch (ignore) {}

                // if we're at the top and no cmpFrame
                if (win === window.top) {
                    break;
                }
                // Move up
                win = win.parent;
            }

            if (!cmpFrame) {
                // we have recur'd up the windows and have found no __tcfapiLocator frame
                addFrame();
                win.__tcfapi = tcfAPIHandler;
                win.addEventListener('message', postMessageEventHandler, false);
            }
        };

        if (typeof module !== 'undefined') {
            module.exports = makeStub;
        } else {
            makeStub();
        }
    }());
</script><script src="https://cc.cdn.civiccomputing.com/9/cookieControl-9.3.1.min.js" id="cookie-control-script"></script><script>
    var product =  'PRO';
    var apiKey =  '818b9818b27463d5144611f8ab30452927a5e596';
    var civicConfig = {};
    if (!CookieControl.geoTest(product, apiKey)["withinEU"]) {
        civicConfig = {
            apiKey: apiKey,
            product: product,
            iabCMP: false,
            excludedCountries: ['all']
        };
    } else {
        civicConfig = {
            apiKey: apiKey,
            product: product,
            logConsent: true,
            iabCMP: true,
            initialState: "CLOSED",
            closeStyle: 'button',
            statement: {
                description: "",
                name: "Privacy and cookies policy",
                url: "/privacy/",
                updated: "17/09/2020"
            },
            text: {
                closeLabel: "Save and close"
            },
            iabConfig: {
                recommendedState: {1: true, 2: true, 3: true, 4: true, 5: true},
                dropDowns: true,
                fullLegalDescriptions: false,
                saveOnlyOnClose: true
            },
            necessaryCookies: ["authentication-cookie","logout-cookie","_ga","_gid","_gat","__gads","__utma","__utmt","__utmb","__utmc","__utmz","__utmv","_gali","_chartbeat*","_chartbeat2","_chartbeat4","_chartbeat5","_cb","_cb_ls","_cb_svref"],
            position: 'RIGHT',
            theme: 'DARK',
            branding:
                {
                    fontFamily: "Titillium Web, sans-serif",
                    fontColor: "#FFF",
                    fontSizeTitle: "1.375rem",
                    fontSizeIntro: "1rem",
                    fontSizeHeaders: "1rem",
                    fontSize: "0.875rem",
                    backgroundColor: "#444444",
                    acceptBackground: "#00b3e5",
                    acceptText: "#ffffff",
                    toggleText: "#fff",
                    toggleColor: "#00b3e5",
                    toggleBackground: "#111125",
                    alertBackground: "#00b3e5",
                    buttonIcon: null,
                    buttonIconWidth: "64px",
                    buttonIconHeight: "64px",
                    removeIcon: true,
                    removeAbout: false
                },
            onLoad: function () {
                // // event listeners for changes to iab consent
                const tcfCallback = (tcData, success) => {
                    var permutiveConsent = false;
                    if (success && tcData.eventStatus === "useractioncomplete") {
                        //ref: https://iabeurope.eu/iab-europe-transparency-consent-framework-policies/#Appendix_A_Purposes_and_Features_Definitions
                        permutiveConsent = tcData.purpose.consents['1'] &&
                            tcData.purpose.consents['3'] &&
                            tcData.purpose.consents['5'] &&
                            tcData.purpose.consents['7'] &&
                            tcData.purpose.consents['8'] &&
                            tcData.purpose.consents['9'];

                        if ( tcData.purpose.consents['8'] ) {
                            // Google Optimize and CrazyEgg
                            dataLayer.push({
                                'event' : 'measure_content_performance_consent_given'
                            });
                        } else {
                            CookieControl.delete('_gaexp', '_opt_awcid', '_opt_awmid', '_opt_awgid', '_opt_awkid', '_opt_utmc', 'cean');
                        }

                        if ( tcData.purpose.consents['7'] ) {
                            // Facebook Advertising
                            dataLayer.push({
                                'event' : 'measure_ad_performance_consent_given'
                            });
                        } else {
                            if (typeof(fbq) !== "undefined") { fbq('consent', 'revoke');}
                        }

                        if ( tcData.purpose.consents['2'] && tcData.purpose.consents['3'] && tcData.purpose.consents['4'] && tcData.purpose.consents['7'] ) {
                            // CloudIq
                            dataLayer.push({
                                'event' : 'personalised_ads_and_ad_measurement_consent_given'
                            });
                        } else {
                            CookieControl.delete('ciq_country_code', 'ciq_article_views_no', 'ciq_excp4527_suppressed', 'ciq_overlay_views', 'ciq_article_views_no');
                        }
                    }

                    jQuery(document).ready(function() {
                        // User Entitlements initialization
                        var userEntitlements = new UserEntitlements(window.permutive, window.dataLayer, permutiveConsent);
                        userEntitlements.buildUserContext();
                    });
                };
                // callback executed each time consent string changes
                __tcfapi('addEventListener', 2, tcfCallback);
            }
        };
    }

    CookieControl.load( civicConfig );

</script>
        
        <meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5"><meta name="thumbnail" content="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg" /><meta name="p:domain_verify" content="c64e8f4ac4f50bca3404abba4882a79d"/><meta name="google-site-verification" content="g3dfps28FN9AWREDHbKZdxR7HO8J8CndDmvLVebFaXg" /><meta name="description" content="Science news and science articles from New Scientist" /><meta name="keywords" content="science, science news, science jobs, space, technology, physics, biology, astronomy, health, medicine, mathematics, science videos, science picture" />
            <script class="permutive-script" id="permutive-1" >
    !function(n,e,o,r,i){if(!e){e=e||{},window.permutive=e,e.q=[],e.config=i||{},e.config.projectId=o,e.config.apiKey=r,e.config.environment=e.config.environment||"production";for(var t=["addon","identify","track","trigger","query","segment","segments","ready","on","once","user","consent", "reset"],c=0;c<t.length;c++){var f=t[c];e[f]=function(n){return function(){var o=Array.prototype.slice.call(arguments,0);e.q.push({functionName:n,arguments:o})}}(f)}}}(document,window.permutive,"33e288f1-17a3-4a1f-b7ab-6d5d5187c6d0","0eea1dc1-de95-4f66-a156-626a429babef",{ "consentRequired": true });
    permutive.addon('web',{ "page":{"type":"home","paywall":false} });
    window.permutive.readyWithTimeout=function(e,i,t){var u=!1,n=function(){u||(e(),u=!0)};(t=t||1/0)!==1/0&&window.setTimeout(n,t),permutive.ready(n,i)};
</script>
<script class="permutive-script" id="permutive-2" async src="https://cdn.permutive.com/33e288f1-17a3-4a1f-b7ab-6d5d5187c6d0-web.js"></script>
<script class="permutive-script" id="permutive-3">
    window.googletag = window.googletag || {};
    window.googletag.cmd = window.googletag.cmd || [];
    window.googletag.cmd.push(function () {
        if (window.googletag.pubads().getTargeting('permutive').length === 0) {
            var kvs = window.localStorage.getItem('_pdfps');
            window.googletag.pubads().setTargeting('permutive', kvs ? JSON.parse(kvs) : []);
        }
    });
</script>


                    
    <script async src='https://securepubads.g.doubleclick.net/tag/js/gpt.js' id='gpt-script'></script>
<script type="text/javascript" src="https://sac.ayads.co/sublime/30451/prebid" id='sublime-prebid-script'></script>
<script async src='/build/js/prebid.js?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f' id='prebid-script'></script>
<script id='gpt-initializer'>var googletag = googletag || {};googletag.cmd = googletag.cmd || [];</script>
<script id='gpt-disable-inital-load'>
    googletag.cmd.push(function() {
        googletag.pubads().disableInitialLoad();
    });
</script>
<script type='text/javascript' src='/build/js/google-consent.min.js?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f' id="google-consent-script"></script>
    <script id='prebid-ad-units'>var adUnits = [{"code":"/21632812681/NewScientist/Homepage-banner","mediaTypes":{"banner":{"sizes":[[300,100],[320,50],[320,100],[728,90],[970,90],[970,250],[1800,1000]]}},"bids":[{"bidder":"sublime","params":{"zoneId":30451}},{"bidder":"emx_digital","params":{"tagid":"86160"}},{"bidder":"rubicon","params":{"accountId":"21846","siteId":"303620","zoneId":"1530236","position":"atf"}}]},{"code":"/21632812681/NewScientist/Homepage-sidebar","mediaTypes":{"banner":{"sizes":[[300,250],[300,600],[300,1050],[160,600]]}},"bids":[{"bidder":"emx_digital","params":{"tagid":"86571"}},{"bidder":"rubicon","params":{"accountId":"21846","siteId":"303620","zoneId":"1530236"}}]}];</script>
    
<script id="prebid-code-script">
    var PREBID_TIMEOUT = 800;
    var FAILSAFE_TIMEOUT = 800;
    var pbjs = pbjs || {};
    pbjs.que = pbjs.que || [];

    var viewportWidth = getViewportWidth();
    var widthSizes = getWidthSizes(viewportWidth);
    if (widthSizes.length > 0) {
        adUnits.forEach(
          function (adUnit, index, array) {
              var adUnitCode = adUnit.code;
              var code = adUnitCode.substring(adUnitCode.lastIndexOf("/") + 1);
              if (code !== 'Article-mid-editorial-video') {
                  var unitAllSizes = {"Article-banner":[[300,100],[320,50],[320,100],[728,90],[970,250],[970,90]],"Homepage-banner":[[300,100],[320,50],[320,100],[728,90],[970,90],[970,250],[1800,1000]],"Section-banner":[[300,100],[320,50],[320,100],[728,90],[970,90],[970,250],[1800,1000]],"Article-sidebar":[[300,250],[300,600],[300,1050],[160,600]],"Homepage-sidebar":[[300,250],[300,600],[300,1050],[160,600]],"Section-sidebar":[[300,250],[300,600],[300,1050],[160,600]],"Article-mid-editorial":[[300,250],[300,600]],"Homepage-mid-editorial":[[300,100],[320,50],[320,100],[300,250],[728,90],[970,250],[970,90]],"Article-mid-editorial-video":[[300,250]],"Article-footer":[[300,250]]}[code];
                  unitAllSizes.forEach(
                      function (unitSize, index, array) {
                          if (-1 !== JSON.stringify(widthSizes).indexOf(JSON.stringify(unitSize))) {
                              var ix = {
                                  "bidder": 'ix',
                                  "params":
                                      {
                                          "siteId": {"Article-banner":"429509","Article-sidebar":"429516","Article-mid-editorial":"429513","Article-mid-editorial-video":"429515","Article-footer":"429512","Homepage-banner":"429520","Homepage-sidebar":"429523","Homepage-mid-editorial":"429522","Section-banner":"429528","Section-sidebar":"429530"}[code],
                                          "size": unitSize
                                      }
                              };
                              adUnit.bids.push(ix);
                          }
                      }
                  );

                  if(-1 !== JSON.stringify(["Article-sidebar","Section-sidebar"]).indexOf(code)) {
                      var rubicon = {
                          "bidder": 'rubicon',
                          "params":
                              {
                                  'accountId': '21846',
                                  'siteId': '303620',
                                  'zoneId': '1530236',
                              }
                      };
                      if (viewportWidth >= 1024) {
                          rubicon['params']['position'] = 'atf';
                      }
                      adUnit.bids.push(rubicon);
                  }
            }
          }
        );
    }
    var prebidConfig = {};

    if (CookieControl.geoTest(product, apiKey)["withinEU"]) {
        prebidConfig.consentManagement = {
            gdpr: {
                cmpApi: 'iab',
                timeout: 8000,
                defaultGdprScope: true
            }
        };
    }

    prebidConfig.sizeConfig = [
        {
            'mediaQuery': '(min-width: 1024px)',
            'sizesSupported': {"widthMin1024":[[160,600],[300,1],[300,250],[300,600],[300,1050],[728,90],[970,90],[970,250],[1800,1000]],"width990to1023":[[300,250],[300,600],[728,90],[970,90],[970,250]],"width768to989":[[300,250],[300,600],[728,90]],"width750to767":[[300,100],[300,250],[300,600],[320,50],[320,100],[728,90]],"width320to749":[[300,100],[300,250],[300,600],[320,50],[320,100]]}['widthMin1024'],
            'labels': ['widthMin1024']
        },
        {
            'mediaQuery': '(min-width: 990px) and (max-width: 1023px)',
            'sizesSupported': {"widthMin1024":[[160,600],[300,1],[300,250],[300,600],[300,1050],[728,90],[970,90],[970,250],[1800,1000]],"width990to1023":[[300,250],[300,600],[728,90],[970,90],[970,250]],"width768to989":[[300,250],[300,600],[728,90]],"width750to767":[[300,100],[300,250],[300,600],[320,50],[320,100],[728,90]],"width320to749":[[300,100],[300,250],[300,600],[320,50],[320,100]]}['width990to1023'],
            'labels': ['width990to1023']
        },
        {
            'mediaQuery': '(min-width: 768px) and (max-width: 989px)',
            'sizesSupported': {"widthMin1024":[[160,600],[300,1],[300,250],[300,600],[300,1050],[728,90],[970,90],[970,250],[1800,1000]],"width990to1023":[[300,250],[300,600],[728,90],[970,90],[970,250]],"width768to989":[[300,250],[300,600],[728,90]],"width750to767":[[300,100],[300,250],[300,600],[320,50],[320,100],[728,90]],"width320to749":[[300,100],[300,250],[300,600],[320,50],[320,100]]}['width768to989'],
            'labels': ['width768to989']
        },
        {
            'mediaQuery': '(min-width: 750px) and (max-width: 767px)',
            'sizesSupported': {"widthMin1024":[[160,600],[300,1],[300,250],[300,600],[300,1050],[728,90],[970,90],[970,250],[1800,1000]],"width990to1023":[[300,250],[300,600],[728,90],[970,90],[970,250]],"width768to989":[[300,250],[300,600],[728,90]],"width750to767":[[300,100],[300,250],[300,600],[320,50],[320,100],[728,90]],"width320to749":[[300,100],[300,250],[300,600],[320,50],[320,100]]}['width750to767'],
            'labels': ['width750to767']
        }, {
            'mediaQuery': '(min-width: 320px) and (max-width: 749px)',
            'sizesSupported': {"widthMin1024":[[160,600],[300,1],[300,250],[300,600],[300,1050],[728,90],[970,90],[970,250],[1800,1000]],"width990to1023":[[300,250],[300,600],[728,90],[970,90],[970,250]],"width768to989":[[300,250],[300,600],[728,90]],"width750to767":[[300,100],[300,250],[300,600],[320,50],[320,100],[728,90]],"width320to749":[[300,100],[300,250],[300,600],[320,50],[320,100]]}['width320to749'],
            'labels': ['width320to749']
        },
    ];

    pbjs.que.push(function() {
        pbjs.addAdUnits(adUnits);
        pbjs.setConfig(prebidConfig);
    });

    requestBids();

        setTimeout(function() {
        if (pbjs.initAdserverSet) return;
        pbjs.initAdserverSet = true;
        googletag.cmd.push(function() {
            pbjs.que.push(function() {
                pbjs.setTargetingForGPTAsync();
                if (googleConsent) {
                    googletag.pubads().refresh();
                } else {
                    if (viewabilityService) {
                        viewabilityService.release();
                    }
                }
            });
        });
    }, FAILSAFE_TIMEOUT);

    function getViewportWidth() {
        return (window.innerWidth || document.documentElement.clientWidth);
    }

    function getWidthSizes(viewportWidth) {
        var sizeKey = '';
        if (viewportWidth >= 1024) {
            sizeKey = 'widthMin1024';
        } else if (viewportWidth >= 990 && viewportWidth < 1024) {
            sizeKey = 'width990to1023';
        } else if (viewportWidth >= 768 && viewportWidth < 990) {
            sizeKey = 'width768to989';
        } else if (viewportWidth >= 750 && viewportWidth < 768) {
            sizeKey = 'width750to767';
        } else if (viewportWidth >= 320 && viewportWidth < 750) {
            sizeKey = 'width320to749';
        }  else {
            return [];
        }

        return {"widthMin1024":[[160,600],[300,1],[300,250],[300,600],[300,1050],[728,90],[970,90],[970,250],[1800,1000]],"width990to1023":[[300,250],[300,600],[728,90],[970,90],[970,250]],"width768to989":[[300,250],[300,600],[728,90]],"width750to767":[[300,100],[300,250],[300,600],[320,50],[320,100],[728,90]],"width320to749":[[300,100],[300,250],[300,600],[320,50],[320,100]]}[sizeKey];
    }

    function requestBids() {
        pbjs.que.push(
            function() {
                var refreshableUnits = getRefreshableUnits();
                var refreshableUnitsCodes = [];
                refreshableUnits.forEach(
                    function (unit, index, array) {
                        refreshableUnitsCodes.push(unit.getAdUnitPath());
                    }
                );
                pbjs.requestBids({
                    adUnitCodes: refreshableUnitsCodes,
                    timeout: PREBID_TIMEOUT,
                    bidsBackHandler: function() {
                        pbjs.setTargetingForGPTAsync();
                    }
                });
            }
        );
    }
</script>    <script type='text/javascript' id='gpt-slot-definitions'>
    var refreshIntervalMs = 30000;
    var gptAdSlots = [];
    var bannerId = 'banner-above-nav-leader';
    var gptRefreshIntervalId = null;

    function getRefreshableUnits() {
        var refreshableUnits = [];
        if (gptAdSlots
            && gptAdSlots[0]
            && gptAdSlots[1]
        ) {
            var headerBanner = document.getElementById(gptAdSlots[0].getSlotElementId());
            var sideBannerMPU = document.getElementById(gptAdSlots[1].getSlotElementId());
            
            if (headerBanner && 'true' === headerBanner.dataset.viewable) {
                refreshableUnits.push(gptAdSlots[0]);
            }
            if (sideBannerMPU && 'true' === sideBannerMPU.dataset.viewable) {
                refreshableUnits.push(gptAdSlots[1]);
            }
        }
        return refreshableUnits;
    }

    googletag.cmd.push(function() {
        googletag.pubads().addEventListener(
            'slotOnload',
            function(e) {
                if (e.slot.getSlotElementId() === bannerId) {
                    var bannerElement = document.querySelector('.js-above-nav-banner');
                    if (bannerElement) {
                        bannerElement.classList.add('js-above-nav-banner--display');
                        var footerElement = document.querySelector('.footer');
                        if (footerElement) {
                            footerElement.classList.add('footer--pad-bottom');
                        }
                    }
                }
            }
        );
            var mapping = googletag.sizeMapping().
            addSize([320, 300], [[300, 100], [320, 50], [320, 100]]).
            addSize([750, 300], [728, 90]). // Banner Landscape tablet
            addSize([990, 300], [[970, 250], [970,90], [728,90]]).build();
            var mapping2 = googletag.sizeMapping().
            addSize([0, 0], []).
            addSize([320, 300], [300, 250]).
            addSize([1024, 300], [[300, 250],[300, 600],[300, 1050],[160, 600]]).build();
            var mapping7 = googletag.sizeMapping().
            addSize([0, 0], []).
            addSize([320, 300], [[300, 100], [320, 50], [320, 100], [300, 250]]).
            addSize([768, 300], [728, 90]).
            addSize([990, 300], [[970, 250], [970,90], [728,90]]).
            addSize([1024, 300], []).build();
                    gptAdSlots[0] = googletag.defineSlot('/21632812681/NewScientist/Homepage-banner', [[728, 90]], 'banner-above-nav-leader').defineSizeMapping(mapping).addService(googletag.pubads());
            gptAdSlots[1] = googletag.defineSlot('/21632812681/NewScientist/Homepage-sidebar', [[300, 250]], 'mpu-sidebar').defineSizeMapping(mapping2).addService(googletag.pubads());
            gptAdSlots[2] = googletag.defineOutOfPageSlot('/21632812681/NewScientist/OutOfPage', 'out-of-page-unit').addService(googletag.pubads()).setTargeting("mtfIFPath","/doubleclick/");
            gptAdSlots[3] = googletag.defineSlot('/21632812681/NewScientist/Homepage-mid-editorial', [[728, 90]], 'banner-mid-home').defineSizeMapping(mapping7).addService(googletag.pubads());

        
                    googletag.pubads().setTargeting("UserLoginStatus", "logged out");
        
        googletag.pubads().setTargeting("UserType", "no-auth");
        googletag.pubads().setTargeting("key", ["homepage","no-auth"]);
        googletag.pubads().setTargeting("url", "/");
        googletag.pubads().setTargeting("nssection", ["homepage"]);
        googletag.pubads().enableLazyLoad();
        googletag.pubads().enableSingleRequest();

        var adRefreshCallback = function() {
            var refreshableUnits = getRefreshableUnits();
            if ('visible' !== document.visibilityState) {
                                window.setTimeout(
                    adRefreshCallback,
                    refreshIntervalMs
                );
                return;
            }

            if (refreshableUnits.length > 0) {
                try {
                    requestBids();
                    if (googleConsent){
                        googletag.pubads().refresh(refreshableUnits);
                    }
                } catch(e) {
                    throw new Error('There was an issue refreshing ad slots: ' + e.message);
                }
            }

            window.setTimeout(
                adRefreshCallback,
                refreshIntervalMs
            );
        };

        gptRefreshIntervalId = window.setTimeout(
            adRefreshCallback,
            refreshIntervalMs
        );

        googletag.enableServices();
    });
</script>

                    <link rel="shortcut icon" type="image/x-icon" href="/build/images/img/layup/new-sci-favicon.ico?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" />
            <link rel="alternate" type="application/rss+xml" title="New Scientist - Home" href="https://feeds.newscientist.com/home">
            <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="/wp-includes/wlwmanifest.xml" />

                                                                
                <link rel="stylesheet" id="new-scientist-style-min-css"  href="/build/css/core.min.css?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" type='text/css' media='all' />
            
                            <link rel="canonical" href="https://www.newscientist.com/" />
            
            <link rel="apple-touch-icon" href="/build/images/img/layup/touch-icon/57x57.png?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" /><link rel="apple-touch-icon" sizes="72x72" href="/build/images/img/layup/touch-icon/72x72.png?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" /><link rel="apple-touch-icon" sizes="114x114" href="/build/images/img/layup/touch-icon/114x114.png?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" /><link rel="apple-touch-icon" sizes="144x144" href="/build/images/img/layup/touch-icon/144x144.png?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" /><link rel="apple-touch-icon" sizes="152x152" href="/build/images/img/layup/touch-icon/152x152.png?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" /><link rel="apple-touch-icon" sizes="167x167" href="/build/images/img/layup/touch-icon/167x167.png?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" /><link rel="apple-touch-icon" sizes="180x180" href="/build/images/img/layup/touch-icon/180x180.png?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" />        
            <link href='//fonts.googleapis.com/css?family=PT+Serif:400|Titillium+Web:400,700,700italic&display=swap' rel='stylesheet' type='text/css'>

            <script type="text/javascript" id="data-layer">
    dataLayer = [ {"barrierType":"None","siteSection":"Home Page","subject":"None","visitorType":"no-auth"} ];
</script>

                        <script src="/build/js/lazysizes.min.js?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" async=""></script>
<!-- Google Tag Manager (script) -->
<script>(function (w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({'gtm.start':
                new Date().getTime(), event: 'gtm.js'});
        var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
        j.async = true;
        j.src =
            '//www.googletagmanager.com/gtm.js?id=' + i + dl;
        f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-B92N');</script>
<!-- End Google Tag Manager (script) -->
<script type="text/javascript" src="/build/js/jquery.js?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f"></script>
<script type="text/javascript" src="/build/js/jquery-migrate.min.js?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f"></script>        
    <script type='application/ld+json' id="google-search-script">{"@context":"http:\/\/schema.org","@type":"WebSite","@id":"#website","url":"https:\/\/www.newscientist.com\/","name":"New Scientist","potentialAction":{"@type":"SearchAction","target":"https:\/\/www.newscientist.com\/search\/?q={search_term_string}","query-input":"required name=search_term_string"}}</script>

                        <script>
    var NS_PRIVACY_POLICY_VERSION = '20190226';
                        var NS_INSTITUTIONS_REDIRECT = true;
                var NS_INSTITUTIONS_HOSTNAME = 'institutions.newscientist.com';
</script>    </head>

    <body>
        <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-B92N" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
                    <div class="leaderboard-container js-above-nav-banner js-fix-bottom">
    <div class="banner-top-padding"></div>
    <div id="banner-above-nav-leader" class="ad-leaderboard">
        <script type='text/javascript'>
            googletag.cmd.push(function () {
                googletag.display('banner-above-nav-leader');
            });
        </script>
    </div>
    <div class="banner-close-button js-close-button">&times;</div>
</div>
        
                    

<header class="header">
            <h1 class="site-heading" aria-hidden="true">NewScientist</h1>
        <div class="header-wrapper">
        <div class="header-top">
            <div class="header-promotion">
                <h3 class="header-promotion__title"><a href="/sign-up/" class="header-promotion__title-link header-promotion__title-link--newsletter">NEWSLETTERS</a></h3><p class="header-promotion__sub-title"><a href="/sign-up/" class="header-promotion__sub-title-link">Sign up to read our regular email newsletters</a></p>
            </div>
                <div class="header-logo">
        <a href="/"
                            aria-label="Home"
                    >
                            <img src="/build/images/assets/img/logo.svg?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" alt="New Scientist"/>
                    </a>
    </div>

            <div class="header-subscribe"><a href="https://subscription.newscientist.com/packages/newscientist-2020-autumn.php?promCode=15148%2C15149&amp;packageCodes=TAP&amp;offerCode=51i%2C6M" class="header-subscribe__button">Subscribe and save <span data-geo-text="discountPercentage"></span></a></div>
        </div>
    </div>
    <div class="header-nav js-header-nav">
        <div class="header-nav__wrapper">
                <button
            class="primary-nav__button header-dropdown-toggle"
            title="Menu"
            id="primary-nav-toggle"
            data-icon="icon_hamburger"
            data-dropdown="primary-nav"
            aria-label="Menu"
            aria-haspopup="true"
            aria-owns="primary-nav-toggle"
            aria-controls="primary-nav-toggle"
            aria-expanded="false"
            tabindex="0"
                >
    <span class="primary-nav__hamburger-wrapper">
        <span class="primary-nav__hamburger"></span>
        <span class="primary-nav__hamburger"></span>
        <span class="primary-nav__hamburger"></span>
    </span>
        <span class="primary-nav__button-text">Menu</span>
    </button>

            <nav
        class="primary-nav"
                    role="navigation"
            aria-expanded="false"
            aria-labelledby="primary-nav-toggle"
        ><ul id="menu-main" class="primary-nav__list"><li class="primary-nav__item"><a href="/section/news/" class="primary-nav__link">news</a></li><li class="primary-nav__item"><a href="/podcasts/" class="primary-nav__link">podcasts</a></li><li class="primary-nav__item"><a href="/video/" class="primary-nav__link">video</a></li><li class="primary-nav__item"><a href="/subject/technology/" class="primary-nav__link">technology</a></li><li class="primary-nav__item"><a href="/subject/space/" class="primary-nav__link">space</a></li><li class="primary-nav__item"><a href="/subject/physics/" class="primary-nav__link">physics</a></li><li class="primary-nav__item"><a href="/subject/health/" class="primary-nav__link">health</a></li><li class="primary-nav__item primary-nav__item--more"><a href="#" class="primary-nav__link primary-nav__link--more">more</a><ul class="primary-nav__more-list"><li class="primary-nav__item"><a href="/subject/mind/" class="primary-nav__link">mind</a></li><li class="primary-nav__item"><a href="/subject/environment/" class="primary-nav__link">environment</a></li><li class="primary-nav__item"><a href="/crosswords/" class="primary-nav__link">crosswords</a></li></ul></li><li class="primary-nav__item primary-nav__item--secondary-link"><a href="https://shop.newscientist.com/" class="primary-nav__link">shop</a></li><li class="primary-nav__item primary-nav__item--secondary-link"><a href="/tours/" class="primary-nav__link">tours</a></li><li class="primary-nav__item primary-nav__item--secondary-link"><a href="/science-events/" class="primary-nav__link">events</a></li><li class="primary-nav__item primary-nav__item--secondary-link"><a class="primary-nav__link" data-geo-link="jobsNav" href="#">jobs</a></li><li class="primary-nav__item primary-nav__item--promotion-link"><a href="/sign-up/" class="primary-nav__link">SIGN UP TO THE DAILY NEWSLETTER</a></li></ul></nav>
            <div class="header-tools">        <a
            class="header-tools__item header-tools__login-link"
            data-icon="icon_account"
            href="/login/"
        >
            <span class="header-tools__login-icon">    <svg
            viewBox="0 0 32 32"
            class="icon"
            >
        <g>
            <path class="path1" d="M22.304 7.342c0 3.705-3.004 6.709-6.709 6.709s-6.709-3.004-6.709-6.709c0-3.705 3.004-6.709 6.709-6.709s6.709 3.004 6.709 6.709z"></path>
            <path class="path2" d="M23.146 14.139c-1.928 1.883-4.568 3.044-7.479 3.044-0.003 0-0.006 0-0.009 0-0.002 0-0.005 0-0.007 0-2.861 0-5.457-1.129-7.369-2.965-3.093 2.214-5.094 5.787-5.117 9.829v8.231h25.316v-8.228c-0.065-4.107-2.146-7.715-5.294-9.885z"></path>
        </g>
    </svg>
</span>
            <span class="header-tools__item-text">Sign In</span>
        </a>    <button class="header-tools__item header-dropdown-toggle" id="search-toggle" data-icon="icon_search" data-dropdown="header-search" aria-label="Search" aria-haspopup="true" aria-owns="search-toggle" aria-controls="search-toggle" aria-expanded="false">    <svg
            viewBox="0 0 32 32"
            class="icon"
            >
        <g>
            <path class="path1" d="M30.43 27.962l-8.392-8.386c1.609-2 2.582-4.571 2.582-7.369 0-6.519-5.285-11.804-11.804-11.804s-11.804 5.285-11.804 11.804c0 6.519 5.285 11.804 11.804 11.804 2.533 0 4.88-0.798 6.803-2.156l8.431 8.487c0.3 0.283 0.706 0.457 1.153 0.457 0.93 0 1.684-0.754 1.684-1.684 0-0.447-0.174-0.852-0.458-1.154zM4.43 12.228c0-4.645 3.766-8.411 8.411-8.411s8.411 3.766 8.411 8.411c0 4.643-3.762 8.408-8.405 8.411-4.647 0-8.414-3.765-8.418-8.411z"></path>
        </g>
    </svg>
<span class="header-tools__item-text">Search</span>
    </button>
</div>

        </div>
        <div
            class="header-search"
            aria-expanded="false"
            aria-labelledby="search-toggle"
            role="search"
            
    ><div class="header-search-inner header-nav__wrapper"><form
                    action="/search/"
                    class="header-search__form"
                                ><input type="text" name="q" class="header-search__input header-search__field" placeholder="Search"/></form><button
                    id="search-close"
                    data-icon="icon_search_close"
                    aria-label="Search Close"
                    aria-owns="search-close"
                    aria-controls="search-close"
                                ><svg viewBox="0 0 32 32"><g><path class="path1" d="M32.139 4.892l-4.335-4.335-11.171 11.165-11.171-11.165-4.335 4.335 11.171 11.171-11.171 11.165 4.335 4.342 11.171-11.171 11.171 11.171 4.335-4.342-11.171-11.165"></path></g></svg></button></div></div>
        
    </div>
</header>

        
        <main role="container" id="main-container" >
            <div class="layout__main"><div class="layout__main-content--with-sidebar"><section class="section-article-list section-article-list--hero"><div class="spancol-2-3"><div class="card card--hero"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/14175542/14-oct_daily.jpg?width=600"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/14175542/14-oct_daily.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/14175542/14-oct_daily.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/14175542/14-oct_daily.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/14175542/14-oct_daily.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/14175542/14-oct_daily.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/14175542/14-oct_daily.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/14175542/14-oct_daily.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/14175542/14-oct_daily.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/14175542/14-oct_daily.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/14175542/14-oct_daily.jpg?width=514 514w"
    sizes="(min-width: 1130px) 514px, (min-width: 1025px) calc((100vw - 352px)*0.66), (min-width: 641px) calc(66vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="A worker covers a pool table at Cafe Louvre ahead of the introduction of new coronavirus restrictions in Prague, Czech Republic"

        data-credit="Milan Jaros/Bloomberg via Getty Images"
            data-caption="A worker covers a pool table at Cafe Louvre ahead of the introduction of new coronavirus restrictions in Prague, Czech Republic"
    /></div><div class="card__image-overlay card__image-overlay--bottom opacity"><h3 class="card__legal-heading"></h3><h2 class="card__heading">Covid-19 news: New restrictions introduced in the UK and across Europe</h2></div><a href="/article/2237475-covid-19-news-new-restrictions-introduced-in-the-uk-and-across-europe/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--health"><a href="/subject/health/" class="card__eyebrow-link">
                                    Health
                    </a></div></div></div><div class="spancol-1-3--no-margin"><div class="article-supplementary-list--column"><div class="card card--supplementary"><div class="card__eyebrow-container"><div class="card__eyebrow card__eyebrow--static card__eyebrow--health"><a href="/subject/health/" class="card__eyebrow-link">
                    HEALTH</a></div></div><div class="card__content  card__content--linked"><div class="card__heading-container"><h3 class="card__legal-heading">Comment</h3><h2 class="card__heading card__heading--s">It is bad science to say covid-19 infections will create herd immunity</h2><a href="/article/2257258-it-is-bad-science-to-say-covid-19-infections-will-create-herd-immunity/" class="card__link"></a></div></div></div><div class="card card--supplementary"><div class="card__eyebrow-container"><div class="card__eyebrow card__eyebrow--static card__eyebrow--health"><a href="/subject/health/" class="card__eyebrow-link">
                    HEALTH</a></div></div><div class="card__content  card__content--linked"><div class="card__heading-container"><h3 class="card__legal-heading"></h3><h2 class="card__heading card__heading--s">The health benefits of sunlight: Can vitamin D help beat coronavirus?</h2><a href="/article/2256971-the-health-benefits-of-sunlight-can-vitamin-d-help-beat-coronavirus/" class="card__link"></a></div></div></div></div></div></section><section class="section-article-list section-article-list--three-col"><h2 class="section-article-list__title">LATEST</h2><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/14175947/gettyimages-481660603_web.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/14175947/gettyimages-481660603_web.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/14175947/gettyimages-481660603_web.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/14175947/gettyimages-481660603_web.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/14175947/gettyimages-481660603_web.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/14175947/gettyimages-481660603_web.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/14175947/gettyimages-481660603_web.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/14175947/gettyimages-481660603_web.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/14175947/gettyimages-481660603_web.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/14175947/gettyimages-481660603_web.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/14175947/gettyimages-481660603_web.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="elephants"

        data-credit="Education Images/Universal Images Group via Getty Images"
            data-caption="Elephants in Comoë National Park in northern Ivory Coast"
    /></div><h2 class="card__heading">Ivory Coast’s elephant populations are now in catastrophic decline</h2><a href="/article/2257193-ivory-coasts-elephant-populations-are-now-in-catastrophic-decline/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--environment"><a href="/subject/environment/" class="card__eyebrow-link">
                                    Environment
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/14151345/s1-1024_web.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/14151345/s1-1024_web.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/14151345/s1-1024_web.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/14151345/s1-1024_web.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/14151345/s1-1024_web.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/14151345/s1-1024_web.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/14151345/s1-1024_web.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/14151345/s1-1024_web.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/14151345/s1-1024_web.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/14151345/s1-1024_web.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/14151345/s1-1024_web.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="moon"

        data-credit="NASA"
            data-caption="Earth&#039;s magnetic field - and the moon may have had one too"
    /></div><h2 class="card__heading">The moon had a magnetic field that helped protect Earth's atmosphere</h2><a href="/article/2257286-the-moon-had-a-magnetic-field-that-helped-protect-earths-atmosphere/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--space"><a href="/subject/space/" class="card__eyebrow-link">
                                    Space
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/14131236/gettyimages-1189230494_web.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/14131236/gettyimages-1189230494_web.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/14131236/gettyimages-1189230494_web.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/14131236/gettyimages-1189230494_web.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/14131236/gettyimages-1189230494_web.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/14131236/gettyimages-1189230494_web.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/14131236/gettyimages-1189230494_web.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/14131236/gettyimages-1189230494_web.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/14131236/gettyimages-1189230494_web.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/14131236/gettyimages-1189230494_web.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/14131236/gettyimages-1189230494_web.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="reforestation"

        data-credit="Christian Ender/Getty Images"
            data-caption="A reforestation project in Brazil"
    /></div><h2 class="card__heading">Rewilding farmland in tropical regions would store vast amounts of CO2</h2><a href="/article/2257191-rewilding-farmland-in-tropical-regions-would-store-vast-amounts-of-co2/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--environment"><a href="/subject/environment/" class="card__eyebrow-link">
                                    Environment
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/14135026/gettyimages-579978111_web.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/14135026/gettyimages-579978111_web.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/14135026/gettyimages-579978111_web.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/14135026/gettyimages-579978111_web.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/14135026/gettyimages-579978111_web.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/14135026/gettyimages-579978111_web.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/14135026/gettyimages-579978111_web.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/14135026/gettyimages-579978111_web.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/14135026/gettyimages-579978111_web.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/14135026/gettyimages-579978111_web.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/14135026/gettyimages-579978111_web.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="water in desert"

        data-credit="John Lund/Getty Images"
            data-caption="There is a new way to pull water out of relatively dry air"
    /></div><h2 class="card__heading">Water could be extracted from desert air using heat from sunlight</h2><a href="/article/2257229-water-could-be-extracted-from-desert-air-using-heat-from-sunlight/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--technology"><a href="/subject/technology/" class="card__eyebrow-link">
                                    Technology
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/13162912/14-oct_room-temp-superconductivity.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/13162912/14-oct_room-temp-superconductivity.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/13162912/14-oct_room-temp-superconductivity.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/13162912/14-oct_room-temp-superconductivity.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/13162912/14-oct_room-temp-superconductivity.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/13162912/14-oct_room-temp-superconductivity.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/13162912/14-oct_room-temp-superconductivity.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/13162912/14-oct_room-temp-superconductivity.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/13162912/14-oct_room-temp-superconductivity.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/13162912/14-oct_room-temp-superconductivity.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/13162912/14-oct_room-temp-superconductivity.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Diamond anvil"

        data-credit="Adam Fenster"
            data-caption="Squeezing elements between two diamonds produces the extraordinary pressures needed for superconductivity"
    /></div><h2 class="card__heading">First room-temperature superconductor could spark energy revolution</h2><a href="/article/2256953-first-room-temperature-superconductor-could-spark-energy-revolution/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--physics"><a href="/subject/physics/" class="card__eyebrow-link">
                                    Physics
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/13210644/gettyimages-1271647512_web.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/13210644/gettyimages-1271647512_web.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/13210644/gettyimages-1271647512_web.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/13210644/gettyimages-1271647512_web.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/13210644/gettyimages-1271647512_web.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/13210644/gettyimages-1271647512_web.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/13210644/gettyimages-1271647512_web.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/13210644/gettyimages-1271647512_web.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/13210644/gettyimages-1271647512_web.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/13210644/gettyimages-1271647512_web.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/13210644/gettyimages-1271647512_web.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="How the coronavirus has impacted climate change – for good and bad"

        data-credit="Ray Chavez/MediaNews Group/The M"
            data-caption="Wildfires light the sky over the San Francisco-Oakland Bay Bridge on 9 September"
    /></div><h2 class="card__heading">How the coronavirus has impacted climate change – for good and bad</h2><a href="/article/mg24833040-900-how-the-coronavirus-has-impacted-climate-change-for-good-and-bad/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--environment"><a href="/subject/environment/" class="card__eyebrow-link">
                                    Environment
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/13230802/pug-ex5kgg_web.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/13230802/pug-ex5kgg_web.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/13230802/pug-ex5kgg_web.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/13230802/pug-ex5kgg_web.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/13230802/pug-ex5kgg_web.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/13230802/pug-ex5kgg_web.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/13230802/pug-ex5kgg_web.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/13230802/pug-ex5kgg_web.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/13230802/pug-ex5kgg_web.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/13230802/pug-ex5kgg_web.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/13230802/pug-ex5kgg_web.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Pugs and bulldogs have more eye and foot problems than other dogs"

        data-credit="Cernan Elias / Alamy"
            data-caption="Pugs and other flat-faced dogs are more likely to have eye and foot problems"
    /></div><h2 class="card__heading">Pugs and bulldogs have more eye and foot problems than other dogs</h2><a href="/article/2257132-pugs-and-bulldogs-have-more-eye-and-foot-problems-than-other-dogs/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--life"><a href="/subject/life/" class="card__eyebrow-link">
                                    Life
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/13215455/gettyimages-1228744005_web.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/13215455/gettyimages-1228744005_web.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/13215455/gettyimages-1228744005_web.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/13215455/gettyimages-1228744005_web.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/13215455/gettyimages-1228744005_web.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/13215455/gettyimages-1228744005_web.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/13215455/gettyimages-1228744005_web.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/13215455/gettyimages-1228744005_web.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/13215455/gettyimages-1228744005_web.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/13215455/gettyimages-1228744005_web.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/13215455/gettyimages-1228744005_web.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="England &amp; Wales had most excess deaths in Europe’s covid-19 first wave"

        data-credit="GEOFF CADDICK/AFP via Getty Images"
            data-caption="People in protective face coverings walk through Cardiff in September 2020 ahead of new lock-down measures taking place"
    /></div><h2 class="card__heading">England & Wales had most excess deaths in Europe’s covid-19 first wave</h2><a href="/article/2256986-england-wales-had-most-excess-deaths-in-europes-covid-19-first-wave/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--health"><a href="/subject/health/" class="card__eyebrow-link">
                                    Health
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/09140606/oct-14_robot-paint.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/09140606/oct-14_robot-paint.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/09140606/oct-14_robot-paint.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/09140606/oct-14_robot-paint.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/09140606/oct-14_robot-paint.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/09140606/oct-14_robot-paint.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/09140606/oct-14_robot-paint.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/09140606/oct-14_robot-paint.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/09140606/oct-14_robot-paint.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/09140606/oct-14_robot-paint.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/09140606/oct-14_robot-paint.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Robot painters"

        data-credit="María Santos, Georgia Institute of Technology"
            data-caption="The robots are not yet able to use real paint"
    /></div><h2 class="card__heading">Robot swarms guided by human artists could paint colourful pictures</h2><a href="/article/2256803-robot-swarms-guided-by-human-artists-could-paint-colourful-pictures/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--technology"><a href="/subject/technology/" class="card__eyebrow-link">
                                    Technology
                    </a></div></div></section><div class="leaderboard-container leaderboard-container--banner-mid-home"><div id="banner-mid-home" class="ad-leaderboard"><script type='text/javascript'>
                            googletag.cmd.push(function () {
                                googletag.display('banner-mid-home');
                            });
                        </script></div></div><section class="section-article-list section-article-list--three-col"><h2 class="section-article-list__title">IN DEPTH</h2><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/07120536/feng_zhang_-rociomontoya.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/07120536/feng_zhang_-rociomontoya.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/07120536/feng_zhang_-rociomontoya.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/07120536/feng_zhang_-rociomontoya.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/07120536/feng_zhang_-rociomontoya.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/07120536/feng_zhang_-rociomontoya.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/07120536/feng_zhang_-rociomontoya.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/07120536/feng_zhang_-rociomontoya.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/07120536/feng_zhang_-rociomontoya.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/07120536/feng_zhang_-rociomontoya.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/07120536/feng_zhang_-rociomontoya.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Feng Zhang interview: CRISPR can fight covid-19 and climate change"

        data-credit="Rocio Montoya"
        /></div><h2 class="card__heading">Feng Zhang interview: CRISPR can fight covid-19 and climate change</h2><a href="/article/mg24833030-900-feng-zhang-interview-crispr-can-fight-covid-19-and-climate-change/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--technology"><a href="/subject/technology/" class="card__eyebrow-link">
                                    Technology
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/06152741/ns_seeds_final-artwork_web.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/06152741/ns_seeds_final-artwork_web.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/06152741/ns_seeds_final-artwork_web.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/06152741/ns_seeds_final-artwork_web.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/06152741/ns_seeds_final-artwork_web.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/06152741/ns_seeds_final-artwork_web.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/06152741/ns_seeds_final-artwork_web.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/06152741/ns_seeds_final-artwork_web.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/06152741/ns_seeds_final-artwork_web.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/06152741/ns_seeds_final-artwork_web.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/06152741/ns_seeds_final-artwork_web.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Seeds review: A great podcast about seed-bank scientists under siege"

        data-credit="Gemma Hattersley"
            data-caption="Seeds is a multilayered
show with the problem of
feeding people at its heart"
    /></div><h2 class="card__heading">Seeds review: A great podcast about seed-bank scientists under siege</h2><a href="/article/mg24833030-500-seeds-review-a-great-podcast-about-seed-bank-scientists-under-siege/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--humans"><a href="/subject/humans/" class="card__eyebrow-link">
                                    Humans
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/07134231/credit_david-mcnewgetty-images_91008120_web.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/07134231/credit_david-mcnewgetty-images_91008120_web.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/07134231/credit_david-mcnewgetty-images_91008120_web.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/07134231/credit_david-mcnewgetty-images_91008120_web.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/07134231/credit_david-mcnewgetty-images_91008120_web.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/07134231/credit_david-mcnewgetty-images_91008120_web.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/07134231/credit_david-mcnewgetty-images_91008120_web.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/07134231/credit_david-mcnewgetty-images_91008120_web.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/07134231/credit_david-mcnewgetty-images_91008120_web.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/07134231/credit_david-mcnewgetty-images_91008120_web.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/07134231/credit_david-mcnewgetty-images_91008120_web.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Climate change and big tech are jeopardising the future of astronomy"

        data-credit="David McNew/Getty Images"
        /></div><h2 class="card__heading">Climate change and big tech are jeopardising the future of astronomy</h2><a href="/article/mg24833030-100-climate-change-and-big-tech-are-jeopardising-the-future-of-astronomy/" class="card__link"></a><h3 class="card__legal-heading">Comment</h3></div><div class="card__eyebrow card__eyebrow--environment"><a href="/subject/environment/" class="card__eyebrow-link">
                                    Environment
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/07155320/covid-ai.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/07155320/covid-ai.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/07155320/covid-ai.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/07155320/covid-ai.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/07155320/covid-ai.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/07155320/covid-ai.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/07155320/covid-ai.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/07155320/covid-ai.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/07155320/covid-ai.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/07155320/covid-ai.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/07155320/covid-ai.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Will robots and AI take our jobs in covid-19’s socially distanced era?"

        data-credit="Spencer Wilson"
        /></div><h2 class="card__heading">Will robots and AI take our jobs in covid-19’s socially distanced era?</h2><a href="/article/mg24833031-000-will-robots-and-ai-take-our-jobs-in-covid-19s-socially-distanced-era/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--technology"><a href="/subject/technology/" class="card__eyebrow-link">
                                    Technology
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/07170259/201010_comment.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/07170259/201010_comment.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/07170259/201010_comment.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/07170259/201010_comment.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/07170259/201010_comment.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/07170259/201010_comment.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/07170259/201010_comment.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/07170259/201010_comment.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/07170259/201010_comment.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/07170259/201010_comment.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/07170259/201010_comment.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Facebook may never get a grip of its fake news problem"

        data-credit="Michelle D&#039;Urbano"
        /></div><h2 class="card__heading">Facebook may never get a grip of its fake news problem</h2><a href="/article/mg24833032-900-facebook-may-never-get-a-grip-of-its-fake-news-problem/" class="card__link"></a><h3 class="card__legal-heading">Comment</h3></div><div class="card__eyebrow card__eyebrow--technology"><a href="/subject/technology/" class="card__eyebrow-link">
                                    Technology
                    </a></div></div><div class="card"><div class="card__content card__content--linked"><div class="card__image"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/06151951/d4pkf9_web.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/06151951/d4pkf9_web.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/10/06151951/d4pkf9_web.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/10/06151951/d4pkf9_web.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/10/06151951/d4pkf9_web.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/10/06151951/d4pkf9_web.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/10/06151951/d4pkf9_web.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/10/06151951/d4pkf9_web.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/10/06151951/d4pkf9_web.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/10/06151951/d4pkf9_web.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/10/06151951/d4pkf9_web.jpg?width=249 249w"
    sizes="(min-width: 1130px) 249px, (min-width: 1025px) calc((100vw - 352px)*0.33), (min-width: 641px) calc(33vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Stephen Hawking memoir: &#039;An iron man in a frail man&#039;s facade&#039;"

        data-credit="NG Images/Alamy"
            data-caption="Hawking said his
medical condition
helped his focus"
    /></div><h2 class="card__heading">Stephen Hawking memoir: 'An iron man in a frail man's facade'</h2><a href="/article/mg24833030-400-stephen-hawking-memoir-an-iron-man-in-a-frail-mans-facade/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--humans"><a href="/subject/humans/" class="card__eyebrow-link">
                                    Humans
                    </a></div></div></section><section class="section-article-list"><h2 class="section-article-list__title">EDITOR&#039;S CHOICE</h2><div class="card card--list"><div class="card__content card__content--linked"><div class="card__image spancol-1-6"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/09/24101850/upia_s1_unit_web1.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/09/24101850/upia_s1_unit_web1.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/09/24101850/upia_s1_unit_web1.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/09/24101850/upia_s1_unit_web1.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/09/24101850/upia_s1_unit_web1.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/09/24101850/upia_s1_unit_web1.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/09/24101850/upia_s1_unit_web1.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/09/24101850/upia_s1_unit_web1.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/09/24101850/upia_s1_unit_web1.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/09/24101850/upia_s1_unit_web1.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/09/24101850/upia_s1_unit_web1.jpg?width=117 117w"
    sizes="(min-width: 1130px) 117px, (min-width: 1025px) calc((100vw - 352px)*0.1666), (min-width: 641px) calc(17vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Utopia review: A &#039;gnarly, nasty&#039; thriller about a dystopian comic book"

        data-credit="Elizabeth Morris/Amazon Studios"
        /></div><h2 class="card__heading card__heading--s class__heading--no-eyebrow">Utopia review: A 'gnarly, nasty' thriller about a dystopian comic book</h2><a href="/article/mg24733010-400-utopia-review-a-gnarly-nasty-thriller-about-a-dystopian-comic-book/" class="card__link"></a></div></div><div class="card card--list"><div class="card__content card__content--linked"><div class="card__image spancol-1-6"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/09/22143646/featured-image-perseverance.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/09/22143646/featured-image-perseverance.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/09/22143646/featured-image-perseverance.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/09/22143646/featured-image-perseverance.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/09/22143646/featured-image-perseverance.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/09/22143646/featured-image-perseverance.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/09/22143646/featured-image-perseverance.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/09/22143646/featured-image-perseverance.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/09/22143646/featured-image-perseverance.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/09/22143646/featured-image-perseverance.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/09/22143646/featured-image-perseverance.jpg?width=117 117w"
    sizes="(min-width: 1130px) 117px, (min-width: 1025px) calc((100vw - 352px)*0.1666), (min-width: 641px) calc(17vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Meet NASA&#039;s latest Mars Rover: Will Perseverance find life in 2021?"

            data-caption="Perseverance - Science with Sam"
    /></div><h2 class="card__heading card__heading--s class__heading--no-eyebrow">Meet NASA's latest Mars Rover: Will Perseverance find life in 2021?</h2><a href="/article/2254987-meet-nasas-latest-mars-rover-will-perseverance-find-life-in-2021/" class="card__link"></a></div></div><div class="card card--list"><div class="card__content card__content--linked"><div class="card__image spancol-1-6"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/09/15143754/microbiome_09.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/09/15143754/microbiome_09.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/09/15143754/microbiome_09.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/09/15143754/microbiome_09.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/09/15143754/microbiome_09.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/09/15143754/microbiome_09.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/09/15143754/microbiome_09.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/09/15143754/microbiome_09.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/09/15143754/microbiome_09.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/09/15143754/microbiome_09.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/09/15143754/microbiome_09.jpg?width=117 117w"
    sizes="(min-width: 1130px) 117px, (min-width: 1025px) calc((100vw - 352px)*0.1666), (min-width: 641px) calc(17vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Science with Sam describes the microbiome"

        data-credit="David Stock"
            data-caption="Science with Sam describes the microbiome"
    /></div><h2 class="card__heading card__heading--s">The microbiome: How gut bacteria regulate our health</h2><a href="/article/2254471-the-microbiome-how-gut-bacteria-regulate-our-health/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--health"><a href="/subject/health/" class="card__eyebrow-link">
                                    Health
                    </a></div></div><div class="card card--list"><div class="card__content card__content--linked"><div class="card__image spancol-1-6"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/09/01151428/thumbnail_multiverse_contents.jpg?width=300"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/09/01151428/thumbnail_multiverse_contents.jpg?width=100 100w, https://images.newscientist.com/wp-content/uploads/2020/09/01151428/thumbnail_multiverse_contents.jpg?width=200 200w, https://images.newscientist.com/wp-content/uploads/2020/09/01151428/thumbnail_multiverse_contents.jpg?width=249 249w, https://images.newscientist.com/wp-content/uploads/2020/09/01151428/thumbnail_multiverse_contents.jpg?width=300 300w, https://images.newscientist.com/wp-content/uploads/2020/09/01151428/thumbnail_multiverse_contents.jpg?width=400 400w, https://images.newscientist.com/wp-content/uploads/2020/09/01151428/thumbnail_multiverse_contents.jpg?width=500 500w, https://images.newscientist.com/wp-content/uploads/2020/09/01151428/thumbnail_multiverse_contents.jpg?width=600 600w, https://images.newscientist.com/wp-content/uploads/2020/09/01151428/thumbnail_multiverse_contents.jpg?width=700 700w, https://images.newscientist.com/wp-content/uploads/2020/09/01151428/thumbnail_multiverse_contents.jpg?width=800 800w, https://images.newscientist.com/wp-content/uploads/2020/09/01151428/thumbnail_multiverse_contents.jpg?width=117 117w"
    sizes="(min-width: 1130px) 117px, (min-width: 1025px) calc((100vw - 352px)*0.1666), (min-width: 641px) calc(17vw - 30px), calc(100vw - 30px)"
    class="image lazyload "
    alt="Science with Sam - The Multiverse"

        data-credit="Dave Stoc"
            data-caption="Science with Sam - The Multiverse"
    /></div><h2 class="card__heading card__heading--s">Science with Sam: Is our reality just one part of a multiverse?</h2><a href="/article/2253294-science-with-sam-is-our-reality-just-one-part-of-a-multiverse/" class="card__link"></a></div><div class="card__eyebrow card__eyebrow--physics"><a href="/subject/physics/" class="card__eyebrow-link">
                                    Physics
                    </a></div></div></section></div><div class="layout__sidebar"><div class="layout__sidebar-group"><div class="section-thisweek"><div class="section-heading"><h3><a href="/issue/3304/">THIS WEEK</a></h3></div><div class="section-thisweek__content"><div class="section-thisweek__cover"><a href="/issue/3304/"><img
    src="https://images.newscientist.com/wp-content/uploads/2015/08/ns-logo-for-featured-image.jpg?width=800"
    data-src="https://images.newscientist.com/wp-content/uploads/2020/10/14175857/nsc_171020_301.jpg?width=600&alt=New+Scientist+issue+3304+cover"
    data-srcset="https://images.newscientist.com/wp-content/uploads/2020/10/14175857/nsc_171020_301.jpg?width=100&alt=New+Scientist+issue+3304+cover 100w, https://images.newscientist.com/wp-content/uploads/2020/10/14175857/nsc_171020_301.jpg?width=200&alt=New+Scientist+issue+3304+cover 200w, https://images.newscientist.com/wp-content/uploads/2020/10/14175857/nsc_171020_301.jpg?width=249&alt=New+Scientist+issue+3304+cover 249w, https://images.newscientist.com/wp-content/uploads/2020/10/14175857/nsc_171020_301.jpg?width=300&alt=New+Scientist+issue+3304+cover 300w, https://images.newscientist.com/wp-content/uploads/2020/10/14175857/nsc_171020_301.jpg?width=400&alt=New+Scientist+issue+3304+cover 400w, https://images.newscientist.com/wp-content/uploads/2020/10/14175857/nsc_171020_301.jpg?width=500&alt=New+Scientist+issue+3304+cover 500w, https://images.newscientist.com/wp-content/uploads/2020/10/14175857/nsc_171020_301.jpg?width=600&alt=New+Scientist+issue+3304+cover 600w, https://images.newscientist.com/wp-content/uploads/2020/10/14175857/nsc_171020_301.jpg?width=700&alt=New+Scientist+issue+3304+cover 700w, https://images.newscientist.com/wp-content/uploads/2020/10/14175857/nsc_171020_301.jpg?width=800&alt=New+Scientist+issue+3304+cover 800w, https://images.newscientist.com/wp-content/uploads/2020/10/14175857/nsc_171020_301.jpg?width=145&alt=New+Scientist+issue+3304+cover 145w"
    sizes="(min-width: 1130px) 145px, (min-width: 1025px) 145px, (min-width: 641px) calc(25vw - 30px), calc(50vw - 30px)"
    class="image lazyload "
    alt="New Scientist Default Image"

        /></a></div><div class="section-thisweek__links"><a class="subscribe-link" href="/issues/">PAST ISSUES</a><a class="subscribe-link subscribe-link--buy" href="https://subscription.newscientist.com/packages/newscientist-2020-autumn.php?promCode=15183%2C15182&amp;packageCodes=TAP&amp;offerCode=6M%2C51i" rel="nofollow">GIVE A GIFT</a><a class="subscribe-link" href="/app-download/">GET THE APP</a><a class="subscribe-link" href="https://subscribe.newscientist.com/myaccount/renewal.aspx?intcmp=RENEW-homepage-cover">RENEW</a></div></div></div><div class="section-top-content"><div class="section-top-content__tabs"><button class="section-top-content__button  section-top-content__button--active" data-toggle="Trending">Trending</button><button class="section-top-content__button" data-toggle="Latest">Latest</button><button class="section-top-content__button" data-toggle="Video">Video</button><button class="section-top-content__button" data-toggle="Free">Free</button></div><div id="Trending" class="section-top-content__content section-top-content__content--active"><ol><li><a href="https://www.newscientist.com/article/2256822-microwaving-plastic-waste-can-generate-clean-hydrogen/" rel="bookmark">Microwaving plastic waste can generate clean hydrogen</a></li><li><a href="https://www.newscientist.com/article/2256971-the-health-benefits-of-sunlight-can-vitamin-d-help-beat-coronavirus/" rel="bookmark">The health benefits of sunlight: Can vitamin D help beat coronavirus?</a></li><li><a href="https://www.newscientist.com/article/2256838-implanting-beef-cattle-embryos-in-dairy-cows-makes-them-more-lucrative/" rel="bookmark">Implanting beef cattle embryos in dairy cows makes them more lucrative</a></li><li><a href="https://www.newscientist.com/article/2256974-some-animals-may-use-their-penis-bone-to-scoop-out-a-rivals-sperm/" rel="bookmark">Some animals may use their penis bone to scoop out a rival's sperm</a></li><li><a href="https://www.newscientist.com/article/2256986-england-wales-had-most-excess-deaths-in-europes-covid-19-first-wave/" rel="bookmark">England & Wales had most excess deaths in Europe’s covid-19 first wave</a></li></ol></div><div id="Latest" class="section-top-content__content"><ol><li><a href="https://www.newscientist.com/article/2237475-covid-19-news-new-restrictions-introduced-in-the-uk-and-across-europe/" rel="bookmark">Covid-19 news: New restrictions introduced in the UK and across Europe</a></li><li><a href="https://www.newscientist.com/article/2257229-water-could-be-extracted-from-desert-air-using-heat-from-sunlight/" rel="bookmark">Water could be extracted from desert air using heat from sunlight</a></li><li><a href="https://www.newscientist.com/article/2256953-first-room-temperature-superconductor-could-spark-energy-revolution/" rel="bookmark">First room-temperature superconductor could spark energy revolution</a></li><li><a href="https://www.newscientist.com/article/2257191-rewilding-farmland-in-tropical-regions-would-store-vast-amounts-of-co2/" rel="bookmark">Rewilding farmland in tropical regions would store vast amounts of CO2</a></li><li><a href="https://www.newscientist.com/article/2257258-it-is-bad-science-to-say-covid-19-infections-will-create-herd-immunity/" rel="bookmark">It is bad science to say covid-19 infections will create herd immunity</a></li></ol></div><div id="Video" class="section-top-content__content"><ol><li><a href="https://www.newscientist.com/video/2257004-the-health-benefits-of-sunlight-can-vitamin-d-help-beat-covid-19/" rel="bookmark">The health benefits of sunlight: Can vitamin D help beat covid-19?</a></li><li><a href="https://www.newscientist.com/video/2256338-the-search-for-the-origin-of-life-from-panspermia-to-primordial-soup/" rel="bookmark">The search for the origin of life: From panspermia to primordial soup</a></li><li><a href="https://www.newscientist.com/video/2255654-the-immune-system-can-you-improve-your-immune-age/" rel="bookmark">The immune system: can you improve your immune age?</a></li><li><a href="https://www.newscientist.com/video/2255010-meet-nasas-latest-mars-rover-will-perseverance-find-life-in-2021/" rel="bookmark">Meet NASA's latest Mars Rover: Will Perseverance find life in 2021?</a></li><li><a href="https://www.newscientist.com/video/2254490-the-microbiome-how-bacteria-regulate-your-health-science-with-sam/" rel="bookmark">The microbiome: How bacteria regulate your health. Science with Sam</a></li></ol></div><div id="Free" class="section-top-content__content"><ol><li><a href="https://www.newscientist.com/article/2237475-covid-19-news-new-restrictions-introduced-in-the-uk-and-across-europe/" rel="bookmark">Covid-19 news: New restrictions introduced in the UK and across Europe</a></li><li><a href="https://www.newscientist.com/article/2257229-water-could-be-extracted-from-desert-air-using-heat-from-sunlight/" rel="bookmark">Water could be extracted from desert air using heat from sunlight</a></li><li><a href="https://www.newscientist.com/article/2256953-first-room-temperature-superconductor-could-spark-energy-revolution/" rel="bookmark">First room-temperature superconductor could spark energy revolution</a></li><li><a href="https://www.newscientist.com/article/2257191-rewilding-farmland-in-tropical-regions-would-store-vast-amounts-of-co2/" rel="bookmark">Rewilding farmland in tropical regions would store vast amounts of CO2</a></li><li><a href="https://www.newscientist.com/article/2257258-it-is-bad-science-to-say-covid-19-infections-will-create-herd-immunity/" rel="bookmark">It is bad science to say covid-19 infections will create herd immunity</a></li></ol></div></div></div><section class="mpu-container js-sticky-homepage-ad"><div id="mpu-sidebar" class="mpu"><h5>Advertisement</h5><script type='text/javascript'>
                            googletag.cmd.push(function () {
                                googletag.display('mpu-sidebar');
                            });
                        </script></div></section></div></div>        </main>

                    <footer class="footer">
    <div class="footer__wrapper">
                    <div class="footer-section"><div class="footer-newsletter"><h3 class="footer__heading">Sign up to our newsletters</h3><form id="signup-form" class="signup-form" action="/sign-up/" method="POST"><input type="hidden" name="newsletter" value="true"><input type="hidden" name="disable_errors" value="true"><label for="signup-email" class="signup-form__label">Enter your email address to get started</label><input type="email" name="sign-up-list[email]" id="signup-email" class="signup-form__input" placeholder="Your email" required="required" ><input type="submit" class="signup-form__button" value="Sign up"></form></div></div>
                <nav class="footer-nav footer-nav--border"><ul><li class="footer-nav__item"><a href="/contact-us/" class="footer-nav__item">Contact us</a></li><li class="footer-nav__item"><a href="/coronavirus-customer-service-update/" class="footer-nav__item">Coronavirus: customer update</a></li><li class="footer-nav__item"><a href="/help/" class="footer-nav__item">Help</a></li><li class="footer-nav__item"><a href="/about/" class="footer-nav__item">About us</a></li><li class="footer-nav__item"><a href="/privacy/" class="footer-nav__item">Privacy & cookies</a></li><li class="footer-nav__item"><a href="#" onclick="CookieControl.open()" class="footer-nav__item">Cookie preferences</a></li><li class="footer-nav__item"><a href="/terms/" class="footer-nav__item">Terms & conditions</a></li></ul></nav><nav class="footer-nav"><ul><li class="footer-nav__item"><a href="https://experience.newscientist.com/advertise/" class="footer-nav__item">Advertise</a></li><li class="footer-nav__item"><a href="/freelancers/" class="footer-nav__item">Write for us</a></li><li class="footer-nav__item"><a href="/science-events/" class="footer-nav__item">Events</a></li><li class="footer-nav__item"><a class="footer-nav__item" href="#" data-geo-link="jobsFooter">Science jobs</a></li><li class="footer-nav__item"><a href="/in216-syndication-information/" class="footer-nav__item">Syndication</a></li><li class="footer-nav__item"><a href="/rss-feeds/" class="footer-nav__item">RSS feeds</a></li></ul></nav><nav class="footer-nav"><ul><li class="footer-nav__item"><a href="https://subscription.newscientist.com/packages/newscientist-2020-autumn.php?promCode=15165%2C15164&amp;packageCodes=TAP&amp;offerCode=6M%2C51i" class="footer-nav__item">Gift subscriptions</a></li><li class="footer-nav__item"><a href="/subscribe/studentdiscount/" class="footer-nav__item">Student subscriptions</a></li><li class="footer-nav__item"><a href="https://landing.newscientist.com/educational-access/" class="footer-nav__item">Educational subscriptions</a></li><li class="footer-nav__item"><a href="https://landing.newscientist.com/corporate-access/" class="footer-nav__item">Corporate subscriptions</a></li></ul></nav>
        <div class="footer-section footer-section--center">
            <div class="footer-apps"><h3 class="footer__sub-heading footer__sub-heading--capitalize">Get the app</h3><div id="iosapp" class="footer-app-button"><a href="#" data-geo-link="ios" target="_blank"><svg version="1.1" id="US_UK_Download_on_the" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                 x="0px" y="0px" width="110px" height="33px" viewBox="0 0 135 40" enable-background="new 0 0 135 40" xml:space="preserve"><g><path fill="#A6A6A6" d="M130.197,40H4.729C2.122,40,0,37.872,0,35.267V4.726C0,2.12,2.122,0,4.729,0h125.468
		C132.803,0,135,2.12,135,4.726v30.541C135,37.872,132.803,40,130.197,40L130.197,40z"/><path d="M134.032,35.268c0,2.116-1.714,3.83-3.834,3.83H4.729c-2.119,0-3.839-1.714-3.839-3.83V4.725
		c0-2.115,1.72-3.835,3.839-3.835h125.468c2.121,0,3.834,1.72,3.834,3.835L134.032,35.268L134.032,35.268z"/><g><g><path fill="#FFFFFF" d="M30.128,19.784c-0.029-3.223,2.639-4.791,2.761-4.864c-1.511-2.203-3.853-2.504-4.676-2.528
				c-1.967-0.207-3.875,1.177-4.877,1.177c-1.022,0-2.565-1.157-4.228-1.123c-2.14,0.033-4.142,1.272-5.24,3.196
				c-2.266,3.923-0.576,9.688,1.595,12.859c1.086,1.553,2.355,3.287,4.016,3.226c1.625-0.067,2.232-1.036,4.193-1.036
				c1.943,0,2.513,1.036,4.207,0.997c1.744-0.028,2.842-1.56,3.89-3.127c1.255-1.78,1.759-3.533,1.779-3.623
				C33.507,24.924,30.161,23.647,30.128,19.784z"/><path fill="#FFFFFF" d="M26.928,10.306c0.874-1.093,1.472-2.58,1.306-4.089c-1.265,0.056-2.847,0.875-3.758,1.944
				c-0.806,0.942-1.526,2.486-1.34,3.938C24.557,12.205,26.016,11.382,26.928,10.306z"/></g></g><g><path fill="#FFFFFF" d="M53.645,31.504h-2.271l-1.244-3.909h-4.324l-1.185,3.909h-2.211l4.284-13.308h2.646L53.645,31.504z
			 M49.755,25.955L48.63,22.48c-0.119-0.355-0.342-1.191-0.671-2.507h-0.04c-0.131,0.566-0.342,1.402-0.632,2.507l-1.105,3.475
			H49.755z"/><path fill="#FFFFFF" d="M64.662,26.588c0,1.632-0.441,2.922-1.323,3.869c-0.79,0.843-1.771,1.264-2.942,1.264
			c-1.264,0-2.172-0.454-2.725-1.362h-0.04v5.055h-2.132V25.067c0-1.026-0.027-2.079-0.079-3.159h1.875l0.119,1.521h0.04
			c0.711-1.146,1.79-1.718,3.238-1.718c1.132,0,2.077,0.447,2.833,1.342C64.284,23.949,64.662,25.127,64.662,26.588z M62.49,26.666
			c0-0.934-0.21-1.704-0.632-2.31c-0.461-0.632-1.08-0.948-1.856-0.948c-0.526,0-1.004,0.176-1.431,0.523
			c-0.428,0.35-0.708,0.807-0.839,1.373c-0.066,0.264-0.099,0.48-0.099,0.65v1.6c0,0.698,0.214,1.287,0.642,1.768
			s0.984,0.721,1.668,0.721c0.803,0,1.428-0.31,1.875-0.928C62.266,28.496,62.49,27.68,62.49,26.666z"/><path fill="#FFFFFF" d="M75.699,26.588c0,1.632-0.441,2.922-1.324,3.869c-0.789,0.843-1.77,1.264-2.941,1.264
			c-1.264,0-2.172-0.454-2.724-1.362H68.67v5.055h-2.132V25.067c0-1.026-0.027-2.079-0.079-3.159h1.875l0.119,1.521h0.04
			c0.71-1.146,1.789-1.718,3.238-1.718c1.131,0,2.076,0.447,2.834,1.342C75.32,23.949,75.699,25.127,75.699,26.588z M73.527,26.666
			c0-0.934-0.211-1.704-0.633-2.31c-0.461-0.632-1.078-0.948-1.855-0.948c-0.527,0-1.004,0.176-1.432,0.523
			c-0.428,0.35-0.707,0.807-0.838,1.373c-0.065,0.264-0.099,0.48-0.099,0.65v1.6c0,0.698,0.214,1.287,0.64,1.768
			c0.428,0.48,0.984,0.721,1.67,0.721c0.803,0,1.428-0.31,1.875-0.928C73.303,28.496,73.527,27.68,73.527,26.666z"/><path fill="#FFFFFF" d="M88.039,27.772c0,1.132-0.393,2.053-1.182,2.764c-0.867,0.777-2.074,1.165-3.625,1.165
			c-1.432,0-2.58-0.276-3.449-0.829l0.494-1.777c0.936,0.566,1.963,0.85,3.082,0.85c0.803,0,1.428-0.182,1.877-0.544
			c0.447-0.362,0.67-0.848,0.67-1.454c0-0.54-0.184-0.995-0.553-1.364c-0.367-0.369-0.98-0.712-1.836-1.029
			c-2.33-0.869-3.494-2.142-3.494-3.816c0-1.094,0.408-1.991,1.225-2.689c0.814-0.699,1.9-1.048,3.258-1.048
			c1.211,0,2.217,0.211,3.02,0.632l-0.533,1.738c-0.75-0.408-1.598-0.612-2.547-0.612c-0.75,0-1.336,0.185-1.756,0.553
			c-0.355,0.329-0.533,0.73-0.533,1.205c0,0.526,0.203,0.961,0.611,1.303c0.355,0.316,1,0.658,1.936,1.027
			c1.145,0.461,1.986,1,2.527,1.618C87.77,26.081,88.039,26.852,88.039,27.772z"/><path fill="#FFFFFF" d="M95.088,23.508h-2.35v4.659c0,1.185,0.414,1.777,1.244,1.777c0.381,0,0.697-0.033,0.947-0.099l0.059,1.619
			c-0.42,0.157-0.973,0.236-1.658,0.236c-0.842,0-1.5-0.257-1.975-0.77c-0.473-0.514-0.711-1.376-0.711-2.587v-4.837h-1.4v-1.6h1.4
			v-1.757l2.094-0.632v2.389h2.35V23.508z"/><path fill="#FFFFFF" d="M105.691,26.627c0,1.475-0.422,2.686-1.264,3.633c-0.883,0.975-2.055,1.461-3.516,1.461
			c-1.408,0-2.529-0.467-3.365-1.401s-1.254-2.113-1.254-3.534c0-1.487,0.43-2.705,1.293-3.652c0.861-0.948,2.023-1.422,3.484-1.422
			c1.408,0,2.541,0.467,3.396,1.402C105.283,24.021,105.691,25.192,105.691,26.627z M103.479,26.696
			c0-0.885-0.189-1.644-0.572-2.277c-0.447-0.766-1.086-1.148-1.914-1.148c-0.857,0-1.508,0.383-1.955,1.148
			c-0.383,0.634-0.572,1.405-0.572,2.317c0,0.885,0.189,1.644,0.572,2.276c0.461,0.766,1.105,1.148,1.936,1.148
			c0.814,0,1.453-0.39,1.914-1.168C103.281,28.347,103.479,27.58,103.479,26.696z"/><path fill="#FFFFFF" d="M112.621,23.783c-0.211-0.039-0.436-0.059-0.672-0.059c-0.75,0-1.33,0.283-1.738,0.85
			c-0.355,0.5-0.533,1.132-0.533,1.895v5.035h-2.131l0.02-6.574c0-1.106-0.027-2.113-0.08-3.021h1.857l0.078,1.836h0.059
			c0.225-0.631,0.58-1.139,1.066-1.52c0.475-0.343,0.988-0.514,1.541-0.514c0.197,0,0.375,0.014,0.533,0.039V23.783z"/><path fill="#FFFFFF" d="M122.156,26.252c0,0.382-0.025,0.704-0.078,0.967h-6.396c0.025,0.948,0.334,1.673,0.928,2.173
			c0.539,0.447,1.236,0.671,2.092,0.671c0.947,0,1.811-0.151,2.588-0.454l0.334,1.48c-0.908,0.396-1.98,0.593-3.217,0.593
			c-1.488,0-2.656-0.438-3.506-1.313c-0.848-0.875-1.273-2.05-1.273-3.524c0-1.447,0.395-2.652,1.186-3.613
			c0.828-1.026,1.947-1.539,3.355-1.539c1.383,0,2.43,0.513,3.141,1.539C121.873,24.047,122.156,25.055,122.156,26.252z
			 M120.123,25.699c0.014-0.632-0.125-1.178-0.414-1.639c-0.369-0.593-0.936-0.889-1.699-0.889c-0.697,0-1.264,0.289-1.697,0.869
			c-0.355,0.461-0.566,1.014-0.631,1.658H120.123z"/></g><g><g><path fill="#FFFFFF" d="M49.05,10.009c0,1.177-0.353,2.063-1.058,2.658c-0.653,0.549-1.581,0.824-2.783,0.824
				c-0.596,0-1.106-0.026-1.533-0.078V6.982c0.557-0.09,1.157-0.136,1.805-0.136c1.145,0,2.008,0.249,2.59,0.747
				C48.723,8.156,49.05,8.961,49.05,10.009z M47.945,10.038c0-0.763-0.202-1.348-0.606-1.756c-0.404-0.407-0.994-0.611-1.771-0.611
				c-0.33,0-0.611,0.022-0.844,0.068v4.889c0.129,0.02,0.365,0.029,0.708,0.029c0.802,0,1.421-0.223,1.857-0.669
				S47.945,10.892,47.945,10.038z"/><path fill="#FFFFFF" d="M54.909,11.037c0,0.725-0.207,1.319-0.621,1.785c-0.434,0.479-1.009,0.718-1.727,0.718
				c-0.692,0-1.243-0.229-1.654-0.689c-0.41-0.459-0.615-1.038-0.615-1.736c0-0.73,0.211-1.329,0.635-1.794s0.994-0.698,1.712-0.698
				c0.692,0,1.248,0.229,1.669,0.688C54.708,9.757,54.909,10.333,54.909,11.037z M53.822,11.071c0-0.435-0.094-0.808-0.281-1.119
				c-0.22-0.376-0.533-0.564-0.94-0.564c-0.421,0-0.741,0.188-0.961,0.564c-0.188,0.311-0.281,0.69-0.281,1.138
				c0,0.435,0.094,0.808,0.281,1.119c0.227,0.376,0.543,0.564,0.951,0.564c0.4,0,0.714-0.191,0.94-0.574
				C53.725,11.882,53.822,11.506,53.822,11.071z"/><path fill="#FFFFFF" d="M62.765,8.719l-1.475,4.714h-0.96l-0.611-2.047c-0.155-0.511-0.281-1.019-0.379-1.523h-0.019
				c-0.091,0.518-0.217,1.025-0.379,1.523l-0.649,2.047h-0.971l-1.387-4.714h1.077l0.533,2.241c0.129,0.53,0.235,1.035,0.32,1.513
				h0.019c0.078-0.394,0.207-0.896,0.389-1.503l0.669-2.25h0.854l0.641,2.202c0.155,0.537,0.281,1.054,0.378,1.552h0.029
				c0.071-0.485,0.178-1.002,0.32-1.552l0.572-2.202H62.765z"/><path fill="#FFFFFF" d="M68.198,13.433H67.15v-2.7c0-0.832-0.316-1.248-0.95-1.248c-0.311,0-0.562,0.114-0.757,0.343
				c-0.193,0.229-0.291,0.499-0.291,0.808v2.796h-1.048v-3.366c0-0.414-0.013-0.863-0.038-1.349h0.921l0.049,0.737h0.029
				c0.122-0.229,0.304-0.418,0.543-0.569c0.284-0.176,0.602-0.265,0.95-0.265c0.44,0,0.806,0.142,1.097,0.427
				c0.362,0.349,0.543,0.87,0.543,1.562V13.433z"/><path fill="#FFFFFF" d="M71.088,13.433h-1.047V6.556h1.047V13.433z"/><path fill="#FFFFFF" d="M77.258,11.037c0,0.725-0.207,1.319-0.621,1.785c-0.434,0.479-1.01,0.718-1.727,0.718
				c-0.693,0-1.244-0.229-1.654-0.689c-0.41-0.459-0.615-1.038-0.615-1.736c0-0.73,0.211-1.329,0.635-1.794s0.994-0.698,1.711-0.698
				c0.693,0,1.248,0.229,1.67,0.688C77.057,9.757,77.258,10.333,77.258,11.037z M76.17,11.071c0-0.435-0.094-0.808-0.281-1.119
				c-0.219-0.376-0.533-0.564-0.939-0.564c-0.422,0-0.742,0.188-0.961,0.564c-0.188,0.311-0.281,0.69-0.281,1.138
				c0,0.435,0.094,0.808,0.281,1.119c0.227,0.376,0.543,0.564,0.951,0.564c0.4,0,0.713-0.191,0.939-0.574
				C76.074,11.882,76.17,11.506,76.17,11.071z"/><path fill="#FFFFFF" d="M82.33,13.433h-0.941l-0.078-0.543h-0.029c-0.322,0.433-0.781,0.65-1.377,0.65
				c-0.445,0-0.805-0.143-1.076-0.427c-0.246-0.258-0.369-0.579-0.369-0.96c0-0.576,0.24-1.015,0.723-1.319
				c0.482-0.304,1.16-0.453,2.033-0.446V10.3c0-0.621-0.326-0.931-0.979-0.931c-0.465,0-0.875,0.117-1.229,0.349l-0.213-0.688
				c0.438-0.271,0.979-0.407,1.617-0.407c1.232,0,1.85,0.65,1.85,1.95v1.736C82.262,12.78,82.285,13.155,82.33,13.433z
				 M81.242,11.813v-0.727c-1.156-0.02-1.734,0.297-1.734,0.95c0,0.246,0.066,0.43,0.201,0.553c0.135,0.123,0.307,0.184,0.512,0.184
				c0.23,0,0.445-0.073,0.641-0.218c0.197-0.146,0.318-0.331,0.363-0.558C81.236,11.946,81.242,11.884,81.242,11.813z"/><path fill="#FFFFFF" d="M88.285,13.433h-0.93l-0.049-0.757h-0.029c-0.297,0.576-0.803,0.864-1.514,0.864
				c-0.568,0-1.041-0.223-1.416-0.669s-0.562-1.025-0.562-1.736c0-0.763,0.203-1.381,0.611-1.853c0.395-0.44,0.879-0.66,1.455-0.66
				c0.633,0,1.076,0.213,1.328,0.64h0.02V6.556h1.049v5.607C88.248,12.622,88.26,13.045,88.285,13.433z M87.199,11.445v-0.786
				c0-0.136-0.01-0.246-0.029-0.33c-0.059-0.252-0.186-0.464-0.379-0.635c-0.195-0.171-0.43-0.257-0.701-0.257
				c-0.391,0-0.697,0.155-0.922,0.466c-0.223,0.311-0.336,0.708-0.336,1.193c0,0.466,0.107,0.844,0.322,1.135
				c0.227,0.31,0.533,0.465,0.916,0.465c0.344,0,0.619-0.129,0.828-0.388C87.1,12.069,87.199,11.781,87.199,11.445z"/><path fill="#FFFFFF" d="M97.248,11.037c0,0.725-0.207,1.319-0.621,1.785c-0.434,0.479-1.008,0.718-1.727,0.718
				c-0.691,0-1.242-0.229-1.654-0.689c-0.41-0.459-0.615-1.038-0.615-1.736c0-0.73,0.211-1.329,0.635-1.794s0.994-0.698,1.713-0.698
				c0.691,0,1.248,0.229,1.668,0.688C97.047,9.757,97.248,10.333,97.248,11.037z M96.162,11.071c0-0.435-0.094-0.808-0.281-1.119
				c-0.221-0.376-0.533-0.564-0.941-0.564c-0.42,0-0.74,0.188-0.961,0.564c-0.188,0.311-0.281,0.69-0.281,1.138
				c0,0.435,0.094,0.808,0.281,1.119c0.227,0.376,0.543,0.564,0.951,0.564c0.4,0,0.715-0.191,0.941-0.574
				C96.064,11.882,96.162,11.506,96.162,11.071z"/><path fill="#FFFFFF" d="M102.883,13.433h-1.047v-2.7c0-0.832-0.316-1.248-0.951-1.248c-0.311,0-0.562,0.114-0.756,0.343
				s-0.291,0.499-0.291,0.808v2.796h-1.049v-3.366c0-0.414-0.012-0.863-0.037-1.349h0.92l0.049,0.737h0.029
				c0.123-0.229,0.305-0.418,0.543-0.569c0.285-0.176,0.602-0.265,0.951-0.265c0.439,0,0.805,0.142,1.096,0.427
				c0.363,0.349,0.543,0.87,0.543,1.562V13.433z"/><path fill="#FFFFFF" d="M109.936,9.504h-1.154v2.29c0,0.582,0.205,0.873,0.611,0.873c0.188,0,0.344-0.016,0.467-0.049
				l0.027,0.795c-0.207,0.078-0.479,0.117-0.814,0.117c-0.414,0-0.736-0.126-0.969-0.378c-0.234-0.252-0.35-0.676-0.35-1.271V9.504
				h-0.689V8.719h0.689V7.855l1.027-0.31v1.173h1.154V9.504z"/><path fill="#FFFFFF" d="M115.484,13.433h-1.049v-2.68c0-0.845-0.316-1.268-0.949-1.268c-0.486,0-0.818,0.245-1,0.735
				c-0.031,0.103-0.049,0.229-0.049,0.377v2.835h-1.047V6.556h1.047v2.841h0.02c0.33-0.517,0.803-0.775,1.416-0.775
				c0.434,0,0.793,0.142,1.078,0.427c0.355,0.355,0.533,0.883,0.533,1.581V13.433z"/><path fill="#FFFFFF" d="M121.207,10.853c0,0.188-0.014,0.346-0.039,0.475h-3.143c0.014,0.466,0.164,0.821,0.455,1.067
				c0.266,0.22,0.609,0.33,1.029,0.33c0.465,0,0.889-0.074,1.271-0.223l0.164,0.728c-0.447,0.194-0.973,0.291-1.582,0.291
				c-0.73,0-1.305-0.215-1.721-0.645c-0.418-0.43-0.625-1.007-0.625-1.731c0-0.711,0.193-1.303,0.582-1.775
				c0.406-0.504,0.955-0.756,1.648-0.756c0.678,0,1.193,0.252,1.541,0.756C121.068,9.77,121.207,10.265,121.207,10.853z
				 M120.207,10.582c0.008-0.311-0.061-0.579-0.203-0.805c-0.182-0.291-0.459-0.437-0.834-0.437c-0.342,0-0.621,0.142-0.834,0.427
				c-0.174,0.227-0.277,0.498-0.311,0.815H120.207z"/></g></g></g></svg></a></div><div id="androidappnew" class="footer-app-button"><a href="#" data-geo-link="android"><img alt="Get it on Google Play" data-src="https://play.google.com/intl/en_us/badges/images/apps/en-play-badge.png" class="lazyload" /></a></div></div>
            <section class="section-social">
    <h3>FOLLOW US</h3>
    <div class="social__button-container">
        <a
        class="social__button social__button--facebook social__button--small"
        href="https://www.facebook.com/newscientist"
        target="_blank"
        rel="nofollow"
>
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" version="1.1" role="img" style="fill: rgb(255, 255, 255);">
        <g>
            <path d="M22 5.16c-.406-.054-1.806-.16-3.43-.16-3.4 0-5.733 1.825-5.733 5.17v2.882H9v3.913h3.837V27h4.604V16.965h3.823l.587-3.913h-4.41v-2.5c0-1.123.347-1.903 2.198-1.903H22V5.16z" fill-rule="evenodd"></path>
        </g>
    </svg>
</a>        <a
        class="social__button social__button--twitter social__button--small"
        href="https://www.twitter.com/newscientist"
        target="_blank"
        rel="nofollow"
>
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" version="1.1" role="img" style="fill: rgb(255, 255, 255);">
        <g>
            <path d="M27.996 10.116c-.81.36-1.68.602-2.592.71a4.526 4.526 0 0 0 1.984-2.496 9.037 9.037 0 0 1-2.866 1.095 4.513 4.513 0 0 0-7.69 4.116 12.81 12.81 0 0 1-9.3-4.715 4.49 4.49 0 0 0-.612 2.27 4.51 4.51 0 0 0 2.008 3.755 4.495 4.495 0 0 1-2.044-.564v.057a4.515 4.515 0 0 0 3.62 4.425 4.52 4.52 0 0 1-2.04.077 4.517 4.517 0 0 0 4.217 3.134 9.055 9.055 0 0 1-5.604 1.93A9.18 9.18 0 0 1 6 23.85a12.773 12.773 0 0 0 6.918 2.027c8.3 0 12.84-6.876 12.84-12.84 0-.195-.005-.39-.014-.583a9.172 9.172 0 0 0 2.252-2.336" fill-rule="evenodd"></path>
        </g>
    </svg>
</a>        <a
        class="social__button social__button--linkedin social__button--small"
        href="https://www.linkedin.com/company/528037/"
        target="_blank"
        rel="nofollow"
>
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" version="1.1" role="img" style="fill: rgb(255, 255, 255);">
        <g>
            <path d="M26 25.963h-4.185v-6.55c0-1.56-.027-3.57-2.175-3.57-2.18 0-2.51 1.7-2.51 3.46v6.66h-4.182V12.495h4.012v1.84h.058c.558-1.058 1.924-2.174 3.96-2.174 4.24 0 5.022 2.79 5.022 6.417v7.386zM8.23 10.655a2.426 2.426 0 0 1 0-4.855 2.427 2.427 0 0 1 0 4.855zm-2.098 1.84h4.19v13.468h-4.19V12.495z" fill-rule="evenodd"></path>
        </g>
    </svg>
</a>        <a
        class="social__button social__button--pinterest social__button--small"
        href="https://www.pinterest.com/newscientist/"
        target="_blank"
        rel="nofollow"
>
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" version="1.1" role="img" title="Pinterest" style="fill: rgb(255, 255, 255);">
        <g>
            <path d="M7 13.252c0 1.81.772 4.45 2.895 5.045.074.014.178.04.252.04.49 0 .772-1.27.772-1.63 0-.428-1.174-1.34-1.174-3.123 0-3.705 3.028-6.33 6.947-6.33 3.37 0 5.863 1.782 5.863 5.058 0 2.446-1.054 7.035-4.468 7.035-1.232 0-2.286-.83-2.286-2.018 0-1.742 1.307-3.43 1.307-5.225 0-1.092-.67-1.977-1.916-1.977-1.692 0-2.732 1.77-2.732 3.165 0 .774.104 1.63.476 2.336-.683 2.736-2.08 6.814-2.08 9.633 0 .87.135 1.728.224 2.6l.134.137.207-.07c2.494-3.178 2.405-3.8 3.533-7.96.61 1.077 2.182 1.658 3.43 1.658 5.254 0 7.614-4.77 7.614-9.067C26 7.987 21.755 5 17.094 5 12.017 5 7 8.15 7 13.252z" fill-rule="evenodd"></path>
        </g>
    </svg>
</a>    </div>
</section>
        </div>

        <div class="footer-additional">
            <div class="footer-wrapper">
                <div class="footer-copyright">
        &copy; Copyright New Scientist Ltd.
    </div>
                                    <div class="backtotop">
    <a class="backtotop__link" href="#navigation">Back to top<span class="backtotop__icon">
            <svg viewBox="0 0 32 32" class="icon" aria-hidden="true">
                <g>
                    <path class="path1" d="M13.582 23.962v-11.203l-4.272 4.272v-3.911l6.108-6.101 6.101 6.101v3.911l-4.272-4.272v11.203h-3.665z"></path>
                    <path class="path2" d="M15.418 30.937c-0.004 0-0.008 0-0.013 0-8.27 0-14.975-6.704-14.975-14.975s6.704-14.975 14.975-14.975c8.27 0 14.975 6.704 14.975 14.975-0.011 8.261-6.702 14.957-14.96 14.975zM15.418 3.519c-0.004 0-0.008 0-0.013 0-6.872 0-12.443 5.571-12.443 12.443s5.571 12.443 12.443 12.443c6.872 0 12.443-5.571 12.443-12.443-0.007-6.865-5.567-12.429-12.429-12.443z"></path>
                </g>
            </svg>
        </span>
    </a>
</div>
                            </div>
        </div>
    </div>
</footer>
        
                    <div id="out-of-page-unit">
    <script type='text/javascript'>
        googletag.cmd.push(function() { googletag.display('out-of-page-unit'); });
    </script>
</div>                            <script type="text/javascript" id="new-scientist-js" src="/build/js/core.min.js?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" ></script>
            <script type="text/javascript" src="/build/js/institutions-access.min.js?ver=1644eed4a3ba9eccd1327b27c5ab8f7aafd3d87f" async></script>
            </body>
</html>
