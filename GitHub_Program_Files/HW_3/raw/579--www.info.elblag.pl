																
								
		
			

 
<!DOCTYPE html>
<head>
<script async src="//cmp.optad360.io/items/ae7e02ac-dccb-4e8a-9e24-f6dfd64e8c5c.min.js"></script> 
<link rel="shortcut icon" href="media/layout/info.ico" type="image/x-icon">
<script type="text/javascript" >if (window.top !== window.self) { document.write = ""; window.top.location = window.self.location; setTimeout(function(){ document.body.innerHTML=''; },1); window.self.onload=function(evt){ document.body.innerHTML=''; }; }</script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2"/>


			<title>info.elblag.pl - Elbl�ski Dziennik Internetowy</title>
			<meta name="description" content="Elbl�g - Informacje o mie&#347;cie, aktualno�ci i wydarzenia, galerie zdj�� i filmy">
			
			
			<base href="https://www.info.elblag.pl/">
<meta name="keywords" content="elbl�g,ankieta,bie��ce,elbing,elblag,360,elbl�ski,elbl�skie,gabo,gazeta,info,infoelblag,dziennik,internet,internetowa,kino,kultura,panoramy,policja,portal,rozrywka,sport,teatr,wiadomo�ci,wiadomo��,Elbl�g,Ankieta,Bie��ce,Elbing,Elblag,Elbl�ski,Elbl�skie,Gabo,Gazeta,Info,Infoelblag,Internet,Internetowa,Kino,Kultura,Panoramy,Policja,Portal,Rozrywka,Sport,Teatr,Wiadomo�ci,Wiadomo��,ELBL�G,ANKIETA,BIE��CE,ELBING,ELBLAG,ELBL�SKI,ELBL�SKIE,GABO,GAZETA,INFO,INFOELBLAG,INTERNET,INTERNETOWA,KINO,KULTURA,PANORAMY,POLICJA,PORTAL,ROZRYWKA,SPORT,TEATR,WIADOMO�CI,WIADOMO��"> 
<meta name="author" content="Agencja Reklamowa GABO -  ">
<meta name="robots" content="index,follow">


<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&subset=latin-ext" rel="stylesheet"> 

<link href="css/reset.css?v=1" rel="stylesheet" type="text/css"/>
<link href="css/style.css?v=29" rel="stylesheet" type="text/css"/>

<!--<link href="css/news-roto.css" rel="stylesheet" type="text/css"/>-->
<link href="css/nowe.css?v=4" rel="stylesheet" type="text/css"/>
<link href="css/strefa-ogloszen.css?v=3" rel="stylesheet" type="text/css"/>
		
<script src="js/jquery/jquery-1.6.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery/jquery.selectbox-0.5.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery/jquery.easing.js" type="text/javascript" charset="utf-8"></script>

	
<script src="js/jquery/jquery.ticker.js" type="text/javascript"></script>
	
<script type="text/javascript">
	$(function () {
		$(function () {
	 // start the ticker 
	$('#js-news').ticker();
	
	// hide the release history when the page loads
	$('#release-wrapper').css('margin-top', '-' + ($('#release-wrapper').height() + 20) + 'px');

	// show/hide the release history on click
	$('a[href="#release-history"]').toggle(function () {	
		$('#release-wrapper').animate({
			marginTop: '0px'
		}, 600, 'linear');
	}, function () {
		$('#release-wrapper').animate({
			marginTop: '-' + ($('#release-wrapper').height() + 20) + 'px'
		}, 600, 'linear');
	});	
	
});
	});
</script>


<!--// SLICK -->

<link rel="stylesheet" type="text/css" href="css/slick.css?v=1" charset="utf-8"/>
<link rel="stylesheet" type="text/css" href="css/slick-theme.css?v=3" charset="utf-8" />	

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="js/slick.min.js"></script>

<script type="text/javascript">

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}


$(document).ready(function(){
  $('#notnow').click(function(){
  $("#rodo").fadeOut(500);
  });
});

$(document).ready(function(){
  $('#accept').click(function(){
  
  $.ajax({
    type: "POST",
    url: "https://www.info.elblag.pl/ajax/rodo.php", 
	data: {},
	success: function(response) {
		
		setCookie('RODO', 1, 30);
		console.log(response);
	}
	})
  
  $("#rodo").fadeOut(500);
  });
});

</script>

<script type="text/javascript">
$(document).ready(function(){
  $('.slick-slider').slick({
    autoplay: true,
  autoplaySpeed: 2000
	
  });
});
</script>

<script type="text/javascript">
$(document).ready(function(){
  $('.slick-big-slider').slick({
    autoplay: true,
  autoplaySpeed: 3000,
    dots: true,
  infinite: true,
    fade: true,
	
  });
});
</script>
  
<!--// SLICK -->	
		

<script type="text/javascript" src="js/cookies.js"></script>

<script src="js/scripts-info.js" type="text/javascript"></script>
<script src="js/custom-info.js?v=1" type="text/javascript"></script>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-31731617-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<!-- Begin 33Across SiteCTRL -->
<script>
var Tynt=Tynt||[];Tynt.push('dxRqduZaur4yFtacwqm_6l');
(function(){var h,s=document.createElement('script');
s.src=(window.location.protocol==='https:'?
'https':'http')+'://cdn.tynt.com/ti.js';
h=document.getElementsByTagName('script')[0];
h.parentNode.insertBefore(s,h);})();
</script>
<!-- End 33Across SiteCTRL -->

</head>

<body class="nowe_tlo"   class="tla-ryciny3" ><div id="rodo" style="z-index: 9999; position: fixed; top: 70px; margin-left: auto;margin-right: auto;left: 0;right: 0;width: 800px; text-align: center; background:#fff; border: 1px solid #e00000; border-radius:10px;">
	
		<div class="wrap" style="font-size:15px; padding:20px; ">

			Drogi U�ytkowniku,<br/><br/>

			Informujemy, �e w zwi�zku z Rozporz�dzeniem o Ochronie Danych Osobowych (RODO), kt�re jest stosowane od 25 maja 2018 r.zaktualizowali�my nasz� <a style="font-weight:bold; color:#e00000;" href="https://www.info.elblag.pl/?id=podstrony_&pid=59" target="_blank">Polityk� prywatno�ci</a>. W dokumencie tym wyja�niamy w spos�b przejrzysty i bezpo�redni jakie informacje zbieramy i dlaczego to robimy.<br/><br/>

			Informujemy jednocze�nie, �e nie zmieniamy niczego w aktualnych ustawieniach ani sposobie przetwarzania danych. Ulepszamy natomiast opis naszych procedur i dok�adniej wyja�niamy, jak przetwarzamy Twoje dane osobowe oraz jakie prawa przys�uguj� naszym u�ytkownikom.<br/><br/>

			<a style="font-weight:bold; color:#e00000;" href="https://www.info.elblag.pl/?id=podstrony_&pid=59" target="_blank"> Polityka prywatno�ci</a> <br/><br/>
			
			<button style="cursor:pointer; padding:10px; color:#fff; background:#e00000; border:0px; border-radius:5px; margin-right:20px;" id="accept">Akceptuj�</button> 
			<button style="cursor:pointer; padding:5px; color:#e00000; background:#fff; border: 1px solid #e00000; border-radius:5px" id="notnow">Nie teraz</button> 
		
		
		</div>
	
	</div>
	<!-- <body > -->
	
        <div id="banner-popup"> <div class="banner-popup" id="bannerp" >
		
				</div> </div>	
	
	
	
	
		<div id="dziennik-gora">

		<div id="pasek-gorny">
		
			<div class="datadzis">
			
				<span class="dzien" style="font-weight:bold;">&#346;roda, 14.10.2020</span>, <span style="font-weight:bold;">Imieniny:</span> Liwii, Bernarda, Kaliksta 
				
			</div>
			
			<!--<div style="float:left;">-->
				
				
				
				<div style="float:left;margin-left:50px;">
				Nie masz konta?
				<a href="https://info.elblag.pl/infomaniak/rejestracja" style="font-weight:bold;">Zarejestruj si�  <span> &raquo;</span> </a> 
				</div>
				
				<div style="float:right;margin-right:10px;" id="zaloguj_menu">
				<form method="post" action="https://www.info.elblag.pl/logowanie.php"  > 
				
				<input type="text" name="uzytkownik" style="width:110px; height:20px; border:1px solid #eeeeee;padding:0;margin:0; color: #646464; font-size:12px;padding:0px 5px;" placeholder="login">
				<input type="password" name="haslo" style="width:110px;  height:20px; border:1px solid #eeeeee;padding:0;margin:0; color: #646464; font-size:12px;padding:0px 5px; margin-left:5px;"  placeholder="has�o">
				<input type="submit" value="" >
				
				</form>
				</div>
								
			<!--</div>-->
		
		</div>
		
		

        <div id="naglowek">
		
			<div class="wrap">
	
				<div class="logo">
			
				<a href=""> <img src="media/layout/doodle/logo-info.png" title="Elbl�ski Dziennik Internetowy - info.elblag.pl" alt="Elbl�ski Dziennik Internetowy - info.elblag.pl"> </a> 
				
				</div>
				
				<div class="wyszukiwarka-i">
				
					<div class="rel">
					
						<form action="https://www.google.pl" id="cse-search-box"> 
							
							<div class="wysz-data">
							
								<div class="wysz-input">
								
									<input autocomplete="off" type="text" name="q" size="45" maxlength="40" value="Szukaj w serwisie..." onfocus="if(this.value=='Szukaj w serwisie...')this.value=''" onBlur="if(this.value=='')this.value='Szukaj w serwisie...'" id="query">
										<input type="hidden" name="cx" value="partner-pub-7535364080769194:3207556042" />
										
										<input type="hidden" name="ie" value="utf-8" />
									
									<input type="hidden" name="id" value="wyszukiwarkagoogle_" />
								</div>
								
								<div class="wysz-btn">
								
									<input type="image" src="media/layout/tr.png" width="35" height="26" alt="Szukaj" />
									
								</div>
								
							
							</div>
							
							<!-- -->
														
						</form> 
                    
						
                        
                    </div>
					
 				</div>
				
								
				<div class="ikony-new">
				
					<div class="ikona i-1" style="">
						
						<div class="pokaz-liste" style="height:38px; margin-bottom:10px;">
						<a href="ogloszenia.html"><img src="media/layout/menu-top/icon-3.png" alt="" onmouseover="this.src='media/layout/menu-top/icon-3h.png';" onmouseout="this.src='media/layout/menu-top/icon-3.png';" /></a>
						
						
						<div class="ogloszenia-linki">
							<ul>
									<li style="height:25px;color:#ffffff"> <a style="color:#ffffff" href="ogloszenia/nieruchomosci/" title="Nieruchomo�ci Elbl�g">  NIERUCHOMO�CI</a> </li>
									<li style="height:25px;position:relative;color:#ffffff"> <a  style="color:#ffffff" href="ogloszenia/praca/" title="Praca Elbl�g"> PRACA </a> </li>
									<li style="height:25px;position:relative;color:#ffffff"> <a  style="color:#ffffff" href="ogloszenia/motoryzacja/" title="Og�oszenia moto Elbl�g">MOTORYZACJA</a> </li>
									<li style="height:25px;position:relative;color:#ffffff"> <a  style="color:#ffffff" href="ogloszenia/drobne/" title="Og�oszenia drobne Elbl�g" >DROBNE</a> </li>

							</ul>
						
							</div> 	
						
						</div>
						<div> 
							og�oszenia
						</div>
						
					</div>
					
					<div class="ikona i-2" >
						
						<div style="height:38px; margin-bottom:10px;">
						<a href="galerie.html"><img src="media/layout/menu-top/icon-5.png" alt="" onmouseover="this.src='media/layout/menu-top/icon-5h.png';" onmouseout="this.src='media/layout/menu-top/icon-5.png';" /></a>
						</div>
						<div > 
							zdj�cia
						</div>
						
					</div>
					
					<div class="ikona i-3" >
						
						<div style="height:38px; margin-bottom:10px;">
						<a href="filmy.html"><img src="media/layout/menu-top/icon-4.png" alt="" onmouseover="this.src='media/layout/menu-top/icon-4h.png';" onmouseout="this.src='media/layout/menu-top/icon-4.png';" /></a>
						</div>
						<div > 
							filmy
						</div>
						
					</div>
					
					<div class="ikona i-4">
						<div style="height:38px; margin-bottom:10px;">
							<a href="baza-firm.html"><img src="media/layout/menu-top/icon-2.png" alt="" onmouseover="this.src='media/layout/menu-top/icon-2h.png';" onmouseout="this.src='media/layout/menu-top/icon-2.png';" /></a>
						</div>
						<div>
							baza firm	
						</div>
						
					</div>
					
					<div class="ikona i-5" >
						<div style="height:38px; margin-bottom:10px;">
							<a href="reklama.html"><img src="media/layout/menu-top/icon-1.png" alt="" onmouseover="this.src='media/layout/menu-top/icon-1h.png';" onmouseout="this.src='media/layout/menu-top/icon-1.png';" /></a>
						</div>
						<div>
						reklama
						</div>
						
					</div>
				
				</div>

 			</div>
			
		</div>
		
		</div>
		
	</div>
	
	<div id="info-glowne">
		
		
		<div id="nawigacja">
		
		<div class="nawigacja-wrap1000">
		
		<div class="nawigacja-wrap">
		
		<div style="float:left;">
		
		<div id="glowna-nav">
			
					
			<div id="nav">
				
				<ul>
					
					<li class="first"> <a href="/1,28,kategoria,polityka.html" title="POLITYKA " class="gNav" >Polityka</a> </li>
					<li> <a href="/1,19,kategoria,inwestycje.html" title="INWESTYCJE" class="gNav" >Inwestycje</a> </li>				
					<li> <a href="/1,3,kategoria,sport.html" title="SPORT" class="gNav" >Sport</a> </li>				
					<li> <a href="/1,72,kategoria,witamy-w-elblagu.html" title="Witamy w Elbl�gu" class="gNav" >Witamy w Elbl�gu</a> </li>				
					<li> <a href="/1,31,kategoria,spoleczne.html" title="SPO�ECZNE" class="gNav" >Spo�eczne</a> </li>				
					<!--<li> <a href="/1,8,kategoria,polecane.html" title="POLECANE" class="gNav" >Polecane</a> </li>			-->	
					<li> <a href="/1,9,kategoria,wywiady.html" title="WYWIADY" class="gNav" >Wywiady</a> </li>				
					<li> <a href="/1,20,kategoria,interwencje-info.html" title="INTERWENCJE INFO" class="gNav" >Interwencje INFO</a> </li>				
					<li> <a href="/1,53,kategoria,wypadki.html" title="WYPADKI" class="gNav" >Wypadki</a> </li>				

				</ul>
				
			</div>
				
		</div>

		<div class="wiadomosci-nav">
			
			<div class="wrap">
			
				<div class="nav">
				
					<ul class="local-nav related-to-crumb1">
					
					<li> <a href="/1,2,kategoria,kultura.html" title="KULTURA" class="gNav sel" >Kultura</a> </li>	
					<li> <a href="/1,17,kategoria,oswiata.html" title="O�WIATA" class="gNav sel">O�wiata</a> </li>
					<li> <a href="/1,4,kategoria,policja.html" title="POLICJA" class="gNav sel" >Policja</a> </li>
					<li> <a href="1,35,kategoria,ciekawi-elblazanie.html" title="Ciekawi Elbl��anie" class="gNav sel">Ciekawi Elbl��anie</a> </li>	
					<li> <a href="/1,27,kategoria,kino.html" title="KINO" class="gNav sel">Kino</a> </li>
					<li> <a href="/1,12,kategoria,teatr.html" title="TEATR" class="gNav sel" >Teatr</a> </li>
					<li> <a href="/1,79,kategoria,mistrzowie-parkowania.html" title="MISTRZOWIE PARKOWANIA" class="gNav sel" >Mistrzowie Parkowania</a> </li>
					<li> <a href="/1,83,kategoria,poznaj-elblag.html" title="Poznaj Elbl�g" class="gNav sel" >Poznaj Elbl�g</a> </li>
					
					<!--<li> <a href="/1,11,kategoria,konkursy.html" title="KONKURSY" class="gNav sel">Konkursy</a> </li>-->					
					<!--<li> <a href="/archiwum-studniowki.html" title="Studni�wki Elbl�g" class="gNav sel" >Studni�wki</a> </li>-->
					<!--<li> <a href="/1,55,kategoria,felietony.html" title="FELIETONY" class="gNav sel">Felietony</a> </li>-->					
					<!--<li> <a href="/1,49,kategoria,sondy.html" title="SONDY" class="gNav sel" >Sondy</a> </li>-->
				
			<!--	<li> <a href="/1,67,kategoria,aleksandry-2016.html" title="Aleksandry 2016" class="gNav sel" >Aleksandry 2016</a>-->
				<!--<li> <a href="/1,75,kategoria,wybory-samorzadowe-2018.html" title="Wybory samorz�dowe 2018" class="gNav sel" >Wybory 2018</a>-->

					</ul>
				
 					
					<div class="pozostale-kat">
			<div class="pozostale-kategorie" id="p_pozostale">
 				<strong><span>pozosta�e kategorie</span></strong>
  				<div class="rozwin-pozostale" id="m_expand">
					<ul>
							<li> <a href="archiwum-aleksandry.html" title="ALEKSANDRY" class="gNav sel" style="color:#ffffff;font-weight:none;">ALEKSANDRY</a> </li>
							<li> <a href="/1,41,kategoria,elblaska-temida.html" title="ELBL�SKA TEMIDA" class="gNav sel" style="color:#ffffff;font-weight:none;">ELBL�SKA TEMIDA</a> </li>
							<li> <a href="/1,55,kategoria,felietony.html" title="FELIETONY" class="gNav sel" style="color:#ffffff;font-weight:none;">FELIETONY</a> </li>
							<li> <a href="/1,37,kategoria,informacje-lokalne.html" title="INFORMACJE LOKALNE" class="gNav sel" style="color:#ffffff;font-weight:none;">INFORMACJE LOKALNE</a> </li>
							<li> <a href="/1,20,kategoria,interwencje-info.html" title="INTERWENCJE INFO" class="gNav sel" style="color:#ffffff;font-weight:none;">INTERWENCJE INFO</a> </li>
							<li> <a href="/1,27,kategoria,kino.html" title="KINO" class="gNav sel" style="color:#ffffff;font-weight:none;">KINO</a> </li>
							<li> <a href="/1,11,kategoria,konkursy.html" title="KONKURSY" class="gNav sel" style="color:#ffffff;font-weight:none;">KONKURSY</a> </li>
							<li> <a href="/1,90,kategoria,koronawirus.html" title="KORONAWIRUS" class="gNav sel" style="color:#ffffff;font-weight:none;">KORONAWIRUS</a> </li>
							<li> <a href="/1,43,kategoria,miss-infoelblagpl.html" title="MISS info.elblag.pl" class="gNav sel" style="color:#ffffff;font-weight:none;">MISS info.elblag.pl</a> </li>
							<li> <a href="/1,79,kategoria,mistrzowie-parkowania.html" title="MISTRZOWIE PARKOWANIA" class="gNav sel" style="color:#ffffff;font-weight:none;">MISTRZOWIE PARKOWANIA</a> </li>
							<li> <a href="/1,74,kategoria,mmks-concordia-elblag.html" title="MMKS CONCORDIA ELBL�G" class="gNav sel" style="color:#ffffff;font-weight:none;">MMKS CONCORDIA ELBL�G</a> </li>
							<li> <a href="/1,15,kategoria,motoryzacja.html" title="MOTORYZACJA" class="gNav sel" style="color:#ffffff;font-weight:none;">MOTORYZACJA</a> </li>
							<li> <a href="/1,66,kategoria,okiem-monitoringu.html" title="OKIEM MONITORINGU" class="gNav sel" style="color:#ffffff;font-weight:none;">OKIEM MONITORINGU</a> </li>
							<li> <a href="/1,56,kategoria,opinie-nadeslane.html" title="OPINIE NADES�ANE" class="gNav sel" style="color:#ffffff;font-weight:none;">OPINIE NADES�ANE</a> </li>
							<li> <a href="/1,71,kategoria,osobowosc-regionu.html" title="OSOBOWO�� REGIONU" class="gNav sel" style="color:#ffffff;font-weight:none;">OSOBOWO�� REGIONU</a> </li>
							<li> <a href="/1,17,kategoria,oswiata.html" title="O�WIATA" class="gNav sel" style="color:#ffffff;font-weight:none;">O�WIATA</a> </li>
							<li> <a href="/1,8,kategoria,polecane.html" title="POLECANE" class="gNav sel" style="color:#ffffff;font-weight:none;">POLECANE</a> </li>
							<li> <a href="/1,59,kategoria,pozary.html" title="PO�ARY" class="gNav sel" style="color:#ffffff;font-weight:none;">PO�ARY</a> </li>
							<li> <a href="/1,7,kategoria,prasowka.html" title="PRAS�WKA" class="gNav sel" style="color:#ffffff;font-weight:none;">PRAS�WKA</a> </li>
							<li> <a href="/1,64,kategoria,schronisko-dla-zwierzat.html" title="SCHRONISKO DLA ZWIERZ�T" class="gNav sel" style="color:#ffffff;font-weight:none;">SCHRONISKO DLA ZWIERZ�T</a> </li>
							<li> <a href="/1,49,kategoria,sondy.html" title="SONDY" class="gNav sel" style="color:#ffffff;font-weight:none;">SONDY</a> </li>
							<li> <a href="/1,31,kategoria,spo321eczne.html" title="SPO&#321;ECZNE" class="gNav sel" style="color:#ffffff;font-weight:none;">SPO&#321;ECZNE</a> </li>
							<li> <a href="/1,81,kategoria,straz-graniczna.html" title="STRA� GRANICZNA" class="gNav sel" style="color:#ffffff;font-weight:none;">STRA� GRANICZNA</a> </li>
							<li> <a href="/1,78,kategoria,straz-miejska.html" title="STRA� MIEJSKA" class="gNav sel" style="color:#ffffff;font-weight:none;">STRA� MIEJSKA</a> </li>
							<li> <a href="archiwum-studniowki.html" title="STUDNI�WKI" class="gNav sel" style="color:#ffffff;font-weight:none;">STUDNI�WKI</a> </li>
							<li> <a href="/1,24,kategoria,sluzba-zdrowia.html" title="S�U�BA ZDROWIA" class="gNav sel" style="color:#ffffff;font-weight:none;">S�U�BA ZDROWIA</a> </li>
							<li> <a href="archiwum-wybory.html" title="WYBORY" class="gNav sel" style="color:#ffffff;font-weight:none;">WYBORY</a> </li>
							<li> <a href="/1,75,kategoria,wybory-samorzadowe-2018.html" title="WYBORY SAMORZ�DOWE 2018" class="gNav sel" style="color:#ffffff;font-weight:none;">WYBORY SAMORZ�DOWE 2018</a> </li>
							<li> <a href="/1,53,kategoria,wypadki.html" title="WYPADKI" class="gNav sel" style="color:#ffffff;font-weight:none;">WYPADKI</a> </li>
							<li> <a href="/1,33,kategoria,zdrowie-i-uroda.html" title="ZDROWIE I URODA" class="gNav sel" style="color:#ffffff;font-weight:none;">ZDROWIE I URODA</a> </li>
					</ul><script type="text/javascript">makePullDown("p_pozostale");</script>
				</div> 			
			</div></div>
 				</div>
			</div>
		</div>	
		</div>
		</div>
		
		<div style="border-bottom:1px #fff solid;float:left;width:122px;height:65px; background: #fff;">
		
		
				<div style="width:120x; float:left; padding: 2px 10px 5px 5px;border: 1px solid #e1e1e1; height:58px;">
				
				
				
				<div style="float:left;width:50px; text-align:right;" >
				
					<a href="pogoda"><img style="width:30px" src="media/pogoda-noc/296.png" alt="Pogoda" /></a> 
					
				</div>
				
				<div style="float:left;width:50px; text-align:left;" >
				
					<span style="font-size:24px; line-height:28px; font-weight:bold;color:#908f8f">11�</span>
					
				</div>				
				
				<div style="clear:both;font-size:11px;line-height:16px; margin-left: 5px;">
				
				<span style="background:#1e87de;color:#fff;padding:1px;">Min. 10� </span> <span  style="margin-left:5px;padding:1px;;color:#fff;background:#d20001;">Max. 11�</span>
				
				<br/>
				
				Ci�nienie: 1005 hPa
				
				</div>
		
			</div>
				
		</div>
		
		</div>
		
		</div>		
		
		<div id="banner-glowny" style="clear:both;width:1012px; margin: 0px auto; padding-top:7px; padding-bottom:20px; background: #ffffff; text-align:center; ">
				
		
		<div class="ADinfo">
		REKLAMA
		</div><a class="linkwrap" target="_blank" href="https://info.elblag.pl/baner/2749">
			<div class="iframe"></div>
			<iframe	id="baner-2749" scrolling="no" style="border:0px;" src="images/banerkiIFRAME/2749/index.html" width="985" height="250"></iframe>
			
			</a>		
		</div>
			
		<div id="dziennik-srodek">
			<div class="wrap">		
				<div id="strona-wrap">
					<div id="wrapper">
                        						
						<!--
						<div id="banner-wrap">
							<div class="baner-glowny">
								
															</div>
 						</div>		
