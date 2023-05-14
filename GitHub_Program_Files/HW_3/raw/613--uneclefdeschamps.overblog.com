<!DOCTYPE html>
<html lang="fr">
    <head><!-- DIDOMI CPM TAG STARTS -->
<script type="text/javascript">window.gdprAppliesGlobally=true;(function(){function a(e){if(!window.frames[e]){if(document.body&&document.body.firstChild){var t=document.body;var n=document.createElement("iframe");n.style.display="none";n.name=e;n.title=e;t.insertBefore(n,t.firstChild)}
   else{setTimeout(function(){a(e)},5)}}}function e(n,r,o,c,s){function e(e,t,n,a){if(typeof n!=="function"){return}if(!window[r]){window[r]=[]}var i=false;if(s){i=s(e,t,n)}if(!i){window[r].push({command:e,parameter:t,callback:n,version:a})}}e.stub=true;function t(a){if(!window[n]||window[n].stub!==true){return}if(!a.data){return}
   var i=typeof a.data==="string";var e;try{e=i?JSON.parse(a.data):a.data}catch(t){return}if(e[o]){var r=e[o];window[n](r.command,r.parameter,function(e,t){var n={};n[c]={returnValue:e,success:t,callId:r.callId};a.source.postMessage(i?JSON.stringify(n):n,"*")},r.version)}}
   if(typeof window[n]!=="function"){window[n]=e;if(window.addEventListener){window.addEventListener("message",t,false)}else{window.attachEvent("onmessage",t)}}}e("__tcfapi","__tcfapiBuffer","__tcfapiCall","__tcfapiReturn");a("__tcfapiLocator");(function(e){
   var t=document.createElement("script");t.id="spcloader";t.type="text/javascript";t.async=true;t.src="https://sdk.privacy-center.org/"+e+"/loader.js?target="+document.location.hostname;t.charset="utf-8";var n=document.getElementsByTagName("script")[0];n.parentNode.insertBefore(t,n)})("e23a01f6-a508-4e71-8f50-c1a9cae7c0d0")})();
</script>
<!-- DIDOMI CPM TAG ENDS -->            
  
          
          
                                                                                                    
                                                                                                                                                                        
    <script src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/js/ads.js?v1.4.8.0"></script>
  <!-- Google Tag Manager -->
  <script>
      dataLayer = [{
        'source'   : 'OVERBLOG',
        'theme'    : '63',
        'adUnitID' : '/6783/OverBlogKiwi/fr',
        'group'    : null,
        'category' : 'Politics',
        'rating'   : 'BS',
        'unused'   : 'Yes',
        'adult'    : 'No',
        'pda'      : 'No',
        'hasAds'   : 'Yes',
        'lang'     : 'fr',
        'adblock'  : '__ads_loaded__' in window ? 'No' : 'Yes',
        'blog_id'  : '478859',
        'blog_name': "uneclefdeschamps.overblog.com",
        'premium'  : 'No',
        'user_id'  : window.obuserid !== undefined ? ('' + window.obuserid) : undefined,
        'slots'    : {
    "_8d6211e": {
        "name": "leaderboard",
        "meta": {
            "background_color": "#ffffff",
            "border_color": "#FFFFFF",
            "text_color": "#666666",
            "link_color": "#373737",
            "url_color": "#000000"
        }
    },
    "_04bb410": {
        "name": "medium_rectangle",
        "meta": {
            "background_color": "#ffffff",
            "border_color": "#FFFFFF",
            "text_color": "#666666",
            "link_color": "#373737",
            "url_color": "#000000"
        }
    },
    "_a35fcac": {
        "name": "medium_rectangle",
        "meta": {
            "background_color": "#ffffff",
            "border_color": "#FFFFFF",
            "text_color": "#666666",
            "link_color": "#373737",
            "url_color": "#000000"
        }
    },
    "_0fd85bf": {
        "name": "medium_rectangle_or_half_page",
        "meta": {
            "background_color": "#ffffff",
            "border_color": "#FFFFFF",
            "text_color": "#666666",
            "link_color": "#373737",
            "url_color": "#000000"
        }
    },
    "_e901fc0": {
        "name": "footer"
    },
    "_5a075a9": {
        "name": "interstitial"
    },
    "_f3a8b86": {
        "name": "sticky_footer"
    }
},
              }];
  </script>
  <script>
    (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
              new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
            j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
            'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer', "GTM-WG3SK3P");
  </script>
  <!-- end Google Tag Manager -->
  <script>
      // le code du wrapper
      if (dataLayer[0].hasAds === 'Yes' &&
          dataLayer[0].adult === 'No' &&
          dataLayer[0].rating === 'BS'
      ) {
          // targeting
          var wbadsTargeting = {};
          var noTargetingKeys = ['slots'];
          for (var k in dataLayer[0]) {
              if (noTargetingKeys.indexOf(k) === -1) {
                  if (typeof dataLayer[0][k] === 'string') {
                      wbadsTargeting[k] = [dataLayer[0][k]];
                  } else if (Array.isArray(dataLayer[0][k])) {
                      wbadsTargeting[k] = dataLayer[0][k];
                  } else {
                      // unknow type
                  }
              }
          }

          // mapping positions
          var wbadsPagePositions = [];
          var wbadsElementsMapping = {};
          var stickyFooterDefined = false;
          for (var slot in dataLayer[0].slots) {
              if (dataLayer[0].slots[slot].name == 'sticky_footer') {
                  stickyFooterDefined = true;
              }
          }

          // _881c7f7, leaderboard, [header, mtf_leaderboard, mtf_leaderboard_2, btf_leaderboard] => on prend le premier pas défini
          var wbadsAddPosition = function(obSlotDivId, obSlotName, positionsPref) {
              var added = false;
              for (var i = 0; i < positionsPref.length && !added; i++) {
                  if (wbadsPagePositions.indexOf(positionsPref[i]) === -1) {
                      wbadsPagePositions.push(positionsPref[i]);
                      wbadsElementsMapping[positionsPref[i]] = obSlotDivId;
                      added = true;
                  }
              }
              if (!added) {
                  console.warn('can not add position ' + obSlotName);
              }
          };

          for (var obSlotDivId in dataLayer[0].slots) {
              var obSlotName = dataLayer[0].slots[obSlotDivId].name
              var positionsPref = [];
              if (/banner/.test(obSlotName)) {
                  if (stickyFooterDefined) {
                      positionsPref = ['mtf_leaderboard', 'btf_leaderboard'];
                  } else {
                      positionsPref = ['sticky_footer', 'btf_leaderboard'];
                  }
              } else if (/footer/.test(obSlotName)) {
                  positionsPref = ['footer'];
              } else if (/half_page/.test(obSlotName)) {
                  positionsPref = ['rectangle_atf', 'rectangle_atf_2'];
              } else if (/header/.test(obSlotName)) {
                  positionsPref = ['header'];
              } else if (/inter/.test(obSlotName)) {
                  positionsPref = ['interstitial'];
              } else if (/leaderboard/.test(obSlotName)) {
                  if (stickyFooterDefined) {
                      positionsPref = ['header', 'mtf_leaderboard', 'mtf_leaderboard_2', 'btf_leaderboard'];
                  } else {
                      positionsPref = ['header', 'sticky_footer', 'mtf_leaderboard', 'mtf_leaderboard_2', 'btf_leaderboard'];
                  }
              } else if (/medium_rectangle/.test(obSlotName)) {
                  positionsPref = ['rectangle_mtf', 'rectangle_mtf_2'];
              } else if (/parallax/.test(obSlotName)) {
                  positionsPref = ['rectangle_atf', 'rectangle_atf_2'];
              } else if (/pave/.test(obSlotName)) {
                  positionsPref = ['rectangle_mtf', 'rectangle_mtf_2'];
              } else if (/skyscraper/.test(obSlotName)) {
                  positionsPref = ['atf_sky_left'];
              } else if (/sticky_footer/.test(obSlotName)) {
                  positionsPref = ['sticky_footer'];
              } else if (/thema_160/.test(obSlotName)) {
                  positionsPref = ['rectangle_atf', 'rectangle_atf_2'];
              }
              if (positionsPref.length) {
                  wbadsAddPosition(obSlotDivId, obSlotDivId, positionsPref);
              } else {
                  console.warn('error on ', obSlotDivId, obSlotName);
              }
          }

          // si ! sticky_footer alors ajouter slidein
          if (!wbadsElementsMapping.hasOwnProperty('sticky_footer')) {
            wbadsPagePositions.push('slidein');
            wbadsElementsMapping.slidein = 'slidein';
          }

          var wbads = wbads || {};
          wbads.config = {
              debug: false,
              page: dataLayer[0].adUnitID,
              targeting: wbadsTargeting,
              elementsMapping: wbadsElementsMapping,
              cappingByPosition: [{
                  position: "interstitial",
                  ttl: 86400,
                  limit: 10,
              }, {
                  position: "slidein",
                  ttl: 86400,
                  limit: 10,
              }]
          };
          if (wbadsPagePositions !== null) {
              wbads.config.pagePositions = wbadsPagePositions;
          }
          var s = document.createElement("script");
          s.async = true;
          var wbadsSite = wbads.config.page.match(/^\/[0-9]+\/([a-zA-Z]+)/)[1];
          s.src = "https://cdn.goutee.top/wbads/adsconfig?network=6783&site=" + wbadsSite;
          s.setAttribute('importance', 'high');
          s.onload = function(){
            function setupSlideIn() {
                var divSlidein = document.createElement("div");
                divSlidein.id = 'slidein';
                document.body.appendChild(divSlidein);
            }

            if( document.readyState !== 'loading' ) {
                setupSlideIn();
            } else {
                document.addEventListener('DOMContentLoaded', setupSlideIn, false);
            }
          };
          var g = document.getElementsByTagName("head")[0];
          g.parentNode.insertBefore(s, g);
      }
  </script>
<script type="text/javascript" src="https://j.adlooxtracking.com/ads/js/tfav_adl_262.js#platform=130&scriptname=adl_262&tagid=769&typejs=tvaf&fwtype=2&creatype=2&targetelt=&custom2area=0&custom2sec=0&id11=overblog"></script>
<style>
    [class^=app_gdpr] a {
        color: white !important;
    }
    [class^=app_gdpr] a[href], [class^=app_gdpr] [class^=banner_message] a:not([class^=banner_continue]) {
        text-decoration: underline;
    }
    [class^=app_gdpr] a svg {
        fill: white !important;
    }
    [class^=app_gdpr] [class^=banner_banner], [class^=app_gdpr] [class^=popup_popup]{
        z-index: 2147483647 !important;
    }
</style>
  <script>
    if (window.parent !== window) {
      if (typeof btoa !== "function") {
        window.btoa = function (input) {
          var str = String(input);
          for (var block, charCode, idx = 0, map = chars, output = ''; str.charAt(idx | 0) || (map = '=', idx % 1); output += map.charAt(63 & block >> 8 - idx % 1 * 8)) {
            charCode = str.charCodeAt(idx += 3/4)
            block = block << 8 | charCode
          }
          return output
        }
      }
      var re = /^(?:https?:)?(?:\/\/)?([^\/\?]+)/i
      var res = re.exec(document.referrer)
      var domain = res[1]
      var forbidden = ["aGVsbG8ubGFuZA==","Y3Vpc2luZS5sYW5k","cmVjZXR0ZS5sYW5k","cmVjZXR0ZXMubGFuZA==",]
      if (forbidden.indexOf(btoa(domain)) > -1) {
        document.location = document.location.origin + "/system/noframed"
      }
    }
  </script>
