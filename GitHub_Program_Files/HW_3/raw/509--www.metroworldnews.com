<!DOCTYPE html><html lang="en"><head><meta charSet="utf-8"/><meta name="theme-color" content="#279655"/><meta name="viewport" content="width=device-width"/><meta charSet="utf-8"/><title>Coronavirus: Donald Trump desinforma y dice que hay una cura para el Covid-19</title><meta name="description" content="Parece que la recta final de la campaña de Donald Trump se tratará de mentir sobre el Coronavirus y desinformar a los votantes."/><meta name="keywords" content="a Publimetro, Latam, Noticias"/><link rel="canonical" href="https://www.fayerwayer.com/2020/10/coronavirus-donald-trump-facebook"/><link rel="preload" href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&amp;display=swap" as="stylesheet"/><link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&amp;display=swap"/><link rel="apple-touch-icon" sizes="180x180" href="https://assets.metrolatam.com/apple-touch-icon.png"/><link rel="icon" type="image/png" sizes="32x32" href="https://assets.metrolatam.com/favicon-32x32.png"/><link rel="icon" type="image/png" sizes="16x16" href="https://assets.metrolatam.com/favicon-16x16.png"/><link rel="manifest" href="https://assets.metrolatam.com/manifest.json?v=1"/><link rel="mask-icon" href="https://assets.metrolatam.com/safari-pinned-tab.svg" color="black"/><meta name="theme-color" content="#fcfffd"/><meta name="msapplication-TileColor" content="#ffffff"/><meta name="msapplication-TileImage" content="https://assets.metrolatam.com/ms-icon-144x144.png"/><meta property="og:url" content="https://www.fayerwayer.com/2020/10/coronavirus-donald-trump-facebook"/><meta property="og:type" content="website"/><meta property="og:site_name" content="Publimetro Test"/><meta property="og:title" content="Coronavirus: Donald Trump desinforma y dice que hay una cura para el Covid-19"/><meta property="og:description" content="Parece que la recta final de la campaña de Donald Trump se tratará de mentir sobre el Coronavirus y desinformar a los votantes."/><meta property="og:image" content="https://media.metrolatam.com/2018/11/23/donaldtrumpadkljahf-479b39739c37419f141b370c1dd2c171-1200x600.jpg"/><meta property="og:locale" content="es_ES"/><meta property="article:author" content="publimetro"/><meta property="fb:pages" content="106889654447793"/><meta name="twitter:card" content="summary_large_image"/><meta name="twitter:site" content="@PublimetroChile"/><meta name="twitter:description" content="Parece que la recta final de la campaña de Donald Trump se tratará de mentir sobre el Coronavirus y desinformar a los votantes."/><meta name="twitter:image"/><meta name="twitter:url" content="https://www.fayerwayer.com/2020/10/coronavirus-donald-trump-facebook"/><script> var dfp_articulo = "coronavirus-donald-trump-facebook";
                                                      var dfp_canal = "internet";
                                                      var dfp_categorias = "internet";
                                                      var dfp_seccion = "internet";
                                                      var dfp_tipo = "articulo";
                                                      var dfp_safety = "true";
                                                      function osdlfm(){};
                                                      function slots(){
                                                        console.log("-----🟢 Banners que se cargaron 🟢----------");
                                                        console.log("");
                                                        for (const prop in googletag.pubads().getSlots()) {

                                                          const slot = googletag.pubads().getSlots()[prop];
                                                          //console.log("slot",slot);

                                                          console.log("%c👉AdUnit: "+slot.getAdUnitPath(),'background: #222; color: #bada55');
                                                          for (const size in slot.getSizes()) {
                                                              console.log("📐Tamaño Asignado",slot.getSizes()[size]);
                                                          }
                                                          console.log("🧱Respuesta Ad Server: ",slot.getResponseInformation());
                                                          console.log("");

                                                      }


                                                      }
                                                  </script><script>

          (function (d) {
            var js, s = d.getElementsByTagName('script')[0]; js = d.createElement('script');
            js.className = 'jquery'; js.async = true; js.type = 'text/javascript';
            js.src = 'https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js';
            s.parentNode.insertBefore(js, s);
          })(window.document);

          function defer(method){
            if(window.jQuery){
              method();
            }else{
              setTimeout(function(){ defer(method); console.log("otra vez"); }, 300);
            }
          }
          </script><script data-ad-client="ca-pub-9077310428872672" async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script><script> window._taboola = window._taboola || [];
                                                      _taboola.push({article:'auto'});
                                                      !function (e, f, u, i) {
                                                        if (!document.getElementById(i)){
                                                          e.async = 1;
                                                          e.src = u;
                                                          e.id = i;
                                                          f.parentNode.insertBefore(e, f);
                                                        }
                                                      }(document.createElement('script'),
                                                      document.getElementsByTagName('script')[0],
                                                      '//cdn.taboola.com/libtrc/mediaresponsegroup-metroworldnews/loader.js',
                                                      'tb_loader_script');
                                                      if(window.performance && typeof window.performance.mark == 'function')
                                                        {window.performance.mark('tbl_ic');}
                                                  </script><script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-app.js"></script><script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-messaging.js"></script><script>
            var lastToken = localStorage.getItem("tokenBrowser");
            var newToken = localStorage.getItem("newToken");
            var config = {
              apiKey: "AIzaSyDt8nUEotBIheESkI3hW_X7OfRWYKqNDzM",
             authDomain: "metro-notificaciones.firebaseapp.com",
             databaseURL: "https://metro-notificaciones.firebaseio.com",
             projectId: "metro-notificaciones",
             storageBucket: "",
             messagingSenderId: "759709000663"
            };
            firebase.initializeApp(config);
            if(typeof(messaging) == "undefined"){
              let messaging;
            }
            messaging = firebase.messaging();
            messaging.onMessage(function(payload) {
              const options = {
                icon: "https://media.metrolatam.com/icon_push.png",
                body: payload.notification.body,
              };
              console.log(options);
              var notification = new Notification(payload.notification.title, options);
              notification.onclick = function(event) {
                window.open(payload.notification.click_action, '_blank');
                event.preventDefault();
              }
            });
            messaging.usePublicVapidKey("BPElfNDFWo90s7M1RkxFju4LQ0SJ1K1iDpseWjD9WS0auoEwgYA-W2pKyuf0LvD0M3lsBwxesCx_2cICQjIDz44");
            messaging.requestPermission().then(function(token)
            {
              console.log('Notification permission granted.');
              messaging.getToken().then(function(currentToken) {
              if (currentToken) {
                if(lastToken != currentToken){
                  console.log("New Token",currentToken);
                  r(currentToken,"new");
                  localStorage.setItem("tokenBrowser",currentToken);
                }else{
                  console.log("Current Token",lastToken);
                }
              } else {
                console.log('No Instance ID token available. Request permission to generate one.');
              }
            }).catch(function(err) {
              console.log('An error occurred while retrieving token. ', err);
              showToken('Error retrieving Instance ID token. ', err);
              //setTokenSentToServer(false);
            });

             }).catch(function(err) {
               console.log('Unable to get permission to notify.', err);
             });
            messaging.onTokenRefresh(function() {
              messaging.getToken().then(function(rT) {
                console.log('Token refreshed.');
                if(lastToken != rT){
                  r(rT,lastToken);
                  console.log("Refreshed Token",rt);
                }else{
                  console.log("Same Refreshed Token",lastToken);
                }
              }).catch(function(err) {
                console.log('Unable to retrieve refreshed token ', err);
                showToken('Unable to retrieve refreshed token ', err);
              });
            });
            function showToken(param){
              console.log("Token Error",param);
            }
            function r(token,oldToken){
              if(oldToken == undefined || oldToken == null || oldToken.trim() == "")
              {
                      oldToken = "No previus exists";
              }

              $.post("https://consultas.srvmt.com/api/v2/push/",{"idBlog":8, pushToken:token, statusToken:"update",oldPushToken:oldToken}, function(data){
                      if(data.result == "ok" || data.result == "token exists")
                      {
                          localStorage.setItem("tokenBrowser", token);
                          localStorage.setItem("newToken", token);
                      }
              })

            }

          </script><meta name="next-head-count" content="37"/><link rel="preload" href="/_next/static/css/styles.66d52887.chunk.css" as="style"/><link rel="stylesheet" href="/_next/static/css/styles.66d52887.chunk.css"/><link rel="preload" href="/_next/static/PbN3AsfxKJq5vDOpjQM7y/pages/_app.js" as="script"/><link rel="preload" href="/_next/static/PbN3AsfxKJq5vDOpjQM7y/pages/%5Bcategoria%5D/%5B...all%5D.js" as="script"/><link rel="preload" href="/_next/static/runtime/webpack-e0456d8994071b19e80d.js" as="script"/><link rel="preload" href="/_next/static/chunks/framework.8838312fdc5fcea078c5.js" as="script"/><link rel="preload" href="/_next/static/chunks/commons.c81ec8442de1a097f324.js" as="script"/><link rel="preload" href="/_next/static/chunks/180edcd688b86e6ba05ccbdd15675708d3f3a774.df0089e9648c715485ec.js" as="script"/><link rel="preload" href="/_next/static/chunks/d249f80c6e22e6546b1658f7e80e83f7bc8e043c.a34b6c3b3012d16f2643.js" as="script"/><link rel="preload" href="/_next/static/chunks/styles.645ef5e82f8eba5e03ab.js" as="script"/><link rel="preload" href="/_next/static/runtime/main-72a1ede3b49e36ca1fcf.js" as="script"/><link rel="preload" href="/_next/static/chunks/f691137efed66dafdc9a97012f02490f7d0765a3.2eeed42fe7b2cf9bbb23.js" as="script"/><link rel="preload" href="/_next/static/chunks/336740e496b23ca74975dd1c2087ff7ace23c5cf.cc12c7e1b2cd0f3beb5d.js" as="script"/><link rel="preload" href="/_next/static/chunks/15ae0a1979a88dc8f50180ef82658055e17f7cbd.b9a3e96e9c16e722de83.js" as="script"/><link rel="preload" href="/_next/static/chunks/237fbaee3ec7e140018a9bb46f9bc38c4d901a06.e4045cb608bd0e0ba147.js" as="script"/><link rel="preload" href="/_next/static/chunks/95a7a4f7a4a8cb7632d162e64b59b414ec97548d.a5075c0c83fd4e89ff85.js" as="script"/><link rel="preload" href="/_next/static/chunks/61d1db61b30053831315ece2f2d16cfb43860d67.fc7e85765098b04154ba.js" as="script"/><link rel="preload" href="/_next/static/chunks/a1c14541b4e818af3b8e388a20b535e5ef870ec5.b61244d5114ff8ebb475.js" as="script"/><link rel="preload" href="/_next/static/chunks/a129a1ed072ed79df6d8bf4085dd184fcd00c33d.dd1af562e38e05949bea.js" as="script"/><link rel="preload" href="/_next/static/chunks/dc08a824bedf1dffa171a109338cf75c03cc426c.1a7c7792fed381493091.js" as="script"/><link rel="preload" href="/_next/static/chunks/17.0d92f802480720dc0238.js" as="script"/><link rel="preload" href="/_next/static/chunks/424f0c9122b6ba3bef24f9cbeeaaeb978b3d1342.b6851066d30001de3717.js" as="script"/><link rel="preload" href="/_next/static/chunks/4660eb0fdc85d3e2c9520884002cab201c2afe13.cef265b70c2c4896e790.js" as="script"/><style id="jss-server-side">html {
  box-sizing: border-box;
  -webkit-font-smoothing: auto;
  -moz-osx-font-smoothing: grayscale;
}
*, *::before, *::after {
  box-sizing: inherit;
}
strong, b {
  font-weight: 700;
}
body {
  color: #546e7a;
  margin: 0;
  font-size: 18px;
  font-family: 'Roboto Condensed', sans-serif;
  font-weight: 400;
  line-height: 1.5;
}
@media print {
  body {
    background-color: #fff;
  }
}
a {
  color: #067134;
}
.MuiGrid-container {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  box-sizing: border-box;
}
.MuiGrid-item {
  margin: 0;
  box-sizing: border-box;
}
.MuiGrid-zeroMinWidth {
  min-width: 0;
}
.MuiGrid-direction-xs-column {
  flex-direction: column;
}
.MuiGrid-direction-xs-column-reverse {
  flex-direction: column-reverse;
}
.MuiGrid-direction-xs-row-reverse {
  flex-direction: row-reverse;
}
.MuiGrid-wrap-xs-nowrap {
  flex-wrap: nowrap;
}
.MuiGrid-wrap-xs-wrap-reverse {
  flex-wrap: wrap-reverse;
}
.MuiGrid-align-items-xs-center {
  align-items: center;
}
.MuiGrid-align-items-xs-flex-start {
  align-items: flex-start;
}
.MuiGrid-align-items-xs-flex-end {
  align-items: flex-end;
}
.MuiGrid-align-items-xs-baseline {
  align-items: baseline;
}
.MuiGrid-align-content-xs-center {
  align-content: center;
}
.MuiGrid-align-content-xs-flex-start {
  align-content: flex-start;
}
.MuiGrid-align-content-xs-flex-end {
  align-content: flex-end;
}
.MuiGrid-align-content-xs-space-between {
  align-content: space-between;
}
.MuiGrid-align-content-xs-space-around {
  align-content: space-around;
}
.MuiGrid-justify-xs-center {
  justify-content: center;
}
.MuiGrid-justify-xs-flex-end {
  justify-content: flex-end;
}
.MuiGrid-justify-xs-space-between {
  justify-content: space-between;
}
.MuiGrid-justify-xs-space-around {
  justify-content: space-around;
}
.MuiGrid-justify-xs-space-evenly {
  justify-content: space-evenly;
}
.MuiGrid-spacing-xs-1 {
  width: calc(100% + 8px);
  margin: -4px;
}
.MuiGrid-spacing-xs-1 > .MuiGrid-item {
  padding: 4px;
}
.MuiGrid-spacing-xs-2 {
  width: calc(100% + 16px);
  margin: -8px;
}
.MuiGrid-spacing-xs-2 > .MuiGrid-item {
  padding: 8px;
}
.MuiGrid-spacing-xs-3 {
  width: calc(100% + 24px);
  margin: -12px;
}
.MuiGrid-spacing-xs-3 > .MuiGrid-item {
  padding: 12px;
}
.MuiGrid-spacing-xs-4 {
  width: calc(100% + 32px);
  margin: -16px;
}
.MuiGrid-spacing-xs-4 > .MuiGrid-item {
  padding: 16px;
}
.MuiGrid-spacing-xs-5 {
  width: calc(100% + 40px);
  margin: -20px;
}
.MuiGrid-spacing-xs-5 > .MuiGrid-item {
  padding: 20px;
}
.MuiGrid-spacing-xs-6 {
  width: calc(100% + 48px);
  margin: -24px;
}
.MuiGrid-spacing-xs-6 > .MuiGrid-item {
  padding: 24px;
}
.MuiGrid-spacing-xs-7 {
  width: calc(100% + 56px);
  margin: -28px;
}
.MuiGrid-spacing-xs-7 > .MuiGrid-item {
  padding: 28px;
}
.MuiGrid-spacing-xs-8 {
  width: calc(100% + 64px);
  margin: -32px;
}
.MuiGrid-spacing-xs-8 > .MuiGrid-item {
  padding: 32px;
}
.MuiGrid-spacing-xs-9 {
  width: calc(100% + 72px);
  margin: -36px;
}
.MuiGrid-spacing-xs-9 > .MuiGrid-item {
  padding: 36px;
}
.MuiGrid-spacing-xs-10 {
  width: calc(100% + 80px);
  margin: -40px;
}
.MuiGrid-spacing-xs-10 > .MuiGrid-item {
  padding: 40px;
}
.MuiGrid-grid-xs-auto {
  flex-grow: 0;
  max-width: none;
  flex-basis: auto;
}
.MuiGrid-grid-xs-true {
  flex-grow: 1;
  max-width: 100%;
  flex-basis: 0;
}
.MuiGrid-grid-xs-1 {
  flex-grow: 0;
  max-width: 8.333333%;
  flex-basis: 8.333333%;
}
.MuiGrid-grid-xs-2 {
  flex-grow: 0;
  max-width: 16.666667%;
  flex-basis: 16.666667%;
}
.MuiGrid-grid-xs-3 {
  flex-grow: 0;
  max-width: 25%;
  flex-basis: 25%;
}
.MuiGrid-grid-xs-4 {
  flex-grow: 0;
  max-width: 33.333333%;
  flex-basis: 33.333333%;
}
.MuiGrid-grid-xs-5 {
  flex-grow: 0;
  max-width: 41.666667%;
  flex-basis: 41.666667%;
}
.MuiGrid-grid-xs-6 {
  flex-grow: 0;
  max-width: 50%;
  flex-basis: 50%;
}
.MuiGrid-grid-xs-7 {
  flex-grow: 0;
  max-width: 58.333333%;
  flex-basis: 58.333333%;
}
.MuiGrid-grid-xs-8 {
  flex-grow: 0;
  max-width: 66.666667%;
  flex-basis: 66.666667%;
}
.MuiGrid-grid-xs-9 {
  flex-grow: 0;
  max-width: 75%;
  flex-basis: 75%;
}
.MuiGrid-grid-xs-10 {
  flex-grow: 0;
  max-width: 83.333333%;
  flex-basis: 83.333333%;
}
.MuiGrid-grid-xs-11 {
  flex-grow: 0;
  max-width: 91.666667%;
  flex-basis: 91.666667%;
}
.MuiGrid-grid-xs-12 {
  flex-grow: 0;
  max-width: 100%;
  flex-basis: 100%;
}
@media (min-width:600px) {
  .MuiGrid-grid-sm-auto {
    flex-grow: 0;
    max-width: none;
    flex-basis: auto;
  }
  .MuiGrid-grid-sm-true {
    flex-grow: 1;
    max-width: 100%;
    flex-basis: 0;
  }
  .MuiGrid-grid-sm-1 {
    flex-grow: 0;
    max-width: 8.333333%;
    flex-basis: 8.333333%;
  }
  .MuiGrid-grid-sm-2 {
    flex-grow: 0;
    max-width: 16.666667%;
    flex-basis: 16.666667%;
  }
  .MuiGrid-grid-sm-3 {
    flex-grow: 0;
    max-width: 25%;
    flex-basis: 25%;
  }
  .MuiGrid-grid-sm-4 {
    flex-grow: 0;
    max-width: 33.333333%;
    flex-basis: 33.333333%;
  }
  .MuiGrid-grid-sm-5 {
    flex-grow: 0;
    max-width: 41.666667%;
    flex-basis: 41.666667%;
  }
  .MuiGrid-grid-sm-6 {
    flex-grow: 0;
    max-width: 50%;
    flex-basis: 50%;
  }
  .MuiGrid-grid-sm-7 {
    flex-grow: 0;
    max-width: 58.333333%;
    flex-basis: 58.333333%;
  }
  .MuiGrid-grid-sm-8 {
    flex-grow: 0;
    max-width: 66.666667%;
    flex-basis: 66.666667%;
  }
  .MuiGrid-grid-sm-9 {
    flex-grow: 0;
    max-width: 75%;
    flex-basis: 75%;
  }
  .MuiGrid-grid-sm-10 {
    flex-grow: 0;
    max-width: 83.333333%;
    flex-basis: 83.333333%;
  }
  .MuiGrid-grid-sm-11 {
    flex-grow: 0;
    max-width: 91.666667%;
    flex-basis: 91.666667%;
  }
  .MuiGrid-grid-sm-12 {
    flex-grow: 0;
    max-width: 100%;
    flex-basis: 100%;
  }
}
@media (min-width:960px) {
  .MuiGrid-grid-md-auto {
    flex-grow: 0;
    max-width: none;
    flex-basis: auto;
  }
  .MuiGrid-grid-md-true {
    flex-grow: 1;
    max-width: 100%;
    flex-basis: 0;
  }
  .MuiGrid-grid-md-1 {
    flex-grow: 0;
    max-width: 8.333333%;
    flex-basis: 8.333333%;
  }
  .MuiGrid-grid-md-2 {
    flex-grow: 0;
    max-width: 16.666667%;
    flex-basis: 16.666667%;
  }
  .MuiGrid-grid-md-3 {
    flex-grow: 0;
    max-width: 25%;
    flex-basis: 25%;
  }
  .MuiGrid-grid-md-4 {
    flex-grow: 0;
    max-width: 33.333333%;
    flex-basis: 33.333333%;
  }
  .MuiGrid-grid-md-5 {
    flex-grow: 0;
    max-width: 41.666667%;
    flex-basis: 41.666667%;
  }
  .MuiGrid-grid-md-6 {
    flex-grow: 0;
    max-width: 50%;
    flex-basis: 50%;
  }
  .MuiGrid-grid-md-7 {
    flex-grow: 0;
    max-width: 58.333333%;
    flex-basis: 58.333333%;
  }
  .MuiGrid-grid-md-8 {
    flex-grow: 0;
    max-width: 66.666667%;
    flex-basis: 66.666667%;
  }
  .MuiGrid-grid-md-9 {
    flex-grow: 0;
    max-width: 75%;
    flex-basis: 75%;
  }
  .MuiGrid-grid-md-10 {
    flex-grow: 0;
    max-width: 83.333333%;
    flex-basis: 83.333333%;
  }
  .MuiGrid-grid-md-11 {
    flex-grow: 0;
    max-width: 91.666667%;
    flex-basis: 91.666667%;
  }
  .MuiGrid-grid-md-12 {
    flex-grow: 0;
    max-width: 100%;
    flex-basis: 100%;
  }
}
@media (min-width:1280px) {
  .MuiGrid-grid-lg-auto {
    flex-grow: 0;
    max-width: none;
    flex-basis: auto;
  }
  .MuiGrid-grid-lg-true {
    flex-grow: 1;
    max-width: 100%;
    flex-basis: 0;
  }
  .MuiGrid-grid-lg-1 {
    flex-grow: 0;
    max-width: 8.333333%;
    flex-basis: 8.333333%;
  }
  .MuiGrid-grid-lg-2 {
    flex-grow: 0;
    max-width: 16.666667%;
    flex-basis: 16.666667%;
  }
  .MuiGrid-grid-lg-3 {
    flex-grow: 0;
    max-width: 25%;
    flex-basis: 25%;
  }
  .MuiGrid-grid-lg-4 {
    flex-grow: 0;
    max-width: 33.333333%;
    flex-basis: 33.333333%;
  }
  .MuiGrid-grid-lg-5 {
    flex-grow: 0;
    max-width: 41.666667%;
    flex-basis: 41.666667%;
  }
  .MuiGrid-grid-lg-6 {
    flex-grow: 0;
    max-width: 50%;
    flex-basis: 50%;
  }
  .MuiGrid-grid-lg-7 {
    flex-grow: 0;
    max-width: 58.333333%;
    flex-basis: 58.333333%;
  }
  .MuiGrid-grid-lg-8 {
    flex-grow: 0;
    max-width: 66.666667%;
    flex-basis: 66.666667%;
  }
  .MuiGrid-grid-lg-9 {
    flex-grow: 0;
    max-width: 75%;
    flex-basis: 75%;
  }
  .MuiGrid-grid-lg-10 {
    flex-grow: 0;
    max-width: 83.333333%;
    flex-basis: 83.333333%;
  }
  .MuiGrid-grid-lg-11 {
    flex-grow: 0;
    max-width: 91.666667%;
    flex-basis: 91.666667%;
  }
  .MuiGrid-grid-lg-12 {
    flex-grow: 0;
    max-width: 100%;
    flex-basis: 100%;
  }
}
@media (min-width:1920px) {
  .MuiGrid-grid-xl-auto {
    flex-grow: 0;
    max-width: none;
    flex-basis: auto;
  }
  .MuiGrid-grid-xl-true {
    flex-grow: 1;
    max-width: 100%;
    flex-basis: 0;
  }
  .MuiGrid-grid-xl-1 {
    flex-grow: 0;
    max-width: 8.333333%;
    flex-basis: 8.333333%;
  }
  .MuiGrid-grid-xl-2 {
    flex-grow: 0;
    max-width: 16.666667%;
    flex-basis: 16.666667%;
  }
  .MuiGrid-grid-xl-3 {
    flex-grow: 0;
    max-width: 25%;
    flex-basis: 25%;
  }
  .MuiGrid-grid-xl-4 {
    flex-grow: 0;
    max-width: 33.333333%;
    flex-basis: 33.333333%;
  }
  .MuiGrid-grid-xl-5 {
    flex-grow: 0;
    max-width: 41.666667%;
    flex-basis: 41.666667%;
  }
  .MuiGrid-grid-xl-6 {
    flex-grow: 0;
    max-width: 50%;
    flex-basis: 50%;
  }
  .MuiGrid-grid-xl-7 {
    flex-grow: 0;
    max-width: 58.333333%;
    flex-basis: 58.333333%;
  }
  .MuiGrid-grid-xl-8 {
    flex-grow: 0;
    max-width: 66.666667%;
    flex-basis: 66.666667%;
  }
  .MuiGrid-grid-xl-9 {
    flex-grow: 0;
    max-width: 75%;
    flex-basis: 75%;
  }
  .MuiGrid-grid-xl-10 {
    flex-grow: 0;
    max-width: 83.333333%;
    flex-basis: 83.333333%;
  }
  .MuiGrid-grid-xl-11 {
    flex-grow: 0;
    max-width: 91.666667%;
    flex-basis: 91.666667%;
  }
  .MuiGrid-grid-xl-12 {
    flex-grow: 0;
    max-width: 100%;
    flex-basis: 100%;
  }
}

  .jss44 {  }
  .MuiContainer-root {
    width: 100%;
    display: block;
    box-sizing: border-box;
    margin-left: auto;
    margin-right: auto;
    padding-left: 16px;
    padding-right: 16px;
  }