-->						
 					</div>
				</div>
 
 				<div class="cf"></div>
						
				<div id="strona-glowna">
					<iframe style="margin-bottom:20px" scrolling="no" width="985" height="50" src="php/pasek_podglad.php?v=3"></iframe>
			<div id="main"  style="margin:0px 20px 0px 0px; width:100%; max-width:985px; max-height:442px; overflow:hidden;" class="slick-big-slider">
					
								
								<div>
								<a href="/90,63429,Koronawirus-w-Sp-1-i-ZSZ-nr-1-w-Elblagu-Zakazona-nauczycielka-i-uczen.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63429.jpg" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/90,63429,Koronawirus-w-Sp-1-i-ZSZ-nr-1-w-Elblagu-Zakazona-nauczycielka-i-uczen.html" style=" ">Koronawirus w Sp 1 i ZSZ nr 1 w Elbl�gu. Zaka�ona nauczycielka i ucze�</a>
									
									</div>
									
								</div>
								
								
								<div>
								<a href="/37,63430,Bedzie-lepiej-niz-w-Pasleku-Kiedy-ruszy-modernizacja-parkuDolinka.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63430.jpg?v=1602672587" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/37,63430,Bedzie-lepiej-niz-w-Pasleku-Kiedy-ruszy-modernizacja-parkuDolinka.html" style=" ">B�dzie lepiej ni� w Pas��ku. Kiedy ruszy modernizacja parku Dolinka?</a>
									
									</div>
									
								</div>
								
								
								<div>
								<a href="/90,63431,Elblag-Kim-sa-34-nowe-zakazone-osoby-Z-Seminarium-nie-wszyscy-zglosili-sie-na-badanie.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63431.jpg?v=1602673188" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/90,63431,Elblag-Kim-sa-34-nowe-zakazone-osoby-Z-Seminarium-nie-wszyscy-zglosili-sie-na-badanie.html" style=" ">Elbl�g: Kim s� 34 nowe zaka�one osoby? </a>
									
									</div>
									
								</div>
								
								
								<div>
								<a href="/37,63425,Rekord-zakazenkoronawirusemw-Polsce-ponad-65-tys-w-Elblagu-34.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63425.jpg" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/37,63425,Rekord-zakazenkoronawirusemw-Polsce-ponad-65-tys-w-Elblagu-34.html" style=" ">Rekord zaka�e� koronawirusem: w Polsce ponad 6,5 tys., w Elbl�gu 34</a>
									
									</div>
									
								</div>
								
								
								<div>
								<a href="/37,63423,Wichura-powalila-drzewa-w-Elblagu-i-powiecie-W-ciagu-kilku-godzin-strazacy-interweniowali-ponad-20razy.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63423.jpg" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/37,63423,Wichura-powalila-drzewa-w-Elblagu-i-powiecie-W-ciagu-kilku-godzin-strazacy-interweniowali-ponad-20razy.html" style=" font-size:30px">Wichura powali�a drzewa w Elbl�gu i powiecie. Stra�acy interweniowali 20�razy</a>
									
									</div>
									
								</div>
								
								
								<div>
								<a href="/90,63416,Policja-wyprowadzila-elblazanina-z-Urzedu-Miasta-Nie-chcial-zalozyc-maseczki.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63416.jpg?v=1602595085" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/90,63416,Policja-wyprowadzila-elblazanina-z-Urzedu-Miasta-Nie-chcial-zalozyc-maseczki.html" style=" font-size:30px">Policja wyprowadzi�a elbl��anina z UM. &quot;Nie chcia� za�o�y� maseczki&quot;</a>
									
									</div>
									
								</div>
								
								
								<div>
								<a href="/37,63415,Bierzmowania-zostana-przelozone-na-wiosne-Sa-wskazania-biskupa-elblaskiego-w-tejsprawie.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63415.jpg" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/37,63415,Bierzmowania-zostana-przelozone-na-wiosne-Sa-wskazania-biskupa-elblaskiego-w-tejsprawie.html" style=" ">Bierzmowania zostan� prze�o�one na wiosn�. S� wskazania biskupa elbl�skiego</a>
									
									</div>
									
								</div>
								
								
								<div>
								<a href="/90,63407,Nakaz-zaslaniania-nosa-i-ust-Jednego-dnia-w-Elblagu-wystawiono-21-mandatow.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63407.jpg" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/90,63407,Nakaz-zaslaniania-nosa-i-ust-Jednego-dnia-w-Elblagu-wystawiono-21-mandatow.html" style=" ">Nakaz zas�aniania nosa i ust: Jednego dnia w Elblagu wystawiono 21 manda</a>
									
									</div>
									
								</div>
								
								
								<div>
								<a href="/37,63414,PKS-yz-mazowieckiego-beda-kursowaly-po-Elblagu-Na-wybor-drugiegoprzewoznika-jest-coraz-mniejczasu.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63414.jpg?v=1602586486" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/37,63414,PKS-yz-mazowieckiego-beda-kursowaly-po-Elblagu-Na-wybor-drugiegoprzewoznika-jest-coraz-mniejczasu.html" style=" ">PKS-y�z mazowieckiego b�d� kursowa�y po Elbl�gu. Co z drugim przewo�nikiem?</a>
									
									</div>
									
								</div>
								
								
								<div>
								<a href="/90,63409,16-osob-w-Seminarium-zakazonych-koronawirusem-Seminarium-Duchowne-w-Elblagu-w-kwarantannie-aktualizacja-.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63409.jpg" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/90,63409,16-osob-w-Seminarium-zakazonych-koronawirusem-Seminarium-Duchowne-w-Elblagu-w-kwarantannie-aktualizacja-.html" style=" font-size:30px">16 os�b w Seminarium z koronawirusem. Seminarium w kwarantannie- aktualizacja</a>
									
									</div>
									
								</div>
								
								
								<div>
								<a href="/90,63410,Przybywa-zakazonych-koronawirusem-w-Elblagu-Potwierdzono-6-nowychprzypadkow.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63410.jpg" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/90,63410,Przybywa-zakazonych-koronawirusem-w-Elblagu-Potwierdzono-6-nowychprzypadkow.html" style=" ">Przybywa zaka�onych koronawirusem w Elbl�gu. 6 nowych�przypadk�w</a>
									
									</div>
									
								</div>
								
								
								<div>
								<a href="/94,63371,Elblag-do-poprawki-Srodmiescie-odc-3.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63371.jpg?v=1602241081" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/94,63371,Elblag-do-poprawki-Srodmiescie-odc-3.html" style=" ">Elbl�g do poprawki: �r�dmie�cie (odc. 3)</a>
									
									</div>
									
								</div>
								
								
								<div>
								<a href="/37,63405,W-bardzo-kameralnym-gronie-opolaczeniuelblaskich-porodowek-Mieszkanki-nie-sa-zainteresowane-tematem.html" ><img style="width:100%;max-width:985px;height:350px;display:block" src="https://info.elblag.pl/images/slider2/63405.jpg?v=1602513984" alt="" /> </a> 
									<div style="background: #b40000;  font-size: 34px; font-weight: bold; text-align: center;padding:10px;width:100%;max-width:965px;max-height:92px;line-height:36px;">
									<a style="color: #fff;" href="/37,63405,W-bardzo-kameralnym-gronie-opolaczeniuelblaskich-porodowek-Mieszkanki-nie-sa-zainteresowane-tematem.html" style=" ">Po��czenie elbl�skich porod�wek. Mieszkanki nie s� zainteresowane tematem?</a>
									
									</div>
									
								</div>
								</div><div id="banner-3n" style="margin: 20px 0px">			
				
				</div>
					<div class="news_top" id="top_art">
						
						<div class="news_top_foto" >
						
						<div class="news_top_tytul"> <a  href="/90,63429,Koronawirus-w-Sp-1-i-ZSZ-nr-1-w-Elblagu-Zakazona-nauczycielka-i-uczen.html">Koronawirus w Sp 1 i ZSZ nr 1 w Elbl�gu. Zaka�ona nauczycielka i ucze�</a> </div>
						
						<div style="position:relative;">
							
						
							<a  href="/90,63429,Koronawirus-w-Sp-1-i-ZSZ-nr-1-w-Elblagu-Zakazona-nauczycielka-i-uczen.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63429-.jpg" alt="Koronawirus w Sp 1 i ZSZ nr 1 w Elbl�gu. Zaka�ona nauczycielka i ucze�" /> </a>
							
							
							<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:1px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">17</div>
						</div>
						
						<div style="font-size:15px; margin-top:10px;line-height:1.35em; ">
							<span class="godz"> 15:30</span> <a href="/90,63429,Koronawirus-w-Sp-1-i-ZSZ-nr-1-w-Elblagu-Zakazona-nauczycielka-i-uczen.html"> Koronawirusa wykryto u nauczycielki ze Szko�y Podstawowej nr 1 (ul. Daszy�skiego) oraz u ucznia z Zespo�u Szk� Zawodowych nr 1 (ul. Robotnicza). -... </a> 
						</div>
						
						
						</div>
						<div class="news_top_text" >
						
						<!--
						<a href="1,75,kategoria,wybory-samorzadowe-2018.html"><img style="width:265px" src="media/layout/wybory2018.png"></a><br/><br/>
						-->
						
						<div style="background:#e1e1e1;padding:10px;font-size:18px; font-weight:bold;"> 
						Ostatnie informacje
						</div>
						
						<div style="border:1px solid #e1e1e1; border-bottom:5px solid #e1e1e1;padding:10px;">
						
								<div style=" overflow:hidden;">
								
								<div style="float:left; width:90px;">
								<div class="zdjecie"><a href="/37,63430,Bedzie-lepiej-niz-w-Pasleku-Kiedy-ruszy-modernizacja-parkuDolinka.html" ><img src="images/artykuly-glowne/d/info.elblag.pl-63430-Bedzie-lepiej-niz-w-Pasleku-t.jpg"  alt="Artyku�" style="width:80px;height:60px;"/></a></div></div>
								
								<div style="float:left;width:153px;text-align:left;line-height:14px;">
								
								<span style="color:#e9000d;font-size:13px; padding: 0px 7px 0px 0px;">14:30</span>
								
								<a href="/37,63430,Bedzie-lepiej-niz-w-Pasleku-Kiedy-ruszy-modernizacja-parkuDolinka.html" class="pierwszy-tytul" style="font-size: 12px;">B�dzie lepiej ni� w Pas��ku. Kiedy ruszy modernizacja parku Dolinka?</a></div>
								
								
								</div>
							
								<div style="margin-top:8px; overflow:hidden;">
								
									<div style="float:left;color:#e9000d;width:243px; text-align:left; font-size:12px;">
									14:00
																		
									<a href="/37,63427,Roboty-drogowe-ul-Warynskiego-i-ul-Freta.html">Roboty drogowe - ul. Wary�skiego i ul. Freta</a>
									
									</div>
									
								</div>
							
								<div style="margin-top:8px; overflow:hidden;">
								
									<div style="float:left;color:#e9000d;width:243px; text-align:left; font-size:12px;">
									13:00
																		
									<a href="/90,63431,Elblag-Kim-sa-34-nowe-zakazone-osoby-Z-Seminarium-nie-wszyscy-zglosili-sie-na-badanie.html">Elbl�g: Kim s� 34 nowe zaka�one osoby? </a>
									
									</div>
									
								</div>
							
								<div style="margin-top:8px; overflow:hidden;">
								
									<div style="float:left;color:#e9000d;width:243px; text-align:left; font-size:12px;">
									12:00
																		
									<a href="/4,63428,Paslek-Smiertelne-zdarzenie-na-drodze-W513.html">Pas��k: �miertelne zdarzenie na drodze W513</a>
									
									</div>
									
								</div>
							
								<div style="margin-top:8px; overflow:hidden;">
								
									<div style="float:left;color:#e9000d;width:243px; text-align:left; font-size:12px;">
									11:15
																		
									<a href="/37,63425,Rekord-zakazenkoronawirusemw-Polsce-ponad-65-tys-w-Elblagu-34.html">Rekord zaka�e� koronawirusem: w Polsce ponad 6,5 tys., w Elbl�gu 34</a>
									
									</div>
									
								</div>
							
								<div style="margin-top:8px; overflow:hidden;">
								
									<div style="float:left;color:#e9000d;width:243px; text-align:left; font-size:12px;">
									11:02
																		
									<a href="/37,63426,Stan-alarmowy-na-rzece-Elblag.html">Stan alarmowy na rzece Elbl�g</a>
									
									</div>
									
								</div>
							
								<div style="margin-top:8px; overflow:hidden;">
								
									<div style="float:left;color:#e9000d;width:243px; text-align:left; font-size:12px;">
									10:40
																		
									<a href="/37,63423,Wichura-powalila-drzewa-w-Elblagu-i-powiecie-W-ciagu-kilku-godzin-strazacy-interweniowali-ponad-20razy.html">Wichura powali�a drzewa w Elbl�gu i powiecie. Stra�acy interweniowali 20�razy</a>
									
									</div>
									
								</div>
							
								<div style="margin-top:8px; overflow:hidden;">
								
									<div style="float:left;color:#e9000d;width:243px; text-align:left; font-size:12px;">
									10:20
																		
									<a href="/37,63420,Bezplatne-warsztaty-z-edukacji-cyfrowej.html">Bezp�atne warsztaty z edukacji cyfrowej</a>
									
									</div>
									
								</div>
							
								<div style="margin-top:8px; overflow:hidden;">
								
									<div style="float:left;color:#e9000d;width:243px; text-align:left; font-size:12px;">
									09:30
																		
									<a href="/37,63413,Zolnierze-kontroluja-przebywajacych-na-kwarantannie.html">�o�nierze kontroluj� przebywaj�cych na kwarantannie</a>
									
									</div>
									
								</div>
							
						</div>
						
						<div style="float:right;margin-top:3px; margin-bottom:10px"><a href="1,poprzednie,kategoria,archiwalne.html">Zobacz wszystkie</a> <span>&raquo;</span></div>
						</div>
					
					</div><div class="newsy_top_2"><div style="width:100%;" class="tytuly"><div class="foto-news2" style="width:482px;  float:left ; ">
						<a title="B�dzie lepiej ni� w Pas��ku. Kiedy ruszy modernizacja parku�Dolinka?" href="/37,63430,Bedzie-lepiej-niz-w-Pasleku-Kiedy-ruszy-modernizacja-parkuDolinka.html"><h2>B�dzie lepiej ni� w Pas��ku. Kiedy ruszy modernizacja parku Dolinka? </h2>  </a> 
					</div><div class="foto-news2" style="width:482px;  float:right ; ">
						<a title="Roboty drogowe - ul. Wary�skiego i ul. Freta" href="/37,63427,Roboty-drogowe-ul-Warynskiego-i-ul-Freta.html"><h2>Roboty drogowe - ul. Wary�skiego i ul. Freta </h2>  </a> 
					</div></div><div style="clear:both;"></div>
					
					<div class="newsy_top_2_lewa">
					
					<div class="newsy_top_2_foto" style="position:relative;">
							
						<a href="/37,63430,Bedzie-lepiej-niz-w-Pasleku-Kiedy-ruszy-modernizacja-parkuDolinka.html"><img width="480" src="images/artykuly-glowne/d/info.elblag.pl-63430-Bedzie-lepiej-niz-w-Pasleku.jpg?v=1602672587" alt="B�dzie lepiej ni� w Pas��ku. Kiedy ruszy modernizacja parku�Dolinka?" /></a>
						<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:1px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">11</div>
					</div>
					
					<div class="newsy_top_2_text">
					
						<span class="godz"> 14:30</span> <a href="/37,63430,Bedzie-lepiej-niz-w-Pasleku-Kiedy-ruszy-modernizacja-parkuDolinka.html"> Od wielu lat pojawiaj� si� zapytania mieszka�c�w, czy b�dziemy mieli taki park, jak w Pas��ku. Nasz projekt, r�wnie� dzi�ki fantastycznej lokalizacji, b�dzie du�o �adniejszy, wi�kszy i daj�cy wi�cej...</a> 
					
					</div>
					
					</div>
					
					
					<div class="newsy_top_2_prawa">
					
					<div class="newsy_top_2_foto" style="position:relative;">
							
						<a href="/37,63427,Roboty-drogowe-ul-Warynskiego-i-ul-Freta.html"><img width="480" src="images/artykuly-glowne/d/info.elblag.pl-63427-.jpg" alt="Roboty drogowe - ul. Wary�skiego i ul. Freta" /></a>
						<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:1px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">4</div>
					</div>
					
					<div class="newsy_top_2_text">
					
						<span class="godz"> 14:00</span> <a href="/37,63427,Roboty-drogowe-ul-Warynskiego-i-ul-Freta.html"> Departament Zarz�d Dr�g UM informuje o remontach dw�ch elbl�skich ulic.
