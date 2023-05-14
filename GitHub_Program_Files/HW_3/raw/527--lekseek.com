<!DOCTYPE html>
<html lang="pl">
    <head>
    <meta charset="UTF-8">
    <title>Medical Software House - LekSeek</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="http://lekseek.com/wp-content/themes/lekseek/images/favicon.ico">
    <link rel="stylesheet" href="http://lekseek.com/wp-content/themes/lekseek/css/main.css">
    <script type="text/javascript">
        var MAIN = {
            templateUrl: "http://lekseek.com/wp-content/themes/lekseek",
            siteUrl: "http://lekseek.com",
            myajax: 'http://lekseek.com/wp-admin/admin-ajax.php'
        }
    </script>
    <!-- js external -->
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/external/jquery-2.1.4.min.js"></script>
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/external/bootstrap.min.js"></script>
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/external/slick.min.js"></script>
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/external/swiper.min.js"></script>
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/external/tooltipster.bundle.min.js"></script>
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/external/isInViewport.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCtci9QEPDzU1Ira0WikvHQewxTUDPOh4"></script>
    <!-- js internal / common -->
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/internal/utils.js"></script>
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/internal/main.js"></script>
    <!-- js internal / page -->
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/internal/page/main.js"></script>
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/internal/page/offer.js"></script>
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/internal/page/aboutUs.js"></script>
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/internal/page/career.js"></script>
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/internal/page/contact.js"></script>
    <!-- js internal / block -->
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/internal/block/header.js"></script>
    <script src="http://lekseek.com/wp-content/themes/lekseek/js/internal/block/footer.js"></script>
</head>    <body class="body" onload="onLoad()">
        <div class="body__wrapper">
            <header class="header">
    <div class="container">
        <div class="row">
            <div class="u-tableContainer">
                <div class="header__logo u-tableContainer__col u-tableContainer__col--middle col-lg-2 col-md-2 col-sm-3 col-xs-12 u-col">
                    <a href="http://lekseek.com">
                        <img class="u-imgResponsive" src="http://lekseek.com/wp-content/themes/lekseek/images/lekseek_logo.png" alt="">
                    </a>
                    <div class="header__btnMenu js-header__btnMenu visible-xs">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>
                <div class="u-tableContainer__col u-tableContainer__col--middle col-lg-10 col-md-10 col-sm-9 col-xs-12 u-col">
                    <nav class="nav js-nav">
    <ul>
        <li data-scroll-from=""><a class="nav__link" data-href='[{"url":"/o-nas/"}]' href="http://lekseek.com/o-nas/" data-hover="O nas">O nas</a></li>
        <li data-scroll-from="">
            <div class="nav__dropdown">
                <a class="nav__link nav__link--dropdown" data-href='[{"url":"/oferta/"}]' href="http://lekseek.com/oferta/" data-hover="Oferta">Oferta</a>
                <ul class="nav__dropdown__cont">
                    <li><a class="nav__dropdown__cont__link" href="http://lekseek.com/oferta/?category=multichanel">Multichannel</a></li>
                    <li><a class="nav__dropdown__cont__link" href="http://lekseek.com/oferta/?category=it">Usługi IT</a></li>
                    <li><a class="nav__dropdown__cont__link" href="http://lekseek.com/oferta/?category=outsourcing">Outsourcing</a></li>
                    <li><a class="nav__dropdown__cont__link" href="http://lekseek.com/oferta/?category=sim">System informacji medycznych</a></li>
                </ul>
            </div>
        </li>
        <li data-scroll-from="">
            <div class="nav__dropdown">
                <a class="nav__link" data-href='[{"url":"/development-rd/"},{"url":"/analiza-ux-design/"},{"url":"/projektowanie-graficzne/"},{"url":"/kontent/"}]' href="http://lekseek.com/development-rd/" data-hover="Kompetencje">Kompetencje</a>
                <ul class="nav__dropdown__cont">
                    <li><a class="nav__dropdown__cont__link" href="http://lekseek.com/development-rd/">Development R&D</a></li>
                    <li><a class="nav__dropdown__cont__link" href="http://lekseek.com/analiza-ux-design/">Analiza & UX Design</a></li>
                    <li><a class="nav__dropdown__cont__link" href="http://lekseek.com/projektowanie-graficzne/">Projektowanie graficzne</a></li>
                    <li><a class="nav__dropdown__cont__link" href="http://lekseek.com/kontent/">Content marketing</a></li>
                </ul>
            </div>
        </li>
        <li data-scroll-from=""><a class="nav__link" data-href='[{"url":"/realizacje/"},{"url":"/kategorii_realizacje/aplikacje-mobilne/"},{"url":"/kategorii_realizacje/strony-www/"}]' href="http://lekseek.com/realizacje/" data-hover="Realizacje">Realizacje</a></li>
        <li data-scroll-from=""><a class="nav__link" data-href='[{"url":"/akademia-lekseek/"},{"url":"/akademia_artykul/"},{"url":"/tagi_akademia/"}]' href="http://lekseek.com/akademia-lekseek/" data-hover="Akademia">Akademia</a></li>
		<li data-scroll-from=""><a class="nav__link" data-href='[{"url":"/kariera/"}]' href="http://lekseek.com/kariera/" data-hover="Kariera">Kariera</a></li>
		<li data-scroll-from=""><a class="nav__link" data-href='[{"url":"/klub-lekseek/"}]' href="http://lekseek.com/klub-lekseek/" data-hover="Klub">Klub</a></li>
        <li data-scroll-from=""><a class="nav__link" data-href='[{"url":"/kontakt/"}]' href="http://lekseek.com/kontakt/" data-hover="Kontakt">Kontakt</a></li>
        <!-- <li data-scroll-from=""><a href="">Blog</a></li> -->
    </ul>
