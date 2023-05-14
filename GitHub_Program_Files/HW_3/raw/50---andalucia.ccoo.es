<!DOCTYPE html>
<html lang="es">

<head>
	<title>Comisiones Obreras de Andalucía - Sevilla</title>
	<meta charset="ISO-8859-1">		
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">	
	<link rel="icon" type="image/png" href="/cms/favicons/favicon_166.png">
	
	<link rel='stylesheet' href='/cms/css/tiny_styles.css'/>
	<link rel='stylesheet' href='/js/jquery-ui-1.10.3/themes/smoothness/jquery-ui-1.10.3.custom.css'/>
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400&subset=latin,latin-ext'/>
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700&subset=latin,latin-ext'/>
	<link rel='stylesheet' href='/cms/css/html5reset.css'/>
	<link rel='stylesheet' href='/cms/css/csccoo.css'/>
	<link rel='stylesheet' href='/js/wowza/flowplayer-7.2.7/skin/skin_ccoo.css'/>
	<link rel='stylesheet' href='/cms/css/datepicker2.css'/>
	
	<style type='text/css'>		/* contenidos_standard *//* noticia_area *//* FIN noticia_area */
/* noticia_area *//* FIN noticia_area */
/* noticia_area *//* FIN noticia_area */
/* noticia_area *//* FIN noticia_area */
/* noticia_area *//* FIN noticia_area */
/* noticia_area *//* FIN noticia_area */
/* agruvideos *//* FIN agruvideos */
/* noticia_area *//* FIN noticia_area */
/* noticia_area *//* FIN noticia_area */
/* noticia_area *//* FIN noticia_area */
/* noticia_area *//* FIN noticia_area */
/* noticia_area *//* FIN noticia_area */
/* agruvideos *//* FIN agruvideos */
/* noticia_area *//* FIN noticia_area */
/* noticia_area *//* FIN noticia_area *//* FIN contenidos_standard */
</style>
	
	<!--[if lte IE 8]><style>@import url("/cms/css/cms_ie.css");</style><![endif]-->
	
	
	<script src='/js/validaciones_app.js'></script>
	<script src='/js/jquery-1.11.0.min.js'></script>
	<script src='/js/jquery-ui-1.10.3/ui/minified/jquery-ui.min.js'></script>
	<script src='/js/wowza/flowplayer-7.2.7/flowplayer.min.js'></script>
	<script src='/js/wowza/flowplayer-7.2.7/flowplayer.hlsjs.min.js'></script>
	<script src='/js/md5.js'></script>
	
	
	<script type="text/javascript">
	
		if (!String.prototype.trim) {
		  (function() {			 
		    var rtrim = /^[\s\uFEFF ]+|[\s\uFEFF ]+$/g;
		    String.prototype.trim = function() {
		      return this.replace(rtrim, '');
		    };
		  })();
		}
		
		
	
			
		var DBG=0;
		

		














		$(document).ready(function() {
			$.maxZIndex = $.fn.maxZIndex = function(opt) {
				var def = { inc: 10, group: "*" };
				$.extend(def, opt);    
				var zmax = 0;
				$(def.group).each(function() {
					var cur = parseInt($(this).css('z-index'));
					zmax = cur > zmax ? cur : zmax;
				});
				if (!this.jquery) return zmax;
		
				return this.each(function() {
					zmax += def.inc;
					$(this).css("z-index", zmax);
				});
			}			
			if ($('#divLoad').length) $('#divLoad').remove();	
					
			
			/* elcon:4865704- */				var container520637 = document.getElementById("divVideo520637");
				if (container520637!=null) {
					player = flowplayer(container520637, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container520637.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo520637").css('backgroundImage','');
					  })
				}
/* elcon:4865712- */				var container520642 = document.getElementById("divVideo520642");
				if (container520642!=null) {
					player = flowplayer(container520642, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container520642.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo520642").css('backgroundImage','');
					  })
				}
/* elcon:4865713- */				var container520246 = document.getElementById("divVideo520246");
				if (container520246!=null) {
					player = flowplayer(container520246, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container520246.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo520246").css('backgroundImage','');
					  })
				}
/* elcon:4865714- */				var container519949 = document.getElementById("divVideo519949");
				if (container519949!=null) {
					player = flowplayer(container519949, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519949.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519949").css('backgroundImage','');
					  })
				}
/* elcon:4865715- */				var container520461 = document.getElementById("divVideo520461");
				if (container520461!=null) {
					player = flowplayer(container520461, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container520461.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo520461").css('backgroundImage','');
					  })
				}
/* elcon:4865716- */				var container520398 = document.getElementById("divVideo520398");
				if (container520398!=null) {
					player = flowplayer(container520398, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container520398.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo520398").css('backgroundImage','');
					  })
				}
/* elcon:4865717- *//* elcon:- */				var container519977 = document.getElementById("divVideo519977");
				if (container519977!=null) {
					player = flowplayer(container519977, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519977.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519977").css('backgroundImage','');
					  })
				}
/* elcon:- */				var container519844 = document.getElementById("divVideo519844");
				if (container519844!=null) {
					player = flowplayer(container519844, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519844.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519844").css('backgroundImage','');
					  })
				}
/* elcon:- */				var container519720 = document.getElementById("divVideo519720");
				if (container519720!=null) {
					player = flowplayer(container519720, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519720.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519720").css('backgroundImage','');
					  })
				}
/* elcon:- */				var container519666 = document.getElementById("divVideo519666");
				if (container519666!=null) {
					player = flowplayer(container519666, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519666.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519666").css('backgroundImage','');
					  })
				}
/* elcon:- */				var container519652 = document.getElementById("divVideo519652");
				if (container519652!=null) {
					player = flowplayer(container519652, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519652.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519652").css('backgroundImage','');
					  })
				}
/* elcon:- */				var container519461 = document.getElementById("divVideo519461");
				if (container519461!=null) {
					player = flowplayer(container519461, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519461.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519461").css('backgroundImage','');
					  })
				}
/* elcon:- */
/* elcon:- */				var container519398 = document.getElementById("divVideo519398");
				if (container519398!=null) {
					player = flowplayer(container519398, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519398.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519398").css('backgroundImage','');
					  })
				}
/* elcon:- */				var container519334 = document.getElementById("divVideo519334");
				if (container519334!=null) {
					player = flowplayer(container519334, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519334.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519334").css('backgroundImage','');
					  })
				}
/* elcon:- */				var container519283 = document.getElementById("divVideo519283");
				if (container519283!=null) {
					player = flowplayer(container519283, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519283.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519283").css('backgroundImage','');
					  })
				}
/* elcon:- */				var container519216 = document.getElementById("divVideo519216");
				if (container519216!=null) {
					player = flowplayer(container519216, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519216.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519216").css('backgroundImage','');
					  })
				}
/* elcon:- */				var container519173 = document.getElementById("divVideo519173");
				if (container519173!=null) {
					player = flowplayer(container519173, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519173.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519173").css('backgroundImage','');
					  })
				}
/* elcon:- */
/* elcon:- */				var container518950 = document.getElementById("divVideo518950");
				if (container518950!=null) {
					player = flowplayer(container518950, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container518950.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo518950").css('backgroundImage','');
					  })
				}
/* elcon:- */				var container518722 = document.getElementById("divVideo518722");
				if (container518722!=null) {
					player = flowplayer(container518722, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container518722.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo518722").css('backgroundImage','');
					  })
				}if (document.getElementById('wrapper_519977')) document.getElementById('wrapper_519977').style.borderTop='0';
/* elcon:4865719- */				var container520240 = document.getElementById("divVideo520240");
				if (container520240!=null) {
					player = flowplayer(container520240, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container520240.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo520240").css('backgroundImage','');
					  })
				}
/* elcon:4865720- */				var container519859 = document.getElementById("divVideo519859");
				if (container519859!=null) {
					player = flowplayer(container519859, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519859.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519859").css('backgroundImage','');
					  })
				}
/* elcon:4865721- */				var container520183 = document.getElementById("divVideo520183");
				if (container520183!=null) {
					player = flowplayer(container520183, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container520183.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo520183").css('backgroundImage','');
					  })
				}
/* elcon:4865722- */				var container519816 = document.getElementById("divVideo519816");
				if (container519816!=null) {
					player = flowplayer(container519816, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container519816.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo519816").css('backgroundImage','');
					  })
				}
/* elcon:4865723- */				var container412491 = document.getElementById("divVideo412491");
				if (container412491!=null) {
					player = flowplayer(container412491, {
						clip: {
  							autoplay: false
							}
						})
  						.on("hlsError", function (e, api, data) {
					    if (data.details === Hls.ErrorDetails.LEVEL_LOAD_TIMEOUT) {
					      api.trigger("error", [api, {code: 2}]);
					    }
					  }).on("error", function (e, api, err) {
					  	detail = container412491.querySelector(".fp-message");
					  	detail.innerHTML="<p style='font-family: arial; color: black; font-size: 11px; text-align: center'>No ha sido posible cargar el vídeo</h2>";
					  }).on("pause", function (e, api, err) {
					  	$("#divVideo412491").css('backgroundImage','');
					  })
				}
/* elcon:4865724- */		
			document.getElementById("usuario").addEventListener("keypress",verificar);
			function verificar(e) {
				if (e.key.match(/[0-9YINXTALZ]/i)===null) e.preventDefault();
			}
		

			// Activación y configuración básica de datepicker		
			$(function() {
				$.datepicker.regional['es'] = {
			        closeText: 'Cerrar',
			        prevText: 'Ant',
			        nextText: 'Sig',
			        currentText: 'Hoy',
			        monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
			        monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
			        dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
			        dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
			        dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sa'],
			        weekHeader: 'Sm',
			        dateFormat: 'dd-mm-yy',
			        firstDay: 1,
			        isRTL: false,
			        showMonthAfterYear: false,
			        yearSuffix: ''
			    };
			    $.datepicker.setDefaults($.datepicker.regional['es']);				
				annoIni=(new Date()).getFullYear()-100;
				annoFin=(new Date()).getFullYear()-16;			
			    $("#fe_nac").datepicker(
			    {			    	
					changeMonth: true,
			    	changeYear: true,
			      	yearRange: annoIni + ":" + annoFin 
			    });	
			});
			
			
			ga('create','UA-90253756-1','auto');ga('send','pageview');			
		});

		function get_cookie(cname) {				
               var allcookies = document.cookie;                             
               var cookiearray = allcookies.split(';');	               
               for (var s=0; s<cookiearray.length; s++) {				   	
                	var nombre = (cookiearray[s].split('=')[0]).trim();
					var valor = cookiearray[s].split('=')[1];					   
				  	if (nombre==cname) return valor;
               }
			   return "";
        }

		function check_cookie() {		
			var perfil = get_cookie('profile');
			var dir = "http://" + window.location.host;				
			var nom_opc = "Sevilla";
			nom_opc = nom_opc.replace(" ","_");
			if (perfil!='' && dir!=perfil) window.location.href = perfil + "/" + nom_opc;
			
			// Si no hay, generamos la cookie
			if (perfil == '') {			
				var exdate=new Date();
	   			exdate.setDate(exdate.getDate() + 2*365);
	    		var exp=";expires="+exdate.toUTCString();						
				// Indicamos el dominio para que no considere distintas las cookies según el subdominio
				document.cookie="profile=" + dir + exp + ";domain=ccoo.es";
			}
		}
		
		function callPlugin(event_id,data,opciones){		
			var insideIframe = window.top !== window.self;
			if (insideIframe) {
				parent.postMessage({
					event_id: event_id,
					data :data,
					opciones: opciones
				},
				'*');
			} else { 
				window.open(data, '_blank', opciones);				
			}
		}
		
		

		
		
			function showDivRec() {
				document.getElementById('divLogin').style.display = 'none';
				document.getElementById('divRec').style.display = 'block';
				document.getElementById('divRec2').style.display = 'none';
			}
			
			function showDivRec2() {
				document.getElementById('divLogin').style.display = 'none';
				document.getElementById('divRec').style.display = 'none';
				document.getElementById('divRec2').style.display = 'block';
			}		
		
			function loginSend() {	
				var firstError = "";
				debugger;	
				if ($('#usuario').val().trim()=='') {
					setValError('usuario','el usuario','R');
					firstError = "usuario";					
				}				
				else if ($('#usuario').val().trim().length!=8) {
					setValError('usuario','de usuario','E');
					firstError = "usuario";					
				}				
				else delValError('usuario');				
			
				if ($('#contrasena').val().trim()=='') {					
					setValError('contrasena','la contraseña','R');
					if (firstError=='') firstError = "contrasena";
				}
				else delValError('contrasena');
				
				if (firstError!='') {
					$('#'+firstError).focus();
					return false;
				}
				
				$.post('/cms.php?F:4865724&4846885', {fun:"dologin", usu: $('#usuario').val(), pas: hex_md5($('#contrasena').val()), origen: "", p: "", view: ""} ,					
					function(data) {
						eval(data);
					}
				).fail(function(xhr,status,error) {
					alert('Se ha producido un error al enviar los datos de validación');
				});				
			}
			
			function recPwd() {
				var origen = 'sevilla';
				var p = "166";
				var preApp = "";				
				var firstError = '';
				
				var fe_nac = $('#fe_nac').val();
				if (fe_nac.trim()=='') {					
					setValError('fe_nac','de la fecha de nacimiento','R');
					firstError = "fe_nac";
				}
				else 
					if (!esFecha(fe_nac)) {
						setValError('fe_nac','de la fecha de nacimiento','E');					
						if (firstError=='') firstError = "fe_nac";
					}
					else delValError('fe_nac');
				
				var dni = $('#dni').val();
				if (dni=='') {
					setValError('dni','el dni','R');
					if (firstError=='') firstError = "dni";
				} 					
				else delValError('dni');
			
				var email = $('#email').val().toLowerCase();
				if (email=='') {
					setValError('email','el correo electrónico','R');
					if (firstError=='') firstError = "email";
				} else
					if (!validarEmail(document.getElementById('email'))) {
						setValError('email','del correo electrónico','E');					
						if (firstError=='') firstError = "email";
					}
					else delValError('email');					

				if (firstError!='') {
					$('#' + firstError).focus();					
					return false;
				}				
				
				$.post("/cms.php?F:4865724&4846885", { fun: "recPwd", email: email, dni: dni, fe_nac: fe_nac, origen: origen, p: p, preApp: preApp} ,
					function(data) {
						//alert(data);															
						try {					
							eval(data);
						} catch(e) {
							alert('Error enviando correo de restablecimiento de contraseña: '+e.message);
						}
						}
					).fail(function(xhr,status,error) {
					alert('Error enviando datos: '+e.message);
					});
			}			
			
			function recPwd2() {							
				var origen = 'sevilla';
				var p = "166";
				var preApp = "";				
				var firstError = '';
				
				var dni = $('#dni2').val();	
				if (dni.trim()=='') {
					setValError('dni2','el dni','R');				
					firstError = "dni2";
				} else
					delValError('dni2');
				
				var nombre = $('#nombre2').val();
				if (nombre.trim()=='') {
					setValError('nombre2','el nombre','R');					
					if (firstError=='') firstError = "nombre2";
				}
				else delValError('nombre2');
			
				var email = $('#email2').val();
				if (email.trim()=='') {
					setValError('email2','el correo electrónico','R');
					if (firstError=='') firstError = "email2";
				} else
					if (!validarEmail(document.getElementById('email2'))) {
						setValError('email2','del correo electrónico','E');					
						if (firstError=='') firstError = "email2";
					}
					else delValError('email2');
					
				var mensaje = $('#mensaje2').val();	
				if (mensaje.trim()=='') {
					setValError('mensaje2','el mensaje','R');				
					if (firstError=='') firstError = "mensaje2";
				}
				else delValError('mensaje2');
				
				if (firstError!='') {
					$('#'+firstError).focus();					
					return false;
				}				
				
				$.post("/cms.php?F:4865724&4846885", { fun: "recPwd2", email: email, dni: dni, nombre: nombre, mensaje: mensaje, origen: origen, p: p, preApp: preApp} ,
					function(data) {										
						try {					
							eval(data);
						} catch(e) {
							alert('Error enviando correo de restablecimiento de contraseña: '+e.message);
						}
					}
				).fail(function(xhr,status,error) {
					alert('Error enviando datos: '+e.message);
				});								
			}
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();
		a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	</script>	