&nbsp;

ul. Wary�skiego

Od 14 pa�dziernika planowane jest rozpocz�cie prac zwi�zanych z remontem nawierzchni jezdni przy...</a> 
					
					</div>
					
					</div>
					</div>
			<div class="cf"></div>
			
			<div class="lewa">	

 				<div style="margin-bottom:20px"></div>
				
					<div id="mod-galerie-filmy">
						<div class="mod-h3" style="margin-bottom:20px">
							<h3>Galerie zdj��</h3>
						</div>
						<div class="slick-slider">
					<div>
						
						<a href="galeria,7413,1,112,ELBLAG-DO-POPRAWKI-Srodmiescie--Centrum.html#szlak"><img style="width:232px" src="images/galerie/glowne2/339833d.jpg" title="ELBL�G DO POPRAWKI - �r�dmie�cie / Centrum" alt="ELBL�G DO POPRAWKI - �r�dmie�cie / Centrum" /></a><br/>
						<div style="color: #909090;padding: 5px; text-align: left;font-size:12px;" class="">Wczoraj 09:30</div>	
						
						<div style="padding:0px 5px 5px 5px; line-height:20px; font-size:14px;"><a href="galeria,7413,1,112,ELBLAG-DO-POPRAWKI-Srodmiescie--Centrum.html#szlak">ELBL�G DO POPRAWKI - �r�dmie�cie / Centrum</a></div>
						
					</div>
					<div>
						
						<a href="galeria,7420,1,31,Dodatkowe-obostrzenia-na-ulicach.html#szlak"><img style="width:232px" src="images/galerie/glowne2/340087d.jpg" title="Dodatkowe obostrzenia na ulicach" alt="Dodatkowe obostrzenia na ulicach" /></a><br/>
						<div style="color: #909090;padding: 5px; text-align: left;font-size:12px;" class="">Przedwczoraj 10:10</div>	
						
						<div style="padding:0px 5px 5px 5px; line-height:20px; font-size:14px;"><a href="galeria,7420,1,31,Dodatkowe-obostrzenia-na-ulicach.html#szlak">Dodatkowe obostrzenia na ulicach</a></div>
						
					</div>
					<div>
						
						<a href="galeria,7417,1,59,Rozbudowa-Swiatowida-znow-idzie-pelna-para.html#szlak"><img style="width:232px" src="images/galerie/glowne2/339988d.jpg" title="Rozbudowa �wiatowida zn�w idzie pe�n� par�." alt="Rozbudowa �wiatowida zn�w idzie pe�n� par�." /></a><br/>
						<div style="color: #909090;padding: 5px; text-align: left;font-size:12px;" class="">Przedwczoraj 07:10</div>	
						
						<div style="padding:0px 5px 5px 5px; line-height:20px; font-size:14px;"><a href="galeria,7417,1,59,Rozbudowa-Swiatowida-znow-idzie-pelna-para.html#szlak">Rozbudowa �wiatowida zn�w idzie pe�n� par�.</a></div>
						
					</div>
					<div>
						
						<a href="galeria,7419,1,70,Olimpia-Elblag-GKS-Katowice-12-11.html#szlak"><img style="width:232px" src="images/galerie/glowne2/340085d.jpg" title="Olimpia Elbl�g - GKS Katowice 1:2 (1:1)" alt="Olimpia Elbl�g - GKS Katowice 1:2 (1:1)" /></a><br/>
						<div style="color: #909090;padding: 5px; text-align: left;font-size:12px;" class="">4 dni temu, Sobota, 10.10</div>	
						
						<div style="padding:0px 5px 5px 5px; line-height:20px; font-size:14px;"><a href="galeria,7419,1,70,Olimpia-Elblag-GKS-Katowice-12-11.html#szlak">Olimpia Elbl�g - GKS Katowice 1:2 (1:1)</a></div>
						
					</div>
					<div>
						
						<a href="galeria,7409,1,16,Mistrzowie-parkowania-w-Elblagu-czesc-67.html#szlak"><img style="width:232px" src="images/galerie/glowne2/339625d.jpg" title="Mistrzowie parkowania w Elbl�gu (cz�� 67)" alt="Mistrzowie parkowania w Elbl�gu (cz�� 67)" /></a><br/>
						<div style="color: #909090;padding: 5px; text-align: left;font-size:12px;" class="">4 dni temu, Sobota, 10.10</div>	
						
						<div style="padding:0px 5px 5px 5px; line-height:20px; font-size:14px;"><a href="galeria,7409,1,16,Mistrzowie-parkowania-w-Elblagu-czesc-67.html#szlak">Mistrzowie parkowania w Elbl�gu (cz�� 67)</a></div>
						
					</div>
					<div>
						
						<a href="galeria,7412,1,51,Scena-przy-stoliku-na-duzej-scenie.html#szlak"><img style="width:232px" src="images/galerie/glowne2/339764d.jpg" title="Scena przy stoliku na du�ej scenie" alt="Scena przy stoliku na du�ej scenie" /></a><br/>
						<div style="color: #909090;padding: 5px; text-align: left;font-size:12px;" class="">5 dni temu, Pi&#261;tek, 09.10</div>	
						
						<div style="padding:0px 5px 5px 5px; line-height:20px; font-size:14px;"><a href="galeria,7412,1,51,Scena-przy-stoliku-na-duzej-scenie.html#szlak">Scena przy stoliku na du�ej scenie</a></div>
						
					</div></div>
				<div class="zobacz-pozostale"><a href="/galerie.html">zobacz pozostale galerie</a> <span>&raquo;</span></div>
					</div> 			
			<div id="mod-baza-firm">
				<div class="mod-h3">
					<h3>Baza firm</h3>
				</div>
				
			<img src="media/layout/h3-cien.png" alt="Baza firm" width="232" />
			<div class="lista-kategorii">
			<SCRIPT language=JavaScript>function selecturl(s){var gourl = s.options[s.selectedIndex].value; window.top.location.href = gourl;}</SCRIPT>
			
			<form><select name="urljump" onchange="selecturl(this)" style="width:232px;font-family:Arial;font-size:13px"><option>wybierz kategori�</option>
					<option value="/index.php?id=spis_&amp;dzial=1">rozrywka, lokale, gastronomia</option>
					<option value="/index.php?id=spis_&amp;dzial=2">turystyka, noclegi, hotele</option>
					<option value="/index.php?id=spis_&amp;dzial=3">domy, mieszkania, budownictwo</option>
					<option value="/index.php?id=spis_&amp;dzial=4">motoryzacja, komisy, salony</option>
					<option value="/index.php?id=spis_&amp;dzial=7">internet, komputery, multimedia</option>
					<option value="/index.php?id=spis_&amp;dzial=8">reklama, media, poligrafia</option>
					<option value="/index.php?id=spis_&amp;dzial=9">moda i uroda, salony pi�kno&#347;ci, perfumeria</option>
					<option value="/index.php?id=spis_&amp;dzial=13">zdrowie, medycyna, rehabilitacja</option>
 					<option value="/index.php?id=spis_&amp;dzial=5">produkcja, us�ugi, handel, sklepy, firmy, hurtownie, zegarki</option>
