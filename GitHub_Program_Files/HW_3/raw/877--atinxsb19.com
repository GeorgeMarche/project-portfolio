<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>A'TIN x SB19</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">


  <!-- Favicons -->
  <link href="images/sblogowhite.png" rel="icon">
  <link href="images/sblogowhite.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">

  <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@500&display=swap" rel="stylesheet">

  <!-- Bootstrap CSS File -->

  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">


<body>
    
<script type="text/javascript">

// PLAYER VARIABLES

var mp3snd = "music/hsh.music.mp3";

document.write('<audio autoplay="true">');
document.write('<source src="'+mp3snd+'" type="audio/mpeg" autostart="true">');
document.write('<!--[if lt IE 9]>');
document.write('<bgsound src="'+mp3snd+'" loop="1">');
document.write('<![endif]-->');
document.write('</audio>');

</script>

  <!--==========================
  Header
  ============================-->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="#hero"><img src="images/palogo.png" width="50px" alt="" title="" /></a>
        <!-- Uncomment below if you prefer to use a text logo -->
        <!--<h1><a href="#hero">Regna</a></h1>-->
      </div>

     <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="index.html">Home</a></li>
          <li><a href="sb19.html">SB19</a></li>
          <li><a href="news.html">Articles</a></li>
          <li><a href="events.html">Events</a></li>
          <li><a href="gallery.html">Gallery</a></li>
          <li><a href="atinhub.html">A'TIN Hub</a></li>
        <li><a href="magazine.html">Magazine</a></li>
        <li><a href="pa.html">PA Team</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Hero Section
  ============================-->
  <section id="hero">
    <div class="hero-container">

      <img src="images/sblogowhite.png" width="100px" alt="" title="" />
      <br><br>
      <div class="commm">GET IN THE ZONE. BREAK!</div>
      <a href="#about" class="btn-get-started">Get started</a>
    </div>
  


  </section><!-- #hero -->



<div id="preloader">
<div id="status">
  <img src="images/loading.gif">
</div>
</div>

  <main id="main">

    <!--==========================
      About Us Section
    ============================-->
    <section id="about">
      <div class="container">

        <div class="row about-container">


           <div class="col-sm-8 wow fadeInUp">

            <div class="content">

            <center><h2 class="title"> SB19  </h2></center>
           <center><a href="https://www.facebook.com/SB19Official" target="_blank"><img src="images/nfb1.png" alt="" title="" /></a>      
            <a href="https://twitter.com/SB19Official" target="_blank"><img src="images/ntw1.png" alt="" title="" /></a>    
            <a href="https://www.youtube.com/c/SB19Official" target="_blank"><img src="images/nyt1.png" alt="" title="" /></a>   
            <a href="https://www.instagram.com/officialsb19" target="_blank"><img src="images/nig1.png" alt="" title="" /></a>   
            <a href="https://www.tiktok.com/@officialsb19" target="_blank"><img src="images/ntiktok3.png" alt="" title="" /></a></center>
            
            <br>
            
            <img src="images/teasercollage.jpg" width="100%">
            <p>
                SB19 is the first Filipino idol group managed by a Korean entertainment agency - ShowBT Philippines Corporation, a subsidiary company of ShowBT Corp. based in South Korea. The five-piece boy group comprised of Josh, Sejun, Stell, Ken, and Justin, adapted the rigid and intensive “Korean idol training system”, dedicating almost 4 years in honing their craft and improve their innate talents prior to their debut. SB19’s goal is to break into the music scene in the Philippines with their fresh and youthful take on OPM, establish a solid foundation for Pinoy Pop culture, and ultimately, showcase exceptional Filipino talent to the world stage.</p>
              
              <center><a href="sb19.html" class="button" target="_blank"> Read more</a></center><br>
