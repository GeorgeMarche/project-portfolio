<!DOCTYPE html>
<html lang="">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta http-equiv="refresh" content="3600">
            
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/images/favicon.png">
    
        <link rel="stylesheet" type='text/css' href="/assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" type='text/css' href="/assets/css/override0.3.css"/>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="manifest" href="/manifest.json">

    <title>Telegraph India | Latest News, Top Stories, Opinion, News Analysis and Comments</title>        <meta name="description" content="Read Latest News on Politics, Business, Sports, Bollywood, Technology, and Science on The Telegraph India. Stay with us!
"/>
        <link rel="canonical" href="https://www.telegraphindia.com/"/>
                <meta property="fb:app_id" content="534248160342700">

        <meta name="keyword" content="English Newspaper, News in English, Telegraph India"/>
        <meta property="og:url" content="https://www.telegraphindia.com/"/>
        <meta property="og:title" content="Telegraph India | Latest News, Top Stories, Opinion, News Analysis and Comments"/>
        <meta property="og:type" content="website"/>
        <meta property="og:description" content="Read Latest News on Politics, Business, Sports, Bollywood, Technology, and Science on The Telegraph India. Stay with us!
"/>
        <meta property="og:image" content="https://assets.telegraphindia.com/telegraph/2020/Jul/1593761059_87e1ac78-e513-4e44-b3a5-38a5ee35e639.png"/>
        <meta name="twitter:card" content="summary_large_image"/>
        <meta name="twitter:url" content="https://www.telegraphindia.com/"/>
        <meta name="twitter:site" content="@ttindia"/>
        <meta name="twitter:creator" content="@ttindia"/>
        <meta name="twitter:title" content="Telegraph India | Latest News, Top Stories, Opinion, News Analysis and Comments"/>
        <meta name="twitter:description" content="Read Latest News on Politics, Business, Sports, Bollywood, Technology, and Science on The Telegraph India. Stay with us!