</select>
			</form>	<div class="pokaz-wiecej">
					<a href="baza-firm.html">wpisy z katalogu firm</a> &raquo;
				</div>
			</div>
			<div class="ostatni"><a href="4,146,Izba-Staropolska,firmy.html"><img src="images/wpisy/glowne/146.jpg" alt="Izba Staropolska" width="232" /></a>
			</div>						
			</div>
			
				<div class="mod-art-kategorie" style="margin-top:15px;margin-bottom:20px;">

						<a href="/1,74,kategoria,concordia-elblag.html"><img src="media/layout/concordia1.png" style="margin-bottom:5px;" alt="" /></a>
						
 						<div>
							
			<ul class="art-lista">
					<li class="pierwszy">
						<span class="data">3 dni temu, Niedziela, 11.10.2020</span>
 						<a href="/74,63388,Bardzo-wazne-3-punkty-Concordii-Sloniki-wygraly-w-Moragu-z-Huraganem-aktualizacja-GOLE-Z-MECZU.html" class="pierwszy-tytul">Bardzo wa�ne 3 punkty Concordii. S�oniki wygra�y w Mor�gu z...&nbsp;<span>&raquo;</span></a>
						
					<div class="zdjecie"><a href="/74,63388,Bardzo-wazne-3-punkty-Concordii-Sloniki-wygraly-w-Moragu-z-Huraganem-aktualizacja-GOLE-Z-MECZU.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63388-Bardzo-wazne-3-punkty-m.jpg"  alt="Bardzo wa�ne 3 punkty Concordii. S�oniki wygra�y w Mor�gu z Huraganem - aktualizacja [GOLE Z MECZU]" title="Bardzo wa�ne 3 punkty Concordii. S�oniki wygra�y w Mor�gu z Huraganem - aktualizacja [GOLE Z MECZU]" /></a></div>
						<p class="opis"><a href="/74,63388,Bardzo-wazne-3-punkty-Concordii-Sloniki-wygraly-w-Moragu-z-Huraganem-aktualizacja-GOLE-Z-MECZU.html">Po bardzo wyr�wnanym, rozgrywanym w trudnych warunkach meczu, Concordia pokona�a w Mor�gu miejscowy Huragan 3:0. Wszystkie...</a>&nbsp;<a href="/74,63388,Bardzo-wazne-3-punkty-Concordii-Sloniki-wygraly-w-Moragu-z-Huraganem-aktualizacja-GOLE-Z-MECZU.html" class="pokaz-wiecej">&raquo;</a></p>
					</li>
					<li class="pozostale">
						<a href="/74,63377,Pojedynek-dwoch-dobrych-znajomych-W-sobote-Concordia-zmierzy-sie-w-Moragu-z-Huraganem.html">Pojedynek dw�ch dobrych znajomych. W sobot� Concordia zmierzy...&nbsp;<span>&raquo;</span></a>, <span class="data">Pi&#261;tek, 09.10.2020</span>
					</li>
					<li class="pozostale">
						<a href="/74,63310,Concordia-nie-dala-rady-rezerwom-Legii-Warszawa-SKROT-MECZU.html">Concordia nie da�a rady rezerwom Legii Warszawa [SKR�T MECZU]&nbsp;<span>&raquo;</span></a>, <span class="data">Sobota, 03.10.2020</span>
					</li>
			</ul><div class="cf"></div>
						</div>
						
						<div class="zobacz-pozostale"><a href="/1,74,kategoria,concordia-elblag.html">zobacz pozostale artyku�y</a> <span>&raquo;</span></div>
					</div>

			
			<div id="mod-przydatne">
			
				<ul class="zakladki">
					<li class="zt1"><a href="#zakladka-1">Waluty - Silvant</a></li>
					<li class="zt2"><a href="#zakladka-2">Indeksy GPW</a></li>
 				</ul>			
			
				<div class="zawartosc-tabel">
				
					<div id="zakladka-1" class="tresc-zakladki">
 					
						
				<ul>
					<li class="kt1"><span>Waluta</span></li>
					<li class="kt2"><span>Skup</span></li>
					<li class="kt3"><span>Sprzeda�</span></li>
				</ul>
						<ul>
							<li class="k1">1 USD</li>
							<li class="k2">3.73 z�</li>
							<li class="k3">3.88 z�</li>
						</ul><div class="cf"></div>
						<ul>
							<li class="k1">1 EUR</li>
							<li class="k2">4.41 z�</li>
							<li class="k3">4.56 z�</li>
						</ul><div class="cf"></div>
						<ul>
							<li class="k1">1 CHF</li>
							<li class="k2">4.09 z�</li>
							<li class="k3">4.24 z�</li>
						</ul><div class="cf"></div>
						<ul>
							<li class="k1">1 GBP</li>
							<li class="k2">4.85 z�</li>
							<li class="k3">5.00 z�</li>
						</ul><div class="cf"></div>
						<ul>
							<li class="k1">1 NOK</li>
							<li class="k2">0.40 z�</li>
							<li class="k3">0.42 z�</li>
						</ul><div class="cf"></div>
				
				<p><a href="http://www.silvant.gabo.pl/" target="_blank"><b>Kantor SILVANT - tel. 55 232 46 70</b></a></p>
				<p><a href="stat/1/" target="_blank"><b>INTERNETOWY KANTOR WALUTOWY</b></a></p>
						
					</div>
					
					<div id="zakladka-2" class="tresc-zakladki">
						
  						<table style="border:0;width:100%;font:normal 11px Tahoma;padding:0;border-collapse: collapse;background-color:#FFF;text-align:left;">
<tr bgcolor="#0e3782">
	<td colspan="2" style="height:22px;background-color:#0E3782">
	<div style="float:left;background:url(//static1.money.pl/i/a3.gif) no-repeat 5px 8px;padding:2px 2px 2px 13px;font:bold 12px Arial;">
		Gie�da
	</div>
	<div style="float:right;padding:2px 3px 0px 3px">
		<a rel="nofollow" href="https://www.money.pl/#utm_source=centrum-webmastera&amp;utm_medium=referral&amp;utm_campaign=cw-money" target="_blank"><img src="//static1.money.pl/i/loga/moneypl_pp2.gif" alt="Money.pl - Kliknij po wi�cej" border="0" height="17" width="52"></a>
	</div>
	</td>
</tr>
<tr>
	<td colspan="2" style="background-color:#E7E7E7;color:#4C4C4C;padding: 3px 6px 3px 9px;font-weight:bold">GPW (2020-10-14 18:58)</td>
</tr>

<tr>
<td width="40%" style="padding: 3px 6px 3px 9px;border-bottom:1px solid #E7E7E7;"><a style="text-decoration:none;color:#15459C !important"  rel="nofollow" href="https://www.money.pl/gielda/indeksy_gpw/wig/#utm_source=centrum-webmastera&amp;utm_medium=referral&amp;utm_campaign=cw-money">WIG</a></td>
<td rowspan="4" style="padding: 3px 6px 3px 9px;border-bottom:1px solid #E7E7E7;vertical-align:top">
	Informujemy, i� w zwi�zku ze zmianami zasad dystrybucji danych GPW wprowadzonymi 1 stycznia 2018 r. notowania dost�pne s� bezpo�rednio na stronie money.pl
</td>
</tr>
<tr>
<td width="40%" style="padding: 3px 6px 3px 9px;border-bottom:1px solid #E7E7E7;"><a style="text-decoration:none;color:#15459C !important"  rel="nofollow" href="https://www.money.pl/gielda/indeksy_gpw/wig20/#utm_source=centrum-webmastera&amp;utm_medium=referral&amp;utm_campaign=cw-money">WIG20</a></td>
</tr>
<tr>
<td width="40%" style="padding: 3px 6px 3px 9px;border-bottom:1px solid #E7E7E7;"><a style="text-decoration:none;color:#15459C !important"  rel="nofollow" href="https://www.money.pl/gielda/indeksy_gpw/mwig40/#utm_source=centrum-webmastera&amp;utm_medium=referral&amp;utm_campaign=cw-money">mWIG40</a></td>
</tr>
<tr>
<td width="40%" style="padding: 3px 6px 3px 9px;border-bottom:1px solid #E7E7E7;"><a style="text-decoration:none;color:#15459C !important"  rel="nofollow" href="https://www.money.pl/gielda/indeksy_gpw/swig80/#utm_source=centrum-webmastera&amp;utm_medium=referral&amp;utm_campaign=cw-money">sWIG80</a></td>
</tr>
<tr style="border:0px;"><td style="border:0px;" colspan="3"><div style="float:right;font:normal 10px Arial;color:#aaaaaa">Wspierane przez Money.pl</div></td></tr>
</table><div id="mny_cw"> 
<table class="cw_chart" align="center"> 
<tr>
<td class="cw_h1">
<div class="cw_h1_t">
<span>WIG20</span></div>
<div class="cw_h1_l"><a rel="nofollow" href="https://www.money.pl/#utm_source=centrum-webmastera&amp;utm_medium=referral&amp;utm_campaign=cw-money" target="_blank">
<img src="https://static1.money.pl/i/loga/moneypl_pp2.gif" alt="Money.pl - Kliknij po wi�cej" border="0" height="17" width="52"></a></div>
</td>
</tr>
<tr>
<td class="td3" >
<a  rel="nofollow" href="https://www.money.pl/gielda/indeksy_gpw/wig20/#utm_source=centrum-webmastera&amp;utm_medium=referral&amp;utm_campaign=cw-money">
	<div style="max-width:193px;margin:3px;">
		Informujemy, i� w zwi�zku ze zmianami zasad dystrybucji danych GPW wprowadzonymi 1 stycznia 2018 r. notowania dost�pne s� bezpo�rednio na stronie money.pl
	</div>
</a>
</td>
</tr>
    <tr style="border:0;"><td style="border:0;"><div style="float:right;font:normal 10px Arial;color:#aaaaaa">Wspierane przez Money.pl</div></td></tr>