<br>
            <center><h2 class="title"> Comeback: Hanggang Sa Huli MV </h2></center><br>
            <center>
            <div class="iframe-container">
            <iframe width="100%" src="https://www.youtube.com/embed/S82NKEOVj50?rel=0;&autoplay=1&mute=1&loop=1&playlist=S82NKEOVj50" frameborder="0" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            </center><br>
<br>
            <center><h2 class="title"> Latest News </h2></center>
            <center><h5> FIRST TIME: SB19 Showcases jaw-dropping Performance at YouTube FanFest 2020 </h5></center><br>
            <center><img src="images/ytff.png" width="100%"></center>
            <p>Although rookies to this scene, SB19 boldly took the stage in this year’s Youtube Fanfest (YTFF), stunning viewers and fans alike with their reinvented performances and never-before seen dance breaks of Love Goes and Go Up – rounding up their craft beyond expectations.</p>
                
            
            <center><a href="news-sb19-jaw-dropping-performance-youtube-fanfest-2020.html" class="button" target="_blank"> Read more</a></center><br>
            <br>


            <center><h2 class="title"> Discography </h2></center><br>

            <center>
            <a href="disco.html" target="_blank"><img src="images/tilaluha.png" width="35%"></a>
            <a href="disco.html" target="_blank"><img src="images/goup.png" width="35%"></a>
            <a href="disco.html" target="_blank"><img src="images/alab.png" width="35%"></a>
            <a href="disco.html" target="_blank"><img src="images/ikako.png" width="35%"></a>
          </center><br>
        
            <br>
            <center><h2 class="title"> Latest Content  </h2></center>
            <center><h2 class="title"> [VLOG] SB19 at YouTube FanFest 2020 | Behind the Scenes + Gold Play Button </h2></center><br>
            <div class="iframe-container">
            <iframe width="100%" src="https://www.youtube.com/embed/qmlHRs8c3-U" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>            </div>
            <br>
            <br>
            <center><h2 class="title"> Social Metrics </h2></center>
            <center><h5> as of October 4, 2020 </h5></center>
            <center><img src="images/eow16.jpg" width="100%"></center><br>
            <center><img src="images/eow17.jpg" width="100%">
            <br>
           
<br>
             <center><h2 class="title"> Fanarts  </h2></center> <br>

<!-- Slideshow container -->
<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides">
    <div class="numbertext">1 / 6</div>
    <img src="images/landf1.png" style="width:100%"><br><br>
    <div class="textcarousel">Fan art by: @Michan617 on Twitter</div>
  </div>

  <div class="mySlides">
    <div class="numbertext">2 / 6</div>
    <img src="images/landf2.png" style="width:100%"><br><br><br>
    <div class="textcarousel">Fan art by: @mestojr on Twitter</div>
  </div>

  <div class="mySlides">
    <div class="numbertext">3 / 6</div>
    <img src="images/landf3.png" style="width:100%"><br><br><br>
    <div class="textcarousel">Fan art by: @nasejunstan_ on Twitter</div>
  </div>

  <div class="mySlides">
    <div class="numbertext">4 / 6</div>
    <img src="images/landff4.png" style="width:100%"><br><br><br>
    <div class="textcarousel">Fan art by: @aika_eytin on Twitter</div>
   </div>
   
   <div class="mySlides">
    <div class="numbertext">5 / 6</div>
    <img src="images/landf5.png" style="width:100%"><br><br><br>
    <div class="textcarousel">Fan art by: @SB19PAREIN on Twitter</div>
   </div>

   <div class="mySlides">
    <div class="numbertext">6 / 6</div>
    <img src="images/landf6.png" style="width:100%"><br><br><br>
    <div class="textcarousel">Fan art by: @Boyet_atin on Twitter</div>
   </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>

<center><a href="fanarts.html" class="button" target="_blank"> See more</a></center>
<br>
<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
  <span class="dot" onclick="currentSlide(4)"></span>
  <span class="dot" onclick="currentSlide(5)"></span>
  <span class="dot" onclick="currentSlide(6)"></span>
