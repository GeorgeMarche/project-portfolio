




<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
  <link rel="dns-prefetch" href="https://github.githubassets.com">
  <link rel="dns-prefetch" href="https://avatars0.githubusercontent.com">
  <link rel="dns-prefetch" href="https://avatars1.githubusercontent.com">
  <link rel="dns-prefetch" href="https://avatars2.githubusercontent.com">
  <link rel="dns-prefetch" href="https://avatars3.githubusercontent.com">
  <link rel="dns-prefetch" href="https://github-cloud.s3.amazonaws.com">
  <link rel="dns-prefetch" href="https://user-images.githubusercontent.com/">



  <link crossorigin="anonymous" media="all" integrity="sha512-QV1ZNBjZz8stPx+uh4ZAKc6AJ1z8A9VHut/SGtgbc+iYLfhrh68QmDH3rZgkXJ0BWIOcDw+ILnWcctH0ljcHPg==" rel="stylesheet" href="https://github.githubassets.com/assets/frameworks-415d593418d9cfcb2d3f1fae87864029.css" />
  <link crossorigin="anonymous" media="all" integrity="sha512-RrluFa2S4tIjNYXwoPdp/jWoF3I5t938HEFz5AQnYW3lWFcB2jUDMl3BvG7oHTAr0x5ktPgXxz5bZxE927UCeQ==" rel="stylesheet" href="https://github.githubassets.com/assets/site-46b96e15ad92e2d2233585f0a0f769fe.css" />
    <link crossorigin="anonymous" media="all" integrity="sha512-aJV4q0e7KuxKEskucoeEs1BTBABktR0oGbAOUtEucESgn5Jiu1pxyjtM5s0Pwc+aZUT3Fq4BEZQsQFZv1mFMMg==" rel="stylesheet" href="https://github.githubassets.com/assets/github-689578ab47bb2aec4a12c92e728784b3.css" />
    
    
    
    


  <meta name="viewport" content="width=device-width">
  
  <title>GitHub - aol/cyclops: An advanced, but easy to use, platform for writing functional applications in Java 8.</title>
    <meta name="description" content="An advanced, but easy to use, platform for writing functional applications in Java 8. - aol/cyclops">
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
  <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
  <meta property="fb:app_id" content="1401488693436528">
  <meta name="apple-itunes-app" content="app-id=1477376905">

    <meta name="twitter:image:src" content="https://avatars2.githubusercontent.com/u/855409?s=400&amp;v=4" /><meta name="twitter:site" content="@github" /><meta name="twitter:card" content="summary" /><meta name="twitter:title" content="aol/cyclops" /><meta name="twitter:description" content="An advanced, but easy to use, platform for writing functional applications in Java 8. - aol/cyclops" />
    <meta property="og:image" content="https://avatars2.githubusercontent.com/u/855409?s=400&amp;v=4" /><meta property="og:site_name" content="GitHub" /><meta property="og:type" content="object" /><meta property="og:title" content="aol/cyclops" /><meta property="og:url" content="https://github.com/aol/cyclops" /><meta property="og:description" content="An advanced, but easy to use, platform for writing functional applications in Java 8. - aol/cyclops" />



  

  <link rel="assets" href="https://github.githubassets.com/">
  

  <meta name="request-id" content="DC1D:1995:33DEACD:4D0B688:5F87437F" data-pjax-transient="true"/><meta name="html-safe-nonce" content="e692e286b375273347562caa14266985a9bbd0ee" data-pjax-transient="true"/><meta name="visitor-payload" content="eyJyZWZlcnJlciI6IiIsInJlcXVlc3RfaWQiOiJEQzFEOjE5OTU6MzNERUFDRDo0RDBCNjg4OjVGODc0MzdGIiwidmlzaXRvcl9pZCI6Ijc4OTgzNjcxODg3NTgxMTkyOTUiLCJyZWdpb25fZWRnZSI6ImlhZCIsInJlZ2lvbl9yZW5kZXIiOiJpYWQifQ==" data-pjax-transient="true"/><meta name="visitor-hmac" content="adc656bfbd3a07168c8995339d231406658a091a8498617a7a71f7a55be61c6d" data-pjax-transient="true"/><meta name="cookie-consent-required" content="false" data-pjax-transient="true"/>

    <meta name="hovercard-subject-tag" content="repository:29557376" data-pjax-transient>


  <meta name="github-keyboard-shortcuts" content="repository" data-pjax-transient="true" />

  

  <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="c1kuD-K2HIVF635lypcsWPoD4kilo5-jA_wBFyT4uMY">
  <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
  <meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
  <meta name="google-site-verification" content="GXs5KoUUkNCoaAZn7wPN-t01Pywp9M3sEjnt_3_ZWPc">

  <meta name="octolytics-host" content="collector.githubapp.com" /><meta name="octolytics-app-id" content="github" /><meta name="octolytics-event-url" content="https://collector.githubapp.com/github-external/browser_event" /><meta name="octolytics-dimension-ga_id" content="" class="js-octo-ga-id" />

  <meta name="analytics-location" content="/&lt;user-name&gt;/&lt;repo-name&gt;" data-pjax-transient="true" />

  





    <meta name="google-analytics" content="UA-3769691-2">


<meta class="js-ga-set" name="dimension10" content="Responsive" data-pjax-transient>

<meta class="js-ga-set" name="dimension1" content="Logged Out">



  

      <meta name="hostname" content="github.com">
    <meta name="user-login" content="">


      <meta name="expected-hostname" content="github.com">


    <meta name="enabled-features" content="MARKETPLACE_PENDING_INSTALLATIONS">

  <meta http-equiv="x-pjax-version" content="48a355b06b24ba94b4b83765304ca2fdcd28078f4c24beb1065367d7f668cbdb">
  

        <link href="https://github.com/aol/cyclops/commits/master.atom" rel="alternate" title="Recent Commits to cyclops:master" type="application/atom+xml">

  <meta name="go-import" content="github.com/aol/cyclops git https://github.com/aol/cyclops.git">

  <meta name="octolytics-dimension-user_id" content="855409" /><meta name="octolytics-dimension-user_login" content="aol" /><meta name="octolytics-dimension-repository_id" content="29557376" /><meta name="octolytics-dimension-repository_nwo" content="aol/cyclops" /><meta name="octolytics-dimension-repository_public" content="true" /><meta name="octolytics-dimension-repository_is_fork" content="false" /><meta name="octolytics-dimension-repository_network_root_id" content="29557376" /><meta name="octolytics-dimension-repository_network_root_nwo" content="aol/cyclops" /><meta name="octolytics-dimension-repository_explore_github_marketplace_ci_cta_shown" content="false" />


    <link rel="canonical" href="https://github.com/aol/cyclops" data-pjax-transient>


  <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">

  <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">

  <link rel="mask-icon" href="https://github.githubassets.com/pinned-octocat.svg" color="#000000">
  <link rel="alternate icon" class="js-site-favicon" type="image/png" href="https://github.githubassets.com/favicons/favicon.png">
  <link rel="icon" class="js-site-favicon" type="image/svg+xml" href="https://github.githubassets.com/favicons/favicon.svg">

<meta name="theme-color" content="#1e2327">


  <link rel="manifest" href="/manifest.json" crossOrigin="use-credentials">

  </head>

  <body class="logged-out env-production page-responsive">
    

    <div class="position-relative js-header-wrapper ">
      <a href="#start-of-content" class="px-2 py-4 bg-blue text-white show-on-focus js-skip-to-content">Skip to content</a>
      <span class="progress-pjax-loader width-full js-pjax-loader-bar Progress position-fixed">
    <span style="background-color: #79b8ff;width: 0%;" class="Progress-item progress-pjax-loader-bar "></span>
</span>      
      


          <header class="Header-old header-logged-out js-details-container Details position-relative f4 py-2" role="banner">
  <div class="container-xl d-lg-flex flex-items-center p-responsive">
    <div class="d-flex flex-justify-between flex-items-center">
        <a class="mr-4" href="https://github.com/" aria-label="Homepage" data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
          <svg height="32" class="octicon octicon-mark-github text-white" viewBox="0 0 16 16" version="1.1" width="32" aria-hidden="true"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path></svg>
        </a>

          <div class="d-lg-none css-truncate css-truncate-target width-fit p-2">
            

          </div>

        <div class="d-flex flex-items-center">
              <a href="/join?ref_cta=Sign+up&amp;ref_loc=header+logged+out&amp;ref_page=%2F%3Cuser-name%3E%2F%3Crepo-name%3E&amp;source=header-repo"
                class="d-inline-block d-lg-none f5 text-white no-underline border border-gray-dark rounded-2 px-2 py-1 mr-3 mr-sm-5"
                data-hydro-click="{&quot;event_type&quot;:&quot;authentication.click&quot;,&quot;payload&quot;:{&quot;location_in_page&quot;:&quot;site header&quot;,&quot;repository_id&quot;:null,&quot;auth_type&quot;:&quot;SIGN_UP&quot;,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="7948b4fc15157b143b00d8a2199e14f52eebdf07d3d2faea75f027e3adbfe19a"
                data-ga-click="Sign up, click to sign up for account, ref_page:/&lt;user-name&gt;/&lt;repo-name&gt;;ref_cta:Sign up;ref_loc:header logged out">
                Sign&nbsp;up
              </a>

          <button class="btn-link d-lg-none mt-1 js-details-target" type="button" aria-label="Toggle navigation" aria-expanded="false">
            <svg height="24" class="octicon octicon-three-bars text-white" viewBox="0 0 16 16" version="1.1" width="24" aria-hidden="true"><path fill-rule="evenodd" d="M1 2.75A.75.75 0 011.75 2h12.5a.75.75 0 110 1.5H1.75A.75.75 0 011 2.75zm0 5A.75.75 0 011.75 7h12.5a.75.75 0 110 1.5H1.75A.75.75 0 011 7.75zM1.75 12a.75.75 0 100 1.5h12.5a.75.75 0 100-1.5H1.75z"></path></svg>
          </button>
        </div>
    </div>

    <div class="HeaderMenu HeaderMenu--logged-out position-fixed top-0 right-0 bottom-0 height-fit position-lg-relative d-lg-flex flex-justify-between flex-items-center flex-auto">
      <div class="d-flex d-lg-none flex-justify-end border-bottom bg-gray-light p-3">
        <button class="btn-link js-details-target" type="button" aria-label="Toggle navigation" aria-expanded="false">
          <svg height="24" class="octicon octicon-x text-gray" viewBox="0 0 24 24" version="1.1" width="24" aria-hidden="true"><path fill-rule="evenodd" d="M5.72 5.72a.75.75 0 011.06 0L12 10.94l5.22-5.22a.75.75 0 111.06 1.06L13.06 12l5.22 5.22a.75.75 0 11-1.06 1.06L12 13.06l-5.22 5.22a.75.75 0 01-1.06-1.06L10.94 12 5.72 6.78a.75.75 0 010-1.06z"></path></svg>
        </button>
      </div>

        <nav class="mt-0 px-3 px-lg-0 mb-5 mb-lg-0" aria-label="Global">
          <ul class="d-lg-flex list-style-none">
              <li class="d-block d-lg-flex flex-lg-nowrap flex-lg-items-center border-bottom border-lg-bottom-0 mr-0 mr-lg-3 edge-item-fix position-relative flex-wrap flex-justify-between d-flex flex-items-center ">
                <details class="HeaderMenu-details details-overlay details-reset width-full">
                  <summary class="HeaderMenu-summary HeaderMenu-link px-0 py-3 border-0 no-wrap d-block d-lg-inline-block">
                    Why GitHub?
                    <svg x="0px" y="0px" viewBox="0 0 14 8" xml:space="preserve" fill="none" class="icon-chevon-down-mktg position-absolute position-lg-relative">
                      <path d="M1,1l6.2,6L13,1"></path>
                    </svg>
                  </summary>
                  <div class="dropdown-menu flex-auto rounded-1 bg-white px-0 mt-0 pb-4 p-lg-4 position-relative position-lg-absolute left-0 left-lg-n4">
                    <a href="/features" class="py-2 lh-condensed-ultra d-block link-gray-dark no-underline h5 Bump-link--hover" data-ga-click="(Logged out) Header, go to Features">Features <span class="Bump-link-symbol float-right text-normal text-gray-light">&rarr;</span></a>
                    <ul class="list-style-none f5 pb-3">
                      <li class="edge-item-fix"><a href="/features/code-review/" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Code review">Code review</a></li>
                      <li class="edge-item-fix"><a href="/features/project-management/" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Project management">Project management</a></li>
                      <li class="edge-item-fix"><a href="/features/integrations" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Integrations">Integrations</a></li>
                      <li class="edge-item-fix"><a href="/features/actions" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Actions">Actions</a></li>
                      <li class="edge-item-fix"><a href="/features/packages" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to GitHub Packages">Packages</a></li>
                      <li class="edge-item-fix"><a href="/features/security" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Security">Security</a></li>
                      <li class="edge-item-fix"><a href="/features#team-management" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Team management">Team management</a></li>
                      <li class="edge-item-fix"><a href="/features#hosting" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Code hosting">Hosting</a></li>
                      <li class="edge-item-fix hide-xl"><a href="/mobile" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Mobile">Mobile</a></li>
                    </ul>

                    <ul class="list-style-none mb-0 border-lg-top pt-lg-3">
                      <li class="edge-item-fix"><a href="/customer-stories" class="py-2 lh-condensed-ultra d-block no-underline link-gray-dark no-underline h5 Bump-link--hover" data-ga-click="(Logged out) Header, go to Customer stories">Customer stories <span class="Bump-link-symbol float-right text-normal text-gray-light">&rarr;</span></a></li>
                      <li class="edge-item-fix"><a href="/security" class="py-2 lh-condensed-ultra d-block no-underline link-gray-dark no-underline h5 Bump-link--hover" data-ga-click="(Logged out) Header, go to Security">Security <span class="Bump-link-symbol float-right text-normal text-gray-light">&rarr;</span></a></li>
                    </ul>
                  </div>
                </details>
              </li>
              <li class="border-bottom border-lg-bottom-0 mr-0 mr-lg-3">
                <a href="/team" class="HeaderMenu-link no-underline py-3 d-block d-lg-inline-block" data-ga-click="(Logged out) Header, go to Team">Team</a>
              </li>
              <li class="border-bottom border-lg-bottom-0 mr-0 mr-lg-3">
                <a href="/enterprise" class="HeaderMenu-link no-underline py-3 d-block d-lg-inline-block" data-ga-click="(Logged out) Header, go to Enterprise">Enterprise</a>
              </li>

              <li class="d-block d-lg-flex flex-lg-nowrap flex-lg-items-center border-bottom border-lg-bottom-0 mr-0 mr-lg-3 edge-item-fix position-relative flex-wrap flex-justify-between d-flex flex-items-center ">
                <details class="HeaderMenu-details details-overlay details-reset width-full">
                  <summary class="HeaderMenu-summary HeaderMenu-link px-0 py-3 border-0 no-wrap d-block d-lg-inline-block">
                    Explore
                    <svg x="0px" y="0px" viewBox="0 0 14 8" xml:space="preserve" fill="none" class="icon-chevon-down-mktg position-absolute position-lg-relative">
                      <path d="M1,1l6.2,6L13,1"></path>
                    </svg>
                  </summary>

                  <div class="dropdown-menu flex-auto rounded-1 bg-white px-0 pt-2 pb-0 mt-0 pb-4 p-lg-4 position-relative position-lg-absolute left-0 left-lg-n4">
                    <ul class="list-style-none mb-3">
                      <li class="edge-item-fix"><a href="/explore" class="py-2 lh-condensed-ultra d-block link-gray-dark no-underline h5 Bump-link--hover" data-ga-click="(Logged out) Header, go to Explore">Explore GitHub <span class="Bump-link-symbol float-right text-normal text-gray-light">&rarr;</span></a></li>
                    </ul>

                    <h4 class="text-gray-light text-normal text-mono f5 mb-2 border-lg-top pt-lg-3">Learn &amp; contribute</h4>
                    <ul class="list-style-none mb-3">
                      <li class="edge-item-fix"><a href="/topics" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Topics">Topics</a></li>
                        <li class="edge-item-fix"><a href="/collections" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Collections">Collections</a></li>
                      <li class="edge-item-fix"><a href="/trending" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Trending">Trending</a></li>
                      <li class="edge-item-fix"><a href="https://lab.github.com/" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Learning lab">Learning Lab</a></li>
                      <li class="edge-item-fix"><a href="https://opensource.guide" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Open source guides">Open source guides</a></li>
                    </ul>

                    <h4 class="text-gray-light text-normal text-mono f5 mb-2 border-lg-top pt-lg-3">Connect with others</h4>
                    <ul class="list-style-none mb-0">
                      <li class="edge-item-fix"><a href="https://github.com/events" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Events">Events</a></li>
                      <li class="edge-item-fix"><a href="https://github.community" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Community forum">Community forum</a></li>
                      <li class="edge-item-fix"><a href="https://education.github.com" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to GitHub Education">GitHub Education</a></li>
                      <li class="edge-item-fix"><a href="https://stars.github.com" class="py-2 pb-0 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to GitHub Stars Program">GitHub Stars program</a></li>
                    </ul>
                  </div>
                </details>
              </li>

              <li class="border-bottom border-lg-bottom-0 mr-0 mr-lg-3">
                <a href="/marketplace" class="HeaderMenu-link no-underline py-3 d-block d-lg-inline-block" data-ga-click="(Logged out) Header, go to Marketplace">Marketplace</a>
              </li>

              <li class="d-block d-lg-flex flex-lg-nowrap flex-lg-items-center border-bottom border-lg-bottom-0 mr-0 mr-lg-3 edge-item-fix position-relative flex-wrap flex-justify-between d-flex flex-items-center ">
                <details class="HeaderMenu-details details-overlay details-reset width-full">
                  <summary class="HeaderMenu-summary HeaderMenu-link px-0 py-3 border-0 no-wrap d-block d-lg-inline-block">
                    Pricing
                    <svg x="0px" y="0px" viewBox="0 0 14 8" xml:space="preserve" fill="none" class="icon-chevon-down-mktg position-absolute position-lg-relative">
                       <path d="M1,1l6.2,6L13,1"></path>
                    </svg>
                  </summary>

                  <div class="dropdown-menu flex-auto rounded-1 bg-white px-0 pt-2 pb-4 mt-0 p-lg-4 position-relative position-lg-absolute left-0 left-lg-n4">
                    <a href="/pricing" class="pb-2 lh-condensed-ultra d-block link-gray-dark no-underline h5 Bump-link--hover" data-ga-click="(Logged out) Header, go to Pricing">Plans <span class="Bump-link-symbol float-right text-normal text-gray-light">&rarr;</span></a>

                    <ul class="list-style-none mb-3">
                      <li class="edge-item-fix"><a href="/pricing#feature-comparison" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Compare plans">Compare plans</a></li>
                      <li class="edge-item-fix"><a href="https://enterprise.github.com/contact" class="py-2 lh-condensed-ultra d-block link-gray no-underline f5" data-ga-click="(Logged out) Header, go to Contact Sales">Contact Sales</a></li>
                    </ul>

                    <ul class="list-style-none mb-0 border-lg-top pt-lg-3">
                      <li class="edge-item-fix"><a href="/nonprofit" class="py-2 lh-condensed-ultra d-block no-underline link-gray-dark no-underline h5 Bump-link--hover" data-ga-click="(Logged out) Header, go to Nonprofits">Nonprofit <span class="Bump-link-symbol float-right text-normal text-gray-light">&rarr;</span></a></li>
                      <li class="edge-item-fix"><a href="https://education.github.com" class="py-2 pb-0 lh-condensed-ultra d-block no-underline link-gray-dark no-underline h5 Bump-link--hover"  data-ga-click="(Logged out) Header, go to Education">Education <span class="Bump-link-symbol float-right text-normal text-gray-light">&rarr;</span></a></li>
                    </ul>
                  </div>
                </details>
              </li>
          </ul>
        </nav>

      <div class="d-lg-flex flex-items-center px-3 px-lg-0 text-center text-lg-left">
          <div class="d-lg-flex mb-3 mb-lg-0">
              <div class="header-search header-search-current js-header-search-current flex-auto js-site-search position-relative flex-self-stretch flex-md-self-auto mb-3 mb-md-0 mr-0 mr-md-3 scoped-search site-scoped-search js-jump-to js-header-search-current-jump-to"
  role="combobox"
  aria-owns="jump-to-results"
  aria-label="Search or jump to"
  aria-haspopup="listbox"
  aria-expanded="false"