</table>
</div> 
						
					</div>
 					
					<div class="cf"></div>		  
 									
				</div>

			</div> 
			<div id="banner-3n">			
			
		<div class="ADinfo">
		REKLAMA
		</div><a class="linkwrap" target="_blank" href="https://info.elblag.pl/baner/2466">
			<div class="iframe"></div>
			<iframe	id="baner-2466" scrolling="no" style="border:0px;" src="images/banerkiIFRAME/2466/index.html" width="232" height="167"></iframe>
			
			</a>
			</div>

									<div style="width:232px;margin: 0 auto; overflow:hidden;">
									
									<div class="mod-art-kategorie" style="margin-top: 20px; margin-bottom: 20px;">
					<div style="margin-bottom:5px;" class="mod-h3"><h3>POCZYTNE</h3></div>
						
							
					<ul class="art-lista">
							<li class="pierwszy">
							
								<span class="data">Tydzie� temu, &#346;roda, 07.10.2020</span>
								<a href="/37,63345,Grupa-elblazan-chce-utrzymania-oddzialu-polozniczego-w-szpitalu-miejskim.html" class="pierwszy-tytul"><span class="numl">1.</span>Grupa elbl��an chce utrzymania oddzia�u po�o�niczego w szpitalu miejskim&nbsp;<span>&raquo;</span>, <span class="ilekom"> 15111</span></a>
								
								<div class="zdjecie"><a href="/37,63345,Grupa-elblazan-chce-utrzymania-oddzialu-polozniczego-w-szpitalu-miejskim.html"><img alt="Zdj�cie" style="width:210px" src="images/artykuly-glowne/d/info.elblag.pl-63345-PROTEST-SZPITAL-sl.jpg" /></a></div>
								
							</li>
							<li class="pozostale">
								<a href="/90,63358,Dwie-nauczycielki-z-SP-16-w-Elblagu-zakazone-koronawirusem-Szkola-przejdzie-na-nauczanie-hybrydowe.html"><span class="numl">2.</span>Dwie nauczycielki z SP 16 w Elbl�gu zaka�one koronawirusem <span>&raquo;</span>, <span class="ilekom"> 14505</span></a>
							</li>
							<li class="pozostale">
								<a href="/53,63389,Tragiczny-wypadek-pod-Braniewem-Nie-zyje-18-latek-Kierowca-i-mlodzi-pasazerowie-w-szpitalu-zobacz-zdjecia.html"><span class="numl">3.</span>Tragiczny wypadek pod Braniewem. Nie �yje 18-latek - zdj�cia z wypadku <span>&raquo;</span>, <span class="ilekom"> 14344</span></a>
							</li>
							<li class="pozostale">
								<a href="/90,63366,Przebadano-ponad-100-pracownikow-Fabryki-Meble-Wojcik-Dyrektor-sanepidu-Co-10-osoba-byla-zakazona.html"><span class="numl">4.</span>Przebadano ponad 100pracownik�w Fabryki Meble W�jcik. &quot;Co 10osoba by�a... <span>&raquo;</span>, <span class="ilekom"> 12709</span></a>
							</li>
							<li class="pozostale">
								<a href="/90,63396,W-Elblagu-rosnie-liczba-zakazen-koronawirusem-Dzisiejszy-bilans-to11-nowych-przypadkow.html"><span class="numl">5.</span>W Elbl�gu ro�nie liczba zaka�e�. Dzisiejszy bilans to�11 nowych przypadk�w <span>&raquo;</span>, <span class="ilekom"> 8037</span></a>
							</li>
							<li class="pozostale">
								<a href="/94,63336,Elblag-do-poprawki-Zawodzie-odc-2.html"><span class="numl">6.</span>Elbl�g do poprawki: Zawodzie (odc. 2) <span>&raquo;</span>, <span class="ilekom"> 7703</span></a>
							</li></ul>	
							
							</div>   
										<div id="banner-37">			
										
										</div>
					<div class="mod-art-kategorie" style="margin-top: 20px;">
					<div style="margin-bottom:5px;" class="mod-h3"><h3>KOMENTOWANE</h3></div>
						
						
						
						

							
					<ul class="art-lista">
							<li class="pierwszy">
							
								<span class="data">Tydzie� temu, &#346;roda, 07.10.2020</span>
								<a href="/37,63345,Grupa-elblazan-chce-utrzymania-oddzialu-polozniczego-w-szpitalu-miejskim.html" class="pierwszy-tytul"><span class="numl">1.</span>Grupa elbl��an chce utrzymania oddzia�u po�o�niczego w szpitalu miejskim&nbsp;<span>&raquo;</span>, <span class="ilekom"><img src="media/layout/ico-komentarze-2-cz.png" alt="Komentarze" /> 36</span></a>
								
								<div class="zdjecie"><a href="/37,63345,Grupa-elblazan-chce-utrzymania-oddzialu-polozniczego-w-szpitalu-miejskim.html"><img alt="Zdj�cie" style="width:210px" src="images/artykuly-glowne/d/info.elblag.pl-63345-PROTEST-SZPITAL-sl.jpg" /></a></div>
								
							</li>
							<li class="pozostale">
								<a href="/90,63416,Policja-wyprowadzila-elblazanina-z-Urzedu-Miasta-Nie-chcial-zalozyc-maseczki.html"><span class="numl">2.</span>Policja wyprowadzi�a elbl��anina z UM. &quot;Nie chcia� za�o�y� maseczki&quot; <span>&raquo;</span>, <span class="ilekom"><img src="media/layout/ico-komentarze-2-cz.png" alt="Komentarze" /> 36</span></a>
							</li>
							<li class="pozostale">
								<a href="/90,63391,Czy-elblazanie-stosuja-sie-do-nowych-zasad-bezpieczenstwa-Policja-Wystawilismy-15-mandatow.html"><span class="numl">3.</span>Czy elbl��anie stosuj� si� do nowych zasad bezpiecze�stwa?  <span>&raquo;</span>, <span class="ilekom"><img src="media/layout/ico-komentarze-2-cz.png" alt="Komentarze" /> 22</span></a>
							</li>
							<li class="pozostale">
								<a href="/37,63405,W-bardzo-kameralnym-gronie-opolaczeniuelblaskich-porodowek-Mieszkanki-nie-sa-zainteresowane-tematem.html"><span class="numl">4.</span>Po��czenie elbl�skich porod�wek. Mieszkanki nie s� zainteresowane tematem? <span>&raquo;</span>, <span class="ilekom"><img src="media/layout/ico-komentarze-2-cz.png" alt="Komentarze" /> 21</span></a>
							</li>
							<li class="pozostale">
								<a href="/78,63353,Ruszyly-kontrole-Strazy-Miejskiej-w-elblaskich-autobusach-i-tramwajach.html"><span class="numl">5.</span>Ruszy�y kontrole Stra�y Miejskiej w elbl�skich autobusach i tramwajach <span>&raquo;</span>, <span class="ilekom"><img src="media/layout/ico-komentarze-2-cz.png" alt="Komentarze" /> 20</span></a>
							</li>
							<li class="pozostale">
								<a href="/37,63167,Radni-apeluja-o-zmiany-na-ul-Krolewieckiej-Nie-ma-warunkow-do-bezpiecznego-poruszania-sie.html"><span class="numl">6.</span>Radni apeluj� o zmiany na ul. Kr�lewieckiej <span>&raquo;</span>, <span class="ilekom"><img src="media/layout/ico-komentarze-2-cz.png" alt="Komentarze" /> 18</span></a>
							</li></ul>												
							
					
							  	
					
				</div>
				</div>
				
						
				
				<div class="baner-31" style="margin-top:10px;margin-bottom:10px;">
				
				</div>
			<div style="margin:20px 0px">
			<a class="linkwrap" href="newsletter.html">
			<div class="iframe"></div>
			<iframe id="newsletter" scrolling="no" style="border:0px;" src="media/layout/html5/newsletter/index.html" width="232" height="70"></iframe></a></div>
				
				<div id="mod-konkursy">	
					<div class="mod-h3">
						<h3>Konkursy</h3>
					</div> 				
					
			<div class="zobacz-pozostale"><a href="/1,11,kategoria,konkursy.html">zobacz wszystkie konkursy</a> <span>&raquo;</span></div>
				</div><div id="banner-38" style="margin-bottom:10px">			
				
			</div>

			<div id="banner-33">			
				
			</div>
			
			
				<div class="mod-art-kategorie" style="margin-top:15px;margin-bottom:20px;">

						<img src="media/layout/schronisko.png" style="margin-bottom:5px;" alt="" />	
						
 						<div>
							
			<ul class="art-lista">
					<li class="pierwszy">
						<span class="data">Niedziela, 30.08.2020</span>
 						<a href="/31,62885,Schroniska-czekaja-zmianyW-Elblagu-nie-powinnismy-miec-z-tym-problemu.html" class="pierwszy-tytul">Schroniska czekaj� zmiany.�&quot;W Elbl�gu nie powinni�my mie� z...&nbsp;<span>&raquo;</span></a>
						
					<div class="zdjecie"><a href="/31,62885,Schroniska-czekaja-zmianyW-Elblagu-nie-powinnismy-miec-z-tym-problemu.html"><img src="images/artykuly-glowne/d/info.elblag.pl-62885-Nowy-artykul-m.jpg"  alt="Schroniska czekaj� zmiany.�&quot;W Elbl�gu nie powinni�my mie� z tym problemu&quot;" title="Schroniska czekaj� zmiany.�&quot;W Elbl�gu nie powinni�my mie� z tym problemu&quot;" /></a></div>
						<p class="opis"><a href="/31,62885,Schroniska-czekaja-zmianyW-Elblagu-nie-powinnismy-miec-z-tym-problemu.html">- Sytuacja w&nbsp;Radysach&nbsp;troch� otworzy�a oczy na to, co dzieje si� w niekt�rych schroniskach. My�l�, �e minister...</a>&nbsp;<a href="/31,62885,Schroniska-czekaja-zmianyW-Elblagu-nie-powinnismy-miec-z-tym-problemu.html" class="pokaz-wiecej">&raquo;</a></p>
					</li>
					<li class="pozostale">
						<a href="/64,62551,Poznaj-podopiecznych-elblaskiego-schroniska-cz5.html">Poznaj podopiecznych elbl�skiego schroniska (cz.5)&nbsp;<span>&raquo;</span></a>, <span class="data">Wtorek, 11.08.2020</span>
					</li>
					<li class="pozostale">
						<a href="/64,62550,Poznaj-podopiecznych-elblaskiego-schroniska-cz4.html">Poznaj podopiecznych elbl�skiego schroniska (cz.4)&nbsp;<span>&raquo;</span></a>, <span class="data">Czwartek, 06.08.2020</span>
					</li>
			</ul><div class="cf"></div>
						</div>
						
						<div class="zobacz-pozostale"><a href="/1,64,kategoria,schronisko-dla-zwierzat.html">zobacz pozostale artyku�y</a> <span>&raquo;</span></div>
					</div>
			

			<div id="banner-6" style="background-color: #e3e6e5; border: 1px solid #d1d1d1; display: none; height: 500px; margin: 20px 0 0 0; width: 232px;">	
					
					<div style="text-align:center; margin: 200px 0 0 0; line-height: 18px; font: normal 12px Arial;"> 
						<p style="font: bold 15px Arial;">Miejsce na twoj&#261; reklam?/p>
						<h3>tel. 603 690 001</h3>
						od poniedzia&#322;ku do pi&#261;tku <br>
						w godz: od 8.00 do 16.00<br>
					</div>	</div>
				<div id="banner-54">			
					
				</div><div style="width:100%; text-align:center;"></div>
				
 			</div><div class="prawa_index2"> 
				
				
				
			</div><div class="lewa-prawa">
 				<div class="cf"></div>
			
				<div class="srodek">
				
 					
		<div class="ADinfo">
		REKLAMA
		</div><a class="linkwrap" target="_blank" href="https://info.elblag.pl/baner/2679">
			<div class="iframe"></div>
			<iframe	id="baner-2679" scrolling="no" style="border:0px;" src="images/banerkiIFRAME/2679/index.html" width="740" height="200"></iframe>
			
			</a>
					<div class="cf"></div>
					
   					
				<div class="artykul-lista artykul-lista-nb">
 				    <div class="dane"><span class="data">14.10, 13:00</span> z <span class="kategoria"><a href="/1,90,kategoria,koronawirus.html" title="KORONAWIRUS">KORONAWIRUS</a> &raquo;</span><span class="skomentarze"><a href="/90,63431,Elblag-Kim-sa-34-nowe-zakazone-osoby-Z-Seminarium-nie-wszyscy-zglosili-sie-na-badanie.html#kom">Komentarzy <b><span style="color:#e9000d">6</span></b></a></span> </div>
 					<h3  class="sredni"><a href="/90,63431,Elblag-Kim-sa-34-nowe-zakazone-osoby-Z-Seminarium-nie-wszyscy-zglosili-sie-na-badanie.html" title="Elbl�g: Kim s� 34 nowe zaka�one osoby? &quot;Z Seminarium nie wszyscy zg�osili si� na badanie&quot;">Elbl�g: Kim s� 34 nowe zaka�one osoby? &quot;Z Seminarium nie wszyscy zg�osili si� na badanie&quot;</a>  </h3> 
 					
					<div class="zdjecie  imgg">
						<div class="ramka"><a href="/90,63431,Elblag-Kim-sa-34-nowe-zakazone-osoby-Z-Seminarium-nie-wszyscy-zglosili-sie-na-badanie.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63431-Elblag-Kim-sa-34-nowe.jpg?v=1602673188"  alt="Elbl�g: Kim s� 34 nowe zaka�one osoby? &quot;Z Seminarium nie wszyscy zg�osili si� na badanie&quot;" /></a>
						<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:0px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">6</div>
						</div>
						
						
						<span></span>					
					</div>
 					<a href="/90,63431,Elblag-Kim-sa-34-nowe-zakazone-osoby-Z-Seminarium-nie-wszyscy-zglosili-sie-na-badanie.html" title="Elbl�g: Kim s� 34 nowe zaka�one osoby? &amp;quot;Z Seminarium nie wszyscy zg�osili si� na badanie&amp;quot;" class="tresc"> Pad� rekord nowych przypadk�w zaka�e� w Elbl�gu. Dzi�, 14 pa�dziernika, potwierdzono kolejne 34 osoby z koronawirusem. 16 z nich pochodzi z Wy�szego Seminarium Duchownego Diecezji Elbl�skiej.
&nbsp;

10 pa�dziernika u jednego z ksi�y stwierdzono zaka�enie koronawirusem. Od tego czasu ca�e Seminarium jest w kwarantannie.
&nbsp;

Elbl�ski Sanepid skierowa� na badania 33 osoby.

&nbsp;


Na badanie nie zg�osili si� wszyscy.... <span class="wiecej">przeczytaj <span>&raquo;</span></span></a> 
 					
  				</div><div class="cf"></div>
				<div class="artykul-lista">
 				    <div class="dane"><span class="data">14.10, 12:00</span> z <span class="kategoria"><a href="/1,4,kategoria,policja.html" title="POLICJA">POLICJA</a> &raquo;</span><span class="skomentarze"><a href="/4,63428,Paslek-Smiertelne-zdarzenie-na-drodze-W513.html#kom">Komentarzy <b><span style="color:#e9000d">5</span></b></a></span> </div>
 					<h3  class="sredni"><a href="/4,63428,Paslek-Smiertelne-zdarzenie-na-drodze-W513.html" title="Pas��k: �miertelne zdarzenie na drodze W513">Pas��k: �miertelne zdarzenie na drodze W513</a>  </h3> 
 					
					<div class="zdjecie  imgr">
						<div class="ramka"><a href="/4,63428,Paslek-Smiertelne-zdarzenie-na-drodze-W513.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63428-.jpg?v=1602670171"  alt="Pas��k: �miertelne zdarzenie na drodze W513" /></a>
						<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:0px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">5</div>
						</div>
						
						
						<span></span>					
					</div>
 					<a href="/4,63428,Paslek-Smiertelne-zdarzenie-na-drodze-W513.html" title="Pas��k: �miertelne zdarzenie na drodze W513" class="tresc"> 20-letni m�czyzna kieruj�cy bmw zgin�� na miejscu w zdarzeniu, kt�re mia�o miejsce dzi� oko�o godziny 7.00 na drodze w 513 prowadz�cej w kierunku Ornety. Na miejscu pracuj� policjanci z Wydzia�u Ruchu Drogowego.

Na drodze na wysoko�ci Olkowa dosz�o do czo�owego zderzenia dw�ch pojazd�w: peugeota partnera oraz jad�cego w kierunku Pas��ka &nbsp;bmw. Pierwsze z aut kierowane by�o przez 45-latka, drugim kierowa� 20-latek. M�czyzna zgin�� na... <span class="wiecej">przeczytaj <span>&raquo;</span></span></a> 
 					
  				</div><div class="cf"></div>
				<div class="artykul-lista">
 				    <div class="dane"><span class="data">14.10, 11:15</span> z <span class="kategoria"><a href="/1,37,kategoria,informacje-lokalne.html" title="INFORMACJE LOKALNE">INFORMACJE LOKALNE</a> &raquo;</span><span class="skomentarze"><a href="/37,63425,Rekord-zakazenkoronawirusemw-Polsce-ponad-65-tys-w-Elblagu-34.html#kom">Komentarzy <b><span style="color:#e9000d">5</span></b></a></span> </div>
 					<h3  class="sredni"><a href="/37,63425,Rekord-zakazenkoronawirusemw-Polsce-ponad-65-tys-w-Elblagu-34.html" title="Rekord zaka�e�koronawirusem:�w Polsce ponad 6,5 tys., w Elbl�gu 34">Rekord zaka�e�koronawirusem:�w Polsce ponad 6,5 tys., w Elbl�gu 34</a>  </h3> 
 					
					<div class="zdjecie  imgg">
						<div class="ramka"><a href="/37,63425,Rekord-zakazenkoronawirusemw-Polsce-ponad-65-tys-w-Elblagu-34.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63425-Nowy-artykul.jpg"  alt="Rekord zaka�e�koronawirusem:�w Polsce ponad 6,5 tys., w Elbl�gu 34" /></a>
						<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:0px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">5</div>
						</div>
						
						
						<span></span>					
					</div>
 					<a href="/37,63425,Rekord-zakazenkoronawirusemw-Polsce-ponad-65-tys-w-Elblagu-34.html" title="Rekord zaka�e�koronawirusem:�w Polsce ponad 6,5 tys., w Elbl�gu 34" class="tresc"> Koronawirus coraz gro�niejszy. Dzi� (14 pa�dziernika) pad� kolejny rekord dobowy w Polsce - 6526 potwierdzonych przypadk�w. W samym Elbl�gu r�wnie� odnotowano najwi�kszy dzienny przyrost zaka�e�. Testy potwierdzi�y infekcj� wirusem SARS-CoV-2 u 34 mieszka�c�w naszego miasta.

Dzi� (14 pa�dziernika) Warmi�sko-Mazurski Urz�d Wojew�dzki poinformowa� o 196 nowych potwierdzonych przypadkach zaka�enia wirusem SARS-CoV-2:

- 36&nbsp;Olsztyn;
- 34... <span class="wiecej">przeczytaj <span>&raquo;</span></span></a> 
 					
  				</div><div class="cf"></div>
				<div class="artykul-lista">
 				    <div class="dane"><span class="data">14.10, 11:02</span> z <span class="kategoria"><a href="/1,37,kategoria,informacje-lokalne.html" title="INFORMACJE LOKALNE">INFORMACJE LOKALNE</a> &raquo;</span><span class="skomentarze"><a href="/37,63426,Stan-alarmowy-na-rzece-Elblag.html#kom">Komentarzy <b><span style="color:#e9000d">7</span></b></a></span> </div>
 					<h3  class="sredni"><a href="/37,63426,Stan-alarmowy-na-rzece-Elblag.html" title="Stan alarmowy na rzece Elbl�g">Stan alarmowy na rzece Elbl�g</a>  </h3> 
 					
					<div class="zdjecie  imgr">
						<div class="ramka"><a href="/37,63426,Stan-alarmowy-na-rzece-Elblag.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63426-Nowy-artykul.jpg"  alt="Stan alarmowy na rzece Elbl�g" /></a>
						<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:0px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">7</div>
						</div>
						
						
						<span></span>					
					</div>
 					<a href="/37,63426,Stan-alarmowy-na-rzece-Elblag.html" title="Stan alarmowy na rzece Elbl�g" class="tresc"> W zwi�zku z opadami deszczu i silnym wiatrem, kt�ry wpycha wod� do rzeki Elbl�g, przekroczony zosta� dzi� stan alarmowy na tej rzece.
&nbsp;

Dzi� po godz. 8.00 poziom wody przekroczy� stan alarmowy (610 cm) i wynosi� - 612 cm. W nast�pnych godzinach sytuacja powodziowa zacz�a si� stabilizowa�, o godz. 9.00 poziom wody w rzece Elbl�g wynosi� nadal 612 cm, a o godz. 10 zanotowano spadek poni�ej poziomu alarmowego - 604 cm. W najbli�szych... <span class="wiecej">przeczytaj <span>&raquo;</span></span></a> 
 					
  				</div><div class="cf"></div>
				<div class="artykul-lista">
 				    <div class="dane"><span class="data">14.10, 10:40</span> z <span class="kategoria"><a href="/1,37,kategoria,informacje-lokalne.html" title="INFORMACJE LOKALNE">INFORMACJE LOKALNE</a> &raquo;</span><span class="skomentarze"><a href="/37,63423,Wichura-powalila-drzewa-w-Elblagu-i-powiecie-W-ciagu-kilku-godzin-strazacy-interweniowali-ponad-20razy.html#kom">Komentarzy <b><span style="color:#e9000d">1</span></b></a></span> </div>
 					<h3  class="sredni"><a href="/37,63423,Wichura-powalila-drzewa-w-Elblagu-i-powiecie-W-ciagu-kilku-godzin-strazacy-interweniowali-ponad-20razy.html" title="Wichura powali�a drzewa w Elbl�gu i powiecie. W ci�gu kilku godzin stra�acy interweniowali ponad 20�razy">Wichura powali�a drzewa w Elbl�gu i powiecie. W ci�gu kilku godzin stra�acy interweniowali ponad 20�razy</a>  </h3> 
 					
					<div class="zdjecie  imgg">
						<div class="ramka"><a href="/37,63423,Wichura-powalila-drzewa-w-Elblagu-i-powiecie-W-ciagu-kilku-godzin-strazacy-interweniowali-ponad-20razy.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63423-.jpg"  alt="Wichura powali�a drzewa w Elbl�gu i powiecie. W ci�gu kilku godzin stra�acy interweniowali ponad 20�razy" /></a>
						<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:0px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">1</div>
						</div>
						
						
						<span></span>					
					</div>
 					<a href="/37,63423,Wichura-powalila-drzewa-w-Elblagu-i-powiecie-W-ciagu-kilku-godzin-strazacy-interweniowali-ponad-20razy.html" title="Wichura powali�a drzewa w Elbl�gu i powiecie. W ci�gu kilku godzin stra�acy interweniowali ponad 20�razy" class="tresc"> Ostatnie godziny dla elbl�skich stra�ak�w by�y wyj�tkowo pracowite. Wichura powali�a drzewa m.in. w Elbl�gu, Pas��ku, Kadynach i Braniewie. - Od godziny 5.00 interweniowali�my ponad 20 razy. W tej chwili sytuacja ju� si�&nbsp;uspokoi�a - m�wi bryg. Krzysztof&nbsp;Karolkiewicz, rzecznik prasowy Komendy Miejskiej Pa�stwowej Stra�y Po�arnej w Elbl�gu.

Wichura przesz�a w nocy i nad ranem nad&nbsp;wojew�dztwie&nbsp;warmi�sko-mazurskim. W ca�ym... <span class="wiecej">przeczytaj <span>&raquo;</span></span></a> 
 					
  				</div><div class="cf"></div><div>
					
					<div style="float:left;">
			
			<div style="width:507px;height:281px;background: url('images/zdj_dnia/2089g.jpg') top center no-repeat; border:0px solid #fd000c; margin-top:10px;">
			<A href="zdjecie-dnia,2089.html">			
			<div style="width:507px;height:50px; ">
			
			<div style="position:relative; left:-7px; top:-10px;float:left;width:165px; height:38px; margin-left:0px; background: url('media/layout/tlo_zdj_dnia.png'); font-size:18px; font-family:tahoma; font-weight:bold;text-align:left;">

			</div>
			
			<div style="float:left; width:108px">
				
			</div>
			
			</div>
			
			
			<div style="width:507px;height:268px; ">
			
			</div>
			
			</a>
			
			</div>
			<!--
				<object width="507" height="40" data="media/flash/zdjecie-dnia-new.swf">
					<param name="wmode" value="transparent">	
					
					<div>
						<a href="zdjecie-dnia,przeslij.html"><img  width="507" height="40" src="media/layout/badz-autorem.jpg"></a>
					</div>
					
				</object>-->
				
							<div>
			<a class="linkwrap" href="newsletter.html">
			<div class="iframe"></div>
			<iframe id="newsletter" scrolling="no" style="border:0px;" src="media/layout/html5/dodajzdjeciednia/index.html" width="507" height="40"></iframe></a></div>
			</div>	<div style="float:left;padding-top:10px;margin-left:20px;"><div id="banner-4">			
						
		<div class="ADinfo">
		REKLAMA
		</div>	<div>
						
					<a style="border:0px; display:block;" target="_blank" href="https://www.ucando.pl/ "> <img style="display:block; margin: 0 auto" src="images/banerkiJPG/2272.gif" width="200" height="308" alt="Tanie cz�ci do samochodu - Ucando.pl" / ></a>
					
						
					</div>
						</div>	</div></div>
				<div class="artykul-lista">
 				    <div class="dane"><span class="data">14.10, 10:20</span> z <span class="kategoria"><a href="/1,37,kategoria,informacje-lokalne.html" title="INFORMACJE LOKALNE">INFORMACJE LOKALNE</a> &raquo;</span> </div>
 					<h3  class="sredni"><a href="/37,63420,Bezplatne-warsztaty-z-edukacji-cyfrowej.html" title="Bezp�atne warsztaty z edukacji cyfrowej">Bezp�atne warsztaty z edukacji cyfrowej</a>  </h3> 
 					
					<div class="zdjecie  imgr">
						<div class="ramka"><a href="/37,63420,Bezplatne-warsztaty-z-edukacji-cyfrowej.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63420-Bezplatne-warsztaty-z.jpg"  alt="Bezp�atne warsztaty z edukacji cyfrowej" /></a>
						
						</div>
						
						
						<span></span>					
					</div>
 					<a href="/37,63420,Bezplatne-warsztaty-z-edukacji-cyfrowej.html" title="Bezp�atne warsztaty z edukacji cyfrowej" class="tresc"> Elbl�ska Liga Kobiet Polskich zaprasza na bezp�atne warsztaty z edukacji cyfrowej w ramach programu&nbsp;&bdquo;Akademia Tw�rczej Aktywno�ci&quot;&nbsp;dofinansowanego przez wojewod�&nbsp;warmi�sko - mazurskiego.

Zaj�cia dla os�b, kt�re chcia�yby podnie�� swoje umiej�tno�ci w zakresie obs�ugi komputera i medi�w spo�eczno�ciowych b�d� si� odbywa�y w dniach 20, 21, 22 pa�dziernika od godziny 15 w siedzibie Ligi Kobiet Polskich przy ul.... <span class="wiecej">przeczytaj <span>&raquo;</span></span></a> 
 					
  				</div><div class="cf"></div>
				<div class="artykul-lista">
 				    <div class="dane"><span class="data">14.10, 09:30</span> z <span class="kategoria"><a href="/1,37,kategoria,informacje-lokalne.html" title="INFORMACJE LOKALNE">INFORMACJE LOKALNE</a> &raquo;</span><span class="skomentarze"><a href="/37,63413,Zolnierze-kontroluja-przebywajacych-na-kwarantannie.html#kom">Komentarzy <b><span style="color:#e9000d">7</span></b></a></span> </div>
 					<h3  class="sredni"><a href="/37,63413,Zolnierze-kontroluja-przebywajacych-na-kwarantannie.html" title="�o�nierze kontroluj� przebywaj�cych na kwarantannie">�o�nierze kontroluj� przebywaj�cych na kwarantannie</a>  </h3> 
 					
					<div class="zdjecie  imgg">
						<div class="ramka"><a href="/37,63413,Zolnierze-kontroluja-przebywajacych-na-kwarantannie.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63413-Zolnierze-kontroluja.jpg?v=1602585155"  alt="�o�nierze kontroluj� przebywaj�cych na kwarantannie" /></a>
						<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:0px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">7</div>
						</div>
						
						
						<span></span>					
					</div>
 					<a href="/37,63413,Zolnierze-kontroluja-przebywajacych-na-kwarantannie.html" title="�o�nierze kontroluj� przebywaj�cych na kwarantannie" class="tresc"> Na wniosek komendanta wojew�dzkiego policji �o�nierze 4 Warmi�sko-Mazurskiej Brygady Obrony Terytorialnej wr�cili do udzielania wsparcia policji w zakresie prowadzenia kontroli kwarantanny. 

Ostatnie trzy miesi�ce szkolenia kryzysowego by�o ukierunkowane na doskonalenie kompetencji specjalistycznych oraz wsp�dzia�ania z innymi s�u�bami. Od kilku dni nasi �o�nierze wr�cili te� do wsparcia policji, kt�ra w porozumieniu ze s�u�bami sanitarnymi... <span class="wiecej">przeczytaj <span>&raquo;</span></span></a> 
 					
  				</div><div class="cf"></div>
				<div class="artykul-lista">
 				    <div class="dane"><span class="data">14.10, 08:30</span> z <span class="kategoria"><a href="/1,8,kategoria,polecane.html" title="POLECANE">POLECANE</a> &raquo;</span> <span class="galeria"><a href="/8,62575,Rozany-Zakatek-inwestycja-zakonczona-w-calosci-Zapraszamy-do-ogladania-mieszkan.html#gal">galeria zdj��</a></span> </div>
 					<h3  class="sredni"><a href="/8,62575,Rozany-Zakatek-inwestycja-zakonczona-w-calosci-Zapraszamy-do-ogladania-mieszkan.html" title="R�any Zak�tek - inwestycja zako�czona w ca�o�ci. Zapraszamy do ogl�dania mieszka�!">R�any Zak�tek - inwestycja zako�czona w ca�o�ci. Zapraszamy do ogl�dania mieszka�!</a>  </h3> 
 					
					<div class="zdjecie  imgr">
						<div class="ramka"><a href="/8,62575,Rozany-Zakatek-inwestycja-zakonczona-w-calosci-Zapraszamy-do-ogladania-mieszkan.html"><img src="images/artykuly-glowne/d/info.elblag.pl-62575-Rozany-Zakatek-drugiej.jpg?v=1597860935"  alt="R�any Zak�tek - inwestycja zako�czona w ca�o�ci. Zapraszamy do ogl�dania mieszka�!" /></a>
						
						</div>
						
						
						<span></span>					
					</div>
 					<a href="/8,62575,Rozany-Zakatek-inwestycja-zakonczona-w-calosci-Zapraszamy-do-ogladania-mieszkan.html" title="R�any Zak�tek - inwestycja zako�czona w ca�o�ci. Zapraszamy do ogl�dania mieszka�!" class="tresc"> 
Budowa inwestycji przy ul. R�anej 1B zosta�a uko�czona w&nbsp; ca�o�ci. Nowoczesny, trzypi�trowy budynek o podwy�szonym standardzie z 12 mieszkaniami czeka na lokator�w. Mamy sprzedane ju� ponad po�ow� mieszka�. Je�li jeste� zainteresowany kupnem, zapraszamy do ogl�dania wolnych mieszka�.

Czym wyr�nia si� &quot;R�anych Zak�tek&quot;? O tym w rozmowie z Arturem Pachnik z PPHU ED-AR.

&nbsp;


&nbsp;



&quot;R�any Zak�tek&quot;... <span class="wiecej">przeczytaj <span>&raquo;</span></span></a> 
 					
  				</div><div class="cf"></div>
				<div class="artykul-lista">
 				    <div class="dane"><span class="data">14.10, 07:00</span> z <span class="kategoria"><a href="/1,90,kategoria,koronawirus.html" title="KORONAWIRUS">KORONAWIRUS</a> &raquo;</span><span class="skomentarze"><a href="/90,63409,16-osob-w-Seminarium-zakazonych-koronawirusem-Seminarium-Duchowne-w-Elblagu-w-kwarantannie-aktualizacja-.html#kom">Komentarzy <b><span style="color:#e9000d">7</span></b></a></span> </div>
 					<h3  class="sredni"><a href="/90,63409,16-osob-w-Seminarium-zakazonych-koronawirusem-Seminarium-Duchowne-w-Elblagu-w-kwarantannie-aktualizacja-.html" title="16 os�b w Seminarium zaka�onych koronawirusem. Seminarium Duchowne w Elbl�gu w kwarantannie.  (aktualizacja) ">16 os�b w Seminarium zaka�onych koronawirusem. Seminarium Duchowne w Elbl�gu w kwarantannie.  (aktualizacja) </a>  </h3> 
 					
					<div class="zdjecie  imgg">
						<div class="ramka"><a href="/90,63409,16-osob-w-Seminarium-zakazonych-koronawirusem-Seminarium-Duchowne-w-Elblagu-w-kwarantannie-aktualizacja-.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63409-COVID-19-SEMINARIUM.jpg"  alt="16 os�b w Seminarium zaka�onych koronawirusem. Seminarium Duchowne w Elbl�gu w kwarantannie.  (aktualizacja) " /></a>
						<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:0px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">7</div>
						</div>
						
						
						<span></span>					
					</div>
 					<a href="/90,63409,16-osob-w-Seminarium-zakazonych-koronawirusem-Seminarium-Duchowne-w-Elblagu-w-kwarantannie-aktualizacja-.html" title="16 os�b w Seminarium zaka�onych koronawirusem. Seminarium Duchowne w Elbl�gu w kwarantannie.  (aktualizacja) " class="tresc"> U jednego z ksi�y Wy�szego Seminarim Duchownego Diecezji Elbl�skiej potwierdzono zaka�enie koronawirusem. - Ok. 35 os�b zwi�zanych z Seminarium zosta�o obj�tych kwarantann� - potwierdza Marek Jarosz, dyrektor Stacji Sanitarno-Epidemiologicznej w Elbl�gu.


M�ody ksi�dz zg�osi� si� do lekarza z objawami. Lekarz zleci� badanie, kt�re potwierdzi�o zaka�enie koronawirusem.

&nbsp;