<link rel="stylesheet" href="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/css/ob-style.css?v1.4.8.0" />
        <!-- Basic theme id 63 [Twenty Eleven] - last modified : 2020-09-15T17:18:12+02:00 -->
        <!-- shortcut:[Meta] -->
        <!-- title -->
                

                    

        <!-- Title -->
        <title>uneclefdeschamps.overblog.com - Pierre Lours vous livre ses billets d'humeur avec l'espoir en ligne de mire ! Et dans son polar &quot;La r&eacute;volte des silencieux&quot; (&eacute;ditions Atelier Fol'fer, disponible sur le net), suivez le dans des aventures de politique fiction qui pourraient bien (ou mal ?) devenir r&eacute;alit&eacute; ?</title>
        <!-- metas description, keyword, robots -->
        <!-- Metas -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <meta name="author" content="Pierre&#x20;Lours" />

        <meta property="og:site_name" content="uneclefdeschamps.overblog.com" />
        <meta property="og:title" content="uneclefdeschamps.overblog.com" />
        <meta name="twitter:title" content="uneclefdeschamps.overblog.com" />
        <meta name="description" content="Pierre&#x20;Lours&#x20;vous&#x20;livre&#x20;ses&#x20;billets&#x20;d&#x27;humeur&#x20;avec&#x20;l&#x27;espoir&#x20;en&#x20;ligne&#x20;de&#x20;mire&#x20;&#x21;&#x20;Et&#x20;dans&#x20;son&#x20;polar&#x20;&amp;quot&#x3B;La&#x20;r&amp;eacute&#x3B;volte&#x20;des&#x20;silencieux&amp;quot&#x3B;&#x20;&#x28;&amp;eacute&#x3B;ditions&#x20;Atelier&#x20;Fol&#x27;fer,&#x20;disponible&#x20;sur&#x20;le&#x20;net&#x29;,&#x20;suivez&#x20;le&#x20;dans&#x20;des&#x20;aventures&#x20;de&#x20;politique&#x20;fiction&#x20;qui&#x20;pourraient&#x20;bien&#x20;&#x28;ou&#x20;mal&#x20;&#x3F;&#x29;&#x20;devenir&#x20;r&amp;eacute&#x3B;alit&amp;eacute&#x3B;&#x20;&#x3F;" />
        <meta property="og:description" content="Pierre&#x20;Lours&#x20;vous&#x20;livre&#x20;ses&#x20;billets&#x20;d&#x27;humeur&#x20;avec&#x20;l&#x27;espoir&#x20;en&#x20;ligne&#x20;de&#x20;mire&#x20;&#x21;&#x20;Et&#x20;dans&#x20;son&#x20;polar&#x20;&quot;La&#x20;r&amp;eacute&#x3B;volte&#x20;des&#x20;silencieux&quot;&#x20;&#x28;&amp;eacute&#x3B;ditions&#x20;Atelier&#x20;Fol&#x27;fer,&#x20;disponible&#x20;sur&#x20;le&#x20;net&#x29;,&#x20;suivez&#x20;le&#x20;dans&#x20;des&#x20;aventures&#x20;de&#x20;politique&#x20;fiction&#x20;qui&#x20;pourraient&#x20;bien&#x20;&#x28;ou&#x20;mal&#x20;&#x3F;&#x29;&#x20;devenir&#x20;r&amp;eacute&#x3B;alit&amp;eacute&#x3B;&#x20;&#x3F;" />
        <meta name="twitter:description" content="Pierre&#x20;Lours&#x20;vous&#x20;livre&#x20;ses&#x20;billets&#x20;d&#x27;humeur&#x20;avec&#x20;l&#x27;espoir&#x20;en&#x20;ligne&#x20;de&#x20;mire&#x20;&#x21;&#x20;Et&#x20;dans&#x20;son&#x20;polar&#x20;&quot;La&#x20;r&amp;eacute&#x3B;volte&#x20;des&#x20;silencieux&quot;&#x20;&#x28;&amp;eacute&#x3B;ditions&#x20;Atelier&#x20;Fol&#x27;fer,&#x20;disponible&#x20;sur&#x20;le&#x20;net&#x29;,&#x20;suivez&#x20;le&#x20;dans..." />
        <meta property="og:locale" content="fr_FR" />

        <meta property="og:image" content="https://img.over-blog-kiwi.com/0/47/88/59/201303/ob_fc486f14358206c36208ead357bed433_voeux-pierre-lours.jpg" />
        <meta name="twitter:image:src" content="https://img.over-blog-kiwi.com/0/47/88/59/201303/ob_fc486f14358206c36208ead357bed433_voeux-pierre-lours.jpg" />
        <meta property="og:type" content="blog" />
        <meta name="twitter:card" content="summary" />
        <meta name="twitter:site" content="@overblog" />
        <meta name="twitter:creator" content="@" />
        <meta property="fb:app_id" content="284865384904712" />

    
                

        <!-- Robots -->
        <meta name="robots" content="index,follow" />

        <!-- RSS -->
        <link rel="alternate" type="application/rss+xml" title="RSS" href="/rss" />


<!-- Analytics -->

        <!-- shortcut:[Options] -->
        <meta name="fontlist:font_title:label.titlesFont" items="Abril Fatface, Amaranth, Arial, Arvo, Georgia, Helvetica, Helvetica Neue, Maven Pro, Patrick Hand SC, Radley, Righteous, Roboto Slab, Trebuchet MS" default="Helvetica Neue" group="graphical" />
        
        
        

        
        
        
        
        
        
        
        
        
        
        
        
        
        

        
        
        
        
        
        
        
        
        
        

        
        

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

        
        

        
        

        

        <!-- shortcut:[Includes] -->
        <!-- favicon -->
        <!-- Metas -->
        <link rel="icon" type="image/png" href="https://img.over-blog-kiwi.com/0/47/88/59/201303/ob_fc486f14358206c36208ead357bed433_voeux-pierre-lours.jpg" />

        <!-- fonts -->
                            
        <!--[if lt IE 9]>
        <script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Fancybox -->
        <link rel="stylesheet" type="text/css" href="https://assets.over-blog.com/t/catalog/jquery/fancybox/2.5/source/jquery.fancybox.css" media="screen" />
        <!-- shortcut:[Style] -->
        <style type="text/css">
            /**********
            ** RESET **
            **********/
            body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,p,textarea,blockquote,th,td{ margin:0; padding:0;}
            table{ border-collapse:collapse; border-spacing:0;}
            fieldset,img{ border:0;}
            address,caption,cite,code,dfn,var{ font-style:normal; font-weight:normal;}
            caption,th{ text-align:left;}
            h1,h2,h3,h4,h5,h6{ font-size:100%; font-weight:normal;}
            q:before,q:after{ content:'';}
            abbr,acronym{ border:0;}

            /***********
            ** GLOBAL **
            ***********/
            body {
                                       background: #E7E7E7;
                              color: #373737;
               font-size: 14px;
               font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
               line-height: 1.625em;
            }

            #global {
                background-color: #fff;
                -webkit-box-shadow: 0 0 5px 1px rgba(68, 68, 68, 0.5);
                   -moz-box-shadow: 0 0 5px 1px rgba(68, 68, 68, 0.5);
                    -ms-box-shadow: 0 0 5px 1px rgba(68, 68, 68, 0.5);
                     -o-box-shadow: 0 0 5px 1px rgba(68, 68, 68, 0.5);
                        box-shadow: 0 0 5px 1px rgba(68, 68, 68, 0.5);
                 margin: 20px auto;
                 width: 1000px;
            }
            .cb {
                clear: both;
            }
            .clearfix:before, .clearfix:after{
                content: "";
                display: table;
            }
            .clearfix:after{
                clear: both;
            }
            .visuallyhidden,
            .ob-form-subscription label {
              position: absolute;
              overflow: hidden;
              clip: rect(0 0 0 0);
              height: 1px; width: 1px;
              margin: -1px; padding: 0; border: 0;
            }
            
            /***********
            ** HEADER **
            ***********/
            #blog-header {
                height: 80px;
                padding-bottom: 10px;
            }
                #blog-header .title {
                                            margin: 50px 0 50px 30px;
                        width: 560px;
                                    }
                .avatar{
                    margin-left: 30px;
                    width: 100px;
                }
                .avatar,
                #blog-header .title,
                #search{
                    display: inline-block;
                    vertical-align: middle;
                }
                    #blog-header .title a,
                    #blog-header .title a:visited {
                         color: #111;
                         display: block;
                         font-size: 30px;
                         font-weight: bold;
                         line-height: 36px;
                         text-decoration: none;
                         -webkit-transition: color 300ms;
                           -moz-transition: color 300ms;
                             -o-transition: color 300ms;
                                transition: color 300ms;
                    }

                #blog-header .description {
                    color: #7A7A7A;
                    font-size: 14px;
                }

                #search {
                    margin-left: 30px;
                    width: 200px;
                }
                    #search form {
                        float: right;
                    }
                        #search input[type="text"] {
                            background: url('https://assets.over-blog.com/t/twentyeleven/images/search.png') no-repeat 5px 6px;
                            border: 1px solid #DDD;
                            -webkit-border-radius: 2px;
                               -moz-border-radius: 2px;
                                -ms-border-radius: 2px;
                                 -o-border-radius: 2px;
                                    border-radius: 2px;
                            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.1);
                               -moz-box-shadow: inset 0 1px 1px rgba(0,0,0,0.1);
                                   -ms-box-shadow: inset 0 1px 1px rgba(0,0,0,0.1);
                                    -o-box-shadow: inset 0 1px 1px rgba(0,0,0,0.1);
                                        box-shadow: inset 0 1px 1px rgba(0,0,0,0.1);
                            color: #888888;
                            font-size: 14px;
                            font-weight: 100;
                            height: 22px;
                            padding: 4px 10px 4px 28px;
                            text-align: left;
                            -webkit-transition: width 400ms ease;
                               -moz-transition: width 400ms ease;
                                -ms-transition: width 400ms ease;
                                 -o-transition: width 400ms ease;
                                    transition: width 400ms ease;
                            width: 100px;
                        }

                        #search input[type="text"]:focus {
                            background-color: #f9f9f9;
                            outline: none;
                            width: 200px;
                        }
                        #search input[type="submit"] {
                            display: none;
                        }

                #blog-cover {
                    height: 288px;
                    margin: 0 auto;
                    width: 100%;
                }
                    #blog-cover img {
                        height: 100%;
                        width: 100%;
                    }

                #menu {
                    background: #222;
                    background: -webkit-linear-gradient(#252525, #0A0A0A);
                       background: -moz-linear-gradient(#252525, #0A0A0A);
                         background: -o-linear-gradient(#252525, #0A0A0A);
                            background: linear-gradient(#252525, #0A0A0A);
                    margin: 0 auto 6px;
                    width: 100%;
                }
                    #menu ul {
                        font-size: 13px;
                        list-style: none;
                        margin-left: 50px;
                    }
                        #menu li {
                            display: inline;
                        }
                        #menu li.selected {
                            font-weight: bold;
                        }
                            #menu a,
                            #menu a:visited {
                                color: #EEE;
                                display: block;
                                float: left;
                                line-height: 40px;
                                padding: 0 16px;
                                text-decoration: none;
                                text-transform: capitalize;
                            }
                            #menu a:hover {
                                color: #373737;
                                background: #F9F9F9;
                                background: -webkit-linear-gradient(#F9F9F9, #E5E5E5);
                                   background: -moz-linear-gradient(#F9F9F9, #E5E5E5);
                                     background: -o-linear-gradient(#F9F9F9, #E5E5E5);
                                        background: linear-gradient(#F9F9F9, #E5E5E5);
                            }

            /*********
            ** MAIN **
            *********/

            /** left content **/
            #left-content {
                float: left;
                width: 630px;
            }

                .other-title,
                .special h2 {
                    font-size: 22px;
                    font-weight: 300;
                    padding: 50px 0 0 40px;
                }
                .special h2 {
                    padding: 50px 0 40px;
                }

            .post {
                padding: 30px 0 30px 30px;
            }

                .post .header {
                    margin-bottom: 30px;
                }
                    .post .title{
                        word-wrap: break-word;
                    }
                    .post .title a,
                    .post .title a:visited,
                    .post .title span {
                        color: #111;
                        font-size: 18px;
                        font-weight: bold;
                        line-height: 18px;
                        -webkit-transition: color 300ms ease;
                           -moz-transition: color 300ms ease;
                            -ms-transition: color 300ms ease;
                             -o-transition: color 300ms ease;
                                 transition: color 300ms ease;
                        text-decoration: none;
                    }
                    .post .title a:first-letter {
                        text-transform: capitalize;
                    }

                    .comments-number {
                        float: right;
                        padding-left: 15px;
                    }
                    .comments-number a,
                    .comments-number a:visited {
                        background: #EEE url('https://assets.over-blog.com/t/twentyeleven/images/comment-bubble.png') no-repeat top left;
                        color: #666;
                        display: block;
                        font-size: 13px;
                        height: 36px;
                        line-height: 35px;
                        overflow: hidden;
                        text-align: center;
                        text-decoration: none;
                        width: 43px;
                        -webkit-transition: background-color 300ms;
                           -moz-transition: background-color 300ms;
                             -o-transition: background-color 300ms;
                                transition: background-color 300ms;
                    }
                    .post .date,
                    .post .tags {
                        color: #666;
                        font-size: 13px;
                        margin-top: 5px;
                    }
                    .post .date:first-letter {
                        text-transform: capitalize;
                    }
                    .post .tag {
                        font-size: 12px;
                    }
                    .post .tag:first-letter {
                        text-transform: capitalize;
                    }
                    .date,
                    .post .tag a,
                    .post .tag a:visited,
                    .comment a,
                    .comment a:visited {
                        font-weight: bold;
                        line-height: 18px;
                        text-decoration: none;
                    }
                    .tag a:hover,
                    .comment a:hover {
                        text-decoration: underline;
                    }
                    .comment a {font-weight: bold;}
                    .post-cover {margin: 20px 0;}
                    .post-cover img {
                        border: 1px solid #EEE;
                        padding: 8px;
                        -webkit-transition: opacity 400ms;
                           -moz-transition: opacity 400ms;
                             -o-transition: opacity 400ms;
                                transition: opacity 400ms;
                    }
                    .post-cover:hover img {
                        -webkit-opacity: 0.8;
                           -moz-opacity: 0.8;
                             -o-opacity: 0.8;
                                opacity: 0.8;
                    }
                    .top-link a,
                    .top-link a:visited {
                        text-decoration: none;
                        text-transform: capitalize;
                    }
                    .top-link a:hover {
                        text-decoration: underline;
                    }
                    .post-footer {
                        border-bottom: 1px solid #DDD;
                        margin: 30px 0 20px;
                        padding-bottom: 20px;
                    }

            /* Repost banner */
            .ob-repost {
                background: #F2F2F2;
                border: 1px solid #EEE;
                font-size: 13px;
                font-weight: bold;
                padding: .5em .8em;
                text-align: center;
            }
            .ob-repost .ob-link {
                text-decoration: underline;
            }
            /* Sections */
            .ob-section {
                width: 100%;
            }

            /* Medias */
            .ob-cell,
            .ob-img,
            .ob-media-left,
            .ob-media-right,
            .ob-video {
                max-width: 100%;
            }

            /* Section texte */
            .ob-text,
            .ob-quote,
            .ob-link {hyphens: auto; word-wrap: break-word;}
            .ob-text p,
            .ob-section-html p {
                margin-bottom: 15px;
            }
            .ob-text li:last-child {margin-bottom: 15px;}
            .ob-text h3,
            .ob-text h4,
            .ob-text h5,
            .ob-section-html h1,
            .ob-section-html h2,
            .ob-section-html h3,
            .ob-section-html h4,
            .ob-section-html h5,
            .ob-section-html h6 {font-weight: bold; line-height: 1; margin: 15px 0 5px;}
            .ob-text h3 {font-size: 18px;}
            .ob-text h4 {font-size: 16px;}
            .ob-text h5 {font-size: 14px;}
            .ob-section-html h1 {font-size: 20px;}
            .ob-section-html h2 {font-size: 18px;}
            .ob-section-html h3 {font-size: 16px;}
            .ob-section-html h4 {font-size: 14px;}
            .ob-section-html h5 {font-size: 12px;}
            .ob-section-html h6 {font-size: 12px;}
            .ob-section ol {margin-left: 30px;}
            .ob-section ul {margin-left: 20px;}
            .ob-section li p {margin: 0;}
            .ob-text pre {
                background: #EEE;
                border: 1px solid #DDD;
                margin-bottom: 20px;
                overflow: auto;
                padding: 10px;
                white-space: -webkit-pre-wrap;
                   white-space: -moz-pre-wrap;
                    white-space: -ms-pre-wrap;
                     white-space: -o-pre-wrap;
                        white-space: pre-wrap;
                width: 578px;
                word-wrap: break-word;
            }
            .ob-desc {clear: both; font-size: 12px; font-style: italic; font-weight: bold;}
            .ob-quote {font-family: 'Georgia', "Bitstream Charter", serif; font-size: italic;}

            /* Section image */
            .ob-row-1-col img {width: 100%;}
            .ob-row-2-col img {width: 50%; }
            .ob-row-3-col img {width: 33.33%;}
            .ob-section-images .ob-slideshow,
            .ob-slideshow, .yui3-slideshow-content,
            .yui3-slideshow-content .ob-img {
                height: 428px;
                width: 600px;
            }

            /* twitter box */
            .ob-section .twitter-tweet-rendered,
            .ob-section .twt-border {
                max-width: 100% !important;
                width: 100% !important;
            }
            .readmore a{
                text-decoration: none;
            }
            .readmore a:hover{
                text-decoration: underline;
            }

            .share,
            .item-comments {
                margin-top: 30px;
                width: 100%;
            }
            .google-share,
            .facebook-share,
            .twitter-share,
            .ob-share {
                float: left;
                line-height: 15px;
            }
            .facebook-share {
                width: 105px;
            }
            .ob-share {
            }
            .share h3,
            .item-comments h6,
            .ob-Outbrain_title,
            .ob-Related-title {
                color: #666;
                font-size: 18px;
                font-weight: 300;
                margin: 0 0 5px;
            }

            .special h3 {
                color: #111;
                font-size: 18px;
                font-weight: bold;
                line-height: 18px;
            }
            .ob-form-field {
                margin-bottom: 10px;
            }
            #left-content .ob-form input[type="text"],
            #left-content .ob-form input[type="email"],
            #left-content .ob-form textarea {
                font-size: 16px;
            }
            .ob-form input[type="text"],
            .ob-form input[type="email"],
            .ob-form textarea {
                background: #EEE;
                border: 1px solid #CCC;
                padding: 6px 0;
            }
            .ob-form input[type="text"]:focus,
            .ob-form input[type="email"]:focus,
            .ob-form textarea:focus {
                background: #FFF;
            }
            .ob-form input[type="submit"] {
                background: #222;
                background: -moz-linear-gradient(#252525, #0A0A0A);
                background: -webkit-linear-gradient(#252525, #0A0A0A);
                background: -o-linear-gradient(#252525, #0A0A0A);
                background: linear-gradient(#252525, #0A0A0A);
                    -webkit-box-shadow: rgba(0, 0, 0, 0.4) 0px 1px 2px;
                       -moz-box-shadow: rgba(0, 0, 0, 0.4) 0px 1px 2px;
                        -ms-box-shadow: rgba(0, 0, 0, 0.4) 0px 1px 2px;
                         -o-box-shadow: rgba(0, 0, 0, 0.4) 0px 1px 2px;
                            box-shadow: rgba(0, 0, 0, 0.4) 0px 1px 2px;
                border: none;
                border-radius: 2px;
                color: white;
                cursor: pointer;
                font-size: 12px;
                font-family: Arial, Helvetica, sans-serif;
                padding: 10px 9px 9px 9px;
                text-align: center;
                text-decoration: none;
                min-width: 66px;
            }
            .ob-form input[type="submit"]:active {
                background: #EEE;
                color: #373737;
            }

            #left-content .ob-form {
                margin-bottom: 80px;
            }
            .ob-form + a {
                font-size: 12px;
                display: block;
                text-align: center;
                text-decoration: none;
            }
            .ob-form + a:hover {
                text-decoration: underline;
            }

            /* right content */
            #right-content {
                float: right;
                width: 370px;
            }
                #sidebar {
                    padding: 50px 30px 50px 40px;
                }

                    .widget {
                        margin-bottom: 25px;
                    }
                        .widget .widget-title {
                            color: #666;
                            font-size: 13px;
                            font-weight: 500;
                            letter-spacing: 1px;
                            text-transform: uppercase;
                        }
                        .widget .author:before {
                            content: "-";
                            color: #111;
                            font-weight: 300;
                        }
                        .widget ul {
                            font-size: 15px;
                            list-style: square;
                            margin-left: 20px;
                        }
                        .widget.last ul,
                        .widget.follow ul {
                            list-style: none;
                            margin: 0;
                        }
                            .widget ul li {
                                color: #777;
                                font-size: 13px;
                            }
                            .widget.follow ul li {
                                -webkit-border-radius: 8px;
                                   -moz-border-radius: 8px;
                                    -ms-border-radius: 8px;
                                     -o-border-radius: 8px;
                                         border-radius: 8px;
                                display: block;
                                float: left;
                                height: 40px;
                                margin: 10px 15px auto 0;
                                width: 40px;
                            }

                            .widget.last ul li {
                                float: left;
                                list-style: none;
                            }
                            .widget.last ul li.left {
                                margin-right: 8px;
                            }
                            .widget.follow ul li a {
                                background: url("https://assets.over-blog.com/t/twentyeleven/images/social.png") no-repeat;
                                display: block;
                                height: 100%;
                                text-indent: -99999%;
                                width: 100%;
                            }
                            .widget.follow ul li.fb a {
                                background-position: 0 0px;
                            }
                            .widget.follow ul li.fb:hover a {
                                background-position: 0 -40px;
                            }

                            .widget.follow ul li.tw a {
                                background-position: -37px 0px;
                            }
                            .widget.follow ul li.tw:hover a {
                                background-position: -37px -40px;
                            }

                            .widget.follow ul li.rss a {
                                background-position: -77px 0px;
                            }
                            .widget.follow ul li.rss:hover a {
                                background-position: -77px -40px;
                            }

                                .widget a,
                                .widget a:visited {
                                    font-size: 13px;
                                    font-weight: bold;
                                    text-decoration: none;
                                }
                                .widget a:hover {
                                    text-decoration: underline;
                                }
                                .arch_month li {
                                    list-style: disc;
                                }
                        .widget p {
                            text-align: left;
                        }
                            .widget span {
                            display: block;
                            font-weight: bold;
                            margin-top: 5px;
                            text-align: right;
                        }
                        .widget img {
                            -webkit-transition: opacity 400ms;
                               -moz-transition: opacity 400ms;
                                 -o-transition: opacity 400ms;
                                    transition: opacity 400ms;
                        }
                        .widget.last img {
                            width: 146px;
                        }
                        .widget img:hover {
                            -webkit-opacity: 0.8;
                               -moz-opacity: 0.8;
                                 -o-opacity: 0.8;
                                    opacity: 0.8;
                        }
                        .widget .box-content{
                            margin-top:5px;
                        }
                /* Sidebar > Subscribe */
                .ob-form-subscription .ob-form-field{
                    display: inline-block;
                }
                .ob-form-subscription .ob-form-field input{
                    width: 170px;
                }
                .ob-form-subscription .ob-input-submit[type=submit]{
                    display: inline-block;
                    margin:5px 0 0;
                    padding:6px 9px;
                    vertical-align: top;
                }


                #navigation {
                    margin: 0 auto 20px;
                    padding: 20px 50px;
                }
                #navigation.single {
                    border-top: 1px solid #DDD;
                    padding: 10px 0;
                    margin-top: 30px;
                }
                .prev, .next {
                    font-size: 12px;
                    font-weight: bold;
                    text-decoration: none;
                }
                .prev:hover,
                .next:hover {text-decoration: underline;}
                .prev {float: left; }
                .next {float: right;}

                .ob-pagination{
                    margin: 0 auto 20px;
                    padding: 20px 50px;
                    text-align: center;
                }
                .ob-page{
                    display: inline-block;
                    font-weight: bold;
                    margin: 0 3px;
                }
                .ob-page-link{
                    text-decoration: none;
                }
                .ob-page-link:hover{
                    text-decoration: underline;
                }
            /***********
            ** FOOTER **
            ***********/
            #blog-footer {
                background-color: #F9F9F9;
                border-top: 1px solid #DEDEDE;
            }
                #blog-footer p {
                    font-size: 13px;
                    font-weight: bold;
                    margin: 0 auto;
                    padding: 25px 0;
                    text-align: center;
                    text-shadow: 1px 1px 1px #DDD;
                    width: 100%;
                }
                    #blog-footer span {
                        display: inline-block;
                    }
                    #blog-footer p:first-letter,
                    #blog-footer p span:first-letter {
                        text-transform: capitalize;
                    }
                    #blog-footer a,
                    #blog-footer a:visited {
                        color: #ff9e00;
                        text-decoration: none;
                    }
                    #blog-footer a:hover {
                        text-decoration: underline;
                    }

            /**************
            ** ob-footer **
            **************/
            .ob-footer a{
                color: #1982D1;
                text-decoration: none;
            }
            .ob-footer a:hover,
            .ob-footer a:focus,
            .ob-footer a:active{
                text-decoration: underline;
            }

            /********
            ** Ads **
            ********/
            #global .ads{
                margin-bottom: 20px;
            }
            .ads{
                background: #fff;
                margin: 0 auto;
            }
            .ads > *:not(:empty) {
                box-shadow: 0 0 5px 1px rgba(68, 68, 68, 0.5);
            }
            .ads-728x90{
                height: 90px;
                width: 728px;
            }
            .ads-600x250{
                margin-top: 20px;
            }
            .ads-600x250 div{
                float: left;
            }
            .ads-300{
                text-align: center;
                height: 1000px;
            }
            .ads-300 > * {
                position: sticky;
                top: 25px;
            }
            .shareBarOpened .ads-300 > * {
                top: 65px;
            }

            /*****************
            ** Top articles **
            *****************/
            .ob-top-article,
            .ob-top-meta{
                margin-bottom: 20px;
            }
            .ob-top-article a{
                color: #111;
                text-decoration: none;
            }
            .ob-top-meta{
                color: #666;
                font-size: 13px;
                font-weight: bold;
            }

            /***************
            ** Appareance **
            ***************/

                            #menu {
                    -webkit-box-shadow: #1982D1 0px 1px 2px;
                       -moz-box-shadow: #1982D1 0px 1px 2px;
                        -ms-box-shadow: #1982D1 0px 1px 2px;
                         -o-box-shadow: #1982D1 0px 1px 2px;
                            box-shadow: #1982D1 0px 1px 2px;
                }
                #blog-header .title a:hover,
                .post .title a:hover,
                .date,
                .post .tag a,
                .post .tag a:visited,
                .comment a,
                .comment a:visited,
                .top-link a,
                .top-link a:visited,
                .ob-text a,
                .ob-text a:visited,
                .ob-form + a,
                .widget a,
                .widget a:visited,
                .widget span,
                .prev, .next,
                .ob-page-link,
                .other-title,
                .special h2,
                .readmore a,
                a {
                    color: #1982D1;
                }
                .comments-number a:hover {
                    background-color: #1982D1;
                    color: #fff;
                }
                .widget.follow ul li {
                    background: #1982D1;
                }
            
            .ob-Outbrain, .ob-Related { margin: 20px 0; }
            .ob-Outbrain h3, .ob-Related h3 { margin-bottom: 10px; }
        </style>
        <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-5354236-47', {
    cookieDomain: 'uneclefdeschamps.overblog.com',
    cookieExpires: 31536000,
    name: 'ob',
    allowLinker: true
  });

  ga('ob.require', 'displayfeatures');
  ga('ob.require', 'linkid', 'linkid.js');
  ga('ob.set', 'anonymizeIp', true);
  ga('ob.set', 'dimension1', '__ads_loaded__' in window ? '0' : '1');
  ga('ob.set', 'dimension2', 'fr');
  ga('ob.set', 'dimension3', 'BS');
  ga('ob.set', 'dimension4', 'politics');
  ga('ob.set', 'dimension5', '1');
  ga('ob.set', 'dimension6', '0');
  ga('ob.set', 'dimension7', '0');
  ga('ob.set', 'dimension10', '478859');
  ga('ob.set', 'dimension11', '1');
  ga('ob.set', 'dimension12', '1');
  ga('ob.set', 'dimension13', '1');
  ga('ob.set', 'dimension14', '__ads_loaded__' in window ? '1' : '0');
  ga('ob.set', 'dimension15', '__ads_loaded__' in window ? '0' : '1');
  ga('ob.set', 'dimension16', '478859');
  ga('ob.set', 'dimension17', "uneclefdeschamps.overblog.com");
    if(window.obuserid){
    ga('ob.set', 'dimension21', '' + window.obuserid);
  }
  if (location) {
    ga('ob.set', 'dimension22', '' + location.hostname);
  }
  ga('ob.send', 'pageview');