</head>		<body>
			<div class='cms_contenedor_principal'>
			 <div class='cms_contenedor'>
				
	  <!-- **CABECERA** -->
	<div class='headercontainer'>
	 <header class='width-wide'>
	 <!--[if lte IE 8]><div class='header'><![endif]-->

	  <div class='section group' id='1236374'>
		<div id='1236374_2161108' class='layout_span_col layout_span_12_of_12'>
		 <div id='1236374_2161108_4659828'>
			<div class='eC_menu_v010'>
				<div class='wrapper_000'>
					<div class='eC_img_v001'>
						<div class='wrapper_000'>
							<a href='http://www.ccoo.es' target='_blank'><img src='/cms/g/CSCCOO/menu/CMS_bandera_bg.png' alt='Web de CSCCOO'></a>
						</div>
					</div>
					<ul>
						<li><a href='https://ssl.ccoo.es/afiliacion'  target='_blank'><span class='icon icon_dim_32x32 icon_pos_v01_32x32 icon_name_looking5'></span><p  class='unaLinea'>Zona Afiliación</p></a></li><li><a href='https://afiliate.ccoo.es/afiliate/afiliate.htm'  target='_blank'><span class='icon icon_dim_32x32 icon_pos_v01_32x32 icon_name_clipboard45'></span><p  class='unaLinea'>Afíliate</p></a></li>
					</ul>
				</div>
			</div>			
		 </div>		 <div id='1236374_2161108_4659829'>
			<div class='eC_menu_v009'>
				<div class='wrapper_001'>
					<ul>
						<li><a href='https://andalucia.ccoo.es/Almeria'   target='_self' ><span>Almería</span></a></li><li><a href='https://andalucia.ccoo.es/Cadiz'   target='_self' ><span>Cádiz</span></a></li><li><a href='https://andalucia.ccoo.es/Cordoba'   target='_self' ><span>Córdoba</span></a></li><li><a href='https://andalucia.ccoo.es/Granada'   target='_self' ><span>Granada</span></a></li><li><a href='https://andalucia.ccoo.es/Huelva'   target='_self' ><span>Huelva</span></a></li><li><a href='https://andalucia.ccoo.es/Jaen'   target='_self' ><span>Jaén</span></a></li><li><a href='https://andalucia.ccoo.es/Malaga'   target='_self' ><span>Málaga</span></a></li><li><a href='https://andalucia.ccoo.es/Sevilla' class='selected'  target='_self' ><span>Sevilla</span></a></li><li><a href='https://andalucia.ccoo.es/SECTORES'   target='_self' ><span>SECTORES</span></a></li>	
					</ul>
				</div>
			</div>					
		 </div>
		</div>
	  </div>

	  <div class='section group' id='1236375'>
		<div id='1236375_2161109' class='layout_span_col layout_span_12_of_12'>
		 <div id='1236375_2161109_4659830'>
<div class='layout_split_g12_wrapper'><div class='layout_split_g12_col layout_split_g12_12_of_12'><div class='eC_img_v001'><div class='wrapper_000'>		<img src='/6764a3c77962f6c98d77adab1b7aa7b9000057.jpg' id='img4659830' title="BLANCO" alt="BLANCO" class='elcon_imagen' style=''></div></div></div></div>
		 </div>
		</div>
	  </div>

	  <div class='section group' id='1236376'>
		<div id='1236376_2161110' class='layout_span_col layout_span_6_of_12'>
		 <div id='1236376_2161110_4659831'>
<div class='layout_split_g12_wrapper'><div class='layout_split_g12_col layout_split_g12_12_of_12'><div class='eC_img_v001'><div class='wrapper_000'>		<a href="/Inicio" target='_self'>		<img src='/cc13bb5bfc5bb2c91517061c2bab9493000057.jpg' id='img4659831' title="Cabecera web CCOO Andalucía" alt="Cabecera web CCOO Andalucía" class='elcon_imagen' style=''></a></div></div></div></div>
		 </div>
		</div>
		<div class='calle'></div>
		<div id='1236376_2161111' class='layout_span_col layout_span_6_of_12'>
		 <div id='1236376_2161111_4659832'>
			<div class='eC_menu_v013'>
				<div class='eC_menu_v013_wrapper'>
					<div class='wrapper_000'>
						<ul>
							<li><a href='https://www.flickr.com/photos/ccooandalucia'  target='_blank'><p ><span class='icon icon_dim_20x20 icon_pos_v01_20x20 icon_name_cameras2'></span>Galerías</p></a></li><li><a href='https://andalucia.ccoo.es/Buscador'  target='_self'><p ><span class='icon icon_dim_20x20 icon_pos_v01_20x20 icon_name_search92'></span>Buscador</p></a></li><li><a href='https://andalucia.ccoo.es/13_Congreso'  target='_self'><p ><span class='icon icon_dim_20x20 icon_pos_v01_20x20 icon_name_network11'></span>13 Congreso</p></a></li><li class='auto'><div class='eC_rSWidget_v005'><div class='wrapper_000'><ul><li><a href='/rss.php' class='rss' target='rss' title='Canales RSS'></a></li><li><a href='http://www.facebook.com/ccoo.andalucia' class='face' target='Facebook' title='Facebook'></a></li><li><a href='https://twitter.com/ccooandalucia' class='twit' target='Twitter' title='Twitter'></a></li><li><a href='https://www.youtube.com/user/wwwandaluciaccooes' class='yout' target='Youtube' title='Youtube'></a></li><li><a href='https://www.instagram.com/ccooandalucia/' class='inst' target='Instagram' title='Instagram'></a></li></ul></div></div></li>
						</ul>
					</div>
				</div>
			</div>
		 </div>
		</div>
	  </div>

	  <div class='section group' id='1236377'>
		<div id='1236377_2161112' class='layout_span_col layout_span_12_of_12'>
		 <div id='1236377_2161112_4659833'>
<div class='layout_split_g12_wrapper'><div class='layout_split_g12_col layout_split_g12_12_of_12'><div class='eC_img_v001'><div class='wrapper_000'>		<a href="https://andalucia.ccoo.es/Campanas&opc_id=7097a92146968f7c745cea978517644b" target='_self'>		<img src='/37c35ff3dd3f942a629231a194c5f71b000057.gif' id='img4659833' title="Actuar es Esencial | El Valor de lo Público" alt="Actuar es Esencial | El Valor de lo Público" class='elcon_imagen' style=''></a></div></div></div></div>
		 </div>
		</div>
	  </div>

	  <div class='section group' id='1236378'>
		<div id='1236378_2161113' class='layout_span_col layout_span_12_of_12'>
		 <div id='1236378_2161113_4659834'>
			<div class='eC_menu_v009'>
				<div class='wrapper_001'>
					<ul>
						<li><a href='https://andalucia.ccoo.es/Inicio'   target='_self' ><span>Inicio</span></a></li><li><a href='https://andalucia.ccoo.es/Areas_tematicas'   target='_self' ><span>Areas temáticas</span></a></li><li><a href='https://andalucia.ccoo.es/Nuestro_trabajo'   target='_self' ><span>Nuestro trabajo</span></a></li><li><a href='https://andalucia.ccoo.es/Provincias'   target='_self' ><span>Provincias</span></a></li><li><a href='http://andalucia.ccoo.es/Archivo%C2%B7documental/Confederacion_andaluza/Estatutos_y_Documentos_de_Resolucion'   target='_self' ><span>Archivo documental</span></a></li><li><a href='http://andalucia.ccoo.es/Archivo%C2%B7documental/Confederacion_andaluza/Portal_de_Transparencia'   target='_self' ><span>Transparencia</span></a></li><li><a href='https://andalucia.ccoo.es/Videos'   target='_self' ><span>Videos</span></a></li><li><a href='http://servicios.ccoo.es/servicios/'   target='_blank' ><span>Servicios</span></a></li><li><a href='https://andalucia.ccoo.es/Conocenos'   target='_self' ><span>Conócenos</span></a></li><li><a href='https://andalucia.ccoo.es/Contacta'   target='_self' ><span>Contacta</span></a></li>	
					</ul>
				</div>
			</div>					
		 </div>
		</div>
	  </div>
			<!-- **FIN CABECERA** -->
<!--[if lte IE 8]></div><![endif]--></header>
			<!-- **CABECERA MOVIL** -->