Od momentu poznania wynik�w, czyli od 10 pa�dziernika,... <span class="wiecej">przeczytaj <span>&raquo;</span></span></a> 
 					
  				</div><div class="cf"></div>
				<div class="artykul-lista">
 				    <div class="dane"><span class="data">13.10, 18:00</span> z <span class="kategoria"><a href="/1,90,kategoria,koronawirus.html" title="KORONAWIRUS">KORONAWIRUS</a> &raquo;</span><span class="skomentarze"><a href="/90,63416,Policja-wyprowadzila-elblazanina-z-Urzedu-Miasta-Nie-chcial-zalozyc-maseczki.html#kom">Komentarzy <b><span style="color:#e9000d">36</span></b></a></span> </div>
 					<h3  class="sredni"><a href="/90,63416,Policja-wyprowadzila-elblazanina-z-Urzedu-Miasta-Nie-chcial-zalozyc-maseczki.html" title="Policja wyprowadzi�a elbl��anina z Urz�du Miasta. &quot;Nie chcia� za�o�y� maseczki&quot;">Policja wyprowadzi�a elbl��anina z Urz�du Miasta. &quot;Nie chcia� za�o�y� maseczki&quot;</a>  </h3> 
 					
					<div class="zdjecie  imgr">
						<div class="ramka"><a href="/90,63416,Policja-wyprowadzila-elblazanina-z-Urzedu-Miasta-Nie-chcial-zalozyc-maseczki.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63416-.jpg?v=1602595085"  alt="Policja wyprowadzi�a elbl��anina z Urz�du Miasta. &quot;Nie chcia� za�o�y� maseczki&quot;" /></a>
						<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:0px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">36</div>
						</div>
						
						
						<span></span>					
					</div>
 					<a href="/90,63416,Policja-wyprowadzila-elblazanina-z-Urzedu-Miasta-Nie-chcial-zalozyc-maseczki.html" title="Policja wyprowadzi�a elbl��anina z Urz�du Miasta. &amp;quot;Nie chcia� za�o�y� maseczki&amp;quot;" class="tresc"> Dzi�, 13 pa�dziernika, do Urz�du Miasta przyszed� m�czyzna. Chcia� za�atwi� spraw�, ale bez maseczki na twarzy. Na miejsce zosta�a wezwana policja i stra� miejska.


Ok. 40-letni m�czyzna wszed� do Urz�du Miasta i od razu zosta� poproszony przez pracownika UM o zas�oni�cie nosa i ust.


Powiedzia�, �e tego nie zrobi i koniec. Zawiadomili�my stra� miejsk�, bo m�czyzna nalega�, �e chce wej�� dalej do Urz�du, ale nie chcia� za�o�y�... <span class="wiecej">przeczytaj <span>&raquo;</span></span></a> 
 					
  				</div><div class="cf"></div>
				<div class="artykul-lista">
 				    <div class="dane"><span class="data">13.10, 16:00</span> z <span class="kategoria"><a href="/1,37,kategoria,informacje-lokalne.html" title="INFORMACJE LOKALNE">INFORMACJE LOKALNE</a> &raquo;</span><span class="skomentarze"><a href="/37,63415,Bierzmowania-zostana-przelozone-na-wiosne-Sa-wskazania-biskupa-elblaskiego-w-tejsprawie.html#kom">Komentarzy <b><span style="color:#e9000d">4</span></b></a></span> </div>
 					<h3  class="sredni"><a href="/37,63415,Bierzmowania-zostana-przelozone-na-wiosne-Sa-wskazania-biskupa-elblaskiego-w-tejsprawie.html" title="Bierzmowania zostan� prze�o�one na wiosn�. S� wskazania biskupa elbl�skiego w tej�sprawie">Bierzmowania zostan� prze�o�one na wiosn�. S� wskazania biskupa elbl�skiego w tej�sprawie</a>  </h3> 
 					
					<div class="zdjecie  imgg">
						<div class="ramka"><a href="/37,63415,Bierzmowania-zostana-przelozone-na-wiosne-Sa-wskazania-biskupa-elblaskiego-w-tejsprawie.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63415-Nowy-artykul.jpg"  alt="Bierzmowania zostan� prze�o�one na wiosn�. S� wskazania biskupa elbl�skiego w tej�sprawie" /></a>
						<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:0px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">4</div>
						</div>
						
						
						<span></span>					
					</div>
 					<a href="/37,63415,Bierzmowania-zostana-przelozone-na-wiosne-Sa-wskazania-biskupa-elblaskiego-w-tejsprawie.html" title="Bierzmowania zostan� prze�o�one na wiosn�. S� wskazania biskupa elbl�skiego w tej�sprawie" class="tresc"> Na stronie internetowej diecezji elbl�skiej opublikowano nowe wskazania biskupa elbl�skiego Jacka Jezierskiego. W�r�d nowych wytycznych jest to dotycz�ce&nbsp;bierzmowa�.



Wskazania Biskupa Elbl�skiego (10 pa�dziernika 2020):

1. W czasie obostrze� sanitarnych, zwi�zanych z jesienn� fal� epidemii, trzeba zawiesi� dzia�alno�� wsp�lnot i grup&nbsp;przyparafialnych. Wydawa�o si�, �e jesie� b�dzie �askawsza i dlatego zach�ca�em do spotka� i... <span class="wiecej">przeczytaj <span>&raquo;</span></span></a> 
 					
  				</div><div class="cf"></div>
				<div class="artykul-lista">
 				    <div class="dane"><span class="data">13.10, 15:30</span> z <span class="kategoria"><a href="/1,90,kategoria,koronawirus.html" title="KORONAWIRUS">KORONAWIRUS</a> &raquo;</span><span class="skomentarze"><a href="/90,63407,Nakaz-zaslaniania-nosa-i-ust-Jednego-dnia-w-Elblagu-wystawiono-21-mandatow.html#kom">Komentarzy <b><span style="color:#e9000d">9</span></b></a></span> </div>
 					<h3  class="sredni"><a href="/90,63407,Nakaz-zaslaniania-nosa-i-ust-Jednego-dnia-w-Elblagu-wystawiono-21-mandatow.html" title="Nakaz zas�aniania nosa i ust: Jednego dnia w Elblagu wystawiono 21 mandat�w">Nakaz zas�aniania nosa i ust: Jednego dnia w Elblagu wystawiono 21 mandat�w</a>  </h3> 
 					
					<div class="zdjecie  imgr">
						<div class="ramka"><a href="/90,63407,Nakaz-zaslaniania-nosa-i-ust-Jednego-dnia-w-Elblagu-wystawiono-21-mandatow.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63407-Elblazanie-dystans.jpg"  alt="Nakaz zas�aniania nosa i ust: Jednego dnia w Elblagu wystawiono 21 mandat�w" /></a>
						<div style="background: #b40000 url('media/layout/ile-komentarzy-bg.png') top center; position:absolute;bottom:0px;right:0px;display:block; width:32px; height:30px;color:#b40000; text-align:center;line-height:28px;font-size:13px; font-weight:bold;">9</div>
						</div>
						
						
						<span></span>					
					</div>
 					<a href="/90,63407,Nakaz-zaslaniania-nosa-i-ust-Jednego-dnia-w-Elblagu-wystawiono-21-mandatow.html" title="Nakaz zas�aniania nosa i ust: Jednego dnia w Elblagu wystawiono 21 mandat�w" class="tresc"> Ca�a Polska od soboty (10 pa�dziernika) znajduje si� w ��tej strefie, co oznacza, �e r�wnie� na ulicach nale�y zakrywa� nos i usta. Nowe zasady bezpiecze�stwa zwi�zane s� z walk� z koronawirusem. Za brak maseczki (b�d� przy�bicy) mo�na otrzyma� mandat do 500 z�.


Jedn� z nowych zasad wprowadzonych przez Rz�d jest zakrywanie nosa i ust w przestrzeni publicznej. Maseczk� lub przy�bic� nale�y nosi� ju� nie tylko w sklepach czy �rodkach... <span class="wiecej">przeczytaj <span>&raquo;</span></span></a> 
 					
  				</div><div class="cf"></div>
				
				<p class="pozostale-arty">
				
				<a style="float:left;" href="javascript:;" onclick="document.location.hash='top_art';">Przejd� do g��wnego artyku�u <span class="pozostale-n">( Kliknij tutaj )</span> <span>&raquo</span> </a> 
				
				<a href="/1,poprzednie,kategoria,archiwalne.html">Zobacz wszystkie artyku�y <span class="pozostale-n">( Kliknij tutaj )</span> <span>&raquo</span> </a> </p>
 				</div>
				<div class="cf"></div>
		
				</div>
				
				<div class="cf"></div>
				
				<div style="width:750px; margin: 0 auto; padding-bottom:20px;">
					
				<div class="ADinfo">
				REKLAMA
				</div>
				<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- 750x300 -->
				<ins class="adsbygoogle"
					 style="display:inline-block;width:750px;height:300px"
					 data-ad-client="ca-pub-7535364080769194"
					 data-ad-slot="7730076448"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
				
				</div>
				
				<div class="dol-prawa">
				
  				</div>
				
				
				<div class="belka">
				
				<div class="k-1" style="float:left;">

					<div class="mod-art-kategorie mod-art-kategorie_dol">
						<div class="mod-h3 mod-h3-dol">
							<h3>Kultura</h3>
						</div>	
						<img src="media/layout/h3-cien.png" alt="" width="190px;">	
 						<div id="kultura">
							
			<ul class="art-lista">
					<li class="pierwszy">
						<span class="data">Przedwczoraj 13:51</span>
 						<a href="/2,63400,Ogrody-Starosci-metaforycznie-pokazane-na-wystawie-w-Galerii-EL.html" class="pierwszy-tytul">&#8222;Ogrody Staro�ci&#8221; metaforycznie pokazane na wystawie...&nbsp;<span>&raquo;</span></a>
						
					<div class="zdjecie"><a href="/2,63400,Ogrody-Starosci-metaforycznie-pokazane-na-wystawie-w-Galerii-EL.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63400-8222Ogrody-Starosci8221-m.jpg"  alt="&#8222;Ogrody Staro�ci&#8221; metaforycznie pokazane na wystawie w Galerii EL" title="&#8222;Ogrody Staro�ci&#8221; metaforycznie pokazane na wystawie w Galerii EL" /></a></div>
						<p class="opis"><a href="/2,63400,Ogrody-Starosci-metaforycznie-pokazane-na-wystawie-w-Galerii-EL.html">Jesie� za oknami sk�ania do refleksji nad tematem cz�sto&nbsp;unikanym - jesieni�&nbsp;�ycia z mnogo�ci� jej aspekt�w,...</a>&nbsp;<a href="/2,63400,Ogrody-Starosci-metaforycznie-pokazane-na-wystawie-w-Galerii-EL.html" class="pokaz-wiecej">&raquo;</a></p>
					</li>
					<li class="pozostale">
						<a href="/12,63354,Scena-przy-stoliku-Elblaskie-trio-wScenariuszu-dla-trzech-aktorek.html">Scena przy stoliku. Elbl�skie trio w�&quot;Scenariuszu dla...&nbsp;<span>&raquo;</span></a>, <span class="data">Pi&#261;tek, 09.10.2020</span>
					</li>
					<li class="pozostale">
						<a href="/2,63374,Za-nami-koncert-elblazanki-Julii-Zulemy-Baczkiewicz-zobacz-zdjecia.html">Za nami koncert elbl��anki Julii &quot;Zulemy&quot; B�czkiewicz...&nbsp;<span>&raquo;</span></a>, <span class="data">Pi&#261;tek, 09.10.2020</span>
					</li>
			</ul><div class="cf"></div>
						</div>
						</div>
					</div>
				
				</div>

						<div class="k-1" style="float:left;">

										<div class="mod-art-kategorie mod-art-kategorie_dol">
						<div class="mod-h3 mod-h3-dol">
							<h3>Sport</h3>
						</div>	
						<img src="media/layout/h3-cien.png" alt="" width="190px;">	
 						<div id="sport">
							
			<ul class="art-lista">
					<li class="pierwszy">
						<span class="data">Wczoraj 14:30</span>
 						<a href="/37,63412,-Kolejne-sukcesy-Lidii-Czarneckiej.html" class="pierwszy-tytul"> Kolejne sukcesy Lidii Czarneckiej&nbsp;<span>&raquo;</span></a>
						
					<div class="zdjecie"><a href="/37,63412,-Kolejne-sukcesy-Lidii-Czarneckiej.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63412--Kolejne-sukcesy-Lidii-m.jpg"  alt=" Kolejne sukcesy Lidii Czarneckiej" title=" Kolejne sukcesy Lidii Czarneckiej" /></a></div>
						<p class="opis"><a href="/37,63412,-Kolejne-sukcesy-Lidii-Czarneckiej.html">Lidia Czarnecka utalentowana szachistka z Elbl�ga ma na swoim koncie kolejne sukcesy. Podczas IX Mi�dzynarodowego Turnieju...</a>&nbsp;<a href="/37,63412,-Kolejne-sukcesy-Lidii-Czarneckiej.html" class="pokaz-wiecej">&raquo;</a></p>
					</li>
					<li class="pozostale">
						<a href="/74,63388,Bardzo-wazne-3-punkty-Concordii-Sloniki-wygraly-w-Moragu-z-Huraganem-aktualizacja-GOLE-Z-MECZU.html">Bardzo wa�ne 3 punkty Concordii. S�oniki wygra�y w Mor�gu z...&nbsp;<span>&raquo;</span></a>, <span class="data">Niedziela, 11.10.2020</span>
					</li>
					<li class="pozostale">
						<a href="/3,63387,Olimpii-wygrywac-nie-kazano-Ciag-dalszy-dramatu-przy-Agrykola.html">Olimpii wygrywa� nie kazano. Ci�g dalszy dramatu przy Agrykola&nbsp;<span>&raquo;</span></a>, <span class="data">Sobota, 10.10.2020</span>
					</li>
			</ul><div class="cf"></div>
						</div>
					</div>
				
				</div>
				
				<div class="k-1" style="float:left;">

  					<div class="mod-art-kategorie mod-art-kategorie_dol">
						<div class="mod-h3 mod-h3-dol">
							<h3>Policja</h3>
						</div> 
						<img src="media/layout/h3-cien.png" alt="" width="190px;">	
						
			<ul class="art-lista">
					<li class="pierwszy">
						<span class="data">Dzisiaj 12:00</span>
 						<a href="/4,63428,Paslek-Smiertelne-zdarzenie-na-drodze-W513.html" class="pierwszy-tytul">Pas��k: �miertelne zdarzenie na drodze W513&nbsp;<span>&raquo;</span></a>
						
					<div class="zdjecie"><a href="/4,63428,Paslek-Smiertelne-zdarzenie-na-drodze-W513.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63428--m.jpg"  alt="Pas��k: �miertelne zdarzenie na drodze W513" title="Pas��k: �miertelne zdarzenie na drodze W513" /></a></div>
						<p class="opis"><a href="/4,63428,Paslek-Smiertelne-zdarzenie-na-drodze-W513.html">20-letni m�czyzna kieruj�cy bmw zgin�� na miejscu w zdarzeniu, kt�re mia�o miejsce dzi� oko�o godziny 7.00 na drodze w 513...</a>&nbsp;<a href="/4,63428,Paslek-Smiertelne-zdarzenie-na-drodze-W513.html" class="pokaz-wiecej">&raquo;</a></p>
					</li>
					<li class="pozostale">
						<a href="/90,63416,Policja-wyprowadzila-elblazanina-z-Urzedu-Miasta-Nie-chcial-zalozyc-maseczki.html">Policja wyprowadzi�a elbl��anina z Urz�du Miasta. &quot;Nie...&nbsp;<span>&raquo;</span></a>, <span class="data">Wtorek, 13.10.2020</span>
					</li>
					<li class="pozostale">
						<a href="/4,63406,Elblag-Kierujacy-popelnil-wykroczenie-ale-to-pasazer-zachowywal-sie-nerwowo-Jaki-byl-tego-powod.html">Elbl�g: Kieruj�cy pope�ni� wykroczenie, ale to pasa�er...&nbsp;<span>&raquo;</span></a>, <span class="data">Wtorek, 13.10.2020</span>
					</li>
			</ul><div class="cf"></div>				
					</div>
				
				</div>
				
				<div class="k-1" style="float:left;">

					<div class="mod-art-kategorie mod-art-kategorie_dol">
						<div class="mod-h3 mod-h3-dol">
							<h3>O&#346;wiata</h3>
						</div>	
						<img src="media/layout/h3-cien.png" alt="" width="190px;">	
 						<div id="oswiata">
							
			<ul class="art-lista">
					<li class="pierwszy">
						<span class="data">6 dni temu, Czwartek, 08.10.2020</span>
 						<a href="/90,63358,Dwie-nauczycielki-z-SP-16-w-Elblagu-zakazone-koronawirusem-Szkola-przejdzie-na-nauczanie-hybrydowe.html" class="pierwszy-tytul">Dwie nauczycielki z SP 16 w Elbl�gu zaka�one koronawirusem....&nbsp;<span>&raquo;</span></a>
						
					<div class="zdjecie"><a href="/90,63358,Dwie-nauczycielki-z-SP-16-w-Elblagu-zakazone-koronawirusem-Szkola-przejdzie-na-nauczanie-hybrydowe.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63358-Dwie-nauczycielki-z-SP-16-w-m.jpg"  alt="Dwie nauczycielki z SP 16 w Elbl�gu zaka�one koronawirusem. Szko�a przejdzie na nauczanie hybrydowe?" title="Dwie nauczycielki z SP 16 w Elbl�gu zaka�one koronawirusem. Szko�a przejdzie na nauczanie hybrydowe?" /></a></div>
						<p class="opis"><a href="/90,63358,Dwie-nauczycielki-z-SP-16-w-Elblagu-zakazone-koronawirusem-Szkola-przejdzie-na-nauczanie-hybrydowe.html">- Dzi� (8 pa�dziernika) otrzymali�my wynik tekstu na koronawirusa drugiej nauczycielki ze Szko�y Podstawowej nr 16. Wczoraj...</a>&nbsp;<a href="/90,63358,Dwie-nauczycielki-z-SP-16-w-Elblagu-zakazone-koronawirusem-Szkola-przejdzie-na-nauczanie-hybrydowe.html" class="pokaz-wiecej">&raquo;</a></p>
					</li>
					<li class="pozostale">
						<a href="/37,63289,Za-duzo-szkoly-w-domu-CzytelniczkaPrzez-pandemie-zapomnielismy-ze-uczniom-nalezy-sie-odpoczynek.html">Za du�o szko�y w domu? Czytelniczka:�&quot;Przez pandemi�...&nbsp;<span>&raquo;</span></a>, <span class="data">Wtorek, 06.10.2020</span>
					</li>
					<li class="pozostale">
						<a href="/17,63300,Dzialania-profilaktyczne-Swiec-Przykladem-w-elblaskich-szkolach-podstawowych.html">Dzia�ania profilaktyczne &#8222;�wie� Przyk�adem&quot; w...&nbsp;<span>&raquo;</span></a>, <span class="data">Pi&#261;tek, 02.10.2020</span>
					</li>
			</ul><div class="cf"></div>
						</div>
					</div>
				
				</div>
				
				<div class="k-1" style="float:left;">

					<div class="mod-art-kategorie mod-art-kategorie_dol">
						<div class="mod-h3 mod-h3-dol">
							<h3>Spo�eczne</h3>
						</div>	
						<img src="media/layout/h3-cien.png" alt="" width="190px;">	
						<div id="spoleczne">
							
			<ul class="art-lista">
					<li class="pierwszy">
						<span class="data">Dzisiaj 10:20</span>
 						<a href="/37,63420,Bezplatne-warsztaty-z-edukacji-cyfrowej.html" class="pierwszy-tytul">Bezp�atne warsztaty z edukacji cyfrowej&nbsp;<span>&raquo;</span></a>
						
					<div class="zdjecie"><a href="/37,63420,Bezplatne-warsztaty-z-edukacji-cyfrowej.html"><img src="images/artykuly-glowne/d/info.elblag.pl-63420-Bezplatne-warsztaty-z-m.jpg"  alt="Bezp�atne warsztaty z edukacji cyfrowej" title="Bezp�atne warsztaty z edukacji cyfrowej" /></a></div>
						<p class="opis"><a href="/37,63420,Bezplatne-warsztaty-z-edukacji-cyfrowej.html">Elbl�ska Liga Kobiet Polskich zaprasza na bezp�atne warsztaty z edukacji cyfrowej w ramach programu&nbsp;&bdquo;Akademia...</a>&nbsp;<a href="/37,63420,Bezplatne-warsztaty-z-edukacji-cyfrowej.html" class="pokaz-wiecej">&raquo;</a></p>
					</li>
					<li class="pozostale">
						<a href="/31,63401,Jak-nie-stracic-renty-rodzinnej-po-maturze.html">Jak nie straci� renty rodzinnej po maturze?&nbsp;<span>&raquo;</span></a>, <span class="data">Poniedzia�ek, 12.10.2020</span>
					</li>
					<li class="pozostale">
						<a href="/37,63350,A-drzewa-owocowe-sadzimy-w-pazdzierniku--zielona-akcja-w-Galerii-EL.html">A drzewa owocowe sadzimy w pa�dzierniku! &#8211; zielona akcja w...&nbsp;<span>&raquo;</span></a>, <span class="data">&#346;roda, 07.10.2020</span>
					</li>
			</ul><div class="cf"></div>
						</div>
					</div>
				
				</div>
				
				<div class="cf"></div>
				
				<div class="belka" style="margin-bottom:10px;">
				
				<div class="k-1" style="float:left;width:190px;text-align:center;margin: 0px 3px; "><div class="zobacz-pozostale"><a href="/1,2,kategoria,kultura.html">zobacz pozostale artyku�y</a> <span>&raquo;</span></div></div>
				<div class="k-1" style="float:left;width:190px;text-align:center;margin: 0px 3px; "><div class="zobacz-pozostale"><a href="/1,3,kategoria,wywiady.html">zobacz pozostale artyku�y</a> <span>&raquo;</span></div></div>
				<div class="k-1" style="float:left;width:190px;text-align:center;margin: 0px 3px; "><div class="zobacz-pozostale"><a href="/1,4,kategoria,policja.html">zobacz pozostale artyku�y</a> <span>&raquo;</span></div></div>
				<div class="k-1" style="float:left;width:190px;text-align:center;margin: 0px 3px; "><div class="zobacz-pozostale"><a href="/1,17,kategoria,oswiata.html">zobacz pozostale artyku�y</a> <span>&raquo;</span></div></div>
				<div class="k-1" style="float:left;width:190px;text-align:center;margin: 0px 3px; "><div class="zobacz-pozostale"><a href="/1,31,kategoria,spoleczne.html">zobacz pozostale artyku�y</a> <span>&raquo;</span></div></div>
				
				</div>
				
				<div>
				
				<div style="float:left; width:50%; max-width:470px">
				