>
  <div class="position-relative">
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="js-site-search-form" role="search" aria-label="Site" data-scope-type="Repository" data-scope-id="29557376" data-scoped-search-url="/aol/cyclops/search" data-unscoped-search-url="/search" action="/aol/cyclops/search" accept-charset="UTF-8" method="get">
      <label class="form-control input-sm header-search-wrapper p-0 js-chromeless-input-container header-search-wrapper-jump-to position-relative d-flex flex-justify-between flex-items-center">
        <input type="text"
          class="form-control input-sm header-search-input jump-to-field js-jump-to-field js-site-search-focus js-site-search-field is-clearable"
          data-hotkey="s,/"
          name="q"
          value=""
          placeholder="Search"
          data-unscoped-placeholder="Search GitHub"
          data-scoped-placeholder="Search"
          autocapitalize="off"
          aria-autocomplete="list"
          aria-controls="jump-to-results"
          aria-label="Search"
          data-jump-to-suggestions-path="/_graphql/GetSuggestedNavigationDestinations"
          spellcheck="false"
          autocomplete="off"
          >
          <input type="hidden" data-csrf="true" class="js-data-jump-to-suggestions-path-csrf" value="WqmNSOyk6+JavXDMNRJL0Zed0RfQjKIO7c3CVsVvl82oFQFVwgVwVIHMCH56qZb7wnVLVugs5HN5fb8b6lRhVw==" />
          <input type="hidden" class="js-site-search-type-field" name="type" >
            <img src="https://github.githubassets.com/images/search-key-slash.svg" alt="" class="mr-2 header-search-key-slash">

            <div class="Box position-absolute overflow-hidden d-none jump-to-suggestions js-jump-to-suggestions-container">
              
<ul class="d-none js-jump-to-suggestions-template-container">
  

<li class="d-flex flex-justify-start flex-items-center p-0 f5 navigation-item js-navigation-item js-jump-to-suggestion" role="option">
  <a tabindex="-1" class="no-underline d-flex flex-auto flex-items-center jump-to-suggestions-path js-jump-to-suggestion-path js-navigation-open p-2" href="">
    <div class="jump-to-octicon js-jump-to-octicon flex-shrink-0 mr-2 text-center d-none">
      <svg height="16" width="16" class="octicon octicon-repo flex-shrink-0 js-jump-to-octicon-repo d-none" title="Repository" aria-label="Repository" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M2 2.5A2.5 2.5 0 014.5 0h8.75a.75.75 0 01.75.75v12.5a.75.75 0 01-.75.75h-2.5a.75.75 0 110-1.5h1.75v-2h-8a1 1 0 00-.714 1.7.75.75 0 01-1.072 1.05A2.495 2.495 0 012 11.5v-9zm10.5-1V9h-8c-.356 0-.694.074-1 .208V2.5a1 1 0 011-1h8zM5 12.25v3.25a.25.25 0 00.4.2l1.45-1.087a.25.25 0 01.3 0L8.6 15.7a.25.25 0 00.4-.2v-3.25a.25.25 0 00-.25-.25h-3.5a.25.25 0 00-.25.25z"></path></svg>
      <svg height="16" width="16" class="octicon octicon-project flex-shrink-0 js-jump-to-octicon-project d-none" title="Project" aria-label="Project" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M1.75 0A1.75 1.75 0 000 1.75v12.5C0 15.216.784 16 1.75 16h12.5A1.75 1.75 0 0016 14.25V1.75A1.75 1.75 0 0014.25 0H1.75zM1.5 1.75a.25.25 0 01.25-.25h12.5a.25.25 0 01.25.25v12.5a.25.25 0 01-.25.25H1.75a.25.25 0 01-.25-.25V1.75zM11.75 3a.75.75 0 00-.75.75v7.5a.75.75 0 001.5 0v-7.5a.75.75 0 00-.75-.75zm-8.25.75a.75.75 0 011.5 0v5.5a.75.75 0 01-1.5 0v-5.5zM8 3a.75.75 0 00-.75.75v3.5a.75.75 0 001.5 0v-3.5A.75.75 0 008 3z"></path></svg>
      <svg height="16" width="16" class="octicon octicon-search flex-shrink-0 js-jump-to-octicon-search d-none" title="Search" aria-label="Search" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M11.5 7a4.499 4.499 0 11-8.998 0A4.499 4.499 0 0111.5 7zm-.82 4.74a6 6 0 111.06-1.06l3.04 3.04a.75.75 0 11-1.06 1.06l-3.04-3.04z"></path></svg>
    </div>

    <img class="avatar mr-2 flex-shrink-0 js-jump-to-suggestion-avatar d-none" alt="" aria-label="Team" src="" width="28" height="28">

    <div class="jump-to-suggestion-name js-jump-to-suggestion-name flex-auto overflow-hidden text-left no-wrap css-truncate css-truncate-target">
    </div>

    <div class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none js-jump-to-badge-search">
      <span class="js-jump-to-badge-search-text-default d-none" aria-label="in this repository">
        In this repository
      </span>
      <span class="js-jump-to-badge-search-text-global d-none" aria-label="in all of GitHub">
        All GitHub
      </span>
      <span aria-hidden="true" class="d-inline-block ml-1 v-align-middle">↵</span>
    </div>

    <div aria-hidden="true" class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none d-on-nav-focus js-jump-to-badge-jump">
      Jump to
      <span class="d-inline-block ml-1 v-align-middle">↵</span>
    </div>
  </a>
</li>

</ul>

<ul class="d-none js-jump-to-no-results-template-container">
  <li class="d-flex flex-justify-center flex-items-center f5 d-none js-jump-to-suggestion p-2">
    <span class="text-gray">No suggested jump to results</span>
  </li>
</ul>

<ul id="jump-to-results" role="listbox" class="p-0 m-0 js-navigation-container jump-to-suggestions-results-container js-jump-to-suggestions-results-container">
  

<li class="d-flex flex-justify-start flex-items-center p-0 f5 navigation-item js-navigation-item js-jump-to-scoped-search d-none" role="option">
  <a tabindex="-1" class="no-underline d-flex flex-auto flex-items-center jump-to-suggestions-path js-jump-to-suggestion-path js-navigation-open p-2" href="">
    <div class="jump-to-octicon js-jump-to-octicon flex-shrink-0 mr-2 text-center d-none">
      <svg height="16" width="16" class="octicon octicon-repo flex-shrink-0 js-jump-to-octicon-repo d-none" title="Repository" aria-label="Repository" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M2 2.5A2.5 2.5 0 014.5 0h8.75a.75.75 0 01.75.75v12.5a.75.75 0 01-.75.75h-2.5a.75.75 0 110-1.5h1.75v-2h-8a1 1 0 00-.714 1.7.75.75 0 01-1.072 1.05A2.495 2.495 0 012 11.5v-9zm10.5-1V9h-8c-.356 0-.694.074-1 .208V2.5a1 1 0 011-1h8zM5 12.25v3.25a.25.25 0 00.4.2l1.45-1.087a.25.25 0 01.3 0L8.6 15.7a.25.25 0 00.4-.2v-3.25a.25.25 0 00-.25-.25h-3.5a.25.25 0 00-.25.25z"></path></svg>
      <svg height="16" width="16" class="octicon octicon-project flex-shrink-0 js-jump-to-octicon-project d-none" title="Project" aria-label="Project" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M1.75 0A1.75 1.75 0 000 1.75v12.5C0 15.216.784 16 1.75 16h12.5A1.75 1.75 0 0016 14.25V1.75A1.75 1.75 0 0014.25 0H1.75zM1.5 1.75a.25.25 0 01.25-.25h12.5a.25.25 0 01.25.25v12.5a.25.25 0 01-.25.25H1.75a.25.25 0 01-.25-.25V1.75zM11.75 3a.75.75 0 00-.75.75v7.5a.75.75 0 001.5 0v-7.5a.75.75 0 00-.75-.75zm-8.25.75a.75.75 0 011.5 0v5.5a.75.75 0 01-1.5 0v-5.5zM8 3a.75.75 0 00-.75.75v3.5a.75.75 0 001.5 0v-3.5A.75.75 0 008 3z"></path></svg>
      <svg height="16" width="16" class="octicon octicon-search flex-shrink-0 js-jump-to-octicon-search d-none" title="Search" aria-label="Search" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M11.5 7a4.499 4.499 0 11-8.998 0A4.499 4.499 0 0111.5 7zm-.82 4.74a6 6 0 111.06-1.06l3.04 3.04a.75.75 0 11-1.06 1.06l-3.04-3.04z"></path></svg>
    </div>

    <img class="avatar mr-2 flex-shrink-0 js-jump-to-suggestion-avatar d-none" alt="" aria-label="Team" src="" width="28" height="28">

    <div class="jump-to-suggestion-name js-jump-to-suggestion-name flex-auto overflow-hidden text-left no-wrap css-truncate css-truncate-target">
    </div>

    <div class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none js-jump-to-badge-search">
      <span class="js-jump-to-badge-search-text-default d-none" aria-label="in this repository">
        In this repository
      </span>
      <span class="js-jump-to-badge-search-text-global d-none" aria-label="in all of GitHub">
        All GitHub
      </span>
      <span aria-hidden="true" class="d-inline-block ml-1 v-align-middle">↵</span>
    </div>

    <div aria-hidden="true" class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none d-on-nav-focus js-jump-to-badge-jump">
      Jump to
      <span class="d-inline-block ml-1 v-align-middle">↵</span>
    </div>
  </a>
</li>

  

<li class="d-flex flex-justify-start flex-items-center p-0 f5 navigation-item js-navigation-item js-jump-to-global-search d-none" role="option">
  <a tabindex="-1" class="no-underline d-flex flex-auto flex-items-center jump-to-suggestions-path js-jump-to-suggestion-path js-navigation-open p-2" href="">
    <div class="jump-to-octicon js-jump-to-octicon flex-shrink-0 mr-2 text-center d-none">
      <svg height="16" width="16" class="octicon octicon-repo flex-shrink-0 js-jump-to-octicon-repo d-none" title="Repository" aria-label="Repository" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M2 2.5A2.5 2.5 0 014.5 0h8.75a.75.75 0 01.75.75v12.5a.75.75 0 01-.75.75h-2.5a.75.75 0 110-1.5h1.75v-2h-8a1 1 0 00-.714 1.7.75.75 0 01-1.072 1.05A2.495 2.495 0 012 11.5v-9zm10.5-1V9h-8c-.356 0-.694.074-1 .208V2.5a1 1 0 011-1h8zM5 12.25v3.25a.25.25 0 00.4.2l1.45-1.087a.25.25 0 01.3 0L8.6 15.7a.25.25 0 00.4-.2v-3.25a.25.25 0 00-.25-.25h-3.5a.25.25 0 00-.25.25z"></path></svg>
      <svg height="16" width="16" class="octicon octicon-project flex-shrink-0 js-jump-to-octicon-project d-none" title="Project" aria-label="Project" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M1.75 0A1.75 1.75 0 000 1.75v12.5C0 15.216.784 16 1.75 16h12.5A1.75 1.75 0 0016 14.25V1.75A1.75 1.75 0 0014.25 0H1.75zM1.5 1.75a.25.25 0 01.25-.25h12.5a.25.25 0 01.25.25v12.5a.25.25 0 01-.25.25H1.75a.25.25 0 01-.25-.25V1.75zM11.75 3a.75.75 0 00-.75.75v7.5a.75.75 0 001.5 0v-7.5a.75.75 0 00-.75-.75zm-8.25.75a.75.75 0 011.5 0v5.5a.75.75 0 01-1.5 0v-5.5zM8 3a.75.75 0 00-.75.75v3.5a.75.75 0 001.5 0v-3.5A.75.75 0 008 3z"></path></svg>
      <svg height="16" width="16" class="octicon octicon-search flex-shrink-0 js-jump-to-octicon-search d-none" title="Search" aria-label="Search" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M11.5 7a4.499 4.499 0 11-8.998 0A4.499 4.499 0 0111.5 7zm-.82 4.74a6 6 0 111.06-1.06l3.04 3.04a.75.75 0 11-1.06 1.06l-3.04-3.04z"></path></svg>
    </div>

    <img class="avatar mr-2 flex-shrink-0 js-jump-to-suggestion-avatar d-none" alt="" aria-label="Team" src="" width="28" height="28">

    <div class="jump-to-suggestion-name js-jump-to-suggestion-name flex-auto overflow-hidden text-left no-wrap css-truncate css-truncate-target">
    </div>

    <div class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none js-jump-to-badge-search">
      <span class="js-jump-to-badge-search-text-default d-none" aria-label="in this repository">
        In this repository
      </span>
      <span class="js-jump-to-badge-search-text-global d-none" aria-label="in all of GitHub">
        All GitHub
      </span>
      <span aria-hidden="true" class="d-inline-block ml-1 v-align-middle">↵</span>
    </div>

    <div aria-hidden="true" class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none d-on-nav-focus js-jump-to-badge-jump">
      Jump to
      <span class="d-inline-block ml-1 v-align-middle">↵</span>
    </div>
  </a>
</li>


</ul>

            </div>
      </label>
</form>  </div>
</div>

          </div>

        <a href="/login?return_to=%2Faol%2Fcyclops"
          class="HeaderMenu-link no-underline mr-3"
          data-hydro-click="{&quot;event_type&quot;:&quot;authentication.click&quot;,&quot;payload&quot;:{&quot;location_in_page&quot;:&quot;site header menu&quot;,&quot;repository_id&quot;:null,&quot;auth_type&quot;:&quot;SIGN_UP&quot;,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="e267584b6cbafc228a341ca076443e487223306669134502d7d5d65b4a2ca453"
          data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">
          Sign&nbsp;in
        </a>
            <a href="/join?ref_cta=Sign+up&amp;ref_loc=header+logged+out&amp;ref_page=%2F%3Cuser-name%3E%2F%3Crepo-name%3E&amp;source=header-repo&amp;source_repo=aol%2Fcyclops"
              class="HeaderMenu-link d-inline-block no-underline border border-gray-dark rounded-1 px-2 py-1"
              data-hydro-click="{&quot;event_type&quot;:&quot;authentication.click&quot;,&quot;payload&quot;:{&quot;location_in_page&quot;:&quot;site header menu&quot;,&quot;repository_id&quot;:null,&quot;auth_type&quot;:&quot;SIGN_UP&quot;,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="e267584b6cbafc228a341ca076443e487223306669134502d7d5d65b4a2ca453"
              data-ga-click="Sign up, click to sign up for account, ref_page:/&lt;user-name&gt;/&lt;repo-name&gt;;ref_cta:Sign up;ref_loc:header logged out">
              Sign&nbsp;up
            </a>
      </div>
    </div>
  </div>
</header>

    </div>

  <div id="start-of-content" class="show-on-focus"></div>





    <div data-pjax-replace id="js-flash-container">


  <template class="js-flash-template">
    <div class="flash flash-full  {{ className }}">
  <div class=" px-2" >
    <button class="flash-close js-flash-close" type="button" aria-label="Dismiss this message">
      <svg class="octicon octicon-x" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M3.72 3.72a.75.75 0 011.06 0L8 6.94l3.22-3.22a.75.75 0 111.06 1.06L9.06 8l3.22 3.22a.75.75 0 11-1.06 1.06L8 9.06l-3.22 3.22a.75.75 0 01-1.06-1.06L6.94 8 3.72 4.78a.75.75 0 010-1.06z"></path></svg>
    </button>
    
      <div>{{ message }}</div>

  </div>
