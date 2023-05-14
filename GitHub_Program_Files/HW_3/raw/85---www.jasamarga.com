

<!DOCTYPE html>

<html xmlns="https://www.w3.org/1999/xhtml">
<head><title>
	PT Jasa Marga
</title>
  
    <!---<link href="/Content/css/jm.css" type="text/css" rel="stylesheet" />-->
    <meta charset="utf-8" /><meta name="viewport" content="width=device-width, initial-scale=1" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!--[if lte IE 8]><script src="/Content/scripts/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="../../Content/css/main.css" />
    <!--[if lte IE 8]><link rel="stylesheet" href="/Content/css/ie8.css" /><![endif]-->

    <!-- Important Owl stylesheet -->
    <link rel="stylesheet" href="/content/owl-carousel/owl.carousel.css" /><link rel="stylesheet" type="text/css" href="/content/owl-carousel/owl.theme.default.css" />

    <!--favicon-->
    <link rel="shortcut icon" type="image/x-icon" sizes="16x16 24x24 32x32 48x48 64x64" href="../../Content/images/Icon/favicon.ico" />


    
    <script>
        $(document).keypress(function (e) {
            if (e.which == 13) {
                e.preventDefault();
                var searchValue = document.getElementById("searchContent").value;
                if (window.location.href.indexOf("/en/") > -1) {
                    window.location = "https://www.jasamarga.com/public/en/searchresult.aspx?search=" + searchValue;
                }
                else if (window.location.href.indexOf("/id/") > -1) {
                    window.location = "https://www.jasamarga.com/public/id/searchresult.aspx?search=" + searchValue;
                }
                return false;
            }
        });
    </script>
    

 <style>
a {
  -webkit-transition: color 0.2s ease-out;
  transition: color 0.2s ease-out;
  text-decoration: none;
  color: #22313f;
}

a:hover,
a:focus {
  text-decoration: underline;
  outline: none;
  color: #1e8bc3;
}

a.link-unstyled {
  -webkit-transition: none;
  transition: none;
  color: inherit;
}

a.link-unstyled:hover,
a.link-unstyled:focus {
  color: inherit;
  text-decoration: none;
}

ul {
  list-style: none;
}

li {
  display: inline;
}

.footer__wrapper {
  display: -webkit-box;
  display: flex;
  -webkit-box-pack: justify;
  justify-content: space-between;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  flex-direction: column;
  padding: 3em 1em;
}
@media (min-width: 768px) {
  .footer__wrapper {
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    flex-direction: row;
  }
}

ul.footer__social-media {
  padding: 0;
}

.footer__text {
  text-transform: lowercase;
  font-size: 0.8em;
}



.footer__right {
  margin: 2em auto 0 auto;
}
@media (min-width: 768px) {
  .footer__right {
    margin: auto 0;
  }
}

p.footer__text a {
  text-decoration: underline;
}

.icon {
  width: 1rem;
  height: 1rem;
  fill: currentColor;
  vertical-align: middle;
}

.sm-item {
  display: inline-block;
  height: 38px;
  width: 38px;
  text-align: center;
  line-height: 38px;
  background: #004689;
  color: #ececec;
  border-radius: 50%;
}

.sm-item:hover,
.sm-item:focus {
  opacity: 0.6;
}

.footer__logo:hover,
.footer__logo:focus,
.header__logo:hover,
.header__logo:focus {
  opacity: 0.6;
}
</style>
</head>
<body>
    <div id="page-wrapper">
        <form method="post" action="./home.aspx" id="form1">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />

<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="B4B5E072" />
            <div>
                <!--header-->
                <div id="header-wrapper">
                    <header id="header" class="container">
                        <!-- Logo -->
                        <span id="lblLogo"><div id="logo">
                <h1><a href="/public/id/home.aspx">
                <img src="/Content/images/logoJM.fw.png" width="220" height="53"  alt=""/>
                </a></h1>
            </div></span>
				<div id="logo">
  					<a href="https://www.jasamarga.com/public/id/home.aspx">
					<h1><img src="/Content/images/logo.png" width="80" height="0"  alt=""/></h1></a>
				</div>
                        <!--Nav-->
                        <span id="menuHeader"><nav id="nav"><ul class="langsearch"><li> <a href="/public/id/home.aspx">Bahasa Indonesia</a></li><li> <a href="/public/en/home.aspx">English</a> </li><li> <input type="text" class="text srch" placeholder="Search" ID="searchContent" name="Search"/></ul><br/><ul>