</nav>
<script>
    jQuery(document).ready(function(){
        jQuery( ".nav .nav__link" ).each(function( i, linkTag ) {
            
                jQuery(linkTag).data('href').forEach(function(objUrls, i) {
                    $.each(objUrls, function(index, value) {
                        if(("http://lekseek.com/").indexOf("http://lekseek.com" + value) !== -1 && "http://lekseek.com/" !== "http://lekseek.com/")
                            jQuery(linkTag).addClass('nav__link--active');
                    }); 
                });

                        });
    });
</script>                </div>
            </div>
        </div>
    </div>
</header>            <div class="main">
                <section class="main__who">
                    <div class="main__slider">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-10 col-lg-offset-1">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">
                                                <a href="http://lekseek.com/o-nas">
                                                    <div class="u-tableContainer">
                                                        <div class="u-tableContainer__col u-tableContainer__col--middle u-col col-lg-5 col-xs-12">
                                                            <h3 class="main__slider__title u-color-blueA ">Inspiruje nas medycyna</h3>
                                                            <p class="main__text u-color-blueDarkA">
                                                                Poznaj nasz innowacyjny Medical Software House. Tworzymy nowoczesne oprogramowanie medyczne, wprowadzając tym samym polską służbę zdrowia w erę cyfrową. Zaufało nam już ponad 86 tysięcy lekarzy i 16 tysięcy farmaceutów – poznaj produkty LekSeek Polska, a dowiesz się dlaczego.
                                                            </p>
                                                        </div>
                                                        <div class="u-tableContainer__col u-tableContainer__col--middle u-col col-lg-7 col-xs-12">
                                                            <div class="main__slider__anim1">
                                                                <div class="main__slider__anim1__a"></div>
                                                                <div class="main__slider__anim1__b"></div>
                                                                <div class="main__slider__anim1__c"></div>
                                                                <img style="opacity: 0" src="http://lekseek.com/wp-content/themes/lekseek/images/illustrations/figure_1.png" alt="" class="pull-right u-imgResponsive">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="swiper-slide">
                                                <a href="http://lekseek.com/oferta/?category=it&sub=system">
                                                    <div class="u-tableContainer">
                                                        <div class="u-tableContainer__col u-tableContainer__col--middle u-col col-lg-5 col-xs-12">
                                                            <h3 class="main__slider__title u-color-blueA ">Programy do zarządzania placówką medyczną</h3>
                                                            <p class="main__text u-color-blueDarkA">
                                                                Zaawansowane technologicznie, a przy tym łatwe w obsłudze. Spełniają wszystkie standardy obowiązujące w służbie zdrowia i gwarantują bezpieczeństwo danych. Korzystając z nich, lekarz pracuje szybko i wygodnie, oszczędzając nawet do 20% czasu dziennie.
                                                            </p>
                                                        </div>
                                                        <div class="u-tableContainer__col u-tableContainer__col--middle u-col col-lg-7 col-xs-12">
                                                            <img src="http://lekseek.com/wp-content/themes/lekseek/images/illustrations/illustrations_67.png" alt="" class="pull-right u-imgResponsive">
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="swiper-slide">
                                                <a href="http://lekseek.com/akademia-lekseek">
                                                    <div class="u-tableContainer">
                                                        <div class="u-tableContainer__col u-tableContainer__col--middle u-col col-lg-5 col-xs-12">
                                                            <h3 class="main__slider__title u-color-blueA ">
                                                            Newsletter
                                                   
                                                            od ekspertów
                                                            
                                                            dla profesjonalistów
                                                            </h3>
                                                            <p class="main__text u-color-blueDarkA">
                                                                Internetowa akademia marketingu. O kampaniach typu Multichannel wiemy wszystko i chętnie dzielimy się naszą wiedzą. W cyklicznym newsletterze podpowiadamy między innymi, jak wykreować markę, zwiększyć sprzedaż i umocnić wizerunek firmy.
                                                            </p>
                                                        </div>
                                                        <div class="u-tableContainer__col u-tableContainer__col--middle u-col col-lg-7 col-xs-12 u-textCenter">
                                                            <img src="http://lekseek.com/wp-content/themes/lekseek/images/illustrations/illustrations_68.png" alt="" class="u-imgResponsive" style="max-height: 215px;">
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="swiper-pagination"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2">
                                <div class="row">
                                    <a href="http://lekseek.com/projekty-unijne" class="main__who__linkUnia">
                                        <div class="u-tableContainer">
                                            <div class="u-tableContainer__col u-tableContainer__col--middle u-col col-lg-6 col-xs-12">
                                                <img src="http://lekseek.com/wp-content/themes/lekseek/images/illustrations/illustrations_63.png" alt="" class="u-imgResponsive">
                                            </div>
                                            <div class="u-tableContainer__col u-tableContainer__col--middle u-col col-lg-6 col-xs-12">
                                                <p class="u-color-blueB u-mB0">
                                                    Innowacyjny moduł systemu analizy danych medycznych i leków dedykowany dla sektora medycznego
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="main__change">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1">
                                <div class="row">
                                    <div class="main__tableCont u-tableContainer">
                                        <div class="main__tableCol u-col col-lg-5 col-sm-7 col-xs-12">
                                            <h3 class="main__titleBig u-color-white ">Z nami <br> medycyna <br> się zmienia</h3>
                                            <p class="main__text u-color-white">
                                                Cyfryzacja zmienia polską służbę zdrowia, a my mamy w tym swój udział. Ułatwiamy dostęp do informacji medycznych, tworzymy narzędzia, które usprawniają pracę lekarzy i farmaceutów, a pacjentom pomagają w kuracji. Stawiamy na e-zdrowie!
                                            </p>
                                            <a href="http://lekseek.com/realizacje" class="ui-btn-primaryOn u-mT20">Zobacz</a>
                                        </div>
                                        <div class="main__tableCol u-col col-lg-7 col-sm-5 col-xs-12 hidden-xs"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="main__outsourcing">
                    <div class="main__outsourcing__bgA"></div>
                    <div class="container">
                        <div class="row">
                            <div class="main__tableCont u-tableContainer">
                                <div class="main__tableCol u-col col-lg-5 col-sm-4 hidden-xs"></div>
                                <div class="main__tableCol u-col col-lg-6 col-sm-8">
                                    <div class="main__outsourcing__cont">
                                        <h3 class="main__titleBig u-color-blueA">OUTSOURCING USŁUG IT</h3>
                                        <p class="main__text">
                                            W Twojej firmie nie ma specjalistów od nowych technologii? Zdaj się na nas i powierz nam swój projekt! Zrealizują go najlepsi programiści, którzy znają nie tylko najnowsze narzędzia pracy z obszaru IT, ale także potrzeby rynku usług medycznych w tym obszarze.
                                        </p>
                                        <a href="http://lekseek.com/oferta/?category=it" class="ui-btn-primary u-mT20">Zobacz</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="main__club">
                    <div class="container">
                        <div class="row">
                            <div class="main__tableCont u-tableContainer">
                                <div class="main__tableCol u-col col-lg-5 col-sm-8">
                                    <div class="main__club__cont">
                                        <h3 class="main__titleBig u-color-white ">Multichannel</h3>
                                        <p class="main__text u-color-white">
                                            Wiemy, jakie kanały łączyć, aby uzyskać jak najlepszy efekt. Dotarcie do klientów i prezentacja produktów dzięki nam są proste i skuteczne.
                                            Chcesz wykreować markę, zwiększyć sprzedaż,
                                            umocnić wizerunek Twojej firmy - zróbmy to razem!
                                        </p>
                                        <a href="http://lekseek.com/oferta/?category=multichanel" class="ui-btn-primaryOn u-mT20">Zobacz</a>
                                    </div>
                                </div>
                                <div class="main__tableCol u-col col-lg-7 col-sm-4 hidden-xs"></div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- footer -->
        <section class="footer">
	<div class="footer__A">
		<div class="container">
			<div class="row">
				<div class="footer__over u-tableContainer">
					<div class="u-col col-md-4 col-sm-4"></div>
					<div class="u-col col-md-4 col-sm-4">
						<h3 class="footer__title">Kontakt</h3>
						<p class="footer__text u-m0">e-mail: <a href="mailto:biuro@lekseek.com" class="footer__text">biuro@lekseek.com</a></p>
						<a class="footer__text u-block u-color-white u-mB10" href="tel:+48223500006">tel. +48 22 350 00 06</a>

						<h3 class="footer__title u-mT30">Dołącz do nas</h3>
						<ul class="footer__socials">
							<li><a href="https://www.youtube.com/channel/UCrYNVHMFDKF-buJTMoob2Xw" target="_blank"><span class="footer__social-icon icon-youtube-play"></span></a></li>
							<li><a href="https://twitter.com/lekseek" target="_blank"><span class="footer__social-icon icon-twitter"></span></a></li>
							<li><a href="https://www.facebook.com/Lekseek" target="_blank"><span class="footer__social-icon footer__social-icon--last  icon-facebook"></span></a></li>
						</ul>
						<a href="http://lekseek.com/projekty-unijne" class="footer__link u-color-white u-w700">Projekty unijne</a>
						<div class="u-mT5">
							<a href="http://lekseek.com/wp-content/uploads/Polityka-Bezpieczenstwa_LekSeek_sp_SPK.pdf" target="_blank" class="footer__link u-color-white u-w700">Polityka Bezpieczenstwa LekSeek</a>
						</div>
					</div>
					<div class="u-col col-md-4 col-sm-4">
						<h3 class="footer__title">Dane firmowe</h3>
						<p class="footer__text u-w700">LekSeek Polska Sp. z o.o. Sp. k.</p>
						<p class="footer__text">ul. Puławska 465; 02-844 Warszawa</p>
						<div class="u-mT30">
							<h3 class="footer__title u-vcenter u-inline u-mR10">Nasz katalog</h3>
							<a style="min-width: 60px;" href="http://lekseek.com/wp-content/uploads/Prezentacja-LekSeek-2018.pdf" target="_blank" class="ui-btn-primary">Pobierz</a>
						</div>
						<div class="u-mT10">
							<a href="http://lekseek.com/wp-content/uploads/instrukcja_zarzadzania.pdf" target="_blank" class="footer__link u-color-white u-w700">Instrukcja Zarządząnia Systemem Informatycznym</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer__B">
		<div class="container">
			<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-7">
					<h3 class="footer__title" style="margin-top: 10px !important;">Zapisz się do Newslettera Akademia LekSeek</h3>
					<div class="footer__newsletter">
						<div class="formNewsletter">
	<form class="formNewsletter__form" onsubmit="return sendNewsletter(this, $('.formNewsletter__input'), $('.formNewsletter__form'), $('.formNewsletter__success'), $('.formNewsletter__error'))">
		<input class="formNewsletter__input" name="email" type="text" placeholder="Wpisz adres e-mail...">
		<button class="formNewsletter__button" type="submit" value="">Zapisz się</button>
	</form>
	<div class="formNewsletter__success"></div>
	<div class="formNewsletter__error"></div>
</div>					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer__C"></div>
</section>    </body>
</html>