</div>
  </template>
</div>


  

  <include-fragment class="js-notification-shelf-include-fragment" data-base-src="https://github.com/notifications/beta/shelf"></include-fragment>



  <div
    class="application-main "
    data-commit-hovercards-enabled
    data-discussion-hovercards-enabled
    data-issue-and-pr-hovercards-enabled
  >
        <div itemscope itemtype="http://schema.org/SoftwareSourceCode" class="">
    <main id="js-repo-pjax-container" data-pjax-container >
      

    


    






  


  <div class="bg-gray-light pt-3 hide-full-screen mb-5">

      <div class="d-flex mb-3 px-3 px-md-4 px-lg-5">

        <div class="flex-auto min-width-0 width-fit mr-3">
            <h1 class=" d-flex flex-wrap flex-items-center break-word f3 text-normal">
    <svg class="octicon octicon-repo text-gray mr-2" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M2 2.5A2.5 2.5 0 014.5 0h8.75a.75.75 0 01.75.75v12.5a.75.75 0 01-.75.75h-2.5a.75.75 0 110-1.5h1.75v-2h-8a1 1 0 00-.714 1.7.75.75 0 01-1.072 1.05A2.495 2.495 0 012 11.5v-9zm10.5-1V9h-8c-.356 0-.694.074-1 .208V2.5a1 1 0 011-1h8zM5 12.25v3.25a.25.25 0 00.4.2l1.45-1.087a.25.25 0 01.3 0L8.6 15.7a.25.25 0 00.4-.2v-3.25a.25.25 0 00-.25-.25h-3.5a.25.25 0 00-.25.25z"></path></svg>
    <span class="author flex-self-stretch" itemprop="author">
      <a class="url fn" rel="author" data-hovercard-type="organization" data-hovercard-url="/orgs/aol/hovercard" href="/aol">aol</a>
    </span>
    <span class="mx-1 flex-self-stretch">/</span>
  <strong itemprop="name" class="mr-2 flex-self-stretch">
    <a data-pjax="#js-repo-pjax-container" class="" href="/aol/cyclops">cyclops</a>
  </strong>
  
</h1>


        </div>

          <ul class="pagehead-actions flex-shrink-0 d-none d-md-inline" style="padding: 2px 0;">

  <li>
          <a class="tooltipped tooltipped-s btn btn-sm btn-with-count" aria-label="You must be signed in to watch a repository" rel="nofollow" data-hydro-click="{&quot;event_type&quot;:&quot;authentication.click&quot;,&quot;payload&quot;:{&quot;location_in_page&quot;:&quot;notification subscription menu watch&quot;,&quot;repository_id&quot;:null,&quot;auth_type&quot;:&quot;LOG_IN&quot;,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="0999b65cf732e1d03fd6a5f8d90553b99023b8af0458f614931f8521add7212e" href="/login?return_to=%2Faol%2Fcyclops">
    <svg height="16" class="octicon octicon-eye" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M1.679 7.932c.412-.621 1.242-1.75 2.366-2.717C5.175 4.242 6.527 3.5 8 3.5c1.473 0 2.824.742 3.955 1.715 1.124.967 1.954 2.096 2.366 2.717a.119.119 0 010 .136c-.412.621-1.242 1.75-2.366 2.717C10.825 11.758 9.473 12.5 8 12.5c-1.473 0-2.824-.742-3.955-1.715C2.92 9.818 2.09 8.69 1.679 8.068a.119.119 0 010-.136zM8 2c-1.981 0-3.67.992-4.933 2.078C1.797 5.169.88 6.423.43 7.1a1.619 1.619 0 000 1.798c.45.678 1.367 1.932 2.637 3.024C4.329 13.008 6.019 14 8 14c1.981 0 3.67-.992 4.933-2.078 1.27-1.091 2.187-2.345 2.637-3.023a1.619 1.619 0 000-1.798c-.45-.678-1.367-1.932-2.637-3.023C11.671 2.992 9.981 2 8 2zm0 8a2 2 0 100-4 2 2 0 000 4z"></path></svg>
    Watch
</a>    <a class="social-count" href="/aol/cyclops/watchers"
       aria-label="95 users are watching this repository">
      95
    </a>

  </li>

  <li>
          <a class="btn btn-sm btn-with-count  tooltipped tooltipped-s" aria-label="You must be signed in to star a repository" rel="nofollow" data-hydro-click="{&quot;event_type&quot;:&quot;authentication.click&quot;,&quot;payload&quot;:{&quot;location_in_page&quot;:&quot;star button&quot;,&quot;repository_id&quot;:29557376,&quot;auth_type&quot;:&quot;LOG_IN&quot;,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="df3d524bf4a9698206faa1015474bc88217760ab368bcb0e71fcb003ddf01661" href="/login?return_to=%2Faol%2Fcyclops">
      <svg vertical_align="text_bottom" height="16" class="octicon octicon-star v-align-text-bottom" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M8 .25a.75.75 0 01.673.418l1.882 3.815 4.21.612a.75.75 0 01.416 1.279l-3.046 2.97.719 4.192a.75.75 0 01-1.088.791L8 12.347l-3.766 1.98a.75.75 0 01-1.088-.79l.72-4.194L.818 6.374a.75.75 0 01.416-1.28l4.21-.611L7.327.668A.75.75 0 018 .25zm0 2.445L6.615 5.5a.75.75 0 01-.564.41l-3.097.45 2.24 2.184a.75.75 0 01.216.664l-.528 3.084 2.769-1.456a.75.75 0 01.698 0l2.77 1.456-.53-3.084a.75.75 0 01.216-.664l2.24-2.183-3.096-.45a.75.75 0 01-.564-.41L8 2.694v.001z"></path></svg>
      Star
</a>
    <a class="social-count js-social-count" href="/aol/cyclops/stargazers"
      aria-label="1148 users starred this repository">
      1.1k
    </a>

  </li>

  <li>
        <a class="btn btn-sm btn-with-count tooltipped tooltipped-s" aria-label="You must be signed in to fork a repository" rel="nofollow" data-hydro-click="{&quot;event_type&quot;:&quot;authentication.click&quot;,&quot;payload&quot;:{&quot;location_in_page&quot;:&quot;repo details fork button&quot;,&quot;repository_id&quot;:29557376,&quot;auth_type&quot;:&quot;LOG_IN&quot;,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="433e7de58507a0b8f7e437b4c5d1b0b99a477819d2527f50c1f4b24b253f09af" href="/login?return_to=%2Faol%2Fcyclops">
          <svg class="octicon octicon-repo-forked" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M5 3.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zm0 2.122a2.25 2.25 0 10-1.5 0v.878A2.25 2.25 0 005.75 8.5h1.5v2.128a2.251 2.251 0 101.5 0V8.5h1.5a2.25 2.25 0 002.25-2.25v-.878a2.25 2.25 0 10-1.5 0v.878a.75.75 0 01-.75.75h-4.5A.75.75 0 015 6.25v-.878zm3.75 7.378a.75.75 0 11-1.5 0 .75.75 0 011.5 0zm3-8.75a.75.75 0 100-1.5.75.75 0 000 1.5z"></path></svg>
          Fork
</a>
      <a href="/aol/cyclops/network/members" class="social-count"
         aria-label="122 users forked this repository">
        122
      </a>
  </li>
</ul>

      </div>
          <div class="d-block d-md-none mb-2 px-3 px-md-4 px-lg-5">
      <p class="f4 mb-3">
        An advanced, but easy to use, platform for writing functional applications in Java 8.
      </p>
      <div class="mb-2 d-flex flex-items-center">
        <svg mr="2" classes="flex-shrink-0" height="16" class="octicon octicon-link flex-shrink-0 mr-2" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg>
        <span class="flex-auto min-width-0 css-truncate css-truncate-target width-fit">
          <a title="http://cyclops-react.io" role="link" target="_blank" class="text-bold" rel="noopener noreferrer" href="http://cyclops-react.io">cyclops-react.io</a>
        </span>
      </div>
      <div class="mb-2">
        <a href="/aol/cyclops/blob/master/LICENSE" class="muted-link">
          <svg mr="1" height="16" class="octicon octicon-law mr-1" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.75.75a.75.75 0 00-1.5 0V2h-.984c-.305 0-.604.08-.869.23l-1.288.737A.25.25 0 013.984 3H1.75a.75.75 0 000 1.5h.428L.066 9.192a.75.75 0 00.154.838l.53-.53-.53.53v.001l.002.002.002.002.006.006.016.015.045.04a3.514 3.514 0 00.686.45A4.492 4.492 0 003 11c.88 0 1.556-.22 2.023-.454a3.515 3.515 0 00.686-.45l.045-.04.016-.015.006-.006.002-.002.001-.002L5.25 9.5l.53.53a.75.75 0 00.154-.838L3.822 4.5h.162c.305 0 .604-.08.869-.23l1.289-.737a.25.25 0 01.124-.033h.984V13h-2.5a.75.75 0 000 1.5h6.5a.75.75 0 000-1.5h-2.5V3.5h.984a.25.25 0 01.124.033l1.29.736c.264.152.563.231.868.231h.162l-2.112 4.692a.75.75 0 00.154.838l.53-.53-.53.53v.001l.002.002.002.002.006.006.016.015.045.04a3.517 3.517 0 00.686.45A4.492 4.492 0 0013 11c.88 0 1.556-.22 2.023-.454a3.512 3.512 0 00.686-.45l.045-.04.01-.01.006-.005.006-.006.002-.002.001-.002-.529-.531.53.53a.75.75 0 00.154-.838L13.823 4.5h.427a.75.75 0 000-1.5h-2.234a.25.25 0 01-.124-.033l-1.29-.736A1.75 1.75 0 009.735 2H8.75V.75zM1.695 9.227c.285.135.718.273 1.305.273s1.02-.138 1.305-.273L3 6.327l-1.305 2.9zm10 0c.285.135.718.273 1.305.273s1.02-.138 1.305-.273L13 6.327l-1.305 2.9z"></path></svg>
            Apache-2.0 License
        </a>
      </div>
    <div class="mb-3">
      <a class="link-gray no-underline mr-3" href="/aol/cyclops/stargazers">
        <svg mr="1" height="16" class="octicon octicon-star mr-1" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M8 .25a.75.75 0 01.673.418l1.882 3.815 4.21.612a.75.75 0 01.416 1.279l-3.046 2.97.719 4.192a.75.75 0 01-1.088.791L8 12.347l-3.766 1.98a.75.75 0 01-1.088-.79l.72-4.194L.818 6.374a.75.75 0 01.416-1.28l4.21-.611L7.327.668A.75.75 0 018 .25zm0 2.445L6.615 5.5a.75.75 0 01-.564.41l-3.097.45 2.24 2.184a.75.75 0 01.216.664l-.528 3.084 2.769-1.456a.75.75 0 01.698 0l2.77 1.456-.53-3.084a.75.75 0 01.216-.664l2.24-2.183-3.096-.45a.75.75 0 01-.564-.41L8 2.694v.001z"></path></svg>
        <span class="text-bold">1.1k</span>
        stars
</a>      <a class="link-gray no-underline" href="/aol/cyclops/network/members">
        <svg mr="1" height="16" class="octicon octicon-repo-forked mr-1" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M5 3.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zm0 2.122a2.25 2.25 0 10-1.5 0v.878A2.25 2.25 0 005.75 8.5h1.5v2.128a2.251 2.251 0 101.5 0V8.5h1.5a2.25 2.25 0 002.25-2.25v-.878a2.25 2.25 0 10-1.5 0v.878a.75.75 0 01-.75.75h-4.5A.75.75 0 015 6.25v-.878zm3.75 7.378a.75.75 0 11-1.5 0 .75.75 0 011.5 0zm3-8.75a.75.75 0 100-1.5.75.75 0 000 1.5z"></path></svg>
        <span class="text-bold">122</span>
        forks
</a>    </div>
    <div class="d-flex">
      <div class="flex-1 mr-2">
            <a class="btn btn-sm  btn-block tooltipped tooltipped-s" aria-label="You must be signed in to star a repository" rel="nofollow" data-hydro-click="{&quot;event_type&quot;:&quot;authentication.click&quot;,&quot;payload&quot;:{&quot;location_in_page&quot;:&quot;star button&quot;,&quot;repository_id&quot;:29557376,&quot;auth_type&quot;:&quot;LOG_IN&quot;,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="df3d524bf4a9698206faa1015474bc88217760ab368bcb0e71fcb003ddf01661" href="/login?return_to=%2Faol%2Fcyclops">
      <svg vertical_align="text_bottom" height="16" class="octicon octicon-star v-align-text-bottom" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M8 .25a.75.75 0 01.673.418l1.882 3.815 4.21.612a.75.75 0 01.416 1.279l-3.046 2.97.719 4.192a.75.75 0 01-1.088.791L8 12.347l-3.766 1.98a.75.75 0 01-1.088-.79l.72-4.194L.818 6.374a.75.75 0 01.416-1.28l4.21-.611L7.327.668A.75.75 0 018 .25zm0 2.445L6.615 5.5a.75.75 0 01-.564.41l-3.097.45 2.24 2.184a.75.75 0 01.216.664l-.528 3.084 2.769-1.456a.75.75 0 01.698 0l2.77 1.456-.53-3.084a.75.75 0 01.216-.664l2.24-2.183-3.096-.45a.75.75 0 01-.564-.41L8 2.694v.001z"></path></svg>
      Star
</a>

      </div>
      <div class="flex-1">
              <a class="tooltipped tooltipped-s btn btn-sm btn-block" aria-label="You must be signed in to watch a repository" rel="nofollow" data-hydro-click="{&quot;event_type&quot;:&quot;authentication.click&quot;,&quot;payload&quot;:{&quot;location_in_page&quot;:&quot;notification subscription menu watch&quot;,&quot;repository_id&quot;:null,&quot;auth_type&quot;:&quot;LOG_IN&quot;,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="0999b65cf732e1d03fd6a5f8d90553b99023b8af0458f614931f8521add7212e" href="/login?return_to=%2Faol%2Fcyclops">
    <svg height="16" class="octicon octicon-eye" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M1.679 7.932c.412-.621 1.242-1.75 2.366-2.717C5.175 4.242 6.527 3.5 8 3.5c1.473 0 2.824.742 3.955 1.715 1.124.967 1.954 2.096 2.366 2.717a.119.119 0 010 .136c-.412.621-1.242 1.75-2.366 2.717C10.825 11.758 9.473 12.5 8 12.5c-1.473 0-2.824-.742-3.955-1.715C2.92 9.818 2.09 8.69 1.679 8.068a.119.119 0 010-.136zM8 2c-1.981 0-3.67.992-4.933 2.078C1.797 5.169.88 6.423.43 7.1a1.619 1.619 0 000 1.798c.45.678 1.367 1.932 2.637 3.024C4.329 13.008 6.019 14 8 14c1.981 0 3.67-.992 4.933-2.078 1.27-1.091 2.187-2.345 2.637-3.023a1.619 1.619 0 000-1.798c-.45-.678-1.367-1.932-2.637-3.023C11.671 2.992 9.981 2 8 2zm0 8a2 2 0 100-4 2 2 0 000 4z"></path></svg>
    Watch
</a>
      </div>
    </div>
  </div>

        
<nav aria-label="Repository" data-pjax="#js-repo-pjax-container" class="js-repo-nav js-sidenav-container-pjax js-responsive-underlinenav overflow-hidden UnderlineNav px-3 px-md-4 px-lg-5 bg-gray-light">
  <ul class="UnderlineNav-body list-style-none ">
          <li class="d-flex">
        <a class="js-selected-navigation-item selected UnderlineNav-item hx_underlinenav-item no-wrap js-responsive-underlinenav-item" data-tab-item="code-tab" data-hotkey="g c" data-ga-click="Repository, Navigation click, Code tab" aria-current="page" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches repo_packages repo_deployments /aol/cyclops" href="/aol/cyclops">
              <svg classes="UnderlineNav-octicon" display="none inline" height="16" class="octicon octicon-code UnderlineNav-octicon d-none d-sm-inline" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M4.72 3.22a.75.75 0 011.06 1.06L2.06 8l3.72 3.72a.75.75 0 11-1.06 1.06L.47 8.53a.75.75 0 010-1.06l4.25-4.25zm6.56 0a.75.75 0 10-1.06 1.06L13.94 8l-3.72 3.72a.75.75 0 101.06 1.06l4.25-4.25a.75.75 0 000-1.06l-4.25-4.25z"></path></svg>
            <span data-content="Code">Code</span>
              <span title="Not available" class="Counter "></span>
</a>      </li>
      <li class="d-flex">
        <a class="js-selected-navigation-item UnderlineNav-item hx_underlinenav-item no-wrap js-responsive-underlinenav-item" data-tab-item="issues-tab" data-hotkey="g i" data-ga-click="Repository, Navigation click, Issues tab" data-selected-links="repo_issues repo_labels repo_milestones /aol/cyclops/issues" href="/aol/cyclops/issues">
              <svg classes="UnderlineNav-octicon" display="none inline" height="16" class="octicon octicon-issue-opened UnderlineNav-octicon d-none d-sm-inline" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M8 1.5a6.5 6.5 0 100 13 6.5 6.5 0 000-13zM0 8a8 8 0 1116 0A8 8 0 010 8zm9 3a1 1 0 11-2 0 1 1 0 012 0zm-.25-6.25a.75.75 0 00-1.5 0v3.5a.75.75 0 001.5 0v-3.5z"></path></svg>
            <span data-content="Issues">Issues</span>
              <span title="20" class="Counter ">20</span>