</div>



            </div>

          </div>




           <div class="col-sm-4  wow fadeInUp">

            <div class="content">
             
            <center><h4 class="title">Today's Hashtag </h4></center><br>
            <h5><center>
            <div id="twt_tags">
                REQUEST @SB19Official @MTV #FridayLivestream<br><br>
                SB19 GoldPlayButton<br>#SB19atYTFFVlog<br>
            </div>
            <button id="copy_twt_tags" class="button">Copy Tags</button>
            </center></h5>

<br>
             
            <center><h4 class="title">Daily Routine Checklist </h4></center><br>
            <h5>


<label class="xbox">Stream GITZ on Spotify, Apple Music, Deezer, and Pandora
  <input type="checkbox" name="daily_routine_checklist_1" class="daily_routine_checklist">
  <span class="checkmark"></span>
</label>


<label class="xbox">Vote for SB19 on MTV Friday Livestream
  <input type="checkbox" name="daily_routine_checklist_3" class="daily_routine_checklist">
  <span class="checkmark"></span>
</label>

<label class="xbox">Search for SB19 on Wikipedia and view for 2-3 minutes
  <input type="checkbox" name="daily_routine_checklist_4" class="daily_routine_checklist">
  <span class="checkmark"></span>
</label>

<label class="xbox">Stream their official MVs on YouTube
  <input type="checkbox" name="daily_routine_checklist_5" class="daily_routine_checklist">
  <span class="checkmark"></span>
</label>

<label class="xbox">Comment, like, and share SB19 Official's posts
  <input type="checkbox" name="daily_routine_checklist_6" class="daily_routine_checklist">
  <span class="checkmark"></span>
</label>


<label class="xbox">Search for SB19 on Google and Naver
  <input type="checkbox" name="daily_routine_checklist_7" class="daily_routine_checklist">
  <span class="checkmark"></span>
</label>

<label class="xbox">Track SB19 on Songkick
  <input type="checkbox" name="daily_routine_checklist_8" class="daily_routine_checklist">
  <span class="checkmark"></span>
</label>

<br>