@media (min-width:600px) {
  .MuiContainer-root {
    padding-left: 24px;
    padding-right: 24px;
  }
}
  .MuiContainer-disableGutters {
    padding-left: 0;
    padding-right: 0;
  }
@media (min-width:600px) {
  .MuiContainer-fixed {
    max-width: 600px;
  }
}
@media (min-width:960px) {
  .MuiContainer-fixed {
    max-width: 960px;
  }
}
@media (min-width:1280px) {
  .MuiContainer-fixed {
    max-width: 1280px;
  }
}
@media (min-width:1920px) {
  .MuiContainer-fixed {
    max-width: 1920px;
  }
}
@media (min-width:0px) {
  .MuiContainer-maxWidthXs {
    max-width: 444px;
  }
}
@media (min-width:600px) {
  .MuiContainer-maxWidthSm {
    max-width: 600px;
  }
}
@media (min-width:960px) {
  .MuiContainer-maxWidthMd {
    max-width: 960px;
  }
}
@media (min-width:1280px) {
  .MuiContainer-maxWidthLg {
    max-width: 1280px;
  }
}
@media (min-width:1920px) {
  .MuiContainer-maxWidthXl {
    max-width: 1920px;
  }
}
  .MuiTypography-root {
    margin: 0;
  }
  .MuiTypography-body2 {
    color: #546e7a;
    font-size: 18px;
    font-family: 'Roboto Condensed', sans-serif;
    font-weight: 400;
    line-height: 1.5;
  }
  .MuiTypography-body1 {
    color: #546e7a;
    font-size: 18px;
    font-family: 'Roboto Condensed', sans-serif;
    font-weight: 400;
    line-height: 1.5;
  }
  .MuiTypography-caption {
    color: #546e7a;
    font-size: 0.65rem;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 400;
    line-height: 1.66;
  }
  .MuiTypography-button {
    font-size: 0.875rem;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 500;
    line-height: 1.75;
    text-transform: uppercase;
  }
  .MuiTypography-h1 {
    font-size: 6rem;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 300;
    line-height: 1.167;
  }
  .MuiTypography-h2 {
    font-size: 3.75rem;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 300;
    line-height: 1.2;
  }
  .MuiTypography-h3 {
    font-size: 3rem;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 400;
    line-height: 1.167;
  }
  .MuiTypography-h4 {
    font-size: 2.125rem;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 400;
    line-height: 1.235;
  }
  .MuiTypography-h5 {
    font-size: 1.5rem;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 400;
    line-height: 1.334;
  }
  .MuiTypography-h6 {
    font-size: 1.25rem;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 500;
    line-height: 1.6;
  }
  .MuiTypography-subtitle1 {
    font-size: 1rem;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 500;
    line-height: 1.4;
  }
  .MuiTypography-subtitle2 {
    font-size: 0.875rem;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 500;
    line-height: 1.57;
  }
  .MuiTypography-overline {
    color: #546e7a;
    font-size: 0.65rem;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 400;
    line-height: 1.66;
    text-transform: uppercase;
  }
  .MuiTypography-srOnly {
    width: 1px;
    height: 1px;
    overflow: hidden;
    position: absolute;
  }
  .MuiTypography-alignLeft {
    text-align: left;
  }
  .MuiTypography-alignCenter {
    text-align: center;
  }
  .MuiTypography-alignRight {
    text-align: right;
  }
  .MuiTypography-alignJustify {
    text-align: justify;
  }
  .MuiTypography-noWrap {
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }
  .MuiTypography-gutterBottom {
    margin-bottom: 0.35em;
  }
  .MuiTypography-paragraph {
    margin-bottom: 16px;
  }
  .MuiTypography-colorInherit {
    color: inherit;
  }
  .MuiTypography-colorPrimary {
    color: #279655;
  }
  .MuiTypography-colorSecondary {
    color: #19857b;
  }
  .MuiTypography-colorTextPrimary {
    color: rgba(0, 0, 0, 0.87);
  }
  .MuiTypography-colorTextSecondary {
    color: rgba(0, 0, 0, 0.54);
  }
  .MuiTypography-colorError {
    color: #ff1744;
  }
  .MuiTypography-displayInline {
    display: inline;
  }
  .MuiTypography-displayBlock {
    display: block;
  }
  .jss2 {
    display: flex;
    flex-direction: column;
  }
  .jss3 {
    text-align: center;
  }
