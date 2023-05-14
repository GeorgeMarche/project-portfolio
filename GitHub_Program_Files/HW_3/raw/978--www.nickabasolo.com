<!DOCTYPE HTML>
<html>
<head>
    
  <title>Squarespace - Website Expired</title>
  <meta http-equiv="X-UA-Compatible" content="chrome=1">

  <script crossorigin="anonymous" src="//assets.squarespace.com/universal/scripts-compressed/common-vendors-bf2dc066d17bbfb858dce-min.en-US.js" ></script><script crossorigin="anonymous" src="//assets.squarespace.com/universal/scripts-compressed/common-01b5eb0c070ceabc89975-min.en-US.js" ></script><link rel="stylesheet" type="text/css" href="//assets.squarespace.com/universal/styles-compressed/common-be6d91d021f3b4c0d15b27a2063cf64e-min.en-US.css">
  <script crossorigin="anonymous" src="//assets.squarespace.com/universal/scripts-compressed/dialog-f4fc47f9f7d9776e574dd-min.en-US.js" ></script><link rel="stylesheet" type="text/css" href="//assets.squarespace.com/universal/styles-compressed/dialog-afeb96ba160fb642a2d98c892a956065-min.en-US.css">
  <script crossorigin="anonymous" src="//assets.squarespace.com/universal/scripts-compressed/system-page-4fd35c675266af763486a-min.en-US.js" ></script><link rel="stylesheet" type="text/css" href="//assets.squarespace.com/universal/styles-compressed/system-page-6b393a4b3a1b687988d925d9496458ce-min.en-US.css">

  <script>

    YUI(YUI_CONFIG).use('squarespace-common', 'squarespace-system-page', function(Y) {
	
      Y.on("domready", function() {
      
        var lb = new Y.Squarespace.Lightbox({
          disableNormalClose: true,
          clickAnywhereToExit: false,
          content: '<div class="bigtext"><div class="title">Website Expired</div><div class="description">This account has expired.  If you are the site owner, click below to login.</div><div class="buttons"><input type="button" class="login-button" name="login" value="Owner Login"/></div></div>',
          margin: 100,
          noHeightConstrain: true
        });

        lb.show();

        lb.getContentEl().on("click", function(e) {
          if (e.target.ancestor(".login-button", true)) {
            document.location.href = '/config/';
          }
        });
        
      });
          
    }); 

  </script> 


</head>
<body class="squarespace-config squarespace-system-page">

  <div class="minimal-logo">&nbsp;</div>

</body>
</html>