<header class="width-narrow stretch-height"> <!--[if lte IE 8]><div class="header width-narrow"><![endif]-->

	  <div class='section group' id='1022945'>
		<div id='1022945_1788469' class='layout_span_col layout_span_12_of_12'>
		 <div id='1022945_1788469_3816798'>
			<div id="st-container" class="st-container st-effect-1">
				<div class="st-menu st-effect-1 stretch-height">			
						<div id="tabs" class="tabs stretch-height">
							<nav>
								<ul>
									<li class = 'tab-current'><a href='#section-1'><span class='icon icon_dim_32x32 icon_pos_v01_32x32 icon_name_home143'></span></a></li><li ><a href='#section-2'><span class='icon icon_dim_32x32 icon_pos_v01_32x32 icon_name_book201'></span></a></li><li ><a href='#section-3'><span class='icon icon_dim_32x32 icon_pos_v01_32x32 icon_name_folder207'></span></a></li><li ><a href='#section-4'><span class='icon icon_dim_32x32 icon_pos_v01_32x32 icon_name_add170'></span></a></li>
									<!--<li class=""><a href="#section-5"><span class="icon icon_dim_32x32 icon_pos_v01_32x32 icon_name_settings47"></span></a></li>-->
								</ul>
							</nav>
			
							<div class="content">
												<section id="section-1" class = 'content-current'>
					<ul class="ul_menu_sec-1">
						<li>
							<span>Inicio</span>											
							<ul><li id = 'li216_923924'><a href='https://andalucia.ccoo.es/Inicio'   target='_self'> Inicio</a></li><li id = 'li216_923925'><a href='https://andalucia.ccoo.es/Areas_tematicas'   target='_self'> Areas temáticas</a></li><li id = 'li216_923926'><a href='https://andalucia.ccoo.es/Nuestro_trabajo'   target='_self'> Nuestro trabajo</a></li><li id = 'li216_923927'><a href='https://andalucia.ccoo.es/Provincias'   target='_self'> Provincias</a></li>					<li id = 'li216_923928'>
						<a href='http://andalucia.ccoo.es/Archivo%C2%B7documental/Confederacion_andaluza/Estatutos_y_Documentos_de_Resolucion' >
							
							Archivo documental 
							<span id = 'arrow216_923928' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_923928').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_923928').className=''; event.preventDefault();}"></span>
						</a>							<ul>					<li id = 'li216_923929'>
						<a href='javascript:return false' >
							
							Confederación andaluza 
							<span id = 'arrow216_923929' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_923929').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_923929').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_923930'><a href='https://andalucia.ccoo.es/Archivo·documental/Confederacion_andaluza/Boletines'   target='_self'> Boletines</a></li><li id = 'li216_923931'><a href='https://andalucia.ccoo.es/Archivo·documental/Confederacion_andaluza/Comparecencias_parlamentarias'   target='_self'> Comparecencias parlamentarias</a></li><li id = 'li216_923932'><a href='https://andalucia.ccoo.es/Archivo·documental/Confederacion_andaluza/Documentos_congresuales'   target='_self'> Documentos congresuales</a></li><li id = 'li216_923933'><a href='https://andalucia.ccoo.es/Archivo·documental/Confederacion_andaluza/Estatutos_y_Documentos_de_Resolucion'   target='_self'> Estatutos y Documentos de Resolución</a></li><li id = 'li216_923934'><a href='https://andalucia.ccoo.es/Archivo·documental/Confederacion_andaluza/Portal_de_Transparencia'   target='_self'> Portal de Transparencia</a></li><li id = 'li216_923935'><a href='http://www.biblioteca.andalucia.ccoo.es/'   target='_blank'> Biblioteca Estudios y Cooperación</a></li><li id = 'li216_923936'><a href='http://tusaludnoestaennomina.com/documentacion/'   target='_blank'> Biblioteca Prevención Riesgos</a></li><li id = 'li216_923937'><a href='http://www.ccoo.es/Publicaciones%C2%B7y%20documentos/Confederacion/Gaceta_Sindical_Digital'   target='_blank'> Biblioteca Confederal</a></li><li id = 'li216_923938'><a href='http://www.ccoo.es/cms.php?cd_cms_pag=12855&cd_cms_elcon_from=15380&cd_cms_elconmaster_to=37&cd_cms_conte=28736&opc_id=2899eca63cd415182a14b0ea26cd5d2t&opc_id_prin=2f6265f7450466813ea62da04a9e99d8'   target='_blank'> Gaceta Sindical Digital</a></li><li id = 'li216_923939'><a href='http://www.ccoo.es/Publicaciones%C2%B7y_documentos/Confederaci%C3%B3n/Gaceta_Sindical._Reflexi%C3%B3n_y_Debate'   target='_blank'> Gaceta Sindical - Reflexión y debate</a></li><li id = 'li216_923940'><a href='https://andalucia.ccoo.es/Archivo·documental/Confederacion_andaluza/Estudios_e_Informes'   target='_self'> Estudios e Informes</a></li><li id = 'li216_923941'><a href='https://andalucia.ccoo.es/Archivo·documental/Confederacion_andaluza/Acuerdos'   target='_self'> Acuerdos</a></li><li id = 'li216_923942'><a href='https://andalucia.ccoo.es/Archivo·documental/Confederacion_andaluza/Tarifas_Servicios_Juridicos'   target='_self'> Tarifas Servicios Jurídicos</a></li></ul></li>					<li id = 'li216_923943'>
						<a href='javascript:return false' >
							
							Identidad Corporativa 
							<span id = 'arrow216_923943' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_923943').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_923943').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_923944'><a href='https://andalucia.ccoo.es/Archivo·documental/Identidad_Corporativa/Manual_grafico'   target='_self'> Manual gráfico</a></li></ul></li>					<li id = 'li216_923946'>
						<a href='javascript:return false' >
							
							Campañas informativas 
							<span id = 'arrow216_923946' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_923946').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_923946').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_923947'><a href='https://andalucia.ccoo.es/Archivo·documental/Campanas_informativas/Acredita_2017'   target='_self'> Acredita 2017</a></li><li id = 'li216_923948'><a href='https://andalucia.ccoo.es/Archivo·documental/Campanas_informativas/Comercio_andaluz'   target='_self'> Comercio andaluz</a></li><li id = 'li216_923949'><a href='https://andalucia.ccoo.es/Archivo·documental/Campanas_informativas/Encuentros_3º_sector_ONGs'   target='_self'> Encuentros 3º sector ONGs</a></li><li id = 'li216_923950'><a href='https://andalucia.ccoo.es/Archivo·documental/Campanas_informativas/Financiacion_autonomica'   target='_self'> Financiación autonómica</a></li><li id = 'li216_923951'><a href='https://andalucia.ccoo.es/Archivo·documental/Campanas_informativas/No_al_CETA'   target='_self'> No al CETA</a></li></ul></li>					<li id = 'li216_923952'>
						<a href='javascript:return false' >
							
							Publicaciones por Área 
							<span id = 'arrow216_923952' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_923952').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_923952').className=''; event.preventDefault();}"></span>
						</a>							<ul>					<li id = 'li216_923953'>
						<a href='https://andalucia.ccoo.es/Archivo·documental/Publicaciones_por_Area/Accion_Sindical' >
							
							Acción Sindical 
							<span id = 'arrow216_923953' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_923953').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_923953').className=''; event.preventDefault();}"></span>
						</a>							<ul></ul></li><li id = 'li216_923957'><a href='https://andalucia.ccoo.es/Archivo·documental/Publicaciones_por_Area/Ensenanza'   target='_self'> Enseñanza</a></li><li id = 'li216_923958'><a href='https://andalucia.ccoo.es/Archivo·documental/Publicaciones_por_Area/Empleo'   target='_self'> Empleo</a></li><li id = 'li216_923959'><a href='https://andalucia.ccoo.es/Archivo·documental/Publicaciones_por_Area/Internacional'   target='_self'> Internacional</a></li><li id = 'li216_923960'><a href='https://andalucia.ccoo.es/Archivo·documental/Publicaciones_por_Area/Juventud'   target='_self'> Juventud</a></li>					<li id = 'li216_923961'>
						<a href='https://andalucia.ccoo.es/Archivo·documental/Publicaciones_por_Area/Medio_Ambiente' >
							
							Medio Ambiente 
							<span id = 'arrow216_923961' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_923961').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_923961').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_923962'><a href='https://andalucia.ccoo.es/Archivo·documental/Publicaciones_por_Area/Medio_Ambiente/Otros_documentos'   target='_self'> Otros documentos</a></li></ul></li><li id = 'li216_923963'><a href='https://andalucia.ccoo.es/Archivo·documental/Publicaciones_por_Area/Mujer'   target='_self'> Mujer</a></li><li id = 'li216_923965'><a href='https://andalucia.ccoo.es/Archivo·documental/Publicaciones_por_Area/Politicas_Sociales_y_Migraciones'   target='_self'> Políticas Sociales y Migraciones</a></li><li id = 'li216_923966'><a href='https://andalucia.ccoo.es/Archivo·documental/Publicaciones_por_Area/Salud_Laboral'   target='_self'> Salud Laboral</a></li><li id = 'li216_923967'><a href='https://andalucia.ccoo.es/Archivo·documental/Publicaciones_por_Area/Sanidad'   target='_self'> Sanidad</a></li></ul></li>					<li id = 'li216_923968'>
						<a href='javascript:return false' >
							
							Legislación 
							<span id = 'arrow216_923968' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_923968').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_923968').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_923969'><a href='https://andalucia.ccoo.es/Archivo·documental/Legislacion/Legislacion_laboral'   target='_self'> Legislación laboral</a></li><li id = 'li216_923970'><a href='https://www.boe.es/buscar/act.php?id=BOE-A-2007-5825'   target='_blank'> Estatuto de Autonomía de Andalucía</a></li><li id = 'li216_923971'><a href='https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229'   target='_blank'> Constitución Española</a></li><li id = 'li216_923972'><a href='https://www.boe.es/buscar/act.php?id=BOE-A-2015-11430&p=20151024&tn=2'   target='_blank'> Estatuto de los Trabajadores</a></li><li id = 'li216_923973'><a href='https://www.boe.es/buscar/act.php?id=BOE-A-1985-16660'   target='_blank'> Ley Orgánica de Libertad Sindical</a></li><li id = 'li216_923974'><a href='http://guiadeltrabajador.ccoo.es/libros/guiadte/bienvenida.do'   target='_blank'> Guía de derechos de los trabajadores</a></li><li id = 'li216_923975'><a href='https://andalucia.ccoo.es/Archivo·documental/Legislacion/Sentencias_sobre_Igualdad'   target='_self'> Sentencias sobre Igualdad</a></li></ul></li>					<li id = 'li216_923976'>
						<a href='javascript:return false' >
							
							Manifiestos 
							<span id = 'arrow216_923976' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_923976').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_923976').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_923977'><a href='https://andalucia.ccoo.es/Archivo·documental/Manifiestos/Por_Andalucia'   target='_self'> Por Andalucía</a></li><li id = 'li216_923978'><a href='https://andalucia.ccoo.es/Archivo·documental/Manifiestos/25N_contra_la_violencia_de_genero'   target='_self'> 25N contra la violencia de género</a></li><li id = 'li216_923979'><a href='https://andalucia.ccoo.es/Archivo·documental/Manifiestos/Compromiso_Social_por_el_Progreso'   target='_self'> Compromiso Social por el Progreso</a></li><li id = 'li216_923980'><a href='https://andalucia.ccoo.es/Archivo·documental/Manifiestos/Pensiones_dignas'   target='_self'> Pensiones dignas</a></li></ul></li></ul></li><li id = 'li216_923982'><a href='http://andalucia.ccoo.es/Archivo%C2%B7documental/Confederacion_andaluza/Portal_de_Transparencia'   target='_self'> Transparencia</a></li>					<li id = 'li216_923983'>
						<a href='https://andalucia.ccoo.es/Videos' >
							
							Videos 
							<span id = 'arrow216_923983' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_923983').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_923983').className=''; event.preventDefault();}"></span>
						</a>							<ul>					<li id = 'li216_923984'>
						<a href='https://andalucia.ccoo.es/Videos/Videos' >
							
							Vídeos 
							<span id = 'arrow216_923984' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_923984').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_923984').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_923985'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Accion_Sindical'   target='_self'> Videos Acción Sindical</a></li><li id = 'li216_923986'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Agroalimentaria'   target='_self'> Videos Agroalimentaria</a></li><li id = 'li216_923987'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Archivo_Historico'   target='_self'> Videos Archivo Histórico</a></li><li id = 'li216_923988'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Asambleas'   target='_self'> Videos Asambleas</a></li><li id = 'li216_923989'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Campanas'   target='_self'> Videos Campañas</a></li><li id = 'li216_923990'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Congresos'   target='_self'> Videos Congresos</a></li><li id = 'li216_923991'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Empleo'   target='_self'> Videos Empleo</a></li><li id = 'li216_923992'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Entrevistas_y_debates'   target='_self'> Videos Entrevistas y debates</a></li><li id = 'li216_923993'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Formacion_y_Ensenanza'   target='_self'> Videos Formación y Enseñanza</a></li><li id = 'li216_923994'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Huelga_General_29M'   target='_self'> Videos Huelga General 29M</a></li><li id = 'li216_923995'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Huelga_General_29S'   target='_self'> Videos Huelga General 29S</a></li><li id = 'li216_923996'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Internacional'   target='_self'> Videos Internacional</a></li><li id = 'li216_923997'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Juventud'   target='_self'> Videos Juventud</a></li><li id = 'li216_923998'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Medio_Ambiente'   target='_self'> Videos Medio Ambiente</a></li><li id = 'li216_923999'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Movilizaciones'   target='_self'> Videos Movilizaciones</a></li><li id = 'li216_924000'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Mujer'   target='_self'> Videos Mujer</a></li><li id = 'li216_924001'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Politica_Social'   target='_self'> Videos Política Social</a></li><li id = 'li216_924002'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Ruedas_de_Prensa'   target='_self'> Videos Ruedas de Prensa</a></li><li id = 'li216_924003'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Salud_Laboral'   target='_self'> Videos Salud Laboral</a></li><li id = 'li216_924004'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Sanidad'   target='_self'> Videos Sanidad</a></li><li id = 'li216_924005'><a href='https://andalucia.ccoo.es/Videos/Videos/Videos_Sevilla'   target='_self'> Videos Sevilla</a></li></ul></li></ul></li><li id = 'li216_924007'><a href='http://servicios.ccoo.es/servicios/'   target='_blank'> Servicios</a></li>					<li id = 'li216_924008'>
						<a href='https://andalucia.ccoo.es/Conocenos' >
							
							Conócenos 
							<span id = 'arrow216_924008' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_924008').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_924008').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_924009'><a href='https://andalucia.ccoo.es/Conocenos/Comision_Ejecutiva'   target='_self'> Comisión Ejecutiva</a></li><li id = 'li216_924010'><a href='http://andalucia.ccoo.es/b9ecfcc71f52c0c4fc066e055d5ab34e000057.pdf'   target='_blank'> Documentos de Resolución</a></li><li id = 'li216_924011'><a href='http://andalucia.ccoo.es/1de1f2d4ea70e5300322e6d806f955a8000057.pdf'   target='_blank'> Estatutos</a></li><li id = 'li216_924012'><a href='https://andalucia.ccoo.es/Conocenos/¿Quienes_somos*'   target='_self'> ¿Quiénes somos*</a></li><li id = 'li216_924013'><a href='https://andalucia.ccoo.es/Conocenos/Nuestra_historia'   target='_self'> Nuestra historia</a></li><li id = 'li216_924014'><a href='https://andalucia.ccoo.es/Conocenos/Uniones_Provinciales'   target='_self'> Uniones Provinciales</a></li><li id = 'li216_924015'><a href='https://andalucia.ccoo.es/Conocenos/Sectores'   target='_self'> Sectores</a></li><li id = 'li216_924016'><a href='https://andalucia.ccoo.es/Conocenos/Fundaciones'   target='_self'> Fundaciones</a></li>					<li id = 'li216_924017'>
						<a href='javascript:return false' >
							
							Proceso congresual 2016-2017 
							<span id = 'arrow216_924017' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_924017').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_924017').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_924018'><a href='https://andalucia.ccoo.es/Conocenos/Proceso_congresual_2016-2017/¿En_que_consiste*'   target='_self'> ¿En qué consiste*</a></li><li id = 'li216_924019'><a href='http://andalucia.ccoo.es/Archivo%C2%B7documental/Confederacion_andaluza/Documentos_congresuales'   target='_blank'> Documentos Congresuales</a></li></ul></li>					<li id = 'li216_924021'>
						<a href='javascript:return false' >
							
							Identidad Corporativa 
							<span id = 'arrow216_924021' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_924021').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_924021').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_924022'><a href='http://andalucia.ccoo.es/864d3cc0a1e496075b8a966040fe7b1a000057.pdf'   target='_blank'> Manual gráfico</a></li><li id = 'li216_924023'><a href='https://www.ivoox.com/sintonia-corporativa-ccoo-andalucia-audios-mp3_rf_1226934_1.html'   target='_blank'> Sintonía CCOO Andalucía</a></li></ul></li><li id = 'li216_924024'><a href='http://www.ccoo.es/'   target='_blank'> Confederación CCOO</a></li></ul></li>					<li id = 'li216_924025'>
						<a href='https://andalucia.ccoo.es/Contacta' >
							<span class='icon icon_dim_20x20 icon_pos_v01_20x20 icon_name_round41'></span>
							Contacta 
							<span id = 'arrow216_924025' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_924025').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_924025').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_924026'><a href='https://andalucia.ccoo.es/Contacta/Escribenos'   target='_self'> Escríbenos</a></li><li id = 'li216_924027'><a href='https://andalucia.ccoo.es/Contacta/Llamanos'   target='_self'> Llámanos</a></li><li id = 'li216_924028'><a href='http://andalucia.ccoo.es/862f4febde7d8aea03151fcf84559164000057.pdf'   target='_blank'> Agenda completa</a></li>					<li id = 'li216_924029'>
						<a href='javascript:return false' >
							
							Uniones Provinciales 
							<span id = 'arrow216_924029' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_924029').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_924029').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_924030'><a href='https://andalucia.ccoo.es/Contacta/Uniones_Provinciales/CCOO_Almeria'   target='_self'> CCOO Almería</a></li><li id = 'li216_924031'><a href='https://andalucia.ccoo.es/Contacta/Uniones_Provinciales/CCOO_Cadiz'   target='_self'> CCOO Cádiz</a></li><li id = 'li216_924032'><a href='https://andalucia.ccoo.es/Contacta/Uniones_Provinciales/CCOO_Cordoba'   target='_self'> CCOO Córdoba</a></li><li id = 'li216_924033'><a href='https://andalucia.ccoo.es/Contacta/Uniones_Provinciales/CCOO_Granada'   target='_self'> CCOO Granada</a></li><li id = 'li216_924034'><a href='https://andalucia.ccoo.es/Contacta/Uniones_Provinciales/CCOO_Huelva'   target='_self'> CCOO Huelva</a></li><li id = 'li216_924035'><a href='https://andalucia.ccoo.es/Contacta/Uniones_Provinciales/CCOO_Jaen'   target='_self'> CCOO Jaén</a></li><li id = 'li216_924036'><a href='https://andalucia.ccoo.es/Contacta/Uniones_Provinciales/CCOO_Malaga'   target='_self'> CCOO Málaga</a></li><li id = 'li216_924037'><a href='https://andalucia.ccoo.es/Contacta/Uniones_Provinciales/CCOO_Sevilla'   target='_self'> CCOO Sevilla</a></li></ul></li>					<li id = 'li216_924038'>
						<a href='javascript:return false' >
							
							Sectores 
							<span id = 'arrow216_924038' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li216_924038').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li216_924038').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li216_924039'><a href='https://andalucia.ccoo.es/Contacta/Sectores/Construccion_y_Servicios'   target='_self'> Construcción y Servicios</a></li><li id = 'li216_924040'><a href='https://andalucia.ccoo.es/Contacta/Sectores/Ensenanza'   target='_self'> Enseñanza</a></li><li id = 'li216_924041'><a href='https://andalucia.ccoo.es/Contacta/Sectores/Industria'   target='_self'> Industria</a></li><li id = 'li216_924042'><a href='https://andalucia.ccoo.es/Contacta/Sectores/Pensionistas_y_Jubilados'   target='_self'> Pensionistas y Jubilados</a></li><li id = 'li216_924043'><a href='https://andalucia.ccoo.es/Contacta/Sectores/Sanidad'   target='_self'> Sanidad</a></li><li id = 'li216_924044'><a href='https://andalucia.ccoo.es/Contacta/Sectores/Servicios'   target='_self'> Servicios</a></li><li id = 'li216_924045'><a href='https://andalucia.ccoo.es/Contacta/Sectores/Servicios_a_la_Ciudadania'   target='_self'> Servicios a la Ciudadanía</a></li></ul></li></ul></li></ul>
						</li>
					</ul>
				</section>				<section id="section-2" >
					<ul class="ul_menu_sec-2">
						<li>
							<span>Areas</span>											
							<ul>					<li id = 'li233_523889'>
						<a href='https://andalucia.ccoo.es/Accion_Sindical' >
							
							Acción Sindical 
							<span id = 'arrow233_523889' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li233_523889').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li233_523889').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li233_523890'><a href='/308357c945455d90191dbe90a50aca56000057.pdf'   target='_blank'> Ley Reordenación del sector público</a></li></ul></li><li id = 'li233_523891'><a href='https://andalucia.ccoo.es/Empleo'   target=''> Empleo</a></li>					<li id = 'li233_523892'>
						<a href='https://andalucia.ccoo.es/Politica_Institucional' >
							
							Política Institucional 
							<span id = 'arrow233_523892' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li233_523892').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li233_523892').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li233_523893'><a href='/Archivo%C2%B7documental/Manifiestos/Compromiso_Social_por_el_Progreso'   target='_blank'> Manifiestos</a></li><li id = 'li233_523894'><a href='https://andalucia.ccoo.es/Politica_Institucional/Organizaciones_de_la_plataforma'   target='_self'> Organizaciones de la plataforma</a></li></ul></li><li id = 'li233_523895'><a href='https://andalucia.ccoo.es/Mujer'   target=''> Mujer</a></li>					<li id = 'li233_523896'>
						<a href='https://andalucia.ccoo.es/Juventud' >
							
							Juventud 
							<span id = 'arrow233_523896' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li233_523896').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li233_523896').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li233_523897'><a href='https://andalucia.ccoo.es/Juventud/Ofertas_en_campamentos_y_albergues'   target='_self'><span class='icon icon_dim_20x20 icon_pos_v01_20x20 icon_name_network11'></span> Ofertas en campamentos y albergues</a></li><li id = 'li233_523898'><a href='https://andalucia.ccoo.es/Juventud/Verano_en_Albergues'   target='_self'> Verano en Albergues</a></li><li id = 'li233_523899'><a href='https://www.inturjoven.com/'   target='_blank'><span class='icon icon_dim_20x20 icon_pos_v01_20x20 icon_name_network11'></span> Web oficial Inturjoven</a></li></ul></li><li id = 'li233_523900'><a href='https://andalucia.ccoo.es/Medio_Ambiente'   target=''> Medio Ambiente</a></li><li id = 'li233_523901'><a href='https://andalucia.ccoo.es/Salud_Laboral'   target=''> Salud Laboral</a></li>					<li id = 'li233_523902'>
						<a href='https://andalucia.ccoo.es/Politicas_Sociales_y_Migraciones' >
							
							Políticas Sociales y Migraciones 
							<span id = 'arrow233_523902' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li233_523902').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li233_523902').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li233_523903'><a href='https://andalucia.ccoo.es/Politicas_Sociales_y_Migraciones/¿Buscas_trabajo_en_el_extranjero*'   target='_self'> ¿Buscas trabajo en el extranjero*</a></li><li id = 'li233_523904'><a href='https://andalucia.ccoo.es/Politicas_Sociales_y_Migraciones/Denuncia_la_explotacion_laboral_si...'   target='_self'> Denuncia la explotación laboral si...</a></li></ul></li><li id = 'li233_523905'><a href='https://andalucia.ccoo.es/Formacion'   target=''> Formación</a></li></ul>
						</li>
					</ul>
				</section>				<section id="section-3" >
					<ul class="ul_menu_sec-3">
						<li>
							<span>Provincias</span>											
							<ul>					<li id = 'li234_903975'>
						<a href='https://andalucia.ccoo.es/Almeria' >
							
							Almería 
							<span id = 'arrow234_903975' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li234_903975').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li234_903975').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li234_903976'><a href='https://andalucia.ccoo.es/Almeria/Breve_historia'   target='_self'> Breve historia</a></li><li id = 'li234_903978'><a href='https://andalucia.ccoo.es/Almeria/Encuentra_tu_sindicato'   target='_self'> Encuentra tu sindicato</a></li><li id = 'li234_903979'><a href='/Almeria'   target='_self'> Ver Noticias Almería</a></li></ul></li>					<li id = 'li234_903980'>
						<a href='https://andalucia.ccoo.es/Cadiz' >
							
							Cádiz 
							<span id = 'arrow234_903980' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li234_903980').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li234_903980').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li234_903981'><a href='https://andalucia.ccoo.es/Cadiz/Breve_historia'   target='_self'> Breve historia</a></li><li id = 'li234_903982'><a href='https://andalucia.ccoo.es/Cadiz/Comision_Ejecutiva'   target='_self'> Comisión Ejecutiva</a></li><li id = 'li234_903983'><a href='https://andalucia.ccoo.es/Cadiz/Encuentra_tu_sindicato'   target='_self'> Encuentra tu sindicato</a></li><li id = 'li234_903984'><a href='/Cadiz'   target='_self'> Ver Noticias Cádiz</a></li></ul></li>					<li id = 'li234_903985'>
						<a href='https://andalucia.ccoo.es/Cordoba' >
							
							Córdoba 
							<span id = 'arrow234_903985' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li234_903985').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li234_903985').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li234_903986'><a href='https://andalucia.ccoo.es/Cordoba/Breve_historia'   target='_self'> Breve historia</a></li><li id = 'li234_903987'><a href='https://andalucia.ccoo.es/Cordoba/Comision_Ejecutiva'   target='_self'> Comisión Ejecutiva</a></li><li id = 'li234_903988'><a href='https://andalucia.ccoo.es/Cordoba/Encuentra_tu_sindicato'   target='_self'> Encuentra tu sindicato</a></li><li id = 'li234_903989'><a href='/Cordoba'   target='_self'> Ver Noticias Córdoba</a></li></ul></li>					<li id = 'li234_903990'>
						<a href='https://andalucia.ccoo.es/Granada' >
							
							Granada 
							<span id = 'arrow234_903990' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li234_903990').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li234_903990').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li234_903991'><a href='https://andalucia.ccoo.es/Granada/Breve_historia'   target='_self'> Breve historia</a></li><li id = 'li234_903992'><a href='https://andalucia.ccoo.es/Granada/Comision_Ejecutiva'   target='_self'> Comisión Ejecutiva</a></li><li id = 'li234_903993'><a href='https://andalucia.ccoo.es/Granada/Encuentra_tu_sindicato'   target='_self'> Encuentra tu sindicato</a></li><li id = 'li234_903994'><a href='/Granada'   target='_self'> Ver Noticias Granada</a></li></ul></li>					<li id = 'li234_903995'>
						<a href='https://andalucia.ccoo.es/Huelva' >
							
							Huelva 
							<span id = 'arrow234_903995' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li234_903995').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li234_903995').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li234_903996'><a href='https://andalucia.ccoo.es/Huelva/Breve_historia'   target='_self'> Breve historia</a></li><li id = 'li234_903998'><a href='https://andalucia.ccoo.es/Huelva/Encuentra_tu_sindicato'   target='_self'> Encuentra tu sindicato</a></li><li id = 'li234_903999'><a href='/Huelva'   target='_self'> Ver Noticias Huelva</a></li></ul></li>					<li id = 'li234_904000'>
						<a href='https://andalucia.ccoo.es/Jaen' >
							
							Jaén 
							<span id = 'arrow234_904000' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li234_904000').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li234_904000').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li234_904001'><a href='https://andalucia.ccoo.es/Jaen/Breve_historia'   target='_self'> Breve historia</a></li><li id = 'li234_904002'><a href='https://andalucia.ccoo.es/Jaen/Comision_Ejecutiva'   target='_self'> Comisión Ejecutiva</a></li><li id = 'li234_904003'><a href='https://andalucia.ccoo.es/Jaen/Encuentra_tu_sindicato'   target='_self'> Encuentra tu sindicato</a></li><li id = 'li234_904004'><a href='/Jaen'   target='_self'> Ver Noticias Jaen</a></li></ul></li>					<li id = 'li234_904005'>
						<a href='https://andalucia.ccoo.es/Malaga' >
							
							Málaga 
							<span id = 'arrow234_904005' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li234_904005').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li234_904005').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li234_904006'><a href='https://andalucia.ccoo.es/Malaga/Breve_historia'   target='_self'> Breve historia</a></li><li id = 'li234_904007'><a href='https://andalucia.ccoo.es/Malaga/Comision_Ejecutiva'   target='_self'> Comisión Ejecutiva</a></li><li id = 'li234_904008'><a href='https://andalucia.ccoo.es/Malaga/Encuentra_tu_sindicato'   target='_self'> Encuentra tu sindicato</a></li><li id = 'li234_904009'><a href='/Malaga'   target='_self'> Ver Noticias Málaga</a></li></ul></li>					<li id = 'li234_904010'>
						<a href='https://andalucia.ccoo.es/Sevilla' class='active'>
							
							Sevilla 
							<span id = 'arrow234_904010' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li234_904010').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li234_904010').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li234_904011'><a href='https://andalucia.ccoo.es/Sevilla/Breve_historia'   target='_self'> Breve historia</a></li><li id = 'li234_904012'><a href='https://andalucia.ccoo.es/Sevilla/Videos'   target='_self'><span class='icon icon_dim_20x20 icon_pos_v01_20x20 icon_name_player6'></span> Vídeos</a></li><li id = 'li234_904013'><a href='https://andalucia.ccoo.es/Sevilla/Comision_Ejecutiva'   target='_self'> Comisión Ejecutiva</a></li><li id = 'li234_904014'><a href='https://andalucia.ccoo.es/Sevilla/Encuentra_tu_sindicato'   target='_self'> Encuentra tu sindicato</a></li><li id = 'li234_904016'><a href='/Sevilla'   target='_self'> Ver Noticias Sevilla</a></li></ul></li><li id = 'li234_904017'><a href='https://andalucia.ccoo.es/SECTORES'   target='_self'> SECTORES</a></li></ul>
						</li>
					</ul>
				</section>				<section id="section-4" >
					<ul class="ul_menu_sec-4">
						<li>
							<span>Nuestro trabajo</span>											
							<ul>					<li id = 'li309_889151'>
						<a href='https://andalucia.ccoo.es/II_Conferencia_Juventud' >
							
							II Conferencia Juventud 
							<span id = 'arrow309_889151' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li309_889151').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li309_889151').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li309_889152'><a href='https://andalucia.ccoo.es/II_Conferencia_Juventud/Candidatura_por_Andalucia'   target='_self'><span class='icon icon_dim_20x20 icon_pos_v01_20x20 icon_name_users6'></span> Candidatura por Andalucía</a></li></ul></li>					<li id = 'li309_889153'>
						<a href='https://andalucia.ccoo.es/Congresos' >
							
							Congresos 
							<span id = 'arrow309_889153' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li309_889153').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li309_889153').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li309_889154'><a href='https://andalucia.ccoo.es/Congresos/12º_Congreso_CCOO-A'   target='_self'> 12º Congreso CCOO-A</a></li></ul></li><li id = 'li309_889155'><a href='https://andalucia.ccoo.es/Acciones'   target='_self'> Acciones</a></li><li id = 'li309_889156'><a href='https://andalucia.ccoo.es/Logros'   target='_self'> Logros</a></li><li id = 'li309_889157'><a href='https://andalucia.ccoo.es/Propuestas'   target='_self'> Propuestas</a></li><li id = 'li309_889158'><a href='https://andalucia.ccoo.es/Movilizaciones'   target='_self'> Movilizaciones</a></li>					<li id = 'li309_889159'>
						<a href='https://andalucia.ccoo.es/Campanas' >
							
							Campañas 
							<span id = 'arrow309_889159' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li309_889159').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li309_889159').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li309_889160'><a href='https://andalucia.ccoo.es/Campanas/El_valor_de_lo_publico'   target='_self'> El valor de lo público</a></li>					<li id = 'li309_889161'>
						<a href='https://andalucia.ccoo.es/Campanas/CORONAVIRUS_-_Informacion_Especial' >
							<span class='icon icon_dim_20x20 icon_pos_v01_20x20 icon_name_info28'></span>
							CORONAVIRUS - Información Especial 
							<span id = 'arrow309_889161' class='icon icon_dim_13x13 icon_pos_v01_13x13 icon_name_arrow-right00 icon-unfolded' 
							onclick="if (this.className.indexOf('icon-unfolded')!=-1) { this.className = this.className.replace('icon-unfolded','icon-folded');this.className = this.className.replace('icon_name_arrow-right00','icon_name_arrow-bottom00');document.getElementById('li309_889161').className='selected'; event.preventDefault();} else {this.className = this.className.replace('icon-folded','icon-unfolded');this.className = this.className.replace('icon_name_arrow-bottom00','icon_name_arrow-right00');document.getElementById('li309_889161').className=''; event.preventDefault();}"></span>
						</a>							<ul><li id = 'li309_889162'><a href='https://andalucia.ccoo.es/Campanas/CORONAVIRUS_-_Informacion_Especial/CORONAVIRUS_-_Preguntas_Frecuentes'   target='_self'><span class='icon icon_dim_20x20 icon_pos_v01_20x20 icon_name_0007'></span> CORONAVIRUS - Preguntas Frecuentes</a></li><li id = 'li309_889163'><a href='https://andalucia.ccoo.es/Campanas/CORONAVIRUS_-_Informacion_Especial/CORONAVIRUS_-_Haz_tu_consulta'   target='_self'> CORONAVIRUS - Haz tu consulta</a></li></ul></li><li id = 'li309_889164'><a href='https://andalucia.ccoo.es/Campanas/Jornadas_Cancer_laboral_CADIZ'   target='_self'> Jornadas Cáncer laboral CÁDIZ</a></li><li id = 'li309_889165'><a href='https://andalucia.ccoo.es/Campanas/Jornadas_presentacion_APP_salud_laboral_SEVILLA'   target='_self'> Jornadas presentación APP salud laboral SEVILLA</a></li><li id = 'li309_889166'><a href='https://andalucia.ccoo.es/Campanas/Jornadas_presentacion_APP_salud_laboral_GRANADA'   target='_self'> Jornadas presentación APP salud laboral GRANADA</a></li><li id = 'li309_889167'><a href='https://andalucia.ccoo.es/Campanas/Jornadas_Actuaciones_preventivas_en_siniestralidad_SEVILLA'   target='_self'> Jornadas Actuaciones preventivas en siniestralidad SEVILLA</a></li><li id = 'li309_889168'><a href='https://andalucia.ccoo.es/Campanas/Jornadas_enfermedades_profesionales_MALAGA'   target='_self'> Jornadas enfermedades profesionales MÁLAGA</a></li><li id = 'li309_889169'><a href='https://andalucia.ccoo.es/Campanas/Jornadas_Enfermedades_profesionales_MADRID'   target='_self'> Jornadas Enfermedades profesionales MADRID</a></li><li id = 'li309_889170'><a href='https://andalucia.ccoo.es/Campanas/Jornadas_Fomento_de_la_participacion_en_la_gestion_preventiva_VALLADOLID'   target='_self'> Jornadas Fomento de la participación en la gestión preventiva VALLADOLID</a></li><li id = 'li309_889171'><a href='https://andalucia.ccoo.es/Campanas/Participo_y_decido'   target='_self'> Participo y decido</a></li><li id = 'li309_889172'><a href='https://andalucia.ccoo.es/Campanas/Formacion_para_personas_inmigrantes'   target='_self'> Formación para personas inmigrantes</a></li><li id = 'li309_889173'><a href='https://andalucia.ccoo.es/Campanas/Informacion_para_personas_migrantes'   target='_self'> Información para personas migrantes</a></li><li id = 'li309_889174'><a href='https://andalucia.ccoo.es/Campanas/Asesoramiento_en_prevencion'   target='_self'> Asesoramiento en prevención</a></li><li id = 'li309_889176'><a href='https://andalucia.ccoo.es/Campanas/Salud_laboral_en_radio'   target='_self'> Salud laboral en radio</a></li><li id = 'li309_889177'><a href='https://andalucia.ccoo.es/Campanas/Cursos_sobre_discapacidad'   target='_self'> Cursos sobre discapacidad</a></li><li id = 'li309_889178'><a href='https://andalucia.ccoo.es/Campanas/Por_unas_pensiones_dignas'   target='_self'> Por unas pensiones dignas</a></li><li id = 'li309_889179'><a href='https://andalucia.ccoo.es/Campanas/Contra_la_violencia_de_genero'   target='_self'> Contra la violencia de género</a></li><li id = 'li309_889180'><a href='https://andalucia.ccoo.es/Campanas/1º_de_Mayo'   target='_self'> 1º de Mayo</a></li><li id = 'li309_889181'><a href='https://andalucia.ccoo.es/Campanas/8_de_marzo'   target='_self'> 8 de marzo</a></li><li id = 'li309_889182'><a href='https://andalucia.ccoo.es/Campanas/Ciclo_de_conferencias_4D-28F'   target='_self'> Ciclo de conferencias 4D-28F</a></li></ul></li></ul>
						</li>
					</ul>
				</section>
								<!--
								<section id="section-5" class="">
									<ul class="ul_menu_sec-5">
										<li><span>Configuración</span>			
											<ul>
												<li></li>
												<li></li>
												<li></li>
												<li></li>
												<li></li>
											</ul>			
										</li>
									</ul>
								</section>
								-->
							</div><!-- /content -->
						</div><!-- /tabs -->
				</div>
				<div class="st-pusher">
					<div class="st-content"><!-- this is the wrapper for the content -->
						<div class="st-content-inner"><!-- extra div for emulating position:fixed of the menu -->
							<!-- Top Navigation -->
							<div class="main clearfix">
								<div id="st-trigger-effects" class="column">
									<div id="menu-trigger" class="icon icon_dim_48x48 icon_pos_v01_48x48 icon_name_menu00"></div>
									<div class="logo">
										<a href="#"><img src="/cms/g/logotipos/logotipoOrganizacion_166.png"></a>										
									</div>
								</div>
							</div><!-- /main -->
						</div><!-- /st-content-inner -->
					</div><!-- /st-content -->
				</div>
			</div>		
					

		 </div>		 <div id='1022945_1788469_3816799'>