<div class="sharethis-inline-share-buttons"></div>
<br>

          <center><h4 class="title">Announcements: </h4></center><br>

          <div class="row nospace">
          <div class="col-4">
          <p><i>October 9</i></p>
          </div>
          
          <div class="col-8"> 
          <p>HSH MV Release</p> 
          </div>
          </div>
          
         
          
          <div class="row nospace">
          <div class="col-4">
          <p><i>November 21</i></p>
          </div>
          
          <div class="col-8"> 
          <p>SB19 - Live from Manila<br>Global Live</p> 
          </div>
          </div>
          
         
          
           <br><center><h4 class="title">Popular Articles </h4></center><br>


           <i><h6><a href="https://www.cnnphilippines.com/life/entertainment/Music/2020/2/19/sb19-profile.html" target="_blank"> <img src="images/cnn.jpg" width="100%">
             Why SB19 is the Pinoy boy group to watch out for - CNN Philippines</a></i></h6>
            <p>The P-Pop boy group discusses the fleeting quality of viral internet fame, almost giving up, and their plans for the future.</p> 

        <i><h6><a href="https://www.forbes.com/sites/tamarherman/2020/06/29/boy-band-sb19-hopes-to-bring-filipino-music-to-the-world-utilizing-the-k-pop-method/" target="_blank"> <img src="images/forbes.jpg" width="100%">
             Boy Band SB19 Draws Inspiration From K-Pop To Bring Filipino Music To The World - Forbes</a></i></h6>
            <p>For years, South Korea’s pop music scene has been the buzziest in Asia, with K-pop acts regularly charting internationally and touring worldwide. Now, Filipino boy band SB19 is hoping to bring P-pop to the rest of the world, and taking some pages out of K-pop’s book to do so.</p>

        <i><h6><a href="https://www.billboard.com/articles/business/chart-beat/8550040/sb19-social-50-next-big-sound-chart-filipino-boy-band-profile" target="_blank"> <img src="images/billboard-popular-article.jpg" width="100%">
             Filipino Boy Band SB19 Is Becoming a Mainstay on the Social 50 Chart - Billboard</a></i></h6>

            <p>The "P-pop" band hit a new chart peak after releasing their "Alab (Fire)" video last month that highlighted their connection with K-pop.</p>
            
        <i><h6><a href="https://www.buzzfeed.com/ahjummazing/who-is-your-sb19-soulmate-cziviyuxmt" target="_blank"> <img src="gallery/a7.jpg" width="100%">
             Buzzfeed Quiz - Who is your SB19 Soulmate?</a></i></h6>

            <p>While there's nothing wrong with being an OT5, admit it - there will always be that one member who you'll hold closest to your heart. Take the quiz and find out who your SB19 soulmate is!</p>    
            </div>
            
            
            <div class="row">
                <div class="col-sm-12">
                    <div class="content atinxsb19_visitors">
                      <center>
                        <br><h4 class="title">Website Visitors </h4><br>
                        <div id="sfcmml7xe5c1nl7fr5rx3dmrb1mgg9r4l9d"></div><script type="text/javascript" src="https://counter3.stat.ovh/private/counter.js?c=mml7xe5c1nl7fr5rx3dmrb1mgg9r4l9d&down=async" async></script><noscript><a href="https://www.freecounterstat.com" title="website counter"><img src="https://counter3.stat.ovh/private/freecounterstat.php?c=mml7xe5c1nl7fr5rx3dmrb1mgg9r4l9d" border="0" title="website counter" alt="website counter"></a></noscript>
                      </center>
                    </div>
                </div>
            </div>




                    
                                        

                      </div>



        </div>
      </div>

    </section><!-- #about -->

  </main>

  <!--==========================
    Footer
  ============================-->
 <footer id="footer">

    <div class="container">
      <div class="copyright">
       <b> <h4>A'TIN x SB19 </h4></b><br>
        <h6>This site is run by PressATIN to provide fans easy access to SB19-related content, and is not affiliated with SB19, ShowBT Corp., or ShowBT Philippines</h6><br>
            All material on this website - including design, text, and images are owned by Press A'TIN, unless otherwise indicated in watermarks or post credits. Content may not be copied, reproduced, or distributed without prior written consent and attribution to Press A'TIN.<br>
                For inquiries or to report incorrect content, you may reach us at pressatin@gmail.com <br><br>
       <a href="https://www.facebook.com/PressATIN" target="_blank"><img src="images/fbcon.png" alt="" title="" /></a> 
       <a href="https://twitter.com/PressATIN" target="_blank"><img src="images/twtcon.png" alt="" title="" /></a> 
       <a href="mailto:pressatin@gmail.com" target="_blank"><img src="images/mailicon.png" alt="" title="" /></a> 
        </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="js/jquery.cookie.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>

  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>





    <script>
$(window).on('load', function() { // makes sure the whole site is loaded 
$('#status').fadeOut(); // will first fade out the loading animation 
$('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website. 
$('body').delay(350).css({'overflow':'visible'});
$('#copy_twt_tags').click(function () {
    if (document.selection) {
        var range = document.body.createTextRange();
        range.moveToElementText(document.getElementById('twt_tags'));
        range.select().createTextRange();
        document.execCommand("copy");
        document.selection.empty();
      } else if (window.getSelection) {
        var range = document.createRange();
        range.selectNode(document.getElementById('twt_tags'));
        window.getSelection().addRange(range);
        document.execCommand("copy");
        window.getSelection().removeAllRanges();
      }
});
})


var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}

function myFunction() {
  /* Get the text field */
  var copyText = document.getElementById("myInput");

  /* Select the text field */
  copyText.select();
  copyText.setSelectionRange(0, 99999); /*For mobile devices*/

  /* Copy the text inside the text field */
  document.execCommand("copy");

}


  </script>
</body>
</html>
