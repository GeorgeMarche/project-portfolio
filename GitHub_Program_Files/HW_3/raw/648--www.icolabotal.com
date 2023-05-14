<!DOCTYPE html>
<html lang="es-es" dir="ltr">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta charset="utf-8" />
	<base href="http://www.icolabotal.com/" />
	<meta name="description" content="Colegio de Abogados de Talavera de la Reina" />
	<meta name="generator" content="Joomla! - Open Source Content Management" />
	<title>Colegio Abogados Talavera</title>
	<link href="/?format=feed&amp;type=rss" rel="alternate" type="application/rss+xml" title="RSS 2.0" />
	<link href="/?format=feed&amp;type=atom" rel="alternate" type="application/atom+xml" title="Atom 1.0" />
	<link href="/templates/protostar/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
	<link href="/media/system/css/modal.css?083580dcd6911e234de8bef1c378916f" rel="stylesheet" />
	<link href="/media/com_attachments/css/attachments_hide.css" rel="stylesheet" />
	<link href="/plugins/system/jce/css/content.css?083580dcd6911e234de8bef1c378916f" rel="stylesheet" />
	<link href="/templates/protostar/css/template.css?083580dcd6911e234de8bef1c378916f" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
	<link href="/modules/mod_xpertslider/assets/css/xpertslider.css" rel="stylesheet" />
	<link href="/modules/mod_cookiesaccept/screen.css" rel="stylesheet" />
	<style>

	h1, h2, h3, h4, h5, h6, .site-title {
		font-family: 'Open Sans', sans-serif;
	}
	body.site {
		border-top: 3px solid #0088cc;
		background-color: #f4f6f7;
	}
	a {
		color: #0088cc;
	}
	.nav-list > .active > a,
	.nav-list > .active > a:hover,
	.dropdown-menu li > a:hover,
	.dropdown-menu .active > a,
	.dropdown-menu .active > a:hover,
	.nav-pills > .active > a,
	.nav-pills > .active > a:hover,
	.btn-primary {
		background: #0088cc;
	}
	</style>
	<script type="application/json" class="joomla-script-options new">{"csrf.token":"dbe9a454c1ebc4f34774e85d8935d17e","system.paths":{"root":"","base":""}}</script>
	<script src="/media/system/js/mootools-core.js?083580dcd6911e234de8bef1c378916f"></script>
	<script src="/media/system/js/core.js?083580dcd6911e234de8bef1c378916f"></script>
	<script src="/media/system/js/mootools-more.js?083580dcd6911e234de8bef1c378916f"></script>
	<script src="/media/system/js/modal.js?083580dcd6911e234de8bef1c378916f"></script>
	<script src="/media/jui/js/jquery.min.js?083580dcd6911e234de8bef1c378916f"></script>
	<script src="/media/jui/js/jquery-noconflict.js?083580dcd6911e234de8bef1c378916f"></script>
	<script src="/media/jui/js/jquery-migrate.min.js?083580dcd6911e234de8bef1c378916f"></script>
	<script src="/media/com_attachments/js/attachments_refresh.js"></script>
	<script src="/media/system/js/caption.js?083580dcd6911e234de8bef1c378916f"></script>
	<script src="/media/jui/js/bootstrap.min.js?083580dcd6911e234de8bef1c378916f"></script>
	<script src="/templates/protostar/js/template.js?083580dcd6911e234de8bef1c378916f"></script>
	<!--[if lt IE 9]><script src="/media/jui/js/html5.js?083580dcd6911e234de8bef1c378916f"></script><![endif]-->
	<script src="/modules/mod_xpertslider/assets/js/jquery.mobile.customized.min.js"></script>
	<script src="/modules/mod_xpertslider/assets/js/jquery.easing.1.3.js"></script>
	<script src="/modules/mod_xpertslider/assets/js/xslider.js"></script>
	<script>

		jQuery(function($) {
			SqueezeBox.initialize({});
			initSqueezeBox();
			$(document).on('subform-row-add', initSqueezeBox);

			function initSqueezeBox(event, container)
			{
				SqueezeBox.assign($(container || document).find('a.modal').get(), {
					parse: 'rel'
				});
			}
		});

		window.jModalClose = function () {
			SqueezeBox.close();
		};

		// Add extra modal close functionality for tinyMCE-based editors
		document.onreadystatechange = function () {
			if (document.readyState == 'interactive' && typeof tinyMCE != 'undefined' && tinyMCE)
			{
				if (typeof window.jModalClose_no_tinyMCE === 'undefined')
				{
					window.jModalClose_no_tinyMCE = typeof(jModalClose) == 'function'  ?  jModalClose  :  false;

					jModalClose = function () {
						if (window.jModalClose_no_tinyMCE) window.jModalClose_no_tinyMCE.apply(this, arguments);
						tinyMCE.activeEditor.windowManager.close();
					};
				}

				if (typeof window.SqueezeBoxClose_no_tinyMCE === 'undefined')
				{
					if (typeof(SqueezeBox) == 'undefined')  SqueezeBox = {};
					window.SqueezeBoxClose_no_tinyMCE = typeof(SqueezeBox.close) == 'function'  ?  SqueezeBox.close  :  false;

					SqueezeBox.close = function () {
						if (window.SqueezeBoxClose_no_tinyMCE)  window.SqueezeBoxClose_no_tinyMCE.apply(this, arguments);
						tinyMCE.activeEditor.windowManager.close();
					};
				}
			}
		};
		jQuery(window).on('load',  function() {
				new JCaption('img.caption');
			});jQuery(function(){

        			jQuery('#txmod_101').xslider({
                       pagination: false,thumbnails: false,loader: 'none' ,barPosition: 'bottom' ,height: '375px',fx: 'random',easing: 'linear' ,time: 2000,transPeriod: 600
        			});

        		});
	</script>