<div class='layout_split_g12_wrapper'><div class='layout_split_g12_col layout_split_g12_12_of_12'><div class='eC_img_v001'><div class='wrapper_000'>		<a href="https://afiliate.ccoo.es/afiliate/afiliate.htm" target='_self'>		<img src='/19337ae2ced72e758ef287af1a79dc18000057.png' id='img3816799' title="Afíliate" alt="Afíliate" class='elcon_imagen' style=''></a></div></div></div></div>
		 </div>
		</div>
</div>
			<!-- **FIN CABECERA MOVIL** -->
 <!--[if lte IE 8]></div><![endif]--></header><div class='maincontentcontainer'><div class='maincontent' id='divMainContent'><div class='eC_breadcrumbs_v002'><div class='wrapper_000'><ul><li><a href='/Sevilla' class='selected'>Sevilla</a></ul></div></div>

	  <div class='section group' id='1286259'>
		<div id='1286259_2248940' class='layout_span_col layout_span_6_of_12'>
		 <div id='1286259_2248940_4865702'>
<div class='layout_split_g12_wrapper'><div class='layout_split_g12_col layout_split_g12_12_of_12'><div class='eC_img_v001'><div class='wrapper_000'>		<a href="https://andalucia.ccoo.es/Campanas/CORONAVIRUS_-_Informacion_Especial" target='_self'>		<img src='/380bdaed8bc9c4c33183dbbdf475d6a3000057.png' id='img4865702' title="Información Especial COVID-19" alt="Información Especial COVID-19" class='elcon_imagen' style=''></a></div></div></div></div>
		 </div>
		</div>
		<div class='calle'></div>
		<div id='1286259_2248941' class='layout_span_col layout_span_6_of_12'>
		 <div id='1286259_2248941_4865703'>