<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Finfoelblagpl-195337163821264%2F&tabs=timeline&width=470&height=197&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=391654034215791" width="470" height="197" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>


				</div>
				
				<div style="float:right; width:50%">
				<div id="mod-galerie-elblaga">	
					<div class="mod-h3">
						<h3>Elbl&#261;g i okolice</h3>
					</div>
					<div class="galerie-elblaga">
						<a href="elblag-i-okolice.html"><div style="width:492px; margin:0 auto;text-align:center;"><div style="float:left; width:150px; "><img style="width:150px;height:100px;" src="images/galerie/glowne2/24379m.jpg" alt="Galerie zdj�� elbl�g i okolic"><span>Lata 60-70</span></div><div style="float:left; width:150px;  margin-left:18px; "><img style="width:150px;height:100px;" src="images/galerie/glowne2/24610m.jpg" alt="Galerie zdj�� elbl�g i okolic"><span>Prze�om wiek�w XIX - XX</span></div><div style="float:left; width:150px;  margin-left:18px; "><img style="width:150px;height:100px;" src="images/galerie/glowne2/24622m.jpg" alt="Galerie zdj�� elbl�g i okolic"><span>Prze�om wiek�w XIX - XX</span></div></div><div style="clear:both;"></div></a>
 						<p><a href="elblag-i-okolice.html">Zobacz aktualne zdj�cia Elbl�ga i okolic oraz zdj�cia archiwalne</a></p>
	  				</div>
 				</div>
				
				</div>
				
				</div>
				
			</div>
			<div class="cf"></div>
			
			<div class="modul-ogloszen-glowna">
				<!-- promowane -->
				<div class="o-dzial-promowane">
				
					<div class="o-dzial-tyt">
									
						<h3>Og�oszenia promowane</h3>
							
						<div class="cf"></div>
						
						<div class="o-linki">
						
							<span style="color: #545454">Je&#347;li chcesz zamie&#347;ci� og�oszenie promowane - w celu wykupienia odpowiedniego pakietu skontaktuj si� z nami osobi&#347;cie (ul. 12 Lutego 25) lub telefonicznie (55 236 19 16, 603 690 001), od poniedzia�ku do pi�tku w godz: od 8.00 do 16.00</span>
		
						</div>
						
					
						<div class="cf"></div>
					
					</div>			
					
					<div class="o-ostatnie">
								<div style="width:227px;  " class="ogloszenie-lista-male ">
									
									
									<div class="zdjecie">
										
											
												<a href="drobne/1,kategoria,9996,ogloszenie.html" title="Sprzedam domen� zulawy.com"><img style="border:0px;  width: 200 ; display: block;"  src="images/ogloszenia/glowne/42314m.jpg" alt="Sprzedam domen� zulawy.com" /></a>
											

									</div>
									<div style="clear:both;margin-top:20px; ">
										<h3><a style="line-height:21px;" href="drobne/1,kategoria,9996,ogloszenie.html" title="Sprzedam domen� zulawy.com">Sprzedam domen� zulawy.com</a></h3>
									</div>

								</div> 
								<div style="width:227px; margin-left:20px " class="ogloszenie-lista-male ">
									
									
									<div class="zdjecie">
										
											
												<a href="drobne/1,kategoria,9998,ogloszenie.html" title="Sprzedam domen� naplazy.pl"><img style="border:0px;  width: 200 ; display: block;"  src="images/ogloszenia/glowne/42313m.jpg" alt="Sprzedam domen� naplazy.pl" /></a>
											

									</div>
									<div style="clear:both;margin-top:20px; ">
										<h3><a style="line-height:21px;" href="drobne/1,kategoria,9998,ogloszenie.html" title="Sprzedam domen� naplazy.pl">Sprzedam domen� naplazy.pl</a></h3>
									</div>

								</div> 
								<div style="width:227px; margin-left:20px " class="ogloszenie-lista-male ">
									
									
									<div class="zdjecie">
										
											
												<a href="nieruchomosci/1,4,16950,ogloszenie.html" title="Pensjonat Boss w Elbl�gu"><img style="border:0px;  width: 200 ; display: block;"  src="images/ogloszenia/glowne/34718m.jpg" alt="Pensjonat Boss w Elbl�gu" /></a>
											

									</div>
									<div style="clear:both;margin-top:20px; ">
										<h3><a style="line-height:21px;" href="nieruchomosci/1,4,16950,ogloszenie.html" title="Pensjonat Boss w Elbl�gu">Pensjonat Boss w Elbl�gu</a></h3>
									</div>

								</div> 
								<div style="width:207px; border-right:none;; margin-left:20px " class="ogloszenie-lista-male ">
									
									
									<div class="zdjecie">
										
											
												<a href="drobne/1,Wybierz,8528,ogloszenie.html" title="Sprzedam domen� motoryzacyjn�  automoto.elblag.pl  "><img style="border:0px;  width: 200 ; display: block;"  src="images/ogloszenia/glowne/42373m.jpg" alt="Sprzedam domen� motoryzacyjn�  automoto.elblag.pl  " /></a>
											

									</div>
									<div style="clear:both;margin-top:20px; ">
										<h3><a style="line-height:21px;" href="drobne/1,Wybierz,8528,ogloszenie.html" title="Sprzedam domen� motoryzacyjn�  automoto.elblag.pl  ">Sprzedam domen� motoryzacyjn�  automoto.elblag.pl  </a></h3>
									</div>

								</div> 
						</div> 
					
					<div class="cf"></div>
					
				</div>
				
								</div>
				
                <div class="baner-dolny"></div>
				
				<div class="cf"></div>

                
                <div style="text-align:center; padding:0; margin:5px 0 0px 0">

				
				<a href="http://www.mosir.elblag.eu/" target="_blank"><img alt="Mosir" src="media/imgs/partnerzy/mosir.gif"></a>
				<a href="http://www.mierzeja.com/" target="_blank"><img alt="Mierzeja.com" src="media/imgs/partnerzy/mierzeja-logo.gif" /></a>
				<a href="http://www.zulawy.com/" target="_blank"><img alt="Nowy Dw�r Gda�ski, Stegna, Sztutowo, Ostaszewo, Krynica Morska" src="media/imgs/partnerzy/zulawy.jpg" /></a>
				<a href="http://www.pup-syriusz.pl/" target="_blank"><img alt="Syriusz" src="media/imgs/partnerzy/syriusz.gif" /></a>
				<a href="http://www.toyota-knedler.com.pl/" target="_blank"><img alt="Toyota" src="media/imgs/partnerzy/toyota.new.jpg" /></a>
				<a href="http://www.cmentarz.elblag.pl/" target="_blank"><img alt="D�bica" src="media/imgs/partnerzy/debica.gif" /></a>
				

				<!-- POCZ�TEK DRUGIEJ LINII -->
				<div style="margin-top:10px"></div>
				<!-- -->

				<a href="https://www.facebook.com/Zdrowy-Elbl�g-905169342885837" target="_blank"><img alt="Zdrowy Elbl�g" src="media/imgs/partnerzy/zdrowy-elblag.gif" /></a>			
				<a href="http://www.zadluzenia.com/" target="_blank"><img alt="ZADLUZENIA" src="media/imgs/partnerzy/zad1.jpg" /></a>
				<a href="http://www.iparts.pl/" target="_blank"><img alt="Najwiekszy sklep motoryzacyjny - iParts.pl" src="media/imgs/partnerzy/IPARTS.jpg" /></a>

                </div>
                
                                
  	</div>
		
	</div>

	</div>
		

    <div id="dol">
		
        <div class="wrap">
            	
            <div class="prawa-dol">    
				
				W�a�cicielem serwisu <b>info.elblag.pl</b> jest <a href="http://www.gabo.pl" target="_blank">Agencja Reklamowa GABO</a>
				<p>Copyright &copy; 2004-2020 Elbl�ski Dziennik Internetowy. Wszystkie prawa zastrze�one. </p>
					
            </div>  
				
           	<div class="srodek">
                               </div> 
				
                <div class="prawa">
              		<a class="redakcja" href="mailto:redakcja@info.elblag.pl">redakcja@info.elblag.pl</a> 
                    <a href="./?id=podstrony_&amp;pid=57">kontakt</a> | 
                    <a href="./?id=podstrony_&amp;pid=58">o serwisie</a> |
					<a href="./?id=podstrony_&amp;pid=96">logo</a> |
                    <a href="./?id=podstrony_&amp;pid=70">redakcja</a> |
                    <a href="./?id=podstrony_&amp;pid=59">POLITYKA PRYWATNO�CI</a> | 
                    <a href="./?id=podstrony_&amp;pid=60">wpisy bran�owe</a> | 
                    <a href="./?id=podstrony_&amp;pid=80">reklama</a> | 
                    <a href="./?id=podstrony_&amp;pid=71">og�oszenia regulamin</a> 
                </div> 
                            
                                
        </div>
		
	
    	<script async src="//get.optad360.io/sf/9033a167-f5b4-4bd0-8efa-58bc2bb76833/plugin.min.js"></script>
</body>
</html>
<hr/><b>2.5808100700378</b>