</a>      </li>
      <li class="d-flex">
        <a class="js-selected-navigation-item UnderlineNav-item hx_underlinenav-item no-wrap js-responsive-underlinenav-item" data-tab-item="pull-requests-tab" data-hotkey="g p" data-ga-click="Repository, Navigation click, Pull requests tab" data-selected-links="repo_pulls checks /aol/cyclops/pulls" href="/aol/cyclops/pulls">
              <svg classes="UnderlineNav-octicon" display="none inline" height="16" class="octicon octicon-git-pull-request UnderlineNav-octicon d-none d-sm-inline" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.177 3.073L9.573.677A.25.25 0 0110 .854v4.792a.25.25 0 01-.427.177L7.177 3.427a.25.25 0 010-.354zM3.75 2.5a.75.75 0 100 1.5.75.75 0 000-1.5zm-2.25.75a2.25 2.25 0 113 2.122v5.256a2.251 2.251 0 11-1.5 0V5.372A2.25 2.25 0 011.5 3.25zM11 2.5h-1V4h1a1 1 0 011 1v5.628a2.251 2.251 0 101.5 0V5A2.5 2.5 0 0011 2.5zm1 10.25a.75.75 0 111.5 0 .75.75 0 01-1.5 0zM3.75 12a.75.75 0 100 1.5.75.75 0 000-1.5z"></path></svg>
            <span data-content="Pull requests">Pull requests</span>
              <span title="3" class="Counter ">3</span>
</a>      </li>
      <li class="d-flex">
        <a class="js-selected-navigation-item UnderlineNav-item hx_underlinenav-item no-wrap js-responsive-underlinenav-item" data-tab-item="actions-tab" data-hotkey="g a" data-ga-click="Repository, Navigation click, Actions tab" data-selected-links="repo_actions /aol/cyclops/actions" href="/aol/cyclops/actions">
              <svg classes="UnderlineNav-octicon" display="none inline" height="16" class="octicon octicon-play UnderlineNav-octicon d-none d-sm-inline" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M1.5 8a6.5 6.5 0 1113 0 6.5 6.5 0 01-13 0zM8 0a8 8 0 100 16A8 8 0 008 0zM6.379 5.227A.25.25 0 006 5.442v5.117a.25.25 0 00.379.214l4.264-2.559a.25.25 0 000-.428L6.379 5.227z"></path></svg>
            <span data-content="Actions">Actions</span>
              <span title="Not available" class="Counter "></span>
</a>      </li>
      <li class="d-flex">
        <a class="js-selected-navigation-item UnderlineNav-item hx_underlinenav-item no-wrap js-responsive-underlinenav-item" data-tab-item="projects-tab" data-hotkey="g b" data-ga-click="Repository, Navigation click, Projects tab" data-selected-links="repo_projects new_repo_project repo_project /aol/cyclops/projects" href="/aol/cyclops/projects">
              <svg classes="UnderlineNav-octicon" display="none inline" height="16" class="octicon octicon-project UnderlineNav-octicon d-none d-sm-inline" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M1.75 0A1.75 1.75 0 000 1.75v12.5C0 15.216.784 16 1.75 16h12.5A1.75 1.75 0 0016 14.25V1.75A1.75 1.75 0 0014.25 0H1.75zM1.5 1.75a.25.25 0 01.25-.25h12.5a.25.25 0 01.25.25v12.5a.25.25 0 01-.25.25H1.75a.25.25 0 01-.25-.25V1.75zM11.75 3a.75.75 0 00-.75.75v7.5a.75.75 0 001.5 0v-7.5a.75.75 0 00-.75-.75zm-8.25.75a.75.75 0 011.5 0v5.5a.75.75 0 01-1.5 0v-5.5zM8 3a.75.75 0 00-.75.75v3.5a.75.75 0 001.5 0v-3.5A.75.75 0 008 3z"></path></svg>
            <span data-content="Projects">Projects</span>
              <span title="1" class="Counter ">1</span>
</a>      </li>
      <li class="d-flex">
        <a class="js-selected-navigation-item UnderlineNav-item hx_underlinenav-item no-wrap js-responsive-underlinenav-item" data-tab-item="wiki-tab" data-hotkey="g w" data-ga-click="Repository, Navigation click, Wikis tab" data-selected-links="repo_wiki /aol/cyclops/wiki" href="/aol/cyclops/wiki">
              <svg classes="UnderlineNav-octicon" display="none inline" height="16" class="octicon octicon-book UnderlineNav-octicon d-none d-sm-inline" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M0 1.75A.75.75 0 01.75 1h4.253c1.227 0 2.317.59 3 1.501A3.744 3.744 0 0111.006 1h4.245a.75.75 0 01.75.75v10.5a.75.75 0 01-.75.75h-4.507a2.25 2.25 0 00-1.591.659l-.622.621a.75.75 0 01-1.06 0l-.622-.621A2.25 2.25 0 005.258 13H.75a.75.75 0 01-.75-.75V1.75zm8.755 3a2.25 2.25 0 012.25-2.25H14.5v9h-3.757c-.71 0-1.4.201-1.992.572l.004-7.322zm-1.504 7.324l.004-5.073-.002-2.253A2.25 2.25 0 005.003 2.5H1.5v9h3.757a3.75 3.75 0 011.994.574z"></path></svg>
            <span data-content="Wiki">Wiki</span>
              <span title="Not available" class="Counter "></span>
</a>      </li>
      <li class="d-flex">
        <a class="js-selected-navigation-item UnderlineNav-item hx_underlinenav-item no-wrap js-responsive-underlinenav-item" data-tab-item="security-tab" data-hotkey="g s" data-ga-click="Repository, Navigation click, Security tab" data-selected-links="security overview alerts policy token_scanning code_scanning /aol/cyclops/security" href="/aol/cyclops/security">
              <svg classes="UnderlineNav-octicon" display="none inline" height="16" class="octicon octicon-shield UnderlineNav-octicon d-none d-sm-inline" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.467.133a1.75 1.75 0 011.066 0l5.25 1.68A1.75 1.75 0 0115 3.48V7c0 1.566-.32 3.182-1.303 4.682-.983 1.498-2.585 2.813-5.032 3.855a1.7 1.7 0 01-1.33 0c-2.447-1.042-4.049-2.357-5.032-3.855C1.32 10.182 1 8.566 1 7V3.48a1.75 1.75 0 011.217-1.667l5.25-1.68zm.61 1.429a.25.25 0 00-.153 0l-5.25 1.68a.25.25 0 00-.174.238V7c0 1.358.275 2.666 1.057 3.86.784 1.194 2.121 2.34 4.366 3.297a.2.2 0 00.154 0c2.245-.956 3.582-2.104 4.366-3.298C13.225 9.666 13.5 8.36 13.5 7V3.48a.25.25 0 00-.174-.237l-5.25-1.68zM9 10.5a1 1 0 11-2 0 1 1 0 012 0zm-.25-5.75a.75.75 0 10-1.5 0v3a.75.75 0 001.5 0v-3z"></path></svg>
            <span data-content="Security">Security</span>
              <include-fragment src="/aol/cyclops/security/overall-count" accept="text/fragment+html"></include-fragment>
</a>      </li>
      <li class="d-flex">
        <a class="js-selected-navigation-item UnderlineNav-item hx_underlinenav-item no-wrap js-responsive-underlinenav-item" data-tab-item="insights-tab" data-ga-click="Repository, Navigation click, Insights tab" data-selected-links="repo_graphs repo_contributors dependency_graph dependabot_updates pulse people /aol/cyclops/pulse" href="/aol/cyclops/pulse">
              <svg classes="UnderlineNav-octicon" display="none inline" height="16" class="octicon octicon-graph UnderlineNav-octicon d-none d-sm-inline" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M1.5 1.75a.75.75 0 00-1.5 0v12.5c0 .414.336.75.75.75h14.5a.75.75 0 000-1.5H1.5V1.75zm14.28 2.53a.75.75 0 00-1.06-1.06L10 7.94 7.53 5.47a.75.75 0 00-1.06 0L3.22 8.72a.75.75 0 001.06 1.06L7 7.06l2.47 2.47a.75.75 0 001.06 0l5.25-5.25z"></path></svg>
            <span data-content="Insights">Insights</span>
              <span title="Not available" class="Counter "></span>
</a>      </li>

</ul>        <div class="position-absolute right-0 pr-3 pr-md-4 pr-lg-5 js-responsive-underlinenav-overflow" style="visibility:hidden;">
      <details class="details-overlay details-reset position-relative">
  <summary role="button">
    <div class="UnderlineNav-item mr-0 border-0">
            <svg class="octicon octicon-kebab-horizontal" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="M8 9a1.5 1.5 0 100-3 1.5 1.5 0 000 3zM1.5 9a1.5 1.5 0 100-3 1.5 1.5 0 000 3zm13 0a1.5 1.5 0 100-3 1.5 1.5 0 000 3z"></path></svg>
            <span class="sr-only">More</span>
          </div>
</summary>  <div>
    <details-menu role="menu" class="dropdown-menu dropdown-menu-sw ">
  
            <ul>
                <li data-menu-item="code-tab" hidden>
                  <a role="menuitem" class="js-selected-navigation-item selected dropdown-item" aria-current="page" data-selected-links=" /aol/cyclops" href="/aol/cyclops">
                    Code
</a>                </li>
                <li data-menu-item="issues-tab" hidden>
                  <a role="menuitem" class="js-selected-navigation-item dropdown-item" data-selected-links=" /aol/cyclops/issues" href="/aol/cyclops/issues">
                    Issues
</a>                </li>
                <li data-menu-item="pull-requests-tab" hidden>
                  <a role="menuitem" class="js-selected-navigation-item dropdown-item" data-selected-links=" /aol/cyclops/pulls" href="/aol/cyclops/pulls">
                    Pull requests
</a>                </li>
                <li data-menu-item="actions-tab" hidden>
                  <a role="menuitem" class="js-selected-navigation-item dropdown-item" data-selected-links=" /aol/cyclops/actions" href="/aol/cyclops/actions">
                    Actions
</a>                </li>
                <li data-menu-item="projects-tab" hidden>
                  <a role="menuitem" class="js-selected-navigation-item dropdown-item" data-selected-links=" /aol/cyclops/projects" href="/aol/cyclops/projects">
                    Projects
</a>                </li>
                <li data-menu-item="wiki-tab" hidden>
                  <a role="menuitem" class="js-selected-navigation-item dropdown-item" data-selected-links=" /aol/cyclops/wiki" href="/aol/cyclops/wiki">
                    Wiki
</a>                </li>
                <li data-menu-item="security-tab" hidden>
                  <a role="menuitem" class="js-selected-navigation-item dropdown-item" data-selected-links=" /aol/cyclops/security" href="/aol/cyclops/security">
                    Security
</a>                </li>
                <li data-menu-item="insights-tab" hidden>
                  <a role="menuitem" class="js-selected-navigation-item dropdown-item" data-selected-links=" /aol/cyclops/pulse" href="/aol/cyclops/pulse">
                    Insights
</a>                </li>
            </ul>

</details-menu>
</div></details>    </div>

</nav>
  </div>


<div class="container-xl clearfix new-discussion-timeline px-3 px-md-4 px-lg-5">
  <div class="repository-content " >

    
      

  <div class="d-none d-lg-block mt-6 mr-3 Popover top-0 right-0 box-shadow-medium col-3">
    
  </div>

    <signup-prompt class="signup-prompt-bg rounded-1" data-prompt="signup" hidden>
    <div class="signup-prompt p-4 text-center mb-4 rounded-1">
      <div class="position-relative">
        <button
          type="button"
          class="position-absolute top-0 right-0 btn-link link-gray"
          data-action="click:signup-prompt#dismiss"
          data-ga-click="(Logged out) Sign up prompt, clicked Dismiss, text:dismiss"
        >
          Dismiss
        </button>
        <h3 class="pt-2">Join GitHub today</h3>
        <p class="col-6 mx-auto">GitHub is home to over 50 million developers working together to host and review code, manage projects, and build software together.</p>
        <a class="btn btn-primary" data-ga-click="(Logged out) Sign up prompt, clicked Sign up, text:sign-up" data-hydro-click="{&quot;event_type&quot;:&quot;authentication.click&quot;,&quot;payload&quot;:{&quot;location_in_page&quot;:&quot;files signup prompt&quot;,&quot;repository_id&quot;:null,&quot;auth_type&quot;:&quot;SIGN_UP&quot;,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="14437136f0ae0d422e0591a888ec18696c2f4e09bb8d8af2a27b2596c116244a" href="/join?source=prompt-code&amp;source_repo=aol%2Fcyclops">Sign up</a>
      </div>
    </div>
  </signup-prompt>



  <div class="gutter-condensed gutter-lg flex-column flex-md-row d-flex">

  <div class="flex-shrink-0 col-12 col-md-9 mb-4 mb-md-0">
          





      <div class="file-navigation mb-3 d-flex flex-items-start">
  
<div class="position-relative">
  <details class="details-reset details-overlay mr-0 mb-0 " id="branch-select-menu">
    <summary class="btn css-truncate"
            data-hotkey="w"
            title="Switch branches or tags">
      <svg text="gray" height="16" class="octicon octicon-git-branch text-gray" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M11.75 2.5a.75.75 0 100 1.5.75.75 0 000-1.5zm-2.25.75a2.25 2.25 0 113 2.122V6A2.5 2.5 0 0110 8.5H6a1 1 0 00-1 1v1.128a2.251 2.251 0 11-1.5 0V5.372a2.25 2.25 0 111.5 0v1.836A2.492 2.492 0 016 7h4a1 1 0 001-1v-.628A2.25 2.25 0 019.5 3.25zM4.25 12a.75.75 0 100 1.5.75.75 0 000-1.5zM3.5 3.25a.75.75 0 111.5 0 .75.75 0 01-1.5 0z"></path></svg>
      <span class="css-truncate-target" data-menu-button>master</span>
      <span class="dropdown-caret"></span>
    </summary>

    <details-menu class="SelectMenu SelectMenu--hasFilter" src="/aol/cyclops/refs/master?source_action=disambiguate&amp;source_controller=files" preload>
      <div class="SelectMenu-modal">
        <include-fragment class="SelectMenu-loading" aria-label="Menu is loading">
          <svg classes="anim-pulse" height="32" class="octicon octicon-octoface anim-pulse" viewBox="0 0 24 24" version="1.1" width="32" aria-hidden="true"><path d="M7.75 11c-.69 0-1.25.56-1.25 1.25v1.5a1.25 1.25 0 102.5 0v-1.5C9 11.56 8.44 11 7.75 11zm1.27 4.5a.469.469 0 01.48-.5h5a.47.47 0 01.48.5c-.116 1.316-.759 2.5-2.98 2.5s-2.864-1.184-2.98-2.5zm7.23-4.5c-.69 0-1.25.56-1.25 1.25v1.5a1.25 1.25 0 102.5 0v-1.5c0-.69-.56-1.25-1.25-1.25z"></path><path fill-rule="evenodd" d="M21.255 3.82a1.725 1.725 0 00-2.141-1.195c-.557.16-1.406.44-2.264.866-.78.386-1.647.93-2.293 1.677A18.442 18.442 0 0012 5c-.93 0-1.784.059-2.569.17-.645-.74-1.505-1.28-2.28-1.664a13.876 13.876 0 00-2.265-.866 1.725 1.725 0 00-2.141 1.196 23.645 23.645 0 00-.69 3.292c-.125.97-.191 2.07-.066 3.112C1.254 11.882 1 13.734 1 15.527 1 19.915 3.13 23 12 23c8.87 0 11-3.053 11-7.473 0-1.794-.255-3.647-.99-5.29.127-1.046.06-2.15-.066-3.125a23.652 23.652 0 00-.689-3.292zM20.5 14c.5 3.5-1.5 6.5-8.5 6.5s-9-3-8.5-6.5c.583-4 3-6 8.5-6s7.928 2 8.5 6z"></path></svg>
        </include-fragment>
      </div>
    </details-menu>
  </details>

</div>


  <div class="flex-self-center ml-3 flex-self-stretch d-none d-lg-flex flex-items-center lh-condensed-ultra">
    <a data-pjax href="/aol/cyclops/branches" class="link-gray-dark no-underline">
      <svg text="gray" height="16" class="octicon octicon-git-branch text-gray" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M11.75 2.5a.75.75 0 100 1.5.75.75 0 000-1.5zm-2.25.75a2.25 2.25 0 113 2.122V6A2.5 2.5 0 0110 8.5H6a1 1 0 00-1 1v1.128a2.251 2.251 0 11-1.5 0V5.372a2.25 2.25 0 111.5 0v1.836A2.492 2.492 0 016 7h4a1 1 0 001-1v-.628A2.25 2.25 0 019.5 3.25zM4.25 12a.75.75 0 100 1.5.75.75 0 000-1.5zM3.5 3.25a.75.75 0 111.5 0 .75.75 0 01-1.5 0z"></path></svg>
      <strong>11</strong>
      <span class="text-gray-light">branches</span>
    </a>
    <a data-pjax href="/aol/cyclops/tags" class="ml-3 link-gray-dark no-underline">
      <svg text="gray" height="16" class="octicon octicon-tag text-gray" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M2.5 7.775V2.75a.25.25 0 01.25-.25h5.025a.25.25 0 01.177.073l6.25 6.25a.25.25 0 010 .354l-5.025 5.025a.25.25 0 01-.354 0l-6.25-6.25a.25.25 0 01-.073-.177zm-1.5 0V2.75C1 1.784 1.784 1 2.75 1h5.025c.464 0 .91.184 1.238.513l6.25 6.25a1.75 1.75 0 010 2.474l-5.026 5.026a1.75 1.75 0 01-2.474 0l-6.25-6.25A1.75 1.75 0 011 7.775zM6 5a1 1 0 100 2 1 1 0 000-2z"></path></svg>
      <strong>65</strong>
      <span class="text-gray-light">tags</span>
    </a>
  </div>

  <div class="flex-auto"></div>

  <a class="btn ml-2" data-hydro-click="{&quot;event_type&quot;:&quot;repository.click&quot;,&quot;payload&quot;:{&quot;target&quot;:&quot;FIND_FILE_BUTTON&quot;,&quot;repository_id&quot;:29557376,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="d4264c86f89d910bbf6e7bc41a7d60f4022f9dddbd69efac75ed8c3ca956b54a" data-ga-click="Repository, find file, location:repo overview" data-hotkey="t" data-pjax="true" href="/aol/cyclops/find/master">
    Go to file
