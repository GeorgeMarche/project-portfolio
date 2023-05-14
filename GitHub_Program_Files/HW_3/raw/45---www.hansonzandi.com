<!DOCTYPE html>
<html lang="en-GB">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="pingback" href="https://www.hansonzandi.com/xmlrpc.php" />
<script type="text/javascript">
document.documentElement.className = 'js';
</script>
<script id="diviarea-loader">window.DiviPopupData=window.DiviAreaConfig={"zIndex":1000000,"animateSpeed":400,"triggerClassPrefix":"show-popup-","idAttrib":"data-popup","modalIndicatorClass":"is-modal","blockingIndicatorClass":"is-blocking","defaultShowCloseButton":true,"withCloseClass":"with-close","noCloseClass":"no-close","triggerCloseClass":"close","singletonClass":"single","darkModeClass":"dark","noShadowClass":"no-shadow","altCloseClass":"close-alt","popupSelector":".et_pb_section.popup","initializeOnEvent":"et_pb_after_init_modules","popupWrapperClass":"area-outer-wrap","fullHeightClass":"full-height","openPopupClass":"da-overlay-visible","overlayClass":"da-overlay","exitIndicatorClass":"on-exit","hoverTriggerClass":"on-hover","clickTriggerClass":"on-click","onExitDelay":2000,"notMobileClass":"not-mobile","notTabletClass":"not-tablet","notDesktopClass":"not-desktop","baseContext":"body","activePopupClass":"is-open","closeButtonClass":"da-close","withLoaderClass":"with-loader","debug":false,"sys":[]};!function(){"use strict";!function(){window.DiviArea=window.DiviPopup={loaded:!1};var n=window.DiviArea,i=n.Hooks={},t={};function o(n,i,o){var e,r,c;if("string"==typeof n)if(t[n]){if(i)if((e=t[n])&&o)for(c=e.length;c--;)(r=e[c]).callback===i&&r.context===o&&(e[c]=!1);else for(c=e.length;c--;)e[c].callback===i&&(e[c]=!1)}else t[n]=[]}function e(n,i,o,e){if("string"==typeof n){var r={callback:i,priority:o,context:e},c=t[n];c?(c.push(r),c=function(n){var i,t,o,e,r=n.length;for(e=1;e<r;e++)for(i=n[e],t=e;t>0;t--)(o=n[t-1]).priority>i.priority&&(n[t]=o,n[t-1]=i);return n}(c)):c=[r],t[n]=c}}function r(n,i,o){var e,r;for("string"==typeof i&&(i=[i]),e=0;e<i.length;e++){var c=t[i[e]],f=!1,a=void 0;if(c){var l=c.length;for(r=0;r<l;r++)if(c[r])if("filter"===n)void 0!==(a=c[r].callback.apply(c[r].context,o))&&(o[0]=a);else{if(!c[r]||"function"!=typeof c[r].callback)return!1;c[r].callback.apply(c[r].context,o)}else f=!0;if(f)for(r=l;r--;)c[r]||c.splice(r,1)}}if("filter"===n)return o[0]}i.silent=function(){return i},n.removeFilter=i.removeFilter=function(n,i){o(n,i)},n.removeAction=i.removeAction=function(n,i){o(n,i)},n.applyFilters=i.applyFilters=function(n){for(var i=[],t=arguments.length-1;t-- >0;)i[t]=arguments[t+1];return r("filter",n,i)},n.doAction=i.doAction=function(n){for(var i=[],t=arguments.length-1;t-- >0;)i[t]=arguments[t+1];r("action",n,i)},n.addFilter=i.addFilter=function(n,i,t,o){e(n,i,parseInt(t||10,10),o||window)},n.addAction=i.addAction=function(n,i,t,o){e(n,i,parseInt(t||10,10),o||window)},n.addActionOnce=i.addActionOnce=function(n,i,t,r){e(n,i,parseInt(t||10,10),r||window),e(n,(function(){o(n,i)}),1+parseInt(t||10,10),r||window)}}()}();
</script>
<!-- This site is optimized with the Yoast SEO Premium plugin v15.0 - https://yoast.com/wordpress/plugins/seo/ -->
<title>Hanson Zandi | Integrated Healthcare Communications Agency | Marlow</title>
<meta name="description" content="Hanson Zandi is an integrated communications agency based in Marlow, with more than 30 years&#039; experience in healthcare and pharmaceutical advertising." />
<meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1" />
<link rel="canonical" href="https://www.hansonzandi.com/" />
<meta property="og:locale" content="en_GB" />
<meta property="og:type" content="website" />
<meta property="og:title" content="Hanson Zandi | Integrated Healthcare Communications Agency | Marlow" />
<meta property="og:description" content="Hanson Zandi is an integrated communications agency based in Marlow, with more than 30 years&#039; experience in healthcare and pharmaceutical advertising." />
<meta property="og:url" content="https://www.hansonzandi.com/" />
<meta property="og:site_name" content="Hanzon Zandi" />
<meta property="article:publisher" content="https://www.facebook.com/HansonZandi" />
<meta property="article:modified_time" content="2020-08-10T13:06:02+00:00" />
<meta property="og:image" content="https://www.hansonzandi.com/wp-content/uploads/2019/05/Under-the-covers.jpg" />
<meta property="og:image:width" content="1195" />
<meta property="og:image:height" content="796" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:creator" content="@hansonzandi" />
<meta name="twitter:site" content="@hansonzandi" />
<script type="application/ld+json" class="yoast-schema-graph">{"@context":"https://schema.org","@graph":[{"@type":"Organization","@id":"https://www.hansonzandi.com/#organization","name":"Hanson Zandi","url":"https://www.hansonzandi.com/","sameAs":["https://www.facebook.com/HansonZandi","https://www.instagram.com/hansonzandi","https://www.linkedin.com/company/hanson-zandi-advertising-ltd/about","https://www.youtube.com/user/HansonZandi","https://www.pinterest.co.uk/hansonzandi","https://twitter.com/hansonzandi"],"logo":{"@type":"ImageObject","@id":"https://www.hansonzandi.com/#logo","inLanguage":"en-GB","url":"https://www.hansonzandi.com/wp-content/uploads/2019/04/HansonZandi.png","width":750,"height":750,"caption":"Hanson Zandi"},"image":{"@id":"https://www.hansonzandi.com/#logo"}},{"@type":"WebSite","@id":"https://www.hansonzandi.com/#website","url":"https://www.hansonzandi.com/","name":"Hanzon Zandi","description":"Creative and digital healthcare agency - Hanson Zandi","publisher":{"@id":"https://www.hansonzandi.com/#organization"},"potentialAction":[{"@type":"SearchAction","target":"https://www.hansonzandi.com/?s={search_term_string}","query-input":"required name=search_term_string"}],"inLanguage":"en-GB"},{"@type":"WebPage","@id":"https://www.hansonzandi.com/#webpage","url":"https://www.hansonzandi.com/","name":"Hanson Zandi | Integrated Healthcare Communications Agency | Marlow","isPartOf":{"@id":"https://www.hansonzandi.com/#website"},"about":{"@id":"https://www.hansonzandi.com/#organization"},"datePublished":"2019-04-26T08:16:42+00:00","dateModified":"2020-08-10T13:06:02+00:00","description":"Hanson Zandi is an integrated communications agency based in Marlow, with more than 30 years' experience in healthcare and pharmaceutical advertising.","inLanguage":"en-GB","potentialAction":[{"@type":"ReadAction","target":["https://www.hansonzandi.com/"]}]}]}</script>
<!-- / Yoast SEO Premium plugin. -->
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="Hanzon Zandi &raquo; Feed" href="https://www.hansonzandi.com/feed/" />
<script type="text/javascript">
window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/13.0.0\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/13.0.0\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/www.hansonzandi.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=5.5.1"}};
!function(e,a,t){var r,n,o,i,p=a.createElement("canvas"),s=p.getContext&&p.getContext("2d");function c(e,t){var a=String.fromCharCode;s.clearRect(0,0,p.width,p.height),s.fillText(a.apply(this,e),0,0);var r=p.toDataURL();return s.clearRect(0,0,p.width,p.height),s.fillText(a.apply(this,t),0,0),r===p.toDataURL()}function l(e){if(!s||!s.fillText)return!1;switch(s.textBaseline="top",s.font="600 32px Arial",e){case"flag":return!c([127987,65039,8205,9895,65039],[127987,65039,8203,9895,65039])&&(!c([55356,56826,55356,56819],[55356,56826,8203,55356,56819])&&!c([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]));case"emoji":return!c([55357,56424,8205,55356,57212],[55357,56424,8203,55356,57212])}return!1}function d(e){var t=a.createElement("script");t.src=e,t.defer=t.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(t)}for(i=Array("flag","emoji"),t.supports={everything:!0,everythingExceptFlag:!0},o=0;o<i.length;o++)t.supports[i[o]]=l(i[o]),t.supports.everything=t.supports.everything&&t.supports[i[o]],"flag"!==i[o]&&(t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&t.supports[i[o]]);t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&!t.supports.flag,t.DOMReady=!1,t.readyCallback=function(){t.DOMReady=!0},t.supports.everything||(n=function(){t.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",n,!1),e.addEventListener("load",n,!1)):(e.attachEvent("onload",n),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&t.readyCallback()})),(r=t.source||{}).concatemoji?d(r.concatemoji):r.wpemoji&&r.twemoji&&(d(r.twemoji),d(r.wpemoji)))}(window,document,window._wpemojiSettings);
</script>
<meta content="Hanson Zandi v.1.0" name="generator"/><style type="text/css">
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
<!-- <link rel='stylesheet' id='wp-block-library-css'  href='https://www.hansonzandi.com/wp-includes/css/dist/block-library/style.min.css?ver=5.5.1' type='text/css' media='all' /> -->
<!-- <link rel='stylesheet' id='cookie-law-info-css'  href='https://www.hansonzandi.com/wp-content/plugins/cookie-law-info/public/css/cookie-law-info-public.css?ver=1.9.1' type='text/css' media='all' /> -->
<!-- <link rel='stylesheet' id='cookie-law-info-gdpr-css'  href='https://www.hansonzandi.com/wp-content/plugins/cookie-law-info/public/css/cookie-law-info-gdpr.css?ver=1.9.1' type='text/css' media='all' /> -->
<!-- <link rel='stylesheet' id='animate-css'  href='https://www.hansonzandi.com/wp-content/plugins/wp-quiz/assets/frontend/css/animate.css?ver=3.6.0' type='text/css' media='all' /> -->
<!-- <link rel='stylesheet' id='wp-quiz-css'  href='https://www.hansonzandi.com/wp-content/plugins/wp-quiz/assets/frontend/css/wp-quiz.css?ver=2.0.6' type='text/css' media='all' /> -->
<!-- <link rel='stylesheet' id='css-divi-area-css'  href='https://www.hansonzandi.com/wp-content/plugins/popups-for-divi/css/front.css?ver=2.2.3' type='text/css' media='all' /> -->
<link rel="stylesheet" type="text/css" href="//www.hansonzandi.com/wp-content/cache/wpfc-minified/1144no9a/ojdu.css" media="all"/>
<style id='css-divi-area-inline-css' type='text/css'>
.et_pb_section.popup{display:none}
</style>
<!-- <link rel='stylesheet' id='parent-style-css'  href='https://www.hansonzandi.com/wp-content/themes/Divi/style.dev.css?ver=5.5.1' type='text/css' media='all' /> -->
<link rel="stylesheet" type="text/css" href="//www.hansonzandi.com/wp-content/cache/wpfc-minified/2nclpixh/ojdu.css" media="all"/>
<link rel='stylesheet' id='divi-fonts-css'  href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&#038;subset=latin,latin-ext&#038;display=swap' type='text/css' media='all' />
<!-- <link rel='stylesheet' id='divi-style-css'  href='https://www.hansonzandi.com/wp-content/themes/hanson-zandi/style.css?ver=4.6.5' type='text/css' media='all' /> -->
<!-- <link rel='stylesheet' id='Divi-Blog-Extras-styles-css'  href='https://www.hansonzandi.com/wp-content/plugins/Divi-Blog-Extras/styles/style.min.css?ver=2.5.3' type='text/css' media='all' /> -->
<link rel="stylesheet" type="text/css" href="//www.hansonzandi.com/wp-content/cache/wpfc-minified/9a5mmjl1/ojdt.css" media="all"/>
<link rel='stylesheet' id='et-builder-googlefonts-cached-css'  href='https://fonts.googleapis.com/css?family=Montserrat:100,100italic,200,200italic,300,300italic,regular,italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic&#038;subset=latin,latin-ext&#038;display=swap' type='text/css' media='all' />
<!-- <link rel='stylesheet' id='et-shortcodes-responsive-css-css'  href='https://www.hansonzandi.com/wp-content/themes/Divi/epanel/shortcodes/css/shortcodes_responsive.css?ver=4.6.5' type='text/css' media='all' /> -->
<!-- <link rel='stylesheet' id='magnific-popup-css'  href='https://www.hansonzandi.com/wp-content/themes/Divi/includes/builder/styles/magnific_popup.css?ver=4.6.5' type='text/css' media='all' /> -->
<!-- <link rel='stylesheet' id='dashicons-css'  href='https://www.hansonzandi.com/wp-includes/css/dashicons.min.css?ver=5.5.1' type='text/css' media='all' /> -->
<link rel="stylesheet" type="text/css" href="//www.hansonzandi.com/wp-content/cache/wpfc-minified/esxcn9sw/ojdt.css" media="all"/>
<script type='text/javascript' id='jquery-core-js-extra'>
/* <![CDATA[ */
var SDT_DATA = {"ajaxurl":"https:\/\/www.hansonzandi.com\/hzadmin\/admin-ajax.php","siteUrl":"https:\/\/www.hansonzandi.com\/","pluginsUrl":"https:\/\/www.hansonzandi.com\/wp-content\/plugins","isAdmin":""};
/* ]]> */
</script>
<script src='//www.hansonzandi.com/wp-content/cache/wpfc-minified/jyt4u5xk/ojdu.js' type="text/javascript"></script>
<!-- <script type='text/javascript' src='https://www.hansonzandi.com/wp-includes/js/jquery/jquery.js?ver=1.12.4-wp' id='jquery-core-js'></script> -->
<script type='text/javascript' id='dtgs_nonce_frontend-js-after'>
var DTGS_NONCE_FRONTEND = "02e481280b"
</script>
<script src='//www.hansonzandi.com/wp-content/cache/wpfc-minified/lbyl8yum/ojdu.js' type="text/javascript"></script>
<!-- <script type='text/javascript' src='https://www.hansonzandi.com/wp-content/plugins/popups-for-divi/js/ie-compat.js?ver=2.2.3' id='dap-ie-js'></script> -->
<script type='text/javascript' id='cookie-law-info-js-extra'>
/* <![CDATA[ */
var Cli_Data = {"nn_cookie_ids":[],"cookielist":[],"ccpaEnabled":"","ccpaRegionBased":"","ccpaBarEnabled":"","ccpaType":"gdpr","js_blocking":"","custom_integration":"","triggerDomRefresh":""};
var cli_cookiebar_settings = {"animate_speed_hide":"500","animate_speed_show":"500","background":"#000000","border":"#b1a6a6c2","border_on":"","button_1_button_colour":"#dd3333","button_1_button_hover":"#b12929","button_1_link_colour":"#fff","button_1_as_button":"1","button_1_new_win":"","button_2_button_colour":"#dd3333","button_2_button_hover":"#b12929","button_2_link_colour":"#ffffff","button_2_as_button":"1","button_2_hidebar":"1","button_3_button_colour":"#3a3a3a","button_3_button_hover":"#2e2e2e","button_3_link_colour":"#fff","button_3_as_button":"1","button_3_new_win":"","button_4_button_colour":"#dd3333","button_4_button_hover":"#b12929","button_4_link_colour":"#ffffff","button_4_as_button":"1","font_family":"inherit","header_fix":"","notify_animate_hide":"1","notify_animate_show":"","notify_div_id":"#cookie-law-info-bar","notify_position_horizontal":"right","notify_position_vertical":"bottom","scroll_close":"","scroll_close_reload":"","accept_close_reload":"","reject_close_reload":"","showagain_tab":"","showagain_background":"#fff","showagain_border":"#000","showagain_div_id":"#cookie-law-info-again","showagain_x_position":"100px","text":"#ffffff","show_once_yn":"","show_once":"10000","logging_on":"","as_popup":"","popup_overlay":"1","bar_heading_text":"","cookie_bar_as":"banner","popup_showagain_position":"bottom-right","widget_position":"left"};
var log_object = {"ajax_url":"https:\/\/www.hansonzandi.com\/hzadmin\/admin-ajax.php"};
/* ]]> */
</script>
<script src='//www.hansonzandi.com/wp-content/cache/wpfc-minified/q11wsic/ojdu.js' type="text/javascript"></script>
<!-- <script type='text/javascript' src='https://www.hansonzandi.com/wp-content/plugins/cookie-law-info/public/js/cookie-law-info-public.js?ver=1.9.1' id='cookie-law-info-js'></script> -->
<!-- <script type='text/javascript' src='https://www.hansonzandi.com/wp-content/themes/Divi/core/admin/js/es6-promise.auto.min.js?ver=5.5.1' id='es6-promise-js'></script> -->
<script type='text/javascript' id='et-core-api-spam-recaptcha-js-extra'>
/* <![CDATA[ */
var et_core_api_spam_recaptcha = {"site_key":"","page_action":{"action":"www_hansonzandi_com"}};
/* ]]> */
</script>
<script src='//www.hansonzandi.com/wp-content/cache/wpfc-minified/8xpjq403/ojdu.js' type="text/javascript"></script>
<!-- <script type='text/javascript' src='https://www.hansonzandi.com/wp-content/themes/Divi/core/admin/js/recaptcha.js?ver=5.5.1' id='et-core-api-spam-recaptcha-js'></script> -->
<link rel="https://api.w.org/" href="https://www.hansonzandi.com/wp-json/" /><link rel="alternate" type="application/json" href="https://www.hansonzandi.com/wp-json/wp/v2/pages/22" /><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.hansonzandi.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://www.hansonzandi.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 5.5.1" />
<link rel='shortlink' href='https://www.hansonzandi.com/' />
<link rel="alternate" type="application/json+oembed" href="https://www.hansonzandi.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.hansonzandi.com%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://www.hansonzandi.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.hansonzandi.com%2F&#038;format=xml" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />			<script type="text/javascript">
var cli_flush_cache = true;
</script>
<style type="text/css" id="custom-background-css">
body.custom-background { background-color: #000000; }
</style>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"><!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-57190247-1"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());
gtag('config', 'UA-57190247-1');
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAlXnVFqdMIs86R2VVYINrBhsrZ9icgMKs&amp;callback=initMap" type="text/javascript"></script>
<script>
(function($) {
$(document).ready(function() {
var menuItem = $('.menu-item a');
menuItem.each(function(){
$(this).bind('click', function(){
$('#et-top-navigation .mobile_menu_bar').trigger('click');
})
})
});
})(jQuery)
</script>
<script>
(function($) {
$(window).on('load resize', function() {
$('.et_fullscreen_slider').each(function() {
et_fullscreen_slider($(this));
});
});
function et_fullscreen_slider(et_slider) {
var et_viewport_height = $(window).height(),
et_slider_height = $(et_slider).find('.et_pb_slider_container_inner').innerHeight(),
$admin_bar = $('#wpadminbar'),
$main_header = $('#main-header'),
$top_header = $('#top-header');
$(et_slider).height('auto');
if ($admin_bar.length) {
var et_viewport_height = et_viewport_height - $admin_bar.height();
}
if ($top_header.length) {
var et_viewport_height = et_viewport_height - $top_header.height();
}
if (!$('.et_transparent_nav').length && !$('.et_vertical_nav').length) {
var et_viewport_height = et_viewport_height - $main_header.height();
}
if (et_viewport_height > et_slider_height) {
$(et_slider).height(et_viewport_height);
}
}
})(jQuery);
</script>
<script type="text/javascript">
(function($) {
$(document).ready(function() {
$('.et_pb_filterable_portfolio .et_pb_portfolio_item').each(function() {
var title = $(this).find('h2');
p = $(this).find('p');
$(title).appendTo($(this).find('.et_portfolio_image .et_overlay'));
$(p).appendTo($(this).find('.et_portfolio_image .et_overlay'));
});
});
})(jQuery);
</script><link rel="icon" href="https://www.hansonzandi.com/wp-content/uploads/2019/04/cropped-HZ_Favicon-32x32.jpg" sizes="32x32" />
<link rel="icon" href="https://www.hansonzandi.com/wp-content/uploads/2019/04/cropped-HZ_Favicon-192x192.jpg" sizes="192x192" />
<link rel="apple-touch-icon" href="https://www.hansonzandi.com/wp-content/uploads/2019/04/cropped-HZ_Favicon-180x180.jpg" />
<meta name="msapplication-TileImage" content="https://www.hansonzandi.com/wp-content/uploads/2019/04/cropped-HZ_Favicon-270x270.jpg" />
<style id="et-divi-customizer-global-cached-inline-styles">.woocommerce #respond input#submit,.woocommerce-page #respond input#submit,.woocommerce #content input.button,.woocommerce-page #content input.button,.woocommerce-message,.woocommerce-error,.woocommerce-info{background:#d6001c!important}#et_search_icon:hover,.mobile_menu_bar:before,.mobile_menu_bar:after,.et_toggle_slide_menu:after,.et-social-icon a:hover,.et_pb_sum,.et_pb_pricing li a,.et_pb_pricing_table_button,.et_overlay:before,.entry-summary p.price ins,.woocommerce div.product span.price,.woocommerce-page div.product span.price,.woocommerce #content div.product span.price,.woocommerce-page #content div.product span.price,.woocommerce div.product p.price,.woocommerce-page div.product p.price,.woocommerce #content div.product p.price,.woocommerce-page #content div.product p.price,.et_pb_member_social_links a:hover,.woocommerce .star-rating span:before,.woocommerce-page .star-rating span:before,.et_pb_widget li a:hover,.et_pb_filterable_portfolio .et_pb_portfolio_filters li a.active,.et_pb_filterable_portfolio .et_pb_portofolio_pagination ul li a.active,.et_pb_gallery .et_pb_gallery_pagination ul li a.active,.wp-pagenavi span.current,.wp-pagenavi a:hover,.nav-single a,.tagged_as a,.posted_in a{color:#d6001c}.et_pb_contact_submit,.et_password_protected_form .et_submit_button,.et_pb_bg_layout_light .et_pb_newsletter_button,.comment-reply-link,.form-submit .et_pb_button,.et_pb_bg_layout_light .et_pb_promo_button,.et_pb_bg_layout_light .et_pb_more_button,.woocommerce a.button.alt,.woocommerce-page a.button.alt,.woocommerce button.button.alt,.woocommerce button.button.alt.disabled,.woocommerce-page button.button.alt,.woocommerce-page button.button.alt.disabled,.woocommerce input.button.alt,.woocommerce-page input.button.alt,.woocommerce #respond input#submit.alt,.woocommerce-page #respond input#submit.alt,.woocommerce #content input.button.alt,.woocommerce-page #content input.button.alt,.woocommerce a.button,.woocommerce-page a.button,.woocommerce button.button,.woocommerce-page button.button,.woocommerce input.button,.woocommerce-page input.button,.et_pb_contact p input[type="checkbox"]:checked+label i:before,.et_pb_bg_layout_light.et_pb_module.et_pb_button{color:#d6001c}.footer-widget h4{color:#d6001c}.et-search-form,.nav li ul,.et_mobile_menu,.footer-widget li:before,.et_pb_pricing li:before,blockquote{border-color:#d6001c}.et_pb_counter_amount,.et_pb_featured_table .et_pb_pricing_heading,.et_quote_content,.et_link_content,.et_audio_content,.et_pb_post_slider.et_pb_bg_layout_dark,.et_slide_in_menu_container,.et_pb_contact p input[type="radio"]:checked+label i:before{background-color:#d6001c}a{color:#d6001c}#main-header,#main-header .nav li ul,.et-search-form,#main-header .et_mobile_menu{background-color:#000000}#top-header,#et-secondary-nav li ul{background-color:#d6001c}#main-footer{background-color:#000000}#footer-widgets .footer-widget a,#footer-widgets .footer-widget li a,#footer-widgets .footer-widget li a:hover{color:#ffffff}.footer-widget{color:#ffffff}#main-footer .footer-widget h4{color:#d6001c}.footer-widget li:before{border-color:#d6001c}#et-footer-nav .bottom-nav li.current-menu-item a{color:#d6001c}#footer-bottom{background-color:#000000}#footer-info{font-size:12px}#footer-bottom .et-social-icon a{font-size:26px}#footer-bottom .et-social-icon a{color:#d6001c}.et-fixed-header#main-header{box-shadow:none!important}h1,h2,h3,h4,h5,h6,.et_quote_content blockquote p,.et_pb_slide_description .et_pb_slide_title{font-weight:bold;font-style:normal;text-transform:uppercase;text-decoration:none;letter-spacing:-2px}.et_slide_menu_top{display:none}.et_header_style_slide .et_slide_in_menu_container{width:500px}.et_slide_in_menu_container,.et_slide_in_menu_container .et-search-field,.et_slide_in_menu_container a,.et_slide_in_menu_container #et-info span{font-weight:bold;font-style:normal;text-transform:uppercase;text-decoration:none}.et_header_style_slide .et_slide_in_menu_container .et_mobile_menu li a{font-size:24px}.et_header_style_fullscreen .et_slide_in_menu_container .et_mobile_menu li a{font-size:50px}.et_slide_in_menu_container #mobile_menu_slide li.current-menu-item a,.et_slide_in_menu_container #mobile_menu_slide li a{padding:25px 0}.et_header_style_fullscreen .et_slide_in_menu_container,.et_header_style_fullscreen .et_slide_in_menu_container input.et-search-field,.et_header_style_fullscreen .et_slide_in_menu_container a,.et_header_style_fullscreen .et_slide_in_menu_container #et-info span,.et_header_style_fullscreen .et_slide_menu_top ul.et-social-icons a,.et_header_style_fullscreen .et_slide_menu_top span{font-size:40px}.et_header_style_fullscreen .et_slide_in_menu_container .et-search-field::-moz-placeholder{font-size:40px}.et_header_style_fullscreen .et_slide_in_menu_container .et-search-field::-webkit-input-placeholder{font-size:40px}.et_header_style_fullscreen .et_slide_in_menu_container .et-search-field:-ms-input-placeholder{font-size:40px}.et_slide_in_menu_container,.et_slide_in_menu_container .et-search-field{letter-spacing:0px}.et_slide_in_menu_container .et-search-field::-moz-placeholder{letter-spacing:0px}.et_slide_in_menu_container .et-search-field::-webkit-input-placeholder{letter-spacing:0px}.et_slide_in_menu_container .et-search-field:-ms-input-placeholder{letter-spacing:0px}@media only screen and (min-width:981px){.et_header_style_left #et-top-navigation,.et_header_style_split #et-top-navigation{padding:30px 0 0 0}.et_header_style_left #et-top-navigation nav>ul>li>a,.et_header_style_split #et-top-navigation nav>ul>li>a{padding-bottom:30px}.et_header_style_split .centered-inline-logo-wrap{width:60px;margin:-60px 0}.et_header_style_split .centered-inline-logo-wrap #logo{max-height:60px}.et_pb_svg_logo.et_header_style_split .centered-inline-logo-wrap #logo{height:60px}.et_header_style_centered #top-menu>li>a{padding-bottom:11px}.et_header_style_slide #et-top-navigation,.et_header_style_fullscreen #et-top-navigation{padding:21px 0 21px 0!important}.et_header_style_centered #main-header .logo_container{height:60px}#logo{max-height:40%}.et_pb_svg_logo #logo{height:40%}.et_header_style_centered.et_hide_primary_logo #main-header:not(.et-fixed-header) .logo_container,.et_header_style_centered.et_hide_fixed_logo #main-header.et-fixed-header .logo_container{height:10.8px}.et_header_style_left .et-fixed-header #et-top-navigation,.et_header_style_split .et-fixed-header #et-top-navigation{padding:30px 0 0 0}.et_header_style_left .et-fixed-header #et-top-navigation nav>ul>li>a,.et_header_style_split .et-fixed-header #et-top-navigation nav>ul>li>a{padding-bottom:30px}.et_header_style_centered header#main-header.et-fixed-header .logo_container{height:60px}.et_header_style_split #main-header.et-fixed-header .centered-inline-logo-wrap{width:60px;margin:-60px 0}.et_header_style_split .et-fixed-header .centered-inline-logo-wrap #logo{max-height:60px}.et_pb_svg_logo.et_header_style_split .et-fixed-header .centered-inline-logo-wrap #logo{height:60px}.et_header_style_slide .et-fixed-header #et-top-navigation,.et_header_style_fullscreen .et-fixed-header #et-top-navigation{padding:21px 0 21px 0!important}.et-fixed-header#top-header,.et-fixed-header#top-header #et-secondary-nav li ul{background-color:#d6001c}.et-fixed-header#main-header,.et-fixed-header#main-header .nav li ul,.et-fixed-header .et-search-form{background-color:rgba(0,0,0,0)}}@media only screen and (min-width:1350px){.et_pb_row{padding:27px 0}.et_pb_section{padding:54px 0}.single.et_pb_pagebuilder_layout.et_full_width_page .et_post_meta_wrapper{padding-top:81px}.et_pb_fullwidth_section{padding:0}}	h1,h2,h3,h4,h5,h6{font-family:'Montserrat',Helvetica,Arial,Lucida,sans-serif}.et_slide_in_menu_container,.et_slide_in_menu_container .et-search-field{font-family:'Montserrat',Helvetica,Arial,Lucida,sans-serif}	.et_pb_social_media_follow li a.icon{margin-right:6.84px;width:24px;height:24px}.et_pb_social_media_follow li a.icon::before{width:24px;height:24px;font-size:12px;line-height:24px}.et_pb_social_media_follow li a.follow_button{font-size:12px}</style></head>
<body class="home page-template-default page page-id-22 custom-background et_color_scheme_red et_pb_button_helper_class et_fullwidth_nav et_non_fixed_nav et_show_nav et_primary_nav_dropdown_animation_fade et_secondary_nav_dropdown_animation_fade et_header_style_slide et_header_style_left et_pb_footer_columns1 et_cover_background et_pb_gutter et_pb_gutters3 et_pb_pagebuilder_layout et_no_sidebar et_divi_theme et-db">
<div id="page-container">
<div class="et_slide_in_menu_container">
<div class="et_slide_menu_top">
<ul class="et-social-icons">
<li class="et-social-icon et-social-facebook">
<a href="https://www.facebook.com/HansonZandi" target="_blank" class="icon">
<span>Facebook</span>
</a>
</li>
<li class="et-social-icon et-social-twitter">
<a href="https://twitter.com/hansonzandi" target="_blank" class="icon">
<span>Twitter</span>
</a>
</li>
<li class="et-social-icon et-social-instagram">
<a href="https://www.instagram.com/hansonzandi" target="_blank" class="icon">
<span>Instagram</span>
</a>
</li>
<li class="et-social-icon et-social-pinterest">
<a href="https://www.pinterest.co.uk/hansonzandi/" target="_blank" class="icon">
<span>Pinterest</span>
</a>
</li>
<li class="et-social-icon et-social-vimeo">
<a href="https://vimeo.com/hansonzandi" target="_blank" class="icon">
<span>Vimeo</span>
</a>
</li>
<li class="et-social-icon et-social-linkedin">
<a href="https://www.linkedin.com/company/hanson-zandi-advertising-ltd/about/" target="_blank" class="icon">
<span>Linkedin</span>
</a>
</li>
<li class="et-social-icon et-social-youtube">
<a href="https://www.youtube.com/user/HansonZandi/" target="_blank" class="icon">
<span>Youtube</span>
</a>
</li>
</ul>			
</div> <!-- .et_slide_menu_top -->
<div class="et_pb_fullscreen_nav_container">
<ul id="mobile_menu_slide" class="et_mobile_menu">
<li id="menu-item-42" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-22 current_page_item menu-item-42"><a href="https://www.hansonzandi.com/" aria-current="page">Home</a></li>
<li id="menu-item-250" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-250"><a href="https://www.hansonzandi.com/about/">About</a></li>
<li id="menu-item-761" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-761"><a href="https://www.hansonzandi.com/work/">Work</a></li>
<li id="menu-item-656" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-656"><a href="https://www.hansonzandi.com/news/">News</a></li>
<li id="menu-item-344" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-344"><a href="https://www.hansonzandi.com/contact/">Contact</a></li>
</ul>
</div>
<div class="address_container">
<div class="address_details"><p><span>Contact Us:</span></p>
<p class='tnumber'><span><a href="mailto:contact@hansonzandi.co.uk">contact@hansonzandi.co.uk</a></span></p></div>
</div>
</div>
<header id="main-header" data-height-onload="60">
<div class="container clearfix et_menu_container">
<div class="logo_container">
<span class="logo_helper"></span>
<a href="https://www.hansonzandi.com/">
<img src="https://www.hansonzandi.com/wp-content/uploads/2019/04/hps_hanson-zandi_white_red-dot.png" alt="Hanzon Zandi" id="logo" data-height-percentage="40" />
</a>
</div>
<div id="et-top-navigation" data-height="60" data-fixed-height="60">
<span class="mobile_menu_bar et_pb_header_toggle et_toggle_slide_menu"></span>
</div> <!-- #et-top-navigation -->
</div> <!-- .container -->
<div class="et_search_outer">
<div class="container et_search_form_container">
<form role="search" method="get" class="et-search-form" action="https://www.hansonzandi.com/">
<input type="search" class="et-search-field" placeholder="Search &hellip;" value="" name="s" title="Search for:" />					</form>
<span class="et_close_search_field"></span>
</div>
</div>
</header> <!-- #main-header -->
<div id="et-main-area">
<div id="main-content">
<article id="post-22" class="post-22 page type-page status-publish hentry">
<div class="entry-content">
<div id="et-boc" class="et-boc">
<div class="et-l et-l--post">
<div class="et_builder_inner_content et_pb_gutters3">
<div class="et_pb_section et_pb_section_0 et_pb_fullwidth_section et_section_regular" >
<section class="et_pb_module et_pb_fullwidth_header et_pb_fullwidth_header_0 et_pb_text_align_center et_pb_bg_layout_dark et_pb_fullscreen">
<div class="et_pb_fullwidth_header_container center">
<div class="header-content-container center">
<div class="header-content">
<h1 class="et_pb_module_header">We love health</h1>
<div class="et_pb_header_content_wrapper"></div>
</div>
</div>
</div>
<div class="et_pb_fullwidth_header_overlay"></div>
<div class="et_pb_fullwidth_header_scroll"><a href="#" class="scroll-down-container">
<span class="scroll-down et-pb-icon">&#x33;</span>
</a></div>
</section>
</div> <!-- .et_pb_section --><div class="et_pb_section et_pb_section_1 et_section_regular" >
<div class="et_pb_row et_pb_row_0">
<div class="et_pb_column et_pb_column_4_4 et_pb_column_0  et_pb_css_mix_blend_mode_passthrough et-last-child">
<div class="et_pb_module et_pb_text et_pb_text_0  et_pb_text_align_center et_pb_bg_layout_light">
<div class="et_pb_text_inner"><h2>What we do</h2>
<p>We use insight, creativity and digital innovation to create healthcare communications that live in the minds of your customers.</p></div>
</div> <!-- .et_pb_text --><div class="et_pb_button_module_wrapper et_pb_button_0_wrapper et_pb_button_alignment_center et_pb_module ">
<a class="et_pb_button et_pb_button_0 et_pb_bg_layout_light" href="https://www.hansonzandi.com/about/">About</a>
</div>
</div> <!-- .et_pb_column -->
</div> <!-- .et_pb_row -->
</div> <!-- .et_pb_section --><div class="et_pb_section et_pb_section_2 et_section_regular" >
<div class="et_pb_row et_pb_row_1 et_pb_equal_columns et_pb_gutters1">
<div class="et_pb_column et_pb_column_4_4 et_pb_column_1  et_pb_css_mix_blend_mode_passthrough et-last-child">
<div class="et_pb_module et_pb_filterable_portfolio et_pb_filterable_portfolio_0 et_pb_portfolio  et_pb_bg_layout_light et_pb_filterable_portfolio_grid clearfix" data-posts-number="4">
<div class="et_pb_portfolio_filters clearfix"><ul class="clearfix"><li class="et_pb_portfolio_filter et_pb_portfolio_filter_all"><a href="#" class="active" data-category-slug="all">All</a></li><li class="et_pb_portfolio_filter"><a href="#" data-category-slug="device-strategy-branding">Device Strategy &amp; Branding</a></li><li class="et_pb_portfolio_filter"><a href="#" data-category-slug="global-branding">Global Branding</a></li><li class="et_pb_portfolio_filter"><a href="#" data-category-slug="patient-assessment-apps">Patient Assessment Apps</a></li><li class="et_pb_portfolio_filter"><a href="#" data-category-slug="pharma-branding">Pharma Branding</a></li><li class="et_pb_portfolio_filter"><a href="#" data-category-slug="treatment-adherence-apps">Treatment Adherence Apps</a></li></ul></div><!-- .et_pb_portfolio_filters -->
<div class="et_pb_portfolio_items_wrapper no_pagination">
<div class="et_pb_portfolio_items">				<div id="post-957" class="et_pb_portfolio_item et_pb_grid_item project_category_treatment-adherence-apps et_pb_filterable_portfolio_item_0_0 post-957 project type-project status-publish has-post-thumbnail hentry project_category-treatment-adherence-apps">
<a href="https://www.hansonzandi.com/project/zeezee-app/">
<span class="et_portfolio_image">
<img loading="lazy" src="https://www.hansonzandi.com/wp-content/uploads/2019/09/Monkey-400x284.jpg" alt="Zeezee App" class="" srcset="https://www.hansonzandi.com/wp-content/uploads/2019/09/Monkey.jpg 479w, https://www.hansonzandi.com/wp-content/uploads/2019/09/Monkey-400x284.jpg 480w " sizes="(max-width:479px) 479px, 100vw "  width="400" height="284" />								<span class="et_overlay"></span>							</span>
</a>
<p class="post-meta"><a href="https://www.hansonzandi.com/project_category/treatment-adherence-apps/" rel="tag">Treatment Adherence Apps</a></p>				</div><!-- .et_pb_portfolio_item -->
<div id="post-946" class="et_pb_portfolio_item et_pb_grid_item project_category_device-strategy-branding et_pb_filterable_portfolio_item_0_1 post-946 project type-project status-publish has-post-thumbnail hentry project_category-device-strategy-branding">
<a href="https://www.hansonzandi.com/project/iclosure/">
<span class="et_portfolio_image">
<img loading="lazy" src="https://www.hansonzandi.com/wp-content/uploads/2019/09/iClosure-400x284.jpg" alt="iClosure" class="" srcset="https://www.hansonzandi.com/wp-content/uploads/2019/09/iClosure.jpg 479w, https://www.hansonzandi.com/wp-content/uploads/2019/09/iClosure-400x284.jpg 480w " sizes="(max-width:479px) 479px, 100vw "  width="400" height="284" />								<span class="et_overlay"></span>							</span>
</a>
<p class="post-meta"><a href="https://www.hansonzandi.com/project_category/device-strategy-branding/" rel="tag">Device Strategy &amp; Branding</a></p>				</div><!-- .et_pb_portfolio_item -->
<div id="post-904" class="et_pb_portfolio_item et_pb_grid_item project_category_global-branding et_pb_filterable_portfolio_item_0_2 post-904 project type-project status-publish has-post-thumbnail hentry project_category-global-branding">
<a href="https://www.hansonzandi.com/project/sirtex-blue-man/">
<span class="et_portfolio_image">
<img loading="lazy" src="https://www.hansonzandi.com/wp-content/uploads/2019/07/Blue-Man-400x284.jpg" alt="Sirtex &#8211; Blue Man" class="" srcset="https://www.hansonzandi.com/wp-content/uploads/2019/07/Blue-Man.jpg 479w, https://www.hansonzandi.com/wp-content/uploads/2019/07/Blue-Man-400x284.jpg 480w " sizes="(max-width:479px) 479px, 100vw "  width="400" height="284" />								<span class="et_overlay"></span>							</span>
</a>
<p class="post-meta"><a href="https://www.hansonzandi.com/project_category/global-branding/" rel="tag">Global Branding</a></p>				</div><!-- .et_pb_portfolio_item -->
<div id="post-871" class="et_pb_portfolio_item et_pb_grid_item project_category_patient-assessment-apps et_pb_filterable_portfolio_item_0_3 post-871 project type-project status-publish has-post-thumbnail hentry project_category-patient-assessment-apps">
<a href="https://www.hansonzandi.com/project/nordicare-ipad-app/">
<span class="et_portfolio_image">
<img loading="lazy" src="https://www.hansonzandi.com/wp-content/uploads/2019/04/Nordicare-iPad-App-400x284.jpg" alt="Nordicare iPad App" class="" srcset="https://www.hansonzandi.com/wp-content/uploads/2019/04/Nordicare-iPad-App.jpg 479w, https://www.hansonzandi.com/wp-content/uploads/2019/04/Nordicare-iPad-App-400x284.jpg 480w " sizes="(max-width:479px) 479px, 100vw "  width="400" height="284" />								<span class="et_overlay"></span>							</span>
</a>
<p class="post-meta"><a href="https://www.hansonzandi.com/project_category/patient-assessment-apps/" rel="tag">Patient Assessment Apps</a></p>				</div><!-- .et_pb_portfolio_item -->
<div id="post-762" class="et_pb_portfolio_item et_pb_grid_item project_category_pharma-branding et_pb_filterable_portfolio_item_0_4 post-762 project type-project status-publish has-post-thumbnail hentry project_category-pharma-branding">
<a href="https://www.hansonzandi.com/project/fultium-d3-the-dark-truth/">
<span class="et_portfolio_image">
<img loading="lazy" src="https://www.hansonzandi.com/wp-content/uploads/2019/04/Filtium-D3-DPS-Light-400x284.jpg" alt="Fultium-D3" class="" srcset="https://www.hansonzandi.com/wp-content/uploads/2019/04/Filtium-D3-DPS-Light.jpg 479w, https://www.hansonzandi.com/wp-content/uploads/2019/04/Filtium-D3-DPS-Light-400x284.jpg 480w " sizes="(max-width:479px) 479px, 100vw "  width="400" height="284" />								<span class="et_overlay"></span>							</span>
</a>
<p class="post-meta"><a href="https://www.hansonzandi.com/project_category/pharma-branding/" rel="tag">Pharma Branding</a></p>				</div><!-- .et_pb_portfolio_item -->
</div><!-- .et_pb_portfolio_items -->
</div>
</div> <!-- .et_pb_filterable_portfolio -->
</div> <!-- .et_pb_column -->
</div> <!-- .et_pb_row -->
</div> <!-- .et_pb_section -->		</div><!-- .et_builder_inner_content -->
</div><!-- .et-l -->
</div><!-- #et-boc -->
</div> <!-- .entry-content -->
</article> <!-- .et_pb_post -->
</div> <!-- #main-content -->

<span class="et_pb_scroll_top et-pb-icon"></span>
<footer id="main-footer">
<div class="et_pb_section et_pb_section_4 et_pb_with_background et_section_regular" >
<div class="et_pb_row et_pb_row_2">
<div class="et_pb_column et_pb_column_4_4 et_pb_column_2  et_pb_css_mix_blend_mode_passthrough et-last-child">
<div class="et_pb_module et_pb_image et_pb_image_0">
<span class="et_pb_image_wrap "><img src="https://www.hansonzandi.com/wp-content/uploads/2019/04/hps_hanson-zandi_white_red-dot.png" alt="" title="" height="auto" width="auto" srcset="https://www.hansonzandi.com/wp-content/uploads/2019/04/hps_hanson-zandi_white_red-dot.png 900w, https://www.hansonzandi.com/wp-content/uploads/2019/04/hps_hanson-zandi_white_red-dot-480x60.png 480w" sizes="(min-width: 0px) and (max-width: 480px) 480px, (min-width: 481px) 900px, 100vw" class="wp-image-19" /></span>
</div><div class="et_pb_module et_pb_text et_pb_text_1  et_pb_text_align_center et_pb_bg_layout_light">
<div class="et_pb_text_inner"><a href="/~hansonzandi/legal">Legal</a> | <a href="/privacy-policy">Privacy Policy</a> | <a href="/cookies-policy">Cookies Policy</a> | © Hanson Zandi Advertising Ltd 2020 | Registered in England &amp; Wales. Company No. 01927454<br />
Hanson Zandi Advertising Ltd, Boyne Dene, Boyn Hill Road, Maidenhead, Berks SL6 4HF</p>
<p><a href="https://www.hansonzandi.com/hps-group-general-ts-and-cs" target="blank" rel="noopener noreferrer"><strong>Terms and Conditions</strong></a></div>
</div> <!-- .et_pb_text -->
</div> <!-- .et_pb_column -->
</div> <!-- .et_pb_row -->
</div> <!-- .et_pb_section -->				
<div id="et-footer-nav">
<div class="container">
</div>
</div> <!-- #et-footer-nav -->
<div id="footer-bottom">
<div class="container clearfix">
<ul class="et-social-icons">
<li class="et-social-icon et-social-facebook">
<a href="https://www.facebook.com/HansonZandi" target="_blank" class="icon">
<span>Facebook</span>
</a>
</li>
<li class="et-social-icon et-social-twitter">
<a href="https://twitter.com/hansonzandi" target="_blank" class="icon">
<span>Twitter</span>
</a>
</li>
<li class="et-social-icon et-social-instagram">
<a href="https://www.instagram.com/hansonzandi" target="_blank" class="icon">
<span>Instagram</span>
</a>
</li>
<li class="et-social-icon et-social-pinterest">
<a href="https://www.pinterest.co.uk/hansonzandi/" target="_blank" class="icon">
<span>Pinterest</span>
</a>
</li>
<li class="et-social-icon et-social-vimeo">
<a href="https://vimeo.com/hansonzandi" target="_blank" class="icon">
<span>Vimeo</span>
</a>
</li>
<li class="et-social-icon et-social-linkedin">
<a href="https://www.linkedin.com/company/hanson-zandi-advertising-ltd/about/" target="_blank" class="icon">
<span>Linkedin</span>
</a>
</li>
<li class="et-social-icon et-social-youtube">
<a href="https://www.youtube.com/user/HansonZandi/" target="_blank" class="icon">
<span>Youtube</span>
</a>
</li>
</ul>					</div>	<!-- .container -->
</div>
</footer> <!-- #main-footer -->
</div> <!-- #et-main-area -->
</div> <!-- #page-container -->
<!--googleoff: all--><div id="cookie-law-info-bar"><span>To get the best experience from our website we need to use cookies. By continuing to browse our site you agree to let us use cookies. Read our <a href="/cookies-policy/" target="_self"><strong>cookies policy</strong></a>.<a role='button' tabindex='0' data-cli_action="accept" id="cookie_action_close_header"  class="small cli-plugin-button cli-plugin-main-button cookie_action_close_header cli_action_button" style="display:inline-block;  margin:5px; ">CONTINUE</a></span></div><div id="cookie-law-info-again" style="display:none;"><span id="cookie_hdr_showagain">Privacy & Cookies Policy</span></div><div class="cli-modal" id="cliSettingsPopup" tabindex="-1" role="dialog" aria-labelledby="cliSettingsPopup" aria-hidden="true">
<div class="cli-modal-dialog" role="document">
<div class="cli-modal-content cli-bar-popup">
<button type="button" class="cli-modal-close" id="cliModalClose">
<svg class="" viewBox="0 0 24 24"><path d="M19 6.41l-1.41-1.41-5.59 5.59-5.59-5.59-1.41 1.41 5.59 5.59-5.59 5.59 1.41 1.41 5.59-5.59 5.59 5.59 1.41-1.41-5.59-5.59z"></path><path d="M0 0h24v24h-24z" fill="none"></path></svg>
<span class="wt-cli-sr-only">Close</span>
</button>
<div class="cli-modal-body">
<div class="cli-container-fluid cli-tab-container">
<div class="cli-row">
<div class="cli-col-12 cli-align-items-stretch cli-px-0">
<div class="cli-privacy-overview">
<h4>Privacy Overview</h4>                <div class="cli-privacy-content">
<div class="cli-privacy-content-text">This website uses cookies to improve your experience while you navigate through the website. Out of these cookies, the cookies that are categorized as necessary are stored on your browser as they are essential for the working of basic functionalities of the website. We also use third-party cookies that help us analyze and understand how you use this website. These cookies will be stored in your browser only with your consent. You also have the option to opt-out of these cookies. But opting out of some of these cookies may have an effect on your browsing experience.</div>
</div>
<a class="cli-privacy-readmore" data-readmore-text="Show more" data-readless-text="Show less"></a>            </div>
</div>
<div class="cli-col-12 cli-align-items-stretch cli-px-0 cli-tab-section-container">
<div class="cli-tab-section">
<div class="cli-tab-header">
<a role="button" tabindex="0" class="cli-nav-link cli-settings-mobile" data-target="necessary" data-toggle="cli-toggle-tab">
Necessary                            </a>
<div class="wt-cli-necessary-checkbox">
<input type="checkbox" class="cli-user-preference-checkbox"  id="wt-cli-checkbox-necessary" data-id="checkbox-necessary" checked="checked"  />
<label class="form-check-label" for="wt-cli-checkbox-necessary">Necessary</label>
</div>
<span class="cli-necessary-caption">Always Enabled</span>                         </div>
<div class="cli-tab-content">
<div class="cli-tab-pane cli-fade" data-id="necessary">
<p>Necessary cookies are absolutely essential for the website to function properly. This category only includes cookies that ensures basic functionalities and security features of the website. These cookies do not store any personal information.</p>
</div>
</div>
</div>
<div class="cli-tab-section">
<div class="cli-tab-header">
<a role="button" tabindex="0" class="cli-nav-link cli-settings-mobile" data-target="non-necessary" data-toggle="cli-toggle-tab">
Non-necessary                            </a>
<div class="cli-switch">
<input type="checkbox" id="wt-cli-checkbox-non-necessary" class="cli-user-preference-checkbox"  data-id="checkbox-non-necessary"  checked='checked' />
<label for="wt-cli-checkbox-non-necessary" class="cli-slider" data-cli-enable="Enabled" data-cli-disable="Disabled"><span class="wt-cli-sr-only">Non-necessary</span></label>
</div>                        </div>
<div class="cli-tab-content">
<div class="cli-tab-pane cli-fade" data-id="non-necessary">
<p>Any cookies that may not be particularly necessary for the website to function and is used specifically to collect user personal data via analytics, ads, other embedded contents are termed as non-necessary cookies. It is mandatory to procure user consent prior to running these cookies on your website.</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="cli-modal-backdrop cli-fade cli-settings-overlay"></div>
<div class="cli-modal-backdrop cli-fade cli-popupbar-overlay"></div>
<!--googleon: all--><script type='text/javascript' id='et-builder-modules-global-functions-script-js-extra'>
/* <![CDATA[ */
var et_builder_utils_params = {"condition":{"diviTheme":true,"extraTheme":false},"scrollLocations":["app","top"],"builderScrollLocations":{"desktop":"app","tablet":"app","phone":"app"},"onloadScrollLocation":"app","builderType":"fe"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-content/themes/Divi/includes/builder/frontend-builder/build/frontend-builder-global-functions.js?ver=4.6.5' id='et-builder-modules-global-functions-script-js'></script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-content/plugins/popups-for-divi/js/front.js?ver=2.2.3' id='js-divi-area-js'></script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-content/themes/Divi/includes/builder/scripts/ext/jquery.mobile.custom.min.js?ver=4.6.5' id='et-jquery-touch-mobile-js'></script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-includes/js/jquery/ui/effect.min.js?ver=1.11.4' id='jquery-effects-core-js'></script>
<script type='text/javascript' id='divi-custom-script-js-extra'>
/* <![CDATA[ */
var DIVI = {"item_count":"%d Item","items_count":"%d Items"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-content/themes/Divi/js/custom.js?ver=4.6.5' id='divi-custom-script-js'></script>
<script type='text/javascript' id='et-builder-modules-script-js-extra'>
/* <![CDATA[ */
var et_frontend_scripts = {"builderCssContainerPrefix":"#et-boc","builderCssLayoutPrefix":"#et-boc .et-l"};
var et_pb_custom = {"ajaxurl":"https:\/\/www.hansonzandi.com\/hzadmin\/admin-ajax.php","images_uri":"https:\/\/www.hansonzandi.com\/wp-content\/themes\/Divi\/images","builder_images_uri":"https:\/\/www.hansonzandi.com\/wp-content\/themes\/Divi\/includes\/builder\/images","et_frontend_nonce":"ac3ec6a4b4","subscription_failed":"Please, check the fields below to make sure you entered the correct information.","et_ab_log_nonce":"bceee16766","fill_message":"Please, fill in the following fields:","contact_error_message":"Please, fix the following errors:","invalid":"Invalid email","captcha":"Captcha","prev":"Prev","previous":"Previous","next":"Next","wrong_captcha":"You entered the wrong number in captcha.","wrong_checkbox":"Checkbox","ignore_waypoints":"no","is_divi_theme_used":"1","widget_search_selector":".widget_search","ab_tests":[],"is_ab_testing_active":"","page_id":"22","unique_test_id":"","ab_bounce_rate":"5","is_cache_plugin_active":"yes","is_shortcode_tracking":"","tinymce_uri":""};
var et_pb_box_shadow_elements = [];
var et_pb_motion_elements = {"desktop":[],"tablet":[],"phone":[]};
var et_pb_sticky_elements = [];
/* ]]> */
</script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-content/themes/Divi/includes/builder/frontend-builder/build/frontend-builder-scripts.js?ver=4.6.5' id='et-builder-modules-script-js'></script>
<script type='text/javascript' id='Divi-Blog-Extras-frontend-bundle-js-extra'>
/* <![CDATA[ */
var DiviBlogExtrasFrontendData = {"ajaxurl":"https:\/\/www.hansonzandi.com\/hzadmin\/admin-ajax.php","ajax_nonce":"25d3b81bbb","et_theme_accent_color":"#d6001c"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-content/plugins/Divi-Blog-Extras/scripts/frontend-bundle.min.js?ver=2.5.3' id='Divi-Blog-Extras-frontend-bundle-js'></script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-content/themes/Divi/includes/builder/scripts/ext/jquery.fitvids.js?ver=4.6.5' id='divi-fitvids-js'></script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-content/themes/Divi/includes/builder/scripts/ext/waypoints.min.js?ver=4.6.5' id='waypoints-js'></script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-content/themes/Divi/includes/builder/scripts/ext/jquery.magnific-popup.js?ver=4.6.5' id='magnific-popup-js'></script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-content/themes/Divi/core/admin/js/common.js?ver=4.6.5' id='et-core-common-js'></script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-includes/js/wp-embed.min.js?ver=5.5.1' id='wp-embed-js'></script>
<script type='text/javascript' src='https://www.hansonzandi.com/wp-content/themes/Divi/includes/builder/scripts/ext/jquery.hashchange.js?ver=4.6.5' id='hashchange-js'></script>
<style id="et-builder-module-design-22-cached-inline-styles">.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h1,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h2.et_pb_module_header,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h3.et_pb_module_header,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h4.et_pb_module_header,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h5.et_pb_module_header,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h6.et_pb_module_header{font-size:100px;color:#d6001c!important;text-shadow:0em 0em 0.3em rgba(0,0,0,0.4)}.et_pb_fullwidth_header.et_pb_fullwidth_header_0{background-image:url(https://www.hansonzandi.com/wp-content/uploads/2019/04/Bridge.jpg);background-color:#d6001c}.et_pb_fullwidth_header_0.et_pb_fullwidth_header .et_pb_fullwidth_header_scroll a .et-pb-icon{color:#ffffff;font-size:100px}.et_pb_section_1.et_pb_section{padding-top:0px;padding-bottom:0px}.et_pb_section_2.et_pb_section{padding-top:0px;padding-bottom:0px}.et_pb_text_0.et_pb_text{color:#8e8e8e!important}.et_pb_text_0{font-size:22px;margin-bottom:0px!important;max-width:700px}.et_pb_text_0 h1{color:#000000!important}.et_pb_text_0 h2{font-size:80px;color:#d6001c!important}body #page-container .et_pb_section .et_pb_button_0{color:#8e8e8e!important;border-width:8px!important;border-color:#e5e5e5;border-radius:100px;text-transform:uppercase!important}body #page-container .et_pb_section .et_pb_button_0,body #page-container .et_pb_section .et_pb_button_0:hover{padding:0.3em 1em!important}body #page-container .et_pb_section .et_pb_button_0:before,body #page-container .et_pb_section .et_pb_button_0:after{display:none!important}body #page-container .et_pb_section .et_pb_button_0:hover{background-image:initial;background-color:#e5e5e5}.et_pb_button_0{transition:background-color 300ms ease 0ms}.et_pb_button_0,.et_pb_button_0:after{transition:all 300ms ease 0ms}.et_pb_row_1,body #page-container .et-db #et-boc .et-l .et_pb_row_1.et_pb_row,body.et_pb_pagebuilder_layout.single #page-container #et-boc .et-l .et_pb_row_1.et_pb_row,body.et_pb_pagebuilder_layout.single.et_full_width_page #page-container #et-boc .et-l .et_pb_row_1.et_pb_row{width:100%;max-width:100%}.et_pb_filterable_portfolio_0.et_pb_filterable_portfolio h2,.et_pb_filterable_portfolio_0.et_pb_filterable_portfolio .et_pb_module_header{color:#ffffff!important}.et_pb_text_1.et_pb_text{color:#ffffff!important}.et_pb_filterable_portfolio_0.et_pb_filterable_portfolio .post-meta,.et_pb_filterable_portfolio_0.et_pb_filterable_portfolio .post-meta a{font-family:'Montserrat',Helvetica,Arial,Lucida,sans-serif;font-weight:900;text-transform:uppercase;font-size:22px;color:#ffffff!important;line-height:1em;text-align:center}.et_pb_filterable_portfolio_0.et_pb_filterable_portfolio{padding-right:0px}.et_pb_filterable_portfolio_0 .et_overlay{background-color:rgba(214,0,28,0.45);border-color:rgba(214,0,28,0.45)}.et_pb_section_3.et_pb_section{padding-bottom:0px}.et_pb_section_4.et_pb_section{padding-bottom:0px;background-color:#000000!important}.et_pb_image_0{text-align:center}.et_pb_text_1 h1{color:rgba(0,0,0,0)!important}.et_pb_text_1 h3{font-size:40px;color:#d6001c!important}.et_pb_text_0.et_pb_module{margin-left:auto!important;margin-right:auto!important}.et_pb_row_1.et_pb_row{padding-top:0px!important;padding-bottom:0px!important;margin-left:auto!important;margin-right:auto!important;padding-top:0px;padding-bottom:0px}@media only screen and (min-width:981px){.et_pb_image_0{max-width:30%}}@media only screen and (max-width:980px){.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h1,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h2.et_pb_module_header,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h3.et_pb_module_header,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h4.et_pb_module_header,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h5.et_pb_module_header,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h6.et_pb_module_header{font-size:80px}.et_pb_fullwidth_header_0.et_pb_fullwidth_header .et_pb_fullwidth_header_scroll a .et-pb-icon{font-size:70px}.et_pb_text_0 h2{font-size:50px}.et_pb_filterable_portfolio_0.et_pb_filterable_portfolio .post-meta,.et_pb_filterable_portfolio_0.et_pb_filterable_portfolio .post-meta a{font-size:14px}.et_pb_image_0{max-width:40%;margin-left:auto;margin-right:auto}.et_pb_text_1 h3{font-size:40px}}@media only screen and (max-width:767px){.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h1,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h2.et_pb_module_header,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h3.et_pb_module_header,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h4.et_pb_module_header,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h5.et_pb_module_header,.et_pb_fullwidth_header_0.et_pb_fullwidth_header .header-content h6.et_pb_module_header{font-size:30px}.et_pb_text_0 h2{font-size:30px}.et_pb_text_1 h3{font-size:30px}.et_pb_fullwidth_header_0.et_pb_fullwidth_header .et_pb_fullwidth_header_scroll a .et-pb-icon{font-size:50px}.et_pb_filterable_portfolio_0.et_pb_filterable_portfolio .post-meta,.et_pb_filterable_portfolio_0.et_pb_filterable_portfolio .post-meta a{font-size:18px}.et_pb_image_0{max-width:60%;margin-left:auto;margin-right:auto}}</style></body>
</html><!-- WP Fastest Cache file was created in 1.0878238677979 seconds, on 07-10-20 16:33:19 -->