<div class='layout_split_g12_wrapper'><div class='layout_split_g12_col layout_split_g12_12_of_12'><div class='eC_img_v001'><div class='wrapper_000'>		<a href="https://andalucia.ccoo.es/Campanas/" target='_self'>		<img src='/54f7748062ddbd12f66e7e0a7f59911f000057.png' id='img4865703' title="CCOO Responde" alt="CCOO Responde" class='elcon_imagen' style=''></a></div></div></div></div>
		 </div>
		</div>
</div>

	  <div class='section group' id='1286260'>
		<div id='1286260_2248942' class='layout_span_col layout_span_8_of_12'>
		 <div id='1286260_2248942_4865704'>
			<div class="eC_contentEntry-intro_v005" >
				<div class="wrapper_000" >												
					<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:520637--Impulso_al_Acuerdo_para_la_Reactivacion_Economica_y_Social_de_Andalucia_en_Sevilla&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/fbb8d4fda0c32567aa438c8a283b61c6000057.jpg' alt='A la derecha de la foto, el secretario general de CCOO de Sevilla, Alfonso Vidán.' title='A la derecha de la foto, el secretario general de CCOO de Sevilla, Alfonso Vidán.'></a></div>
					
					<div class="antetitulo"><p></p></div>
					<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:520637--Impulso_al_Acuerdo_para_la_Reactivacion_Economica_y_Social_de_Andalucia_en_Sevilla&opc_id=24bf532757028d005d127392a273fc8c"><span style="font-size: 100%">Impulso al Acuerdo para la Reactivación Económica y Social de Andalucía en Sevilla</span></a></p></div>
					
					<div class="entradilla" id="divEnt_520637"><p>El secretario general de CCOO de Sevilla, junto a su hom&oacute;logo en UGT Sevilla, Juan Bautista Gin&eacute;s, el presidente de la Confederaci&oacute;n de Empresarios de Sevilla, Miguel Rus, y el delegado del Gobierno de la Junta de Andaluc&iacute;a en Sevilla, Ricardo S&aacute;nchez, ha firmado en la ma&ntilde;ana de este martes un acuerdo para impulsar la recuperaci&oacute;n de la provincia sevillana de las consecuencias de la pandemia del coronavirus. &ldquo;Creemos en el valor del di&aacute;logo para que los trabajadores y trabajadoras avancen en derechos y la sociedad tienda a un mayor progreso y justicia social", ha se&ntilde;alado Vid&aacute;n.</p></div>
					
				</div>
			</div>				
		 </div>		 <div id='1286260_2248942_4865705'>
			<div style='clear: both; width: 100%; border: 1px dotted #DDDDDD; margin: 5px 0 10px 0'></div>
		 </div>		 <div id='1286260_2248942_4865706'>
<div class='layout_split_g12_wrapper'><div class='layout_split_g12_col layout_split_g12_12_of_12'><div class='eC_img_v001'><div class='wrapper_000'>		<a href="https://andalucia.ccoo.es/Sevilla/Videos" target='_self'>		<img src='/c97b7fa95df70edff5a0dc19e2422c75000057.jpg' id='img4865706' title="Jornadas de verano Online" alt="Jornadas de verano Online" class='elcon_imagen' style=''></a></div></div></div></div>
		 </div>
		</div>
		<div class='calle'></div>
		<div id='1286260_2248943' class='layout_span_col layout_span_4_of_12'>
		 <div id='1286260_2248943_4865707'>
<div class='eC_menu_v021'><div class='eC_menu_v021_wrapper_000'><p class='caption'>CONOCE CCOO SEVILLA</p><ul><li ><a href='https://andalucia.ccoo.es/Sevilla/Breve_historia' >Breve historia</a></li><li ><a href='https://andalucia.ccoo.es/Sevilla/Videos' >Vídeos</a></li><li ><a href='https://andalucia.ccoo.es/Sevilla/Comision_Ejecutiva' >Comisión Ejecutiva</a></li><li ><a href='https://andalucia.ccoo.es/Sevilla/Encuentra_tu_sindicato' >Encuentra tu sindicato</a></li><li><a href='/Sevilla' >Ver Noticias Sevilla</a></li></ul></div></div>
		 </div>		 <div id='1286260_2248943_4865708'>
<h3 class='generic'><div class='wrapper_000'><span class='icon icon_dim_32x32 icon_pos_v01_32x32 icon_name_users6'></span><p>Tu sindicato</p></div></h3>
		 </div>		 <div id='1286260_2248943_4865709'>
<div class='layout_split_g12_wrapper'><div class='layout_split_g12_col layout_split_g12_0_of_12'><div class='eC_img_v001'><div class='wrapper_000'>		<a href="https://www.ccoo.es/modalidades_de_afiliacion" target='_self'>		<img src='/7c9f9e37f8abb9ef3754231bd5fcfa8b000057.gif' id='img4865709' title="Afíliate!" alt="Afíliate!" class='elcon_imagen' style=''></a></div></div></div></div>
		 </div>		 <div id='1286260_2248943_4865710'>
<div class='layout_split_g12_wrapper'><div class='layout_split_g12_col layout_split_g12_12_of_12'><div class='eC_img_v001'><div class='wrapper_000'>		<a href="https://andalucia.ccoo.es/Servicios_Juridicos_Sevilla&opc_id=06e929c70566ff06f204c6f8d300795f" target='_self'>		<img src='/9b96b8a1a37c4ab3a174654d0cf8d1e4000057.jpg' id='img4865710' title="SSJJ - Sevilla" alt="SSJJ - Sevilla" class='elcon_imagen' style=''></a></div></div></div></div>
		 </div>		 <div id='1286260_2248943_4865711'>
<div class='layout_split_g12_wrapper'><div class='layout_split_g12_col layout_split_g12_12_of_12'><div class='eC_img_v001'><div class='wrapper_000'>		<a href="http://autoempleoandalucia.ccoo.es/Inicio" target='_self'>		<img src='/30bed84e4aa7fd63379e5c408e0e26c7000057.png' id='img4865711' title="Servicio de Asesoramiento al Trabajo Autónomo" alt="Servicio de Asesoramiento al Trabajo Autónomo" class='elcon_imagen' style=''></a></div></div></div></div>
		 </div>
		</div>
</div>

	  <div class='section group' id='1286261'>
		<div id='1286261_2248944' class='layout_span_col layout_span_6_of_12'>
		 <div id='1286261_2248944_4865712'>
			<div class="eC_contentEntry-intro_v005" >
				<div class="wrapper_000" >												
					<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:520642--CCOO_destaca_la_amplia_participacion_en_la_movilizacion_para_exigir_mejoras_en_la_sanidad_publica_en_Sevilla&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/9598fecc4fcd9a336f42e45fb7981bf6000057.jpg' alt='Sevilla. Centro de Salud Alamillo' title='Sevilla. Centro de Salud Alamillo'></a></div>
					
					<div class="antetitulo"><p></p></div>
					<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:520642--CCOO_destaca_la_amplia_participacion_en_la_movilizacion_para_exigir_mejoras_en_la_sanidad_publica_en_Sevilla&opc_id=24bf532757028d005d127392a273fc8c"><span style="font-size: 100%">Amplia participación en la movilización para exigir mejoras en la sanidad pública en Sevilla</span></a></p></div>
					
					<div class="entradilla" id="divEnt_520642"><p>La Federaci&oacute;n de Sanidad y Sectores Sociosanitarios de CCOO de Andaluc&iacute;a (FSS-CCOO Andaluc&iacute;a) ha iniciado esta ma&ntilde;ana, junto a UGT y CSIF, un calendario de movilizaciones en centros de Atenci&oacute;n Primaria y de Atenci&oacute;n Especializada para exigir mejoras ante la &ldquo;situaci&oacute;n de sobrecarga y abandono&rdquo; del Sistema Sanitario P&uacute;blico de Andaluc&iacute;a y de sus profesionales. En la capital andaluza la concentraci&oacute;n se ha desarrollado en el centro de salud Alamillo. Las protestas continuar&aacute;n el d&iacute;a 20 de octubre ante los hospitales y el 29 ante la sede central del SAS en Sevilla.</p></div>
					
				</div>
			</div>				
		 </div>
		</div>
		<div class='calle'></div>
		<div id='1286261_2248945' class='layout_span_col layout_span_6_of_12'>
		 <div id='1286261_2248945_4865713'>
			<div class="eC_contentEntry-intro_v005" >
				<div class="wrapper_000" >												
					
									<div class='imagen'>
					<div id='divVideo520246' class='flowplayer' data-share='false' data-aspect-ratio='16:9' data-key="$360500321728124" data-logo="/cms/g/logotipos/ccoo_video.png" style='background-size: cover;'>
						<video  poster='/c2c9006897d907c3e1e2a81a384715c1000057.jpg'>
							<source type="application/x-mpegurl" src="https://59f9d0c14b98a.streamlock.net/vod/mp4:v617297.mp4/playlist.m3u8">
						</video>
					</div>
				</div>
					<div class="antetitulo"><p></p></div>
					<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:520246--CCOO_exige_condiciones_laborales_dignas_para_las_personas_trabajadoras_mas_expuestas_en_la_pandemia&opc_id=24bf532757028d005d127392a273fc8c"><span style="font-size: 100%">CCOO exige condiciones laborales dignas para las personas trabajadoras más expuestas en la pandemia</span></a></p></div>
					
					<div class="entradilla" id="divEnt_520246"><p>M&aacute;s de un centenar de delegados y delegadas de CCOO de Sevilla se han concentrado ante la Consejer&iacute;a de Igualdad, Pol&iacute;ticas Sociales y Conciliaci&oacute;n para reclamar derechos, seguridad y un nuevo contrato social y para destacar el papel de las trabajadoras del sector de la Dependencia, especialmente vulnerables: &ldquo;Han puesto en riesgo su salud y la de sus familias sufriendo una precarizaci&oacute;n vergonzosa, con un 35% de contrataci&oacute;n temporal y, en demasiadas ocasiones, por debajo del SMI&rdquo;, ha denunciado el secretario general de CCOO de Sevilla, Alfonso Vid&aacute;n.</p></div>
					
				</div>
			</div>				
		 </div>
		</div>
</div>

	  <div class='section group' id='1286262'>
		<div id='1286262_2248946' class='layout_span_col layout_span_4_of_12'>
		 <div id='1286262_2248946_4865714'>
			<div class="eC_contentEntry-intro_v005" >
				<div class="wrapper_000" >												
					<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:519949--CCOO_valora_la_utilidad_de_los_ERTE_tras_salvarse_mas_de_86_000_empleos_en_Sevilla_desde_que_comenzo_la_pandemia&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/abbf409cf8f865ef1f3964f49ec821b2000057.jpg' alt='El secretario de Acción Sindical de CCOO de Sevilla, Carlos Aristu.' title='El secretario de Acción Sindical de CCOO de Sevilla, Carlos Aristu.'></a></div>
					
					<div class="antetitulo"><p></p></div>
					<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519949--CCOO_valora_la_utilidad_de_los_ERTE_tras_salvarse_mas_de_86_000_empleos_en_Sevilla_desde_que_comenzo_la_pandemia&opc_id=24bf532757028d005d127392a273fc8c"><span style="font-size: 100%">El Sindicato valora la utilidad de los ERTE tras salvarse más de 86.000 empleos en Sevilla desde que comenzó la pandemia</span></a></p></div>
					
					<div class="entradilla" id="divEnt_519949"><p>La provincia contaba en septiembre con 23.569 personas acogidas a los expedientes de regulaci&oacute;n temporal de empleo frente a las 109.977 que hab&iacute;a a principios de mayo. &ldquo;Sin embargo, la recuperaci&oacute;n est&aacute; siendo m&aacute;s lenta aqu&iacute; que en otras provincias debido a la excesiva dependencia del turismo y son las mujeres quienes est&aacute;n teniendo m&aacute;s dificultades para reincorporarse que los hombres, lo que denota la falta de pol&iacute;ticas de igualdad en las empresas&rdquo;, se&ntilde;ala el secretario de Acci&oacute;n Sindical de CCOO de Sevilla, Carlos Aristu.</p></div>
					
				</div>
			</div>				
		 </div>
		</div>
		<div class='calle'></div>
		<div id='1286262_2248947' class='layout_span_col layout_span_4_of_12'>
		 <div id='1286262_2248947_4865715'>
			<div class="eC_contentEntry-intro_v005" >
				<div class="wrapper_000" >												
					<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:520461--CCOO_alerta_de_que_la_Consejeria_de_Fomento_se_niega_a_implantar_el_teletrabajo_pese_a_varios_positivos_confirmados&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/f4eda5c0d6fe1a902a15355d597a7eac000057.jpg' alt='a href=&quot;https://www.freepik.es/fotos/casa&quot;Foto de Casa creado por freepik - www.freepik.es/a' title='a href=&quot;https://www.freepik.es/fotos/casa&quot;Foto de Casa creado por freepik - www.freepik.es/a'></a></div>
					
					<div class="antetitulo"><p></p></div>
					<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:520461--CCOO_alerta_de_que_la_Consejeria_de_Fomento_se_niega_a_implantar_el_teletrabajo_pese_a_varios_positivos_confirmados&opc_id=24bf532757028d005d127392a273fc8c"><span style="font-size: 100%">La Consejería de Fomento se niega a implantar el teletrabajo pese a varios positivos confirmados</span></a></p></div>
					
					<div class="entradilla" id="divEnt_520461"><p>El Sindicato Provincial de Servicios a la Ciudadan&iacute;a de CCOO de Sevilla avisa del incumplimiento del &lsquo;Protocolo de medidas organizativas para la aplicaci&oacute;n temporal del r&eacute;gimen de trabajo no presencial en el marco de la crisis sanitaria ocasionada por el COVID-19&rsquo; en un edificio sin ventilaci&oacute;n natural donde trabajan mil personas y donde ya se han confirmado varios positivos por coronavirus: &ldquo;Se est&aacute; poniendo en peligro a las empleadas y empleados p&uacute;blicos y no descartamos movilizaciones si la consejera no desiste en su actitud temeraria&rdquo;, advierte CCOO.</p></div>
					
				</div>
			</div>				
		 </div>
		</div>
		<div class='calle'></div>
		<div id='1286262_2248948' class='layout_span_col layout_span_4_of_12'>
		 <div id='1286262_2248948_4865716'>
			<div class="eC_contentEntry-intro_v005" >
				<div class="wrapper_000" >												
					<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:520398--Sesion_online_para_abordar_la_digitalizacion_en_la_comarca_de_Ecija&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/1a3f1e7e4f8908eaf64fc9e798658c83000057.jpg' alt='Videoconferencia de la jornada.' title='Videoconferencia de la jornada.'></a></div>
					
					<div class="antetitulo"><p></p></div>
					<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:520398--Sesion_online_para_abordar_la_digitalizacion_en_la_comarca_de_Ecija&opc_id=24bf532757028d005d127392a273fc8c"><span style="font-size: 100%">Sesión online para abordar la digitalización en la comarca de Écija</span></a></p></div>
					
					<div class="entradilla" id="divEnt_520398"><p>A trav&eacute;s de videoconferencia, se han puesto sobre la mesa los retos, oportunidades y dificultades con las que se encuentran las zonas rurales a la hora de adaptarse a los cambios tecnol&oacute;gicos, especialmente en el contexto de la pandemia del coronavirus. El secretario de Pol&iacute;tica Territorial de CCOO de Sevilla, Jorge Carlos Lebr&oacute;n, ha inaugurado la jornada.</p></div>
					
				</div>
			</div>				
		 </div>
		</div>