</a>



    <span class="d-none d-md-flex ml-2">
        
<get-repo>
  <details class="position-relative details-overlay details-reset" data-action="toggle:get-repo#onDetailsToggle">
    <summary class="btn btn-primary" data-hydro-click="{&quot;event_type&quot;:&quot;repository.click&quot;,&quot;payload&quot;:{&quot;repository_id&quot;:29557376,&quot;target&quot;:&quot;CLONE_OR_DOWNLOAD_BUTTON&quot;,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="148c27d77cee1f7fb9192ef6160027779454a0ad07823ad6e0af5798c87eb5fa">
      <svg class="octicon octicon-download mr-1" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.47 10.78a.75.75 0 001.06 0l3.75-3.75a.75.75 0 00-1.06-1.06L8.75 8.44V1.75a.75.75 0 00-1.5 0v6.69L4.78 5.97a.75.75 0 00-1.06 1.06l3.75 3.75zM3.75 13a.75.75 0 000 1.5h8.5a.75.75 0 000-1.5h-8.5z"></path></svg>
      Code
      <span class="dropdown-caret"></span>
</summary>    <div class="position-relative">
      <div class="dropdown-menu dropdown-menu-sw p-0" style="top:6px;width:352px;">
        <div data-target="get-repo.modal">
          <div class="border-bottom p-3">
            <a class="muted-link float-right tooltipped tooltipped-s" href="https://docs.github.com/articles/which-remote-url-should-i-use" target="_blank" aria-label="Which remote URL should I use?">
  <svg class="octicon octicon-question" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8 1.5a6.5 6.5 0 100 13 6.5 6.5 0 000-13zM0 8a8 8 0 1116 0A8 8 0 010 8zm9 3a1 1 0 11-2 0 1 1 0 012 0zM6.92 6.085c.081-.16.19-.299.34-.398.145-.097.371-.187.74-.187.28 0 .553.087.738.225A.613.613 0 019 6.25c0 .177-.04.264-.077.318a.956.956 0 01-.277.245c-.076.051-.158.1-.258.161l-.007.004a7.728 7.728 0 00-.313.195 2.416 2.416 0 00-.692.661.75.75 0 001.248.832.956.956 0 01.276-.245 6.3 6.3 0 01.26-.16l.006-.004c.093-.057.204-.123.313-.195.222-.149.487-.355.692-.662.214-.32.329-.702.329-1.15 0-.76-.36-1.348-.863-1.725A2.76 2.76 0 008 4c-.631 0-1.155.16-1.572.438-.413.276-.68.638-.849.977a.75.75 0 101.342.67z"></path></svg>
</a>

<div class="text-bold">
  <svg class="octicon octicon-terminal mr-3" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M0 2.75C0 1.784.784 1 1.75 1h12.5c.966 0 1.75.784 1.75 1.75v10.5A1.75 1.75 0 0114.25 15H1.75A1.75 1.75 0 010 13.25V2.75zm1.75-.25a.25.25 0 00-.25.25v10.5c0 .138.112.25.25.25h12.5a.25.25 0 00.25-.25V2.75a.25.25 0 00-.25-.25H1.75zM7.25 8a.75.75 0 01-.22.53l-2.25 2.25a.75.75 0 11-1.06-1.06L5.44 8 3.72 6.28a.75.75 0 111.06-1.06l2.25 2.25c.141.14.22.331.22.53zm1.5 1.5a.75.75 0 000 1.5h3a.75.75 0 000-1.5h-3z"></path></svg>
  Clone
</div>

<tab-container>

  <div class="UnderlineNav my-2 box-shadow-none">
    <div class="UnderlineNav-body" role="tablist">
      <!-- '"` --><!-- </textarea></xmp> --></option></form><form data-remote="true" action="/users/set_protocol?protocol_type=clone" accept-charset="UTF-8" method="post"><input type="hidden" data-csrf="true" name="authenticity_token" value="7RdAkjPiXqJD5hqmPkR6vFdQsGQXKfaTf0P61vfW5Ztbz1mXK2R+orloDEt0dVVuFoRLl1iKMjCH4vuebs/woA==" />
          <button name="protocol_selector" type="submit" role="tab" class="UnderlineNav-item lh-default f6 py-0 px-0 mr-2 position-relative" aria-selected="true" value="http" data-hydro-click="{&quot;event_type&quot;:&quot;clone_or_download.click&quot;,&quot;payload&quot;:{&quot;feature_clicked&quot;:&quot;USE_HTTPS&quot;,&quot;git_repository_type&quot;:&quot;REPOSITORY&quot;,&quot;repository_id&quot;:29557376,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="c5271d12f03e4debffd255835049edb608feced0ca468a06d32485ca1442f397">
            HTTPS
</button>          <button name="protocol_selector" type="submit" role="tab" class="UnderlineNav-item lh-default f6 py-0 px-0 mr-2 position-relative" value="gh_cli" data-hydro-click="{&quot;event_type&quot;:&quot;clone_or_download.click&quot;,&quot;payload&quot;:{&quot;feature_clicked&quot;:&quot;USE_GH_CLI&quot;,&quot;git_repository_type&quot;:&quot;REPOSITORY&quot;,&quot;repository_id&quot;:29557376,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="46635f23139c16c82458d3b38d0be7053a0b4774cca7aded9865dd0e245442c9">
            GitHub CLI
</button></form>    </div>
  </div>

  <div role="tabpanel">
    <div class="input-group">
  <input type="text" class="form-control input-monospace input-sm bg-gray-light" data-autoselect value="https://github.com/aol/cyclops.git" aria-label="https://github.com/aol/cyclops.git" readonly>
  <div class="input-group-button">
    <clipboard-copy value="https://github.com/aol/cyclops.git" aria-label="Copy to clipboard" class="btn btn-sm" data-hydro-click="{&quot;event_type&quot;:&quot;clone_or_download.click&quot;,&quot;payload&quot;:{&quot;feature_clicked&quot;:&quot;COPY_URL&quot;,&quot;git_repository_type&quot;:&quot;REPOSITORY&quot;,&quot;repository_id&quot;:29557376,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="1bf46cba555f25b231fd1fc6199957e92dc2704a76e9f3ac4a345257d7f1a320"><svg class="octicon octicon-clippy" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M5.75 1a.75.75 0 00-.75.75v3c0 .414.336.75.75.75h4.5a.75.75 0 00.75-.75v-3a.75.75 0 00-.75-.75h-4.5zm.75 3V2.5h3V4h-3zm-2.874-.467a.75.75 0 00-.752-1.298A1.75 1.75 0 002 3.75v9.5c0 .966.784 1.75 1.75 1.75h8.5A1.75 1.75 0 0014 13.25v-9.5a1.75 1.75 0 00-.874-1.515.75.75 0 10-.752 1.298.25.25 0 01.126.217v9.5a.25.25 0 01-.25.25h-8.5a.25.25 0 01-.25-.25v-9.5a.25.25 0 01.126-.217z"></path></svg></clipboard-copy>
  </div>
</div>

    <p class="mt-2 mb-0 f6 text-gray">
        Use Git or checkout with SVN using the web URL.
    </p>
  </div>


  <div role="tabpanel" hidden>
    <div class="input-group">
  <input type="text" class="form-control input-monospace input-sm bg-gray-light" data-autoselect value="gh repo clone aol/cyclops" aria-label="gh repo clone aol/cyclops" readonly>
  <div class="input-group-button">
    <clipboard-copy value="gh repo clone aol/cyclops" aria-label="Copy to clipboard" class="btn btn-sm" data-hydro-click="{&quot;event_type&quot;:&quot;clone_or_download.click&quot;,&quot;payload&quot;:{&quot;feature_clicked&quot;:&quot;COPY_URL&quot;,&quot;git_repository_type&quot;:&quot;REPOSITORY&quot;,&quot;repository_id&quot;:29557376,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="1bf46cba555f25b231fd1fc6199957e92dc2704a76e9f3ac4a345257d7f1a320"><svg class="octicon octicon-clippy" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M5.75 1a.75.75 0 00-.75.75v3c0 .414.336.75.75.75h4.5a.75.75 0 00.75-.75v-3a.75.75 0 00-.75-.75h-4.5zm.75 3V2.5h3V4h-3zm-2.874-.467a.75.75 0 00-.752-1.298A1.75 1.75 0 002 3.75v9.5c0 .966.784 1.75 1.75 1.75h8.5A1.75 1.75 0 0014 13.25v-9.5a1.75 1.75 0 00-.874-1.515.75.75 0 10-.752 1.298.25.25 0 01.126.217v9.5a.25.25 0 01-.25.25h-8.5a.25.25 0 01-.25-.25v-9.5a.25.25 0 01.126-.217z"></path></svg></clipboard-copy>
  </div>
</div>

    <p class="mt-2 mb-0 f6 text-gray">
      Work fast with our official CLI.
      <a href="https://cli.github.com" target="_blank">Learn more</a>.
    </p>
  </div>
</tab-container>

          </div>
          <ul class="list-style-none">
            <li data-platforms="windows,mac" class="Box-row Box-row--hover-gray p-0 rounded-0 mt-0 js-remove-unless-platform">
              <a class="d-flex flex-items-center text-gray-dark text-bold no-underline p-3" data-hydro-click="{&quot;event_type&quot;:&quot;clone_or_download.click&quot;,&quot;payload&quot;:{&quot;feature_clicked&quot;:&quot;OPEN_IN_DESKTOP&quot;,&quot;git_repository_type&quot;:&quot;REPOSITORY&quot;,&quot;repository_id&quot;:29557376,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="9778783df7de66b3f54adbb45210274a91cb890a3bf4845ae68ec57436907da1" data-action="click:get-repo#showDownloadMessage" href="https://desktop.github.com">
                <svg class="octicon octicon-desktop-download mr-3" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.75 5V.75a.75.75 0 00-1.5 0V5H5.104a.25.25 0 00-.177.427l2.896 2.896a.25.25 0 00.354 0l2.896-2.896A.25.25 0 0010.896 5H8.75zM1.5 2.75a.25.25 0 01.25-.25h3a.75.75 0 000-1.5h-3A1.75 1.75 0 000 2.75v7.5C0 11.216.784 12 1.75 12h3.727c-.1 1.041-.52 1.872-1.292 2.757A.75.75 0 004.75 16h6.5a.75.75 0 00.565-1.243c-.772-.885-1.193-1.716-1.292-2.757h3.727A1.75 1.75 0 0016 10.25v-7.5A1.75 1.75 0 0014.25 1h-3a.75.75 0 000 1.5h3a.25.25 0 01.25.25v7.5a.25.25 0 01-.25.25H1.75a.25.25 0 01-.25-.25v-7.5zM9.018 12H6.982a5.72 5.72 0 01-.765 2.5h3.566a5.72 5.72 0 01-.765-2.5z"></path></svg>
                Open with GitHub Desktop
</a>            </li>
            <li class="Box-row Box-row--hover-gray p-0">
              <a class="d-flex flex-items-center text-gray-dark text-bold no-underline p-3" rel="nofollow" data-hydro-click="{&quot;event_type&quot;:&quot;clone_or_download.click&quot;,&quot;payload&quot;:{&quot;feature_clicked&quot;:&quot;DOWNLOAD_ZIP&quot;,&quot;git_repository_type&quot;:&quot;REPOSITORY&quot;,&quot;repository_id&quot;:29557376,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}" data-hydro-click-hmac="aa807afbc6b15e3dbda3ff835baba81b3fa44fd3462fcf313956767895208e48" data-ga-click="Repository, download zip, location:repo overview" data-open-app="link" href="/aol/cyclops/archive/master.zip">
                <svg class="octicon octicon-file-zip mr-3" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M3.5 1.75a.25.25 0 01.25-.25h3a.75.75 0 000 1.5h.5a.75.75 0 000-1.5h2.086a.25.25 0 01.177.073l2.914 2.914a.25.25 0 01.073.177v8.586a.25.25 0 01-.25.25h-.5a.75.75 0 000 1.5h.5A1.75 1.75 0 0014 13.25V4.664c0-.464-.184-.909-.513-1.237L10.573.513A1.75 1.75 0 009.336 0H3.75A1.75 1.75 0 002 1.75v11.5c0 .649.353 1.214.874 1.515a.75.75 0 10.752-1.298.25.25 0 01-.126-.217V1.75zM8.75 3a.75.75 0 000 1.5h.5a.75.75 0 000-1.5h-.5zM6 5.25a.75.75 0 01.75-.75h.5a.75.75 0 010 1.5h-.5A.75.75 0 016 5.25zm2 1.5A.75.75 0 018.75 6h.5a.75.75 0 010 1.5h-.5A.75.75 0 018 6.75zm-1.25.75a.75.75 0 000 1.5h.5a.75.75 0 000-1.5h-.5zM8 9.75A.75.75 0 018.75 9h.5a.75.75 0 010 1.5h-.5A.75.75 0 018 9.75zm-.75.75a1.75 1.75 0 00-1.75 1.75v3c0 .414.336.75.75.75h2.5a.75.75 0 00.75-.75v-3a1.75 1.75 0 00-1.75-1.75h-.5zM7 12.25a.25.25 0 01.25-.25h.5a.25.25 0 01.25.25v2.25H7v-2.25z"></path></svg>
                Download ZIP
</a>            </li>
          </ul>
        </div>

        <div class="p-3" data-targets="get-repo.platforms" data-platform="mac" hidden>
          <h4 class="lh-condensed mb-3">Launching GitHub Desktop<span class="AnimatedEllipsis"></span></h4>
          <p class="text-gray">If nothing happens, <a href="https://desktop.github.com/">download GitHub Desktop</a> and try again.</p>
          <button type="button" class="btn-link" data-action="click:get-repo#onDetailsToggle">Go back</button>
        </div>

        <div class="p-3" data-targets="get-repo.platforms" data-platform="windows" hidden>
          <h4 class="lh-condensed mb-3">Launching GitHub Desktop<span class="AnimatedEllipsis"></span></h4>
          <p class="text-gray">If nothing happens, <a href="https://desktop.github.com/">download GitHub Desktop</a> and try again.</p>
          <button type="button" class="btn-link" data-action="click:get-repo#onDetailsToggle">Go back</button>
        </div>

        <div class="p-3" data-targets="get-repo.platforms" data-platform="xcode" hidden>
          <h4 class="lh-condensed mb-3">Launching Xcode<span class="AnimatedEllipsis"></span></h4>
          <p class="text-gray">If nothing happens, <a href="https://developer.apple.com/xcode/">download Xcode</a> and try again.</p>
          <button type="button" class="btn-link" data-action="click:get-repo#onDetailsToggle">Go back</button>
        </div>

        <div class="p-3" data-targets="get-repo.platforms" data-platform="visual-studio" hidden>
          <h4 class="lh-condensed mb-3">Launching Visual Studio<span class="AnimatedEllipsis"></span></h4>
          <p class="text-gray">If nothing happens, <a href="https://visualstudio.github.com/">download the GitHub extension for Visual Studio</a> and try again.</p>
          <button type="button" class="btn-link" data-action="click:get-repo#onDetailsToggle">Go back</button>
        </div>

      </div>
    </div>
  </details>
</get-repo>


      
    </span>
</div>


      

<div class="Box mb-3">
  <div class="Box-header Box-header--blue position-relative">
    <h2 class="sr-only">Latest commit</h2>
    <div class="js-details-container Details d-flex rounded-top-1 flex-items-center flex-wrap" data-issue-and-pr-hovercards-enabled>
      
  <div class="flex-shrink-0 ml-n1 mr-n1 mt-n1 mb-n1 hx_avatar_stack_commit">
    
<div class="AvatarStack flex-self-start ">
  <div class="AvatarStack-body" aria-label="johnmcclean">
        <a class="avatar avatar-user" data-skip-pjax="true" data-hovercard-type="user" data-hovercard-url="/users/johnmcclean/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" style="width:24px;height:24px;" href="/johnmcclean">
          <img height="24" width="24" alt="@johnmcclean" src="https://avatars1.githubusercontent.com/u/9964792?s=60&amp;u=3db463b40ac0bc4fb69a37e1a6adb82a712ebcde&amp;v=4" class=" avatar-user" />