</script>

<script>
  var obconnected = 0
  var obconnectedblog = 0
  var obtimestamp = 0
  var obuserid = undefined

  function isConnected(connected, connected_owner, timestamp, user_id) {
    obconnected = connected
    obconnectedblog = connected_owner
    obtimestamp = timestamp
    obuserid = user_id
    if (obconnected) {
      document.querySelector('html').classList.add('ob-connected')
    }
    if (obconnectedblog) {
      document.querySelector('html').classList.add('ob-connected-blog')
    }
  }
</script>
<script src="//connect.over-blog.com/ping/478859/isConnected"></script>
<script src="https://assets.over-blog-kiwi.com/b/blog/build/main.d1b414d0.js"></script>
<script src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/js/h.js?v1.4.8.0"></script>

  <script src="https://static1.webedia.fr/js/gs.js" async></script>

    <script>
    var _eStat_Whap_loaded = 0
  </script>
  <script src="https://w.estat.com/js/whap.js"></script>
  <script>
    if (_eStat_Whap_loaded) {
      eStatWhap.serial("800000207013")
      eStatWhap.send()
    }
  </script>
</head>
    <body>
                
  <div class="ob-ShareBar ob-ShareBar--dark js-ob-ShareBar">
    <div class="ob-ShareBar-container ob-ShareBar-container--left">

                        
      
      <a href="https://www.over-blog.com" class="ob-ShareBar-branding">
        <img class="ob-ShareBar-brandingImg" src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/shareicon-branding-ob--dark.png?v1.4.8.0" alt="Overblog">
      </a>
    </div>

    <div class="ob-ShareBar-container ob-ShareBar-container--right">
                      <a href="#" data-href="https://www.facebook.com/sharer/sharer.php?u={referer}" title=" facebook"="FACEBOOK"|trans }}"" class="ob-ShareBar-share ob-ShareBar-share--facebook"></a>
        <a href="#" data-href="https://twitter.com/intent/tweet?url={referer}&amp;text={title}" title=" twitter"="TWITTER"|trans }}"" class="ob-ShareBar-share ob-ShareBar-share--twitter"></a>
        <a href="#" data-href="#" title=" pinterest"="PINTEREST"|trans }}"" class="ob-ShareBar-share ob-ShareBar-share--pinterest js-ob-ShareBar-share--pinterest"></a>

        <form action="/search" method="post" accept-charset="utf-8" class="ob-ShareBar-search">
          <input type="text" name="q" value="" class="ob-ShareBar-input" placeholder="Rechercher">
          <button class="ob-ShareBar-submit"></button>
        </form>

        
                  <a class="js-ob-ShareBar-follow ob-ShareBar--connected ob-ShareBar-follow" href="https://admin.over-blog.com/_follow/478859" target="_blank" rel="nofollow">
              Suivre ce blog
          </a>
        
        <a href="https://admin.over-blog.com/" class="ob-ShareBar-admin ob-ShareBar--connected">
          <img src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/lock-alt-dark.svg?v1.4.8.0" class="ob-ShareBar-lock">
          <span class="ob-ShareBar-text">Administration</span>
        </a>
      
      <a href="https://connect.over-blog.com/fr/login" class="ob-ShareBar-login ob-ShareBar--notconnected">
        <img src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/lock-alt-dark.svg?v1.4.8.0" class="ob-ShareBar-lock">
        <span class="ob-ShareBar-text">Connexion</span>
      </a>
            <a href="https://www.over-blog.com/creation" class="ob-ShareBar-create ob-ShareBar--notconnected">
        <span class="ob-ShareBar-plus">+</span>
        <span class="ob-ShareBar-text">Créer mon blog</span>
      </a>

              <span class="ob-ShareBar-toggle ob-ShareBar-toggle--hide js-ob-ShareBar-toggle"></span>
          </div>
  </div>

      <div class="ob-ShareBar ob-ShareBar--minified js-ob-ShareBar--minified">
      <div class="ob-ShareBar-container">
        <span class="ob-ShareBar-toggle ob-ShareBar-toggle--show js-ob-ShareBar-toggle"></span>
      </div>
    </div>
  
  <script src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/js/sharebar.js?v1.4.8.0"></script>
    <script>
        var postTitle = "uneclefdeschamps.overblog.com"
        socialShare(document.querySelector('.ob-ShareBar-share--facebook'), postTitle)
        socialShare(document.querySelector('.ob-ShareBar-share--twitter'), postTitle)
      </script>        <div id="fb-root"></div>
                    <div class="ads ads-728x90">
                <div id="_8d6211e"></div>            </div>
                <div id="global">
            <header id="blog-header" role="banner">
                                    <div class="avatar">
                        <a href="http://uneclefdeschamps.overblog.com"><img src="https://image.over-blog.com/N0q0EQ2QYbsT0HCInf46RxqAQJc=/100x100/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_fc486f14358206c36208ead357bed433_voeux-pierre-lours.jpg" alt="uneclefdeschamps.overblog.com" width="100" height="100"  /></a>
                    </div>
                                <div class="title">
                                        <h1 class="blog-title">
                        <a href="http://uneclefdeschamps.overblog.com" title="Pierre Lours vous livre ses billets d'humeur avec l'espoir en ligne de mire ! Et dans son polar &quot;La r&eacute;volte des silencieux&quot; (&eacute;ditions Atelier Fol'fer, disponible sur le net), suivez le dans des aventures de politique fiction qui pourraient bien (ou mal ?) devenir r&eacute;alit&eacute; ?">uneclefdeschamps.overblog.com</a>
                    </h1>
                    
                    <p class="description">Pierre Lours vous livre ses billets d'humeur avec l'espoir en ligne de mire ! Et dans son polar &quot;La r&eacute;volte des silencieux&quot; (&eacute;ditions Atelier Fol'fer, disponible sur le net), suivez le dans des aventures de politique fiction qui pourraient bien (ou mal ?) devenir r&eacute;alit&eacute; ?</p>
                </div>
                                    <div id="search">
                        <form class="search" action="/search" method="post">
                            <input type="text" placeholder="Recherche" value="" name="q" />
                            <input type="submit" value="Recherche" />
                        </form>
                    </div>
                                <div class="cb"></div>
                                    <div id="blog-cover">
                        <a href="http://uneclefdeschamps.overblog.com">
                            <img src="https://image.over-blog.com/TFmV2bsrY8eNkjv0gD8b7xJbieU=/1000x288/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_108b47e7ddf46465c35808fc50ec5ba2_a-003.jpg" alt="" title="Pierre Lours vous livre ses billets d'humeur avec l'espoir en ligne de mire ! Et dans son polar &quot;La r&eacute;volte des silencieux&quot; (&eacute;ditions Atelier Fol'fer, disponible sur le net), suivez le dans des aventures de politique fiction qui pourraient bien (ou mal ?) devenir r&eacute;alit&eacute; ?" width="1000" height="288" />
                        </a>
                    </div>
                                <nav id="menu" role="navigation">
                    <ul>
                        <li class="selected">
                            <a class="selected" href="http://uneclefdeschamps.overblog.com">Accueil</a>
                        </li>
                                                                                                                                                                                                <li><a href="/contact" title="Contact">Contact</a></li>
                    </ul>
                    <div class="cb"></div>
                </nav>
            </header>
            <div class="cb"></div>

            <section id="left-content" role="main">
                                    
                                            <article class="post">
                            <header class="header">
                                                                    <div class="comments-number">
                                                                                    <a href="http://uneclefdeschamps.overblog.com/2020/06/les-mots-du-mal.html#comments" title="commentaires" class="comments">
                                                                                                       <span id="comment-count-142644041">…</span><script>
  ob.commentCount(document.querySelector("#comment-count-142644041"), {
    id: 142644041,
    resource: "http://uneclefdeschamps.overblog.com/api/comment-count/142644041",
    format: (count) => {
      const string = count === 0
        ? "no comment"
        : count === 1
          ? "%c commentaire"
          : "%c commentaires"

      return string.replace("%c", count)
    }
  })
</script>
                                                                                           </a>
                                                                            </div>
                                                                    <div class="title">
                                                                                <h2 class="post-title">
                                        
                                                                                            <a title="Les mots incarnent les idées. Sans mot l’idée est informe, vaporeuse comme l’univers l’était avant sa création. Quand le mot apparaît, l’idée devient palpable, utilisable, transmissible. Le mot permettra à l’idée d’évoluer, de se transformer, de se préciser,..." href="http://uneclefdeschamps.overblog.com/2020/06/les-mots-du-mal.html">
                                                                                                                                                        Les mots du mal
                                                                                                                                                </a>
                                                                                                                            </h2>
                                                                            </div>
                                                                    <div class="date">
                                        <p>Publié le 23 Juin 2020</p>
                                    </div>
                                                            </header>

                            <div class="body">
                                                                                                            <div class="post-cover">
                                            <a href="http://uneclefdeschamps.overblog.com/2020/06/les-mots-du-mal.html" title="Les mots incarnent les idées. Sans mot l’idée est informe, vaporeuse comme l’univers l’était avant sa création. Quand le mot apparaît, l’idée devient palpable, utilisable, transmissible. Le mot permettra à l’idée d’évoluer, de se transformer, de se préciser,...">
                                                <img src="https://image.over-blog.com/X8nSwYfFxQxUP8saYshkRM5jVOc=/582x288/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" title="" width="582" height="288" />
                                            </a>
                                        </div>
                                                                        <p>Les mots incarnent les idées. Sans mot l’idée est informe, vaporeuse comme l’univers l’était avant sa création. Quand le mot apparaît, l’idée devient palpable, utilisable, transmissible. Le mot permettra à l’idée d’évoluer, de se transformer, de se préciser,...</p>
                                                                                                    <p class="readmore">
                                        <a href="http://uneclefdeschamps.overblog.com/2020/06/les-mots-du-mal.html">
                                                                                            Lire la suite
                                                                                    </a>
                                    </p>
                                                            </div>
                                                        <footer class="post-footer">
                                <div class="tags">
                                                                            <p>
                                            Rédigé par <span>Pierre Lours</span>
                                        </p>
                                    
                                    <p class="tag">
                                                                            </p>
                                </div>

                                        

  
            
    <div class="ob-Shares ob-Shares--right ob-Shares--horizontal ">
        <div class="ob-Shares-facebookShare">
        <div class="fb-share-button" data-href="http://uneclefdeschamps.overblog.com/2020/06/les-mots-du-mal.html" data-layout="button_count"></div>
    </div>
            <div class="ob-Shares-twitter">
        <a class="twitter-share-button"
          href="https://twitter.com/share"
          data-url="http://uneclefdeschamps.overblog.com/2020/06/les-mots-du-mal.html"
                              data-text="Les&#x20;mots&#x20;du&#x20;mal"
          data-lang="en"
          ></a>
    </div>
                    <div class="ob-Shares-overblog">
        <a id="repost-142644041" class="ob-repost-btn" href="https://admin.over-blog.com/_repost/142644041" rel="nofollow" target="_blank"><span class="ob-repost-label">Repost</span><span class="ob-repost-count">0</span></a><script>
  ob.repost(document.querySelector("#repost-142644041"))
</script>
    </div>
        <div class="ob-Shares-print" style="display:none">
        <img src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/printer.png?v1.4.8.0">
    </div>
</div>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.0';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'facebook-jssdk'));
</script>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'twitter-jssdk'));
</script>




                                
                                 
                                                                                                            <div class="ads ads-600x250 clearfix">
                                            <div id="_04bb410"></div>                                            <div id="_a35fcac"></div>                                        </div>
                                                                    
                                                             </footer>
                        </article>
                                            <article class="post">
                            <header class="header">
                                                                    <div class="comments-number">
                                                                                    <a href="http://uneclefdeschamps.overblog.com/2020/05/l-eau-qui-dort.html#comments" title="commentaires" class="comments">
                                                                                                       <span id="comment-count-133826435">…</span><script>
  ob.commentCount(document.querySelector("#comment-count-133826435"), {
    id: 133826435,
    resource: "http://uneclefdeschamps.overblog.com/api/comment-count/133826435",
    format: (count) => {
      const string = count === 0
        ? "no comment"
        : count === 1
          ? "%c commentaire"
          : "%c commentaires"

      return string.replace("%c", count)
    }
  })