.stickyAds {
  top: 95px;
  position: sticky;
}
  .MuiSvgIcon-root {
    fill: currentColor;
    width: 1em;
    height: 1em;
    display: inline-block;
    font-size: 1.5rem;
    transition: fill 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
    flex-shrink: 0;
    user-select: none;
  }
  .MuiSvgIcon-colorPrimary {
    color: #279655;
  }
  .MuiSvgIcon-colorSecondary {
    color: #19857b;
  }
  .MuiSvgIcon-colorAction {
    color: rgba(0, 0, 0, 0.54);
  }
  .MuiSvgIcon-colorError {
    color: #ff1744;
  }
  .MuiSvgIcon-colorDisabled {
    color: rgba(0, 0, 0, 0.26);
  }
  .MuiSvgIcon-fontSizeInherit {
    font-size: inherit;
  }
  .MuiSvgIcon-fontSizeSmall {
    font-size: 1.25rem;
  }
  .MuiSvgIcon-fontSizeLarge {
    font-size: 2.1875rem;
  }
  .MuiListItemText-root {
    flex: 1 1 auto;
    min-width: 0;
    margin-top: 4px;
    margin-bottom: 4px;
  }
  .MuiListItemText-multiline {
    margin-top: 6px;
    margin-bottom: 6px;
  }
  .MuiListItemText-inset {
    padding-left: 56px;
  }
  .MuiButtonBase-root {
    color: inherit;
    border: 0;
    cursor: pointer;
    margin: 0;
    display: inline-flex;
    outline: 0;
    padding: 0;
    position: relative;
    align-items: center;
    user-select: none;
    border-radius: 0;
    vertical-align: middle;
    -moz-appearance: none;
    justify-content: center;
    text-decoration: none;
    background-color: transparent;
    -webkit-appearance: none;
    -webkit-tap-highlight-color: transparent;
  }
  .MuiButtonBase-root::-moz-focus-inner {
    border-style: none;
  }
  .MuiButtonBase-root.Mui-disabled {
    cursor: default;
    pointer-events: none;
  }
@media print {
  .MuiButtonBase-root {
    color-adjust: exact;
  }
}
  .MuiIconButton-root {
    flex: 0 0 auto;
    color: rgba(0, 0, 0, 0.54);
    padding: 12px;
    overflow: visible;
    font-size: 1.5rem;
    text-align: center;
    transition: background-color 150ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
    border-radius: 50%;
  }
  .MuiIconButton-root:hover {
    background-color: rgba(0, 0, 0, 0.04);
  }
  .MuiIconButton-root.Mui-disabled {
    color: rgba(0, 0, 0, 0.26);
    background-color: transparent;
  }
@media (hover: none) {
  .MuiIconButton-root:hover {
    background-color: transparent;
  }
}
  .MuiIconButton-edgeStart {
    margin-left: -12px;
  }
  .MuiIconButton-sizeSmall.MuiIconButton-edgeStart {
    margin-left: -3px;
  }
  .MuiIconButton-edgeEnd {
    margin-right: -12px;
  }
  .MuiIconButton-sizeSmall.MuiIconButton-edgeEnd {
    margin-right: -3px;
  }
  .MuiIconButton-colorInherit {
    color: inherit;
  }
  .MuiIconButton-colorPrimary {
    color: #279655;
  }
  .MuiIconButton-colorPrimary:hover {
    background-color: rgba(39, 150, 85, 0.04);
  }
@media (hover: none) {
  .MuiIconButton-colorPrimary:hover {
    background-color: transparent;
  }
}
  .MuiIconButton-colorSecondary {
    color: #19857b;
  }
  .MuiIconButton-colorSecondary:hover {
    background-color: rgba(25, 133, 123, 0.04);
  }
@media (hover: none) {
  .MuiIconButton-colorSecondary:hover {
    background-color: transparent;
  }
}
  .MuiIconButton-sizeSmall {
    padding: 3px;
    font-size: 1.125rem;
  }
  .MuiIconButton-label {
    width: 100%;
    display: flex;
    align-items: inherit;
    justify-content: inherit;
  }
@keyframes mui-auto-fill {}
@keyframes mui-auto-fill-cancel {}
  .MuiInputBase-root {
    color: rgba(0, 0, 0, 0.87);
    cursor: text;
    display: inline-flex;
    position: relative;
    font-size: 18px;
    box-sizing: border-box;
    align-items: center;
    font-family: 'Roboto Condensed', sans-serif;
    font-weight: 400;
    line-height: 1.1876em;
  }
  .MuiInputBase-root.Mui-disabled {
    color: rgba(0, 0, 0, 0.38);
    cursor: default;
  }
  .MuiInputBase-multiline {
    padding: 6px 0 7px;
  }
  .MuiInputBase-multiline.MuiInputBase-marginDense {
    padding-top: 3px;
  }
  .MuiInputBase-fullWidth {
    width: 100%;
  }
  .MuiInputBase-input {
    font: inherit;
    color: currentColor;
    width: 100%;
    border: 0;
    height: 1.1876em;
    margin: 0;
    display: block;
    padding: 6px 0 7px;
    min-width: 0;
    background: none;
    box-sizing: content-box;
    animation-name: mui-auto-fill-cancel;
    letter-spacing: inherit;
    animation-duration: 10ms;
    -webkit-tap-highlight-color: transparent;
  }
  .MuiInputBase-input::-webkit-input-placeholder {
    color: currentColor;
    opacity: 0.42;
    transition: opacity 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
  }
  .MuiInputBase-input::-moz-placeholder {
    color: currentColor;
    opacity: 0.42;
    transition: opacity 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
  }
  .MuiInputBase-input:-ms-input-placeholder {
    color: currentColor;
    opacity: 0.42;
    transition: opacity 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
  }
  .MuiInputBase-input::-ms-input-placeholder {
    color: currentColor;
    opacity: 0.42;
    transition: opacity 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
  }
  .MuiInputBase-input:focus {
    outline: 0;
  }
  .MuiInputBase-input:invalid {
    box-shadow: none;
  }
  .MuiInputBase-input::-webkit-search-decoration {
    -webkit-appearance: none;
  }
  .MuiInputBase-input.Mui-disabled {
    opacity: 1;
  }
  .MuiInputBase-input:-webkit-autofill {
    animation-name: mui-auto-fill;
    animation-duration: 5000s;
  }
  label[data-shrink=false] + .MuiInputBase-formControl .MuiInputBase-input::-webkit-input-placeholder {
    opacity: 0 !important;
  }
  label[data-shrink=false] + .MuiInputBase-formControl .MuiInputBase-input::-moz-placeholder {
    opacity: 0 !important;
  }
  label[data-shrink=false] + .MuiInputBase-formControl .MuiInputBase-input:-ms-input-placeholder {
    opacity: 0 !important;
  }
  label[data-shrink=false] + .MuiInputBase-formControl .MuiInputBase-input::-ms-input-placeholder {
    opacity: 0 !important;
  }
  label[data-shrink=false] + .MuiInputBase-formControl .MuiInputBase-input:focus::-webkit-input-placeholder {
    opacity: 0.42;
  }
  label[data-shrink=false] + .MuiInputBase-formControl .MuiInputBase-input:focus::-moz-placeholder {
    opacity: 0.42;
  }
  label[data-shrink=false] + .MuiInputBase-formControl .MuiInputBase-input:focus:-ms-input-placeholder {
    opacity: 0.42;
  }
  label[data-shrink=false] + .MuiInputBase-formControl .MuiInputBase-input:focus::-ms-input-placeholder {
    opacity: 0.42;
  }
  .MuiInputBase-inputMarginDense {
    padding-top: 3px;
  }
  .MuiInputBase-inputMultiline {
    height: auto;
    resize: none;
    padding: 0;
  }
  .MuiInputBase-inputTypeSearch {
    -moz-appearance: textfield;
    -webkit-appearance: textfield;
  }
  .MuiListItem-root {
    width: 100%;
    display: flex;
    position: relative;
    box-sizing: border-box;
    text-align: left;
    align-items: center;
    padding-top: 8px;
    padding-bottom: 8px;
    justify-content: flex-start;
    text-decoration: none;
  }
  .MuiListItem-root.Mui-focusVisible {
    background-color: rgba(0, 0, 0, 0.08);
  }
  .MuiListItem-root.Mui-selected, .MuiListItem-root.Mui-selected:hover {
    background-color: rgba(0, 0, 0, 0.08);
  }
  .MuiListItem-root.Mui-disabled {
    opacity: 0.5;
  }
  .MuiListItem-container {
    position: relative;
  }
  .MuiListItem-dense {
    padding-top: 4px;
    padding-bottom: 4px;
  }
  .MuiListItem-alignItemsFlexStart {
    align-items: flex-start;
  }
  .MuiListItem-divider {
    border-bottom: 1px solid rgba(0, 0, 0, 0.12);
    background-clip: padding-box;
  }
  .MuiListItem-gutters {
    padding-left: 16px;
    padding-right: 16px;
  }
  .MuiListItem-button {
    transition: background-color 150ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
  }
  .MuiListItem-button:hover {
    text-decoration: none;
    background-color: rgba(0, 0, 0, 0.04);
  }
@media (hover: none) {
  .MuiListItem-button:hover {
    background-color: transparent;
  }
}
  .MuiListItem-secondaryAction {
    padding-right: 48px;
  }
  .MuiCollapse-container {
    height: 0;
    overflow: hidden;
    transition: height 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
  }
  .MuiCollapse-entered {
    height: auto;
    overflow: visible;
  }
  .MuiCollapse-hidden {
    visibility: hidden;
  }
  .MuiCollapse-wrapper {
    display: flex;
  }
  .MuiCollapse-wrapperInner {
    width: 100%;
  }
  .MuiToolbar-root {
    display: flex;
    position: relative;
    align-items: center;
  }
  .MuiToolbar-gutters {
    padding-left: 16px;
    padding-right: 16px;
  }
@media (min-width:600px) {
  .MuiToolbar-gutters {
    padding-left: 24px;
    padding-right: 24px;
  }
}
  .MuiToolbar-regular {
    min-height: 56px;
  }