</a>  </div>
</div>

  </div>
  <div class="flex-1 d-flex flex-items-center ml-3 min-width-0">
    <div class="css-truncate css-truncate-overflow text-gray">
      
      <a href="/aol/cyclops/commits?author=johnmcclean"
     class="commit-author user-mention"
     title="View all commits by johnmcclean">johnmcclean</a>


  

        <span class="d-none d-sm-inline">
          <a data-pjax="true" title="Update README.md" class="link-gray-dark" href="/aol/cyclops/commit/dc26bdad0f2b8a5aa87de4aa946ed52a0dbf00de">Update README.md</a>
        </span>
    </div>
    <span class="hidden-text-expander ml-2 d-inline-block d-inline-block d-lg-none">
      <button type="button" class="hx_bg-black-fade-15 text-gray-dark ellipsis-expander js-details-target" aria-expanded="false">&hellip;</button>
    </span>
    <div class="d-flex flex-auto flex-justify-end ml-3 flex-items-baseline">
        <include-fragment accept="text/fragment+html" src="/aol/cyclops/commit/dc26bdad0f2b8a5aa87de4aa946ed52a0dbf00de/rollup?direction=e" class="d-inline"></include-fragment>
      <a href="/aol/cyclops/commit/dc26bdad0f2b8a5aa87de4aa946ed52a0dbf00de" class="f6 link-gray text-mono ml-2 d-none d-lg-inline" data-pjax>dc26bda</a>
      <a href="/aol/cyclops/commit/dc26bdad0f2b8a5aa87de4aa946ed52a0dbf00de" class="link-gray ml-2" data-pjax>
        <relative-time datetime="2020-01-07T22:29:14Z" class="no-wrap">Jan 7, 2020</relative-time>
      </a>
    </div>
  </div>
  <div class="pl-0 pl-md-5 flex-order-1 width-full Details-content--hidden">
      <div class="mt-2">
        <a data-pjax="true" class="link-gray-dark text-bold" href="/aol/cyclops/commit/dc26bdad0f2b8a5aa87de4aa946ed52a0dbf00de">Update README.md</a>
      </div>

    <div class="d-flex flex-items-center">
      <span class="text-gray-dark text-mono d-lg-none hx_bg-black-fade-15 px-1 rounded-1 text-small mt-2">dc26bda</span>
    </div>
  </div>
      <div class="flex-shrink-0">
        <h2 class="sr-only">Git stats</h2>
        <ul class="list-style-none d-flex">
          <li class="ml-0 ml-md-3">
            <a data-pjax href="/aol/cyclops/commits/master" class="pl-3 pr-3 py-3 p-md-0 mt-n3 mb-n3 mr-n3 m-md-0 link-gray-dark no-underline no-wrap">
              <svg text="gray" height="16" class="octicon octicon-history text-gray" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M1.643 3.143L.427 1.927A.25.25 0 000 2.104V5.75c0 .138.112.25.25.25h3.646a.25.25 0 00.177-.427L2.715 4.215a6.5 6.5 0 11-1.18 4.458.75.75 0 10-1.493.154 8.001 8.001 0 101.6-5.684zM7.75 4a.75.75 0 01.75.75v2.992l2.028.812a.75.75 0 01-.557 1.392l-2.5-1A.75.75 0 017 8.25v-3.5A.75.75 0 017.75 4z"></path></svg>
              <span class="d-none d-sm-inline">
                    <strong>3,502</strong>
                  <span aria-label="Commits on master" class="text-gray d-none d-lg-inline">commits</span>
              </span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <h2 id="files"  class="sr-only">Files</h2>
  


  <include-fragment src="/aol/cyclops/file-list/master">
      <a class="d-none js-permalink-shortcut" data-hotkey="y" href="/aol/cyclops/tree/dc26bdad0f2b8a5aa87de4aa946ed52a0dbf00de">Permalink</a>

  <div class="include-fragment-error flash flash-error flash-full py-2">
  <svg height="16" class="octicon octicon-alert" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.22 1.754a.25.25 0 00-.44 0L1.698 13.132a.25.25 0 00.22.368h12.164a.25.25 0 00.22-.368L8.22 1.754zm-1.763-.707c.659-1.234 2.427-1.234 3.086 0l6.082 11.378A1.75 1.75 0 0114.082 15H1.918a1.75 1.75 0 01-1.543-2.575L6.457 1.047zM9 11a1 1 0 11-2 0 1 1 0 012 0zm-.25-5.25a.75.75 0 00-1.5 0v2.5a.75.75 0 001.5 0v-2.5z"></path></svg>
  
    Failed to load latest commit information.

</div>  <div class="js-details-container Details">
    <div role="grid" aria-labelledby="files" class="Details-content--hidden-not-important js-navigation-container js-active-navigation-container d-md-block" data-pjax>
      <div class="sr-only" role="row">
        <div role="columnheader">Type</div>
        <div role="columnheader">Name</div>
        <div role="columnheader" class="d-none d-md-block">Latest commit message</div>
        <div role="columnheader">Commit time</div>
      </div>

        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="blue-3" aria-label="Directory" height="16" class="octicon octicon-file-directory color-blue-3" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M1.75 1A1.75 1.75 0 000 2.75v10.5C0 14.216.784 15 1.75 15h12.5A1.75 1.75 0 0016 13.25v-8.5A1.75 1.75 0 0014.25 3h-6.5a.25.25 0 01-.2-.1l-.9-1.2c-.33-.44-.85-.7-1.4-.7h-3.5z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="This path skips through empty directories" id="56197b3fc60f4850ae72270fe966ac92-1c7f0712bfbfaa6f6e425fe15d9f740a23dc06ca" href="/aol/cyclops/tree/master/.github/ISSUE_TEMPLATE"><span class="text-gray-light">.github/</span>ISSUE_TEMPLATE</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="blue-3" aria-label="Directory" height="16" class="octicon octicon-file-directory color-blue-3" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M1.75 1A1.75 1.75 0 000 2.75v10.5C0 14.216.784 15 1.75 15h12.5A1.75 1.75 0 0016 13.25v-8.5A1.75 1.75 0 0014.25 3h-6.5a.25.25 0 01-.2-.1l-.9-1.2c-.33-.44-.85-.7-1.4-.7h-3.5z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="cyclops-anym" id="8600cf3b3e7966dbd6d0f64b4b358cd6-d15cd5532c14762ccacdce91e39b8b9890317863" href="/aol/cyclops/tree/master/cyclops-anym">cyclops-anym</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="blue-3" aria-label="Directory" height="16" class="octicon octicon-file-directory color-blue-3" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M1.75 1A1.75 1.75 0 000 2.75v10.5C0 14.216.784 15 1.75 15h12.5A1.75 1.75 0 0016 13.25v-8.5A1.75 1.75 0 0014.25 3h-6.5a.25.25 0 01-.2-.1l-.9-1.2c-.33-.44-.85-.7-1.4-.7h-3.5z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="cyclops-futurestream" id="28aec8e9d6d64d206c730a0be6830887-532e1a41cdabf1243de705f920de09771e228590" href="/aol/cyclops/tree/master/cyclops-futurestream">cyclops-futurestream</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="blue-3" aria-label="Directory" height="16" class="octicon octicon-file-directory color-blue-3" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M1.75 1A1.75 1.75 0 000 2.75v10.5C0 14.216.784 15 1.75 15h12.5A1.75 1.75 0 0016 13.25v-8.5A1.75 1.75 0 0014.25 3h-6.5a.25.25 0 01-.2-.1l-.9-1.2c-.33-.44-.85-.7-1.4-.7h-3.5z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="cyclops-jackson-integration" id="ea0c684ab8b09886fbbbbb0e4120bf84-662a2ba8eb4e5a54f42a14871103b120065105ad" href="/aol/cyclops/tree/master/cyclops-jackson-integration">cyclops-jackson-integration</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="blue-3" aria-label="Directory" height="16" class="octicon octicon-file-directory color-blue-3" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M1.75 1A1.75 1.75 0 000 2.75v10.5C0 14.216.784 15 1.75 15h12.5A1.75 1.75 0 0016 13.25v-8.5A1.75 1.75 0 0014.25 3h-6.5a.25.25 0 01-.2-.1l-.9-1.2c-.33-.44-.85-.7-1.4-.7h-3.5z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="cyclops-pure" id="b69f7d4ac85e3dfae116d14b7e5fcb7f-803ddfda6664a5133a0ce0efa72784a4ea8980ec" href="/aol/cyclops/tree/master/cyclops-pure">cyclops-pure</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="blue-3" aria-label="Directory" height="16" class="octicon octicon-file-directory color-blue-3" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M1.75 1A1.75 1.75 0 000 2.75v10.5C0 14.216.784 15 1.75 15h12.5A1.75 1.75 0 0016 13.25v-8.5A1.75 1.75 0 0014.25 3h-6.5a.25.25 0 01-.2-.1l-.9-1.2c-.33-.44-.85-.7-1.4-.7h-3.5z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="cyclops-reactive-collections" id="cca101c69b72adce28894c7310cb03ef-f07e93ad86a3c8b5ce6f862664e11a2bc1d6901e" href="/aol/cyclops/tree/master/cyclops-reactive-collections">cyclops-reactive-collections</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="blue-3" aria-label="Directory" height="16" class="octicon octicon-file-directory color-blue-3" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M1.75 1A1.75 1.75 0 000 2.75v10.5C0 14.216.784 15 1.75 15h12.5A1.75 1.75 0 0016 13.25v-8.5A1.75 1.75 0 0014.25 3h-6.5a.25.25 0 01-.2-.1l-.9-1.2c-.33-.44-.85-.7-1.4-.7h-3.5z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="cyclops-reactor-integration" id="46b72ac2c06a802aa270df3e9e5f3c2c-9d5167d9087769855dd7bf1cae1c9d8a387ed481" href="/aol/cyclops/tree/master/cyclops-reactor-integration">cyclops-reactor-integration</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="blue-3" aria-label="Directory" height="16" class="octicon octicon-file-directory color-blue-3" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M1.75 1A1.75 1.75 0 000 2.75v10.5C0 14.216.784 15 1.75 15h12.5A1.75 1.75 0 0016 13.25v-8.5A1.75 1.75 0 0014.25 3h-6.5a.25.25 0 01-.2-.1l-.9-1.2c-.33-.44-.85-.7-1.4-.7h-3.5z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="cyclops-rxjava2-integration" id="30cf0640809b8ef158e36a96dfd8ba6f-a32992e412f8a6cb44c3d41a313655b786a86199" href="/aol/cyclops/tree/master/cyclops-rxjava2-integration">cyclops-rxjava2-integration</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="blue-3" aria-label="Directory" height="16" class="octicon octicon-file-directory color-blue-3" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M1.75 1A1.75 1.75 0 000 2.75v10.5C0 14.216.784 15 1.75 15h12.5A1.75 1.75 0 0016 13.25v-8.5A1.75 1.75 0 0014.25 3h-6.5a.25.25 0 01-.2-.1l-.9-1.2c-.33-.44-.85-.7-1.4-.7h-3.5z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="cyclops" id="6470b8509d18aaf4401b0329a79e5d81-9f75238558a43f821e68ae6d844f23d6b6085460" href="/aol/cyclops/tree/master/cyclops">cyclops</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="blue-3" aria-label="Directory" height="16" class="octicon octicon-file-directory color-blue-3" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M1.75 1A1.75 1.75 0 000 2.75v10.5C0 14.216.784 15 1.75 15h12.5A1.75 1.75 0 0016 13.25v-8.5A1.75 1.75 0 0014.25 3h-6.5a.25.25 0 01-.2-.1l-.9-1.2c-.33-.44-.85-.7-1.4-.7h-3.5z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="gradle" id="8ed1a771bc236c287ad93c699bfdd2d7-de41bf5d36b514b13fee44c3d7b86899767c8987" href="/aol/cyclops/tree/master/gradle">gradle</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title=".editorconfig" id="1e70daafb475c0ce3fef7d2728279182-3db1235fcce07199a7ea8944fe41670f60b2894e" href="/aol/cyclops/blob/master/.editorconfig">.editorconfig</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title=".gitignore" id="a084b794bc0759e7a6b77810e01874f2-d40f148f625961d2f686bdb9b9f7bcc0fab2a64f" href="/aol/cyclops/blob/master/.gitignore">.gitignore</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title=".java-version" id="8afd0607c3f8477a02b524b4568e7e17-d7ffb667a07d7a29f376bfd9492b804bb5126c46" href="/aol/cyclops/blob/master/.java-version">.java-version</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title=".travis.yml" id="354f30a63fb0907d4ad57269548329e3-47c455717fba8c62a5ad43df3e10b4678f72efbe" href="/aol/cyclops/blob/master/.travis.yml">.travis.yml</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="CODE_OF_CONDUCT.md" id="a1ee87dafebc22cbd96979f1b2b7e837-510193f5eb8a5ff9807dbe9bb5702cd609d46b59" href="/aol/cyclops/blob/master/CODE_OF_CONDUCT.md">CODE_OF_CONDUCT.md</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="CONTRIBUTING.md" id="6a3371457528722a734f3c51d9238c13-3eaf973a7fb1ea23176b5ef4656d120a07ffc998" href="/aol/cyclops/blob/master/CONTRIBUTING.md">CONTRIBUTING.md</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="LICENSE" id="9879d6db96fd29134fc802214163b95a-8dada3edaf50dbc082c9a125058f25def75e625a" itemprop="license" href="/aol/cyclops/blob/master/LICENSE">LICENSE</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="README.md" id="04c6e90faac2675aa89e2176d2eec7d8-24757ff8448d9ec65c0807760f9edb60fa5cdf3b" href="/aol/cyclops/blob/master/README.md">README.md</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="build.gradle" id="c197962302397baf3a4cc36463dce5ea-51f4efe0a6b390de70e87e4faec3709ac4aaa69f" href="/aol/cyclops/blob/master/build.gradle">build.gradle</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="gradle.properties" id="503f218d646c10f484fdc9d6315bf2e3-e1165c7446fb6d9ae4e4b962b78c877bbe8353ef" href="/aol/cyclops/blob/master/gradle.properties">gradle.properties</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="gradlew" id="36ffbd2ea7085cf19547193a7faf30c8-95bbe9e8cc508d2d6da6b9568065a5f4f9e6cce6" href="/aol/cyclops/blob/master/gradlew">gradlew</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="gradlew.bat" id="c9b677a57d25a366595a35b2230d0502-e95643d6a2ca62258464e83c72f5156dc941c609" href="/aol/cyclops/blob/master/gradlew.bat">gradlew.bat</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="license-for-derived-quartz-cronrexpression.md" id="553d466a6f01886d556bc8c8b69ea537-4ac25e61df4119fcca6fa0213b78d22233eaa27b" itemprop="license" href="/aol/cyclops/blob/master/license-for-derived-quartz-cronrexpression.md">license-for-derived-quartz-cronrexpression.md</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
        <div role="row" class="Box-row Box-row--focus-gray py-2 d-flex position-relative js-navigation-item ">
          <div role="gridcell" class="mr-3 flex-shrink-0" style="width: 16px;">
              <svg color="gray-light" aria-label="File" height="16" class="octicon octicon-file text-gray-light" viewBox="0 0 16 16" version="1.1" width="16" role="img"><path fill-rule="evenodd" d="M3.75 1.5a.25.25 0 00-.25.25v11.5c0 .138.112.25.25.25h8.5a.25.25 0 00.25-.25V6H9.75A1.75 1.75 0 018 4.25V1.5H3.75zm5.75.56v2.19c0 .138.112.25.25.25h2.19L9.5 2.06zM2 1.75C2 .784 2.784 0 3.75 0h5.086c.464 0 .909.184 1.237.513l3.414 3.414c.329.328.513.773.513 1.237v8.086A1.75 1.75 0 0112.25 15h-8.5A1.75 1.75 0 012 13.25V1.75z"></path></svg>

          </div>

          <div role="rowheader" class="flex-auto min-width-0 col-md-2 mr-3">
            <span class="css-truncate css-truncate-target d-block width-fit"><a class="js-navigation-open link-gray-dark" title="settings.gradle" id="88b7c47e47b8ee65263b6784b86fa0a7-66290260ade8e4b1018d00d4fe8fae25db914169" href="/aol/cyclops/blob/master/settings.gradle">settings.gradle</a></span>
          </div>

          <div role="gridcell" class="flex-auto min-width-0 d-none d-md-block col-5 mr-3" >
              <div class="Skeleton Skeleton--text col-7">&nbsp;</div>
          </div>

          <div role="gridcell" class="text-gray-light text-right" style="width:100px;">
              <div class="Skeleton Skeleton--text">&nbsp;</div>
          </div>

        </div>
    </div>
    <div class="Details-content--shown Box-footer d-md-none p-0">
      <button type="button" class="d-block btn-link js-details-target width-full px-3 py-2" aria-expanded="false">
        View code
      </button>
    </div>
  </div>

</include-fragment>


</div>

  <div id="readme" class="Box md js-code-block-container Box--responsive">
    <div class="Box-header d-flex flex-items-center flex-justify-between bg-white border-bottom-0">
      <h2 class="Box-title pr-3">
        README.md
      </h2>
    </div>
        <div class="Popover anim-scale-in js-tagsearch-popover"
     hidden
     data-tagsearch-url="/aol/cyclops/find-definition"
     data-tagsearch-ref="master"
     data-tagsearch-path="README.md"
     data-tagsearch-lang="Markdown"
     data-hydro-click="{&quot;event_type&quot;:&quot;code_navigation.click_on_symbol&quot;,&quot;payload&quot;:{&quot;action&quot;:&quot;click_on_symbol&quot;,&quot;repository_id&quot;:29557376,&quot;ref&quot;:&quot;master&quot;,&quot;language&quot;:&quot;Markdown&quot;,&quot;originating_url&quot;:&quot;https://github.com/aol/cyclops&quot;,&quot;user_id&quot;:null}}"
     data-hydro-click-hmac="1828b2decad2a053e04800615732452fab6b69b0abf4620d4ed5f7c64c110b57">
  <div class="Popover-message Popover-message--large Popover-message--top-left TagsearchPopover mt-1 mb-4 mx-auto Box box-shadow-large">
    <div class="TagsearchPopover-content js-tagsearch-popover-content overflow-auto" style="will-change:transform;">
    </div>
  </div>
</div>

      <div class="Box-body px-5 pb-5">
        <article class="markdown-body entry-content container-lg" itemprop="text"><h1><a id="user-content-getting-cyclops-x-10" class="anchor" aria-hidden="true" href="#getting-cyclops-x-10"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Getting Cyclops X (10)</h1>