</script>
                                                                                           </a>
                                                                            </div>
                                                                    <div class="title">
                                                                                <h2 class="post-title">
                                        
                                                                                            <a title="On peut s’étonner de la docilité des Français face aux restrictions sans précédent de leurs libertés, les plaçant de facto en résidence surveillée sous la garde des forces de l’ordre, à coups d’amendes et de peines de prison en cas de récidive. Nos concitoyens..." href="http://uneclefdeschamps.overblog.com/2020/05/l-eau-qui-dort.html">
                                                                                                                                                        L'eau qui dort
                                                                                                                                                </a>
                                                                                                                            </h2>
                                                                            </div>
                                                                    <div class="date">
                                        <p>Publié le 10 Mai 2020</p>
                                    </div>
                                                            </header>

                            <div class="body">
                                                                                                            <div class="post-cover">
                                            <a href="http://uneclefdeschamps.overblog.com/2020/05/l-eau-qui-dort.html" title="On peut s’étonner de la docilité des Français face aux restrictions sans précédent de leurs libertés, les plaçant de facto en résidence surveillée sous la garde des forces de l’ordre, à coups d’amendes et de peines de prison en cas de récidive. Nos concitoyens...">
                                                <img src="https://image.over-blog.com/X8nSwYfFxQxUP8saYshkRM5jVOc=/582x288/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" title="" width="582" height="288" />
                                            </a>
                                        </div>
                                                                        <p>On peut s’étonner de la docilité des Français face aux restrictions sans précédent de leurs libertés, les plaçant de facto en résidence surveillée sous la garde des forces de l’ordre, à coups d’amendes et de peines de prison en cas de récidive. Nos concitoyens...</p>
                                                                                                    <p class="readmore">
                                        <a href="http://uneclefdeschamps.overblog.com/2020/05/l-eau-qui-dort.html">
                                                                                            Lire la suite
                                                                                    </a>
                                    </p>
                                                            </div>
                                                        <footer class="post-footer">
                                <div class="tags">
                                                                            <p>
                                            Rédigé par <span>Pierre Lours</span>
                                        </p>
                                    
                                    <p class="tag">
                                                                            </p>
                                </div>

                                        

  
            
    <div class="ob-Shares ob-Shares--right ob-Shares--horizontal ">
        <div class="ob-Shares-facebookShare">
        <div class="fb-share-button" data-href="http://uneclefdeschamps.overblog.com/2020/05/l-eau-qui-dort.html" data-layout="button_count"></div>
    </div>
            <div class="ob-Shares-twitter">
        <a class="twitter-share-button"
          href="https://twitter.com/share"
          data-url="http://uneclefdeschamps.overblog.com/2020/05/l-eau-qui-dort.html"
                              data-text="L&#x27;eau&#x20;qui&#x20;dort"
          data-lang="en"
          ></a>
    </div>
                    <div class="ob-Shares-overblog">
        <a id="repost-133826435" class="ob-repost-btn" href="https://admin.over-blog.com/_repost/133826435" rel="nofollow" target="_blank"><span class="ob-repost-label">Repost</span><span class="ob-repost-count">0</span></a><script>
  ob.repost(document.querySelector("#repost-133826435"))