</div>

	  <div class='section group' id='1286263'>
		<div id='1286263_2248949' class='layout_span_col layout_span_8_of_12'>
		 <div id='1286263_2248949_4865717'>
			<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_519977'>	
					<div class="entradilla">
						<div class="datosAdicionales">05/10/2020 </div>
						<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:519977--Jornada_Mundial_por_el_Trabajo_Decente_CCOO_pone_el_foco_en_mejorar_las_condiciones_del_sector_de_la_Dependencia&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/d9a081ffa07f590f37d682b598cd93c8000057.jpeg' alt='Cartel de la Jornada Mundial por el Trabajo Decente 2020.' title='Cartel de la Jornada Mundial por el Trabajo Decente 2020.'></a></div>
						
						
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519977--Jornada_Mundial_por_el_Trabajo_Decente_CCOO_pone_el_foco_en_mejorar_las_condiciones_del_sector_de_la_Dependencia&opc_id=24bf532757028d005d127392a273fc8c">Jornada Mundial por el Trabajo Decente: CCOO pone el foco en mejorar las condiciones del sector de la Dependencia</a></p></div>
						
						<div id="divEnt_519977"><p>El Sindicato llama a la movilizaci&oacute;n el pr&oacute;ximo mi&eacute;rcoles, 7 de octubre, para exigir condiciones laborales dignas para las personas trabajadoras de la atenci&oacute;n a dependientes, que sufren una mayor exposici&oacute;n y riesgo frente al virus. En Sevilla, est&aacute; prevista una concentraci&oacute;n a las puertas de la Consejer&iacute;a de Igualdad, Pol&iacute;ticas Sociales y Conciliaci&oacute;n de la Junta de Andaluc&iacute;a, ubicada en el n&uacute;mero 14 de la Avenida de Hytasa, a las 11:00 horas. El secretario general de CCOO de Sevilla, Alfonso Vid&aacute;n, destaca "la importancia de defender la dignidad de las trabajadoras de este servicio p&uacute;blico esencial".</p></div>
					</div>
				</div>
			</div>				<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_519844'>	
					<div class="entradilla">
						<div class="datosAdicionales">02/10/2020 </div>
						<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:519844--CCOO_denuncia_la_“paralisis”_en_la_Delegacion_Provincial_de_Educacion_en_Sevilla&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/04b1c293477aa745e8a1f06fed78e958000057.jpg' alt='Vuelta a las aulas.' title='Vuelta a las aulas.'></a></div>
						
						
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519844--CCOO_denuncia_la_“paralisis”_en_la_Delegacion_Provincial_de_Educacion_en_Sevilla&opc_id=24bf532757028d005d127392a273fc8c">CCOO denuncia la “parálisis” en la Delegación Provincial de Educación en Sevilla</a></p></div>
						
						<div id="divEnt_519844"><p>El secretario general del Sindicato Provincial de Ense&ntilde;anza de CCOO de Sevilla, Miguel Alb&eacute;ndiz, lamenta que, desde el cese de la delegada el pasado 21 de septiembre y tras la renuncia del sustituto por asuntos judiciales, el organismo &ldquo;siga descabezado &lsquo;sine die&rsquo; en un inicio de curso tan complicado como este, marcado por la pandemia del coronavirus&rdquo;.</p></div>
					</div>
				</div>
			</div>				<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_519720'>	
					<div class="entradilla">
						<div class="datosAdicionales">01/10/2020 </div>
						<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:519720--Sindicatos_y_Alestis_acercan_posturas_y_llegan_a_un_preacuerdo_que_debe_ser_ratificado_manana&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/e66f9611e6d71a3953acff7aece6c60c000057.jpg' alt='Los comités de empresa de Alestis, encerrados en las oficinas centrales de la empresa.' title='Los comités de empresa de Alestis, encerrados en las oficinas centrales de la empresa.'></a></div>
						
						
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519720--Sindicatos_y_Alestis_acercan_posturas_y_llegan_a_un_preacuerdo_que_debe_ser_ratificado_manana&opc_id=24bf532757028d005d127392a273fc8c">Sindicatos y Alestis acercan posturas y llegan a un preacuerdo que debe ser ratificado mañana</a></p></div>
						
						<div id="divEnt_519720"><p>Tras 17 horas de reuni&oacute;n los representantes de las personas trabajadoras y de la empresa han alcanzado un principio de consenso y han vuelto a emplazarse este viernes a un nuevo encuentro para su aprobaci&oacute;n definitiva. CCOO valora los avances en la negociaci&oacute;n y advierte de la importancia de alcanzar un acuerdo satisfactorio para los trabajadores y las trabajadoras y para el sector aeron&aacute;utico sevillano.</p></div>
					</div>
				</div>
			</div>				<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_519666'>	
					<div class="entradilla">
						<div class="datosAdicionales">01/10/2020 </div>
						
										<div class='eC_vid_v001'>
					<div id='divVideo519666' class="flowplayer fp-minimal" data-share='false' data-aspect-ratio='16:9' data-key="$360500321728124" data-logo="/cms/g/logotipos/ccoo_video.png">
						<video  poster='/723875a948b73d55bb4fc149b4d9501e000057.jpg'>
							<source type="application/x-mpegurl" src="https://59f9d0c14b98a.streamlock.net/vod/mp4:v616519.mp4/playlist.m3u8">							
						</video>
					</div>
				</div>
						
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519666--CCOO_y_UGT_trasladan_a_la_Subdelegacion_del_Gobierno_sus_reivindicaciones_para_mejorar_la_vida_de_las_personas_mayores&opc_id=24bf532757028d005d127392a273fc8c">CCOO y UGT trasladan a la Subdelegación del Gobierno sus reivindicaciones para mejorar la vida de las personas mayores</a></p></div>
						
						<div id="divEnt_519666"><p>El secretario general de CCOO de Sevilla, Alfonso Vid&aacute;n, ha pedido la puesta en marcha de &ldquo;una Ley Integral de los derechos de las personas mayores que ponga fin a una situaci&oacute;n de precariedad como consecuencia de los recortes por la crisis de 2008&rdquo;.</p></div>
					</div>
				</div>
			</div>				<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_519652'>	
					<div class="entradilla">
						<div class="datosAdicionales">01/10/2020 </div>
						
										<div class='eC_vid_v001'>
					<div id='divVideo519652' class="flowplayer fp-minimal" data-share='false' data-aspect-ratio='16:9' data-key="$360500321728124" data-logo="/cms/g/logotipos/ccoo_video.png">
						<video  poster='/640f3b8e7bf0a4110a6a04bcf0a5f588000057.jpg'>
							<source type="application/x-mpegurl" src="https://59f9d0c14b98a.streamlock.net/vod/mp4:v616504.mp4/playlist.m3u8">							
						</video>
					</div>
				</div>
						
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519652--CCOO_exige_el_cumplimiento_de_las_mejoras_laborales_pactadas_en_la_Administracion_General_del_Estado&opc_id=24bf532757028d005d127392a273fc8c">CCOO exige el cumplimiento de las mejoras laborales pactadas en la Administración General del Estado</a></p></div>
						
						<div id="divEnt_519652"><p>El Sindicato se ha concentrado ante la Subdelegaci&oacute;n del Gobierno en Sevilla para denunciar la situaci&oacute;n de los trabajadores y trabajadoras del sector y reclamar la aplicaci&oacute;n de los acuerdos suscritos hace m&aacute;s de un a&ntilde;o, que buscan frenar la destrucci&oacute;n del empleo p&uacute;blico, reducir la temporalidad, avanzar en el desarrollo de la carrera profesional, mejorar las retribuciones m&aacute;s bajas o rejuvenecer las plantillas, entre otros.</p></div>
					</div>
				</div>
			</div>				<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_519461'>	
					<div class="entradilla">
						<div class="datosAdicionales">30/09/2020 </div>
						<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:519461--Ilunion_y_el_SAS_declaran_en_el_juzgado_tras_la_denuncia_de_CCOO_por_poner_en_peligro_la_seguridad_del_personal_de_vigilancia_en_el_Hospital_Virgen_del_Rocio&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/915bf0d0ac72f7f8ea7490446b7534a3000057.jpeg' alt='Carpa para el personal de vigilancia del Virgendel Rocío.' title='Carpa para el personal de vigilancia del Virgendel Rocío.'></a></div>
						
						
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519461--Ilunion_y_el_SAS_declaran_en_el_juzgado_tras_la_denuncia_de_CCOO_por_poner_en_peligro_la_seguridad_del_personal_de_vigilancia_en_el_Hospital_Virgen_del_Rocio&opc_id=24bf532757028d005d127392a273fc8c">Ilunion y el SAS declaran en el juzgado tras la denuncia de CCOO por poner en peligro la seguridad del personal de vigilancia en el Hospital Virgen del Rocío</a></p></div>
						
						<div id="divEnt_519461"><p>El Sindicato Provincial de Construcci&oacute;n y Servicios de CCOO de Sevilla exige a la empresa que cumpla con los protocolos de protecci&oacute;n de la salud de los trabajadores y trabajadoras tras sustituir una garita de vigilancia por una carpa en plena v&iacute;a de acceso de veh&iacute;culos al centro hospitalario.</p></div>
					</div>
				</div>
			</div>	<div class='layout_split_wrapper'>				<div class="layout_split_col layout_split_1_of_3">						
					<div class="eC_vid_v001">
						<div class="wrapper_000">
							<div class="video">
								<a href=""></a>							
								<div class="titular"><p><a href=""></a></p></div>													
							</div>
						</div>						
					</div>
				</div>				<div class="layout_split_col layout_split_1_of_3">						
					<div class="eC_vid_v001">
						<div class="wrapper_000">
							<div class="video">
								<a href=""></a>							
								<div class="titular"><p><a href=""></a></p></div>													
							</div>
						</div>						
					</div>
				</div>				<div class="layout_split_col layout_split_1_of_3">						
					<div class="eC_vid_v001">
						<div class="wrapper_000">
							<div class="video">
								<a href="https://andalucia.ccoo.es/video:15&opc_id=24bf532757028d005d127392a273fc8c"></a>							
								<div class="titular"><p><a href="https://andalucia.ccoo.es/video:15&opc_id=24bf532757028d005d127392a273fc8c"></a></p></div>													
							</div>
						</div>						
					</div>
				</div></div>			<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_519398'>	
					<div class="entradilla">
						<div class="datosAdicionales">29/09/2020 </div>
						<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:519398--CCOO_reclama_a_la_Junta_su_implicacion_en_la_defensa_de_los_puestos_de_trabajo_que_peligran_en_Alestis&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/f9b4feefe55e17a96f570a711b83f146000057.jpeg' alt='Trabajadores de Alestis portan un ataúd en señal de duelo por la situación de la plantilla.' title='Trabajadores de Alestis portan un ataúd en señal de duelo por la situación de la plantilla.'></a></div>
						
						
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519398--CCOO_reclama_a_la_Junta_su_implicacion_en_la_defensa_de_los_puestos_de_trabajo_que_peligran_en_Alestis&opc_id=24bf532757028d005d127392a273fc8c">El Sindicato reclama a la Junta su implicación en la defensa de los puestos de trabajo que peligran en Alestis</a></p></div>
						
						<div id="divEnt_519398"><p>El secretario general de CCOO de Sevilla, Alfonso Vid&aacute;n, junto a su hom&oacute;logo en UGT Sevilla, Juan Bautista Gin&eacute;s, y representantes del comit&eacute; de empresa han trasladado a la Delegaci&oacute;n del Gobierno de la Junta en Sevilla su &ldquo;preocupaci&oacute;n por los 259 empleos y por el futuro de una empresa estrat&eacute;gica para el sector aeron&aacute;utico sevillano&rdquo;. El encuentro se ha realizado en el marco de una concentraci&oacute;n que ha llevado a cabo la plantilla durante la segunda jornada de huelga indefinida, secundada de nuevo por el 100% de los trabajadores y trabajadoras.</p></div>
					</div>
				</div>
			</div>				<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_519334'>	
					<div class="entradilla">
						<div class="datosAdicionales">29/09/2020 </div>
						<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:519334--CCOO_respalda_a_las_trabajadoras_de_ayuda_a_domicilio_de_Dos_Hermanas_y_pide_la_remunicipalizacion_del_servicio&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/096d7656e72bc67385f72f2bd091f3f7000057.jpg' alt='Concentración ante el Ayuntamiento de Dos Hermanas por los impagos de Asisttel.' title='Concentración ante el Ayuntamiento de Dos Hermanas por los impagos de Asisttel.'></a></div>
						
						
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519334--CCOO_respalda_a_las_trabajadoras_de_ayuda_a_domicilio_de_Dos_Hermanas_y_pide_la_remunicipalizacion_del_servicio&opc_id=24bf532757028d005d127392a273fc8c">CCOO respalda a las trabajadoras de ayuda a domicilio de Dos Hermanas y pide la remunicipalización del servicio</a></p></div>
						
						<div id="divEnt_519334"><p>El Sindicato lamenta &ldquo;la precarizaci&oacute;n de las condiciones laborales que lleva aparejada la gesti&oacute;n privada de un servicio p&uacute;blico&rdquo; y critica la &ldquo;ausencia casi total de medidas preventivas y equipos de protecci&oacute;n individual (EPI)&rdquo;. Adem&aacute;s, CCOO denuncia los retrasos en los pagos y el abono fraccionado de los salarios a &ldquo;estas excelentes profesionales&rdquo;.</p></div>
					</div>
				</div>
			</div>				<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_519283'>	
					<div class="entradilla">
						<div class="datosAdicionales">28/09/2020 </div>
						<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:519283--CCOO_cifra_en_un_100_el_seguimiento_de_la_huelga_indefinida_contra_el_ERE_en_las_plantas_de_Alestis_en_Sevilla&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/a38dec4f2bba1a3b8c7acc51e8ee5e9f000057.jpg' alt='Trabajadores y trabajadoras de Alestis durante la primera jornada de huelga indefinida.' title='Trabajadores y trabajadoras de Alestis durante la primera jornada de huelga indefinida.'></a></div>
						
						
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519283--CCOO_cifra_en_un_100_el_seguimiento_de_la_huelga_indefinida_contra_el_ERE_en_las_plantas_de_Alestis_en_Sevilla&opc_id=24bf532757028d005d127392a273fc8c">Apoyo total a la huelga indefinida contra el ERE en las plantas de Alestis en Sevilla</a></p></div>
						
						<div id="divEnt_519283"><p>La plantilla de la Tier 1, que se enfrenta a 259 despidos solo en esta provincia, ha secundado al 100% los paros convocados por el Sindicato Provincial de Industria de CCOO de Sevilla junto al resto de sindicatos para exigir el mantenimiento del empleo y la aplicaci&oacute;n de medidas provisionales para paliar la crisis coyuntural que atraviesa el sector. Las movilizaciones continuar&aacute;n ma&ntilde;ana martes, 29 de septiembre, a las 11:00 horas con una concentraci&oacute;n ante la Delegaci&oacute;n del Gobierno de la Junta de Andaluc&iacute;a en Sevilla.</p></div>
					</div>
				</div>
			</div>				<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_519216'>	
					<div class="entradilla">
						<div class="datosAdicionales">28/09/2020 </div>
						<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:519216--CCOO_rechaza_la_resignacion_de_la_Consejeria_de_Salud_ante_el_colapso_de_la_atencion_primaria_y_llama_a_la_movilizacion_de_profesionales_y_poblacion&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/613b8581b9347fba9da237577565014a000057.jpg' alt='Imagen de recurso de una jeringuilla. / Pixabay' title='Imagen de recurso de una jeringuilla. / Pixabay'></a></div>
						
						
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519216--CCOO_rechaza_la_resignacion_de_la_Consejeria_de_Salud_ante_el_colapso_de_la_atencion_primaria_y_llama_a_la_movilizacion_de_profesionales_y_poblacion&opc_id=24bf532757028d005d127392a273fc8c">CCOO rechaza la resignación de la Consejería de Salud ante el colapso de la atención primaria y llama a la movilización</a></p></div>
						
						<div id="divEnt_519216"><p>Mientras la ciudadan&iacute;a y el personal de la sanidad preparan protestas contra el colapso de los centros de salud, los y las responsables de la Junta llaman a resignarse ante una situaci&oacute;n que, seg&uacute;n sus declaraciones, va a seguir &ldquo;durante largo tiempo&rdquo;. CCOO llama a "no resignarse y redoblar la movilizaci&oacute;n" e insta a los y las responsables de la Junta a dimitir si se reconocen incapaces de solucionar la situaci&oacute;n.</p></div>
					</div>
				</div>
			</div>				<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_519173'>	
					<div class="entradilla">
						<div class="datosAdicionales">27/09/2020 </div>
						<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:519173--CCOO_reclama_politicas_valientes_para_hacer_sostenible_al_sector_turistico&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/ca524348197acc15d407bb90f53477e9000057.jpg' alt='Día Mundial del Turismo.' title='Día Mundial del Turismo.'></a></div>
						
						<div class='antetitulo'>DÍA MUNDIAL DEL TURISMO</div>
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519173--CCOO_reclama_politicas_valientes_para_hacer_sostenible_al_sector_turistico&opc_id=24bf532757028d005d127392a273fc8c">CCOO reclama políticas valientes para hacer sostenible al sector turístico</a></p></div>
						
						<div id="divEnt_519173"><p>Con motivo del D&iacute;a Mundial del Turismo, que se conmemora este 27 de septiembre, el sindicato m&aacute;s representativo en el sector reclama de las administraciones una apuesta decidida por garantizar, a corto plazo, la protecci&oacute;n de las personas trabajadoras afectadas por el desolador par&oacute;n de la actividad y &ldquo;resituar el di&aacute;logo social hacia escenarios de futuro cre&iacute;bles, sostenibles y que aporten nuevos equilibrios en los espacios urbanos turistificados&rdquo;.</p></div>
					</div>
				</div>
			</div>	<div class='layout_split_wrapper'>				<div class="layout_split_col layout_split_1_of_3">						
					<div class="eC_vid_v001">
						<div class="wrapper_000">
							<div class="video">
								<a href=""></a>							
								<div class="titular"><p><a href=""></a></p></div>													
							</div>
						</div>						
					</div>
				</div>				<div class="layout_split_col layout_split_1_of_3">						
					<div class="eC_vid_v001">
						<div class="wrapper_000">
							<div class="video">
								<a href=""></a>							
								<div class="titular"><p><a href=""></a></p></div>													
							</div>
						</div>						
					</div>
				</div>				<div class="layout_split_col layout_split_1_of_3">						
					<div class="eC_vid_v001">
						<div class="wrapper_000">
							<div class="video">
								<a href="https://andalucia.ccoo.es/video:15&opc_id=24bf532757028d005d127392a273fc8c"></a>							
								<div class="titular"><p><a href="https://andalucia.ccoo.es/video:15&opc_id=24bf532757028d005d127392a273fc8c"></a></p></div>													
							</div>
						</div>						
					</div>
				</div></div>			<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_518950'>	
					<div class="entradilla">
						<div class="datosAdicionales">24/09/2020 </div>
						<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:518950--CCOO_aborda_en_una_jornada_la_digitalizacion_como_factor_de_competitividad_y_empleo_en_los_municipios_sevillanos&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/5a7857d7163ac1a3e30ee51b2557f77c000057.jpg' alt='El secretario de Política Territorial de CCOO de Sevilla, Jorge Carlos Lebrón, inaugura la jornada.' title='El secretario de Política Territorial de CCOO de Sevilla, Jorge Carlos Lebrón, inaugura la jornada.'></a></div>
						
						
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:518950--CCOO_aborda_en_una_jornada_la_digitalizacion_como_factor_de_competitividad_y_empleo_en_los_municipios_sevillanos&opc_id=24bf532757028d005d127392a273fc8c">CCOO aborda en una jornada la digitalización como factor de competitividad y empleo en los municipios sevillanos</a></p></div>
						
						<div id="divEnt_518950"><p>La Uni&oacute;n Provincial de CCOO de Sevilla, junto a la Diputaci&oacute;n de Sevilla y en colaboraci&oacute;n con el Ayuntamiento de Aznalc&oacute;llar, ha celebrado este jueves la primera de seis sesiones que se celebrar&aacute;n en distintos puntos de la geograf&iacute;a sevillana con el objetivo de tratar los retos, las dificultades y las oportunidades de la digitalizaci&oacute;n en las zonas rurales.</p></div>
					</div>
				</div>
			</div>				<div class="eC_contentEntry-intro_v007" style='clear: both'>
				<div class="wrapper_000" id='wrapper_518722'>	
					<div class="entradilla">
						<div class="datosAdicionales">22/09/2020 </div>
						
										<div class='eC_vid_v001'>
					<div id='divVideo518722' class="flowplayer fp-minimal" data-share='false' data-aspect-ratio='16:9' data-key="$360500321728124" data-logo="/cms/g/logotipos/ccoo_video.png">
						<video  poster='/5b68e5f47cd0f6053e24a02868da9589000057.jpg'>
							<source type="application/x-mpegurl" src="https://59f9d0c14b98a.streamlock.net/vod/mp4:v615095.mp4/playlist.m3u8">							
						</video>
					</div>
				</div>
						
						<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:518722--Exito_rotundo_de_la_huelga_del_sector_aeronautico_en_Sevilla&opc_id=24bf532757028d005d127392a273fc8c">Éxito rotundo de la huelga del sector aeronáutico en Sevilla</a></p></div>
						<div class='subtitulos'><ul><li>90% de seguimiento de la jornada de huelga y movilización masiva en la Plaza de España</li><li>La secretaria general de CCOO-A, Nuria López, exige un plan estratégico a nivel nacional en el que tengan cabida las comunidades autónomas y los agentes sociales y que se deje de utilizar la pandemia para despedir “cuando es una situación coyuntural en un sector estratégico con futuro y hay mecanismos para sortearla”</li><li>Juan A. Caravaca, secretario general del Sindicato Provincial de Industria de CCOO de Sevilla: “No vamos a permitir despidos en empresas como Alestis. Hay que apostar por ERTE y garantizar el futuro de un sector estructural”</li></ul></div>
						<div id="divEnt_518722"></div>
					</div>
				</div>
			</div>	<div class='eC_goTo_v001'><div class='wrapper_000'><div class='goTo'><a href='/cms.php?cd_cms_pag=14211&opc_id=24bf532757028d005d127392a273fc8c'>Hemeroteca</a></div></div></div>
		 </div>
		</div>
		<div class='calle'></div>
		<div id='1286263_2248950' class='layout_span_col layout_span_4_of_12'>
		 <div id='1286263_2248950_4865718'>
			<h2 class="generic">
				<div class='wrapper_000'>
					<p>También destacamos</p>
				</div>
			</h2>
		 </div>		 <div id='1286263_2248950_4865719'>
			<div class="eC_contentEntry-intro_v005" >
				<div class="wrapper_000" >												
					<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:520240--CCOO_A_convoca_concentraciones_paros_y_una_huelga_en_el_servicio_de_Emergencias_112&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/df86ef9bdefb4c229502e12ed4f72011000057.jpg' alt='Imagen de la manifestación de Sevilla de los trabajadores y trabajadoras del 112' title='Imagen de la manifestación de Sevilla de los trabajadores y trabajadoras del 112'></a></div>
					
					<div class="antetitulo"><p></p></div>
					<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:520240--CCOO_A_convoca_concentraciones_paros_y_una_huelga_en_el_servicio_de_Emergencias_112&opc_id=24bf532757028d005d127392a273fc8c"><span style="font-size: 100%">CCOO-A convoca concentraciones, paros y una huelga en el servicio de Emergencias 112</span></a></p></div>
					
					<div class="entradilla" id="divEnt_520240"><p>El sindicato ha convocado concentraciones en Sevilla y M&aacute;laga ante el deterioro de las condiciones de trabajo de las plantillas de Emergencias 112 Andaluc&iacute;a tras el punto &aacute;lgido de la pandemia, agravado por el incumplimiento de los pliegos del concurso por parte de Ferrovial Servicios S.A., actual empresa adjudicataria, y mientras desde el 112 se intenta prestar un servicio adecuado a la ciudadan&iacute;a ante el nuevo rebrote de la Covid19. &ldquo;Se trata de agresiva y lesiva pol&iacute;tica empresarial&rdquo;, denuncian desde CCOO. Estas acciones son previas a los paros convocados para los d&iacute;as 17 y 24 de octubre y a la huelga que, &ldquo;lamentablemente por el car&aacute;cter de esencial de este servicio&rdquo;, ha habido que convocar para el pr&oacute;ximo 31 de octubre.</p></div>
					
				</div>
			</div>				
		 </div>		 <div id='1286263_2248950_4865720'>
			<div class="eC_contentEntry-intro_v005" >
				<div class="wrapper_000" >												
					<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:519859--Sindicatos_y_Alestis_alcanzan_un_acuerdo_tras_12_horas_de_negociacion_para_evitar_los_despidos_traumaticos_planteado_por_la_empresa_en_Andalucia&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/546be9631e169ac3ed85d50b3e3208ea000057.jpg' alt='Imagen de archivo del encierro mantenido por trabajadores de Alestis en Sevilla' title='Imagen de archivo del encierro mantenido por trabajadores de Alestis en Sevilla'></a></div>
					
					<div class="antetitulo"><p>ERE EN ALESTIS</p></div>
					<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519859--Sindicatos_y_Alestis_alcanzan_un_acuerdo_tras_12_horas_de_negociacion_para_evitar_los_despidos_traumaticos_planteado_por_la_empresa_en_Andalucia&opc_id=24bf532757028d005d127392a273fc8c"><span style="font-size: 100%">Sindicatos y Alestis alcanzan un acuerdo tras 12 horas de negociación para evitar los despidos traumáticos planteado por la empresa en Andalucía</span></a></p></div>
					
					<div class="entradilla" id="divEnt_519859"><p>CCOO y UGT han logrado alcanzar al final de esta tarde un acuerdo con Alestis, empresa del grupo Aciturri, para evitar el despido traum&aacute;tico de los 585 trabajadores y trabajadoras planteados en un primer momento por la empresa. Este acuerdo, que se firma tras doce horas de negociaci&oacute;n, ha conseguido reducir, de entrada, el n&uacute;mero de despidos desde los 585 planteados en un comienzo a 440. Tras largas e intensas jornadas de negociaci&oacute;n, la huelga indefinida en las plantas que la empresa del grupo Aciturri tiene en Andaluc&iacute;a, y un encierro de trabajadores y trabajadoras en los centros de trabajo, los sindicatos han conseguido ampliar la cobertura de ERTE un mes para, a finales de octubre, retomar la negociaci&oacute;n y ampliar el acuerdo.</p></div>
					<div class='documentos'><ul><li><a href='https://andalucia.ccoo.es/noticia:519139--Huelga_indefinida_en_Alestis_a_partir_del_28_de_septiembre_tras_la_falta_de_acuerdo_en_el_SERCLA&opc_id=27aff61247a4efbf4542fc387457c995' target='_blank'>Huelga indefinida en Alestis a partir del 28 de septiembre tras la falta de acuerdo en el SERCLA</a></li></ul></div>
				</div>
			</div>				
		 </div>		 <div id='1286263_2248950_4865721'>
			<div class="eC_contentEntry-intro_v005" >
				<div class="wrapper_000" >												
					<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:520183--CCOO_alerta_de_que_el_Ayuntamiento_de_Mairena_del_Aljarafe_sigue_adelante_con_la_privatizacion_de_la_limpieza_viaria&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/f999276143b0f3b533b26b3d34766845000057.jpeg' alt='Reunión de delegados y delegadas en Mairena del Aljarafe.' title='Reunión de delegados y delegadas en Mairena del Aljarafe.'></a></div>
					
					<div class="antetitulo"><p></p></div>
					<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:520183--CCOO_alerta_de_que_el_Ayuntamiento_de_Mairena_del_Aljarafe_sigue_adelante_con_la_privatizacion_de_la_limpieza_viaria&opc_id=24bf532757028d005d127392a273fc8c"><span style="font-size: 100%">El Ayuntamiento de Mairena del Aljarafe sigue adelante con la privatización de la limpieza viaria</span></a></p></div>
					
					<div class="entradilla" id="divEnt_520183"><p>La Secci&oacute;n Sindical de CCOO en el Consistorio mairenero se&ntilde;ala que se ha encargado un diagn&oacute;stico a una consultora &ldquo;orientado a justificar la gesti&oacute;n indirecta del servicio, incluyendo costes que no se corresponden con la realidad&rdquo;. El Sindicato denuncia que la decisi&oacute;n &ldquo;solo supondr&aacute; el encarecimiento para la ciudadan&iacute;a, precariedad sociolaboral y beneficios para unas pocas manos&rdquo; y exige que se aumente y potencie la gesti&oacute;n p&uacute;blica de los servicios, al tiempo que hace un llamamiento a los partidos de la oposici&oacute;n para que no apoyen esta privatizaci&oacute;n.</p></div>
					
				</div>
			</div>				
		 </div>		 <div id='1286263_2248950_4865722'>
			<div class="eC_contentEntry-intro_v005" >
				<div class="wrapper_000" >												
					<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:519816--CCOO_valora_el_descenso_del_paro_en_Sevilla_en_septiembre_e_insiste_en_el_valor_de_los_ERTE_para_frenar_la_destruccion_de_empleo&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/dddc7171c09d66cb5f88267a2955a651000057.jpg' alt='Paro registrado en Sevilla en el mes de septiembre.' title='Paro registrado en Sevilla en el mes de septiembre.'></a></div>
					
					<div class="antetitulo"><p></p></div>
					<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:519816--CCOO_valora_el_descenso_del_paro_en_Sevilla_en_septiembre_e_insiste_en_el_valor_de_los_ERTE_para_frenar_la_destruccion_de_empleo&opc_id=24bf532757028d005d127392a273fc8c"><span style="font-size: 100%">CCOO valora el descenso del paro en Sevilla en septiembre e insiste en el valor de los ERTE para frenar la destrucción de empleo</span></a></p></div>
					
					<div class="entradilla" id="divEnt_519816"><p>El Sindicato destaca la utilidad este mecanismo y la importancia del nuevo acuerdo surgido del di&aacute;logo social que permite prorrogarlos y afrontar con m&aacute;s garant&iacute;as los pr&oacute;ximos meses. No obstante, recuerda que pese a lo positivo de los datos, los y las j&oacute;venes de la provincia han sufrido especialmente las consecuencias de la pandemia en el plano laboral, aumentando la tasa de paro casi en un 13% con respecto a septiembre de 2019: &ldquo;Urge legislar con perspectiva juvenil para evitar que su paro se cronifique&rdquo;, se&ntilde;ala la secretaria de Organizaci&oacute;n de CCOO de Sevilla, Sara de los Reyes.</p></div>
					
				</div>
			</div>				
		 </div>		 <div id='1286263_2248950_4865723'>
			<div class="eC_contentEntry-intro_v005" style="margin: 10px 0 10px 0; padding:5px; background-color: #FFC1C1;">
				<div class="wrapper_000" style="border-bottom:0" >												
					<div class='imagen'><a href='https://andalucia.ccoo.es/noticia:412491--Guia_de_Servicios_2019_2020_CCOO_de_Sevilla&opc_id=24bf532757028d005d127392a273fc8c' title='Ver noticia completa'><img src='/a54f23d91d6623fe4f3de0f6a25012b1000057.jpg' alt='Portada guía de servicios.' title='Portada guía de servicios.'></a></div>
					
					<div class="antetitulo"><p></p></div>
					<div class="titular"><p><a href="https://andalucia.ccoo.es/noticia:412491--Guia_de_Servicios_2019_2020_CCOO_de_Sevilla&opc_id=24bf532757028d005d127392a273fc8c"><span style="font-size: 100%">Guía de Servicios 2019-2020 CCOO de Sevilla</span></a></p></div>
					
					<div class="entradilla" id="divEnt_412491"><p>CCOO edita una gu&iacute;a de servicios con importantes descuentos para toda la afiliaci&oacute;n en categor&iacute;as como movilidad, viajes, compras, formaci&oacute;n, ocio y tiempo libre, cultura y espect&aacute;culos, legal y salud y bienestar.</p></div>
					<div class='documentos'><ul><li><a href='/1469d7f80a5a671ea148a5180713e385000057.pdf' target='_blank'>Guía de Servicios 2019-2020 CCOO de Sevilla</a></li></ul></div>
				</div>
			</div>				
		 </div>		 <div id='1286263_2248950_4865724'>
				<!-- Capa contenedora -->
				<div class="eC_form_v001" id='divGlobal'>
								
					<!-- Capa de acceso a afiliados -->						
					<div class="eC_form_v001_wrapper_000" id="divLogin">
						<div class="form-box">
							<div class="form-box_wrapper_001">
								<form>		
									<h4 class='generic'>Acceso para personas afiliadas</h4>		
									<div class='eC_texto_v002'>
										<div class='eC_texto_v002_wrapper_000' id='titulo'>
											<p>El contenido solicitado está restringido a personas afiliadas. Introduzca su usuario y contraseña para acceder:</p>
										</div>
									</div>											
									<div class="form-group">
										<div class="label"><span class="span01 span02">*</span> <label for="usuario">Usuario (dni sin letra final)</label></div>
										<div class="input_text"><input type="text" class='w100pct' id="usuario" name="usuario" maxlength="8"></div>
										<span id='span_usuario' class='mensajeCampoObligatorio display_none'></span>
									</div>
									<div class="form-group">						
										<div class="label"><span class="span01 span02">*</span> <label for="contrasena">Contraseña</label></div>			
										<div class="input_password"><input class="w100pct" type="password" id="contrasena" name="contrasena" maxlength="50"></div>
										<span id='span_contrasena' class='mensajeCampoObligatorio display_none'></span>
									</div>	
									<div class="form-buttons">
										<div class="input_button">
											<input type="button" onclick='loginSend()' value="Enviar" class="form">
										</div>
									</div>
								</form>
							</div>
						</div>					
						
						<div class='eC_texto_v002' id='enlaces'>
							<div class="eC_texto_v002_wrapper_000">
								<p>Si no está afiliado/a, puede solicitarlo desde <a href='http://www.ccoo.es/Afiliate&view=1' target='blank' style='text-decoration: none'>aquí</a></p>							
								<p>Si ha olvidado su contraseña, pulse <span onclick='showDivRec()'>aquí</span></p>
							</div>
						</div>
					</div>

					<!-- Capa para recuperación de contraseña -->
					<div class="eC_form_v001_wrapper_000" id="divRec" style="display: none">
						<div class="form-box">
							<div class="form-box_wrapper_001">
								<form>
									<h4 class='generic'><p>Restablecimiento de contraseña</h4>
									<div class="eC_texto_v002">
										<div class="eC_texto_v002_wrapper_000">											
											<p>Introduzca su DNI, fecha de nacimiento y su dirección de correo electrónico, ésta debe coincidir con la que tenemos asociada a sus datos, ya que es una condición indispensable por motivos de seguridad.
												Si es así, en breve recibirá un correo electrónico con un enlace temporal (caduca a las dos horas) con el cual podrá cambiar la contraseña. Si no conoce la cuenta asociada, deberá solicitar la recuperación del acceso a través del  
												<span onclick='showDivRec2()' style='cursor: pointer; text-decoration: underline'>siguiente formulario</span>
											</p>
										</div>
									</div>
									<div class="form-group">
										<div class="label"><label for="fe_nac"><span class="span01 span02">*</span> Fecha de nacimiento: </label></div>
										<div class='input_text'><input type='text' name='fe_nac' id='fe_nac' class="w100pct"></div>
										<span id = 'span_fe_nac' class='mensajeCampoObligatorio display_none'></span>
									</div>									
									<div class="form-group">
										<div class="label"><span class="span01 span02">*</span> <label for="dni">DNI (sin letra)</label></div>
										<div class="input_text"><input type="text" class='w100pct' id="dni" name="dni" maxlength="9"></div>
										<span id='span_dni' class='mensajeCampoObligatorio display_none'></span>							
									</div>
									<div class="form-group">
										<div class="label"><span class="span01 span02">*</span> <label for="email">Correo electrónico</label></div>
										<div class="input_text"><input type="text" class='w100pct' id="email" name="email" maxlength="50" value=""></div>
										<span id='span_email' class='mensajeCampoObligatorio display_none'></span>
									</div>									
									<div class="form-buttons">
										<div class="input_button"><input type="button" onclick='recPwd()' value="Enviar" class="form"></div>
									</div>
								</form>
							</div>						
						</div>						
					</div>
					
					<!-- Capa de contacto para recuperación de acceso si no se conoce la cuenta -->
					<div class="eC_form_v001_wrapper_000" id="divRec2" style="display: none">
						<div class="form-box">
							<div class="form-box_wrapper_001">
								<form>
									<h4 class='genEric'><p>Recuperación de acceso</p></h4>
									<div class="eC_texto_v002">
										<div class="eC_texto_v002_wrapper_000">											
											<p>Introduzca los datos solicitados y nos pondremos en contacto a la mayor brevedad posible para facilitarle la recuperación del acceso
											</p>
										</div>
									</div>																	
									<div class="form-group">
										<div class="label"><span class="span01 span02">*</span> <label for="dni">DNI (sin letra):</label> </div>
										<div class="input_text">
											<input type="text" class='w100pct' id="dni2" name="dni2" maxlength="9" onkeypress="return event.charCode >= 48 && event.charCode <= 57">
										</div>
										<span id='span_dni2' class='mensajeCampoObligatorio display_none'></span>	
									</div>	
									<div class="form-group">
										<div class="label"><label for="apel"><span class="span01 span02">*</span>Nombre y apellidos:</label> </div>
										<div class='input_text'><input type='text' name='nombre2' id='nombre2' class='w100pct' maxlength="40"></div>
										<span id = 'span_nombre2' class='mensajeCampoObligatorio display_none' ></span>
									</div>									
									<div class="form-group">
										<div class="label"><span class="span01 span02">*</span> <label for="email">Correo electrónico:</label> </div>
										<div class="input_text">
											<input type="text" class='w100pct' id="email2" name="email2" maxlength="50" value="">
										</div>
										<span id='span_email2' class='mensajeCampoObligatorio display_none'></span>
									</div>
									<div class="form-group">
										<div class="label"><span class="span01 span02">*</span> <label for="obs">Mensaje:</label> </div>									
										<div class='textarea'><textarea name='mensaje2' id='mensaje2' cols='50' rows='5' class='w100pct'></textarea></div>
										<span id='span_mensaje2' class='mensajeCampoObligatorio display_none'></span>
									</div>								
									<div class="form-buttons">
										<div class="input_button">
											<input type="button" onclick='recPwd2()' value="Enviar" class="form">
										</div>
									</div>
								</form>
							</div>						
						</div>						
					</div>
					
				</div>
		 </div>
		</div>