"/>
        <meta name="robots" content="index, follow">        <meta name="google-site-verification" content="VRsNukuvRBQE0QCvqNj2fdezMC2N6_pAK2B7lMHcHGA"/>
        <meta name="referrer" content="origin">
        <meta name="msvalidate.01" content="16C1B4A8FD9A29E3D5AFC3EF251C77A8"/>
        <script type="application/ld+json">{
                "@context": "http://schema.org",
                "@type": "Organization",
                "url": "https://www.telegraphindia.com/",
                "name": "Telegraph India",
                "sameAs": ["https://www.facebook.com/thetelegraphindia", "https://twitter.com/ttindia"]
            }</script>                    
    <!-- Google Tag Manager -->
    <script>(function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start':
                    new Date().getTime(), event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-T9HRQZR');
    </script>
    <!-- End Google Tag Manager -->

    <script>window.dataLayer = window.dataLayer || []</script><script>window.dataLayer.push({'pageType' : 'homepage'})</script>
    <!-- OpwenWrap Script begins here -->
    <script type="text/javascript">
    var PWT={}; //Initialize Namespace
    var notifyId;
    var googletag = googletag || {};
    googletag.cmd = googletag.cmd || [];
    PWT.jsLoaded = function(){ //PubMatic pwt.js on load callback is used to load GPT
        (function() {
            var gads = document.createElement('script');
            var useSSL = 'https:' == document.location.protocol;
            gads.src = (useSSL ? 'https:' : 'http:') + '//www.googletagservices.com/tag/js/gpt.js';
            var node = document.getElementsByTagName('script')[0];
            node.parentNode.insertBefore(gads, node);
        })();
    };
    (function() {
        var purl = window.location.href;
        var url = '//ads.pubmatic.com/AdServer/js/pwt/159328/2813';
        var profileVersionId = '';
        if(purl.indexOf('pwtv=')>0){
            var regexp = /pwtv=(.*?)(&|$)/g;
            var matches = regexp.exec(purl);
            if(matches.length >= 2 && matches[1].length > 0){
                profileVersionId = '/'+matches[1];
            }
        }
        var wtads = document.createElement('script');
        wtads.async = true;
        wtads.type = 'text/javascript';
        wtads.src = url+profileVersionId+'/pwt.js';
        var node = document.getElementsByTagName('script')[0];
        node.parentNode.insertBefore(wtads, node);
    })();
    </script>
    <!--Wrapper Script ends here -->				
			
<script>		
var intViewportWidth = window.innerWidth;
var abpDevice="";
if (intViewportWidth>768 && intViewportWidth<1023){abpDevice="tablet"}
else if (intViewportWidth>=1024){abpDevice="desktop"}
console.log(abpDevice);
console.log(intViewportWidth);
			
			
googletag.cmd.push(function() {
if (abpDevice==="desktop")
{   googletag.defineSlot('/1088475/TT_HM_Header_728x90', [[970, 250], [970, 90], [728, 90]], 'div-gpt-ad-1525337961480-0').addService(googletag.pubads());
    googletag.defineSlot('/1088475/TT_HM_Middle_1_728x90', [[970, 90], [728, 90]], 'div-gpt-ad-1525337961480-1').addService(googletag.pubads());
    googletag.defineSlot('/1088475/TT_HM_Middle_2_728x90', [[970, 90], [728, 90]], 'div-gpt-ad-1525337961480-2').addService(googletag.pubads());
    googletag.defineOutOfPageSlot('/1088475/TT_HM_1x1', 'div-gpt-ad-1525337961480-6').addService(googletag.pubads());
    googletag.defineOutOfPageSlot('/1088475/TT_HM_Slider_1x1', 'div-gpt-ad-1525337961480-7').addService(googletag.pubads());
    googletag.defineSlot('/1088475/TT_HM_1x1_2', [1, 1], 'div-gpt-ad-1525337961480-8').addService(googletag.pubads());}

    googletag.defineSlot('/1088475/TT_HM_RHS_1_300x250', [300, 250], 'div-gpt-ad-1525337961480-3').addService(googletag.pubads());
    googletag.defineSlot('/1088475/TT_HM_RHS_2_300x250', [300, 250], 'div-gpt-ad-1525337961480-4').addService(googletag.pubads());
    
googletag.pubads().set("page_url", "page_url");
googletag.pubads().setTargeting("url", "page_url");
googletag.pubads().setTargeting("Homepage", "Homepage");
googletag.pubads().enableSingleRequest();
googletag.pubads().collapseEmptyDivs();
googletag.enableServices();
  });
</script>
<script src="https://rtbcdn.andbeyond.media/prod-global-549548.js" async></script>    <script type="text/javascript">
window._taboola = window._taboola || [];
_taboola.push({homepage:'auto'});
!function (e, f, u, i) {
if (!document.getElementById(i)){
e.async = 1;
e.src = u;
e.id = i;
f.parentNode.insertBefore(e, f);
}
}(document.createElement('script'),
document.getElementsByTagName('script')[0],
'//cdn.taboola.com/libtrc/telegraphindiacom/loader.js',
'tb_loader_script');
if(window.performance && typeof window.performance.mark == 'function')
{window.performance.mark('tbl_ic');}
</script>
</head>
<body class="bg-light">
<noscript>
    <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T9HRQZR"
            height="0" width="0" style="display:none;visibility:hidden"></iframe>
</noscript>
<div class="container mainContainer bg-white pd-bottom-3">
    <div class="ad_header text-center pt-md-3 mb-md-3">
        <div class="noto-regular fs-11 text-advertisement">Advertisement</div>
        <!-- /1088475/TT_HM_Header_728x90 -->
 <div id='div-gpt-ad-1525337961480-0'>
<script>
if(abpDevice==="desktop"){googletag.cmd.push(function() { googletag.display('div-gpt-ad-1525337961480-0'); });}
</script>
</div>    </div>
    <hr>
    <div>
        <nav class="pt-3 pb-1">
            <div class="row align-items-end">
                <div class="col">
                    <div class="noto-regular">
                        <span>Wednesday, 14 October 2020</span>
                        <span>&nbsp;&nbsp;<img src="/assets/images/blue_dot.png"></span>
                        <span>&nbsp; <a class="muted-link" target="_blank"
                                        href="https://epaper.telegraphindia.com/"
                                        title="https://epaper.telegraphindia.com/">E-paper</a></span>
                    </div>
                </div>
                <div class="col-5 text-center">
                                             <a href="/" title="logo"><img class="img-fluid" src="/assets/images/tt_online_logo.png?v=1"></a>
                    
                </div>
                <div class="col text-right d-flex flex-column align-items-end">
                    <ul class="list-group list-group-horizontal mb-0">
                        <!--                        <li class="d-inline-block mr-2 mt-1"><a class="noto-regular text-reset text-capitalize muted-link" href="#">Login</a></li>-->
                        <li class="d-inline-block">
                            <a class="uk-padding-remove muted-link"
                               href="https://www.facebook.com/thetelegraphindia" target="_blank">
                                <div class="the-icons span3 d-inline-block fs-20 icon_shift_2"
                                     title="https://www.facebook.com/thetelegraphindia">
                                    <i class="demo-icon icon-facebook">&#xf09a;</i>
                                </div>
                            </a>
                        </li>
                        <li class="d-inline-block"><a class="uk-padding-remove muted-link"
                                                      href="https://twitter.com/ttindia" target="_blank">
                            <span>
                                <img src="/assets/images/blue_dot.png">
                            </span>
                                <div class="the-icons span3 d-inline-block fs-20 icon_shift_3"
                                     title="https://twitter.com/ttindia">
                                    <i class="demo-icon icon-twitter">&#xf309;</i>
                                </div>
                            </a>
                        </li>
                        <li class="d-inline-block"><a class="uk-padding-remove muted-link"
                                                      href="https://www.instagram.com/telegraphonline/" target="_blank"><span>&nbsp;<img
                                        src="/assets/images/blue_dot.png"></span>
                                <div class="the-icons span3 d-inline-block fs-20 icon_shift_3"
                                     title="https://www.instagram.com/telegraphonline/"><i
                                        class="demo-icon icon-instagram">&#xf16d;</i></div>
                            </a></li>
                        <li class="d-inline-block"><a class="uk-padding-remove muted-link"
                                                      href="https://play.google.com/store/apps/details?id=com.thetelegraph" target="_blank"><span>&nbsp;<img
                                        src="/assets/images/blue_dot.png"></span>
                                <div class="the-icons span3 d-inline-block fs-20 icon_shift_1"
                                     title="https://play.google.com/store/apps/details?id=com.thetelegraph"><i
                                        class="demo-icon icon-android">&#xf17b;</i></div>
                            </a></li>
                        <li class="d-inline-block"><a class="uk-padding-remove muted-link"
                                                      href="https://apps.apple.com/us/app/the-telegraph/id1438396234" target="_blank"><span>&nbsp;<img
                                        src="/assets/images/blue_dot.png"></span>
                                <div class="the-icons span3 d-inline-block fs-20 icon_shift_2"
                                     title="https://apps.apple.com/us/app/the-telegraph/id1438396234"><i
                                        class="demo-icon icon-apple mr-0">&#xf179;</i></div>
                            </a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>

<div class="black_menu">
    <div class="container">
        <nav class="navbar p-0 navbar-expand-lg navbar-dark" uk-navbar>
            <div class="uk-navbar-left">
                <ul class="navbar-nav noto-regular fs-15">
                    <li class="nav-item">
                                    <a class="nav-link" href="/" target="_self" title="Home">Home</a>
                                </li><li class="nav-item">
                                    <a class="nav-link" href="/opinion" target="_self" title="Opinion">Opinion</a>
                                </li><li class="nav-item">
                                    <a class="nav-link" href="/india" target="_self" title="India">India</a>
                                </li><li class="nav-item dropdown dd-menu">
                                    <a class="nav-link dropdown-toggle" href="/states" id="navbarDropdown" role="button"
                                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-target="/states">
                                        States
                                    </a>
                                    <div class="dropdown-menu search-bg-blue remove-border px-2 pt-0 pb-0"
                                         aria-labelledby="navbarDropdown"><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/west-bengal" target="_self" title="West Bengal">West Bengal</a><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/north-east" target="_self" title="North East">North East</a><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/jharkhand" target="_self" title="">Jharkhand</a></div>
                                </li><li class="nav-item">
                                    <a class="nav-link" href="/west-bengal/calcutta" target="_self" title="Calcutta">Calcutta</a>
                                </li><li class="nav-item">
                                    <a class="nav-link" href="/world" target="_self" title="World">World</a>
                                </li><li class="nav-item">
                                    <a class="nav-link" href="/business" target="_self" title="">Business</a>
                                </li><li class="nav-item">
                                    <a class="nav-link" href="/science-tech" target="_self" title="Science & Tech ">Science & Tech </a>
                                </li><li class="nav-item">
                                    <a class="nav-link" href="/health" target="_self" title="Health">Health</a>
                                </li><li class="nav-item dropdown dd-menu">
                                    <a class="nav-link dropdown-toggle" href="/sports" id="navbarDropdown" role="button"
                                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-target="/sports">
                                        Sports
                                    </a>
                                    <div class="dropdown-menu search-bg-blue remove-border px-2 pt-0 pb-0"
                                         aria-labelledby="navbarDropdown"><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/sports/cricket" target="_self" title="Cricket">Cricket</a><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/sports/football" target="_self" title="Football">Football</a><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/sports/horse-racing/" target="_self" title="Horse Racing">Horse Racing</a></div>
                                </li><li class="nav-item">
                                    <a class="nav-link" href="/entertainment" target="_self" title="Entertainment">Entertainment</a>
                                </li><li class="nav-item dropdown dd-menu">
                                    <a class="nav-link dropdown-toggle" href="/culture" id="navbarDropdown" role="button"
                                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-target="/culture">
                                        Culture
                                    </a>
                                    <div class="dropdown-menu search-bg-blue remove-border px-2 pt-0 pb-0"
                                         aria-labelledby="navbarDropdown"><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/culture/heritage" target="_self" title="Heritage">Heritage</a><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/culture/travel" target="_self" title="Travel">Travel</a><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/culture/style" target="_self" title="Style">Style</a><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/culture/people" target="_self" title="People">People</a><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/culture/books" target="_self" title="Books">Books</a><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/culture/food" target="_self" title="Food">Food</a><a class="dropdown-item uk-text-white py-2 px-0 noto-regular fs-15" href="/culture/arts" target="_self" title="Arts">Arts</a></div>
                                </li>
                </ul>
            </div>
            <div class="site_search">
                <ul class="navbar-nav noto-regular fs-15 position-relative">
                    <li class="nav-item">
                        <div class="the-icons span3" title="Code: 0xe804">
                            <i data-prop="search" class="demo-icon icon-play uk-text-white search_icon">&#xe804;</i>
                        </div>
                    </li>
                </ul>
            </div>


            <div class="search_1 position-absolute">
                <div class="pd-top-10 px-3 search_1_form">
                    <form action="/search">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control remove-border search_inp noto-regular"
                                   placeholder="Enter Search Keywords" name="keyword">
                            <div class="input-group-append">
                                <button type="submit" style="" class="btn remove-border noto-regular fs-16"
                                        >Search
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </nav>


    </div>
</div>


    <div class="container mainContainer uk-background-default pt-3">
        <div class="row pb-3 uk-grid-divider">
        <div class="col-8">
            <div class="row uk-grid-divider h-100">
                <div class="col-9">

                    <a class="muted-link" href="india/coronavirus-outbreak-guidelines-for-treating-dual-infections/cid/1794700">
                        <div class="article section-border-bottom uk-height-limit-leadstory">
                            <div>
                                <span class="uk-text-red fs-20 noto-bold">
                                    'Many seasonal diseases can mimic Covid symptoms'                                </span>
                            </div>
                            <div>
                                <h2 class="fs-45 uk-text-1D noto-bold mb-2 ellipsis_data_3">
                                    Govt issues guidelines to tackle dual infections                                 </h2>
                            </div>
                            <div class="uk-text-69 uk-margin-small-top noto-regular">
                                <p>
                                    The Union health ministry on Tuesday released guidelines for treating coronavirus disease patients simultaneously infected with dengue, malaria or other infections, flagging the risk of seasonal epidemics and underscoring the medical challenges of treating double infections.

The health ministry has pointed out that several seasonal epidemic-prone diseases can mimic some symptoms of Covid-19 and diagnostic tests for &ldquo;co-infections&rdquo; with dengue, malaria, H1N1 influenza, scrub typhus or bacterial infections must be...                                </p>
                            </div>
                        </div>
                    </a>

                    <div class="row mt-3 uk-grid-divider">

                        <div class="col">
                            <a class="muted-link" href="india/security-deployed-to-protect-hathras-victims-family-witnesses-up-tells-sc/cid/1794727">
                                <div class="article">
                                    <div>
                                        <h2 class="fs-30 uk-text-1D noto-bold mb-2 ellipsis_data_2 firstWord">
                                            Hathras: 3-fold security                                        </h2>
                                    </div>
                                    <div class="uk-text-69 uk-margin-small-top noto-regular uk-height-limit-xxsmall">
                                        <p>
                                            The Uttar Pradesh government informed the Supreme Court on Wednesday that a three-fold protection mechanism has been put in place for security of the victim&#39;s family ...                                        </p>
                                    </div>
                                </div>
                            </a>
                        </div>


                        <div class="col">

                            <a class="muted-link" href="india/coronavirus-outbreak-covid-eats-into-workforce/cid/1794702">
                                <div class="article">
                                    <div>
                                        <h2 class="fs-30 uk-text-1D noto-bold mb-2 ellipsis_data_2 firstWord">
                                            
                                                Covid eats into workforce                                    
                                        </h2>
                                    </div>
                                    <div class="uk-text-69 uk-margin-small-top noto-regular uk-height-limit-xxsmall">
                                        <p>Nearly half of India&rsquo;s 1,09,000 coronavirus disease deaths have occurred among patients younger than 60 years, according to data released by the Union health minist...</p></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-3">

                    <a class="muted-link" href="west-bengal/soumitras-health-condition-continues-to-be-critical/cid/1794724" title="">
                        <div class="article section-border-bottom">
                            <div class="asp_16_9">
                                    <img
                                        src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602654002_43c5fd07-d476-4f8f-a4cc-847247a47c0a.jpg"
                                        alt="Soumitra Chatterjee with Parambrata Chatterjee during the shooting of Soumitra's biopic 'Abhijaan'"
                                        width="100%">
                            </div>
                            <div>
                                <h2 class="fs-20 uk-text-1D mt-2 noto-bold mb-2 ellipsis_data_2">
                                    Soumitra better, but critical                                 </h2>
                            </div>
                            <div class="uk-text-69 mb-0 uk-height-limit-small noto-regular">
                                <p>The health condition of veteran actor Soumitra Chatterjee continued to be &quot;critical&quot; on Wednesday, though his parameters are normal, doctors attending to the thespia...</p></div>
                        </div>
                    </a>
                    <a class="muted-link" href="west-bengal/durga-puja-organisers-to-feel-lotus-pocket-pinch/cid/1794690">
                        <div class="pt-3">
                            <div class="asp_16_9">
                                    <img
                                        src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602618466_14nbllotus_5col.jpg"
                                        width="100%"
                                        alt="A farmer collects lotuses from a pond in East Burdwan’s Kalna. ">
                                
                            </div>
                            <div>
                                <h2 class="fs-20 uk-text-1D noto-bold pd-top-5 ellipsis_data_3 firstWord">
                                    Puja: lotus pocket pinch                                </h2>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div class="col-4">
            <div class="section-border-bottom">
                <div class="position-relative asp_16_9">
                    <a href="calcutta/wanted-a-tree-trimming-stylist-for-city/cid/1794701">
                        <img
                            src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602621273_tree1.jpg"
                            width="100%"
                            alt="The foliage towards the side of the buildings have not been trimmed in the lane to the east of Deshapriya Park’s boundary. One of the trees is already tilted towards the road. Heavy and gusty winds can uproot the tree.">
                    </a>
                </div>
                <div>
                    <h2 class="fs-33 mb-2 noto-bold uk-text-1D ellipsis_data_2">
                        <a class="muted-link" href="calcutta/wanted-a-tree-trimming-stylist-for-city/cid/1794701">
                            Wanted: tree-trimming stylist for city                   </a>
                    </h2>
                </div>
            </div>
            <div class="text-center uk-background-muted uk-margin-small-top mt-3 pb-3">
                <div class="noto-regular fs-11 text-advertisement">Advertisement</div>
                <!-- /1088475/TT_HM_RHS_1_300x250 -->
<div id='div-gpt-ad-1525337961480-3'>
<script>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1525337961480-3'); });
</script>
</div>            </div>
        </div>
    </div>
    <hr class="hrSection">
    <div class="row pb-4 pt-3 uk-grid-divider">
        <div class="col">
            <div class="row uk-grid-divider h-100">
                <div class="col-7">

                    <a class="muted-link" href="india/tanishq-pulls-ad/cid/1794721"><div>
                        <div>
                            <h2 class="fs-33 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 firstWord">
                                Bigots force out Tanishq ads                            </h2>
                        </div>
                        <div class="uk-text-69 uk-margin-small-top noto-regular uk-height-limit-xxsmall h-auto">
                            <p>
                                Tanishq, India&rsquo;s biggest jewellery brand co-owned by the Tatas, withdrew an ad that showed an apparent Muslim family organising Hindu baby showe...                            </p>
                        </div>
                    </div></a>

                </div>
                <div class="col-5">
                    <a class="muted-link" href="india/unlock-5-governor-bhagat-singh-koshyaris-letter-to-uddhav-thackeray/cid/1794723">
                        <div>
                            <div class="position-relative asp_16_9">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602627196_14koshyari_3c.jpg"
                                        width="100%"
                                        alt="CPI(M) MP Brinda Karat speaks to the victim's family in Hathras, earlier this month">
                            </div>
                            <div>
                                <h2 class="fs-20 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                    Governor: have you turned secular?                                </h2>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="row uk-grid-divider h-100">
                <div class="col-7">

                    <a class="muted-link" href="india/mehbooba-mufti-freed-finally/cid/1794699"><div>
                        <div>
                            <h2 class="fs-33 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 firstWord">
                                
                                    Kashmir: Mehbooba freed, finally                            </h2>
                        </div>
                        <div class="uk-text-69 uk-margin-small-top noto-regular uk-height-limit-xxsmall h-auto">
                            <p>
                                <p>Mehbooba Mufti, one of the three former chief ministers jailed last year ahead of the scrapping of Article 370, was freed on Tuesday night after 14...                            </p>
                        </div>
                    </div></a>

                </div>

                <div class="col-5">

                    <a class="muted-link" href="west-bengal/rock-this-durga-puja-with-pantaloons-puja-collection/cid/1794524"><div>
                        <div class="position-relative asp_16_9">
                            <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602572548_thumbnail-image-with-sponsored-tag-1.jpg"
                                    width="100%"
                                    alt="Shop from Pantaloons' Puja collection">
                        </div>
                        <div>
                            <h2 class="fs-20 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                Shop from Pantaloons' Puja collection                            </h2>
                        </div>
                    </div></a>

                </div>
            </div>
        </div>
    </div>

    
    
    
    
<!--<a href="https://www.abpeducation.com/results/west-bengal-madhyamik-result">-->
<!--    <div class="bg_app_width">-->
<!--        <div class="app_dwnld_img float-left">-->
<!--            <img src="assets/images/mbanner.png" width="100%">-->
<!--        </div>-->
<!--        <div class="app_dwnld_head float-left">-->
<!--            <h2 class="noto-regular fs-40 uk-text-white mb-0">Download our latest App</h2>-->
<!--            <h2 class="noto-italic fs-20">to get update on the go... </h2>-->
<!--        </div>-->
<!--        <div class="app_dwnld_btn float-right">-->
<!--            <div class="noto-regular fs-24 uk-text-white text-center pb-1">You can</div>-->
<!--            <div>-->
<!--                <a href="" title="--><!--"><img src="assets/images/istore_black.png"></a>-->
<!--                <a href="" title="--><!--"><img src="assets/images/play_black.png"></a>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--</a>-->

<div class="row uk-grid-divider pb-4 pt-3">
                    <div class="col">

                    <a class="muted-link" href="india/heavy-downpour-kills-12-in-telengana/cid/1794726" ><div>
                        <div class="position-relative asp_16_9">
                            <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602657991_2020_10img14_oct_2020_pti14-10-2020_000020b.jpg" width="100%" alt="Floodwater gushes through a street following heavy rains, at Falaknuma, in Hyderabad on Wednesday.">
                        </div>
                        <div>
                            <h2 class="fs-20 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                Incessant rains kill 15 in Telengana                            </h2>
                        </div>
                    </div></a>


                </div>
                        <div class="col">

                    <a class="muted-link" href="india/hathras-rape-case-up-govt-cremation-excuse-falls-flat/cid/1794716" ><div>
                        <div class="position-relative asp_16_9">
                            <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602625293_2020_10img12_oct_2020_pti12-10-2020_000164b.jpg" width="100%" alt="Family members of the Dalit woman who was allegedly raped in Hathras leave the high court after a hearing in Lucknow on Monday">
                        </div>
                        <div>
                            <h2 class="fs-20 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                HC: hasty cremation a violation of rights                              </h2>
                        </div>
                    </div></a>


                </div>
                        <div class="col">

                    <a class="muted-link" href="west-bengal/private-hospitals-urge-bengal-govt-to-lower-gst-on-covid-test-kits/cid/1794729" ><div>
                        <div class="position-relative asp_16_9">
                            <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1601753825_1600624489_1599080305_03nblmamata_4col.jpg" width="100%" alt="Bengal CM Mamata Banerjee">
                        </div>
                        <div>
                            <h2 class="fs-20 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                Covid: hospital plea to cut GST                            </h2>
                        </div>
                    </div></a>


                </div>
                        <div class="col">

                    <a class="muted-link" href="west-bengal/locket-bista-bare-bengal-bjps-gorkhaland-paradox/cid/1794649" ><div>
                        <div class="position-relative asp_16_9">
                            <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602610311_4f9cbb76-94ba-4866-9dfb-ff5fca6227ba.jpg" width="100%" alt="BJP MP Locket Chatterjee">
                        </div>
                        <div>
                            <h2 class="fs-20 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                BJP MPs reveal party’s ‘Gorkhaland’ paradox                            </h2>
                        </div>
                    </div></a>


                </div>
        </div>

<hr class="hrSection">
<div class="row pb-4 pt-3 uk-grid-divider">
    <div class="col">
        <div class="row uk-grid-divider h-100">
            <div class="col-7">

                <a class="muted-link" href="world/coronavirus-outbreak-volunteers-illness-halts-johnson-johnsons-covid-19-vaccine-trials/cid/1794665"  ><div>
                    <div>
                        <h2 class="fs-33 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 firstWord">
                            Vaccine: volunteer’s illness halts trials                        </h2>
                    </div>
                    <div class="uk-text-69 uk-margin-small-top noto-regular uk-height-limit-xxsmall h-auto">
                        <p>
                        Johnson &amp; Johnson has paused the large late-stage clinical trial of its coronavirus vaccine because of an &ldquo;unexplained illness&rdquo; in one...                        </p>
                    </div>
                </div></a>
            </div>
            <div class="col-5">

                <a class="muted-link" href="world/tourist-gets-machu-picchu-all-to-himself/cid/1794660" >
                    <div>
                        <div class="position-relative asp_16_9">
                            <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602612779_14formachupicchu_3c.jpg" width="100%"
                                     alt="The ruins of Machu Picchu in Peru">
                        </div>
                        <div>
                            <h2 class="fs-20 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                Tourist gets Machu Picchu all to himself                            </h2>
                        </div>
                    </div>
                </a>

            </div>
        </div>
    </div>

    <div class="col">
        <div class="row uk-grid-divider h-100">
            <div class="col-7">

                <a class="muted-link" href="business/bengal-set-to-get-rs-613-crore-loan/cid/1794685"><div>
                    <div>
                        <h2 class="fs-33 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 firstWord">
                            Bengal set to get Rs 613 crore loan                        </h2>
                    </div>
                    <div class="uk-text-69 uk-margin-small-top noto-regular uk-height-limit-xxsmall h-auto">
                        <p>
                        Bengal is expected to get about Rs 613 crore from the Centre in 50-year interest free loans as part of the package to boost capital expenditure announ...                        </p>
                    </div>
                </div></a>

            </div>

            <div class="col-5">

                <a class="muted-link" href="sport/indian-premier-league-ipl-suryakumar-yadav-2-0-looks-at-new-dawn/cid/1794656" ><div>
                    <div class="position-relative asp_16_9">
                        <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602611552_14sposurya_4c.jpg" width="100%" alt="Suryakumar: Fresh guard">
                    </div>
                    <div>
                        <h2 class="fs-20 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                            Surya 2.0 looks at new dawn                        </h2>
                    </div>
                </div></a>

            </div>
        </div>
    </div>
</div>

<hr class="hrSection">
<div class="d-flex flex-column align-content-center section-border-bottom pb-4 pt-3 text-center">
    <div>
        <div>
            <div class="noto-regular fs-11 text-advertisement">Advertisement</div>
            <!-- /1088475/TT_HM_Middle_1_728x90 -->
<div id='div-gpt-ad-1525337961480-1'>
<script>
if(abpDevice==="desktop"){googletag.cmd.push(function() { googletag.display('div-gpt-ad-1525337961480-1'); });}
</script>
</div>        </div>
    </div>
</div>
<div class="row pb-4 pt-3 uk-grid-divider">
    <div class="col">
        <div class="row uk-grid-divider h-100">
            <div class="col-7">

                <a class="muted-link" href="culture/books/kairavi-bharat-ram-on-penning-a-book-on-depression-at-22/cid/1794655"  ><div>
                    <div>
                        <h2 class="fs-33 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 firstWord">

                               Penning a book on depression at 22                        </h2>
                    </div>
                    <div class="uk-text-69 uk-margin-small-top noto-regular uk-height-limit-xxsmall h-auto">
                        <p>
                        It was her own journey through depression that compelled Kairavi Bharat Ram to put into words the thoughts that one encounter on dark days, just to he...                        </p>
                    </div>
                </div>

            </div>
            <div class="col-5">
                <a class="muted-link" href="culture/style/i-feel-like-my-thought-process-is-very-much-like-a-picasso-i-dont-know-when-to-stop-edit-and-i-dont-think-any-of-my-work-is-good-payal-singhal/cid/1794737" ><div>
                    <div class="position-relative asp_16_9">
                        <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602683263_neha-dhupia-in-payal-singhal.jpg" width="100%" alt="Neha Dhupia with hubby Angad Bedi, in Payal Singhal">
                    </div>
                    <div>
                        <h2 class="fs-20 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                            Payal Singhal on arriving and evolving                        </h2>
                    </div>
                </div></a>
            </div>
        </div>
    </div>

    <div class="col">
        <div class="row uk-grid-divider h-100">
            <div class="col-7">

                <a class="muted-link" href="science-tech/the-four-new-iphones-have-something-for-everyone-5g-to-a-giant-leap-in-the-camera-department/cid/1794732"  ><div>
                    <div>
                        <h2 class="fs-33 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 firstWord">
                            Something for everyone                         </h2>
                    </div>
                    <div class="uk-text-69 uk-margin-small-top noto-regular uk-height-limit-xxsmall h-auto">
                        <p>
                        If last year the focus was primarily on the camera, this year Apple zeroes in on the guts of the iPhone. The four new iPhones can be divided into two ...                        </p>
                    </div>
                </div></a>

            </div>

            <div class="col-5">

                <a class="muted-link" href="entertainment/the-haunting-of-bly-manor-cranks-up-the-drama-and-dials-down-the-horror/cid/1794731" >
                    <div class="position-relative asp_16_9">
                        <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602680144_haunting-of-bly-manor-ending-1601913679.jpg" width="100%" alt="Painful and poignant: Amelie Bea Smith and Victoria Pedretti in The Haunting of Bly Manor, streaming on Netflix">
                    </div>
                    <div>
                        <h2 class="fs-20 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                            Bly Manor dials down the horror                        </h2>
                    </div>
                </a>

            </div>
        </div>
    </div>
</div>

<hr class="hrSection">

    
    
    
    <div class="row uk-grid pb-4 pt-3">
    <div class="col-5">
        <div>
            <img src="/assets/images/tips_layer.png" width="100%" height="18px">
        </div>


        <a class="muted-link" href="sport/ipl-brought-to-you-by-bundesliga-why-t20-crickets-biggest-extravaganza-owes-this-covid-ridden-seasons-staging-to-a-pioneering-german-football-league/cid/1794385" title=""><div>
        <div class="pd-top-10">
            <span class="uk-text-red fs-18 noto-bold">
                Big Story            </span>
        </div>
        <div>
            <h2 class="fs-33 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                IPL, brought to you by Bundesliga            </h2>
        </div>
        <div class="uk-text-69 uk-margin-small-top noto-regular uk-height-limit-xxsmall h-auto">
            Manuel Neuer is the perfect German idea. He is all encompassing &mdash; a goalkeeper, who doubles up as a sweeper back, makes saves which looks like only he can make, clockwork, a perfe...        </div>
    </div></a>



        <div class="big_story_hr">
            <img src="assets/images/tips_layer.png" width="100%" height="18px">
        </div>
    </div>
    <div class="col-7">
        <div class="position-relative asp_16_9">
            <a href="sport/ipl-brought-to-you-by-bundesliga-why-t20-crickets-biggest-extravaganza-owes-this-covid-ridden-seasons-staging-to-a-pioneering-german-football-league/cid/1794385" title="">
                <img class="img-fluid" src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602342129_1yellowwall.jpg" alt="With huge banners and the city's coat of arms, Dortmund fans covered the entire Yellow Wall with a spinetingling display ">
            </a>
        </div>
    </div>
</div>

<!-- <div class="bg_blue container text-center mainContainer">
    <span class="fs-30 text-white">Ad Banner</span>
</div> -->
<!--<a href="https://www.abpeducation.com/results/jac-12th-result" >-->
    <!--    <div class="bg_app_width">-->
    <!--        <div class="app_dwnld_img float-left">-->
<!--    <img src="assets/images/mbanner.png" width="100%" class="pb-4">-->
    <!--        </div>-->
    <!--        <div class="app_dwnld_head float-left">-->
    <!--            <h2 class="noto-regular fs-40 uk-text-white mb-0">Download our latest App</h2>-->
    <!--            <h2 class="noto-italic fs-20">to get update on the go... </h2>-->
    <!--        </div>-->
    <!--        <div class="app_dwnld_btn float-right">-->
    <!--            <div class="noto-regular fs-24 uk-text-white text-center pb-1">You can</div>-->
    <!--            <div>-->
    <!--                <a href="" title="--><!--"><img src="assets/images/istore_black.png"></a>-->
    <!--                <a href="" title="--><!--"><img src="assets/images/play_black.png"></a>-->
    <!--            </div>-->
    <!--        </div>-->
    <!--    </div>-->
<!--</a>-->

    </div>
    
    <div class="container mainContainer uk-background-default pt-0">
    
    
    
    
    <hr class="hrSection">

<div class="d-flex flex-column align-content-center section-border-bottom pb-4 pt-3 text-center">
    <div>
        <div>
            <div class="noto-regular fs-11 text-advertisement">Advertisement</div>
            <!-- /1088475/TT_HM_Middle_2_728x90 -->
<div id='div-gpt-ad-1525337961480-2'>
<script>
if(abpDevice==="desktop"){googletag.cmd.push(function() { googletag.display('div-gpt-ad-1525337961480-2'); });}
</script>
</div>        </div>
    </div>
</div>
    <div class="row pb-4">
        <div class="col-2">
            <div class="bg-light-grey position-relative uk-text-blue fs-40 wb">
                <div class="opinion_text rotated_text">
                    <a class="muted-link" href="/opinion">
                        <span class="fs-36 lato-bold">Opinion</span>
                    </a>
                </div>
                <div class="show_more_btn">
                    <a class="fs-16 noto-regular " href="/opinion">All stories</a>
                </div>
            </div>
        </div>
        <div class="col-10 uk-border-top-grey pt-3">
            <div class="row pb-3">
                <div class="col-4 text-center">
                    <a class="muted-link" href="opinion/the-agriculture-bills-and-food-security/cid/1794634"
                            >
                        <div>
                            <h2 class="fs-36 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                Dangerous hunger                            </h2>
                        </div>
                        <div class="pd-top-5">
                            <span class="uk-text-red noto-bold fs-12 text-center">
                                Prabhat Patnaik                            </span>
                        </div>
                        <div class="uk-text-69 mt-2 pl-3 pr-3 noto-regular">
                            <p>The three agriculture bills rushed through Parliament by the Narendra Modi government seek to bring peasant producers into direct contact with corporate buyers without any intervention by the State...                        </div>
                    </a>


                    <div class="mt-5">
                        <a href="opinion/the-agriculture-bills-and-food-security/cid/1794634"
                        >
                            <img src="">
                        </a>
                    </div>
                </div>
                <div class="col-8">
                    <div class="asp_16_9">
                        <a href="opinion/the-agriculture-bills-and-food-security/cid/1794634"
                        >
                            <img
                                src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602600435_14edittop.jpg"
                                class="img-fluid"
                                alt="RPF personnel distributing food to needy people at Sealdah Railway Station area during the nationwide Covid-19 lockdown.">
                        </a>
                    </div>
                </div>
            </div>

            <hr class="hrSection">

            <div class="row uk-grid-divider pt-3 pb-3">
                <div class="col-7">

                    <div class="row uk-grid-divider h-100 uk-height-limit-news">

                        <div class="col-6">
                            <div class="position-relative asp_16_9">
                                <a href="opinion/lessons-for-india-from-a-witch-hunt-in-hollywood/cid/1794579">
                                    <img
                                        src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602529899_13edittop.jpg"
                                        width="100%"
                                        alt="A still from Jay Roach’s film 'Trumbo' (2015).">
                                </a>
                            </div>
                            <div class="pd-top-5">
                                <a class="muted-link"
                                   href="opinion/lessons-for-india-from-a-witch-hunt-in-hollywood/cid/1794579">
                                    <span class="uk-text-red noto-bold">
                                        Ruchir Joshi                                    </span>
                                </a>
                            </div>
                            <div>
                                <h2 class="fs-20 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                    <a class="muted-link"
                                       href="opinion/lessons-for-india-from-a-witch-hunt-in-hollywood/cid/1794579">
                                        Distant echoes: A Hollywood witch-hunt                                    </a>
                                </h2>
                            </div>
                        </div>

                        <div class="col-6">
                            <div class="position-relative asp_16_9">
                                <a href="opinion/the-other-hero-walter-champion-in-jim-corbett-shadow/cid/1794459">
                                    <img
                                        src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602430755_12edittop.jpg"
                                        width="100%"
                                        alt="F.W. Champion.">
                                </a>
                            </div>
                            <div class="pd-top-5">
                                <a class="muted-link"
                                   href="opinion/the-other-hero-walter-champion-in-jim-corbett-shadow/cid/1794459">
                                    <span class="uk-text-red noto-bold">
                                        Mahesh Rangarajan                                    </span>
                                </a>
                            </div>
                            <div>
                                <h2 class="fs-20 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                    <a class="muted-link"
                                       href="opinion/the-other-hero-walter-champion-in-jim-corbett-shadow/cid/1794459">
                                        The other hero: In Jim Corbett’s shadow                                    </a>
                                </h2>
                            </div>
                        </div>

                    </div>

                </div>
                <div class="col-5">
                    <div class="text-center uk-background-muted pt-3 pb-3">
                        <div class="noto-regular fs-11 text-advertisement">Advertisement</div>
                        <!-- /1088475/TT_HM_RHS_2_300x250 -->
<div id='div-gpt-ad-1525337961480-4'>
<script>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1525337961480-4'); });
</script>
</div>

                    </div>
                </div>
            </div>

            <hr class="hrSection">


            <div class="row uk-grid-divider uk-height-limit-news pt-3">
                                        <div class="col-3">
                            <div class="position-relative asp_16_9">
                                <a href="opinion/covid-19-pandemic-a-vector-called-privilege/cid/1794637">
                                    <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602601547_shutterstock_1729476193.jpg"
                                         width="100%"
                                         alt="The contrast with the migration of the working class is a good way of suggesting what the privileged urban upper classes and castes do not have to confront.">
                                </a>
                            </div>
                            <div class="pd-top-5">
                                <a class="muted-link" href="opinion/covid-19-pandemic-a-vector-called-privilege/cid/1794637"><span
                                        class="uk-text-red noto-bold fs-12">Sohini Chattopadhyay</span></a>
                            </div>
                            <div>
                                <h2 class="fs-18 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                    <a class="muted-link" href="opinion/covid-19-pandemic-a-vector-called-privilege/cid/1794637">
                                        A vector called privilege                                    </a>
                                </h2>
                            </div>
                        </div>
                                                <div class="col-3">
                            <div class="position-relative asp_16_9">
                                <a href="opinion/quite-uncertain-us-elections-2020/cid/1794589">
                                    <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602530619_1601488514_debate-biden-moments.jpg"
                                         width="100%"
                                         alt="Donald Trump and Joe Biden during their first presidential debate.">
                                </a>
                            </div>
                            <div class="pd-top-5">
                                <a class="muted-link" href="opinion/quite-uncertain-us-elections-2020/cid/1794589"><span
                                        class="uk-text-red noto-bold fs-12">Sudipta Bhattacharjee</span></a>
                            </div>
                            <div>
                                <h2 class="fs-18 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                    <a class="muted-link" href="opinion/quite-uncertain-us-elections-2020/cid/1794589">
                                        Quite uncertain: US Elections 2020                                    </a>
                                </h2>
                            </div>
                        </div>
                                                <div class="col-3">
                            <div class="position-relative asp_16_9">
                                <a href="opinion/high-hopes-indian-economy-to-contract/cid/1794640">
                                    <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602606733_shutterstock_1788639809.jpg"
                                         width="100%"
                                         alt="The big belief is that GDP growth will break out of the contraction mode and turn positive in the fourth quarter.">
                                </a>
                            </div>
                            <div class="pd-top-5">
                                <a class="muted-link" href="opinion/high-hopes-indian-economy-to-contract/cid/1794640"><span
                                        class="uk-text-red noto-bold fs-12">The Editorial Board</span></a>
                            </div>
                            <div>
                                <h2 class="fs-18 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                    <a class="muted-link" href="opinion/high-hopes-indian-economy-to-contract/cid/1794640">
                                        High hopes for spiraling economy                                    </a>
                                </h2>
                            </div>
                        </div>
                                                <div class="col-3">
                            <div class="position-relative asp_16_9">
                                <a href="opinion/stomach-this-conflict-and-food-security/cid/1794641">
                                    <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602607150_shutterstock_514881340.jpg"
                                         width="100%"
                                         alt="India retains the dubious distinction of being the country with the largest population of food-insecure people — the pandemic has exacerbated unequal access to food.">
                                </a>
                            </div>
                            <div class="pd-top-5">
                                <a class="muted-link" href="opinion/stomach-this-conflict-and-food-security/cid/1794641"><span
                                        class="uk-text-red noto-bold fs-12">The Editorial Board</span></a>
                            </div>
                            <div>
                                <h2 class="fs-18 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                    <a class="muted-link" href="opinion/stomach-this-conflict-and-food-security/cid/1794641">
                                        Stomach this: Conflict and food security                                    </a>
                                </h2>
                            </div>
                        </div>
                                    </div>
        </div>
    </div>

    
    
    
        <hr class="hrSection">
    <div class="row pb-4">
        <div class="col-2">
            <div class="bg-light-grey position-relative uk-text-blue wb fs-40 min-height-mid">
                <div class="rotated_text wb_text">
                    <a class="muted-link" href="/west-bengal" title="">
                        <span class="fs-36 lato-bold">West Bengal</span>
                    </a>
                </div>
                <div class="show_more_btn">
                    <a class="fs-16 noto-regular " href="/west-bengal">All stories</a>
                </div>
            </div>
        </div>
        <div class="col-10 uk-section">
            <div class="row pt-3 uk-grid-divider uk-height-limit-news-large">
                                    <div class="col-3">
                        <div class="asp_16_9">
                            <a href="west-bengal/locket-bista-bare-bengal-bjps-gorkhaland-paradox/cid/1794649" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602610311_4f9cbb76-94ba-4866-9dfb-ff5fca6227ba.jpg" width="100%"
                                     alt="BJP MP Locket Chatterjee">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="west-bengal/locket-bista-bare-bengal-bjps-gorkhaland-paradox/cid/1794649" >
                                    BJP MPs reveal party’s ‘Gorkhaland’ paradox                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="west-bengal/trinamul-poll-focus-on-north-bengals-six/cid/1794644" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602608291_14nblabhishek_4col.jpg" width="100%"
                                     alt="Abhishek Banerjee ">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="west-bengal/trinamul-poll-focus-on-north-bengals-six/cid/1794644" >
                                    Trinamul poll focus on north Bengal’s six                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="west-bengal/covid-mamata-banerjee-urges-caution-as-new-cases-hit-a-high/cid/1794686" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602617710_14nblcm_2.jpg" width="100%"
                                     alt="Mamata Banerjee">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="west-bengal/covid-mamata-banerjee-urges-caution-as-new-cases-hit-a-high/cid/1794686" >
                                    Covid: Mamata renews caution plea                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="west-bengal/malda-eyes-random-covid-tests-in-markets/cid/1794653" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602610942_shutterstock_1735803713.gif" width="100%"
                                     alt="District health sources said that small teams of three to four persons would be formed to conduct random tests at marketplaces so as to increase the number of tests conducted per day.">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="west-bengal/malda-eyes-random-covid-tests-in-markets/cid/1794653" >
                                    Malda eyes random Covid tests in markets                                </a>
                            </h2>
                        </div>
                    </div>
                                </div>
        </div>
    </div>

    </div>
    
    <div class="container mainContainer uk-background-default pt-0">
        <hr class="hrSection">
    <div class="row pb-4">
        <div class="col-2">
            <div class="bg-light-grey position-relative uk-text-blue fs-40 wb min-height-mid">
                <div class="rotated_text calc_text">
                    <a class="muted-link" href="/west-bengal/calcutta" title="">
                        <span class="fs-36 lato-bold">Calcutta</span>
                    </a>
                </div>
                <div class="show_more_btn">
                    <a class="fs-16 noto-regular" href="/west-bengal/calcutta">All stories</a>
                </div>
            </div>
        </div>
        <div class="col-10 uk-border-top-grey uk-section">
            <div class="row uk-grid-divider pt-3 uk-height-limit-news-large">
                                    <div class="col-3">
                        <div class="asp_16_9">
                            <a href="calcutta/hc-asks-private-schools-to-cut-fees/cid/1794698" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Sep/1600464729_calcutta-high-court.jpg" width="100%" alt="Calcutta High Court">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="calcutta/hc-asks-private-schools-to-cut-fees/cid/1794698" >
                                    HC: order to cut fees                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="calcutta/courts-stand-on-minority-run-schools/cid/1794717" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602628261_calcutta-high-court.jpg" width="100%" alt="Calcutta High Court">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="calcutta/courts-stand-on-minority-run-schools/cid/1794717" >
                                    Court’s stand on minority-run schools                                 </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="calcutta/kolkata-metro-not-to-run-puja-all-night-trains/cid/1794715" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Sep/1601400161_1600030164_14metsks-metro-tollygunge13_4col.jpg" width="100%" alt="In 2019, Metro carried 61.6 lakh passengers between Tritiya and Dashami">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="calcutta/kolkata-metro-not-to-run-puja-all-night-trains/cid/1794715" >
                                    Metro not to run Puja all-night trains                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="calcutta/pandal-inspection-starts-airflow-tops-checklist/cid/1794711" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602623942_14metbdkumartolipark2_6c.jpg" width="100%" alt="Police inspect Kumartuli Park Durga Puja pandal  on Tuesday. ">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="calcutta/pandal-inspection-starts-airflow-tops-checklist/cid/1794711" >
                                    Pandal inspection starts                                 </a>
                            </h2>
                        </div>
                    </div>
                                </div>
        </div>
    </div>

    
    
    
        <hr class="hrSection">
    <div class="row pb-4">
         <div class="col-2">
            <div class="bg-light-grey position-relative uk-text-blue fs-40 wb min-height-mid">
                <div class="rotated_text j_text">
                    <a class="muted-link" href="/jharkhand" title="">
                        <span class="fs-36 lato-bold">Jharkhand</span>
                    </a>
                </div>
                <div class="show_more_btn">
                    <a class="fs-16 noto-regular " href="/jharkhand">All stories</a>
                </div>
            </div>
        </div>
        <div class="col-10 uk-border-top-grey uk-section">
           <div class="row uk-grid-divider pt-3 uk-height-limit-news-large">
                                    <div class="col-3">
                        <div class="asp_16_9">
                            <a href="jharkhand/house-of-senior-ips-officer-robbed-in-dhanbad/cid/1794672" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602615609_13dhan-robbery-at-senior-ips-officer-house-8.jpg" width="100%" alt="Robbery at Senior IPS officer's house in Dhanbad.">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="jharkhand/house-of-senior-ips-officer-robbed-in-dhanbad/cid/1794672" >
                                    Senior IPS officer’s house robbed                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="jharkhand/body-of-tribal-girl-allegedly-gangraped-and-murdered-exhumed-for-probe/cid/1794646" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Jul/1595009819_generaldeath.jpg" width="100%" alt="The incident occurred in Lakhipur village under Pathna block, which falls under chief minister Hemant Soren’s assembly constituency in Barhait. (Representational image)">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="jharkhand/body-of-tribal-girl-allegedly-gangraped-and-murdered-exhumed-for-probe/cid/1794646" >
                                    Tribal girl's body exhumed                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="jharkhand/louise-marandi-seeks-divine-intervention-before-filing-nomination/cid/1794635" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602601660_img-20201013-wa0007.jpg" width="100%" alt="BJP candidate Louise Marandi files her nomination for the November 3 byelection in Dumka on Tuesday. ">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="jharkhand/louise-marandi-seeks-divine-intervention-before-filing-nomination/cid/1794635" >
                                    For Louise, prayers before nomination                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="jharkhand/woman-arrested-for-possession-of-fake-currency-notes-at-chaibasa/cid/1794633" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602599978_img-20201013-wa0013.jpg" width="100%" alt="Malaya Hembram in Chaibasa Muffasil thana.">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="jharkhand/woman-arrested-for-possession-of-fake-currency-notes-at-chaibasa/cid/1794633" >
                                    Woman with fake currency arrested                                </a>
                            </h2>
                        </div>
                    </div>
                                </div>
        </div>
    </div>

    </div>
    
    <div class="container mainContainer uk-background-default pt-0">
        <hr class="hrSection">
    <div class="row pb-4">
         <div class="col-2">
            <div class="bg-light-grey position-relative uk-text-blue fs-40 wb min-height-mid">
                <div class="rotated_text j_text">
                    <a class="muted-link" href="/north-east">
                        <span class="fs-36 lato-bold">North East</span>
                    </a>
                </div>
                <div class="show_more_btn">
                    <a class="fs-16 noto-regular " href="/north-east">All stories</a>
                </div>
            </div>
        </div>
        <div class="col-10 uk-border-top-grey uk-section">
           <div class="row uk-grid-divider pt-3 uk-height-limit-news-large">
                                    <div class="col-3">
                        <div class="asp_16_9">
                            <a href="north-east/durga-puja-2020-assam-issues-guidelines/cid/1794669" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Aug/1596477350_04himanta_3c.jpg" width="100%" alt="Himanta Biswa Sarma said if appropriate behaviour is maintained for a few more days then he can “confirm that flattening of the curve has begun in Assam”">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="north-east/durga-puja-2020-assam-issues-guidelines/cid/1794669" >
                                    Assam issues puja guidelines                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="north-east/naga-groups-to-aid-talks/cid/1794560" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602524778_shutterstock_733512355.jpg" width="100%" alt="The NSCN (IM) had last week said it has made its stand  “very loud and clear” during the ongoing talks that there “is no way forward” without finalising on Naga flag and constitution">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="north-east/naga-groups-to-aid-talks/cid/1794560" >
                                    Aid: Naga groups agree on talks                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="north-east/25-convicted-in-assam-doctor-lynching-case/cid/1794554" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Jul/1593736540_death.jpg" width="100%" alt="The quantum of punishment would be pronounced on October 19 but the minimum punishment under the sections could be life term">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="north-east/25-convicted-in-assam-doctor-lynching-case/cid/1794554" >
                                    25 convicted in Assam doctor lynching case                                 </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="north-east/coronavirus-outbreak-concern-over-assam-govts-transport-full-occupancy-nod/cid/1794558" >
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602524089_shutterstock_1721760337.jpg" width="100%" alt="The decision not only triggered concern but also seems to be going against its own campaign to maintain social distancing norms amid the pandemic">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="north-east/coronavirus-outbreak-concern-over-assam-govts-transport-full-occupancy-nod/cid/1794558" >
                                    Ache over transport full-occupancy nod                                  </a>
                            </h2>
                        </div>
                    </div>
                                </div>
        </div>
    </div>

    
    
    
        <hr class="hrSection">
    <div class="row pt-0 pb-4">
        <div class="col-2">
            <div class="bg-light-grey position-relative uk-text-blue fs-40 wb">
                <div class="cult_text rotated_text">
                    <a class="muted-link" href="/culture" title="">
                        <span class="fs-36 lato-bold">Features</span>
                    </a>
                </div>
                <div class="show_more_btn">
                    <a class="fs-16 noto-regular " href="/culture">All stories</a>
                </div>
            </div>
        </div>
        <div class="col-10 uk-border-top-grey">
            <div class="row uk-grid-divider pt-3 pb-4">
                        <div class="col-6">
                            <div class="position-relative asp_16_9">
                                <a href="arts/don-mclean-on-50-years-of-american-pie/cid/1794461" >
                                    <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602431372_don-m-main.png" width="100%"
                                         alt="Don Mclean is 75 years young now, firm in the belief that everything has to “come back to where it started”. ">
                                </a>
                            </div>
                            <div>
                                <h2 class="fs-33 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 pd-top-5">
                                    <a class="muted-link" href="arts/don-mclean-on-50-years-of-american-pie/cid/1794461" >
                                         Don Mclean talks 50 years of American Pie and more                                    </a>
                                </h2>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="position-relative asp_16_9">
                                <a href="west-bengal/amidst-persisting-apprehensions-over-nrc-bengali-dalit-writer-jatin-bala-on-a-refugee-childhood/cid/1794386" >
                                     <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602343234_img_20190925_144135.jpg" width="100%"
                                         alt="Jatin Bala">
                                </a>
                            </div>
                            <div>
                                <h2 class="fs-33 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 pd-top-5">
                                    <a class="muted-link" href="west-bengal/amidst-persisting-apprehensions-over-nrc-bengali-dalit-writer-jatin-bala-on-a-refugee-childhood/cid/1794386" >
                                         ‘Once again camps will come up...’                                    </a>
                                </h2>
                            </div>
                        </div>
            </div>
            <hr class="hrSection">
            <div class="row uk-grid-divider pt-3 uk-height-limit-news">
                                    <div class="col-3">
                        <div class="position-relative asp_16_9">
                            <a href="culture/dude-listen-to-this-food-prude-off-with-hilsa-brinjal-bigotry-but-do-please-banish-the-radish/cid/1794388" >
                               <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602344721_settings1.jpg" width="100%" alt="LOVE ALL: Nothing better than the good old bhaja">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-18 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 pd-top-5">
                                <a class="muted-link" href="culture/dude-listen-to-this-food-prude-off-with-hilsa-brinjal-bigotry-but-do-please-banish-the-radish/cid/1794388" >
                                   Dude, listen to this food prude                               </a>
                            </h2>
                        </div>
                    </div>
                                     <div class="col-3">
                        <div class="position-relative asp_16_9">
                            <a href="entertainment/rip-eddie-van-halen-farewell-king-edward-who-changed-the-guitar/cid/1794093" >
                               <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602048055_vanhalen.jpg" width="100%" alt="Video grab of Eddie Van Halen tapping out "Eruption" on "Live Without a Net", recorded in concert on August 27, 1986 in New Haven, Connecticut.    ">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-18 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 pd-top-5">
                                <a class="muted-link" href="entertainment/rip-eddie-van-halen-farewell-king-edward-who-changed-the-guitar/cid/1794093" >
                                   King Edward who changed the guitar                               </a>
                            </h2>
                        </div>
                    </div>
                                     <div class="col-3">
                        <div class="position-relative asp_16_9">
                            <a href="culture/gardening-have-a-green-durga-puja-with-these-tips/cid/1793935" >
                               <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1601907376_holding-image.jpg" width="100%" alt="It is beautiful to see how nature changes with the season and teaching us how to change and adapt">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-18 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 pd-top-5">
                                <a class="muted-link" href="culture/gardening-have-a-green-durga-puja-with-these-tips/cid/1793935" >
                                   Have a green Puja!                               </a>
                            </h2>
                        </div>
                    </div>
                                     <div class="col-3">
                        <div class="position-relative asp_16_9">
                            <a href="culture/heritage/a-portraiture-of-the-recently-departed-kaukab-quder-a-man-who-lived-his-heritage-loved-it-and-never-tried-to-ride-it/cid/1793776" >
                               <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1601733940_0410qader-combine-for-web.jpg" width="100%" alt="ROYAL ALBUM: (Clockwise from bottom left) Kaukab Quder with wife Badrunnissa, a daughter of Khandan-e-Ijtihad; Quder (third from left) with the inter-college billiard championships trophy; at his Calcutta home, the House of Awadh, captured by granddaughter Asna Khan three years ago; with daughter Manzilat when she was a young snooker player; Quder (left) at AMU’s Strachey Hall">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-18 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 pd-top-5">
                                <a class="muted-link" href="culture/heritage/a-portraiture-of-the-recently-departed-kaukab-quder-a-man-who-lived-his-heritage-loved-it-and-never-tried-to-ride-it/cid/1793776" >
                                   Jab chhor chale... Nakhlau nagari...                               </a>
                            </h2>
                        </div>
                    </div>
                             </div>
        </div>
    </div>

            <div class="container pt-3 mainContainer pb-3"><div id="taboola-mid-home-thumbnails-2"></div>
<script type="text/javascript">
window._taboola = window._taboola || [];
_taboola.push({
mode: 'thumbnails-m',
container: 'taboola-mid-home-thumbnails-2',
placement: 'Mid Home Thumbnails 2',
target_type: 'mix'
});
</script>
</div>        
    
    
        <hr class="hrSection">
    <div class="row pb-4">
        <div class="col-2">
            <div class="bg-light-grey position-relative uk-text-blue fs-40 wb">
                <div class="world_text rotated_text">
                    <a class="muted-link" href="/world">
                        <span class="fs-36 lato-bold">World</span>
                    </a>
                </div>
                <div class="show_more_btn">
                    <a class="fs-16 noto-regular " href="/world">All stories</a>
                </div>
            </div>
        </div>
        <div class="col-10 uk-border-top-grey">
            <div class="row uk-grid-divider pt-3 uk-height-limit-news">
                                    <div class="col-3">
                        <div class="asp_16_9">
                            <a href="world/us-presidential-elections-2020-donald-trump-offers-big-fat-kiss-to-audience/cid/1794659">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602612376_1597354882_14trump-4c.jpg" width="100%"
                                     alt="Donald Trump">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="world/us-presidential-elections-2020-donald-trump-offers-big-fat-kiss-to-audience/cid/1794659">
                                    Trump's ‘big fat kiss’ to audience                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="world/coronavirus-outbreak-volunteers-illness-halts-johnson-johnsons-covid-19-vaccine-trials/cid/1794665">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602613904_1600113262_shutterstock_1736168798.jpg" width="100%"
                                     alt="Johnson & Johnson, which just began the so-called Phase 3 trial of its vaccine last month, was behind several of its competitors in the vaccine race, but its vaccine had some advantages over others. ">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="world/coronavirus-outbreak-volunteers-illness-halts-johnson-johnsons-covid-19-vaccine-trials/cid/1794665">
                                    Vaccine: volunteer’s illness halts trials                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="world/governor-of-virginia-second-target-of-plot/cid/1794671">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602615192_1200px-governor_ralph_northam_gives_inaugural_address_39348612584_cropped.jpg" width="100%"
                                     alt="Ralph Northam">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="world/governor-of-virginia-second-target-of-plot/cid/1794671">
                                    Second governor target of plot                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="asp_16_9">
                            <a href="world/polands-tallboy-bomb-explodes/cid/1794667">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602628314_royal_air_force_bomber_command_1942-1945.jpg" width="100%"
                                     alt="RAF ground crew handling a Tallboy bomb">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-21 pd-top-5 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="world/polands-tallboy-bomb-explodes/cid/1794667">
                                    Poland’s Tallboy bomb explodes                                </a>
                            </h2>
                        </div>
                    </div>
                                </div>
        </div>
    </div>

    </div>
    
    <div class="container mainContainer uk-background-default pt-0">
    <hr class="hrSection">
<div class="row mb-4">
     <div class="col-2">
        <div class="bg-light-grey position-relative uk-text-blue fs-40 wb">
            <div class="india_text rotated_text">
                <a class="muted-link" href="/">
                    <span class="fs-36 lato-bold">India</span>
                </a>
            </div>
            <div class="show_more_btn">
            <a class="fs-16 noto-regular " href="/">All stories</a>
            </div>
        </div>
    </div>
    <div class="col-10 uk-border-top-grey">
        <div class="row uk-grid-divider pt-3 pb-4">
            <div class="col-6">
                <div class="position-relative asp_16_9">
                    <a href="jharkhand/elgaar-parishad-case-protests-intensify-against-swamy-arrest-in-jharkhand/cid/1794661" >
                        <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602612606_14protest_5.jpg" width="100%" alt="Jharkhand Christian Youth Association members burn an effigy to protest against the arrest of Stan Swamy at Albert Ekka Chowk  in Ranchi on Tuesday">
                    </a>
                </div>
                <div class="bg">
                    <h2 class="uk-text-1D fs-36 text-center noto-bold uk-margin-remove uk-padding-40 m-0">
                        <a class="muted-link ellipsis_data_2" href="jharkhand/elgaar-parishad-case-protests-intensify-against-swamy-arrest-in-jharkhand/cid/1794661">
                            Protests intensify against Swamy arrest                        </a>
                    </h2>
                </div>
            </div>
            <div class="col-6 art_height">
                                    <div class="uk-panel">
                        <a href="india/supreme-court-of-india-glare-on-reporting/cid/1794708" >
                            <div class="position-relative clearfix">
                                <a href="india/supreme-court-of-india-glare-on-reporting/cid/1794708" >
                                    <img class="float-left mr-3" src="https://assets.telegraphindia.com/telegraph/2020/Sep/1600638405_1594573005_supreme-court.jpg"
                                         width="166" height="94" alt="Supreme Court of India">
                                </a>
                                <div>
                                    <h2 class="fs-16 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                        <a class="muted-link" href="india/supreme-court-of-india-glare-on-reporting/cid/1794708" >
                                            SC glare on reporting                                         </a>
                                    </h2>
                                </div>
                            </div>
                        </a>
                    </div>
                                        <div class="uk-panel">
                        <a href="india/coronavirus-outbreak-covid-eats-into-workforce/cid/1794702" >
                            <div class="position-relative clearfix">
                                <a href="india/coronavirus-outbreak-covid-eats-into-workforce/cid/1794702" >
                                    <img class="float-left mr-3" src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602621707_14cinemahall_5c.jpg"
                                         width="166" height="94" alt="A worker sanitises a cinema hall in New Delhi on Tuesday, as multiplexes prepare to reopen from October 15">
                                </a>
                                <div>
                                    <h2 class="fs-16 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                        <a class="muted-link" href="india/coronavirus-outbreak-covid-eats-into-workforce/cid/1794702" >
                                            Covid eats into workforce                                         </a>
                                    </h2>
                                </div>
                            </div>
                        </a>
                    </div>
                                        <div class="uk-panel">
                        <a href="india/hathras-rape-case-cbi-takes-kin-signature/cid/1794696" >
                            <div class="position-relative clearfix">
                                <a href="india/hathras-rape-case-cbi-takes-kin-signature/cid/1794696" >
                                    <img class="float-left mr-3" src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602625233_2020_10img13_oct_2020_pti13-10-2020_000191b.jpg"
                                         width="166" height="94" alt="CBI officials arrive to investigate the case of the 19-year-old Dalit woman who died after being allegedly gang-raped in Hathras on Tuesday">
                                </a>
                                <div>
                                    <h2 class="fs-16 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                        <a class="muted-link" href="india/hathras-rape-case-cbi-takes-kin-signature/cid/1794696" >
                                            CBI takes Hathras kin 'signature'                                         </a>
                                    </h2>
                                </div>
                            </div>
                        </a>
                    </div>
                                        <div class="uk-panel">
                        <a href="india/bihar-assembly-elections-2020-congress-blocks-list/cid/1794666" >
                            <div class="position-relative clearfix">
                                <a href="india/bihar-assembly-elections-2020-congress-blocks-list/cid/1794666" >
                                    <img class="float-left mr-3" src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602614467_1598384449_madan-mohan-jha.jpg"
                                         width="166" height="94" alt="Bihar Pradesh Congress Committee president Madan Mohan Jha with Rahul Gandhi">
                                </a>
                                <div>
                                    <h2 class="fs-16 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                        <a class="muted-link" href="india/bihar-assembly-elections-2020-congress-blocks-list/cid/1794666" >
                                            Congress blocks Bihar list                                        </a>
                                    </h2>
                                </div>
                            </div>
                        </a>
                    </div>
                    
            </div>
        </div>
          <hr class="hrSection">
        <div class="row uk-grid-divider pt-3 uk-height-limit-news">
                            <div class="col-3">
                    <div class="position-relative asp_16_9">
                        <a href="india/cry-for-admissions-to-sikkim-colleges/cid/1794674" >
                           <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602615685_14nblevent1_4.jpg" width="100%" alt="Students attend an event at Nar Bahadur Bhandari Degree College  at Tadong near Gangtok. ">
                        </a>
                    </div>
                    <div>
                        <h2 class="fs-18 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 pd-top-5">
                            <a class="muted-link" href="india/cry-for-admissions-to-sikkim-colleges/cid/1794674" >
                               Cry for admissions to Sikkim colleges                           </a>
                        </h2>
                    </div>
                </div>
                             <div class="col-3">
                    <div class="position-relative asp_16_9">
                        <a href="india/coronavirus-outbreak-guidelines-for-treating-dual-infections/cid/1794700" >
                           <img src="https://assets.telegraphindia.com/telegraph/2020/Sep/1600705441_21jamcovid-2-jpg.jpg" width="100%" alt="The health ministry has pointed out that several seasonal epidemic-prone diseases can mimic some symptoms of Covid-19">
                        </a>
                    </div>
                    <div>
                        <h2 class="fs-18 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 pd-top-5">
                            <a class="muted-link" href="india/coronavirus-outbreak-guidelines-for-treating-dual-infections/cid/1794700" >
                               Govt issues guidelines to tackle dual infections                            </a>
                        </h2>
                    </div>
                </div>
                             <div class="col-3">
                    <div class="position-relative asp_16_9">
                        <a href="india/coronavirus-outbreak-iit-chance-for-students-who-missed-test/cid/1794706" >
                           <img src="https://assets.telegraphindia.com/telegraph/2020/Sep/1601317374_29metexam15_6c.jpg" width="100%" alt="This year, 1.6 lakh candidates had registered for Joint Entrance Examination Advanced, while 1.51 lakh appeared for the exam">
                        </a>
                    </div>
                    <div>
                        <h2 class="fs-18 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 pd-top-5">
                            <a class="muted-link" href="india/coronavirus-outbreak-iit-chance-for-students-who-missed-test/cid/1794706" >
                               IIT chance for students who missed  test                           </a>
                        </h2>
                    </div>
                </div>
                             <div class="col-3">
                    <div class="position-relative asp_16_9">
                        <a href="india/acid-attack-on-3-dalit-sisters-in-uttar-pradesh/cid/1794694" >
                           <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602619485_5533c961-5148-4be1-ac74-76f35644e19c.jpg" width="100%" alt="Police said the sisters, aged 19, 12 and eight, were sleeping at home in Paska village when someone threw acid at them through the open door around 1am">
                        </a>
                    </div>
                    <div>
                        <h2 class="fs-18 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2 pd-top-5">
                            <a class="muted-link" href="india/acid-attack-on-3-dalit-sisters-in-uttar-pradesh/cid/1794694" >
                               Acid attack on 3 Dalit sisters in UP                           </a>
                        </h2>
                    </div>
                </div>
                     </div>
    </div>

</div>

    
    
    
        <hr class="hrSection">
    <div class="row pb-4">
        <div class="col-2">
            <div class="bg-light-grey position-relative uk-text-blue fs-40 wb">
                <div class="rotated_text bus_text">
                    <a class="muted-link" href="/business">
                        <span class="fs-36 lato-bold">Business</span>
                    </a>
                </div>
                <div class="show_more_btn">
                    <a class="fs-16 noto-regular " href="/business">All stories</a>
                </div>
            </div>
        </div>
        <div class="col-10 uk-section">
            <div class="row uk-grid-divider pb-4 pt-3">
                <div class="col-10">
                    <div class="row">
                        <div class="col-6">

                            <a class="muted-link" href="business/indian-economy-imf-projects-10-3-contraction/cid/1794675">
                                <div>
                                    <h2 class="fs-27 pd-top-5 noto-bold uk-text-1D mb-2 ellipsis_data_2">
                                       Indian economy: IMF projects 10.3% contraction                                        
                                    </h2>
                                    <div class="uk-text-69 noto-regular">
                                        The Indian economy, severely hit by the coronavirus pandemic, is projected to contract by a massive 10.3 per cent this year, the International Monetary Fund said on Tuesday.

However, India is likely ...                                    </div>
                                </div>
                            </a>

                        </div>
                        <div class="col-6">
                            <div class="position-relative asp_16_9">
                                <a href="business/indian-economy-imf-projects-10-3-contraction/cid/1794675">
                                    <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602616242_ec.jpg"
                                        width="100%" alt="Released ahead of the annual meetings of the IMF and the World Bank, the report said global growth would contract 4.4 per cent this year and bounce back to 5.2 per cent in 2021. ">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-2">
                    <div class="article">
                        <div class="asp_16_9">
                            <a href="business/stimulus-package-size-questioned/cid/1794689">
                                <img
                                    src="https://assets.telegraphindia.com/telegraph/2020/Aug/1598400438_1595357421_22bus-nirmala_dc_ne.jpg"
                                    width="100%" alt="Further, the employees will be given a pre-paid Rupay card of Rs 10,000 under a special festival advance scheme. Finance minister Nirmala Sitharaman had put the size of the stimulus at Rs 73,000 crore.">
                            </a>
                        </div>

                        <a class="muted-link" href="business/stimulus-package-size-questioned/cid/1794689" title="">
                            <div>
                                <h2 class="fs-20 uk-text-1D pd-top-5 noto-bold uk-margin-small-bottom ellipsis_data_2">
                                    Stimulus size questioned                                     
                                </h2>
                            </div>
                            <div class="uk-text-69 uk-margin-small-top noto-regular">
                                The actual size of the government&rsquo;s stimulus...                            </div>
                        </a>

                    </div>
                </div>
            </div>

            <hr class="hrSection">

            <div class="uk-grid-divider row uk-height-limit-news pt-3">
                                        <div class="col-3">
                            <div class="position-relative asp_16_9">
                                <a href="business/bengal-set-to-get-rs-613-crore-loan/cid/1794685">
                                    <img src="https://assets.telegraphindia.com/telegraph/2020/Jun/1593444940_nirmala-jpg"
                                         width="100%"
                                         alt="Nirmala Sitharaman">
                                </a>
                            </div>
                            <div>
                                <h2 class="fs-18 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                    <a class="muted-link" href="business/bengal-set-to-get-rs-613-crore-loan/cid/1794685">
                                        Bengal set to get Rs 613 crore loan                                    </a>
                                </h2>
                            </div>
                        </div>
                                                <div class="col-3">
                            <div class="position-relative asp_16_9">
                                <a href="business/gst-borrowing-door-opened-for-20-states/cid/1794681">
                                    <img src="https://assets.telegraphindia.com/telegraph/2020/Sep/1599598542_gst.jpg"
                                         width="100%"
                                         alt="The projected total GST compensation shortfall in the current fiscal stands at Rs 2.35 lakh crore.  ">
                                </a>
                            </div>
                            <div>
                                <h2 class="fs-18 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                    <a class="muted-link" href="business/gst-borrowing-door-opened-for-20-states/cid/1794681">
                                        GST: borrowing door opened                                    </a>
                                </h2>
                            </div>
                        </div>
                                                <div class="col-3">
                            <div class="position-relative asp_16_9">
                                <a href="business/imf-predicts-deep-global-recession/cid/1794680">
                                    <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602616853_rc.jpg"
                                         width="100%"
                                         alt="In its latest World Economic Outlook report, the International Monetary Fund also said the swift recovery in China has surprised all while the global economy’s long ascent back to pre-pandemic levels of activity remains prone to setbacks. ">
                                </a>
                            </div>
                            <div>
                                <h2 class="fs-18 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                    <a class="muted-link" href="business/imf-predicts-deep-global-recession/cid/1794680">
                                        IMF predicts deep global recession                                     </a>
                                </h2>
                            </div>
                        </div>
                                                <div class="col-3">
                            <div class="position-relative asp_16_9">
                                <a href="business/wipro-meets-posts-a-3-4-per-cent-drop-in-net-profits/cid/1794673">
                                    <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602615717_we.jpg"
                                         width="100%"
                                         alt="Wipro said it expects the revenue of its IT services business for the December quarter of 2020 to be in the range of $2,022-2,06 2 million. This translates into a sequential growth of 1.5-3.5 per cent. ">
                                </a>
                            </div>
                            <div>
                                <h2 class="fs-18 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                    <a class="muted-link" href="business/wipro-meets-posts-a-3-4-per-cent-drop-in-net-profits/cid/1794673">
                                        Wipro posts 3.4 per cent drop in net profits                                    </a>
                                </h2>
                            </div>
                        </div>
                                    </div>

        </div>
    </div>

    
    
    
        <hr class="hrSection">
    <div class="row pb-4">
        <div class="col-2">
            <div class="bg-light-grey position-relative uk-text-blue fs-40 wb">
                <div class="sports_text rotated_text">
                    <a class="muted-link" href="/sports" title="">
                        <span class="fs-36 lato-bold">Sport</span>
                    </a>
                </div>
                <div class="show_more_btn">
                <a class="fs-16 noto-regular " href="/sports">All stories</a>
                </div>
            </div>
        </div>
        <div class="col-10 uk-section">
            <div class="row uk-grid-divider pb-4 pt-3">
                <div class="col-10">
                    <div class="row">
                        <div class="col-6">
                            <a class="muted-link" href="sport/indian-premier-league-ipl-chennai-super-kings-reinvent-to-get-better-of-sunrisers-hyderabad/cid/1794676">
                                <h2 class="fs-27 pd-top-5 noto-bold uk-text-1D mb-2 ellipsis_data_4">
                                    Super Kings reinvent to get better of Sunrisers                                </h2>
                                <div class="uk-text-69 noto-regular">
                                    IPL 2020 is turning out to be one of the most interesting editions in the history of the tournament with little to separate most of the teams. Chennai Super Kings&rsquo; 20-run win over Sunrisers Hyde...                                </div>
                            </a>
                        </div>
                        <div class="col-6">
                            <div class="position-relative asp_16_9">
                                <a href="sport/indian-premier-league-ipl-chennai-super-kings-reinvent-to-get-better-of-sunrisers-hyderabad/cid/1794676">
                                    <img
                                        src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602616140_14spojadeja_3c.jpg"
                                        width="100%" alt="MoM Ravindra Jadeja celebrates with captain MS Dhoni on Tuesday. ">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-2">
                    <div class="article">
                        <div class="asp_16_9">
                            <a href="sport/indian-premier-league-ipl-rajasthan-royals-look-to-tame-delhi-capitals/cid/1794658">
                                <img
                                    src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602611883_14sposhreyas_dc.jpg"
                                    width="100%" alt="Shreyas Iyer ">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-20 uk-text-1D pd-top-5 noto-bold uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="sport/indian-premier-league-ipl-rajasthan-royals-look-to-tame-delhi-capitals/cid/1794658" title="">
                                    Royals look to tame Capitals                                </a>
                            </h2>
                        </div>
                        <!-- <div class="uk-text-69 uk-margin-small-top noto-regular"> -->
                                                    <!-- </div> -->
                    </div>
                </div>
            </div>

            <hr class="hrSection">

            <div class="uk-grid-divider row uk-height-limit-news pt-3">
                                    <div class="col-3">
                        <div class="position-relative asp_16_9">
                            <a href="sport/indian-premier-league-ipl-suryakumar-yadav-2-0-looks-at-new-dawn/cid/1794656">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602611552_14sposurya_4c.jpg" width="100%"
                                alt="Suryakumar: Fresh guard">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-18 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="sport/indian-premier-league-ipl-suryakumar-yadav-2-0-looks-at-new-dawn/cid/1794656">
                                    Surya 2.0 looks at new dawn                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="position-relative asp_16_9">
                            <a href="sport/new-zealands-greg-barclay-tipped-for-icc-top-post/cid/1794679">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602616536_f4efe876-c4dd-4a46-9bc0-90ba062e8f72.jpg" width="100%"
                                alt="Greg Barclay ">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-18 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="sport/new-zealands-greg-barclay-tipped-for-icc-top-post/cid/1794679">
                                    NZ’s Barclay tipped for ICC top post                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="position-relative asp_16_9">
                            <a href="sport/indian-premier-league-ipl-near-perfect-match-says-dhoni/cid/1794683">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602617138_2020_10img13_oct_2020_pti13-10-2020_000225b.jpg" width="100%"
                                alt="Mahendra Singh Dhoni ">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-18 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="sport/indian-premier-league-ipl-near-perfect-match-says-dhoni/cid/1794683">
                                    Near-perfect match, says Dhoni                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="position-relative asp_16_9">
                            <a href="sport/footballs-power-games/cid/1794703">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602621388_14spoliverpool1_5c.jpg" width="100%"
                                alt="These clubs would like to monetise that fan base by charging them directly to watch their games.">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-18 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="sport/footballs-power-games/cid/1794703">
                                    The power games in football                                </a>
                            </h2>
                        </div>
                    </div>
                                </div>

        </div>
    </div>

    
    
    
        <hr class="hrSection">
    <div class="row mb-4">
        <div class="col-2">
            <div class="bg-light-grey position-relative uk-text-blue fs-40 wb">
                <div class="ent_text rotated_text">
                    <a class="muted-link" href="/entertainment" title="">
                        <span class="fs-36 lato-bold">Entertainment</span>
                    </a>
                </div>
                <div class="show_more_btn">
                    <a class="fs-16 noto-regular " href="/entertainment">All stories</a>
                </div>
            </div>
        </div>

        <div class="col-10 pt-3 uk-section">
            <div class="row uk-grid-divider pb-4">
                <div class="col-6">
                    <div class="position-relative asp_16_9">
                        <a href="entertainment/the-haunting-of-bly-manor-cranks-up-the-drama-and-dials-down-the-horror/cid/1794731" >
                            <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602680144_haunting-of-bly-manor-ending-1601913679.jpg" width="100%" alt="Painful and poignant: Amelie Bea Smith and Victoria Pedretti in The Haunting of Bly Manor, streaming on Netflix">
                        </a>
                    </div>
                    <div class="bg">
                        <h2 class="uk-text-1D fs-36 text-center noto-bold uk-margin-remove uk-padding-40 m-0">
                            <a class="muted-link ellipsis_data_2" href="entertainment/the-haunting-of-bly-manor-cranks-up-the-drama-and-dials-down-the-horror/cid/1794731">
                                Bly Manor dials down the horror                            </a>
                        </h2>
                    </div>
                </div>
                <div class="col-6 art_height">
                                            <div class="uk-panel">
                            <a href="entertainment/director-soukarya-ghosal-talks-about-the-emotionally-charged-thriller-rawkto-rawhoshyo/cid/1794733" >
                                <div class="position-relative clearfix clearfix">
                                    <a href="entertainment/director-soukarya-ghosal-talks-about-the-emotionally-charged-thriller-rawkto-rawhoshyo/cid/1794733" >
                                        <img class="float-left mr-3" src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602681734_ss-01-572.jpg"
                                             width="166" height="94" alt="Koel Mallick and Chandan Roy Sanyal in the film, which releases on October 21 in the theatres">
                                    </a>
                                    <div>
                                        <h2 class="fs-16 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                            <a class="muted-link" href="entertainment/director-soukarya-ghosal-talks-about-the-emotionally-charged-thriller-rawkto-rawhoshyo/cid/1794733" >
                                                Soukarya Ghosal on Rawkto Rawhoshyo                                            </a>
                                        </h2>
                                    </div>
                                </div>
                            </a>
                        </div>
                                                <div class="uk-panel">
                            <a href="entertainment/srijit-mukherjis-film-autograph-turns-10-today/cid/1794657" >
                                <div class="position-relative clearfix clearfix">
                                    <a href="entertainment/srijit-mukherjis-film-autograph-turns-10-today/cid/1794657" >
                                        <img class="float-left mr-3" src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602611582_autograph-5.jpg"
                                             width="166" height="94" alt="Prosenjit in Autograph">
                                    </a>
                                    <div>
                                        <h2 class="fs-16 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                            <a class="muted-link" href="entertainment/srijit-mukherjis-film-autograph-turns-10-today/cid/1794657" >
                                                Autograph turns 10 today                                            </a>
                                        </h2>
                                    </div>
                                </div>
                            </a>
                        </div>
                                                <div class="uk-panel">
                            <a href="entertainment/interview-ali-fazal-on-building-his-hollywood-career-and-mirzapur/cid/1794688" >
                                <div class="position-relative clearfix clearfix">
                                    <a href="entertainment/interview-ali-fazal-on-building-his-hollywood-career-and-mirzapur/cid/1794688" >
                                        <img class="float-left mr-3" src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602618166_ss-4i7a8208.jpg"
                                             width="166" height="94" alt="Ali Fazal as Guddu Pandit in Season 2 of Mirzapur, streaming on Amazon Prime Video from October 23.">
                                    </a>
                                    <div>
                                        <h2 class="fs-16 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                            <a class="muted-link" href="entertainment/interview-ali-fazal-on-building-his-hollywood-career-and-mirzapur/cid/1794688" >
                                                Ali Fazal on Hollywood and Mirzapur                                            </a>
                                        </h2>
                                    </div>
                                </div>
                            </a>
                        </div>
                                                <div class="uk-panel">
                            <a href="entertainment/sima-taparia-and-smriti-mundhra-the-ladies-behind-indian-matchmaking-discuss-the-success-of-their-netflix-show-in-a-yflo-session/cid/1794541" >
                                <div class="position-relative clearfix clearfix">
                                    <a href="entertainment/sima-taparia-and-smriti-mundhra-the-ladies-behind-indian-matchmaking-discuss-the-success-of-their-netflix-show-in-a-yflo-session/cid/1794541" >
                                        <img class="float-left mr-3" src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602514345_ss-20200815_bkp503.jpg"
                                             width="166" height="94" alt="A moment from Indian Matchmaking, streaming on Netflix">
                                    </a>
                                    <div>
                                        <h2 class="fs-16 uk-text-1D noto-bold uk-margin-small-bottom ellipsis_data_2">
                                            <a class="muted-link" href="entertainment/sima-taparia-and-smriti-mundhra-the-ladies-behind-indian-matchmaking-discuss-the-success-of-their-netflix-show-in-a-yflo-session/cid/1794541" >
                                                The ladies behind Indian Matchmaking                                             </a>
                                        </h2>
                                    </div>
                                </div>
                            </a>
                        </div>
                        
                </div>
            </div>
            <hr class="hrSection">
            <div class="row uk-grid-divider pt-3 uk-height-limit-news">
                                    <div class="col-3">
                        <div class="position-relative  asp_16_9">
                            <a href="entertainment/aamir-ali-on-his-return-to-calcutta-to-shoot-after-more-than-a-decade/cid/1794542">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602514882_aamir-ali3.jpg" width="100%"
                                     alt="Aamir Ali takes a breather after the day’s shoot at Vedic Village">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-18 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="entertainment/aamir-ali-on-his-return-to-calcutta-to-shoot-after-more-than-a-decade/cid/1794542">
                                    Aamir Ali on his return to Calcutta                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="position-relative  asp_16_9">
                            <a href="entertainment/mimi-chakraborty-on-dracula-sir-enjoying-vampire-movies-and-ghost-stories-and-why-it-is-important-to-raise-your-voice-and-listen-to-your-heart/cid/1794538">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602512691_snap5871_ss.jpg" width="100%"
                                     alt="A moment from Dracula Sir, which releases on October 21. Dracula Sir tells the story of the bloodstained rise of a Bangali vampire and his search for love and revenge">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-18 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="entertainment/mimi-chakraborty-on-dracula-sir-enjoying-vampire-movies-and-ghost-stories-and-why-it-is-important-to-raise-your-voice-and-listen-to-your-heart/cid/1794538">
                                    Mimi Chakraborty on Dracula Sir                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="position-relative  asp_16_9">
                            <a href="entertainment/the-layers-in-rules-of-the-game-reflect-the-stark-unspoken-but-very-contemporary-truth-of-how-rules-in-marriages-have-changed-in-our-times/cid/1794442">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602405408_5t1a0405-copy.jpg" width="100%"
                                     alt="Chandan Roy Sanyal and Aahana Kumra in the Zee5 film Rules Of The Game">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-18 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="entertainment/the-layers-in-rules-of-the-game-reflect-the-stark-unspoken-but-very-contemporary-truth-of-how-rules-in-marriages-have-changed-in-our-times/cid/1794442">
                                    The changing rules of marriage                                </a>
                            </h2>
                        </div>
                    </div>
                                        <div class="col-3">
                        <div class="position-relative  asp_16_9">
                            <a href="entertainment/filmmaker-hansal-mehta-brings-harshad-mehtas-story-to-the-web-with-scam-1992/cid/1794443">
                                <img src="https://assets.telegraphindia.com/telegraph/2020/Oct/1602406027_hansal-mehta_scam-1992-7.jpg" width="100%"
                                     alt="Hansal Mehta on the sets of Scam 1992">
                            </a>
                        </div>
                        <div>
                            <h2 class="fs-18 pd-top-5 noto-bold uk-text-1D uk-margin-small-bottom ellipsis_data_2">
                                <a class="muted-link" href="entertainment/filmmaker-hansal-mehta-brings-harshad-mehtas-story-to-the-web-with-scam-1992/cid/1794443">
                                    Harshad Mehta’s story on the web with Scam 1992                                </a>
                            </h2>
                        </div>
                    </div>
                                </div>
    <!--        <div class="mt-5 jeetu_section pt-5 d-flex align-items-end">-->
    <!--            <div class="row w-100">-->
    <!--                <div class="col-6">-->
    <!--                    <a href="#" ><img src="assets/images/blue_semi_circle.png"></a>-->
    <!--                    <a href="#" ><img src="--><!--"></a>-->
    <!--                </div>-->
    <!--                <div class="col-6 noto-bold mb-5">-->
    <!--                    <div class="uk-text-blue fs-18"><a class="muted-link" href="#" >--><!--</a></div>-->
    <!--                    <div class="uk-text-red fs-33"><a class="muted-link" href="#" >--><!--</a>-->
    <!--                    </div>-->
    <!--                    <div>--><!--</div>-->
    <!--                </div>-->
    <!--            </div>-->
    <!--        </div>-->
        </div>
    </div>

    </div>
    
    <div class="container mainContainer uk-background-default pt-0">
         <div class="fs-24 uk-text-white container uk-background-gallery-header pt-1 pb-1">
        <div>
            <a class="muted-link lato-bold" href="/">
                In Pictures            </a>
            <a class="fs-16 noto-regular uk-text-white align-right show_pictures muted-link" href="/">All stories</a>
        </div>
    </div>

    <div class="container uk-background-gallery">
        <div class="row pt-3 pb-4">
            <div class="col-5">
                <a class="muted-link" href="india/streets-of-mumbai-bear-the-brunt-of-rain-god/cid/1792809">
                    <div>
                        <h2 class="fs-18 uk-text-yellow noto-regular">
                            India                        </h2>
                    </div>
                    <div>
                        <h2 class="uk-text-white noto-bold">
                            Mumbai struggles to stay afloat                        </h2>
                    </div>
                    <div class="uk-text-white fs-16 noto-regular">
                        Heavy downpour paralyses Maximum City                    </div>
                </a>
            </div>
            <div class="col-7">
                <div class="position-relative">
                    <a href="india/streets-of-mumbai-bear-the-brunt-of-rain-god/cid/1792809">
                        <img
                            src="https://assets.telegraphindia.com/telegraph/2020/Sep/1600853702_mu5l.jpg"
                            width="100%" alt="">
                    </a>
                                    </div>
            </div>
        </div>

        <hr class="hrSectionGallery">

        <div class="row pt-3 pb-4 uk-grid-divider divider_border">
                            <div class="col-3">
                    <div class="position-relative asp_16_9">
                        <a href="india/neet-masks-sanitiser-and-staggered-entry/cid/1791851">
                            <img src="https://assets.telegraphindia.com/telegraph/2020/Sep/1599993307_2020_9img13_sep_2020_pti13-09-2020_000020b-copy.jpg" width="100%"
                                 alt="Masks, sanitiser and staggered entry">
                        </a>
                        <div class="video_icon_btn">
                                <a href="#"  class="muted-link">
                                    <div class="the-icons span3" title="Code: 0xe801"><i
                                            class="demo-icon icon-camera uk-text-white">&#xe801;</i></div>
                                </a>
                            </div>                    </div>
                    <div>
                        <div class="uk-text-yellow noto-regular pd-top-5">
                            <a class="muted-link" href="india/neet-masks-sanitiser-and-staggered-entry/cid/1791851">
                                India                            </a>
                        </div>
                    </div>
                    <div>
                        <h2 class="uk-text-white fs-21 noto-regular ellipsis_data_2">
                            <a class="muted-link" href="india/neet-masks-sanitiser-and-staggered-entry/cid/1791851">
                                Masks, sanitiser and staggered entry                            </a>
                        </h2>
                    </div>
                </div>
                                <div class="col-3">
                    <div class="position-relative asp_16_9">
                        <a href="india/coronavirus-pandemic-delhi-metro-service-resumes/cid/1791223">
                            <img src="https://assets.telegraphindia.com/telegraph/2020/Sep/1599460292_dm3.jpg" width="100%"
                                 alt="">
                        </a>
                        <div class="video_icon_btn">
                                <a href="#"  class="muted-link">
                                    <div class="the-icons span3" title="Code: 0xe801"><i
                                            class="demo-icon icon-camera uk-text-white">&#xe801;</i></div>
                                </a>
                            </div>                    </div>
                    <div>
                        <div class="uk-text-yellow noto-regular pd-top-5">
                            <a class="muted-link" href="india/coronavirus-pandemic-delhi-metro-service-resumes/cid/1791223">
                                India                            </a>
                        </div>
                    </div>
                    <div>
                        <h2 class="uk-text-white fs-21 noto-regular ellipsis_data_2">
                            <a class="muted-link" href="india/coronavirus-pandemic-delhi-metro-service-resumes/cid/1791223">
                                Delhi Metro resumes services                             </a>
                        </h2>
                    </div>
                </div>
                                <div class="col-3">
                    <div class="position-relative asp_16_9">
                        <a href="india/pranab-mukherjee-the-one-loved-by-all/cid/1790641">
                            <img src="https://assets.telegraphindia.com/telegraph/2020/Sep/1598948902_pr8l.jpg" width="100%"
                                 alt="">
                        </a>
                        <div class="video_icon_btn">
                                <a href="#"  class="muted-link">
                                    <div class="the-icons span3" title="Code: 0xe801"><i
                                            class="demo-icon icon-camera uk-text-white">&#xe801;</i></div>
                                </a>
                            </div>                    </div>
                    <div>
                        <div class="uk-text-yellow noto-regular pd-top-5">
                            <a class="muted-link" href="india/pranab-mukherjee-the-one-loved-by-all/cid/1790641">
                                India                            </a>
                        </div>
                    </div>
                    <div>
                        <h2 class="uk-text-white fs-21 noto-regular ellipsis_data_2">
                            <a class="muted-link" href="india/pranab-mukherjee-the-one-loved-by-all/cid/1790641">
                                Pranab Mukherjee: He got along with everyone                            </a>
                        </h2>
                    </div>
                </div>
                                <div class="col-3">
                    <div class="position-relative asp_16_9">
                        <a href="calcutta/focus-on-new-town/cid/1790310">
                            <img src="https://assets.telegraphindia.com/telegraph/2020/Aug/1598638300_dslr-1st.jpg" width="100%"
                                 alt="">
                        </a>
                        <div class="video_icon_btn">
                                <a href="#"  class="muted-link">
                                    <div class="the-icons span3" title="Code: 0xe801"><i
                                            class="demo-icon icon-camera uk-text-white">&#xe801;</i></div>
                                </a>
                            </div>                    </div>
                    <div>
                        <div class="uk-text-yellow noto-regular pd-top-5">
                            <a class="muted-link" href="calcutta/focus-on-new-town/cid/1790310">
                                Calcutta                            </a>
                        </div>
                    </div>
                    <div>
                        <h2 class="uk-text-white fs-21 noto-regular ellipsis_data_2">
                            <a class="muted-link" href="calcutta/focus-on-new-town/cid/1790310">
                                Focus on New Town                            </a>
                        </h2>
                    </div>
                </div>
                        </div>
    </div>

    <div class="container uk-background-default pt-4"></div>

    </div>
        <div class="container pt-3 mainContainer pb-3">
        <div id="taboola-below-homepage-thumbnails"></div>
<script type="text/javascript">
window._taboola = window._taboola || [];
_taboola.push({
mode: 'alternating-thumbnails-a',
container: 'taboola-below-homepage-thumbnails',
placement: 'Below Homepage Thumbnails',
target_type: 'mix'
});
</script>
     </div>
    <div class="container uk-background-default pt-2 mainContainer">&nbsp;</div>
    <!-- /1088475/TT_HM_1x1 -->
<div id='div-gpt-ad-1525337961480-6'>
<script>
if(abpDevice==="desktop"){googletag.cmd.push(function() { googletag.display('div-gpt-ad-1525337961480-6'); });}
</script>
</div>

<!-- /1088475/TT_HM_Slider_1x1 -->
<div id='div-gpt-ad-1525337961480-7'>
<script>
if(abpDevice==="desktop"){googletag.cmd.push(function() { googletag.display('div-gpt-ad-1525337961480-7'); });}
</script>
</div>

<!-- /1088475/TT_HM_1x1_2 -->
<div id='div-gpt-ad-1525337961480-8' style='width: 1px; height: 1px;'>
  <script>
    googletag.cmd.push(function() { googletag.display('div-gpt-ad-1525337961480-8'); });
  </script>
</div>


<script type="text/javascript">
window._taboola = window._taboola || [];
_taboola.push({flush: true});
</script><!-- Footer start -->
<div style="background-color:#000;" id="footer" class="noto-regular">
    <div class="container text-center pt-4">
        <h4 class="text-white fs-15">Download the latest The Telegraph app</h4>
        <div class="pt-2 pb-4">
            <span><a href="https://play.google.com/store/apps/details?id=com.thetelegraph" target="_blank"><img src="/assets/images/istore.png" alt="Apple App Store"></a></span>
            <span><a href="https://apps.apple.com/us/app/the-telegraph/id1438396234" target="_blank"><img src="/assets/images/play.png" alt="Google Play Store"></a></span>
        </div>
        <hr class="hrSectionFooter">
        <div class="row uk-grid-divider uk-grid-divider-footer">
            <div class="col-6">
                <h4 class="text-white fs-18 text-left pt-3 pb-3 mb-0 ml-3 noto-bold">More from The Telegraph India</h4>
                <hr class="hrSectionFooter">

                <div class="row text-left text-grey pt-4 pl-3">
                    <div class="col-4">
                        <ul class="list-unstyled">
                            <li><a href="#" title="News">News</a></li>
                            <li><a href="#" title="Opinion">Opinion</a></li>
                            <li><a href="#" title="India">India</a></li>
                            <li><a href="#" title="Bengal">Bengal</a></li>
                            <li><a href="#" title="World">World</a></li>
                            <li><a href="#" title="Business">Business</a></li>
                        </ul>
                    </div>
                    <div class="col-4">
                        <ul class="list-unstyled">
                            <li><a href="#" title="Science">Science</a></li>
                            <li><a href="#" title="Technology">Technology</a></li>
                            <li><a href="#" title="Health">Health</a></li>
                            <li><a href="#" title="Sports">Sports</a></li>
                            <li><a href="#" title="Entertainment">Entertainment</a></li>
                            <li><a href="#" title="Culture">Culture</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-6">
                <h4 class="text-white fs-18 text-left pt-3 pb-3 mb-0 ml-3 noto-bold">More from ABP Group</h4>
                <hr class="hrSectionFooter">
                <div class="text-left pt-4 pb-4 ml-3">
                    <div class="pb-3"><span class="mr-2">
                            <a href="https://www.fortuneindia.com/?ref=footer_home-template" class="text-white link-reset" target="_blank" title="Fortune India">
                                <img src="/assets/images/f.png" alt="Fortune India">
                        </span>
                        Fortune India</a></div>
                    <div class="pb-3"><span class="mr-2"><a href="https://www.anandabazar.com/?ref=footer_home-template" class="text-white link-reset" target="_blank"
                                                            title="Anandabazar Patrika"><img src="/assets/images/p.png"
                                                                                              alt="Anandabazar Patrika"></span>
                        Anandabazar Patrika</a></div>
                </div>
                <hr class="hrSectionFooter">
            </div>
        </div>
        <hr class="hrSectionFooter">
    </div>
</div>

<div style="background-color:#000;" class="noto-regular">
    <div class="clearfix text-white container pt-4 pb-4">
        <div class="float-left">
            Copyright © 2020 The Telegraph. All rights reserved.

            <ul class="list-group list-group-horizontal pt-2 pb-2 fs-12 text-grey">
                <li class="mr-2"><a href="#" class="muted-link" title="About">About</a></li>
                <li class="mr-2 text-grey">|</li>
                <li class="mr-2"><a href="#" class="muted-link" title="Contact us">Contact us</a></li>
                <li class="mr-2 text-grey">|</li>
                <li class="mr-2"><a href="#" class="muted-link" title="Terms of use">Terms of use</a></li>
                <li class="mr-2 text-grey">|</li>
                <li><a href="#" class="muted-link" title="Privacy Policy">Privacy Policy</a></li>
            </ul>
        </div>
        <div class="float-right">
            <ul class="list-group list-group-horizontal">
                <li class="d-inline-block"><a class="uk-padding-remove muted-link" href="https://www.facebook.com/thetelegraphindia">
                        <div class="the-icons span3 d-inline-block fs-16" title="Code: 0xf09a">
                            <i class="demo-icon icon-facebook uk-text-white">&#xf09a;</i>
                        </div>
                    </a>
                </li>

                <li class="d-inline-block"><a class="uk-padding-remove muted-link" href="https://twitter.com/ttindia"><span>&nbsp;&nbsp;<img
                                src="/assets/images/white_dot.png"></span>
                        <div class="the-icons span3 d-inline-block fs-16" title="Code: 0xf309"><i
                                class="demo-icon icon-twitter uk-text-white">&#xf309;</i></div>
                    </a></li>

                <li class="d-inline-block"><a class="uk-padding-remove muted-link" href="https://www.instagram.com/telegraphonline/"><span>&nbsp;&nbsp;<img
                                src="/assets/images/white_dot.png"></span>
                        <div class="the-icons span3 d-inline-block fs-16" title="Code: 0xf16d"><i
                                class="demo-icon icon-instagram uk-text-white">&#xf16d;</i></div>
                    </a></li>
            </ul>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script> -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/js/init0.2.js"></script>
<script>
  $( function() {
    $( ".custom_dp" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
  } );
</script>
</body>
</html>