</script>
    </div>
        <div class="ob-Shares-print" style="display:none">
        <img src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/printer.png?v1.4.8.0">
    </div>
</div>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.0';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'facebook-jssdk'));
</script>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'twitter-jssdk'));
</script>




                                
                                 
                                                                                                    
                                                             </footer>
                        </article>
                                            <article class="post">
                            <header class="header">
                                                                    <div class="comments-number">
                                                                                    <a href="http://uneclefdeschamps.overblog.com/2020/04/la-revolte-des-silencieux-extrait.html#comments" title="commentaires" class="comments">
                                                                                                       <span id="comment-count-131985415">…</span><script>
  ob.commentCount(document.querySelector("#comment-count-131985415"), {
    id: 131985415,
    resource: "http://uneclefdeschamps.overblog.com/api/comment-count/131985415",
    format: (count) => {
      const string = count === 0
        ? "no comment"
        : count === 1
          ? "%c commentaire"
          : "%c commentaires"

      return string.replace("%c", count)
    }
  })
</script>
                                                                                           </a>
                                                                            </div>
                                                                    <div class="title">
                                                                                <h2 class="post-title">
                                        
                                                                                            <a title="Les prétentieux qui se reconnaîtraient et en seraient furieux, se fourvoieraient complètement ! Ci-après, les premières lignes du roman "La révolte des silencieux". Pierre Lours, éditions atelier Fol'fer La révolte des silencieux Première partie: Jury..." href="http://uneclefdeschamps.overblog.com/2020/04/la-revolte-des-silencieux-extrait.html">
                                                                                                                                                        La révolte des silencieux (extrait)
                                                                                                                                                </a>
                                                                                                                            </h2>
                                                                            </div>
                                                                    <div class="date">
                                        <p>Publié le 27 Avril 2020</p>
                                    </div>
                                                            </header>

                            <div class="body">
                                                                                                            <div class="post-cover">
                                            <a href="http://uneclefdeschamps.overblog.com/2020/04/la-revolte-des-silencieux-extrait.html" title="Les prétentieux qui se reconnaîtraient et en seraient furieux, se fourvoieraient complètement ! Ci-après, les premières lignes du roman "La révolte des silencieux". Pierre Lours, éditions atelier Fol'fer La révolte des silencieux Première partie: Jury...">
                                                <img src="https://image.over-blog.com/X8nSwYfFxQxUP8saYshkRM5jVOc=/582x288/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" title="" width="582" height="288" />
                                            </a>
                                        </div>
                                                                        <p>Les prétentieux qui se reconnaîtraient et en seraient furieux, se fourvoieraient complètement ! Ci-après, les premières lignes du roman "La révolte des silencieux". Pierre Lours, éditions atelier Fol'fer La révolte des silencieux Première partie: Jury...</p>
                                                                                                    <p class="readmore">
                                        <a href="http://uneclefdeschamps.overblog.com/2020/04/la-revolte-des-silencieux-extrait.html">
                                                                                            Lire la suite
                                                                                    </a>
                                    </p>
                                                            </div>
                                                        <footer class="post-footer">
                                <div class="tags">
                                                                            <p>
                                            Rédigé par <span>Pierre Lours</span>
                                        </p>
                                    
                                    <p class="tag">
                                                                            </p>
                                </div>

                                        

  
            
    <div class="ob-Shares ob-Shares--right ob-Shares--horizontal ">
        <div class="ob-Shares-facebookShare">
        <div class="fb-share-button" data-href="http://uneclefdeschamps.overblog.com/2020/04/la-revolte-des-silencieux-extrait.html" data-layout="button_count"></div>
    </div>
            <div class="ob-Shares-twitter">
        <a class="twitter-share-button"
          href="https://twitter.com/share"
          data-url="http://uneclefdeschamps.overblog.com/2020/04/la-revolte-des-silencieux-extrait.html"
                              data-text="La&#x20;r&#x00E9;volte&#x20;des&#x20;silencieux&#x20;&#x28;extrait&#x29;"
          data-lang="en"
          ></a>
    </div>
                    <div class="ob-Shares-overblog">
        <a id="repost-131985415" class="ob-repost-btn" href="https://admin.over-blog.com/_repost/131985415" rel="nofollow" target="_blank"><span class="ob-repost-label">Repost</span><span class="ob-repost-count">0</span></a><script>
  ob.repost(document.querySelector("#repost-131985415"))
</script>
    </div>
        <div class="ob-Shares-print" style="display:none">
        <img src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/printer.png?v1.4.8.0">
    </div>
</div>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.0';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'facebook-jssdk'));
</script>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'twitter-jssdk'));
</script>




                                
                                 
                                                                                                    
                                                             </footer>
                        </article>
                                            <article class="post">
                            <header class="header">
                                                                    <div class="comments-number">
                                                                                    <a href="http://uneclefdeschamps.overblog.com/2020/04/les-animaux-malades-de-la-peur.html#comments" title="commentaires" class="comments">
                                                                                                       <span id="comment-count-131274989">…</span><script>
  ob.commentCount(document.querySelector("#comment-count-131274989"), {
    id: 131274989,
    resource: "http://uneclefdeschamps.overblog.com/api/comment-count/131274989",
    format: (count) => {
      const string = count === 0
        ? "no comment"
        : count === 1
          ? "%c commentaire"
          : "%c commentaires"

      return string.replace("%c", count)
    }
  })
</script>
                                                                                           </a>
                                                                            </div>
                                                                    <div class="title">
                                                                                <h2 class="post-title">
                                        
                                                                                            <a title="La peur, sentiment naturel Le sentiment dominant chez l’homme est la peur. La peur fondamentale de mourir se décline en de multiples formes : celle d’avoir faim ou froid, d’être malade ou blessé, d’être seul ou rejeté, d’être condamné ou trahi, de se..." href="http://uneclefdeschamps.overblog.com/2020/04/les-animaux-malades-de-la-peur.html">
                                                                                                                                                        Les animaux malades de la peur
                                                                                                                                                </a>
                                                                                                                            </h2>
                                                                            </div>
                                                                    <div class="date">
                                        <p>Publié le 21 Avril 2020</p>
                                    </div>
                                                            </header>

                            <div class="body">
                                                                                                            <div class="post-cover">
                                            <a href="http://uneclefdeschamps.overblog.com/2020/04/les-animaux-malades-de-la-peur.html" title="La peur, sentiment naturel Le sentiment dominant chez l’homme est la peur. La peur fondamentale de mourir se décline en de multiples formes : celle d’avoir faim ou froid, d’être malade ou blessé, d’être seul ou rejeté, d’être condamné ou trahi, de se...">
                                                <img src="https://image.over-blog.com/X8nSwYfFxQxUP8saYshkRM5jVOc=/582x288/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" title="" width="582" height="288" />
                                            </a>
                                        </div>
                                                                        <p>La peur, sentiment naturel Le sentiment dominant chez l’homme est la peur. La peur fondamentale de mourir se décline en de multiples formes : celle d’avoir faim ou froid, d’être malade ou blessé, d’être seul ou rejeté, d’être condamné ou trahi, de se...</p>
                                                                                                    <p class="readmore">
                                        <a href="http://uneclefdeschamps.overblog.com/2020/04/les-animaux-malades-de-la-peur.html">
                                                                                            Lire la suite
                                                                                    </a>
                                    </p>
                                                            </div>
                                                        <footer class="post-footer">
                                <div class="tags">
                                                                            <p>
                                            Rédigé par <span>Pierre Lours</span>
                                        </p>
                                    
                                    <p class="tag">
                                                                            </p>
                                </div>

                                        

  
            
    <div class="ob-Shares ob-Shares--right ob-Shares--horizontal ">
        <div class="ob-Shares-facebookShare">
        <div class="fb-share-button" data-href="http://uneclefdeschamps.overblog.com/2020/04/les-animaux-malades-de-la-peur.html" data-layout="button_count"></div>
    </div>
            <div class="ob-Shares-twitter">
        <a class="twitter-share-button"
          href="https://twitter.com/share"
          data-url="http://uneclefdeschamps.overblog.com/2020/04/les-animaux-malades-de-la-peur.html"
                              data-text="Les&#x20;animaux&#x20;malades&#x20;de&#x20;la&#x20;peur"
          data-lang="en"
          ></a>
    </div>
                    <div class="ob-Shares-overblog">
        <a id="repost-131274989" class="ob-repost-btn" href="https://admin.over-blog.com/_repost/131274989" rel="nofollow" target="_blank"><span class="ob-repost-label">Repost</span><span class="ob-repost-count">0</span></a><script>
  ob.repost(document.querySelector("#repost-131274989"))
</script>
    </div>
        <div class="ob-Shares-print" style="display:none">
        <img src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/printer.png?v1.4.8.0">
    </div>
</div>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.0';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'facebook-jssdk'));
</script>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'twitter-jssdk'));
</script>




                                
                                 
                                                                                                    
                                                             </footer>
                        </article>
                                            <article class="post">
                            <header class="header">
                                                                    <div class="comments-number">
                                                                                    <a href="http://uneclefdeschamps.overblog.com/2020/03/meme-le-diable-porte-pierre.html#comments" title="commentaires" class="comments">
                                                                                                       <span id="comment-count-127308329">…</span><script>
  ob.commentCount(document.querySelector("#comment-count-127308329"), {
    id: 127308329,
    resource: "http://uneclefdeschamps.overblog.com/api/comment-count/127308329",
    format: (count) => {
      const string = count === 0
        ? "no comment"
        : count === 1
          ? "%c commentaire"
          : "%c commentaires"

      return string.replace("%c", count)
    }
  })