</div></div>





<!-- **PIE DE PÁGINA** -->





<div class='footercontainer'><footer class='group'><!--[if lte IE 8]><div class='footer group'><![endif]-->

	  <div class='section group' id='14338'>
		<div id='14338_25881' class='layout_span_col layout_span_12_of_12'>
		 <div id='14338_25881_17846'>
<div class='layout_split_g12_wrapper'><div class='layout_split_g12_col layout_split_g12_12_of_12'><div class='eC_img_v001'><div class='wrapper_000'>		<img src='/99da5b744f9b79b1f4acb8c43ee90d33000057.jpg' id='img17846' title="Fondo blanco" alt="Fondo blanco" class='elcon_imagen' style=''></div></div></div></div>
		 </div>		 <div id='14338_25881_12771'>
			<div class='eC_menu_v009'>
				<div class='wrapper_000'>
					<ul>
						<li><a href='https://andalucia.ccoo.es/Mapa_de_la_web'   target='_self' ><span>Mapa de la web</span></a></li><li><a href='/Contacta'   target='_self' ><span>Contacta con nosotros</span></a></li><li><a href='https://andalucia.ccoo.es/Aviso_legal'   target='_self' ><span>Aviso legal</span></a></li><li><a href='https://andalucia.ccoo.es/Politica_de_privacidad'   target='_self' ><span>Política de privacidad</span></a></li><li><a href='https://andalucia.ccoo.es/Politica_de_cookies'   target='_self' ><span>Polìtica de cookies</span></a></li>	
					</ul>
				</div>
			</div>					
		 </div>		 <div id='14338_25881_69950'>
			<div class='eC_menu_v010'>
				<div class='wrapper_000'>
					<div class='eC_img_v001'>
						<div class='wrapper_000'>
							<a href='http://www.ccoo.es' target='_blank'><img src='/cms/g/CSCCOO/menu/CMS_bandera_bg.png' alt='Web de CSCCOO'></a>
						</div>
					</div>
					<ul>
						<li><a href='https://ssl.ccoo.es/afiliacion'  target='_blank'><span class='icon icon_dim_32x32 icon_pos_v01_32x32 icon_name_looking5'></span><p  class='unaLinea'>Zona Afiliación</p></a></li><li><a href='https://afiliate.ccoo.es/afiliate/afiliate.htm'  target='_blank'><span class='icon icon_dim_32x32 icon_pos_v01_32x32 icon_name_clipboard45'></span><p  class='unaLinea'>Afíliate</p></a></li>
					</ul>
				</div>
			</div>			
		 </div>		 <div id='14338_25881_17830'>
			<div class="eC_footer_v001" style="clear: both">
				<div class="eC_footer_v001_wrapper_000">
			
					<div class="eC_list_v002">
						<div class="eC_list_v002_wrapper_000">
							<ul>
								<li><a href="http://www.ccoo.es" target="_blank">Confederación Sindical de Comisiones Obreras</a></li>
								<li><span>Territorios</span>
									<ul>
									    <li><a href="http://www.andalucia.ccoo.es" target="_blank">Comisiones Obreras de Andalucía</a></li>
									    <li><a href="http://www.aragon.ccoo.es/" target="_blank">Comisiones Obreras de Aragón</a></li>
									    <li><a href="http://www.asturias.ccoo.es/" target="_blank">Comisiones Obreres d'Asturies</a></li>
									    <li><a href="http://www.ib.ccoo.es/" target="_blank">Comissions Obreres de les Illes Balears</a></li>
									    <li><a href="http://www.canarias.ccoo.es/" target="_blank">Comisiones Obreras de Canarias</a></li>
									    <li><a href="http://www.cantabria.ccoo.es/" target="_blank">Comisiones Obreras de Cantabria</a></li>
									    <li><a href="http://www.castillayleon.ccoo.es/" target="_blank">Comisiones Obreras de Castilla y León</a></li>
									    <li><a href="http://www.castillalamancha.ccoo.es/" target="_blank">Comisiones Obreras de Castilla-La Mancha</a></li>
									    <li><a href="http://www.ccoo.cat/" target="_blank">Comissió Obrera Nacional de Catalunya</a></li>
									    <li><a href="http://www.ceuta.ccoo.es/" target="_blank">Comisiones Obreras de Ceuta</a></li>
									    <li><a href="http://www.ccoo-euskadi.net/" target="_blank">Comisiones Obreras de Euskadi</a></li>
									    <li><a href="http://www.extremadura.ccoo.es/" target="_blank">Comisiones Obreras de Extremadura</a></li>
									    <li><a href="http://www.galicia.ccoo.es/" target="_blank">Sindicato Nacional de Comisións Obreiras de Galicia</a></li>
									    <li><a href="http://www.rioja.ccoo.es/" target="_blank">Comisiones Obreras de La Rioja</a></li>
									    <li><a href="http://www.ccoomadrid.es/" target="_blank">Comisiones Obreras de Madrid</a></li>
									    <li><a href="http://www.melilla.ccoo.es/" target="_blank">Comisiones Obreras de Melilla</a></li>
									    <li><a href="http://www.murcia.ccoo.es/" target="_blank">Comisiones Obreras de la Región de Murcia</a></li>
									    <li><a href="http://www.navarra.ccoo.es/" target="_blank">Comisiones Obreras de Navarra</a></li>
									    <li><a href="http://www.pv.ccoo.es/" target="_blank">Comissions Obreres del País Valencià</a></li>
									</ul>
								</li>
			
								<li><span>Federaciones</span>
									<ul>
										<li><a href="http://construccionyservicios.ccoo.es/" target="_blank">Federación de Construcción y Servicios</a></li>
										<li><a href="http://www.fe.ccoo.es/" target="_blank">Federación de Enseñanza</a></li>
										<li><a href="http://www.industria.ccoo.es/" target="_blank">Federación de Industria</a></li>
										<li><a href="http://www.pensionistas.ccoo.es/" target="_blank">Federación de Pensionistas y Jubilados</a></li>
										<li><a href="http://www.sanidad.ccoo.es/" target="_blank">Federación de Sanidad y Sectores Sociosanitarios</a></li>
										<li><a href="http://www.fsc.ccoo.es/" target="_blank">Federación de Servicios a la Ciudadanía</a></li>
										<li><a href="http://www.ccoo-servicios.es/" target="_blank">Federación de Servicios</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>			
				</div>
			</div>			
		 </div>		 <div id='14338_25881_32689'>