</head>
<body class="site com_content view-featured no-layout no-task itemid-101">
	<!-- Body -->
	<div class="body" id="top">
		<div class="container">
			<!-- Header -->
			<header class="header" role="banner">
				<div class="header-inner clearfix">
					<a class="brand pull-left" href="/">
						<img src="http://www.icolabotal.com/images/logoCAB.png" alt="Colegio de Abogados de Talavera de la Reina" />											</a>
					<div class="header-search pull-right">
						
					</div>
				</div>
			</header>
							<nav class="navigation" role="navigation">
					<div class="navbar pull-left">
						<a class="btn btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
							<span class="element-invisible">Toggle Navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</a>
					</div>
					<div class="nav-collapse">
						<ul class="nav menu nav-pills mod-list">
<li class="item-101 default current active"><a href="/" >INICIO</a></li><li class="item-108 deeper parent"><a href="/el-colegio" >EL COLEGIO</a><ul class="nav-child unstyled small"><li class="item-115"><a href="/el-colegio/junta-de-gobierno" >Junta de Gobierno</a></li><li class="item-116"><a href="/el-colegio/contacto" >Contacto</a></li><li class="item-117"><a href="/el-colegio/galeria" >Galería</a></li><li class="item-118"><a href="/el-colegio/estatutos" >Estatutos</a></li><li class="item-119"><a href="/el-colegio/informacion-economica" >Información Económica</a></li></ul></li><li class="item-109 deeper parent"><a href="/servicios-a-colegiados" >SERVICIOS A COLEGIADOS</a><ul class="nav-child unstyled small"><li class="item-120"><a href="/servicios-a-colegiados/turno-de-oficio" >Turno de Oficio</a></li><li class="item-121"><a href="/servicios-a-colegiados/instalaciones" >Instalaciones</a></li><li class="item-122"><a href="/servicios-a-colegiados/deontologia-profesional" >Deontología Profesional</a></li><li class="item-123"><a href="/servicios-a-colegiados/honorarios-profesionales" >Honorarios Profesionales</a></li><li class="item-124"><a href="/servicios-a-colegiados/responsabilidad-civil" >Responsabilidad Civil</a></li><li class="item-125"><a href="/servicios-a-colegiados/jurisprudencia" >Jurisprudencia</a></li><li class="item-126"><a href="/servicios-a-colegiados/utilidades" >Utilidades</a></li><li class="item-127"><a href="/servicios-a-colegiados/enlaces-de-interes" >Enlaces de interés</a></li><li class="item-128"><a href="/servicios-a-colegiados/juzgados" >Juzgados</a></li><li class="item-129"><a href="/servicios-a-colegiados/legislacion" >Legislación</a></li><li class="item-224 deeper parent"><a href="#" >Servicio de Empleo</a><ul class="nav-child unstyled small"><li class="item-225"><a href="/servicios-a-colegiados/servicio-de-empleo/informacion-y-altas" >Información y altas</a></li><li class="item-226"><a href="/servicios-a-colegiados/servicio-de-empleo/entidades-y-colegiados" >Entidades y Colegiados</a></li><li class="item-227"><a href="/servicios-a-colegiados/servicio-de-empleo/candidatos" >Candidatos</a></li></ul></li></ul></li><li class="item-110 deeper parent"><a href="/atencion-al-ciudadano" >ATENCIÓN AL CIUDADANO</a><ul class="nav-child unstyled small"><li class="item-111"><a href="/atencion-al-ciudadano/justicia-gratuita" >Justicia Gratuita</a></li><li class="item-112"><a href="/atencion-al-ciudadano/quiero-colegiarme" >Quiero Colegiarme</a></li><li class="item-113"><a href="/atencion-al-ciudadano/centro-de-medicion-imat" >Centro de Medición IMAT</a></li><li class="item-114"><a href="/atencion-al-ciudadano/vias-de-reclamacion-y-recursos" >Vías de Reclamación y Recursos</a></li><li class="item-191"><a href="/atencion-al-ciudadano/tablon-anuncios-publico" >Tablón Anuncios público</a></li><li class="item-228"><a href="/atencion-al-ciudadano/candidatos-envios-de-curriculum-vitae" >Candidatos Envíos de Curriculum Vitae</a></li><li class="item-229"><a href="/atencion-al-ciudadano/login-candidatos" >Login Candidatos</a></li></ul></li></ul>

					</div>
				</nav>
								<div class="moduletable">
						<!--Themexpert (http://www.themexpert.com) Xpert Slider module - 1.4 Start-->
<div class="xslider_container">
    <div class="xslider_wrap xslider_azure_skin" id="txmod_101">
                    <div data-thumb="" data-src="images/slide/WP_000990.jpg">
                
                <div class="xslider_caption moveFromLeft">

                                                        </div>
                
            </div>
                    <div data-thumb="" data-src="images/slide/WP_000988.jpg">
                
                <div class="xslider_caption moveFromLeft">

                                                        </div>
                
            </div>
                    <div data-thumb="" data-src="images/slide/WP_000986.jpg">
                
                <div class="xslider_caption moveFromLeft">

                                                        </div>
                
            </div>
                    <div data-thumb="" data-src="images/slide/WP_000976.jpg">
                
                <div class="xslider_caption moveFromLeft">

                                                        </div>
                
            </div>
                    <div data-thumb="" data-src="images/slide/colegio_large.jpg">
                
                <div class="xslider_caption moveFromLeft">

                                                        </div>
                
            </div>
            </div>
</div>
<!--Themexpert (http://www.themexpert.com) Xpert Slider module - 1.4 End-->		</div>
			<div class="moduletable">
						<!--googleoff: all-->
<div id="ca_banner" 
    style="top:0px;
        	">
<table>
<tr><td colspan="2">
    <h2 style="
		">¡Atención! Este sitio usa cookies y tecnologías similares.</h2> 
</td>
</tr>
<tr>
<td>
    <p style="padding: 5px; 
				">Si no cambia la configuración de su navegador, usted acepta su uso.        							<span class="infoplus info_modal" style="">Saber más</span>
							</p>
</td>
<td>
	<div class="accept" style="">Acepto</div>
</td>
</tr>
</table>
</div>
<div id="ca_info" style="">
    <div class="ca_info_close" style=""></div>
        <div id="ca_info_plus" style="">
            <p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="font-size: 14pt; line-height: 103%; color: black;"></span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><b><span style="font-size: 14pt; line-height: 103%; color: black;">Cláusula&nbsp;RGPD para el cumplimiento del deber informativo y obtención del consentimiento a través de la web</span></b></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;"></span></p>
<p style="margin-bottom: 0.0001pt; text-align: center; line-height: 103%;"><b><span style="color: black;">AVISO LEGAL</span></b></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;"></span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;"></span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;">De acuerdo con lo establecido en el Reglamento General de Protección de Datos, le informamos que trataremos sus datos personales con la finalidad de:</span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;"></span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><b><i><span style="color: black;">Prestarle o entregarle el servicio o producto contratado, e informarle sobre los productos o servicios publicados en nuestra web</span></i></b></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;"></span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;">Los datos personales proporcionados se conservarán, mientras se mantenga la relación mercantil, no se solicite su supresión por el interesado, o durante 1 año a partir de la última confirmación de interés, o durante el tiempo necesario para cumplir con las obligaciones legales. La empresa NO tomará decisiones automatizadas. Los datos no se cederán a terceros salvo en los casos en que exista una obligación legal y los trataremos en base a <b><i>su consentimiento o ejecución de un contrato</i></b><i>.</i></span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;"></span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;">Asimismo, le informamos de la posibilidad de ejercer los siguientes derechos sobre sus datos personales: derecho de acceso, rectificación, supresión u olvido, limitación, oposición, portabilidad y a retirar el consentimiento prestado, para ello podrá enviar un email a: <strong>icolabotal</strong><b>@icolabotal.com</b></span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;">Además, el interesado puede dirigirse a la Autoridad de Control en materia de Protección de Datos competente para obtener información adicional o presentar una reclamación.</span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;"></span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;">Datos identificativos del responsable:</span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;">Ilustre Colegio de Abogados de Talavera de la Reina, / Adalid Meneses Nº11 - 4500- Talavera de la Reina - TOLEDO, 92582597</span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;">DPD:</span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;"></span></p>
<p style="margin-bottom: 0.0001pt; text-align: justify; line-height: 103%;"><span style="color: black;"></span></p>        </div>
</div>


<script type="text/javascript">
    jQuery(document).ready(function () { 
	
	function setCookie(c_name,value,exdays)
	{
		var exdate=new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var c_value=escape(value) + ((exdays==null) ? "" : "; expires="+exdate.toUTCString()) + "; path=/";
		document.cookie=c_name + "=" + c_value;
	}
	
	function readCookie(name) {
		var nameEQ = name + "=";
		var ca = document.cookie.split(';');
		for(var i=0;i < ca.length;i++) {
			var c = ca[i];
			while (c.charAt(0)==' ') c = c.substring(1,c.length);
			if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
			}
		return null;
	}
    
	var $ca_banner = jQuery('#ca_banner');
    var $ca_infoplus = jQuery('.infoplus.info_modal');
    var $ca_info = jQuery('#ca_info');
    var $ca_info_close = jQuery('.ca_info_close');
    var $ca_infoaccept = jQuery('.accept');
    
	var cookieaccept = readCookie('cookieaccept');
	if(!(cookieaccept == "yes")){
	
		$ca_banner.delay(1000).slideDown('fast'); 
        $ca_infoplus.click(function(){
            $ca_info.fadeIn("fast");
        });
        $ca_info_close.click(function(){
            $ca_info.fadeOut("slow");
        });
        $ca_infoaccept.click(function(){
			setCookie("cookieaccept","yes",365);
            jQuery.post('http://www.icolabotal.com/', 'set_cookie=1', function(){});
            $ca_banner.slideUp('slow');
            $ca_info.fadeOut("slow");
        });
       } 
    });
</script>
<!--googleon: all-->
		</div>
	
			<div class="row-fluid">
									<!-- Begin Sidebar -->
					<div id="sidebar" class="span3">
						<div class="sidebar-nav">
									<div class="moduletable">
						

<div class="custom"  >
	<p>&nbsp;</p>
<p>&nbsp;</p>
<p><a href="http://www.icolabotal.com/servicios-a-colegiados/area-privada/"><img src="/images/area-privada.png" alt="area-privada" style="display: block; margin-left: auto; margin-right: auto;" /></a></p>
<p>&nbsp;</p>
<p>&nbsp;</p></div>
		</div>
			<div class="moduletable">
						

<div class="custom"  >
	<p style="text-align: center;"><a href="https://www.redabogacia.org/praseg/privada/Identificacion.jsp?urlDirecto=XX" target="_blank"><img src="/images/icolabotal/BannerSiga.png" alt="BannerSiga" /></a></p></div>
		</div>
			<div class="moduletable">
						

<div class="custom"  >
	<p><a href="https://lexnet.justicia.es/lexnetWeb/MenuInicio_html" target="_blank"><img src="/images/icolabotal/BannerLexnet.png" alt="BannerLexnet" /></a></p>
<p>&nbsp;</p>
<p><a href="http://mailrecibido.es/" target="_blank"><img src="/images/MailRecibido.png" alt="" /></a></p>
<p>&nbsp;</p>
<p><a href="https://sede.mjusticia.gob.es/cs/Satellite/Sede/es/1215197869883/DetalleInicio.html" target="_blank"><img src="/images/sede-electronica.gif" alt="" /></a></p>
<p>&nbsp;</p>
<p><a href="https://www.administraciondejusticia.gob.es/paj/publico/ciudadano/home/!ut/p/c5/04_SB8K8xLLM9MSSzPy8xBz9CP0os3gTDzf_AG9HQwuzAAsDA08vExMv81BPYwMDA6B8pFm8AQ7gaEBAt5d-VHpOfhLQnnCQzWbxZp6upp5BwSYmxqEuJgaexmFhrgEevgYGJgYQeTw2-Xnk56bqF-RGVAYHpCsCAEK4AzE!/dl3/d3/L2dBISEvZ0FBIS9nQSEh/" target="_blank"><img src="/images/portal-justicia.png" alt="" /></a></p>
<p>&nbsp;</p>
<p>&nbsp;<a href="http://www.catastro.meh.es/" target="_blank"><img src="/images/catastro.gif" alt="catastro" /></a></p>
<p>&nbsp;</p>
<p>&nbsp;<a href="http://www.abogacia.es/"><img src="/images/ABogacia.jpg" alt="ABogacia" /></a></p>
<p>&nbsp;</p>
<p>&nbsp;</p></div>
		</div>
			<div class="moduletable">
						

<div class="custom"  >
	<p><a href="https://www.santanderjusticia.es/" target="_blank"><img style="display: block; margin-left: auto; margin-right: auto;" src="/images/icolabotal/COLECTIVOS_BANNER_SANTANDER-JUSTICIA_238X103px_MAY15.gif" alt="COLECTIVOS BANNER SANTANDER-JUSTICIA 238X103px MAY15" /></a></p></div>
		</div>
	
						</div>
					</div>
					<!-- End Sidebar -->
								<main id="content" role="main" class="span6">
					<!-- Begin Content -->
					
					<div id="system-message-container">
	</div>

					<div class="blog-featured" itemscope itemtype="https://schema.org/Blog">
<div class="items-leading clearfix">
			<div class="leading-0 clearfix"
			itemprop="blogPost" itemscope itemtype="https://schema.org/BlogPosting">
			

	<h2 class="item-title" itemprop="headline">
			<a href="/atencion-al-ciudadano/quiero-colegiarme" itemprop="url">
			Quiero Colegiarme		</a>
		</h2>








<p style="margin: 0px 0px 1.714285714rem; padding: 0px; border: 0px; font-size: 12px; vertical-align: baseline; line-height: 20.5714282989502px; max-width: 512px; color: #636363; font-family: verdana;">Si estás interesado en colegiarte ponte en contacto con nosotros:</p>
<p style="margin: 0px 0px 1.714285714rem; padding: 0px; border: 0px; font-size: 12px; vertical-align: baseline; line-height: 20.5714282989502px; max-width: 512px; color: #636363; font-family: verdana;"><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">COLEGIO DE ABOGADOS DE TALAVERA DE LA REINA</span><br /><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">ADALID MENESES, Nº11</span><br /><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">TALAVERA DE LA REINA TOLEDO 45600</span><br /><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">España</span><br /><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Teléfono: 925812597</span><br /><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Fax: 925825178</span><br /><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">E-mail: <span id="cloakf277937f27ecc353965cf2d643f82af2">Esta dirección de correo electrónico está protegida contra spambots. Usted necesita tener Javascript activado para poder verla.</span><script type='text/javascript'>
				document.getElementById('cloakf277937f27ecc353965cf2d643f82af2').innerHTML = '';
				var prefix = '&#109;a' + 'i&#108;' + '&#116;o';
				var path = 'hr' + 'ef' + '=';
				var addyf277937f27ecc353965cf2d643f82af2 = '&#105;c&#111;l&#97;b&#111;t&#97;l' + '&#64;';
				addyf277937f27ecc353965cf2d643f82af2 = addyf277937f27ecc353965cf2d643f82af2 + '&#105;c&#111;l&#97;b&#111;t&#97;l' + '&#46;' + 'c&#111;m';
				var addy_textf277937f27ecc353965cf2d643f82af2 = '&#105;c&#111;l&#97;b&#111;t&#97;l' + '&#64;' + '&#105;c&#111;l&#97;b&#111;t&#97;l' + '&#46;' + 'c&#111;m';document.getElementById('cloakf277937f27ecc353965cf2d643f82af2').innerHTML += '<a ' + path + '\'' + prefix + ':' + addyf277937f27ecc353965cf2d643f82af2 + '\'>'+addy_textf277937f27ecc353965cf2d643f82af2+'<\/a>';
		</script></span></p>
<p style="margin: 0px 0px 1.714285714rem; padding: 0px; border: 0px; font-size: 12px; vertical-align: baseline; line-height: 20.5714282989502px; max-width: 512px; color: #636363; font-family: verdana;"><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;"><img style="display: block; margin-left: auto; margin-right: auto;" src="/images/icolabotal/Colegi.jpg" alt="Colegi" width="150" height="152" /></span></p>



		</div>
			</div>


	<div class="pagination">

					<p class="counter pull-right">
							</p>
							</div>

</div>
					<div class="clearfix"></div>
					
					<!-- End Content -->
				</main>
									<div id="aside" class="span3">
						<!-- Begin Right Sidebar -->
						<div class="well ">

<div class="custom"  >
	<p style="text-align: center;"><a href="/atencion-al-ciudadano/tablon-anuncios-publico"><img src="/images/icolabotal/tablon-anuncios-publico.png" alt="tablon anuncios publico" /></a></p></div>
</div><div class="well ">

<div class="custom"  >
	<p><a href="/atencion-al-ciudadano/29-dia-justicia-gratuita" target="_blank"><img style="display: block; margin-left: auto; margin-right: auto;" src="/images/icolabotal/banner_castellano_justiciagratuita.JPG" alt="banner castellano justiciagratuita" width="300" height="300" /></a></p>
<div>&nbsp;</div></div>
</div><div class="well "><h3 class="page-header">RSS (Mutualidad Abogacía)</h3>
<div class="tp-easy-custom-code">
    <iframe width="220" height="430" frameborder="0" style="overflow: hidden; border:0px solid #453536;" src="http://www.mutualidadabogacia.com/landings/Widget/listaNoticias2.aspx" scrolling="no">
</div>


</div>
						<!-- End Right Sidebar -->
					</div>
							</div>
		</div>
	</div>
	<!-- Footer -->
	<footer class="footer" role="contentinfo">
		<div class="container">
			<hr />
			

<div class="custom"  >
	<p style="text-align: center;"><a href="http://www.abogacia.es/site/lexnet-abogacia/reto-lexnet/" target="_blank"><img src="/images/icolabotal/Banner_Lexnet-Tablet_728x90px.gif" alt="Banner Lexnet-Tablet 728x90px" /></a></p></div>

			<p class="pull-right">
				<a href="#top" id="back-top">
					Ir arriba				</a>
			</p>
			<p>
				&copy; 2020 Colegio de Abogados de Talavera de la Reina			</p>
		</div>
	</footer>
	
</body>
</html>