</script>
                                                                                           </a>
                                                                            </div>
                                                                    <div class="title">
                                                                                <h2 class="post-title">
                                        
                                                                                            <a title="Que se passe-t-il ? Vraisemblablement une prise de conscience de la fragilité de la condition humaine et par conséquent de notre société qui en est l’émanation, précarité et vulnérabilité aggravées par une organisation sociale et économique complexe multipliant..." href="http://uneclefdeschamps.overblog.com/2020/03/meme-le-diable-porte-pierre.html">
                                                                                                                                                        Même le Diable porte pierre !
                                                                                                                                                </a>
                                                                                                                            </h2>
                                                                            </div>
                                                                    <div class="date">
                                        <p>Publié le 25 Mars 2020</p>
                                    </div>
                                                            </header>

                            <div class="body">
                                                                                                            <div class="post-cover">
                                            <a href="http://uneclefdeschamps.overblog.com/2020/03/meme-le-diable-porte-pierre.html" title="Que se passe-t-il ? Vraisemblablement une prise de conscience de la fragilité de la condition humaine et par conséquent de notre société qui en est l’émanation, précarité et vulnérabilité aggravées par une organisation sociale et économique complexe multipliant...">
                                                <img src="https://image.over-blog.com/X8nSwYfFxQxUP8saYshkRM5jVOc=/582x288/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" title="" width="582" height="288" />
                                            </a>
                                        </div>
                                                                        <p>Que se passe-t-il ? Vraisemblablement une prise de conscience de la fragilité de la condition humaine et par conséquent de notre société qui en est l’émanation, précarité et vulnérabilité aggravées par une organisation sociale et économique complexe multipliant...</p>
                                                                                                    <p class="readmore">
                                        <a href="http://uneclefdeschamps.overblog.com/2020/03/meme-le-diable-porte-pierre.html">
                                                                                            Lire la suite
                                                                                    </a>
                                    </p>
                                                            </div>
                                                        <footer class="post-footer">
                                <div class="tags">
                                                                            <p>
                                            Rédigé par <span>Pierre Lours</span>
                                        </p>
                                    
                                    <p class="tag">
                                                                            </p>
                                </div>

                                        

  
            
    <div class="ob-Shares ob-Shares--right ob-Shares--horizontal ">
        <div class="ob-Shares-facebookShare">
        <div class="fb-share-button" data-href="http://uneclefdeschamps.overblog.com/2020/03/meme-le-diable-porte-pierre.html" data-layout="button_count"></div>
    </div>
            <div class="ob-Shares-twitter">
        <a class="twitter-share-button"
          href="https://twitter.com/share"
          data-url="http://uneclefdeschamps.overblog.com/2020/03/meme-le-diable-porte-pierre.html"
                              data-text="M&#x00EA;me&#x20;le&#x20;Diable&#x20;porte&#x20;pierre&#x20;&#x21;"
          data-lang="en"
          ></a>
    </div>
                    <div class="ob-Shares-overblog">
        <a id="repost-127308329" class="ob-repost-btn" href="https://admin.over-blog.com/_repost/127308329" rel="nofollow" target="_blank"><span class="ob-repost-label">Repost</span><span class="ob-repost-count">0</span></a><script>
  ob.repost(document.querySelector("#repost-127308329"))
</script>
    </div>
        <div class="ob-Shares-print" style="display:none">
        <img src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/printer.png?v1.4.8.0">
    </div>
</div>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.0';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'facebook-jssdk'));
</script>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'twitter-jssdk'));
</script>




                                
                                 
                                                                                                    
                                                             </footer>
                        </article>
                                            <article class="post">
                            <header class="header">
                                                                    <div class="comments-number">
                                                                                    <a href="http://uneclefdeschamps.overblog.com/2020/02/immigration-perdant/perdant.html#comments" title="commentaires" class="comments">
                                                                                                       <span id="comment-count-122472922">…</span><script>
  ob.commentCount(document.querySelector("#comment-count-122472922"), {
    id: 122472922,
    resource: "http://uneclefdeschamps.overblog.com/api/comment-count/122472922",
    format: (count) => {
      const string = count === 0
        ? "no comment"
        : count === 1
          ? "%c commentaire"
          : "%c commentaires"

      return string.replace("%c", count)
    }
  })
</script>
                                                                                           </a>
                                                                            </div>
                                                                    <div class="title">
                                                                                <h2 class="post-title">
                                        
                                                                                            <a title="La principale question de la présidentielle de 2022 sera la préservation de l’unité de la France et de la paix intérieure mises en danger par 50 ans de politiques migratoires aussi néfastes pour les indigènes que pour les allogènes. Le 18 février 2020,..." href="http://uneclefdeschamps.overblog.com/2020/02/immigration-perdant/perdant.html">
                                                                                                                                                        Immigration: perdant/perdant
                                                                                                                                                </a>
                                                                                                                            </h2>
                                                                            </div>
                                                                    <div class="date">
                                        <p>Publié le 25 Février 2020</p>
                                    </div>
                                                            </header>

                            <div class="body">
                                                                                                            <div class="post-cover">
                                            <a href="http://uneclefdeschamps.overblog.com/2020/02/immigration-perdant/perdant.html" title="La principale question de la présidentielle de 2022 sera la préservation de l’unité de la France et de la paix intérieure mises en danger par 50 ans de politiques migratoires aussi néfastes pour les indigènes que pour les allogènes. Le 18 février 2020,...">
                                                <img src="https://image.over-blog.com/X8nSwYfFxQxUP8saYshkRM5jVOc=/582x288/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" title="" width="582" height="288" />
                                            </a>
                                        </div>
                                                                        <p>La principale question de la présidentielle de 2022 sera la préservation de l’unité de la France et de la paix intérieure mises en danger par 50 ans de politiques migratoires aussi néfastes pour les indigènes que pour les allogènes. Le 18 février 2020,...</p>
                                                                                                    <p class="readmore">
                                        <a href="http://uneclefdeschamps.overblog.com/2020/02/immigration-perdant/perdant.html">
                                                                                            Lire la suite
                                                                                    </a>
                                    </p>
                                                            </div>
                                                        <footer class="post-footer">
                                <div class="tags">
                                                                            <p>
                                            Rédigé par <span>Pierre Lours</span>
                                        </p>
                                    
                                    <p class="tag">
                                                                            </p>
                                </div>

                                        

  
            
    <div class="ob-Shares ob-Shares--right ob-Shares--horizontal ">
        <div class="ob-Shares-facebookShare">
        <div class="fb-share-button" data-href="http://uneclefdeschamps.overblog.com/2020/02/immigration-perdant/perdant.html" data-layout="button_count"></div>
    </div>
            <div class="ob-Shares-twitter">
        <a class="twitter-share-button"
          href="https://twitter.com/share"
          data-url="http://uneclefdeschamps.overblog.com/2020/02/immigration-perdant/perdant.html"
                              data-text="Immigration&#x3A;&#x20;perdant&#x2F;perdant"
          data-lang="en"
          ></a>
    </div>
                    <div class="ob-Shares-overblog">
        <a id="repost-122472922" class="ob-repost-btn" href="https://admin.over-blog.com/_repost/122472922" rel="nofollow" target="_blank"><span class="ob-repost-label">Repost</span><span class="ob-repost-count">0</span></a><script>
  ob.repost(document.querySelector("#repost-122472922"))
</script>
    </div>
        <div class="ob-Shares-print" style="display:none">
        <img src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/printer.png?v1.4.8.0">
    </div>
</div>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.0';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'facebook-jssdk'));
</script>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'twitter-jssdk'));
</script>




                                
                                 
                                                                                                    
                                                             </footer>
                        </article>
                                            <article class="post">
                            <header class="header">
                                                                    <div class="comments-number">
                                                                                    <a href="http://uneclefdeschamps.overblog.com/2020/02/climanipulation.html#comments" title="commentaires" class="comments">
                                                                                                       <span id="comment-count-121285761">…</span><script>
  ob.commentCount(document.querySelector("#comment-count-121285761"), {
    id: 121285761,
    resource: "http://uneclefdeschamps.overblog.com/api/comment-count/121285761",
    format: (count) => {
      const string = count === 0
        ? "no comment"
        : count === 1
          ? "%c commentaire"
          : "%c commentaires"

      return string.replace("%c", count)
    }
  })
</script>
                                                                                           </a>
                                                                            </div>
                                                                    <div class="title">
                                                                                <h2 class="post-title">
                                        
                                                                                            <a title="Il n'est pas traité ici de la réalité du changement climatique ni de son origine, le temps long se chargera de trancher ! Il s’attache seulement à mettre en lumière l’importance du climat dans la vie des hommes et la manipulation dont il peut être l’objet...." href="http://uneclefdeschamps.overblog.com/2020/02/climanipulation.html">
                                                                                                                                                        Climanipulation ?
                                                                                                                                                </a>
                                                                                                                            </h2>
                                                                            </div>
                                                                    <div class="date">
                                        <p>Publié le 20 Février 2020</p>
                                    </div>
                                                            </header>

                            <div class="body">
                                                                                                            <div class="post-cover">
                                            <a href="http://uneclefdeschamps.overblog.com/2020/02/climanipulation.html" title="Il n'est pas traité ici de la réalité du changement climatique ni de son origine, le temps long se chargera de trancher ! Il s’attache seulement à mettre en lumière l’importance du climat dans la vie des hommes et la manipulation dont il peut être l’objet....">
                                                <img src="https://image.over-blog.com/X8nSwYfFxQxUP8saYshkRM5jVOc=/582x288/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" title="" width="582" height="288" />
                                            </a>
                                        </div>
                                                                        <p>Il n'est pas traité ici de la réalité du changement climatique ni de son origine, le temps long se chargera de trancher ! Il s’attache seulement à mettre en lumière l’importance du climat dans la vie des hommes et la manipulation dont il peut être l’objet....</p>
                                                                                                    <p class="readmore">
                                        <a href="http://uneclefdeschamps.overblog.com/2020/02/climanipulation.html">
                                                                                            Lire la suite
                                                                                    </a>
                                    </p>
                                                            </div>
                                                        <footer class="post-footer">
                                <div class="tags">
                                                                            <p>
                                            Rédigé par <span>Pierre Lours</span>
                                        </p>
                                    
                                    <p class="tag">
                                                                            </p>
                                </div>

                                        

  
            
    <div class="ob-Shares ob-Shares--right ob-Shares--horizontal ">
        <div class="ob-Shares-facebookShare">
        <div class="fb-share-button" data-href="http://uneclefdeschamps.overblog.com/2020/02/climanipulation.html" data-layout="button_count"></div>
    </div>
            <div class="ob-Shares-twitter">
        <a class="twitter-share-button"
          href="https://twitter.com/share"
          data-url="http://uneclefdeschamps.overblog.com/2020/02/climanipulation.html"
                              data-text="Climanipulation&#x20;&#x3F;"
          data-lang="en"
          ></a>
    </div>
                    <div class="ob-Shares-overblog">
        <a id="repost-121285761" class="ob-repost-btn" href="https://admin.over-blog.com/_repost/121285761" rel="nofollow" target="_blank"><span class="ob-repost-label">Repost</span><span class="ob-repost-count">0</span></a><script>
  ob.repost(document.querySelector("#repost-121285761"))
</script>
    </div>
        <div class="ob-Shares-print" style="display:none">
        <img src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/printer.png?v1.4.8.0">
    </div>
</div>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.0';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'facebook-jssdk'));
</script>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'twitter-jssdk'));
</script>




                                
                                 
                                                                                                    
                                                             </footer>
                        </article>
                                            <article class="post">
                            <header class="header">
                                                                    <div class="comments-number">
                                                                                    <a href="http://uneclefdeschamps.overblog.com/2020/02/perdant/perdant.html#comments" title="commentaires" class="comments">
                                                                                                       <span id="comment-count-121012860">…</span><script>
  ob.commentCount(document.querySelector("#comment-count-121012860"), {
    id: 121012860,
    resource: "http://uneclefdeschamps.overblog.com/api/comment-count/121012860",
    format: (count) => {
      const string = count === 0
        ? "no comment"
        : count === 1
          ? "%c commentaire"
          : "%c commentaires"

      return string.replace("%c", count)
    }
  })
</script>
                                                                                           </a>
                                                                            </div>
                                                                    <div class="title">
                                                                                <h2 class="post-title">
                                        
                                                                                            <a title="Un demi-siècle d'immigrationnisme boulimique, toutes portes et fenêtres ouvertes, invite frénétiquement la pauvre multitude à venir consommer nos richesses, changer nos valeurs et façonner nos nouveaux modes de vie. Il est imprécis et injuste de parler..." href="http://uneclefdeschamps.overblog.com/2020/02/perdant/perdant.html">
                                                                                                                                                        Perdant/Perdant
                                                                                                                                                </a>
                                                                                                                            </h2>
                                                                            </div>
                                                                    <div class="date">
                                        <p>Publié le 17 Février 2020</p>
                                    </div>
                                                            </header>

                            <div class="body">
                                                                                                            <div class="post-cover">
                                            <a href="http://uneclefdeschamps.overblog.com/2020/02/perdant/perdant.html" title="Un demi-siècle d'immigrationnisme boulimique, toutes portes et fenêtres ouvertes, invite frénétiquement la pauvre multitude à venir consommer nos richesses, changer nos valeurs et façonner nos nouveaux modes de vie. Il est imprécis et injuste de parler...">
                                                <img src="https://image.over-blog.com/X8nSwYfFxQxUP8saYshkRM5jVOc=/582x288/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" title="" width="582" height="288" />
                                            </a>
                                        </div>
                                                                        <p>Un demi-siècle d'immigrationnisme boulimique, toutes portes et fenêtres ouvertes, invite frénétiquement la pauvre multitude à venir consommer nos richesses, changer nos valeurs et façonner nos nouveaux modes de vie. Il est imprécis et injuste de parler...</p>
                                                                                                    <p class="readmore">
                                        <a href="http://uneclefdeschamps.overblog.com/2020/02/perdant/perdant.html">
                                                                                            Lire la suite
                                                                                    </a>
                                    </p>
                                                            </div>
                                                        <footer class="post-footer">
                                <div class="tags">
                                                                            <p>
                                            Rédigé par <span>Pierre Lours</span>
                                        </p>
                                    
                                    <p class="tag">
                                                                            </p>
                                </div>

                                        

  
            
    <div class="ob-Shares ob-Shares--right ob-Shares--horizontal ">
        <div class="ob-Shares-facebookShare">
        <div class="fb-share-button" data-href="http://uneclefdeschamps.overblog.com/2020/02/perdant/perdant.html" data-layout="button_count"></div>
    </div>
            <div class="ob-Shares-twitter">
        <a class="twitter-share-button"
          href="https://twitter.com/share"
          data-url="http://uneclefdeschamps.overblog.com/2020/02/perdant/perdant.html"
                              data-text="Perdant&#x2F;Perdant"
          data-lang="en"
          ></a>
    </div>
                    <div class="ob-Shares-overblog">
        <a id="repost-121012860" class="ob-repost-btn" href="https://admin.over-blog.com/_repost/121012860" rel="nofollow" target="_blank"><span class="ob-repost-label">Repost</span><span class="ob-repost-count">0</span></a><script>
  ob.repost(document.querySelector("#repost-121012860"))