<li class="current_page_item"><a href="#">INFO LAYANAN</a><ul>
<li><a href="/public/id/infolayanan/pemandutol.aspx">PEMANDU TOL</a></li><li><a href="/public/id/infolayanan/infolayanan.aspx">INFORMASI & LAYANAN JALAN TOL</a></li><li><a href="/public/id/infolayanan/ruastol.aspx">RUAS TOL</a></li><li><a href="https://www.jasamarga.com/public/id/infolayanan/RestArea.aspx">INFORMASI REST AREA</a></li></ul>/</li><li><a href="#">HUBUNGAN INVESTOR</a><ul>
<li><a href="https://investor-id.jasamarga.com/">BERANDA IR</a></li><li><a href="#">INFORMASI PERSEROAN</a><ul>
<li><a href="https://investor-id.jasamarga.com/report_of_the_board_of_commissioners.html">LAPORAN DEWAN KOMISARIS</a></li><li><a href="https://investor-id.jasamarga.com/report_of_the_board_of_directors.html">LAPORAN DIREKSI</a></li><li><a href="https://investor-id.jasamarga.com/prospectus.html">PROSPEKTUS</a></li><li><a href="https://investor-id.jasamarga.com/affiliate_relations.html">HUBUNGAN AFILIASI</a></li><li><a href="https://investor-id.jasamarga.com/supporting_institutions.html">LEMBAGA DAN PROFESI PENUNJANG</a></li></ul></li><li><a href="#">INFORMASI FINANSIAL</a><ul>
<li><a href="https://investor-id.jasamarga.com/financials.html">LAPORAN KEUANGAN</a></li><li><a href="https://investor-id.jasamarga.com/financial_highlights.html">IKHTISAR KEUANGAN</a></li><li><a href="https://investor-id.jasamarga.com/corporate_presentations.html">PRESENTASI PERUSAHAAN</a></li><li><a href="https://investor-id.jasamarga.com/ar.html">LAPORAN TAHUNAN</a></li><li><a href="https://investor-id.jasamarga.com/sustainability_reports.html">LAPORAN KEBERLANJUTAN</a></li><li><a href="https://investor-id.jasamarga.com/corporate_calendar.html">KALENDER PERSEROAN</a></li></ul></li><li><a href="">KETERBUKAAN</a><ul>
<li><a href="https://investor-id.jasamarga.com/newsroom.html">PENGUMUMAN EMITEN</a></li><li><a href="https://investor-id.jasamarga.com/jm_update.html">JASA MARGA UPDATE</a></li><li><a href="https://investor-id.jasamarga.com/gms.html">RAPAT UMUM PEMEGANG SAHAM</a></li></ul></li><li><a href="#">INFORMASI SAHAM/OBLIGASI</a><ul>
<li><a href="https://investor-id.jasamarga.com/stock_chart_interactive.html">GRAFIK INTERAKTIF</a></li><li><a href="https://investor-id.jasamarga.com/historical_price.html">HARGA HISTORIS</a></li><li><a href="https://investor-id.jasamarga.com/stock_fundamentals.html">FUNDAMENTAL SAHAM</a></li><li><a href="https://investor-id.jasamarga.com/shareholdings.html">STRUKTUR PEMEGANG SAHAM</a></li><li><a href="https://investor-id.jasamarga.com/dividend.html">INFORMASI DIVIDEN</a></li><li><a href="https://investor-id.jasamarga.com/bond_info.html">INFORMASI OBLIGASI</a></li><li><a href="https://investor-id.jasamarga.com/credit_rating.html?lang=id">PEMERINGKATAN PERUSAHAAN</a></li></ul></li><li><a href="#">PERMINTAAN INFORMASI</a><ul>
<li><a href="https://investor-id.jasamarga.com/email_alerts.html">PEMBERITAHUAN EMAIL</a></li><li><a href="https://investor-id.jasamarga.com/analyst_coverage.html">DAFTAR ANALIS</a></li><li><a href="https://investor-id.jasamarga.com/download.html">UNDUH DOKUMEN</a></li><li><a href="https://investor-id.jasamarga.com/ir_contact.html">KONTAK IR</a></li></ul></li></ul>/</li><li><a href="#">INFO PERUSAHAAN</a><ul>
<li><a href="#">PROFIL PERUSAHAAN</a><ul>
<li><a href="/public/id/infoperusahaan/ProfilPerusahaan/Overview.aspx">SEKILAS JASA MARGA</a></li><li><a href="/public/id/infoperusahaan/ProfilPerusahaan/VisiMisi.aspx">VISI MISI</a></li><li><a href="/public/id/infoperusahaan/ProfilPerusahaan/TataNilai.aspx">TATA NILAI</a></li><li><a href="https://jasamarga.com/public/id/infoperusahaan/ProfilPerusahaan/StrukturOrganisasi.aspx">STRUKTUR ORGANISASI</a></li><li><a href="/public/id/infoperusahaan/ProfilPerusahaan/BOC.aspx">DEWAN KOMISARIS</a></li><li><a href="/public/id/infoperusahaan/ProfilPerusahaan/BOD.aspx">DIREKSI</a></li><li><a href="/public/id/infoperusahaan/ProfilPerusahaan/CorporateSecretary.aspx">CORPORATE SECRETARY</a></li><li><a href="/public/id/infoperusahaan/ProfilPerusahaan/Auditor.aspx">AUDITOR</a></li><li><a href="">KOMITE - KOMITE</a><ul>
<li><a href="https://jasamarga.com/public/id/infoperusahaan/ProfilPerusahaan/komite.aspx">KOMITE AUDIT</a></li></ul></li><li><a href="/public/id/infoperusahaan/ProfilPerusahaan/Penghargaan.aspx">PENGHARGAAN</a></li></ul></li><li><a href="#">BISNIS JASA MARGA</a><ul>
<li><a href="https://jasamarga.com/public/id/infoperusahaan/Bisnis/JasamargaTollroadOprator.aspx">JASAMARGA TOLLROAD OPERATOR</a></li><li><a href="https://jasamarga.com/public/id/infoperusahaan/Bisnis/JasamargaTollroadMaintenance.aspx">JASAMARGA TOLLROAD MAINTENANCE</a></li><li><a href="https://jasamarga.com/public/id/infoperusahaan/Bisnis/JasamargaRelatedBusiness.aspx">JASAMARGA RELATED BUSINESS</a></li></ul></li><li><a href="#">TATA KELOLA</a><ul>
<li><a href="/public/id/infoperusahaan/GCG/AseanScorecard.aspx">CROSS REF. ASEAN SCORECARD</a></li><li><a href="/public/id/infoperusahaan/GCG/dokumentatakelola.aspx">DOKUMEN TATA KELOLA</a></li><li><a href="/public/id/infoperusahaan/GCG/JasaMargaAmanah.aspx">WHISTLEBLOWING SYSTEM (WBS)</a></li><li><a href="/public/id/infoperusahaan/GCG/KebijakanMutu.aspx">KEBIJAKAN MUTU</a></li><li><a href="/public/id/infoperusahaan/GCG/K3.aspx">K3</a></li><li><a href="/public/id/infoperusahaan/GCG/EtikaUsaha.aspx">ETIKA USAHA</a></li><li><a href="/public/id/infoperusahaan/GCG/laporangcg.aspx">LAPORAN GCG</a></li></ul></li></ul>/</li><li><a href="/public/id/aktivitas/aktivitas.aspx">AKTIVITAS</a><ul>
<li><a href="https://jasamarga.com/public/id/aktivitas/JMFightsCovid19.aspx">JASA MARGA FIGHTS COVID-19</a></li><li><a href="/public/id/aktivitas/aktivitas.aspx?c=66">BERITA</a></li><li><a href="/public/id/aktivitas/aktivitas.aspx?c=71">TENDER</a></li><li><a href="/public/id/aktivitas/aktivitas.aspx?c=72">RELEASE</a></li><li><a href="/public/id/aktivitas/aktivitas.aspx?c=70">PENGUMUMAN</a></li></ul>/</li><li><a href="#">CSR</a><ul>
<li><a href="/public/id/csr/pkbl.aspx">PENYALURAN KEMITRAAN</a></li><li><a href="/public/id/csr/lingkunganhidup.aspx">PENYALURAN BINA LINGKUNGAN</a></li><li><a href="/public/id/csr/laporan.aspx">LAPORAN CSR</a></li><li><a href="/public/id/csr/praktikCSR.aspx">PRAKTIK CSR JASA MARGA</a></li></ul>/</li><li><a href="#">INFORMASI PUBLIK </a><ul>
<li><a href="https://www.jasamarga.com/public/id/KeterbukaanInformasiPublik/informasiberkala.aspx">INFORMASI BERKALA</a></li><li><a href="https://www.jasamarga.com/public/id/KeterbukaanInformasiPublik/informasisertamerta.aspx">INFORMASI SERTA MERTA</a></li><li><a href="https://www.jasamarga.com/public/id/KeterbukaanInformasiPublik/Informasitersediaptiapsaat.aspx">INFORMASI TERSEDIA SETIAP SAAT</a></li></ul>/</li><li><a href="/public/id/contactus.aspx">KONTAK KAMI</a>/</li></ul></nav></span>
                        <!--- end Nav-->
                    </header>
                </div>
                <!---end header--->
            </div>

            
    <div id="frontbanner-wrapper">
        <div id="frontbanner-carousel" class="owl-carousel1">
            <div class="frontbanner" style="/*background: #5E5E5E url('/content/images/banner1.jpg')*/ no-repeat scroll center center / cover;">
                <img class="responsive-img" style="object-fit:cover; overflow:hidden; width="100%"; height="100%";  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20pusat%20no.%20132.jpg" style="BORDER: 0px solid; ">
                <div class="frontbannertext">
                    <h1>
                        <span id="banner_itemTitle1"><a href="/public/id/aktivitas/detail.aspx?title=Jasa Marga Kantongi Rp566 Miliar dari Surat Berharga Komersial">Jasa Marga Kantongi Rp566 Miliar dari Surat Berharga Komersial</a></span>
                    </h1>
                    <p>
                        <span id="banner_itemContent1">PT Jasa Marga (Persero) Tbk berhasil menerbitkan Surat Berharga Komersial (SBK) Rp566 miliar. SBK atau Commercial Paper merupakan instrumen pasar uang untuk Korporasi Non-Bank berbentuk surat sanggup (promissory note) dan berjangka waktu sampai dengan sat</span>
                    </p>
                </div>
            </div>
            <div class="frontbanner" style="/*background: #5E5E5E url('/content/images/banner1.jpg')*/ no-repeat scroll center center / cover;">
                <img class="responsive-img" style="object-fit:cover; overflow:hidden; width="100%"; height="100%";  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20metropolitan%20toll%20road%20no.%2080.jpg" style="BORDER: 0px solid; ">
                <div class="frontbannertext">
                    <h1>
                        <span id="banner_itemTitle2"><a href="/public/id/aktivitas/detail.aspx?title=Pemeliharaan Periodik di Simpang Susun Tomang Ramp B (Arah Cawang) Kembali di Lanjutkan, Jasa Marga Lakukan Pengalihan Lalu Lintas">Pemeliharaan Periodik di Simpang Susun Tomang Ramp B (Arah Cawang) Kembali di Lanjutkan, Jasa Marga Lakukan Pengalihan Lalu Lintas</a></span>
                    </h1>
                    <p>
                        <span id="banner_itemContent2">Minggu Kedua Oktober 2020, Jasamarga Metropolitan Tollroad selaku pengelola Jalan Tol Dalam Kota (Cawang – Tomang – Pluit), melaksanakan kembali pekerjaan pemeliharaan periodik (Scrapping Filling Overlay) dan Rekonstruksi Perkerasan di Ruas Jalan Tol Dala</span>
                    </p>
                </div>
            </div>
            <div class="frontbanner" style="/*background: #5E5E5E url('/content/images/banner1.jpg')*/ no-repeat scroll center center / cover;">
                <img class="responsive-img" style="object-fit:cover; overflow:hidden; width="100%"; height="100%";  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20metropolitan%20toll%20road%20no.%2079.jpg" style="BORDER: 0px solid; ">
                <div class="frontbannertext">
                    <h1>
                        <span id="banner_itemTitle3"><a href="/public/id/aktivitas/detail.aspx?title=Pengguna Jalan Agar Berhati-hati, Minggu ini Ada Pekerjaan Perbaikan dan Perkuatan Jembatan di KM 15 Plus 400 Ruas Tol Jagorawi">Pengguna Jalan Agar Berhati-hati, Minggu ini Ada Pekerjaan Perbaikan dan Perkuatan Jembatan di KM 15 Plus 400 Ruas Tol Jagorawi</a></span>
                    </h1>
                    <p>
                        <span id="banner_itemContent3">Selain melakukan perbaikan dan perkuatan jembatan di KM 23+225, Jasamarga Metropolitan Tollroad selaku pengelola Jalan Tol Jagorawi, juga melaksanakan pekerjaan perbaikan dan perkuatan jembatan di Km 15+400. Hal ini dilakukan agar tetap dapat meningkatkan</span>
                    </p>
                </div>
            </div>
            <div class="frontbanner" style="/*background: #5E5E5E url('/content/images/banner1.jpg')*/ no-repeat scroll center center / cover;">
                <img class="responsive-img" style="object-fit:cover; overflow:hidden; width="100%"; height="100%";  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20transjawa%20no.%2044.jpg" style="BORDER: 0px solid; ">
                <div class="frontbannertext">
                    <h1>
                        <span id="banner_itemTitle4"><a href="/public/id/aktivitas/detail.aspx?title=Jasa Marga Kembali Lakukan Pekerjaan Pemeliharaan dan Rekonstruksi di Ruas Tol Jakarta-Cikampek Dalam Rangka Peningkatan Kualitas Jalan">Jasa Marga Kembali Lakukan Pekerjaan Pemeliharaan dan Rekonstruksi di Ruas Tol Jakarta-Cikampek Dalam Rangka Peningkatan Kualitas Jalan</a></span>
                    </h1>
                    <p>
                        <span id="banner_itemContent4">Jasamarga Transjawa Tollroad Regional Division (JTT) akan kembali melakukan pekerjaan rekonstruksi rigid pavement pada Ruas Jalan Tol Jakarta-Cikampek. Pekerjaan tersebut dilakukan dalam rangka meningkatkan kualitas jalan dan kenyamanan serta keamanan pen</span>
                    </p>
                </div>
            </div>
        </div>
        <!-- Info Penting -->
        <div id="infopenting-wrapper">
            <div class="container">
                <div id="infopenting" class="row">
                    <div class="2u 12u(medium) infopentingTitle" id="lblInfoPenting"></div>
                    <div class="8u 12u(medium) infopentingNews">
                        <div class='marquee'>
                            <div class='marquee-text'>Anda dapat mengakses https://m.jasamargalive.com  untuk informasi tarif dan CCTV </div>
                        </div>
                    </div>
                    <div class="2u 12u(medium) icon14048">&nbsp;</div>
                </div>
            </div>
        </div>
        <!-- /END Info Penting -->
    </div>
    <!-- /END Banner -->


            <!-- Main -->
            <div id="main-wrapper">
                <div class="container">
                    

    <style>
        /* pop up covid window */
	 #css-only-modals {
	position: fixed;
	pointer-events: none;
	left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	z-index: 10000000;
	text-align: center;
	white-space: nowrap;
	height: 100%;
}
#css-only-modals:before {
	content: '';
	display: inline-block;
	height: 100%;
	vertical-align: middle;
	margin-right: -0.25em;
}
.css-only-modal-check {
	pointer-events: auto;
}
.css-only-modal-check:checked ~ .css-only-modal {
	opacity: 1;
	pointer-events: auto;
}
.css-only-modal {
	width: 70%;
	
	z-index: 1;
	display: inline-block;
	position: relative;
	pointer-events: auto;
	padding: 1px;
	text-align: center;
	border-radius: 2px;
	white-space: normal;
	display: inline-block;
	vertical-align: middle;
	opacity: 0;
	pointer-events: none;
}
.css-only-modal-close {
	position: absolute;
	top: 0px;
	right: 10px;
}
.css-only-modal-close:hover {
	color: rgb(255, 0, 55);
	cursor:pointer;
  }