<ul>
<li>
<p>The latest version is <a href="http://mvnrepository.com/artifact/com.oath.cyclops/cyclops/10.4.0" rel="nofollow">cyclops:10.4.0</a></p>
</li>
<li>
<p>Stackoverflow tag <a href="http://stackoverflow.com/search?q=cyclops-react" rel="nofollow">cyclops-react</a></p>
</li>
<li>
<p><a href="https://github.com/aol/cyclops/wiki">Documentation</a> (work in progress for Cyclops X)</p>
</li>
<li>
<p><a href="https://github.com/aol/cyclops-integration">Integration modules</a></p>
</li>
</ul>
<h1><a id="user-content-tutorial-" class="anchor" aria-hidden="true" href="#tutorial-"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Tutorial :</h1>
<ul>
<li>
<p><a href="https://medium.com/@johnmcclean/dysfunctional-programming-in-java-a-functional-tutorial-20e0bebd2ec9" rel="nofollow">Dysfunctional programming in Java : A functional tutorial</a></p>
<ul>
<li><a href="https://medium.com/@johnmcclean/dysfunctional-programming-in-java-i-laziness-cc9c6981de39" rel="nofollow">Part 1 : Laziness (Covering Supplier &amp; the Eval monad)</a></li>
<li><a href="https://medium.com/@johnmcclean/dysfunctional-programming-in-java-2-immutability-a2cff487c224" rel="nofollow">Part 2 : Immutability (Covering Immutable Objects with Lombok, withers)</a></li>
<li><a href="https://medium.com/@johnmcclean/dysfunctional-programming-in-java-3-functional-composition-16828f0609c2" rel="nofollow">Part 3 : Functional Composition (Covering method chaining, Streams, ReactiveSeq, Flux from Reactor)</a></li>
<li><a href="https://blog.usejournal.com/dysfunctional-programming-in-java-4-no-nulls-allowed-88e8735475a" rel="nofollow">Part 4 : No nulls allowed (Covering class design, Optional, eager / lazy / reactive Option types, Mono from Reactor)</a></li>
<li><a href="https://medium.com/@johnmcclean/dysfunctional-programming-in-java-5-no-exceptions-5f37ac594323" rel="nofollow">Part 5 : No exceptions (Covering making illegal states unrepresentable, eager / lazy Either type, Try)</a></li>
<li><a href="https://medium.com/@johnmcclean/dysfunctional-programming-in-java-6-no-locks-or-synchronized-blocks-ea5a47644689" rel="nofollow">Part 6 : No locks or synchronized blocks (Covering Future, Sequence, FutureStreams and reactive-streams)</a></li>
<li><a href="https://medium.com/@johnmcclean/dysfunctional-programming-in-java-7-immutable-collections-83ba78aaf4dd" rel="nofollow">Part 7 : Immutable Collections (Covering Vector, NonEmptyList and reactive processing)</a></li>
</ul>
<ul>
<li><a href="https://medium.com/@johnmcclean/powerful-extensible-code-with-tagless-final-in-java-4094f923cdea" rel="nofollow">Tagless Final in Java</a></li>
<li><a href="https://medium.com/@johnmcclean/a-java-long-read-is-functional-programming-worth-it-ca53bfcd0c6a" rel="nofollow">A Java long read : Is functional programming worth it?</a></li>
</ul>
</li>
</ul>
<h1><a id="user-content-whats-new-in-cyclops-x-cyclops-10" class="anchor" aria-hidden="true" href="#whats-new-in-cyclops-x-cyclops-10"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>What's new in Cyclops X (cyclops 10)</h1>
<p><a target="_blank" rel="noopener noreferrer" href="https://user-images.githubusercontent.com/9964792/37656704-b4266d7a-2c40-11e8-84d9-23a4a77e0341.jpeg"><img src="https://user-images.githubusercontent.com/9964792/37656704-b4266d7a-2c40-11e8-84d9-23a4a77e0341.jpeg" alt="cyclops-data-types" style="max-width:100%;"></a></p>
<ul>
<li>Fast purely functional datastructures (Vector, Seq / List, LazySeq / LazyList, NonEmptyList, HashSet, TreeSet, TrieSet, HashMap, LinkedMap, MultiMap, TreeMap, BankersQueue, LazyString, Discrete Interval Encoded Tree, Zipper, Range, Tree, DifferenceList, HList, Dependent Map )</li>
<li>Structural Pattern Matching API (deconstruct algebraic product and sum types)</li>
<li>Improved type safety via the removal of unsafe APIs
-- E.g. Unlike Optional, Option has no get method (which could throw a null pointer)
-- New data structures do not support operations that would throw exceptions (you can't call head on an empty list for example)</li>
<li>Eager and Lazy alternatives for most datastructures (Option is eager, Maybe is lazy + reactive)</li>
<li>Improved naming of types (Function1-8 rather than Fn1-8, Either not Xor)</li>
<li>Group id is changed to com.oath.cyclops</li>
<li>Versioning between cyclops-react and cyclops is merged on cyclops versioning scheme (version 10 = Cyclops X)</li>
<li>Light weight dependencies : reactive-streams API, KindedJ &amp; Agrona</li>
<li>JVM Polyglot Higher Kinded Types Support with KindedJ</li>
</ul>
<h2><a id="user-content-modules" class="anchor" aria-hidden="true" href="#modules"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Modules</h2>
<ul>
<li><a href="https://github.com/aol/cyclops-react/tree/master/cyclops">cyclops</a> - Persistent data structures and control types</li>
<li><a href="https://github.com/aol/cyclops-react/tree/master/cyclops-futurestream">cyclops-futurestream</a> - Parallel asynchronous streaming</li>
<li><a href="https://github.com/aol/cyclops-react/tree/master/cyclops-reactive-collections">cyclops-reactive-collections</a> - Fast, non-blocking, asynchronous extensions for JDK and Persistent Collections</li>
<li><a href="https://github.com/aol/cyclops-react/tree/master/cyclops-anym">cyclops-anyM</a> - Higher kinded abstractions for working with any Java Monad type.</li>
<li><a href="https://github.com/aol/cyclops-react/tree/master/cyclops-pure">cyclops-pure</a> - Higher kinded type classes for pure functional programming in Java</li>
<li><a href="https://github.com/aol/cyclops-react/tree/master/cyclops-reactor-integration">cyclops-reactor-integration</a> - Reactive collections and AnyM integrations with Reactor.</li>
<li><a href="https://github.com/aol/cyclops-react/tree/master/cyclops-rxjava2-integration">cyclops-rxjava2-integration</a> - Reactive collections and AnyM integrations with Rx Java 2.</li>
<li><a href="https://github.com/aol/cyclops-react/tree/master/cyclops-jackson">cyclops-jackson-integration</a> - Jackson databindings for Cyclops persistent data structures and control types.</li>
</ul>
<h2><a id="user-content-gradle" class="anchor" aria-hidden="true" href="#gradle"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Gradle</h2>
<p>where x.y.z represents the latest version</p>
<div class="highlight highlight-source-groovy"><pre>compile <span class="pl-s"><span class="pl-pds">'</span>com.oath.cyclops:cyclops:x.y.z<span class="pl-pds">'</span></span></pre></div>
<h2><a id="user-content-maven" class="anchor" aria-hidden="true" href="#maven"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Maven</h2>
<div class="highlight highlight-text-xml"><pre>&lt;<span class="pl-ent">dependency</span>&gt;
    &lt;<span class="pl-ent">groupId</span>&gt;com.oath.cyclops&lt;/<span class="pl-ent">groupId</span>&gt;
    &lt;<span class="pl-ent">artifactId</span>&gt;cyclops&lt;/<span class="pl-ent">artifactId</span>&gt;
    &lt;<span class="pl-ent">version</span>&gt;x.y.z&lt;/<span class="pl-ent">version</span>&gt;
&lt;/<span class="pl-ent">dependency</span>&gt;</pre></div>
<p><a target="_blank" rel="noopener noreferrer" href="https://cloud.githubusercontent.com/assets/9964792/13232030/306b0d50-d9a5-11e5-9706-d44d7731790d.png"><img width="820" alt="screen shot 2016-02-22 at 8 44 42 pm" src="https://cloud.githubusercontent.com/assets/9964792/13232030/306b0d50-d9a5-11e5-9706-d44d7731790d.png" style="max-width:100%;"></a></p>
<p>Powerful Streams and functional data types for building modern Java 8 applications. We extend JDK interfaces where possible for maximum integration.</p>
<p>This is the 10.x branch for 2.x branch click the link below</p>
<ul>
<li><a href="https://github.com/aol/cyclops-react/tree/2.x">2.x</a></li>
<li><a href="https://github.com/aol/cyclops-react/tree/1.x">1.x</a></li>
</ul>
<h1><a id="user-content-license" class="anchor" aria-hidden="true" href="#license"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>License</h1>
<p>cyclops is licensed under the Apache 2.0 license.</p>
<p><a href="http://www.apache.org/licenses/LICENSE-2.0" rel="nofollow">http://www.apache.org/licenses/LICENSE-2.0</a></p>
<h1><a id="user-content-thanks-to-our-sponsors" class="anchor" aria-hidden="true" href="#thanks-to-our-sponsors"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Thanks to our Sponsors</h1>
<ul>
<li><a target="_blank" rel="noopener noreferrer" href="https://camo.githubusercontent.com/97fa03cac759a772255b93c64ab1c9f76a103681/68747470733a2f2f7777772e796f75726b69742e636f6d2f696d616765732f796b6c6f676f2e706e67"><img src="https://camo.githubusercontent.com/97fa03cac759a772255b93c64ab1c9f76a103681/68747470733a2f2f7777772e796f75726b69742e636f6d2f696d616765732f796b6c6f676f2e706e67" alt="YourKit Logo" data-canonical-src="https://www.yourkit.com/images/yklogo.png" style="max-width:100%;"></a> YourKit supports open source projects with innovative and intelligent tools
for monitoring and profiling Java and .NET applications.
YourKit is the creator of <a href="https://www.yourkit.com/java/profiler/" rel="nofollow">YourKit Java Profiler</a>,
<a href="https://www.yourkit.com/.net/profiler/" rel="nofollow">YourKit .NET Profiler</a>,
and <a href="https://www.yourkit.com/youmonitor/" rel="nofollow">YourKit YouMonitor</a>.</li>
</ul>
</article>
      </div>
  </div>


</div>
    <div class="flex-shrink-0 col-12 col-md-3">
            

      <div class="BorderGrid BorderGrid--spacious" data-pjax>
        <div class="BorderGrid-row hide-sm hide-md">
          <div class="BorderGrid-cell">
            <h2 class="mb-3 h4">About</h2>

    <p class="f4 mt-3">
      An advanced, but easy to use, platform for writing functional applications in Java 8.
    </p>
    <div class="mt-3 d-flex flex-items-center">
      <svg mr="2" classes="flex-shrink-0" height="16" class="octicon octicon-link flex-shrink-0 mr-2" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg>
      <span class="flex-auto min-width-0 css-truncate css-truncate-target width-fit">
        <a title="http://cyclops-react.io" role="link" target="_blank" class="text-bold" rel="noopener noreferrer" href="http://cyclops-react.io">cyclops-react.io</a>
      </span>
    </div>

  <h3 class="sr-only">Topics</h3>
  <div class="mt-3">
      <div class="f6">
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:functional-programming" href="/topics/functional-programming" title="Topic: functional-programming" class="topic-tag topic-tag-link ">
  functional-programming
</a>
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:reactive-streams" href="/topics/reactive-streams" title="Topic: reactive-streams" class="topic-tag topic-tag-link ">
  reactive-streams
</a>
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:monoid" href="/topics/monoid" title="Topic: monoid" class="topic-tag topic-tag-link ">
  monoid
</a>
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:streams" href="/topics/streams" title="Topic: streams" class="topic-tag topic-tag-link ">
  streams
</a>
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:collections" href="/topics/collections" title="Topic: collections" class="topic-tag topic-tag-link ">
  collections
</a>
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:data-structures" href="/topics/data-structures" title="Topic: data-structures" class="topic-tag topic-tag-link ">
  data-structures
</a>
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:monad" href="/topics/monad" title="Topic: monad" class="topic-tag topic-tag-link ">
  monad
</a>
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:monad-transformers" href="/topics/monad-transformers" title="Topic: monad-transformers" class="topic-tag topic-tag-link ">
  monad-transformers
</a>
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:reactive" href="/topics/reactive" title="Topic: reactive" class="topic-tag topic-tag-link ">
  reactive
</a>
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:asynchronous" href="/topics/asynchronous" title="Topic: asynchronous" class="topic-tag topic-tag-link ">
  asynchronous
</a>
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:java8" href="/topics/java8" title="Topic: java8" class="topic-tag topic-tag-link ">
  java8
</a>
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:streams-api" href="/topics/streams-api" title="Topic: streams-api" class="topic-tag topic-tag-link ">
  streams-api
</a>
      <a data-ga-click="Topic, repository page" data-octo-click="topic_click" data-octo-dimensions="topic:java" href="/topics/java" title="Topic: java" class="topic-tag topic-tag-link ">
  java
</a>
  </div>

  </div>

  <h3 class="sr-only">Resources</h3>
  <div class="mt-3">
    <a class="muted-link" href="#readme">
      <svg mr="2" height="16" class="octicon octicon-book mr-2" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M0 1.75A.75.75 0 01.75 1h4.253c1.227 0 2.317.59 3 1.501A3.744 3.744 0 0111.006 1h4.245a.75.75 0 01.75.75v10.5a.75.75 0 01-.75.75h-4.507a2.25 2.25 0 00-1.591.659l-.622.621a.75.75 0 01-1.06 0l-.622-.621A2.25 2.25 0 005.258 13H.75a.75.75 0 01-.75-.75V1.75zm8.755 3a2.25 2.25 0 012.25-2.25H14.5v9h-3.757c-.71 0-1.4.201-1.992.572l.004-7.322zm-1.504 7.324l.004-5.073-.002-2.253A2.25 2.25 0 005.003 2.5H1.5v9h3.757a3.75 3.75 0 011.994.574z"></path></svg>
      Readme
</a>  </div>

  <h3 class="sr-only">License</h3>
  <div class="mt-3">
    <a href="/aol/cyclops/blob/master/LICENSE" class="muted-link" >
      <svg mr="2" height="16" class="octicon octicon-law mr-2" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.75.75a.75.75 0 00-1.5 0V2h-.984c-.305 0-.604.08-.869.23l-1.288.737A.25.25 0 013.984 3H1.75a.75.75 0 000 1.5h.428L.066 9.192a.75.75 0 00.154.838l.53-.53-.53.53v.001l.002.002.002.002.006.006.016.015.045.04a3.514 3.514 0 00.686.45A4.492 4.492 0 003 11c.88 0 1.556-.22 2.023-.454a3.515 3.515 0 00.686-.45l.045-.04.016-.015.006-.006.002-.002.001-.002L5.25 9.5l.53.53a.75.75 0 00.154-.838L3.822 4.5h.162c.305 0 .604-.08.869-.23l1.289-.737a.25.25 0 01.124-.033h.984V13h-2.5a.75.75 0 000 1.5h6.5a.75.75 0 000-1.5h-2.5V3.5h.984a.25.25 0 01.124.033l1.29.736c.264.152.563.231.868.231h.162l-2.112 4.692a.75.75 0 00.154.838l.53-.53-.53.53v.001l.002.002.002.002.006.006.016.015.045.04a3.517 3.517 0 00.686.45A4.492 4.492 0 0013 11c.88 0 1.556-.22 2.023-.454a3.512 3.512 0 00.686-.45l.045-.04.01-.01.006-.005.006-.006.002-.002.001-.002-.529-.531.53.53a.75.75 0 00.154-.838L13.823 4.5h.427a.75.75 0 000-1.5h-2.234a.25.25 0 01-.124-.033l-1.29-.736A1.75 1.75 0 009.735 2H8.75V.75zM1.695 9.227c.285.135.718.273 1.305.273s1.02-.138 1.305-.273L3 6.327l-1.305 2.9zm10 0c.285.135.718.273 1.305.273s1.02-.138 1.305-.273L13 6.327l-1.305 2.9z"></path></svg>
        Apache-2.0 License
    </a>
  </div>

          </div>
        </div>
          <div class="BorderGrid-row">
            <div class="BorderGrid-cell">
              <h2 class="h4 mb-3">
  <a href="/aol/cyclops/releases" class="link-gray-dark no-underline ">
    Releases
      <span title="65" class="Counter ">65</span>
</a></h2>

  <a class="link-gray-dark d-flex no-underline" href="/aol/cyclops/releases/tag/10.4.0">
    <svg mt="1" classes="flex-shrink-0" color="green" height="16" class="octicon octicon-tag flex-shrink-0 mt-1 text-green" viewBox="0 0 16 16" version="1.1" width="16" aria-hidden="true"><path fill-rule="evenodd" d="M2.5 7.775V2.75a.25.25 0 01.25-.25h5.025a.25.25 0 01.177.073l6.25 6.25a.25.25 0 010 .354l-5.025 5.025a.25.25 0 01-.354 0l-6.25-6.25a.25.25 0 01-.073-.177zm-1.5 0V2.75C1 1.784 1.784 1 2.75 1h5.025c.464 0 .91.184 1.238.513l6.25 6.25a1.75 1.75 0 010 2.474l-5.026 5.026a1.75 1.75 0 01-2.474 0l-6.25-6.25A1.75 1.75 0 011 7.775zM6 5a1 1 0 100 2 1 1 0 000-2z"></path></svg>
    <div class="ml-2 min-width-0">
      <div class="d-flex">
        <span class="css-truncate css-truncate-target text-bold mr-2" style="max-width: none;">Cyclops 10.4.0 : Introducing the Chain Data Structure</span>
        <span title="Label: Latest" class="Label Label--green flex-shrink-0">
          Latest
</span>      </div>
      <div class="text-small text-gray"><relative-time datetime="2020-01-08T12:12:39Z" class="no-wrap">Jan 8, 2020</relative-time></div>
    </div>
</a>    <div class="mt-3">
      <a href="/aol/cyclops/releases" class="text-small">
        + 64 releases
</a></div>
            </div>
          </div>
          <div class="BorderGrid-row">
            <div class="BorderGrid-cell">
              <h2 class="h4 mb-3">
  <a href="/orgs/aol/packages?repo_name=cyclops" class="link-gray-dark no-underline ">
    Packages <span title="0" hidden="hidden" class="Counter ">0</span>
</a></h2>


      <div class="text-small">
        No packages published <br>
      </div>



            </div>
          </div>
          <div class="BorderGrid-row" hidden>
            <div class="BorderGrid-cell">
              <include-fragment src="/aol/cyclops/used_by_list" accept="text/fragment+html">
</include-fragment>
            </div>
          </div>
          <div class="BorderGrid-row">
            <div class="BorderGrid-cell">
              <h2 class="h4 mb-3">
  <a href="/aol/cyclops/graphs/contributors" class="link-gray-dark no-underline ">
    Contributors <span title="29" class="Counter ">29</span>
</a></h2>


    <include-fragment src="/aol/cyclops/contributors_list?count=29&amp;current_repository=cyclops&amp;items_to_show=11" aria-busy="true" aria-label="Loading contributors">
      <ul class="list-style-none d-flex flex-wrap mb-n2">
          <li class="mb-2 ">
            <div class="Skeleton avatar avatar-user mr-2" style="width:32px;height:32px;"></div>
          </li>
          <li class="mb-2 ">
            <div class="Skeleton avatar avatar-user mr-2" style="width:32px;height:32px;"></div>
          </li>
          <li class="mb-2 ">
            <div class="Skeleton avatar avatar-user mr-2" style="width:32px;height:32px;"></div>
          </li>
          <li class="mb-2 ">
            <div class="Skeleton avatar avatar-user mr-2" style="width:32px;height:32px;"></div>
          </li>
          <li class="mb-2 ">
            <div class="Skeleton avatar avatar-user mr-2" style="width:32px;height:32px;"></div>
          </li>
          <li class="mb-2 ">
            <div class="Skeleton avatar avatar-user mr-2" style="width:32px;height:32px;"></div>
          </li>
          <li class="mb-2 ">
            <div class="Skeleton avatar avatar-user mr-2" style="width:32px;height:32px;"></div>
          </li>
          <li class="mb-2 ">
            <div class="Skeleton avatar avatar-user mr-2" style="width:32px;height:32px;"></div>
          </li>
          <li class="mb-2 ">
            <div class="Skeleton avatar avatar-user mr-2" style="width:32px;height:32px;"></div>
          </li>
          <li class="mb-2 ">
            <div class="Skeleton avatar avatar-user mr-2" style="width:32px;height:32px;"></div>
          </li>
          <li class="mb-2 ">
            <div class="Skeleton avatar avatar-user mr-2" style="width:32px;height:32px;"></div>
          </li>
      </ul>
</include-fragment>

  <div class="mt-3">
    <a href="/aol/cyclops/graphs/contributors" class="text-small">
      + 18 contributors
</a></div>
            </div>
          </div>
          <div class="BorderGrid-row">
            <div class="BorderGrid-cell">
              <h2 class="h4 mb-3">Languages</h2>
<div class="mb-2">
  <span class="Progress ">
    <span itemprop="keywords" aria-label="Java 100.0" style="background-color: #b07219;width: 100.0%;" class="Progress-item "></span>
</span></div>
<ul class="list-style-none">
    <li class="d-inline">
      <a class="d-inline-flex flex-items-center flex-nowrap link-gray no-underline text-small mr-3" href="/aol/cyclops/search?l=java"  data-ga-click="Repository, language stats search click, location:repo overview">
        <svg class="octicon octicon-dot-fill mr-2" style="color:#b07219;" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8z"></path></svg>
        <span class="text-gray-dark text-bold mr-1">Java</span>
        <span>100.0%</span>
      </a>
    </li>
</ul>

            </div>
          </div>
      </div>

</div></div>

  </div>
</div>

    </main>
  </div>

  </div>

        
<div class="footer container-xl width-full p-responsive" role="contentinfo">
    <div class="position-relative d-flex flex-row-reverse flex-lg-row flex-wrap flex-lg-nowrap flex-justify-center flex-lg-justify-between flex-sm-items-center pt-6 pb-2 mt-6 f6 text-gray border-top border-gray-light ">
      <a aria-label="Homepage" title="GitHub" class="footer-octicon d-none d-lg-block mr-lg-4" href="https://github.com">
        <svg height="24" class="octicon octicon-mark-github" viewBox="0 0 16 16" version="1.1" width="24" aria-hidden="true"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path></svg>
</a>
      <ul class="list-style-none d-flex flex-wrap col-12 flex-justify-center flex-lg-justify-between mb-2 mb-lg-0">
        <li class="mr-3 mr-lg-0">&copy; 2020 GitHub, Inc.</li>
          <li class="mr-3 mr-lg-0"><a data-ga-click="Footer, go to terms, text:terms" href="https://github.com/site/terms">Terms</a></li>
          <li class="mr-3 mr-lg-0"><a data-ga-click="Footer, go to privacy, text:privacy" href="https://github.com/site/privacy">Privacy</a></li>
            <li class="js-cookie-consent-preferences-link-container mr-3 mr-lg-0" hidden="hidden">
  <button data-ga-click="Footer, go to cookie preferences, text:cookie preferences" class="btn-link js-cookie-consent-preferences-link" type="button">Cookie Preferences</button>
</li>
          <li class="mr-3 mr-lg-0"><a data-ga-click="Footer, go to security, text:security" href="https://github.com/security">Security</a></li>
          <li class="mr-3 mr-lg-0"><a href="https://githubstatus.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
          <li class="mr-3 mr-lg-0"><a data-ga-click="Footer, go to help, text:help" href="https://docs.github.com">Help</a></li>
          <li class="mr-3 mr-lg-0"><a data-ga-click="Footer, go to contact, text:contact" href="https://github.com/contact">Contact GitHub</a></li>
          <li class="mr-3 mr-lg-0"><a href="https://github.com/pricing" data-ga-click="Footer, go to Pricing, text:Pricing">Pricing</a></li>
        <li class="mr-3 mr-lg-0"><a href="https://docs.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
        <li class="mr-3 mr-lg-0"><a href="https://services.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
          <li class="mr-3 mr-lg-0"><a href="https://github.blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
          <li class="mr-3 mr-lg-0"><a data-ga-click="Footer, go to about, text:about" href="https://github.com/about">About</a></li>
      </ul>
    </div>
  <div class="d-flex flex-justify-center pb-6">
    <span class="f6 text-gray-light"></span>
  </div>
</div>



  <div id="ajax-error-message" class="ajax-error-message flash flash-error">
    <svg class="octicon octicon-alert" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.22 1.754a.25.25 0 00-.44 0L1.698 13.132a.25.25 0 00.22.368h12.164a.25.25 0 00.22-.368L8.22 1.754zm-1.763-.707c.659-1.234 2.427-1.234 3.086 0l6.082 11.378A1.75 1.75 0 0114.082 15H1.918a1.75 1.75 0 01-1.543-2.575L6.457 1.047zM9 11a1 1 0 11-2 0 1 1 0 012 0zm-.25-5.25a.75.75 0 00-1.5 0v2.5a.75.75 0 001.5 0v-2.5z"></path></svg>
    <button type="button" class="flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
      <svg class="octicon octicon-x" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M3.72 3.72a.75.75 0 011.06 0L8 6.94l3.22-3.22a.75.75 0 111.06 1.06L9.06 8l3.22 3.22a.75.75 0 11-1.06 1.06L8 9.06l-3.22 3.22a.75.75 0 01-1.06-1.06L6.94 8 3.72 4.78a.75.75 0 010-1.06z"></path></svg>
    </button>
    You can’t perform that action at this time.
  </div>


    <script crossorigin="anonymous" async="async" integrity="sha512-XyN2Sn5JcQH5zGQbM7DULKGTxGOF0zhln65SiUA38yVFtk83Mog/FgaVVcn4yg1cFzE6nyS/R5vwGTq6jlUmbg==" type="application/javascript" data-module-id="./compat.js" data-src="https://github.githubassets.com/assets/compat-5f23764a.js"></script>
    <script crossorigin="anonymous" integrity="sha512-hrIGIaNCSN5KaFOIU5o5VK/f1u1YBY00k5alJYyoh8fPZirfpq9HtJ/izIu0QDTOGOD9ylvucERGfNLBJtV4mQ==" type="application/javascript" src="https://github.githubassets.com/assets/environment-86b20621.js"></script>
    <script crossorigin="anonymous" async="async" integrity="sha512-pDoSy+lGZEIqfmxmbGsQjCc9OnsB64vTSt1Qn5JZ4eYxqVgmookY2GSQGdaquPu/qTRix/kCkFDctCkqHpjYYA==" type="application/javascript" src="https://github.githubassets.com/assets/chunk-vendor-a43a12cb.js"></script>
    <script crossorigin="anonymous" async="async" integrity="sha512-R103QTfK11PKQkADrtcF8Wz9i3jcTpbmuIMY4N25+gw/SkpUtFnU1X1bXXdioQrywBRy7uFJZlCpGYMiUH6i/w==" type="application/javascript" src="https://github.githubassets.com/assets/chunk-frameworks-475d3741.js"></script>
    
    <script crossorigin="anonymous" async="async" integrity="sha512-9HSqLJ2XJ4vHziviHLbEAL76wc6wHb1/dbeVDTnVNSdqbxkL/niHKjX2Ktyf2+pzcU9/eJYUTFPDxlA1+in9mw==" type="application/javascript" src="https://github.githubassets.com/assets/behaviors-f474aa2c.js"></script>
    
      <script crossorigin="anonymous" async="async" integrity="sha512-54eoDRyRVUk3oS4N5a+zMKkRIRN8whZ3A1DVE/DS+vN7/wW7H9+5IueL/eISlx4hfljl/uGLW01BpUObUAJIGQ==" type="application/javascript" data-module-id="./chunk-contributions-spider-graph.js" data-src="https://github.githubassets.com/assets/chunk-contributions-spider-graph-e787a80d.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-Sjnsr0ANmUID/avvkPo/kS/uBlx9SuqXiR1HN8LrPMYWO7qdeurcIR2F5/hywcj7Zfd1tKVsHLsXZxKLCCH+aQ==" type="application/javascript" data-module-id="./chunk-drag-drop.js" data-src="https://github.githubassets.com/assets/chunk-drag-drop-4a39ecaf.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-hsTfqQrJslWkszgX3N3GLxxW3yhQBLB8ReB546V12jlGnI8x0iBfGjcmPit4JTXOc+J4HMdtPhPT2Fz7IrK0pw==" type="application/javascript" data-module-id="./chunk-jump-to.js" data-src="https://github.githubassets.com/assets/chunk-jump-to-86c4dfa9.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-JSTirxBTeqnDkNzkska5W+unJU9VX7xePaQoER5lJr2++ojaXFE0of68/eBPKM+PCy2veP5SsVHYpnJuuXdPmA==" type="application/javascript" data-module-id="./chunk-profile-pins-element.js" data-src="https://github.githubassets.com/assets/chunk-profile-pins-element-2524e2af.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-Ry+8WCG9+PK9a/xLP7ZMueqNX2tfGZJAHo+38t9h95RdcD94SSHl8WpSiuMo0xSRE25ZO2Bw8ujHTLzaZhc87Q==" type="application/javascript" data-module-id="./chunk-randomColor.js" data-src="https://github.githubassets.com/assets/chunk-randomColor-472fbc58.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-kcVrUcNcBDAGY9PTKWZI8NnD+R/p3RvyLxlnBBzDXERoYGW20fL2EvY2gMes4MIbavUwb/4+HRAXLmUD3U4u9g==" type="application/javascript" data-module-id="./chunk-sortable-behavior.js" data-src="https://github.githubassets.com/assets/chunk-sortable-behavior-91c56b51.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-1j6a5EgjrMbQ66Ao5qIQwQ156E295uiL3SlH69NwrV57RR2ocVe+6kaNPvtdxzLdM9uDKv4fmR4oO4Oi3tLncQ==" type="application/javascript" data-module-id="./chunk-tweetsodium.js" data-src="https://github.githubassets.com/assets/chunk-tweetsodium-d63e9ae4.js"></script>
      <script crossorigin="anonymous" async="async" integrity="sha512-hvTMt1cQUm0SGS/WaqFqgpCWVy9lxJ00qFn7lnm+bncFr5ZzGNUxAbfhW9/bxLWIjpnKGr0jW1lvDT5ln7Zsmg==" type="application/javascript" data-module-id="./chunk-user-status-submit.js" data-src="https://github.githubassets.com/assets/chunk-user-status-submit-86f4ccb7.js"></script>
    
    <script crossorigin="anonymous" async="async" integrity="sha512-43vEDQNmT5ddSiAsYT9zoy7X10T6f0kjFOpuocCrcOcFvfOZLacnGQzE9bbY78fFywU8tH+pm2eGfK72EwL5HQ==" type="application/javascript" src="https://github.githubassets.com/assets/repositories-e37bc40d.js"></script>
<script crossorigin="anonymous" async="async" integrity="sha512-eLwm9ZQcVFSdleejasla8yhPBGOQB3OPwRvzwlOX5a0QCkDjXrmJlwF7QVQZRaT/13aoaXbU71hZVTsmRcyP6A==" type="application/javascript" src="https://github.githubassets.com/assets/topic-suggestions-78bc26f5.js"></script>
  <div class="js-stale-session-flash flash flash-warn flash-banner" hidden
    >
    <svg class="octicon octicon-alert" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.22 1.754a.25.25 0 00-.44 0L1.698 13.132a.25.25 0 00.22.368h12.164a.25.25 0 00.22-.368L8.22 1.754zm-1.763-.707c.659-1.234 2.427-1.234 3.086 0l6.082 11.378A1.75 1.75 0 0114.082 15H1.918a1.75 1.75 0 01-1.543-2.575L6.457 1.047zM9 11a1 1 0 11-2 0 1 1 0 012 0zm-.25-5.25a.75.75 0 00-1.5 0v2.5a.75.75 0 001.5 0v-2.5z"></path></svg>
    <span class="js-stale-session-flash-signed-in" hidden>You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
    <span class="js-stale-session-flash-signed-out" hidden>You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
  </div>
  <template id="site-details-dialog">
  <details class="details-reset details-overlay details-overlay-dark lh-default text-gray-dark hx_rsm" open>
    <summary role="button" aria-label="Close dialog"></summary>
    <details-dialog class="Box Box--overlay d-flex flex-column anim-fade-in fast hx_rsm-dialog hx_rsm-modal">
      <button class="Box-btn-octicon m-0 btn-octicon position-absolute right-0 top-0" type="button" aria-label="Close dialog" data-close-dialog>
        <svg class="octicon octicon-x" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M3.72 3.72a.75.75 0 011.06 0L8 6.94l3.22-3.22a.75.75 0 111.06 1.06L9.06 8l3.22 3.22a.75.75 0 11-1.06 1.06L8 9.06l-3.22 3.22a.75.75 0 01-1.06-1.06L6.94 8 3.72 4.78a.75.75 0 010-1.06z"></path></svg>
      </button>
      <div class="octocat-spinner my-6 js-details-dialog-spinner"></div>
    </details-dialog>
  </details>
</template>

  <div class="Popover js-hovercard-content position-absolute" style="display: none; outline: none;" tabindex="0">
  <div class="Popover-message Popover-message--bottom-left Popover-message--large Box box-shadow-large" style="width:360px;">
  </div>
</div>

    <div class="js-cookie-consent-banner" hidden>
  <div class="hx_cookie-banner p-2 p-sm-3 p-md-4">
    <div style="max-width: 1194px;" class="Box hx_cookie-banner-box box-shadow-medium mx-auto">
    <div class="Box-body border-0 py-0 px-3 px-md-4">
      <div class="js-main-cookie-banner hx_cookie-banner-main">
          <div class="d-md-flex flex-items-center py-3">
            <p class="f5 flex-1 mb-3 mb-md-0">
              
  We use <span class="text-bold">optional</span> third-party analytics cookies to understand how you use GitHub.com so we can build better products.

              <span class="btn-link js-cookie-consent-learn-more">Learn more</span>.
            </p>
            <div class="d-flex d-md-block flex-wrap flex-sm-nowrap">
              <button class="btn btn-outline flex-1 mr-1 mx-sm-1 m-md-0 ml-md-2 js-cookie-consent-accept">Accept</button>
              <button class="btn btn-outline flex-1 ml-1 m-md-0 ml-md-2 js-cookie-consent-reject">Reject</button>
            </div>
          </div>
        </div>

        <div class="js-cookie-details hx_cookie-banner-details" hidden>
          <div class="d-md-flex flex-items-center py-3">
            <p class="f5 flex-1 mb-2 mb-md-0">
              
  We use <span class="text-bold">optional</span> third-party analytics cookies to understand how you use GitHub.com so we can build better products.

              <br>
              You can always update your selection by clicking <span class="text-bold">Cookie Preferences</span> at the bottom of the page.
              For more information, see our <a href="https://docs.github.com/en/free-pro-team@latest/github/site-policy/github-privacy-statement">Privacy Statement</a>.
            </p>
          </div>

          <div class="d-md-flex flex-items-center py-3 border-top">
            <div class="f5 flex-1 mb-2 mb-md-0">
              <h5 class="mb-1">Essential cookies</h5>
              <p class="f6 mb-md-0">We use essential cookies to perform essential website functions, e.g. they're used to log you in. 
                <a href="https://docs.github.com/en/github/site-policy/github-subprocessors-and-cookies">Learn more</a>
              </p>
            </div>
            <div class="text-right">
              <h5 class="text-blue">Always active</h5>
            </div>
          </div>

          <div class="d-md-flex flex-items-center py-3 border-top">
            <div class="f5 flex-1 mb-2 mb-md-0">
              <h5 class="mb-1">Analytics cookies</h5>
              <p class="f6 mb-md-0">We use analytics cookies to understand how you use our websites so we can make them better, e.g. they're used to gather information about the pages you visit and how many clicks you need to accomplish a task. 
                <a href="https://docs.github.com/en/github/site-policy/github-subprocessors-and-cookies">Learn more</a>
              </p>
            </div>
            <div class="text-right">
              <div class="BtnGroup mt-1 mt-md-0 ml-2">
                <button class="btn btn-outline BtnGroup-item js-accept-analytics-cookies" type="button">Accept</button>
                <button class="btn btn-outline BtnGroup-item js-reject-analytics-cookies" type="button">Reject</button>
              </div>
            </div>
          </div>

          <div class="text-right py-3 border-top">
            <button class="btn btn-primary js-save-cookie-preferences" type="button" disabled>Save preferences</button>
          </div>
        </div>
</div></div>  </div>
</div>


  </body>
</html>