</script>
    </div>
        <div class="ob-Shares-print" style="display:none">
        <img src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/printer.png?v1.4.8.0">
    </div>
</div>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.0';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'facebook-jssdk'));
</script>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'twitter-jssdk'));
</script>




                                
                                 
                                                                                                    
                                                             </footer>
                        </article>
                                            <article class="post">
                            <header class="header">
                                                                    <div class="comments-number">
                                                                                    <a href="http://uneclefdeschamps.overblog.com/2020/02/le-proletaire-et-l-immigre.html#comments" title="commentaires" class="comments">
                                                                                                       <span id="comment-count-120619828">…</span><script>
  ob.commentCount(document.querySelector("#comment-count-120619828"), {
    id: 120619828,
    resource: "http://uneclefdeschamps.overblog.com/api/comment-count/120619828",
    format: (count) => {
      const string = count === 0
        ? "no comment"
        : count === 1
          ? "%c commentaire"
          : "%c commentaires"

      return string.replace("%c", count)
    }
  })
</script>
                                                                                           </a>
                                                                            </div>
                                                                    <div class="title">
                                                                                <h2 class="post-title">
                                        
                                                                                            <a title="Le prolétaire était au bonheur communiste ce que l’émigré est à l’idéal fraternel droit-de-l’hommiste : deux couples idéologiques conduisant, par déni de la nature humaine et soif de pouvoir machiavélique, à la destruction de l’individu et de la civilisation..." href="http://uneclefdeschamps.overblog.com/2020/02/le-proletaire-et-l-immigre.html">
                                                                                                                                                        Le prolétaire et l'immigré
                                                                                                                                                </a>
                                                                                                                            </h2>
                                                                            </div>
                                                                    <div class="date">
                                        <p>Publié le 11 Février 2020</p>
                                    </div>
                                                            </header>

                            <div class="body">
                                                                                                            <div class="post-cover">
                                            <a href="http://uneclefdeschamps.overblog.com/2020/02/le-proletaire-et-l-immigre.html" title="Le prolétaire était au bonheur communiste ce que l’émigré est à l’idéal fraternel droit-de-l’hommiste : deux couples idéologiques conduisant, par déni de la nature humaine et soif de pouvoir machiavélique, à la destruction de l’individu et de la civilisation...">
                                                <img src="https://image.over-blog.com/X8nSwYfFxQxUP8saYshkRM5jVOc=/582x288/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" title="" width="582" height="288" />
                                            </a>
                                        </div>
                                                                        <p>Le prolétaire était au bonheur communiste ce que l’émigré est à l’idéal fraternel droit-de-l’hommiste : deux couples idéologiques conduisant, par déni de la nature humaine et soif de pouvoir machiavélique, à la destruction de l’individu et de la civilisation...</p>
                                                                                                    <p class="readmore">
                                        <a href="http://uneclefdeschamps.overblog.com/2020/02/le-proletaire-et-l-immigre.html">
                                                                                            Lire la suite
                                                                                    </a>
                                    </p>
                                                            </div>
                                                        <footer class="post-footer">
                                <div class="tags">
                                                                            <p>
                                            Rédigé par <span>Pierre Lours</span>
                                        </p>
                                    
                                    <p class="tag">
                                                                            </p>
                                </div>

                                        

  
            
    <div class="ob-Shares ob-Shares--right ob-Shares--horizontal ">
        <div class="ob-Shares-facebookShare">
        <div class="fb-share-button" data-href="http://uneclefdeschamps.overblog.com/2020/02/le-proletaire-et-l-immigre.html" data-layout="button_count"></div>
    </div>
            <div class="ob-Shares-twitter">
        <a class="twitter-share-button"
          href="https://twitter.com/share"
          data-url="http://uneclefdeschamps.overblog.com/2020/02/le-proletaire-et-l-immigre.html"
                              data-text="Le&#x20;prol&#x00E9;taire&#x20;et&#x20;l&#x27;immigr&#x00E9;"
          data-lang="en"
          ></a>
    </div>
                    <div class="ob-Shares-overblog">
        <a id="repost-120619828" class="ob-repost-btn" href="https://admin.over-blog.com/_repost/120619828" rel="nofollow" target="_blank"><span class="ob-repost-label">Repost</span><span class="ob-repost-count">0</span></a><script>
  ob.repost(document.querySelector("#repost-120619828"))
</script>
    </div>
        <div class="ob-Shares-print" style="display:none">
        <img src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/printer.png?v1.4.8.0">
    </div>
</div>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.0';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'facebook-jssdk'));
</script>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'twitter-jssdk'));
</script>




                                
                                 
                                                                                                    
                                                             </footer>
                        </article>
                                            <article class="post">
                            <header class="header">
                                                                    <div class="comments-number">
                                                                                    <a href="http://uneclefdeschamps.overblog.com/2020/02/le-baillon-plutot-que-l-explosion.html#comments" title="commentaires" class="comments">
                                                                                                       <span id="comment-count-120588786">…</span><script>
  ob.commentCount(document.querySelector("#comment-count-120588786"), {
    id: 120588786,
    resource: "http://uneclefdeschamps.overblog.com/api/comment-count/120588786",
    format: (count) => {
      const string = count === 0
        ? "no comment"
        : count === 1
          ? "%c commentaire"
          : "%c commentaires"

      return string.replace("%c", count)
    }
  })
</script>
                                                                                           </a>
                                                                            </div>
                                                                    <div class="title">
                                                                                <h2 class="post-title">
                                        
                                                                                            <a title="La France est devenue un salmigondis ingouvernable composé de communautés et d’intérêts opposés prêts à s’affronter. Pour contenir ces conflits potentiels qui couvent, on interdit toutes expressions susceptibles de mettre le feu au pays : les lois Pleven..." href="http://uneclefdeschamps.overblog.com/2020/02/le-baillon-plutot-que-l-explosion.html">
                                                                                                                                                        Le baîllon plutôt que l'explosion?
                                                                                                                                                </a>
                                                                                                                            </h2>
                                                                            </div>
                                                                    <div class="date">
                                        <p>Publié le 11 Février 2020</p>
                                    </div>
                                                            </header>

                            <div class="body">
                                                                                                            <div class="post-cover">
                                            <a href="http://uneclefdeschamps.overblog.com/2020/02/le-baillon-plutot-que-l-explosion.html" title="La France est devenue un salmigondis ingouvernable composé de communautés et d’intérêts opposés prêts à s’affronter. Pour contenir ces conflits potentiels qui couvent, on interdit toutes expressions susceptibles de mettre le feu au pays : les lois Pleven...">
                                                <img src="https://image.over-blog.com/X8nSwYfFxQxUP8saYshkRM5jVOc=/582x288/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" title="" width="582" height="288" />
                                            </a>
                                        </div>
                                                                        <p>La France est devenue un salmigondis ingouvernable composé de communautés et d’intérêts opposés prêts à s’affronter. Pour contenir ces conflits potentiels qui couvent, on interdit toutes expressions susceptibles de mettre le feu au pays : les lois Pleven...</p>
                                                                                                    <p class="readmore">
                                        <a href="http://uneclefdeschamps.overblog.com/2020/02/le-baillon-plutot-que-l-explosion.html">
                                                                                            Lire la suite
                                                                                    </a>
                                    </p>
                                                            </div>
                                                        <footer class="post-footer">
                                <div class="tags">
                                                                            <p>
                                            Rédigé par <span>Pierre Lours</span>
                                        </p>
                                    
                                    <p class="tag">
                                                                            </p>
                                </div>

                                        

  
            
    <div class="ob-Shares ob-Shares--right ob-Shares--horizontal ">
        <div class="ob-Shares-facebookShare">
        <div class="fb-share-button" data-href="http://uneclefdeschamps.overblog.com/2020/02/le-baillon-plutot-que-l-explosion.html" data-layout="button_count"></div>
    </div>
            <div class="ob-Shares-twitter">
        <a class="twitter-share-button"
          href="https://twitter.com/share"
          data-url="http://uneclefdeschamps.overblog.com/2020/02/le-baillon-plutot-que-l-explosion.html"
                              data-text="Le&#x20;ba&#x00EE;llon&#x20;plut&#x00F4;t&#x20;que&#x20;l&#x27;explosion&#x3F;"
          data-lang="en"
          ></a>
    </div>
                    <div class="ob-Shares-overblog">
        <a id="repost-120588786" class="ob-repost-btn" href="https://admin.over-blog.com/_repost/120588786" rel="nofollow" target="_blank"><span class="ob-repost-label">Repost</span><span class="ob-repost-count">0</span></a><script>
  ob.repost(document.querySelector("#repost-120588786"))
</script>
    </div>
        <div class="ob-Shares-print" style="display:none">
        <img src="https://assets.over-blog-kiwi.com/b/blog/bundles/overblogblogblog/images/printer.png?v1.4.8.0">
    </div>
</div>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.0';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'facebook-jssdk'));
</script>

<script>
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.type = 'text/javascript';
            js.async = true;
            js.defer = true;
            js.id = id;
            js.src = '//platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js, fjs);
        }
    }(document, 'script', 'twitter-jssdk'));
</script>




                                
                                 
                                                                                                    
                                                             </footer>
                        </article>
                                                </section>
            <section id="right-content" role="complementary">
                <aside id="sidebar">
                    
                                            <div class="widget follow">
                            <p class="widget-title">Suivez-moi</p>
                            <ul>
                                                                                                <li class="rss">
                                    <a href="/rss">RSS</a>
                                </li>
                            </ul>
                            <div class="cb"></div>
                        </div>
                    
                                            <div class="ads ads-300">
                            <div id="_0fd85bf"></div>                        </div>
                    
                                         <div class="widget subscribe">
                        <p class="widget-title">Newsletter</p>
                        <div class="box-content">
                            <p>Abonnez-vous pour être averti des nouveaux articles publiés.</p>
                            <!-- subscription form -->
<form action="/mail/subscribe?utm_source=_ob_abo_newsletter&amp;utm_medium=_ob_sidebar" method="post" class="ob-form ob-form-subscription">
    <div class="ob-form-field">
        <label class="ob-label required" for="form_email">Email</label>
        <input type="email" id="form_email" name="email" placeholder="Saisissez votre email ici" required="required" class="ob-input ob-input-email" />
    </div>
    <input type="submit" value="S'abonner" class="ob-input ob-input-submit" />