.css-only-modal-check {
	display: none;
}
.css-only-modal-check:checked ~ #screen-shade {
	opacity: 0.5;
	pointer-events: auto;
}
#screen-shade {
	opacity: 0;
	background: #000;
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	pointer-events: none;
	transition: opacity 0.8s;
}
    .popup .close {
      position: absolute;
      top: 20px;
      right: 30px;
      transition: all 200ms;
      font-size: 30px;
      font-weight: bold;
      text-decoration: none;
      color: #333;
    }
    .overlay:target {
      visibility: hidden;
      opacity: 0;
      display:none
    }
    .image-background {
      position: absolute;
      right: initial;
      bottom: initial;
      width: 100%;
    }
    .slide-side {
      -webkit-animation: moving 7s linear 0s infinite alternate;
      animation: moving 7s linear 0s infinite alternate;
    }
    .slide-side-2 {
      -webkit-animation: moving 4s linear 0s infinite alternate;
      animation: moving 4s linear 0s infinite alternate;
    }
    @-webkit-keyframes moving {
      0%,
      100% {
        -webkit-transform: translateX(-30px);
        transform: translateX(-30px);
      }
      50% {
        -webkit-transform: translateX(30px);
        transform: translateX(30px);
      }
    }
    @keyframes moving {
      0%,
      100% {
        -webkit-transform: translateX(-30px);
        transform: translateX(-30px);
      }
      50% {
        -webkit-transform: translateX(30px);
        transform: translateX(30px);
      }
    }
    ul {
      list-style: none;
      margin: 0px;
      padding: 1px 1px;
    }
    li {
      line-height: 1.3em;
    }
    .li1 {
      background-color: #ffffff;
      border-radius: 2px;
      width: 5%;
      display: inline-block;
      margin: 20px;
      padding: 10px 30px;
      color: #004689;
      box-shadow: 2px 2px 4px #8c8c8c;
    }
    .flex-list {
      display: flex;
      font-size: 13px;
      font-weight: 700;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .flex-list li {
      flex: auto;
    }
    .zoom {
      cursor: pointer;
      transition: transform .2s;
    }
    .zoom:hover {
      -ms-transform: scale(1);
      -webkit-transform: scale(1);
      transform: scale(1.1);
    }
        /* Layout untuk Tablet */
@media (max-width: 1000px) {
  .flex-list {
    flex-wrap: wrap;
  }
  .flex-list li {
    width: 50%;
  }
}
@media (max-width: 670px) {
  .flex-list{
    flex-direction:inherit;
  }
  .flex-list li{
    width: 40%;
    margin: 4px;
    padding: 8px 8px;
  }
}
    </style>
 
   

<div id="screen-shade"></div>
</div>

    <!-- Terbaru -->
    <div id="terbaru-wrapper">
        <div class="container">
            <div class="row">
                <div class="12u">
                    <div class="sectionhead">
                        <h2>PRESS RELEASE</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container terbaru">
            <div class="row">
                <div class="2u" style="padding-left: 0;">
                    <a href="#" class="image pagerArrow terbaruprev">
                        <img src="/content/images/Icon/prev.png" alt="" />
                    </a>
                </div>
                <div class="8u">
                    <div id="terbarucarousel" class="owl-carousel">
                        
                                <div>
                                    <div class="image-container">
                                        <img width="114" height="115" alt="" class="responsive-img" style="object-fit:cover; overflow:hidden;"  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20transjawa%20no.%2046.jpg" style="BORDER: 0px solid; ">
                                        <div class="yellowImageMask115x115"></div>
                                    </div>
                                    <h2>
                                        <a href='/public/id/aktivitas/detail.aspx?title=Lakukan Perbaikan Jembatan, Jasa Marga Imbau Pengguna Jalan Antisipasi Perjalanan'>
                                            <span id="container_gridTerbaru_Label1_0" title="Lakukan Perbaikan Jembatan, Jasa Marga Imbau Pengguna Jalan Antisipasi Perjalanan">Lakukan Perbaikan Jembatan, Jasa Marga Imbau ...</span>
                                        </a>
                                    </h2>
                                </div>
                            
                                <div>
                                    <div class="image-container">
                                        <img width="114" height="115" alt="" class="responsive-img" style="object-fit:cover; overflow:hidden;"  src="/Content/images/Icon/jmIcon.png">
                                        <div class="yellowImageMask115x115"></div>
                                    </div>
                                    <h2>
                                        <a href='/public/id/aktivitas/detail.aspx?title=Jasa Marga Lakukan Penundaan Pekerjaan Pemeliharaan dan Rekonstruksi pada Ruas Jalan Tol Jakarta-Cikampek KM 27 Plus 613 sampai dengan KM 27 Plus 688'>
                                            <span id="container_gridTerbaru_Label1_1" title="Jasa Marga Lakukan Penundaan Pekerjaan Pemeliharaan dan Rekonstruksi pada Ruas Jalan Tol Jakarta-Cikampek KM 27 Plus 613 sampai dengan KM 27 Plus 688">Jasa Marga Lakukan Penundaan Pekerjaan ...</span>
                                        </a>
                                    </h2>
                                </div>
                            
                                <div>
                                    <div class="image-container">
                                        <img width="114" height="115" alt="" class="responsive-img" style="object-fit:cover; overflow:hidden;"  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20transjawa%20no.%2041h.jpg" style="BORDER: 0px solid; ">
                                        <div class="yellowImageMask115x115"></div>
                                    </div>
                                    <h2>
                                        <a href='/public/id/aktivitas/detail.aspx?title=Lakukan Pekerjaan Erection Girder pada Ruas Jalan Tol Solo-Ngawi, Jasa Marga Imbau Pengguna Jalan Antisipasi Perjalanan'>
                                            <span id="container_gridTerbaru_Label1_2" title="Lakukan Pekerjaan Erection Girder pada Ruas Jalan Tol Solo-Ngawi, Jasa Marga Imbau Pengguna Jalan Antisipasi Perjalanan">Lakukan Pekerjaan Erection Girder pada Ruas Jalan ...</span>
                                        </a>
                                    </h2>
                                </div>
                            
                                <div>
                                    <div class="image-container">
                                        <img width="114" height="115" alt="" class="responsive-img" style="object-fit:cover; overflow:hidden;"  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20metropolitan%20toll%20road%20no.%2075.jpg" style="BORDER: 0px solid; ">
                                        <div class="yellowImageMask115x115"></div>
                                    </div>
                                    <h2>
                                        <a href='/public/id/aktivitas/detail.aspx?title=Pekerjaan Konstruksi Jembatan Proyek Japek II Selatan Berlanjut Untuk Pemasangan Safety Net dan Safety Deck'>
                                            <span id="container_gridTerbaru_Label1_3" title="Pekerjaan Konstruksi Jembatan Proyek Japek II Selatan Berlanjut Untuk Pemasangan Safety Net dan Safety Deck">Pekerjaan Konstruksi Jembatan Proyek Japek II ...</span>
                                        </a>
                                    </h2>
                                </div>
                            
                                <div>
                                    <div class="image-container">
                                        <img width="114" height="115" alt="" class="responsive-img" style="object-fit:cover; overflow:hidden;"  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20pusat%20no.%20127.jpg" style="BORDER: 0px solid; ">
                                        <div class="yellowImageMask115x115"></div>
                                    </div>
                                    <h2>
                                        <a href='/public/id/aktivitas/detail.aspx?title=Jasa Marga Salurkan Bantuan Untuk Korban Terdampak Banjir Bandang Sukabumi'>
                                            <span id="container_gridTerbaru_Label1_4" title="Jasa Marga Salurkan Bantuan Untuk Korban Terdampak Banjir Bandang Sukabumi">Jasa Marga Salurkan Bantuan Untuk Korban ...</span>
                                        </a>
                                    </h2>
                                </div>
                            
                                <div>
                                    <div class="image-container">
                                        <img width="114" height="115" alt="" class="responsive-img" style="object-fit:cover; overflow:hidden;"  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20metropolitan%20toll%20road%20no.%2074.jpg" style="BORDER: 0px solid; ">
                                        <div class="yellowImageMask115x115"></div>
                                    </div>
                                    <h2>
                                        <a href='/public/id/aktivitas/detail.aspx?title=Pekerjaan Pemasangan Gelagar Jembatan Proyek Japek II Selatan Malam Ini Dilanjutkan Untuk Pemasangan Safety Net, Pengguna Jalan Dialihkan Menggunakan Lajur Detour'>
                                            <span id="container_gridTerbaru_Label1_5" title="Pekerjaan Pemasangan Gelagar Jembatan Proyek Japek II Selatan Malam Ini Dilanjutkan Untuk Pemasangan Safety Net, Pengguna Jalan Dialihkan Menggunakan Lajur Detour">Pekerjaan Pemasangan Gelagar Jembatan Proyek ...</span>
                                        </a>
                                    </h2>
                                </div>
                            
                                <div>
                                    <div class="image-container">
                                        <img width="114" height="115" alt="" class="responsive-img" style="object-fit:cover; overflow:hidden;"  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20metropolitan%20toll%20road%20no.%2072.jpg" style="BORDER: 0px solid; ">
                                        <div class="yellowImageMask115x115"></div>
                                    </div>
                                    <h2>
                                        <a href='/public/id/aktivitas/detail.aspx?title=Mulai 20 September 2020, Gerbang Tol Cimanggis 2 Satelit Mulai Dioperasikan '>
                                            <span id="container_gridTerbaru_Label1_6" title="Mulai 20 September 2020, Gerbang Tol Cimanggis 2 Satelit Mulai Dioperasikan ">Mulai 20 September 2020, Gerbang Tol Cimanggis 2 ...</span>
                                        </a>
                                    </h2>
                                </div>
                            
                                <div>
                                    <div class="image-container">
                                        <img width="114" height="115" alt="" class="responsive-img" style="object-fit:cover; overflow:hidden;"  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20metropolitan%20toll%20road%20no.%2070.jpg" style="BORDER: 0px solid; ">
                                        <div class="yellowImageMask115x115"></div>
                                    </div>
                                    <h2>
                                        <a href='/public/id/aktivitas/detail.aspx?title=Jasa Marga Kembali Lakukan Rekayasa Lalu Lintas Di Lokasi Pekerjaan Erection Girder Proyek Tol Becakayu Di Ruas Tol JORR'>
                                            <span id="container_gridTerbaru_Label1_7" title="Jasa Marga Kembali Lakukan Rekayasa Lalu Lintas Di Lokasi Pekerjaan Erection Girder Proyek Tol Becakayu Di Ruas Tol JORR">Jasa Marga Kembali Lakukan Rekayasa Lalu Lintas ...</span>
                                        </a>
                                    </h2>
                                </div>
                            
                                <div>
                                    <div class="image-container">
                                        <img width="114" height="115" alt="" class="responsive-img" style="object-fit:cover; overflow:hidden;"  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20metropolitan%20toll%20road%20no.%2069.jpg" style="BORDER: 0px solid; ">
                                        <div class="yellowImageMask115x115"></div>
                                    </div>
                                    <h2>
                                        <a href='/public/id/aktivitas/detail.aspx?title=Tingkatkan Kualitas Jalan, Jasa Marga Lakukan pekerjaan Pemeliharaan dan rekonstruksi di Ruas Tol Jakarta – Tangerang'>
                                            <span id="container_gridTerbaru_Label1_8" title="Tingkatkan Kualitas Jalan, Jasa Marga Lakukan pekerjaan Pemeliharaan dan rekonstruksi di Ruas Tol Jakarta – Tangerang">Tingkatkan Kualitas Jalan, Jasa Marga Lakukan ...</span>
                                        </a>
                                    </h2>
                                </div>
                            
                                <div>
                                    <div class="image-container">
                                        <img width="114" height="115" alt="" class="responsive-img" style="object-fit:cover; overflow:hidden;"  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20metropolitan%20toll%20road%20no.%2068.jpg" style="BORDER: 0px solid; ">
                                        <div class="yellowImageMask115x115"></div>
                                    </div>
                                    <h2>
                                        <a href='/public/id/aktivitas/detail.aspx?title=Pekerjaan Pemeliharaan dan Rekonstruksi Jalan Tol Jagorawi Akan Dilaksanakan Kembali Sepanjang 498 Meter'>
                                            <span id="container_gridTerbaru_Label1_9" title="Pekerjaan Pemeliharaan dan Rekonstruksi Jalan Tol Jagorawi Akan Dilaksanakan Kembali Sepanjang 498 Meter">Pekerjaan Pemeliharaan dan Rekonstruksi Jalan Tol ...</span>
                                        </a>
                                    </h2>
                                </div>
                            
                                <div>
                                    <div class="image-container">
                                        <img width="114" height="115" alt="" class="responsive-img" style="object-fit:cover; overflow:hidden;"  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20pusat%202020%20no.%20125.jpg" style="BORDER: 0px solid; ">
                                        <div class="yellowImageMask115x115"></div>
                                    </div>
                                    <h2>
                                        <a href='/public/id/aktivitas/detail.aspx?title=Konsorsium Swasta-BUMN Tandatangani PPJT dan Penjaminan Proyek Jalan Tol Solo-Yogyakarta-NYIA Kulon Progo'>
                                            <span id="container_gridTerbaru_Label1_10" title="Konsorsium Swasta-BUMN Tandatangani PPJT dan Penjaminan Proyek Jalan Tol Solo-Yogyakarta-NYIA Kulon Progo">Konsorsium Swasta-BUMN Tandatangani PPJT dan ...</span>
                                        </a>
                                    </h2>
                                </div>
                            
                                <div>
                                    <div class="image-container">
                                        <img width="114" height="115" alt="" class="responsive-img" style="object-fit:cover; overflow:hidden;"  alt="" src="https://cms.jasamarga.com/id/infoperusahaan/Site%20Images/press%20release%20pusat%202020%20no.%20124.jpg" style="BORDER: 0px solid; ">
                                        <div class="yellowImageMask115x115"></div>
                                    </div>
                                    <h2>
                                        <a href='/public/id/aktivitas/detail.aspx?title=Jasa Marga Berikan Diskon Tarif Golongan I Untuk Pengguna Jalan Tol Cipularang dan Padaleunyi'>
                                            <span id="container_gridTerbaru_Label1_11" title="Jasa Marga Berikan Diskon Tarif Golongan I Untuk Pengguna Jalan Tol Cipularang dan Padaleunyi">Jasa Marga Berikan Diskon Tarif Golongan I Untuk ...</span>
                                        </a>
                                    </h2>
                                </div>
                            
                    </div>
                </div>
                <div class="2u" style="padding-left: 0;">
                    <section class="terbaru">
                        <a href="#" class="image pagerArrow terbarunext">
                            <img src="/Content/images/Icon/next.png" alt="" />
                        </a>
                    </section>
                </div>
            </div>
        </div>
        <div class="container">
	    <div class="row">
                <div class="12u">
                    <div class="sectionhead">
                        <h2>REGIONAL JASA MARGA</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="12u">
                    <div class="row">
                        <div class="4u">
                           <!-- <a href="https://metropolitan.jasamarga.com/public/id/home.aspx">
                                <img src="/Content/images/Metropolitan.png" style="width: 100%; " title="Regional Metropolitan Toll Road" />
                            </a> -->
                                <img src="/Content/images/Metropolitan.png" style="width: 100%; " title="Regional Metropolitan Toll Road" />
                        </div>
                        <div class="4u">
                           <!-- <a href="https://jtt.jasamarga.com/public/id/home.aspx" style="padding-left: 2%">
                                <img src="/Content/images/TransJawa.png" style="width: 100%; " title="Regional TransJawa Toll Road" />
                            </a> -->
                                <img src="/Content/images/TransJawa.png" style="width: 100%; " title="Regional TransJawa Toll Road" />                       
                        </div>
                        <div class="4u">
                           <!-- <a href="https://nusantara.jasamarga.com/public/id/home.aspx" style="padding-left: 2%">
                                <img src="/Content/images/Nusantara.png" style="width: 100%; " title="Regional Nusantara Toll Road" />
                            </a> -->
                                <img src="/Content/images/Nusantara.png" style="width: 100%; " title="Regional Nusantara Toll Road" />  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Main -->
    <div id="main-wrapper">
        <div style="background: #FFFFF">
            <div class="container">
                <div class="row" style="background: #A3CCFF url('/Content/images/tollroad.jpg') no-repeat left; padding-top: 0; height: 383px;">
                    <div class="6u 12u(medium)"></div>
                    <div class="6u 12u(medium)" style="height: 383px; background: rgba(255,203,5,0.8)">
                        <div class="row">
                            <div class="2u 12u(medium)"></div>
                            <div class="8u 12u(medium)">
                                <div class="frontPemanduTol">
                                    <h2>INFORMASI TARIF TOL</h2>
                                    <p>
                                        Kemudahan mendapatkan informasi layanan
                                        dan fasilitas dapat diakses dimana pun dan kapanpun
                                    </p>
                                    <div class="frontPemanduTolIcon">
                                        
                                    </div>
                                    <br style="clear: left;" />
                                    <a href="/public/id/infolayanan/pemandutol.aspx">
                                        <div class="buttonBlueRound">AKSES SEKARANG</div>
                                    </a>
                                </div>
                            </div>
                            <div class="2u 12u(medium)"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
        <div class="container JMCare">
            <div class="row">
                <!-- JM TRAVOY -->
                <div class="4u 12u(medium)" style="background-color: #efefef; border-top: 10px solid white; border-left: 5px solid white; min-height:1100px; max-height:880px;">
                    <div class="12u">
                        <div class="sectionhead">
                            <img src="/Content/images/travloogo.png" width="257" height="" alt="">
                        </div>
                    </div><br >
                    <div class="12u" style="padding-left: 0px; text-align: center; padding-right: 30px;">
                        
                        <p>Travoy adalah media informasi seputar jalan tol di indonesia, travoy memberikan anda informasi terlengkap ter-update dengan sistem realtime</p>
                    </div>
                    <div class="12u" align="center" style="margin-top: -30px;">
                        <img src="/Content/images/app_store.png" alt="">&nbsp;&nbsp;<img src="/Content/images/google_play.png" alt="">
                    </div>
                    <div class="row">
                        <div class="12u">
                            <div class="row">
                                <div class="3u" style="margin-top: 0px;">
                                    <img src="/Content/images/iconTraffic.png" alt="">
                                </div>
                                <div class="8u" style="padding-left: 0px; margin-top: 0px;">
                                    <h2>TRAFFIC</h2>
                                    <p>Dapatkan informasi lalu lintas di area tol secara realtime. </p>
                                </div>
                            </div>
                        </div>
                        <div class="12u">
                            <div class="row">
                                <div class="3u">
                                    <img src="/Content/images/iconFasilitasTol.png" alt="">
                                </div>
                                <div class="8u" style="padding-left: 0px;">
                                    <h2>FASILITAS TOL</h2>
                                    <p>Dapatkan informasi lokasi gerbang tol beserta tarif tol dan rest area yang ada di area tol.</p>
                                </div>
                            </div>
                        </div>
                        <div class="12u">
                            <div class="row">
                                <div class="3u">
                                    <img src="/Content/images/iconCctv.png" alt="">
                                </div>
                                <div class="8u" style="padding-left: 0px;">
                                    <h2>CCTV</h2>
                                    <p>Dapatkan pantauan kondisi lalu lintas di area tol dengan bantuan CCTV yang tersebar di seluruh ruas tol. </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- JM FLO-->
                <div class="4u 12u(medium)" style="background-color:#efefef; border-top: 10px solid white; border-left: 5px solid white; min-height:1100px; max-height:880px;;">
                    <div class="12u">
                        <div class="sectionhead">
                            <img src="/Content/images/flologo.png" width="120" height="" alt="">
                        </div>
                    </div>
                    <div class="12u" style="padding-left: 0px; text-align: center; padding-right: 30px;">
                        <!--<p>Jasa Marga Access merupakan kartu eksklusif bagi pengguna jalan tol untuk kemudahan dalam membayar biaya masuk jalan tol. </p>-->
                        <p>Solusi pembayaran tol tanpa berhenti </p>
                    </div>
                    <div class="12u" align="center" style="margin-top: 55px; margin-bottom: 50px;">
                        
                        <a href="https://flo.id/" class="buttonBlueRound">COMING SOON </a>
                        <p></p>
                    </div>
                    <div class="12u" align="center">
                        <p></p>
                    </div>
                    <div class="row">
                        <div class="12u">
                            <div class="row">
                                <div class="3u">
                                    <img src="/Content/images/il-peta.png" width="50" alt="">
                                </div>
                                <div class="8u" style="padding-left: 0px;">
                                    <h2>Coming soon</h2>
                                    <!---<p>Kartu hanya tinggal di tempel kartu pada tempat yang sudah disediakan </p>--->
                                </div>
                            </div>
                        </div>
                        <div class="12u">
                            <div class="row">
                                <div class="3u">
                                    <img src="/Content/images/il-transaksi.png" width="50" alt="">
                                </div>
                                <div class="8u" style="padding-left: 0px;">
				<h2>Coming soon</h2>
                                    <!---<p>Kartu hanya tinggal di tempel kartu pada tempat yang sudah disediakan </p>
                                    <h2>TRANSAKSI JADI LEBIH CEPAT</h2>
                                    <p>Tak perlu menunggu waktu lama untuk transaksi.</p>--->
                                </div>
                            </div>
                        </div>
                        <div class="12u">
                            <div class="row">
                                <div class="3u">
                                    <img src="/Content/images/il-tarif.png" width="50" alt="">
                                </div>
                                <div class="8u" style="padding-left: 0px;">
					<h2>Coming soon</h2>
                                    <!---<p>Kartu hanya tinggal di tempel kartu pada tempat yang sudah disediakan </p>
                                    <h2>SIMPLE DAN EKSLUSIF</h2>
                                    <p>Dengan Card ini dapat disimpan dimana saja. </p>--->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- JM E-MAGAZINE -->
                
                <div class="4u 12u(medium)" style="background-color:#efefef; border-top: 10px solid white; border-left: 5px solid white; border-right: 5px solid white; min-height:1100px; max-height:880px;;">
                    
                    <div class="12u" align="center" style="margin-top: 25px;">
                        <a href="EMagJasaMarga.aspx">
                            <img src="/Content/images/MilesMagazine02.png" width="175" height="80" alt="">
                        </a>
                        &nbsp; &nbsp;
                    </div><br />
                    <div class="12u" style="padding-left: 0px; text-align: center; padding-right: 30px;">
                        <p> Majalah internal perusahaan media komunikasi perusahaan yang mengangkat tentang informasi/aktivitas perusahaan</p>
                    </div>
                    <div class="12u" align="center">
                        <p></p>
                    </div><br />
                    <div class="row">
                        <div class="12u">
                            <div class="row">
                                <div class="3u" style="margin-top: 2px;">
                                    <img src="/Content/images/icon/home/ikon-02.png" alt="">
                                </div>
                                <div class="8u" style="padding-left: 0px;">
                                    <h2>MILES E-MAGAZINE</h2>
                                    <p>Hadir dalam bentuk e-magazine yang terbit tiap 2 bulanan</p>
                                </div>
                            </div>
                        </div>
                        <div class="12u">
                            <div class="row">
                                <div class="3u" style="margin-top: 2px;">
                                    <img src="/Content/images/icon/home/ikon-02.png" alt="">
                                </div>
                                <div class="8u" style="padding-left: 0px;">
                                    <h2>MILES BULETIN </h2>
                                    <p>Berita Korporasi dan update kebijakan perusahaan dalam bentuk buletin/newsletter</p>
                                </div>
                            </div>
                        </div>
                        <div class="12u">
                            <div class="row">
                                <div class="3u" style="margin-top: 2px;">
                                    <img src="/Content/images/icon/home/ikon-02.png" alt="">
                                </div>
                                <div class="8u" style="padding-left: 0px;">
                                    <h2>MILES PHOTOBOARD </h2>
                                    <p>Kompilasi event dan aksi korporasi dalam bentuk fo</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="container">
        <div class="row"></div>
    </div>
    <!-- Corporate Presentation -->
    <div class="container JMCare">
        <div class="row">
            <div class="12u">
                <div class="sectionhead">
                    <!-- <h2>CORPORATE PRESENTATION </h2> -->
                </div>
            </div>
        </div>
        <div class="row corpPresentation">
            <div class="4u 12u(medium)" style="background-color:#efefef; border-top: 10px solid white; border-left: 3px solid white; border-right: 3px solid white; min-height:200px; max-height:100%;">
                <div class="inner">
                    <section class="corpPresentation">
                        <a href="https://investor-id.jasamarga.com/ar.html">
                            <img onmouseover="this.src='/Content/images/Icon/Home/cp-annual report-hover.png'" onmouseout="this.src='/Content/images/Icon/Home/cp-annual report.png'" src="/Content/images/Icon/Home/cp-annual report.png" width="82" height="82" alt="" />
                        </a><br>
                        <h2 style="text-align: center;">ANNUAL REPORT</h2>
                    </section>
                </div>
            </div>

            <div class="4u 12u(medium)" style="background-color:#efefef; border-top: 10px solid white; border-left: 3px solid white; border-right: 3px solid white; min-height:200px; max-height:100%;">
                <div class="inner">
                    <section class="corpPresentation">
                        <a href="https://jasamarga.com/public/id/infoperusahaan/ProfilPerusahaan/Overview.aspx">
                            <img onmouseover="this.src='/Content/images/Icon/Home/cp-annual report-hover.png'" onmouseout="this.src='/Content/images/Icon/Home/cp-annual report.png'"
                                 src="/Content/images/Icon/Home/cp-annual report.png" width="82" height="82" alt="" />
                        </a><br>
                        <h2 style="text-align: center;">COMPANY PROFILE</h2>
                    </section>
                </div>
            </div>

            <div class="4u 12u(medium)"style="background-color:#efefef; border-top: 10px solid white; border-left: 3px solid white; border-right: 3px solid white; min-height:200px; max-height:100%;">
                <div class="inner">
                    <section class="corpPresentation">
                        <a href="https://investor-id.jasamarga.com/jm_update.html">
                            <img onmouseover="this.src='/Content/images/Icon/Home/cp-JM Update-hover.png'" onmouseout="this.src='/Content/images/Icon/Home/cp-JM Update.png'" src="/Content/images/Icon/Home/cp-JM Update.png" width="82" height="82" alt="" />
                        </a><br>
                        <h2 style="text-align: center;">JM UPDATE</h2>
                    </section>
                </div>
            </div>
        </div>
    </div>
    
    


    <!-- Modal -->
    
    
    <script>
        $(document).ready(function () {
            $('#thumbnailNews').carousel({
                interval: 10000
            })
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            if (window.location.href.indexOf("/id/") > -1) {
                document.getElementById("lblInfoPenting").innerHTML = "<b>INFO PENTING</b>";
            }
            else if (window.location.href.indexOf("/en/") > -1) {
                document.getElementById("lblInfoPenting").innerHTML = "<b>ANNOUNCEMENT</b>";
            }
        });

    </script>


                </div>
            </div>
            <!--End Main-->
            <div>
                <!--footer-->
                <div id="footer-wrapper">
                    <footer id="footer" class="container">
                        <div class="row">
                            <div class="6u 6u(medium) 11u$(small)">
                                <!--<a href="#" >HOME </a>| <a href="#" >INTERNAL</a> | <a href="#" >Disclaimer</a> | <a href="#" >Contact Us</a>-->
                                <span id="menuFooter"> <a href="/public/id/home.aspx">HOME</a> | <a href="https://www.jasamarga.co.id">INTERNAL</a> | <a href="/public/id/disclaimer.aspx">DISCLAIMER</a> | <a href="/public/id/infoperusahaan/profilperusahaan/EksternalLink.aspx">EKSTERNAL LINK</a> | <a href="/public/id/contactus.aspx">KONTAK KAMI</a> |</span>
                            </div>
                            <div class="6u 6u(medium) 11u$(small)">
                                <div class="row">
                                    <div class="2u 2u(medium) 11u$(small)">
                                        <a href="https://whistleblowing.tips/wbs/@jasamarga" target="_blank">
                                            <img src="/Content/images/wbs.png" style="width: 80px; height: 35px;">
                                        </a>
                                    </div>

                                    <div class="2u 2u(medium) 11u$(small)">
                                        <a href="https://lpse.jasamarga.com/" target="_blank">
                                            <img src="/Content/images/lpse.jpg" style="width: 70px; height: 35px;">
                                        </a>
                                    </div>

                                    <div class="2u 2u(medium) 11u$(small)">
                                        <a href="https://jasamargalive.com/" target="_blank">
                                            <img src="/Content/images/liveStream.jpg" style="width: 70px; height: 35px;">
                                        </a>
                                    </div>

                                     <div class="footer__right">
                                         <ul class="footer__social-media">
                                             <li>
                                                 <a href="https://www.facebook.com/official.jasamarga/?ref=bookmarks" target="_blank"><i class="fa fa-facebook fa-lg sm-item" aria-hidden="true"></i></a>
                                             </li>
                                             <li>
                                                 <a href="https://twitter.com/ptjasamarga" target="_blank"><i class="fa fa-twitter fa-lg sm-item" aria-hidden="true"></i></a>
                                             </li>
					     <li>
                                                 <a href="https://twitter.com/OFFICIAL_JSMR" target="_blank"><i class="fa fa-twitter fa-lg sm-item" aria-hidden="true"></i></a>
                                             </li>
                                             <li>
                                                 <a href="https://www.instagram.com/official.jasamarga/" target="_blank"><i class="fa fa-instagram fa-lg sm-item" aria-hidden="true"></i></a>
                                             </li>
                                             <li>
                                                 <a href="https://www.youtube.com/channel/UCfLpB-6ummYUPjwckxjl9TA" target="_blank"><i class="fa fa-youtube fa-lg sm-item" aria-hidden="true"></i></a>
                                             </li>
                                         </ul>
                                     </div>
                                </div>
                            </div>
                        </div>
                    </footer>
                </div>
                <!--end footer--->
            </div>
        </form>




    </div>

    <!-- Return to Top -->
    <a href="javascript:" id="return-to-top">
        <img src="/Content/images/backToTop.fw.png" />
        <i class="fa fa-chevron-circle-up" aria-hidden="true"></i>
    </a>

    <!-- Scripts -->

    <script src="/Content/scripts/jquery.min.js"></script>
    <script src="/Content/scripts/jquery.dropotron.min.js"></script>
    <script src="/Content/scripts/skel.min.js"></script>
    <script src="/Content/scripts/util.js"></script>
    <!--[if lte IE 8]><script src="/Content/scripts/ie/respond.min.js"></script><![endif]-->
    <script src="/Content/scripts/main.js"></script>
    <script src="/Content/scripts/materialize.min.js"></script>
    <script src="/Content/owl-carousel/owl.carousel.min.js"></script>
    <script>

        //the Carousel
        $(document).ready(function () {
            $("#frontbanner-carousel").owlCarousel({
                items: 1,
                nav: true,
                navText: [
                    "<i class='fa fa-chevron-left'></i>",
                    "<i class='fa fa-chevron-right'></i>"
                ],
                loop: true,
                responsiveClass: true,

                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true
            });
        });

        $(document).ready(function () {

            var owl = $("#terbarucarousel");

            var focused = document.activeElement;

            owl.owlCarousel({
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                        nav: true
                    },
                    600: {
                        items: 3,
                        nav: false
                    },
                    1000: {
                        items: 4,
                        nav: false,
                        loop: false
                    }
                }
            });

            // Custom Navigation Events
            $(".terbarunext").click(function () {
                owl.trigger('next.owl.carousel');
                focused.focus();
                return false;
            })
            $(".terbaruprev").click(function () {
                owl.trigger('prev.owl.carousel');
                focused.focus();
                return false;
            })

        });

        // ===== Scroll to Top ==== 
        $(window).scroll(function () {
            if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
                $('#return-to-top').fadeIn(200);    // Fade in the arrow
            } else {
                $('#return-to-top').fadeOut(200);   // Else fade out the arrow
            }
        });
        $('#return-to-top').click(function () {      // When arrow is clicked
            $('body,html').animate({
                scrollTop: 0                       // Scroll to top of body
            }, 500);
        });
    </script>
    <script>
        var marquee = $('div.marquee');
        marquee.each(function () {
            var mar = $(this), indent = mar.width();
            mar.marquee = function () {
                indent--;
                mar.css('text-indent', indent);
                if (indent < -1 * mar.children('div.marquee-text').width()) {
                    indent = mar.width();
                }
            };
            mar.data('interval', setInterval(mar.marquee, 1000 / 60));
        });
    </script>

</body>
</html>