<script>function loadScript(a){var b=document.getElementsByTagName("head")[0],c=document.createElement("script");c.type="text/javascript",c.src="https://tracker.metricool.com/resources/be.js",c.onreadystatechange=a,c.onload=a,b.appendChild(c)}loadScript(function(){beTracker.t({hash:"af32cade54a0851b8e295157908f6437"})});</script>
		 </div>
		</div>
</div>





<!-- **PIE DE PÁGINA** -->





<!--[if lte IE 8]></div><![endif]--></footer></div>				<div class="eC_cookies_v001" id="divPolCookies">
					<div class="wrapper_000">
							<span class="icon icon_dim_17x17 icon_pos_v01_17x17 icon_name_cross00" onclick="var cookexpire=new Date(); cookexpire.setTime(new Date().getTime()+3600000*24*365); document.cookie='avisocookies='+new Date().toGMTString()+';expires='+cookexpire.toGMTString();document.getElementById('divPolCookies').className='eC_cookies_v001_inactivo'"></span>
							<p>Esta web utiliza cookies propias y de terceros para optimizar su navegación. Si continúa navegando está dando su consentimiento para su aceptación y nuestra politica de cookies, <a href="/cms.php?13193">haga click aqui</a> para más información y ver cómo desactivarlas.</p>	
					</div>
				</div>		
				
			 </div>	 
			</div>
			
			



			
			
			<!-- Scripts para funcionamiento de cabecera de móviles -->		
					<script src="/js/classie.js"></script>	
		<script src="/js/effects.js"></script>		<script src="/js/cbpfwtabs.js"></script>
		<script>
			new CBPFWTabs(document.getElementById('tabs'));				
		</script>
			
		</body>
		
		</html>