@media (min-width:0px) and (orientation: landscape) {
  .MuiToolbar-regular {
    min-height: 48px;
  }
}
@media (min-width:600px) {
  .MuiToolbar-regular {
    min-height: 64px;
  }
}
  .MuiToolbar-dense {
    min-height: 48px;
  }
  .MuiDivider-root {
    border: none;
    height: 1px;
    margin: 0;
    flex-shrink: 0;
    background-color: rgba(0, 0, 0, 0.12);
  }
  .MuiDivider-absolute {
    left: 0;
    width: 100%;
    bottom: 0;
    position: absolute;
  }
  .MuiDivider-inset {
    margin-left: 72px;
  }
  .MuiDivider-light {
    background-color: rgba(0, 0, 0, 0.08);
  }
  .MuiDivider-middle {
    margin-left: 16px;
    margin-right: 16px;
  }
  .MuiDivider-vertical {
    width: 1px;
    height: 100%;
  }
  .MuiDivider-flexItem {
    height: auto;
    align-self: stretch;
  }
  .MuiPaper-root {
    color: rgba(0, 0, 0, 0.87);
    transition: box-shadow 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
    background-color: #fff;
  }
  .MuiPaper-rounded {
    border-radius: 4px;
  }
  .MuiPaper-outlined {
    border: 1px solid rgba(0, 0, 0, 0.12);
  }
  .MuiPaper-elevation0 {
    box-shadow: none;
  }
  .MuiPaper-elevation1 {
    box-shadow: 0px 2px 1px -1px rgba(0,0,0,0.2),0px 1px 1px 0px rgba(0,0,0,0.14),0px 1px 3px 0px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation2 {
    box-shadow: 0px 3px 1px -2px rgba(0,0,0,0.2),0px 2px 2px 0px rgba(0,0,0,0.14),0px 1px 5px 0px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation3 {
    box-shadow: 0px 3px 3px -2px rgba(0,0,0,0.2),0px 3px 4px 0px rgba(0,0,0,0.14),0px 1px 8px 0px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation4 {
    box-shadow: 0px 2px 4px -1px rgba(0,0,0,0.2),0px 4px 5px 0px rgba(0,0,0,0.14),0px 1px 10px 0px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation5 {
    box-shadow: 0px 3px 5px -1px rgba(0,0,0,0.2),0px 5px 8px 0px rgba(0,0,0,0.14),0px 1px 14px 0px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation6 {
    box-shadow: 0px 3px 5px -1px rgba(0,0,0,0.2),0px 6px 10px 0px rgba(0,0,0,0.14),0px 1px 18px 0px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation7 {
    box-shadow: 0px 4px 5px -2px rgba(0,0,0,0.2),0px 7px 10px 1px rgba(0,0,0,0.14),0px 2px 16px 1px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation8 {
    box-shadow: 0px 5px 5px -3px rgba(0,0,0,0.2),0px 8px 10px 1px rgba(0,0,0,0.14),0px 3px 14px 2px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation9 {
    box-shadow: 0px 5px 6px -3px rgba(0,0,0,0.2),0px 9px 12px 1px rgba(0,0,0,0.14),0px 3px 16px 2px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation10 {
    box-shadow: 0px 6px 6px -3px rgba(0,0,0,0.2),0px 10px 14px 1px rgba(0,0,0,0.14),0px 4px 18px 3px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation11 {
    box-shadow: 0px 6px 7px -4px rgba(0,0,0,0.2),0px 11px 15px 1px rgba(0,0,0,0.14),0px 4px 20px 3px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation12 {
    box-shadow: 0px 7px 8px -4px rgba(0,0,0,0.2),0px 12px 17px 2px rgba(0,0,0,0.14),0px 5px 22px 4px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation13 {
    box-shadow: 0px 7px 8px -4px rgba(0,0,0,0.2),0px 13px 19px 2px rgba(0,0,0,0.14),0px 5px 24px 4px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation14 {
    box-shadow: 0px 7px 9px -4px rgba(0,0,0,0.2),0px 14px 21px 2px rgba(0,0,0,0.14),0px 5px 26px 4px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation15 {
    box-shadow: 0px 8px 9px -5px rgba(0,0,0,0.2),0px 15px 22px 2px rgba(0,0,0,0.14),0px 6px 28px 5px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation16 {
    box-shadow: 0px 8px 10px -5px rgba(0,0,0,0.2),0px 16px 24px 2px rgba(0,0,0,0.14),0px 6px 30px 5px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation17 {
    box-shadow: 0px 8px 11px -5px rgba(0,0,0,0.2),0px 17px 26px 2px rgba(0,0,0,0.14),0px 6px 32px 5px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation18 {
    box-shadow: 0px 9px 11px -5px rgba(0,0,0,0.2),0px 18px 28px 2px rgba(0,0,0,0.14),0px 7px 34px 6px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation19 {
    box-shadow: 0px 9px 12px -6px rgba(0,0,0,0.2),0px 19px 29px 2px rgba(0,0,0,0.14),0px 7px 36px 6px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation20 {
    box-shadow: 0px 10px 13px -6px rgba(0,0,0,0.2),0px 20px 31px 3px rgba(0,0,0,0.14),0px 8px 38px 7px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation21 {
    box-shadow: 0px 10px 13px -6px rgba(0,0,0,0.2),0px 21px 33px 3px rgba(0,0,0,0.14),0px 8px 40px 7px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation22 {
    box-shadow: 0px 10px 14px -6px rgba(0,0,0,0.2),0px 22px 35px 3px rgba(0,0,0,0.14),0px 8px 42px 7px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation23 {
    box-shadow: 0px 11px 14px -7px rgba(0,0,0,0.2),0px 23px 36px 3px rgba(0,0,0,0.14),0px 9px 44px 8px rgba(0,0,0,0.12);
  }
  .MuiPaper-elevation24 {
    box-shadow: 0px 11px 15px -7px rgba(0,0,0,0.2),0px 24px 38px 3px rgba(0,0,0,0.14),0px 9px 46px 8px rgba(0,0,0,0.12);
  }
  .MuiAppBar-root {
    width: 100%;
    display: flex;
    z-index: 1100;
    box-sizing: border-box;
    flex-shrink: 0;
    flex-direction: column;
  }
  .MuiAppBar-positionFixed {
    top: 0;
    left: auto;
    right: 0;
    position: fixed;
  }
@media print {
  .MuiAppBar-positionFixed {
    position: absolute;
  }
}
  .MuiAppBar-positionAbsolute {
    top: 0;
    left: auto;
    right: 0;
    position: absolute;
  }
  .MuiAppBar-positionSticky {
    top: 0;
    left: auto;
    right: 0;
    position: sticky;
  }
  .MuiAppBar-positionStatic {
    position: static;
  }
  .MuiAppBar-positionRelative {
    position: relative;
  }
  .MuiAppBar-colorDefault {
    color: rgba(0, 0, 0, 0.87);
    background-color: #f5f5f5;
  }
  .MuiAppBar-colorPrimary {
    color: #fff;
    background-color: #279655;
  }
  .MuiAppBar-colorSecondary {
    color: #fff;
    background-color: #19857b;
  }
  .MuiAppBar-colorInherit {
    color: inherit;
  }
  .MuiAppBar-colorTransparent {
    color: inherit;
    background-color: transparent;
  }
  .MuiDrawer-docked {
    flex: 0 0 auto;
  }
  .MuiDrawer-paper {
    top: 0;
    flex: 1 0 auto;
    height: 100%;
    display: flex;
    outline: 0;
    z-index: 1200;
    position: fixed;
    overflow-y: auto;
    flex-direction: column;
    -webkit-overflow-scrolling: touch;
  }
  .MuiDrawer-paperAnchorLeft {
    left: 0;
    right: auto;
  }
  .MuiDrawer-paperAnchorRight {
    left: auto;
    right: 0;
  }
  .MuiDrawer-paperAnchorTop {
    top: 0;
    left: 0;
    right: 0;
    bottom: auto;
    height: auto;
    max-height: 100%;
  }
  .MuiDrawer-paperAnchorBottom {
    top: auto;
    left: 0;
    right: 0;
    bottom: 0;
    height: auto;
    max-height: 100%;
  }
  .MuiDrawer-paperAnchorDockedLeft {
    border-right: 1px solid rgba(0, 0, 0, 0.12);
  }
  .MuiDrawer-paperAnchorDockedTop {
    border-bottom: 1px solid rgba(0, 0, 0, 0.12);
  }
  .MuiDrawer-paperAnchorDockedRight {
    border-left: 1px solid rgba(0, 0, 0, 0.12);
  }
  .MuiDrawer-paperAnchorDockedBottom {
    border-top: 1px solid rgba(0, 0, 0, 0.12);
  }
  .MuiList-root {
    margin: 0;
    padding: 0;
    position: relative;
    list-style: none;
  }
  .MuiList-padding {
    padding-top: 8px;
    padding-bottom: 8px;
  }
  .MuiList-subheader {
    padding-top: 0;
  }
  .MuiPopover-paper {
    outline: 0;
    position: absolute;
    max-width: calc(100% - 32px);
    min-width: 16px;
    max-height: calc(100% - 32px);
    min-height: 16px;
    overflow-x: hidden;
    overflow-y: auto;
  }
  .MuiMenu-paper {
    max-height: calc(100% - 96px);
    -webkit-overflow-scrolling: touch;
  }
  .MuiMenu-list {
    outline: 0;
  }
  .MuiBottomNavigation-root {
    height: 56px;
    display: flex;
    justify-content: center;
    background-color: #fff;
  }
  .MuiBottomNavigationAction-root {
    flex: 1;
    color: rgba(0, 0, 0, 0.54);
    padding: 6px 12px 8px;
    max-width: 168px;
    min-width: 80px;
    transition: color 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms,padding-top 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
  }
  .MuiBottomNavigationAction-root.MuiBottomNavigationAction-iconOnly {
    padding-top: 16px;
  }
  .MuiBottomNavigationAction-root.Mui-selected {
    color: #279655;
    padding-top: 6px;
  }
  .MuiBottomNavigationAction-wrapper {
    width: 100%;
    display: inline-flex;
    align-items: center;
    flex-direction: column;
    justify-content: center;
  }
  .MuiBottomNavigationAction-label {
    opacity: 1;
    font-size: 0.75rem;
    transition: font-size 0.2s, opacity 0.2s;
    font-family: Roboto Condensed,sans-serif;
    transition-delay: 0.1s;
  }
  .MuiBottomNavigationAction-label.MuiBottomNavigationAction-iconOnly {
    opacity: 0;
    transition-delay: 0s;
  }
  .MuiBottomNavigationAction-label.Mui-selected {
    font-size: 0.875rem;
  }
  .MuiButton-root {
    color: rgba(0, 0, 0, 0.87);
    padding: 6px 16px;
    font-size: 0.875rem;
    min-width: 64px;
    box-sizing: border-box;
    transition: background-color 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms,box-shadow 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms,border 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 500;
    line-height: 1.75;
    border-radius: 4px;
    text-transform: uppercase;
  }
  .MuiButton-root:hover {
    text-decoration: none;
    background-color: rgba(0, 0, 0, 0.04);
  }
  .MuiButton-root.Mui-disabled {
    color: rgba(0, 0, 0, 0.26);
  }
@media (hover: none) {
  .MuiButton-root:hover {
    background-color: transparent;
  }
}
  .MuiButton-root:hover.Mui-disabled {
    background-color: transparent;
  }
  .MuiButton-label {
    width: 100%;
    display: inherit;
    align-items: inherit;
    justify-content: inherit;
  }
  .MuiButton-text {
    padding: 6px 8px;
  }
  .MuiButton-textPrimary {
    color: #279655;
  }
  .MuiButton-textPrimary:hover {
    background-color: rgba(39, 150, 85, 0.04);
  }
@media (hover: none) {
  .MuiButton-textPrimary:hover {
    background-color: transparent;
  }
}
  .MuiButton-textSecondary {
    color: #19857b;
  }
  .MuiButton-textSecondary:hover {
    background-color: rgba(25, 133, 123, 0.04);
  }
@media (hover: none) {
  .MuiButton-textSecondary:hover {
    background-color: transparent;
  }
}
  .MuiButton-outlined {
    border: 1px solid rgba(0, 0, 0, 0.23);
    padding: 5px 15px;
  }
  .MuiButton-outlined.Mui-disabled {
    border: 1px solid rgba(0, 0, 0, 0.12);
  }
  .MuiButton-outlinedPrimary {
    color: #279655;
    border: 1px solid rgba(39, 150, 85, 0.5);
  }
  .MuiButton-outlinedPrimary:hover {
    border: 1px solid #279655;
    background-color: rgba(39, 150, 85, 0.04);
  }
@media (hover: none) {
  .MuiButton-outlinedPrimary:hover {
    background-color: transparent;
  }
}
  .MuiButton-outlinedSecondary {
    color: #19857b;
    border: 1px solid rgba(25, 133, 123, 0.5);
  }
  .MuiButton-outlinedSecondary:hover {
    border: 1px solid #19857b;
    background-color: rgba(25, 133, 123, 0.04);
  }
  .MuiButton-outlinedSecondary.Mui-disabled {
    border: 1px solid rgba(0, 0, 0, 0.26);
  }
@media (hover: none) {
  .MuiButton-outlinedSecondary:hover {
    background-color: transparent;
  }
}
  .MuiButton-contained {
    color: rgba(0, 0, 0, 0.87);
    box-shadow: 0px 3px 1px -2px rgba(0,0,0,0.2),0px 2px 2px 0px rgba(0,0,0,0.14),0px 1px 5px 0px rgba(0,0,0,0.12);
    background-color: #e0e0e0;
  }
  .MuiButton-contained:hover {
    box-shadow: 0px 2px 4px -1px rgba(0,0,0,0.2),0px 4px 5px 0px rgba(0,0,0,0.14),0px 1px 10px 0px rgba(0,0,0,0.12);
    background-color: #d5d5d5;
  }
  .MuiButton-contained.Mui-focusVisible {
    box-shadow: 0px 3px 5px -1px rgba(0,0,0,0.2),0px 6px 10px 0px rgba(0,0,0,0.14),0px 1px 18px 0px rgba(0,0,0,0.12);
  }
  .MuiButton-contained:active {
    box-shadow: 0px 5px 5px -3px rgba(0,0,0,0.2),0px 8px 10px 1px rgba(0,0,0,0.14),0px 3px 14px 2px rgba(0,0,0,0.12);
  }
  .MuiButton-contained.Mui-disabled {
    color: rgba(0, 0, 0, 0.26);
    box-shadow: none;
    background-color: rgba(0, 0, 0, 0.12);
  }
@media (hover: none) {
  .MuiButton-contained:hover {
    box-shadow: 0px 3px 1px -2px rgba(0,0,0,0.2),0px 2px 2px 0px rgba(0,0,0,0.14),0px 1px 5px 0px rgba(0,0,0,0.12);
    background-color: #e0e0e0;
  }
}
  .MuiButton-contained:hover.Mui-disabled {
    background-color: rgba(0, 0, 0, 0.12);
  }
  .MuiButton-containedPrimary {
    color: #fff;
    background-color: #279655;
  }
  .MuiButton-containedPrimary:hover {
    background-color: #00695c;
  }
@media (hover: none) {
  .MuiButton-containedPrimary:hover {
    background-color: #279655;
  }
}
  .MuiButton-containedSecondary {
    color: #fff;
    background-color: #19857b;
  }
  .MuiButton-containedSecondary:hover {
    background-color: rgb(17, 93, 86);
  }
@media (hover: none) {
  .MuiButton-containedSecondary:hover {
    background-color: #19857b;
  }
}
  .MuiButton-disableElevation {
    box-shadow: none;
  }
  .MuiButton-disableElevation:hover {
    box-shadow: none;
  }
  .MuiButton-disableElevation.Mui-focusVisible {
    box-shadow: none;
  }
  .MuiButton-disableElevation:active {
    box-shadow: none;
  }
  .MuiButton-disableElevation.Mui-disabled {
    box-shadow: none;
  }
  .MuiButton-colorInherit {
    color: inherit;
    border-color: currentColor;
  }
  .MuiButton-textSizeSmall {
    padding: 4px 5px;
    font-size: 0.8125rem;
  }
  .MuiButton-textSizeLarge {
    padding: 8px 11px;
    font-size: 0.9375rem;
  }
  .MuiButton-outlinedSizeSmall {
    padding: 3px 9px;
    font-size: 0.8125rem;
  }
  .MuiButton-outlinedSizeLarge {
    padding: 7px 21px;
    font-size: 0.9375rem;
  }
  .MuiButton-containedSizeSmall {
    padding: 4px 10px;
    font-size: 0.8125rem;
  }
  .MuiButton-containedSizeLarge {
    padding: 8px 22px;
    font-size: 0.9375rem;
  }
  .MuiButton-fullWidth {
    width: 100%;
  }
  .MuiButton-startIcon {
    display: inherit;
    margin-left: -4px;
    margin-right: 8px;
  }
  .MuiButton-startIcon.MuiButton-iconSizeSmall {
    margin-left: -2px;
  }
  .MuiButton-endIcon {
    display: inherit;
    margin-left: 8px;
    margin-right: -4px;
  }
  .MuiButton-endIcon.MuiButton-iconSizeSmall {
    margin-right: -2px;
  }
  .MuiButton-iconSizeSmall > *:first-child {
    font-size: 18px;
  }
  .MuiButton-iconSizeMedium > *:first-child {
    font-size: 20px;
  }
  .MuiButton-iconSizeLarge > *:first-child {
    font-size: 22px;
  }
  .MuiFab-root {
    color: rgba(0, 0, 0, 0.87);
    width: 56px;
    height: 56px;
    padding: 0;
    font-size: 0.875rem;
    min-width: 0;
    box-shadow: 0px 3px 5px -1px rgba(0,0,0,0.2),0px 6px 10px 0px rgba(0,0,0,0.14),0px 1px 18px 0px rgba(0,0,0,0.12);
    box-sizing: border-box;
    min-height: 36px;
    transition: background-color 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms,box-shadow 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms,border 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
    font-family: Roboto Condensed,sans-serif;
    font-weight: 500;
    line-height: 1.75;
    border-radius: 50%;
    text-transform: uppercase;
    background-color: #e0e0e0;
  }
  .MuiFab-root:active {
    box-shadow: 0px 7px 8px -4px rgba(0,0,0,0.2),0px 12px 17px 2px rgba(0,0,0,0.14),0px 5px 22px 4px rgba(0,0,0,0.12);
  }
  .MuiFab-root:hover {
    text-decoration: none;
    background-color: #d5d5d5;
  }
  .MuiFab-root.Mui-focusVisible {
    box-shadow: 0px 3px 5px -1px rgba(0,0,0,0.2),0px 6px 10px 0px rgba(0,0,0,0.14),0px 1px 18px 0px rgba(0,0,0,0.12);
  }
  .MuiFab-root.Mui-disabled {
    color: rgba(0, 0, 0, 0.26);
    box-shadow: none;
    background-color: rgba(0, 0, 0, 0.12);
  }
@media (hover: none) {
  .MuiFab-root:hover {
    background-color: #e0e0e0;
  }
}
  .MuiFab-root:hover.Mui-disabled {
    background-color: rgba(0, 0, 0, 0.12);
  }
  .MuiFab-label {
    width: 100%;
    display: inherit;
    align-items: inherit;
    justify-content: inherit;
  }
  .MuiFab-primary {
    color: #fff;
    background-color: #279655;
  }
  .MuiFab-primary:hover {
    background-color: #00695c;
  }
@media (hover: none) {
  .MuiFab-primary:hover {
    background-color: #279655;
  }
}
  .MuiFab-secondary {
    color: #fff;
    background-color: #19857b;
  }
  .MuiFab-secondary:hover {
    background-color: rgb(17, 93, 86);
  }
@media (hover: none) {
  .MuiFab-secondary:hover {
    background-color: #19857b;
  }
}
  .MuiFab-extended {
    width: auto;
    height: 48px;
    padding: 0 16px;
    min-width: 48px;
    min-height: auto;
    border-radius: 24px;
  }
  .MuiFab-extended.MuiFab-sizeSmall {
    width: auto;
    height: 34px;
    padding: 0 8px;
    min-width: 34px;
    border-radius: 17px;
  }
  .MuiFab-extended.MuiFab-sizeMedium {
    width: auto;
    height: 40px;
    padding: 0 16px;
    min-width: 40px;
    border-radius: 20px;
  }
  .MuiFab-colorInherit {
    color: inherit;
  }
  .MuiFab-sizeSmall {
    width: 40px;
    height: 40px;
  }
  .MuiFab-sizeMedium {
    width: 48px;
    height: 48px;
  }
  .MuiFormControl-root {
    border: 0;
    margin: 0;
    display: inline-flex;
    padding: 0;
    position: relative;
    min-width: 0;
    flex-direction: column;
    vertical-align: top;
  }
  .MuiFormControl-marginNormal {
    margin-top: 16px;
    margin-bottom: 8px;
  }
  .MuiFormControl-marginDense {
    margin-top: 8px;
    margin-bottom: 4px;
  }
  .MuiFormControl-fullWidth {
    width: 100%;
  }
  .MuiInput-root {
    position: relative;
  }
  label + .MuiInput-formControl {
    margin-top: 16px;
  }
  .MuiInput-colorSecondary.MuiInput-underline:after {
    border-bottom-color: #19857b;
  }
  .MuiInput-underline:after {
    left: 0;
    right: 0;
    bottom: 0;
    content: "";
    position: absolute;
    transform: scaleX(0);
    transition: transform 200ms cubic-bezier(0.0, 0, 0.2, 1) 0ms;
    border-bottom: 2px solid #279655;
    pointer-events: none;
  }
  .MuiInput-underline.Mui-focused:after {
    transform: scaleX(1);
  }
  .MuiInput-underline.Mui-error:after {
    transform: scaleX(1);
    border-bottom-color: #ff1744;
  }
  .MuiInput-underline:before {
    left: 0;
    right: 0;
    bottom: 0;
    content: "\00a0";
    position: absolute;
    transition: border-bottom-color 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
    border-bottom: 1px solid rgba(0, 0, 0, 0.42);
    pointer-events: none;
  }
  .MuiInput-underline:hover:not(.Mui-disabled):before {
    border-bottom: 2px solid rgba(0, 0, 0, 0.87);
  }
  .MuiInput-underline.Mui-disabled:before {
    border-bottom-style: dotted;
  }
@media (hover: none) {
  .MuiInput-underline:hover:not(.Mui-disabled):before {
    border-bottom: 1px solid rgba(0, 0, 0, 0.42);
  }
}
  .MuiLink-underlineNone {
    text-decoration: none;
  }
  .MuiLink-underlineHover {
    text-decoration: none;
  }
  .MuiLink-underlineHover:hover {
    text-decoration: underline;
  }
  .MuiLink-underlineAlways {
    text-decoration: underline;
  }
  .MuiLink-button {
    border: 0;
    cursor: pointer;
    margin: 0;
    outline: 0;
    padding: 0;
    position: relative;
    user-select: none;
    border-radius: 0;
    vertical-align: middle;
    -moz-appearance: none;
    background-color: transparent;
    -webkit-appearance: none;
    -webkit-tap-highlight-color: transparent;
  }
  .MuiLink-button::-moz-focus-inner {
    border-style: none;
  }
  .MuiLink-button.Mui-focusVisible {
    outline: auto;
  }
  .MuiSelect-select {
    cursor: pointer;
    min-width: 16px;
    user-select: none;
    border-radius: 0;
    -moz-appearance: none;
    -webkit-appearance: none;
  }
  .MuiSelect-select:focus {
    border-radius: 0;
    background-color: rgba(0, 0, 0, 0.05);
  }
  .MuiSelect-select::-ms-expand {
    display: none;
  }
  .MuiSelect-select.Mui-disabled {
    cursor: default;
  }
  .MuiSelect-select[multiple] {
    height: auto;
  }
  .MuiSelect-select:not([multiple]) option, .MuiSelect-select:not([multiple]) optgroup {
    background-color: #fff;
  }
  .MuiSelect-select.MuiSelect-select {
    padding-right: 24px;
  }
  .MuiSelect-filled.MuiSelect-filled {
    padding-right: 32px;
  }
  .MuiSelect-outlined {
    border-radius: 4px;
  }
  .MuiSelect-outlined.MuiSelect-outlined {
    padding-right: 32px;
  }
  .MuiSelect-selectMenu {
    height: auto;
    overflow: hidden;
    min-height: 1.1876em;
    white-space: nowrap;
    text-overflow: ellipsis;
  }
  .MuiSelect-icon {
    top: calc(50% - 12px);
    color: rgba(0, 0, 0, 0.54);
    right: 0;
    position: absolute;
    pointer-events: none;
  }
  .MuiSelect-icon.Mui-disabled {
    color: rgba(0, 0, 0, 0.26);
  }
  .MuiSelect-iconOpen {
    transform: rotate(180deg);
  }
  .MuiSelect-iconFilled {
    right: 7px;
  }
  .MuiSelect-iconOutlined {
    right: 7px;
  }
  .MuiSelect-nativeInput {
    left: 0;
    width: 100%;
    bottom: 0;
    opacity: 0;
    position: absolute;
    pointer-events: none;
  }
  .jss24 {
    display: flex;
    padding: 6px 4px;
    background: rgb(247 248 250);
    border-top: 1px solid #e9efeb;
    overflow-x: auto;
    transition: all 0.3s ease;
    -webkit-overflow-scrolling: touch;
  }
  .jss25 {
    color: #37474f;
    margin: 0 3px;
    padding: 0 10px;
    font-size: 13px;
    flex-shrink: 0;
    border-color: #c2d8ca;
    border-radius: 20px;
    text-transform: inherit;
  }
  .jss25:hover {
    text-decoration: none;
  }
  .jss26 {
    border-color: #94c6a7;
  }
  .jss27 {
    overflow: hidden;
  }
  .jss27 .jss24 {
    margin-bottom: -24px;
    padding-bottom: 30px;
  }
  .jss28 {
    color: #269654;
    border: 1px solid #94c6a7;
    font-size: 13px;
    font-family: 'Roboto Condensed', sans-serif;
    margin-right: 0px;
    border-radius: 20px;
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px;
  }
  .jss28::before {
    opacity: 0;
  }
  .jss28::after {
    top: 5px;
    left: inherit;
    right: -8px;
    width: 17px;
    height: 17px;
    content: " ";
    display: block;
    position: absolute;
    transform: rotate(45deg)!important;
    background: rgb(247 248 250);
    border-top: 1px solid #94c6a7;
    border-right: 1px solid #94c6a7;
    border-bottom: 0;
    border-top-right-radius: 3px;
  }
  .jss29 {
    padding: 2px 20px 3px 13px!important;
    z-index: 3;
    position: relative;
    background: none!important;
    font-family: 'Roboto Condensed', sans-serif;
    line-height: 1.75;
  }
  .jss30 {
    fill: #269654;
    right: 0;
    z-index: 2;
    position: relative;
    margin-left: -20px;
  }
  .jss31 {
    width: 100%;
    display: flex;
  }
  .jss32 {
    fill: #2C4958;
    padding: 0;
  }
  .MuiSkeleton-root {
    height: 1.2em;
    display: block;
    background-color: rgba(0, 0, 0, 0.11);
  }
  .MuiSkeleton-text {
    height: auto;
    transform: scale(1, 0.60);
    margin-top: 0;
    border-radius: 4px;
    margin-bottom: 0;
    transform-origin: 0 60%;
  }
  .MuiSkeleton-text:empty:before {
    content: "\00a0";
  }
  .MuiSkeleton-circle {
    border-radius: 50%;
  }
  .MuiSkeleton-pulse {
    animation: MuiSkeleton-keyframes-pulse 1.5s ease-in-out 0.5s infinite;
  }
@keyframes MuiSkeleton-keyframes-pulse {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0.4;
  }
  100% {
    opacity: 1;
  }
}
  .MuiSkeleton-wave {
    overflow: hidden;
    position: relative;
  }
  .MuiSkeleton-wave::after {
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    content: "";
    position: absolute;
    animation: MuiSkeleton-keyframes-wave 1.6s linear 0.5s infinite;
    transform: translateX(-100%);
    background: linear-gradient(90deg, transparent, rgba(0, 0, 0, 0.04), transparent);
  }
@keyframes MuiSkeleton-keyframes-wave {
  0% {
    transform: translateX(-100%);
  }
  60% {
    transform: translateX(100%);
  }
  100% {
    transform: translateX(100%);
  }
}
  .MuiSkeleton-withChildren > * {
    visibility: hidden;
  }
  .MuiSkeleton-fitContent {
    max-width: fit-content;
  }
  .MuiSkeleton-heightAuto {
    height: auto;
  }
  .jss36 {
    width: 100%;
    height: 100%;
    object-fit: cover;
    text-align: center;
  }
  .jss37 {
    width: 80px;
    height: 80px;
    margin-right: 10px;
    border-radius: 5px;
  }
  .jss38 {
    color: #2b4857;
    font-size: 15px;
    font-family: Roboto Condensed', sans-serif;
    font-weight: bold;
  }
@media (min-width:960px) {
  .jss38 {
    display: -webkit-box;
    overflow: hidden;
    font-weight: bold;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 3;
  }
}
  .jss39 {
    width: 100%;
    display: flex;
    flex-direction: column;
  }
  .jss40 {
    width: 100%;
    display: flex;
    margin-right: 15px;
    margin-bottom: 15px;
  }
  .jss41 {
    width: 100%;
    display: flex;
    flex-wrap: wrap;
    max-width: 100%;
    align-items: flex-start;
    background-color: #fff;
  }
  .jss42 {
    width: 350px;
    min-width: 350px;
    padding-left: 0px;
    padding-right: 0px;
  }
  .jss43 {
    display: flex;
    padding: 0 40px 0 0;
    text-decoration: none;
  }
  .jss4 {
    position: relative;
  }
  .jss5 {
    height: 49px;
    display: flex;
    padding: 0 15px;
    align-items: center;
    margin-right: 8px;
    margin-bottom: -1px;
    justify-content: center;
  }
  .jss6 {
    color: #279655;
    font-size: 10px;
    font-family: 'Roboto Condensed', sans-serif;
    text-transform: uppercase;
    text-decoration: none;
  }
  .jss7 {
    width: 180px;
  }
@media (min-width:1280px) {
  .jss7 {
    width: 320px;
    margin-top: -4px;
  }
}
  .jss8 {
    padding: 0;
    min-height: 45px;
    background-color: #fff;
  }
@media (min-width:1280px) {
  .jss8 {
    min-height: 70px;
  }
}
  .jss9 {
    padding: 0;
    border-bottom: 1px solid #eef2f7;
  }
  .jss10 {
    top: 0;
    z-index: 100;
    position: sticky;
    flex-grow: 1;
  }
  .jss11 {
    text-decoration: none;
  }
  .jss12 {
    font-size: 14px;
    font-style: italic;
    padding-left: 20px;
  }
  .jss13 {
    top: 0;
    left: 0;
    right: 0;
    width: 100%;
    bottom: 0;
    height: 100%;
    z-index: -1;
    position: fixed;
    background: none;
  }
  .jss14 {
    display: flex;
    align-items: center;
    margin-left: auto;
  }
  .jss15 {
    font-size: 10px;
    border-radius: 4px;
  }
  .jss16 {
    border: 1px solid #148c48;
    padding: 7px 10px;
    border-radius: 6px;
  }
  .jss16:hover {
    border: 1px solid #148c48;
    background-color: #148c48;
  }
  .jss17 {
    height: 20px;
  }
  .jss18 {
    padding: 10px 5px;
  }
@media (min-width:960px) {
  .jss19 {
    right: 30px;
    bottom: -30px;
  }
}
  .jss20 {
    display: flex;
    overflow: hidden;
    min-width: 100%;
    background: none;
    min-height: 100%;
  }
  .jss21 {
    width: 100%;
    height: 100%;
    position: relative;
    background: white;
    border-top: 1px solid #e1e0ef;
    box-shadow: 0px -20px 20px 0px rgb(73 69 89 / 25%);
    margin-top: 130px;
    min-height: 100vh;
    overflow-x: hidden;
    overflow-y: auto;
    border-radius: 10px 10px 0 0;
  }
  .jss22 {
    margin: 10px 20px;
  }
  .jss23 {
    top: 70px;
    width: 100%;
    display: flex;
    z-index: 10;
    position: absolute;
    justify-content: center;
  }
@media (min-width:960px) {
  .jss23 {
    justify-content: flex-end;
  }
}
  .jss1 {
    padding-top: 40px;
  }</style></head><body><div id="__next"><div class="jss2"><div data-adunit="/59391304/USH/MetroWorldNews/ad_layer" class="ad_layer " id="ad_layer_9999_1" style="max-height:1px"><div style="width:1px;height:1px"></div></div></div><div class="jss2"><div data-adunit="/59391304/USH/MetroWorldNews/ad_skin" class="ad_skin " id="ad_skin_9999_1" style="max-height:1px"><div style="width:1px;height:1px"></div></div></div><div class="jss2"><div data-adunit="/59391304/USH/MetroWorldNews/ad_hcodemedia" class="ad_hcodemedia mobile" id="ad_hcodemedia_9999_1" style="max-height:1px"><div style="width:1px;height:1px"></div></div></div><div class="jss2"><div data-adunit="/59391304/USH/MetroWorldNews/ad_header" class="ad_header" id="ad_header_437614_1" style="text-align:center"><div style="width:970px;height:90px"></div></div></div><div class="jss10"><header class="MuiPaper-root MuiAppBar-root MuiAppBar-positionRelative MuiAppBar-colorInherit jss9 MuiPaper-elevation0"><div class="MuiToolbar-root MuiToolbar-regular jss8 MuiToolbar-gutters"><div class="jss4"><a href="/" title="home"><div class="jss5"><img class="jss7" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA3MzQuNTQgNzQuODIiPjxkZWZzPjxzdHlsZT4uY2xzLTF7ZmlsbDojMjc5NjU1O308L3N0eWxlPjwvZGVmcz48dGl0bGU+UmVjdXJzbyAxPC90aXRsZT48ZyBpZD0iQ2FwYV8yIiBkYXRhLW5hbWU9IkNhcGEgMiI+PGcgaWQ9IkxheWVyXzEiIGRhdGEtbmFtZT0iTGF5ZXIgMSI+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNMTMzLjgzLDUwLjdoLS4yN0wxMTYsMjQuOTR2MzloLTUuMzFWMTUuNzFoNS41MUwxMzMuNzcsNDJsMTcuNTYtMjYuMzFoNS41MVY2My45MkgxNTEuNHYtMzlaIi8+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNMTg1LjI4LDYwLjEzYTE0LjcyLDE0LjcyLDAsMCwwLDExLjIyLTVsMy4zMSwzYTE4LjM5LDE4LjM5LDAsMCwxLTE0LjY3LDYuNjhjLTkuNzgsMC0xNy43Ny03LjUxLTE3Ljc3LTE4LjYsMC0xMC4zMyw3LjIzLTE4LjU5LDE3LjA3LTE4LjU5QzE5NSwyNy41NSwyMDEsMzYsMjAxLDQ2LjQyYTE2LjUsMTYuNSwwLDAsMS0uMDYsMS42NUgxNzIuNzVDMTczLjUxLDU1Ljc5LDE3OSw2MC4xMywxODUuMjgsNjAuMTNabTEwLjQtMTZDMTk1LjEzLDM3LjY5LDE5MS40MSwzMiwxODQuMzIsMzJjLTYuMiwwLTEwLjg4LDUuMTUtMTEuNTcsMTIuMTFaIi8+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNMjE3LjUxLDUzLjhjMCw0LjM0LDIuNDEsNS45MSw2LDUuOTFhMTEuMTYsMTEuMTYsMCwwLDAsNS4xNi0xLjIzVjYzYTEzLjI4LDEzLjI4LDAsMCwxLTYuNCwxLjUzYy01LjcyLDAtMTAuMDctMi44My0xMC4wNy0xMC4wNlYzM2gtNC45NVYyOC4zMmg0Ljk1VjE3LjU4aDUuMzFWMjguMzJoMTEuM1YzM0gyMTcuNVY1My44WiIvPjxwYXRoIGNsYXNzPSJjbHMtMSIgZD0iTTI0My40OCw2My45MmgtNS4zMVYyOC4zMmg1LjMxdjkuM2MyLjYyLTUuOTIsNy43OC0xMC4xOSwxNC41My05LjkydjUuNzJoLS40MWMtNy43OSwwLTE0LjEyLDUuNTgtMTQuMTIsMTYuMzJaIi8+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNMjgwLjgxLDY0Ljc1YTE4LjI2LDE4LjI2LDAsMCwxLTE4LjQ2LTE4LjU0LDE4LjU2LDE4LjU2LDAsMSwxLDE4LjQ2LDE4LjU0Wm0wLTMyLjUxYy03LjcxLDAtMTMsNi4xMy0xMywxMy44NFMyNzMuNDQsNjAsMjgxLDYwQzI4OC42Niw2MCwyOTQsNTMuODYsMjk0LDQ2LjIxUzI4OC4zMSwzMi4yNCwyODAuODEsMzIuMjRaIi8+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNMzU5LjgsMTUuNTdoNC40OEwzNzcuNSw1NS44NmwxMy43Ny00MC4xNUgzOTdMMzc5Ljc4LDY0LjI2aC00LjYxTDM2MiwyNS4xNSwzNDguNjYsNjQuMjZoLTQuNTVMMzI2LjksMTUuNzFoNS45MmwxMy43Nyw0MC4xNVoiLz48cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Ik00MTcuNzMsNjQuNzVhMTguMjUsMTguMjUsMCwwLDEtMTguNDYtMTguNTQsMTguNTYsMTguNTYsMCwxLDEsMTguNDYsMTguNTRabTAtMzIuNTFjLTcuNzEsMC0xMyw2LjEzLTEzLDEzLjg0UzQxMC4zNiw2MCw0MTcuODcsNjBjNy43LDAsMTMuMDgtNi4xMywxMy4wOC0xMy43OFM0MjUuMjMsMzIuMjQsNDE3LjczLDMyLjI0WiIvPjxwYXRoIGNsYXNzPSJjbHMtMSIgZD0iTTQ1MS4yNyw2My45Mkg0NDZWMjguMzJoNS4zMXY5LjNjMi42Mi01LjkyLDcuNzgtMTAuMTksMTQuNTMtOS45MnY1LjcyaC0uNDFjLTcuNzgsMC0xNC4xMiw1LjU4LTE0LjEyLDE2LjMyWiIvPjxwYXRoIGNsYXNzPSJjbHMtMSIgZD0iTTQ3NC4zNSw2My45MlYxMy42NGg1LjNWNjMuOTJaIi8+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNNTIwLjU2LDYzLjkyVjU2Ljc2Yy0yLjksNC4yNy03LjEsNy45Mi0xMy42NCw3LjkyLTguNTQsMC0xNy02Ljc1LTE3LTE4LjUzczguNDctMTguNTksMTctMTguNTljNi42MSwwLDEwLjg4LDMuNTgsMTMuNjQsNy41OFYxMy42N2g1LjNWNjMuOTRoLTUuM1pNNTA3Ljg5LDMyLjMxYy02Ljg5LDAtMTIuNTMsNS4wOS0xMi41MywxMy43NywwLDguNDcsNS43OCwxMy44NCwxMi41MywxMy44NHMxMi44OC01LjUxLDEyLjg4LTEzLjg0UzUxNC41LDMyLjMxLDUwNy44OSwzMi4zMVoiLz48cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Ik01OTQuNzMsMTUuN0g2MDBWNjMuOWgtNC4zNEw1NjQuNTcsMjQuMzhWNjMuOTFoLTUuM1YxNS43MWg1LjFsMzAuMzcsMzguNjNWMTUuN1oiLz48cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Ik02MjguNDgsNjAuMTNhMTQuNywxNC43LDAsMCwwLDExLjIxLTVsMy4zMiwzYTE4LjQxLDE4LjQxLDAsMCwxLTE0LjY4LDYuNjhjLTkuNzgsMC0xNy43Ny03LjUxLTE3Ljc3LTE4LjYsMC0xMC4zMyw3LjIzLTE4LjU5LDE3LjA4LTE4LjU5LDEwLjU0LDAsMTYuNiw4LjQsMTYuNiwxOC44N2ExNC4xNiwxNC4xNiwwLDAsMS0uMDcsMS42NUg2MTUuOTRDNjE2LjcxLDU1Ljc5LDYyMi4yMSw2MC4xMyw2MjguNDgsNjAuMTNabTEwLjQtMTZDNjM4LjMyLDM3LjY5LDYzNC42MSwzMiw2MjcuNTIsMzJjLTYuMiwwLTEwLjg4LDUuMTUtMTEuNTcsMTIuMTFaIi8+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNNjg3LjQzLDU2Ljg5bDkuMzctMjguNThoNS41MUw2ODkuNzgsNjQuMTloLTQuNjFMNjc1LjYsMzYuMSw2NjYsNjQuMTloLTQuNjhMNjQ4LjgxLDI4LjMxaDUuNjVsOS4zNiwyOC41OCw5LjU3LTI4LjcxaDQuNDFaIi8+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNNzIxLjg3LDY0LjYxYTI0LjU0LDI0LjU0LDAsMCwxLTE0Ljc0LTUuMjNsMi42OC0zLjc5YTIwLjgzLDIwLjgzLDAsMCwwLDEyLjMzLDQuNTVjNC4yNywwLDcuMzctMi4yLDcuMzctNS42NXYtLjE0YzAtMy41OS00LjItNS04Ljg4LTYuMjgtNS41OC0xLjU4LTExLjc4LTMuNTEtMTEuNzgtMTB2LS4xNGMwLTYuMTMsNS4xLTEwLjE5LDEyLjEyLTEwLjE5YTI0LjM1LDI0LjM1LDAsMCwxLDEyLjgxLDMuOTNsLTIuNDEsNGEyMC4xNywyMC4xNywwLDAsMC0xMC41My0zLjQ0Yy00LjIsMC02Ljg5LDIuMi02Ljg5LDUuMTZ2LjE0YzAsMy4zOCw0LjQxLDQuNjgsOS4xNiw2LjEzLDUuNTEsMS42NSwxMS40MywzLjc5LDExLjQzLDEwLjE5di4xNEM3MzQuNTQsNjAuNjgsNzI5LDY0LjYxLDcyMS44Nyw2NC42MVoiLz48cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Ik02My44NiwxMWEzNy40MSwzNy40MSwwLDEsMCwwLDUyLjlBMzcuNCwzNy40LDAsMCwwLDYzLjg2LDExWk02Mi4zLDU4LjUyYTM3Ljc0LDM3Ljc0LDAsMCwwLTUuNTktNC4xNEE2MSw2MSwwLDAsMCw1OSwzOS43OUg3MEEzMi4zOCwzMi4zOCwwLDAsMSw2Mi4zLDU4LjUyWk00Ljg3LDM5LjhoMTFhNTkuNDYsNTkuNDYsMCwwLDAsMi4yNiwxNC41OSwzNywzNywwLDAsMC01LjU5LDQuMTRBMzIuMjQsMzIuMjQsMCwwLDEsNC44NywzOS44Wm03LjY2LTIzLjVhMzcuNzQsMzcuNzQsMCwwLDAsNS41OSw0LjE0QTYwLjUsNjAuNSwwLDAsMCwxNS44NiwzNWgtMTFBMzIuMzcsMzIuMzcsMCwwLDEsMTIuNTMsMTYuM1pNMzUsMjAuOTNhMzIuODgsMzIuODgsMCwwLDEtMTEuMTEtMi44MWMyLTUuMiw1Ljc1LTExLjQ0LDExLjExLTEzWm0wLDQuNzdWMzVIMjAuNjNhNTUuNjIsNTUuNjIsMCwwLDEsMS44MS0xMi4zNkEzNy40LDM3LjQsMCwwLDAsMzUsMjUuN1ptMCwxNC4xdjkuMzNhMzYuOTQsMzYuOTQsMCwwLDAtMTIuNTksM0E1Ni4xMiw1Ni4xMiwwLDAsMSwyMC42MywzOS44Wm0wLDE0LjA5VjY5LjdjLTUuMzYtMS41NS05LjA5LTcuNzgtMTEuMTEtMTNBMzIuOSwzMi45LDAsMCwxLDM1LDUzLjg5Wm00Ljc3LDBBMzIuODgsMzIuODgsMCwwLDEsNTAuOTEsNTYuN2MtMiw1LjItNS43NSwxMS40NC0xMS4xMSwxM1ptMC00Ljc2VjM5LjhINTQuMmE1Ni4yMSw1Ni4yMSwwLDAsMS0xLjgxLDEyLjM1LDM3LDM3LDAsMCwwLTEyLjU5LTNaTTM5LjgsMzVWMjUuNjlhMzYuOTQsMzYuOTQsMCwwLDAsMTIuNTktM0E1Ni4xMiw1Ni4xMiwwLDAsMSw1NC4yLDM1Wm0wLTE0LjA5VjUuMTJjNS4zNiwxLjU1LDkuMDksNy43OCwxMS4xMSwxM0EzMi40OSwzMi40OSwwLDAsMSwzOS44LDIwLjkzWk01MC41LDcuNTFhMzIuMzMsMzIuMzMsMCwwLDEsOC40NCw1LjQsMzMuMiwzMy4yLDAsMCwxLTMuODIsMi45MUEzNS43LDM1LjcsMCwwLDAsNTAuNSw3LjUxWm0tMzAuNzksOC4zYTMzLjU4LDMzLjU4LDAsMCwxLTMuODMtMi45MSwzMi41NSwzMi41NSwwLDAsMSw4LjQ1LTUuNCwzNi4xMSwzNi4xMSwwLDAsMC00LjYyLDguMzFabTAsNDMuMmEzNi40NSwzNi40NSwwLDAsMCw0LjYxLDguMzEsMzIuNTUsMzIuNTUsMCwwLDEtOC40NS01LjRBMzUuODcsMzUuODcsMCwwLDEsMTkuNzEsNTlabTM1LjQxLDBhMzMuNDgsMzMuNDgsMCwwLDEsMy44MiwyLjkxLDMyLjY2LDMyLjY2LDAsMCwxLTguNDQsNS40QTM1LjcsMzUuNywwLDAsMCw1NS4xMiw1OVpNNTksMzVhNTkuOTQsNTkuOTQsMCwwLDAtMi4yNi0xNC41OSwzNywzNywwLDAsMCw1LjU5LTQuMTRBMzIuMzIsMzIuMzIsMCwwLDEsNzAsMzVaIi8+PC9nPjwvZz48L3N2Zz4=" alt="logo"/></div></a></div><div class="jss14"><button class="MuiButtonBase-root MuiIconButton-root jss15 jss16 MuiIconButton-colorInherit" tabindex="0" type="button" aria-label="ir a sobre nosotros"><span class="MuiIconButton-label"><a href="/sobre-nosotros" class="jss6" title="sobre-nosotros">Sobre Nosotros</a></span></button><button class="MuiButtonBase-root MuiIconButton-root jss15 MuiIconButton-colorInherit" tabindex="0" type="button" aria-label="open drawer" janoppix="true"><span class="MuiIconButton-label"><svg class="MuiSvgIcon-root jss17" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M3 18h18v-2H3v2zm0-5h18v-2H3v2zm0-7v2h18V6H3z"></path></svg></span></button></div></div><div class="jss27"><div class="jss24"><div class="jss25"><div class="MuiFormControl-root"><div class="MuiInputBase-root MuiInput-root MuiInput-underline jss28 MuiInputBase-formControl MuiInput-formControl"><div class="MuiSelect-root MuiSelect-select MuiSelect-selectMenu jss29 MuiInputBase-input MuiInput-input" tabindex="0" role="button" aria-haspopup="listbox">Latam</div><input value="hub" aria-hidden="true" tabindex="-1" class="MuiSelect-nativeInput"/><svg class="MuiSvgIcon-root MuiSelect-icon jss30" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M7 10l5 5 5-5z"></path></svg></div></div></div><a class="MuiTypography-root MuiLink-root MuiLink-underlineHover MuiButtonBase-root MuiButton-root MuiButton-outlined jss25 MuiTypography-colorPrimary" tabindex="0" role="button" aria-disabled="false" href="/fayerwayer/noticias"><span class="MuiButton-label">Noticias</span></a><a class="MuiTypography-root MuiLink-root MuiLink-underlineHover MuiButtonBase-root MuiButton-root MuiButton-outlined jss25 MuiTypography-colorPrimary" tabindex="0" role="button" aria-disabled="false" href="/fayerwayer/deportes"><span class="MuiButton-label">Deportes</span></a><a class="MuiTypography-root MuiLink-root MuiLink-underlineHover MuiButtonBase-root MuiButton-root MuiButton-outlined jss25 MuiTypography-colorPrimary" tabindex="0" role="button" aria-disabled="false" href="/fayerwayer/entretenimiento"><span class="MuiButton-label">Entretenimiento</span></a><a class="MuiTypography-root MuiLink-root MuiLink-underlineHover MuiButtonBase-root MuiButton-root MuiButton-outlined jss25 MuiTypography-colorPrimary" tabindex="0" role="button" aria-disabled="false" href="/fayerwayer/estilo-vida"><span class="MuiButton-label">Estilo de Vida</span></a><a class="MuiTypography-root MuiLink-root MuiLink-underlineHover MuiButtonBase-root MuiButton-root MuiButton-outlined jss25 MuiTypography-colorPrimary" tabindex="0" role="button" aria-disabled="false" href="/fayerwayer/social"><span class="MuiButton-label">Social</span></a><a class="MuiTypography-root MuiLink-root MuiLink-underlineHover MuiButtonBase-root MuiButton-root MuiButton-outlined jss25 MuiTypography-colorPrimary" tabindex="0" role="button" aria-disabled="false" href="/fayerwayer/metro-tv"><span class="MuiButton-label">Metro TV</span></a><a class="MuiTypography-root MuiLink-root MuiLink-underlineHover MuiButtonBase-root MuiButton-root MuiButton-outlined jss25 MuiTypography-colorPrimary" tabindex="0" role="button" aria-disabled="false" href="/fayerwayer/opinion"><span class="MuiButton-label">Opinión</span></a></div></div></header><div class="MuiDrawer-root MuiDrawer-docked"><div class="MuiPaper-root MuiDrawer-paper jss20 MuiDrawer-paperAnchorBottom MuiDrawer-paperAnchorDockedBottom MuiPaper-elevation0" style="visibility:hidden"><div class="jss23"><button class="MuiButtonBase-root MuiFab-root jss19 MuiFab-primary" tabindex="0" type="button" aria-label="add"><span class="MuiFab-label"><svg class="MuiSvgIcon-root" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"></path></svg></span></button></div><div class="jss21"><div class="jss22"><div class="MuiBottomNavigation-root jss31"><a class="MuiButtonBase-root MuiBottomNavigationAction-root MuiBottomNavigationAction-iconOnly" tabindex="0" aria-disabled="false" href="https://twitter.com/metroworldnews1"><span class="MuiBottomNavigationAction-wrapper"><svg width="17" height="17" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg" class="svg-icon jss32" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="[object Object]" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path></svg><span class="MuiBottomNavigationAction-label MuiBottomNavigationAction-iconOnly">Twitter</span></span></a><a class="MuiButtonBase-root MuiBottomNavigationAction-root MuiBottomNavigationAction-iconOnly" tabindex="0" aria-disabled="false" href="https://www.facebook.com/metroworldnews"><span class="MuiBottomNavigationAction-wrapper"><svg width="17" height="17" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg" class="svg-icon jss32" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="[object Object]" d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"></path></svg><span class="MuiBottomNavigationAction-label MuiBottomNavigationAction-iconOnly">Facebook</span></span></a><a class="MuiButtonBase-root MuiBottomNavigationAction-root MuiBottomNavigationAction-iconOnly" tabindex="0" aria-disabled="false" href="https://www.instagram.com/metroworldnews/"><span class="MuiBottomNavigationAction-wrapper"><svg width="17" height="17" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg" class="svg-icon jss32" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="[object Object]" d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"></path></svg><span class="MuiBottomNavigationAction-label MuiBottomNavigationAction-iconOnly">Instagram</span></span></a></div></div><hr class="MuiDivider-root"/><div class="jss22"><button class="MuiButtonBase-root MuiIconButton-root MuiIconButton-colorInherit" tabindex="0" type="button"><span class="MuiIconButton-label"><svg class="MuiSvgIcon-root" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path></svg></span></button><div class="MuiInputBase-root"><input type="text" placeholder="Buscar…" aria-label="search" class="MuiInputBase-input"/></div></div><hr class="MuiDivider-root"/><div class="MuiGrid-root MuiGrid-container"><div class="MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 MuiGrid-grid-md-3"><div class="jss22"><div class="MuiButtonBase-root MuiListItem-root jss18 MuiListItem-gutters MuiListItem-button" tabindex="0" role="button" aria-disabled="false"><div class="MuiListItemText-root"><span class="MuiTypography-root MuiListItemText-primary MuiTypography-body1 MuiTypography-displayBlock">Secciones</span></div><svg class="MuiSvgIcon-root" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M16.59 8.59L12 13.17 7.41 8.59 6 10l6 6 6-6z"></path></svg></div></div></div><div class="MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 MuiGrid-grid-md-9"><div class="jss22"><div class="MuiListItemText-root"><span class="MuiTypography-root MuiListItemText-primary MuiTypography-body1 MuiTypography-displayBlock">Lo Último</span></div><ul class="MuiList-root jss33 jss41 MuiList-padding"><li class="MuiListItem-root jss34 jss42 MuiListItem-gutters"><div class="jss40"><span class="MuiSkeleton-root MuiSkeleton-rect MuiSkeleton-pulse" style="width:106px;height:80px"></span><div style="width:100%;margin-left:20px"><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:100%"></span><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:98%"></span><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:100%"></span></div></div></li><li class="MuiListItem-root jss34 jss42 MuiListItem-gutters"><div class="jss40"><span class="MuiSkeleton-root MuiSkeleton-rect MuiSkeleton-pulse" style="width:106px;height:80px"></span><div style="width:100%;margin-left:20px"><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:100%"></span><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:98%"></span><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:100%"></span></div></div></li><li class="MuiListItem-root jss34 jss42 MuiListItem-gutters"><div class="jss40"><span class="MuiSkeleton-root MuiSkeleton-rect MuiSkeleton-pulse" style="width:106px;height:80px"></span><div style="width:100%;margin-left:20px"><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:100%"></span><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:98%"></span><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:100%"></span></div></div></li><li class="MuiListItem-root jss34 jss42 MuiListItem-gutters"><div class="jss40"><span class="MuiSkeleton-root MuiSkeleton-rect MuiSkeleton-pulse" style="width:106px;height:80px"></span><div style="width:100%;margin-left:20px"><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:100%"></span><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:98%"></span><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:100%"></span></div></div></li><li class="MuiListItem-root jss34 jss42 MuiListItem-gutters"><div class="jss40"><span class="MuiSkeleton-root MuiSkeleton-rect MuiSkeleton-pulse" style="width:106px;height:80px"></span><div style="width:100%;margin-left:20px"><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:100%"></span><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:98%"></span><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:100%"></span></div></div></li><li class="MuiListItem-root jss34 jss42 MuiListItem-gutters"><div class="jss40"><span class="MuiSkeleton-root MuiSkeleton-rect MuiSkeleton-pulse" style="width:106px;height:80px"></span><div style="width:100%;margin-left:20px"><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:100%"></span><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:98%"></span><span class="MuiSkeleton-root MuiSkeleton-text MuiSkeleton-pulse" style="width:100%"></span></div></div></li></ul></div></div></div></div><div class="jss13"></div></div></div></div><main class="jss1 maindesktop"><div id="skin-branding"><div class="wrapFirstArticle"><div class="MuiContainer-root MuiContainer-disableGutters MuiContainer-maxWidthLg"></div><div class="container articleContainer wrappin" data-url="/fayerwayer/2020/10/coronavirus-donald-trump-facebook" data-titulo="Coronavirus: Donald Trump desinforma y dice que hay una cura para el Covid-19" data-slug="coronavirus-donald-trump-facebook" data-author="York Perry" data-pais="fayerwayer"></div></div></div><div><div class="bloque articulo-falso"><div class="MuiContainer-root MuiContainer-maxWidthLg"><div class="MuiGrid-root MuiGrid-container"><div style="width:100%;justify-content:center;padding-bottom:20px"></div><div style="width:100%;justify-content:center;padding-bottom:40px"></div></div></div><div class="MuiContainer-root MuiContainer-maxWidthMd"><div class="MuiGrid-root MuiGrid-container"><div style="width:100%;justify-content:center;padding-bottom:40px"></div></div></div></div></div></main></div><script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{"bloques":[],"articulosRelleno":[],"menu":{"mwn-principal":{"130372":{"ID":130372,"url":"/noticias","slug":"noticias","title":"Noticias","menu_item_parent":"0","childrens":[]},"130373":{"ID":130373,"url":"/deportes","slug":"deportes","title":"Deportes","menu_item_parent":"0","childrens":[]},"130374":{"ID":130374,"url":"/entretenimiento","slug":"entretenimiento","title":"Entretenimiento","menu_item_parent":"0","childrens":[]},"130375":{"ID":130375,"url":"/estilo-vida","slug":"estilo-vida","title":"Estilo de Vida","menu_item_parent":"0","childrens":[]},"130376":{"ID":130376,"url":"/social","slug":"social","title":"Social","menu_item_parent":"0","childrens":[]},"130377":{"ID":130377,"url":"/metro-tv","slug":"metro-tv","title":"Metro TV","menu_item_parent":"0","childrens":[]},"130378":{"ID":130378,"url":"/opinion","slug":"opinion","title":"Opinión","menu_item_parent":"0","childrens":[]}}},"post":[{"id":437614,"date":"2020-10-08T07:22:44","date_gmt":"2020-10-08T12:22:44","guid":{"rendered":"https://www.fayerwayer.com"},"modified":"2020-10-08T07:23:07","modified_gmt":"2020-10-08T12:23:07","slug":"coronavirus-donald-trump-facebook","type":"post","link":"https://www.fayerwayer.com/2020/10/coronavirus-donald-trump-facebook","title":{"rendered":"Coronavirus: Donald Trump desinforma y dice que hay una cura para el Covid-19"},"content":{"rendered":"\u003cp\u003eDonald Trump parece que simplemente no aprende. O por el contrario, no le importa desinformar sobre el \u003cstrong\u003eCoronavirus Covid-19.\u003c/strong\u003e Aunque haya vidas de por medio.\u003c/p\u003e\n\u003cp\u003eHace algunas horas reportamos cómo \u003cstrong\u003e\u003ca href=\"https://www.fayerwayer.com/2020/10/coronavirus-trump-twitter-desinformacion/\"\u003eTwitter\u003c/a\u003e\u003c/strong\u003e tuvo que moderar una publicación del mandatario luego de comparar al SARS-CoV-2 con una gripe normal, afirmando que es mucho menos letal.\u003c/p\u003e\n\u003cp\u003e\u003c!--initembed--\u003e\u003c/p\u003e\n\u003cdiv class=\"metroEmbed\"\u003e\n\u003cstyle\u003e@import url(https://fonts.googleapis.com/css?family=Fira+Sans:300,400,400i,600);@import url(https://assets.metrolatam.com/assets/oembed.css?v=BS12);\u003c/style\u003e\n\u003cdiv class=\"woe-box woe-kind-fw\" data-id=\"437559\" data-findID=\"437559\"\u003e\n\u003cdiv class=\"woe-content-box\"\u003e\u003cimg class=\"woe-thumb\" src=\"https://media.metrolatam.com/2019/02/12/trumpasvale-ececc40e1d3b04c8cd7fa302b72d6687-200x200.jpg\" alt=\"Coronavirus: Donald Trump vuelve a violar Twitter, dice que el Covid-19 es menos letal que la gripe\"\u003e\u003c/p\u003e\n\u003cdiv class=\"woe-content\"\u003e\u003cimg class=\"woe-brand fayerwayer\" src=\"https://assets.metrolatam.com/svg/logo-fayerwayer.svg\"\u003e\u003ca href=\"https://www.fayerwayer.com/2020/10/coronavirus-trump-twitter-desinformacion\"\u003e\u003c/p\u003e\n\u003ch3\u003eCoronavirus: Donald Trump vuelve a violar Twitter, dice que el Covid-19 es menos letal que la gripe\u003c/h3\u003e\n\u003cp\u003e\u003c/a\u003e\u003c/p\u003e\n\u003cp\u003eDonald Trump compara al Coronavirus Covid-19 con una gripe normal y Twitter censura su publicación en Twitter por desinformar con la afirmación.\u003c/p\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003cp\u003e\u003c!--endembed--\u003e\u003c/p\u003e\n\u003cp\u003eAhora Trump vuelve a la carga con un video difundido a través de Facebook para luego replicarse en otras plataformas suyas.\u003c/p\u003e\n\u003cp\u003eEn donde con un retórica muy enredada termina diciendo que hay \u0026#8220;una cura\u0026#8221; para este Coronavirus.\u003c/p\u003e\n\u003ch3\u003eEnfermarse fue \u0026#8220;una bendición\u0026#8221;\u003c/h3\u003e\n\u003cp\u003eDurante su periodo internado en el hospital el mandatario recibió un coctel experimental de fármacos, denominado como \u003cstrong\u003eREGN-COV2\u003c/strong\u003e y desarrollado por la farmacéutica Regeneron.\u003c/p\u003e\n\u003cp\u003eEl video de la controversia gira en torno a la narración de su experiencia y los efectos que tuvo el tratamiento médico en él:\u003c/p\u003e\n\u003cdiv\u003e\n\u003cdiv class=\"fb-post\" data-href=\"https://www.facebook.com/DonaldTrump/videos/1074174436376520/\" data-width=\"552\"\u003e\n\u003cblockquote cite=\"https://www.facebook.com/DonaldTrump/videos/1074174436376520/\" class=\"fb-xfbml-parse-ignore\"\u003e\n\u003cp\u003eA MESSAGE FROM THE PRESIDENT!\u003c/p\u003e\n\u003cp\u003ePosted by \u003ca href=\"https://www.facebook.com/DonaldTrump/\"\u003eDonald J. Trump\u003c/a\u003e on\u0026nbsp;\u003ca href=\"https://www.facebook.com/DonaldTrump/videos/1074174436376520/\"\u003eWednesday, October 7, 2020\u003c/a\u003e\u003c/p\u003e\u003c/blockquote\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003cblockquote\u003e\u003cp\u003ePara mí, es una cura; ingresé sintiéndome no tan bien y en unas breves 24 horas me sentía genial. Quería salir del hospital.\u003c/p\u003e\u003c/blockquote\u003e\n\u003cp\u003eLlamarlo una cura es desinformación técnicamente, incluso los efectos aún son confusos. Para rematar el Presidente terminó calificando como \u0026#8220;una bendición\u0026#8221; el hecho de contagiarse.\u003c/p\u003e\n\u003cp\u003eCabe destacar que Trump es accionista de esa firma y que su actual CEO también es socio de uno de los clubes de golf de Donald.\u003c/p\u003e\n\u003cp\u003e\u003c!--initembed--\u003e\u003c/p\u003e\n\u003cdiv class=\"metroEmbed\"\u003e\n\u003cstyle\u003e@import url(https://fonts.googleapis.com/css?family=Fira+Sans:300,400,400i,600);@import url(https://assets.metrolatam.com/assets/oembed.css?v=BS12);\u003c/style\u003e\n\u003cdiv class=\"woe-box woe-kind-fw\" data-id=\"437548\" data-findID=\"437548\"\u003e\n\u003cdiv class=\"woe-content-box\"\u003e\u003cimg class=\"woe-thumb\" src=\"https://media.metrolatam.com/2020/05/13/billgatesdfjaf-a753e7f167ba3bc8b79cac6172818326-200x200.jpg\" alt=\"Coronavirus: Bill Gates dice que fármacos con anticuerpos son la clave para frenar muertes\"\u003e\u003c/p\u003e\n\u003cdiv class=\"woe-content\"\u003e\u003cimg class=\"woe-brand fayerwayer\" src=\"https://assets.metrolatam.com/svg/logo-fayerwayer.svg\"\u003e\u003ca href=\"https://www.fayerwayer.com/2020/10/coronavirus-bill-gates-anticuerpos\"\u003e\u003c/p\u003e\n\u003ch3\u003eCoronavirus: Bill Gates dice que fármacos con anticuerpos son la clave para frenar muertes\u003c/h3\u003e\n\u003cp\u003e\u003c/a\u003e\u003c/p\u003e\n\u003cp\u003eLa pandemia del Coronavirus Covid-19 se ha cobrado demasiadas vidas. Bill Gates tiene una propuesta para frenar las tasas de mortalidad.\u003c/p\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003cp\u003e\u003c!--endembed--\u003e\u003c/p\u003e\n\u003cp\u003e\u003cstrong\u003e\u003ca href=\"https://www.fayerwayer.com/2020/10/coronavirus-bill-gates-anticuerpos\"\u003eBill Gates\u003c/a\u003e\u003c/strong\u003e también indicó que medicamentos basados en anticuerpos como el REGN-COV2 serían clave para reducir el número de muertos.\u003c/p\u003e\n\u003cp\u003eParece que Donald Trump sería una de esas vidas protegidas por el fármaco.\u003c/p\u003e\n\u003cp\u003e\u0026nbsp;\u003c/p\u003e\n","protected":false},"excerpt":{"rendered":"Parece que la recta final de la campaña de Donald Trump se tratará de mentir sobre el Coronavirus y desinformar a los votantes.","protected":false},"author":8913,"featured_media":"38-333189","sticky":false,"template":"","format":"standard","meta":{"url":"https://www.fayerwayer.com/2020/10/coronavirus-donald-trump-facebook","imagenOriginal":"https://media.metrolatam.com/2018/11/23/donaldtrumpadkljahf-479b39739c37419f141b370c1dd2c171.jpg"},"categories":[{"term_id":7,"name":"Internet","slug":"internet","term_group":0,"term_taxonomy_id":7,"taxonomy":"category","description":"Todas las noticias de la serie de tubos, la red de redes, la supercarretera de la información sin la cual ni siquiera podrías estar leyendo esto. Nuestra adorada internets y todos los servicios, tecnologías y protocolos que funcionan sobre ella.","parent":0,"count":16075,"filter":"raw","cat_ID":7,"category_count":16075,"category_description":"Todas las noticias de la serie de tubos, la red de redes, la supercarretera de la información sin la cual ni siquiera podrías estar leyendo esto. Nuestra adorada internets y todos los servicios, tecnologías y protocolos que funcionan sobre ella.","cat_name":"Internet","category_nicename":"internet","category_parent":0}],"tags":[97009,97267,12364,189,660,101252,1820,2574],"status":"publish","featured_media_url_original":"https://media.metrolatam.com/2018/11/23/donaldtrumpadkljahf-479b39739c37419f141b370c1dd2c171.jpg","featured_media_url":"https://media.metrolatam.com/2018/11/23/donaldtrumpadkljahf-479b39739c37419f141b370c1dd2c171-{width}x{height}.jpg","patrocinador":false,"amp":1,"migrado":false,"old_image":"","author_name":"York Perry","by_line":[],"paragraph":{"rendered":"\u003cp\u003eDonald Trump parece que simplemente no aprende. O por el contrario, no le importa desinformar sobre el \u003cstrong\u003eCoronavirus Covid-19.\u003c/strong\u003e Aunque haya vidas de por medio.\u003c/p\u003e"},"content_mobile":{"rendered":"\n\u003cp\u003eHace algunas horas reportamos cómo \u003cstrong\u003e\u003ca href=\"https://www.fayerwayer.com/2020/10/coronavirus-trump-twitter-desinformacion/\"\u003eTwitter\u003c/a\u003e\u003c/strong\u003e tuvo que moderar una publicación del mandatario luego de comparar al SARS-CoV-2 con una gripe normal, afirmando que es mucho menos letal.\u003c/p\u003e\n\u003cp\u003e\u003c!--initembed--\u003e\u003c/p\u003e\n\u003cdiv class=\"metroEmbed\"\u003e\n\u003cstyle\u003e@import url(https://fonts.googleapis.com/css?family=Fira+Sans:300,400,400i,600);@import url(https://assets.metrolatam.com/assets/oembed.css?v=BS12);\u003c/style\u003e\n\u003cdiv class=\"woe-box woe-kind-fw\" data-id=\"437559\" data-findID=\"437559\"\u003e\n\u003cdiv class=\"woe-content-box\"\u003e\u003cimg class=\"woe-thumb\" src=\"https://media.metrolatam.com/2019/02/12/trumpasvale-ececc40e1d3b04c8cd7fa302b72d6687-200x200.jpg\" alt=\"Coronavirus: Donald Trump vuelve a violar Twitter, dice que el Covid-19 es menos letal que la gripe\"\u003e\u003c/p\u003e\n\u003cdiv class=\"woe-content\"\u003e\u003cimg class=\"woe-brand fayerwayer\" src=\"https://assets.metrolatam.com/svg/logo-fayerwayer.svg\"\u003e\u003ca href=\"https://www.fayerwayer.com/2020/10/coronavirus-trump-twitter-desinformacion\"\u003e\u003c/p\u003e\n\u003ch3\u003eCoronavirus: Donald Trump vuelve a violar Twitter, dice que el Covid-19 es menos letal que la gripe\u003c/h3\u003e\n\u003cp\u003e\u003c/a\u003e\u003c/p\u003e\n\u003cp\u003eDonald Trump compara al Coronavirus Covid-19 con una gripe normal y Twitter censura su publicación en Twitter por desinformar con la afirmación.\u003c/p\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003cp\u003e\u003c!--endembed--\u003e\u003c/p\u003e\n\u003cp\u003eAhora Trump vuelve a la carga con un video difundido a través de Facebook para luego replicarse en otras plataformas suyas.\u003c/p\u003e\n\u003cp\u003eEn donde con un retórica muy enredada termina diciendo que hay \u0026#8220;una cura\u0026#8221; para este Coronavirus.\u003c/p\u003e\n\u003ch3\u003eEnfermarse fue \u0026#8220;una bendición\u0026#8221;\u003c/h3\u003e\n\u003cp\u003eDurante su periodo internado en el hospital el mandatario recibió un coctel experimental de fármacos, denominado como \u003cstrong\u003eREGN-COV2\u003c/strong\u003e y desarrollado por la farmacéutica Regeneron.\u003c/p\u003e\n\u003cp\u003eEl video de la controversia gira en torno a la narración de su experiencia y los efectos que tuvo el tratamiento médico en él:\u003c/p\u003e\n\u003cdiv\u003e\n\u003cdiv class=\"fb-post\" data-href=\"https://www.facebook.com/DonaldTrump/videos/1074174436376520/\" data-width=\"552\"\u003e\n\u003cblockquote cite=\"https://www.facebook.com/DonaldTrump/videos/1074174436376520/\" class=\"fb-xfbml-parse-ignore\"\u003e\n\u003cp\u003eA MESSAGE FROM THE PRESIDENT!\u003c/p\u003e\n\u003cp\u003ePosted by \u003ca href=\"https://www.facebook.com/DonaldTrump/\"\u003eDonald J. Trump\u003c/a\u003e on\u0026nbsp;\u003ca href=\"https://www.facebook.com/DonaldTrump/videos/1074174436376520/\"\u003eWednesday, October 7, 2020\u003c/a\u003e\u003c/p\u003e\u003c/blockquote\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003cblockquote\u003e\u003cp\u003ePara mí, es una cura; ingresé sintiéndome no tan bien y en unas breves 24 horas me sentía genial. Quería salir del hospital.\u003c/p\u003e\u003c/blockquote\u003e\n\u003cp\u003eLlamarlo una cura es desinformación técnicamente, incluso los efectos aún son confusos. Para rematar el Presidente terminó calificando como \u0026#8220;una bendición\u0026#8221; el hecho de contagiarse.\u003c/p\u003e\n\u003cp\u003eCabe destacar que Trump es accionista de esa firma y que su actual CEO también es socio de uno de los clubes de golf de Donald.\u003c/p\u003e\n\u003cp\u003e\u003c!--initembed--\u003e\u003c/p\u003e\n\u003cdiv class=\"metroEmbed\"\u003e\n\u003cstyle\u003e@import url(https://fonts.googleapis.com/css?family=Fira+Sans:300,400,400i,600);@import url(https://assets.metrolatam.com/assets/oembed.css?v=BS12);\u003c/style\u003e\n\u003cdiv class=\"woe-box woe-kind-fw\" data-id=\"437548\" data-findID=\"437548\"\u003e\n\u003cdiv class=\"woe-content-box\"\u003e\u003cimg class=\"woe-thumb\" src=\"https://media.metrolatam.com/2020/05/13/billgatesdfjaf-a753e7f167ba3bc8b79cac6172818326-200x200.jpg\" alt=\"Coronavirus: Bill Gates dice que fármacos con anticuerpos son la clave para frenar muertes\"\u003e\u003c/p\u003e\n\u003cdiv class=\"woe-content\"\u003e\u003cimg class=\"woe-brand fayerwayer\" src=\"https://assets.metrolatam.com/svg/logo-fayerwayer.svg\"\u003e\u003ca href=\"https://www.fayerwayer.com/2020/10/coronavirus-bill-gates-anticuerpos\"\u003e\u003c/p\u003e\n\u003ch3\u003eCoronavirus: Bill Gates dice que fármacos con anticuerpos son la clave para frenar muertes\u003c/h3\u003e\n\u003cp\u003e\u003c/a\u003e\u003c/p\u003e\n\u003cp\u003eLa pandemia del Coronavirus Covid-19 se ha cobrado demasiadas vidas. Bill Gates tiene una propuesta para frenar las tasas de mortalidad.\u003c/p\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n\u003cp\u003e\u003c!--endembed--\u003e\u003c/p\u003e\n\u003cp\u003e\u003cstrong\u003e\u003ca href=\"https://www.fayerwayer.com/2020/10/coronavirus-bill-gates-anticuerpos\"\u003eBill Gates\u003c/a\u003e\u003c/strong\u003e también indicó que medicamentos basados en anticuerpos como el REGN-COV2 serían clave para reducir el número de muertos.\u003c/p\u003e\n\u003cp\u003eParece que Donald Trump sería una de esas vidas protegidas por el fármaco.\u003c/p\u003e\n\u003cp\u003e\u0026nbsp;\u003c/p\u003e\n"},"fuente":"https://www.fayerwayer.com","currentBlog":38,"category":[{"term_id":7,"name":"Internet","slug":"internet","term_group":0,"term_taxonomy_id":7,"taxonomy":"category","description":"Todas las noticias de la serie de tubos, la red de redes, la supercarretera de la información sin la cual ni siquiera podrías estar leyendo esto. Nuestra adorada internets y todos los servicios, tecnologías y protocolos que funcionan sobre ella.","parent":0,"count":16075,"filter":"raw","cat_ID":7,"category_count":16075,"category_description":"Todas las noticias de la serie de tubos, la red de redes, la supercarretera de la información sin la cual ni siquiera podrías estar leyendo esto. Nuestra adorada internets y todos los servicios, tecnologías y protocolos que funcionan sobre ella.","cat_name":"Internet","category_nicename":"internet","category_parent":0}],"tag_names":["coronavirus","Covid-19","cura","Donald Trump","Fake News","Regeneron","Trump","Vacuna"],"tag_joined":"coronavirus,covid-19,cura,donald-trump,fake-news,regeneron,trump,vacuna","img_credits":{"title":"Huawei termina con la linea de producción de nuevos celulares debido al bloqueo","agencia":"","alt":"Huawei termina con la linea de producción de nuevos celulares debido al bloqueo","description":""},"safety":true,"canonical_url":false,"country":"fayerwayer"}],"isMobile":0,"endpoint":"https://api.publimetro.pe/pe","endpoint2":"https://api.metroworldnews.com/","ambiente":"production","lastPostUrl":"https://api.metroworldnews.com/v1/posts/blog/fayerwayer/exclude/437614/page/1/limit/9","demo":"","dfp_url":"/fayerwayer/2020/10/coronavirus-donald-t","dfp_articulo":"coronavirus-donald-trump-facebook","country":"fayerwayer","virtual":false,"error_404":0}},"page":"/[categoria]/[...all]","query":{"from":"fw","categoria":"fayerwayer","all":["2020","10","coronavirus-donald-trump-facebook"]},"buildId":"PbN3AsfxKJq5vDOpjQM7y","isFallback":false,"gip":true}</script><script nomodule="" src="/_next/static/runtime/polyfills-92ae3b70d58b16813d8f.js"></script><script async="" data-next-page="/_app" src="/_next/static/PbN3AsfxKJq5vDOpjQM7y/pages/_app.js"></script><script async="" data-next-page="/[categoria]/[...all]" src="/_next/static/PbN3AsfxKJq5vDOpjQM7y/pages/%5Bcategoria%5D/%5B...all%5D.js"></script><script src="/_next/static/runtime/webpack-e0456d8994071b19e80d.js" async=""></script><script src="/_next/static/chunks/framework.8838312fdc5fcea078c5.js" async=""></script><script src="/_next/static/chunks/commons.c81ec8442de1a097f324.js" async=""></script><script src="/_next/static/chunks/180edcd688b86e6ba05ccbdd15675708d3f3a774.df0089e9648c715485ec.js" async=""></script><script src="/_next/static/chunks/d249f80c6e22e6546b1658f7e80e83f7bc8e043c.a34b6c3b3012d16f2643.js" async=""></script><script src="/_next/static/chunks/styles.645ef5e82f8eba5e03ab.js" async=""></script><script src="/_next/static/runtime/main-72a1ede3b49e36ca1fcf.js" async=""></script><script src="/_next/static/chunks/f691137efed66dafdc9a97012f02490f7d0765a3.2eeed42fe7b2cf9bbb23.js" async=""></script><script src="/_next/static/chunks/336740e496b23ca74975dd1c2087ff7ace23c5cf.cc12c7e1b2cd0f3beb5d.js" async=""></script><script src="/_next/static/chunks/15ae0a1979a88dc8f50180ef82658055e17f7cbd.b9a3e96e9c16e722de83.js" async=""></script><script src="/_next/static/chunks/237fbaee3ec7e140018a9bb46f9bc38c4d901a06.e4045cb608bd0e0ba147.js" async=""></script><script src="/_next/static/chunks/95a7a4f7a4a8cb7632d162e64b59b414ec97548d.a5075c0c83fd4e89ff85.js" async=""></script><script src="/_next/static/chunks/61d1db61b30053831315ece2f2d16cfb43860d67.fc7e85765098b04154ba.js" async=""></script><script src="/_next/static/chunks/a1c14541b4e818af3b8e388a20b535e5ef870ec5.b61244d5114ff8ebb475.js" async=""></script><script src="/_next/static/chunks/a129a1ed072ed79df6d8bf4085dd184fcd00c33d.dd1af562e38e05949bea.js" async=""></script><script src="/_next/static/chunks/dc08a824bedf1dffa171a109338cf75c03cc426c.1a7c7792fed381493091.js" async=""></script><script src="/_next/static/chunks/17.0d92f802480720dc0238.js" async=""></script><script src="/_next/static/chunks/424f0c9122b6ba3bef24f9cbeeaaeb978b3d1342.b6851066d30001de3717.js" async=""></script><script src="/_next/static/chunks/4660eb0fdc85d3e2c9520884002cab201c2afe13.cef265b70c2c4896e790.js" async=""></script><script src="/_next/static/PbN3AsfxKJq5vDOpjQM7y/_buildManifest.js" async=""></script><script src="/_next/static/PbN3AsfxKJq5vDOpjQM7y/_ssgManifest.js" async=""></script><div id="ad_layer"></div><div id="ad_footer"></div><div id="ad_teads"></div><div id="ad_style" style="max-height:1px"></div><div id="ad_skin"></div></body></html>