</form>
                        </div>
                    </div>
                    
                    
                                            <div class="widget">
                            <p class="widget-title">Catégories</p>
                            <ul>
                                                                    <li>
                                        <a href="/tag/politique/">politique</a>
                                    </li>
                                                            </ul>
                        </div>
                    
                                            <div class="widget">
                            <p class="widget-title">Archives</p>
                            <ul id="archivelist">
                                                                      <li>
                                        <a href="#" class="plustext" onclick="javascript:switch_arch('2020')">2020</a>
                                        <ul id="arch_2020" class="arch_month">
                                                                                                                                                  <li><a href="/archive/2020-06/">Juin</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2020-05/">Mai</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2020-04/">Avril</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2020-03/">Mars</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2020-02/">Février</a> (5)</li>
                                                                                                                                        </ul>
                                      </li>
                                                                      <li>
                                        <a href="#" class="plustext" onclick="javascript:switch_arch('2019')">2019</a>
                                        <ul id="arch_2019" class="arch_month">
                                                                                                                                                  <li><a href="/archive/2019-04/">Avril</a> (1)</li>
                                                                                                                                        </ul>
                                      </li>
                                                                      <li>
                                        <a href="#" class="plustext" onclick="javascript:switch_arch('2018')">2018</a>
                                        <ul id="arch_2018" class="arch_month">
                                                                                                                                                  <li><a href="/archive/2018-12/">Décembre</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2018-07/">Juillet</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2018-04/">Avril</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2018-03/">Mars</a> (3)</li>
                                                                                                                                                                                                      <li><a href="/archive/2018-01/">Janvier</a> (2)</li>
                                                                                                                                        </ul>
                                      </li>
                                                                      <li>
                                        <a href="#" class="plustext" onclick="javascript:switch_arch('2017')">2017</a>
                                        <ul id="arch_2017" class="arch_month">
                                                                                                                                                  <li><a href="/archive/2017-07/">Juillet</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2017-06/">Juin</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2017-05/">Mai</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2017-04/">Avril</a> (1)</li>
                                                                                                                                        </ul>
                                      </li>
                                                                      <li>
                                        <a href="#" class="plustext" onclick="javascript:switch_arch('2016')">2016</a>
                                        <ul id="arch_2016" class="arch_month">
                                                                                                                                                  <li><a href="/archive/2016-05/">Mai</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2016-03/">Mars</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2016-02/">Février</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2016-01/">Janvier</a> (1)</li>
                                                                                                                                        </ul>
                                      </li>
                                                                      <li>
                                        <a href="#" class="plustext" onclick="javascript:switch_arch('2015')">2015</a>
                                        <ul id="arch_2015" class="arch_month">
                                                                                                                                                  <li><a href="/archive/2015-12/">Décembre</a> (3)</li>
                                                                                                                                                                                                      <li><a href="/archive/2015-11/">Novembre</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2015-09/">Septembre</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2015-07/">Juillet</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2015-05/">Mai</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2015-04/">Avril</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2015-03/">Mars</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2015-02/">Février</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2015-01/">Janvier</a> (1)</li>
                                                                                                                                        </ul>
                                      </li>
                                                                      <li>
                                        <a href="#" class="plustext" onclick="javascript:switch_arch('2014')">2014</a>
                                        <ul id="arch_2014" class="arch_month">
                                                                                                                                                  <li><a href="/archive/2014-12/">Décembre</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2014-11/">Novembre</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2014-10/">Octobre</a> (4)</li>
                                                                                                                                                                                                      <li><a href="/archive/2014-09/">Septembre</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2014-08/">Août</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2014-07/">Juillet</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2014-06/">Juin</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2014-04/">Avril</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2014-03/">Mars</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2014-02/">Février</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2014-01/">Janvier</a> (1)</li>
                                                                                                                                        </ul>
                                      </li>
                                                                      <li>
                                        <a href="#" class="plustext" onclick="javascript:switch_arch('2013')">2013</a>
                                        <ul id="arch_2013" class="arch_month">
                                                                                                                                                  <li><a href="/archive/2013-11/">Novembre</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2013-10/">Octobre</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2013-09/">Septembre</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2013-08/">Août</a> (1)</li>
                                                                                                                                                                                                      <li><a href="/archive/2013-07/">Juillet</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2013-06/">Juin</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2013-05/">Mai</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2013-04/">Avril</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2013-03/">Mars</a> (3)</li>
                                                                                                                                                                                                      <li><a href="/archive/2013-02/">Février</a> (4)</li>
                                                                                                                                        </ul>
                                      </li>
                                                                      <li>
                                        <a href="#" class="plustext" onclick="javascript:switch_arch('2012')">2012</a>
                                        <ul id="arch_2012" class="arch_month">
                                                                                                                                                  <li><a href="/archive/2012-02/">Février</a> (2)</li>
                                                                                                                                                                                                      <li><a href="/archive/2012-01/">Janvier</a> (8)</li>
                                                                                                                                        </ul>
                                      </li>
                                                                      <li>
                                        <a href="#" class="plustext" onclick="javascript:switch_arch('2011')">2011</a>
                                        <ul id="arch_2011" class="arch_month">
                                                                                                                                                  <li><a href="/archive/2011-12/">Décembre</a> (1)</li>
                                                                                                                                        </ul>
                                      </li>
                                                              </ul>
                        </div>
                    
                                            <div class="widget last">
                            <p class="widget-title">articles récents</p>
                            <ul>
                                                                                                            <li class="left">
                                            <h3>
                                                <a href="http://uneclefdeschamps.overblog.com/2020/06/les-mots-du-mal.html" title="En savoir plus &quot;Les mots du mal&quot;">
                                                    <img src="https://image.over-blog.com/lF0A9npA3zYWHVLW15RCGB5QZeE=/146x146/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" width="146" height="146" />
                                                </a>
                                            </h3>
                                        </li>
                                                                                                                                                                                        <li >
                                            <h3>
                                                <a href="http://uneclefdeschamps.overblog.com/2020/05/l-eau-qui-dort.html" title="En savoir plus &quot;L'eau qui dort&quot;">
                                                    <img src="https://image.over-blog.com/lF0A9npA3zYWHVLW15RCGB5QZeE=/146x146/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" width="146" height="146" />
                                                </a>
                                            </h3>
                                        </li>
                                                                                    <div class="cb"></div>
                                                                                                                                                                                        <li class="left">
                                            <h3>
                                                <a href="http://uneclefdeschamps.overblog.com/2020/04/la-revolte-des-silencieux-extrait.html" title="En savoir plus &quot;La révolte des silencieux (extrait)&quot;">
                                                    <img src="https://image.over-blog.com/lF0A9npA3zYWHVLW15RCGB5QZeE=/146x146/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" width="146" height="146" />
                                                </a>
                                            </h3>
                                        </li>
                                                                                                                                                                                        <li >
                                            <h3>
                                                <a href="http://uneclefdeschamps.overblog.com/2020/04/les-animaux-malades-de-la-peur.html" title="En savoir plus &quot;Les animaux malades de la peur&quot;">
                                                    <img src="https://image.over-blog.com/lF0A9npA3zYWHVLW15RCGB5QZeE=/146x146/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" width="146" height="146" />
                                                </a>
                                            </h3>
                                        </li>
                                                                                    <div class="cb"></div>
                                                                                                                                                                                        <li class="left">
                                            <h3>
                                                <a href="http://uneclefdeschamps.overblog.com/2020/03/meme-le-diable-porte-pierre.html" title="En savoir plus &quot;Même le Diable porte pierre !&quot;">
                                                    <img src="https://image.over-blog.com/lF0A9npA3zYWHVLW15RCGB5QZeE=/146x146/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" width="146" height="146" />
                                                </a>
                                            </h3>
                                        </li>
                                                                                                                                                                                        <li >
                                            <h3>
                                                <a href="http://uneclefdeschamps.overblog.com/2020/02/immigration-perdant/perdant.html" title="En savoir plus &quot;Immigration: perdant/perdant&quot;">
                                                    <img src="https://image.over-blog.com/lF0A9npA3zYWHVLW15RCGB5QZeE=/146x146/smart/filters:no_upscale()/image%2F0478859%2F201303%2Fob_986062770c79a3edee839744729a59ad_voeux-pierre-lours.jpg" alt="" width="146" height="146" />
                                                </a>
                                            </h3>
                                        </li>
                                                                                    <div class="cb"></div>
                                                                                                                                            <div class="cb"></div>
                            </ul>
                        </div>
                    
                    
                    
                </aside>
            </section>
            <div class="cb"></div>
                            <div class="ob-pagination">
                        <span
                class="ob-page ob-page-current "
            >1</span>
                                <a
                href="/page/2"
                class="ob-page ob-page-link "
            >2</a>
                                <a
                href="/page/3"
                class="ob-page ob-page-link "
            >3</a>
                                <a
                href="/page/4"
                class="ob-page ob-page-link "
            >4</a>
                                <a
                href="/page/5"
                class="ob-page ob-page-link "
            >5</a>
                                <a
                href="/page/6"
                class="ob-page ob-page-link "
            >6</a>
                                <a
                href="/page/7"
                class="ob-page ob-page-link "
            >7</a>
                                <a
                href="/page/8"
                class="ob-page ob-page-link "
            >8</a>
                                <a
                href="/page/9"
                class="ob-page ob-page-link "
            >9</a>
                                <a
                href="/page/10"
                class="ob-page ob-page-link ob-page-tens"
            >10</a>
                                <a
                href="/page/2"
                class="ob-page ob-page-link ob-page-next"
            >></a>
                                <a
                href="/page/10"
                class="ob-page ob-page-link ob-page-last"
            >>></a>
            </div>
            
            <footer id="blog-footer">
                <p>Theme: Twentyeleven &copy; 2012 -
                    <span>Hébergé par</span> <a href="https://www.over-blog.com" target="_blank">Overblog</a>
                </p>
            </footer>
        </div>

                    <!-- Ad footer -->
            <div style="text-align:center;margin-bottom:20px;">
                <div id="_e901fc0"></div>            </div>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
        <script src="https://assets.over-blog.com/t/catalog/jquery/fancybox/2.5/source/jquery.fancybox.pack.js"></script>

        <script>
                            function switch_arch(year) {
                    'use strict';
                    var archiveYear, archiveMonths, displayStyle;
                    displayStyle = '';
                    archiveYear = document.getElementById('arch_' + year);
                    if (typeof (archiveYear) !== 'undefined') {
                        if (archiveYear.style.display !== 'none') {
                            // Hide years without months
                            archiveMonths = archiveYear.getElementsByTagName('li');
                            if (!archiveMonths.length) {
                                archiveYear.parentNode.style.display = 'none';
                            }
                            // Onclick management
                            displayStyle = 'none';
                        }
                        archiveYear.style.display = displayStyle;
                    }
                    return false;
                }

                $(document).ready(function(){
                    $('.plustext').click(function() {
                        return false;
                    });
                });

                                                                                                      switch_arch('2019');
                                                                                  switch_arch('2018');
                                                                                  switch_arch('2017');
                                                                                  switch_arch('2016');
                                                                                  switch_arch('2015');
                                                                                  switch_arch('2014');
                                                                                  switch_arch('2013');
                                                                                  switch_arch('2012');
                                                                                  switch_arch('2011');
                                                
            $(document).ready(function() {
                $(".ob-section-images a, .ob-link-img, .avatar").attr("rel", "fancybox");
                $("a[rel=fancybox]").fancybox({
                    'overlayShow'    : true,
                    'titlePosition' : 'over',
                    'transitionIn'    : 'fadin',
                    'transitionOut'    : 'fadin',
                    'type'            : 'image'
                });

                // Placeholder Script
                if($.browser.msie && $.browser.version <= 9.0 ){
                    $('input[placeholder]').each(function(){
                        var input = $(this);
                        $(input).val(input.attr('placeholder'));
                        $(input).focus(function(){
                             if (input.val() == input.attr('placeholder')) {
                                 input.val('');
                             }
                        });
                        $(input).blur(function(){
                            if (input.val() == '' || input.val() == input.attr('placeholder')) {
                                input.val(input.attr('placeholder'));
                            }
                        });
                    });
                }
            });

            
            // Facebook comments + share
            (function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "https://connect.facebook.net/en_US/all.js#xfbml=1&appId=284865384904712";
                    fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));

            // Twitter share + posts
            !function(d,s,id){
                var js, fjs = d.getElementsByTagName(s)[0];
                if(!d.getElementById(id)){
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "https://platform.twitter.com/widgets.js";
                    fjs.parentNode.insertBefore(js,fjs);
                }
            }(document,"script","twitter-wjs");

            // Google + button
            window.___gcfg = {lang: 'fr'};
              (function() {
                var po = document.createElement('script');
                    po.type = 'text/javascript';
                    po.async = true;
                    po.src = 'https://apis.google.com/js/plusone.js';
                var s = document.getElementsByTagName('script')[0];
                    s.parentNode.insertBefore(po, s);
              })();

                      </script>
    <div class="ob-footer ob-footer-padded" id="legals" >
    <ul>
        <li class="ob-footer-item">Voir le profil de <a href="https://www.over-blog.com/user/456346.html" target="_blank">Pierre Lours</a> sur le portail Overblog</li>
                <li class="ob-footer-item"><a href="https://www.over-blog.com/" target="_blank">Créer un blog gratuit sur Overblog</a></li>
            <li class="ob-footer-item"><a href="/top">Top articles</a></li>
        <li class="ob-footer-item"><a href="/contact">Contact</a></li>
        <li class="ob-footer-item"><a href="https://www.over-blog.com/abuse/478859"> Signaler un abus </a></li>
        <li class="ob-footer-item"><a href="https://www.over-blog.com/terms-of-use" target="_blank">C.G.U.</a></li>
            <li class="ob-footer-item"><a href="https://www.over-blog.com/features/earn-money.html" target="_blank">Rémunération en droits d'auteur</a></li>
        <li class="ob-footer-item"><a href="https://www.over-blog.com/features/premium.html" target="_blank">Offre Premium</a></li>
            <li class="ob-footer-item"><a href="https://www.over-blog.com/cookies" target="_blank">Cookies et données personnelles</a></li>
    </ul>
</div>
<div id="_5a075a9"></div><div id="_f3a8b86"></div><!-- Begin Mediamétrie Tag -->
<script>
function _eStat_Whap_loaded_func(){
  eStatWhap.serial("800000207013");
  eStatWhap.send();
}

(function() {
  var myscript = document.createElement('script');
  myscript.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'w.estat.com/js/whap.js';
  myscript.setAttribute('async', 'true');
  var s = document.getElementsByTagName('script')[0];
  s.parentNode.insertBefore(myscript, s);
})();
</script>
<!-- End Mediamétrie Tag -->
</body>
</html>