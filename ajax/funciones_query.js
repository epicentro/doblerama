$(document).ready(function(){

                 
 
 
 });


function atributos_mnto(valor){

            
           if( $('#'+valor).attr('checked') ) {
                
                    if(document.domain=="localhost"){
                            var ruta="http://localhost/marissirealstate/be/inmuebles_atributos/gestiona_atributos";
                    }else{
                        var ruta="http://"+document.domain+"/doblerama/be/inmuebles_atributos/gestiona_atributos";
                    }

                    $.post(ruta, {sw:4, valores:valor, checked:1 }, llegajson, "json");  
                  
                
                
           }else{
                     if(document.domain=="localhost"){
                            var ruta="http://localhost/marissirealstate/be/inmuebles_atributos/gestiona_atributos";
                    }else{
                        var ruta="http://"+document.domain+"/doblerama/be/inmuebles_atributos/gestiona_atributos";
                    }

                    $.post(ruta, {sw:4, valores:valor, checked:0 }, llegajson, "json");
           }
            
           

 }//EndFunction



function elimina_productos(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/productos/elimina_productos";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/productos/elimina_productos";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction


function elimina_preguntas(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/preguntas/elimina_preguntas";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/preguntas/elimina_preguntas";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction 

function elimina_atributos(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/atributos/elimina_atributo";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/atributos/elimina_atributo";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction

 
 function elimina_cursos(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/cursos/elimina_cursos";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/cursos/elimina_cursos";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction

function elimina_areas(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/areas/elimina_areas";

            }else{
                var ruta="http://"+document.domain+"/doblerama/be/areas/elimina_areas";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction


function elimina_servicios(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/servicios/elimina_servicios";

            }else{
                var ruta="http://"+document.domain+"/doblerama/be/servicios/elimina_servicios";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction


function elimina_valores(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/valores/elimina_valores";

            }else{
                var ruta="http://"+document.domain+"/doblerama/be/valores/elimina_valores";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction

 
 
function elimina_servicios_atributos(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/servicios_atributos/elimina_servicios_atributos";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/servicios_atributos/elimina_servicios_atributos";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction

function elimina_maquinarias_atributos(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/maquinarias_atributos/elimina_maquinarias_atributos";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/maquinarias_atributos/elimina_maquinarias_atributos";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction


function elimina_productos_atributos(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/productos_atributos/elimina_productos_atributos";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/productos_atributos/elimina_productos_atributos";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction
 
 

function elimina_tarifas(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/tarifas/elimina_tarifas";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/tarifas/elimina_tarifas";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction




function elimina_productos_imagenes(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/productos_imagenes/elimina_productos_imagenes";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/productos_imagenes/elimina_productos_imagenes";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction

 function elimina_servicios_imagenes(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/servicios_imagenes/elimina_servicios_imagenes";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/servicios_imagenes/banners_servicios_imagenes";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction


 function elimina_cursos_imagenes(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/cursos_imagenes/elimina_cursos_imagenes";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/cursos_imagenes/banners_cursos_imagenes";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction


 function elimina_cursos_pdf(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/cursos_pdf/elimina_cursos_pdf";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/cursos_pdf/elimina_cursos_pdf";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction


 function elimina_cursos_word(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/cursos_word/elimina_cursos_word";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/cursos_word/elimina_cursos_word";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction
 

 function elimina_areas_imagenes(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/areas_imagenes/elimina_areas_imagenes";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/areas_imagenes/elimina_areas_imagenes";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction 
 
 function elimina_banners(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/banners/elimina_banners";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/banners/banners_banners";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction


  function elimina_cliente(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/clientes/elimina_cliente";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/clientes/elimina_cliente";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction



  function elimina_mapas(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/mapas/elimina_mapas";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/mapas/elimina_mapas";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction 


  function elimina_categoria_mapas(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/categoria_mapas/elimina_categoria";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/categoria_mapas/elimina_categoria";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction 



 function elimina_parametros(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/parametros/elimina_parametros";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/parametros/elimina_parametros";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction
 
 function elimina_locales(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/locales/elimina_locales";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/locales/elimina_locales";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction
 
 
 function elimina_articulos(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/articulos/elimina_articulos";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/articulos/elimina_articulos";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction
 
 function elimina_testimonios(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/testimonios/elimina_testimonios";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/testimonios/elimina_testimonios";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction
 
 function elimina_comentarios(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/comentarios/elimina_comentarios";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/comentarios/elimina_comentarios";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction
 
  function elimina_secciones(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/secciones/elimina_secciones";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/secciones/elimina_secciones";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction

 function elimina_categoria_servicios(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/categoria_servicios/elimina_categoria";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/categoria_servicios/elimina_categoria";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction

 function elimina_categoria_maquinarias(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/categoria_maquinarias/elimina_categoria";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/categoria_maquinarias/elimina_categoria";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction 

 function elimina_categoria_productos(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/categoria_productos/elimina_categoria";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/categoria_productos/elimina_categoria";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction
 
 function elimina_categoria_preguntas(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/categoria_preguntas/elimina_categoria";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/categoria_preguntas/elimina_categoria";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction

 function elimina_categoria_videos(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/categoria_videos/elimina_categoria";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/categoria_videos/elimina_categoria";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction
 
 function elimina_categoria_conferencias(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/categoria_conferencias/elimina_categoria";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/categoria_conferencias/elimina_categoria";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction
 
  function elimina_categoria_cursos(valor){

            
            if(document.domain=="localhost"){
                var ruta="http://localhost/doblerama/be/categoria_cursos/elimina_categoria";
            }else{
                var ruta="http://"+document.domain+"/doblerama/be/categoria_cursos/elimina_categoria";
            }


          if(confirm("Seguro de eliminar")){

              $.post(ruta, {sw:4, valores:valor}, llegajson, "json");
            // alert(valor)
          }

 }//EndFunction
 

 
 
 function email_disponible(){
     
     var email=$.trim($("#txt_email").val());
     
     if(email.length>0){
     
            if(document.domain=="localhost"){
                        var ruta="http://localhost/twoperfumes/be/cliente/email_disponible/";
                    }else{
                        var ruta="http://"+document.domain+"/doblerama/be/cliente/email_disponible/";
            }

          
          $.post(ruta, {sw:2, valores:email}, llegajson, "json");
          
    }else{
        
              var men="Por favor ingrese el email";
              alert(men);
              $("#txt_email").focus();
              
    }//endIF
     
 }//endFunction
 
 
 function seo_disponible(){
     
     var seo=$.trim($("#txt_seo").val());
     
     if(seo.length>0){
     
            if(document.domain=="localhost"){
                        var ruta="http://localhost/twoperfumes/be/producto/seo_disponible/";
                    }else{
                        var ruta="http://"+document.domain+"/doblerama/be/producto/seo_disponible/";
            }

          
          $.post(ruta, {sw:3, valores:seo}, llegajson, "json");
          
    }else{
        
              var men="Por favor ingrese el seo";
              alert(men);
              $("#txt_seo").focus();
              
    }//endIF
     
 }//endFunction
 
 
 
 

function llegajson(data){
	       
	  switch (data.sw){
			
			case "1":
						
				
                              // alert(data.dato);
                                if(data.dato=="ok"){

                                    var men="Registro eliminado en forma satisfactoria";
                                    alert(men);
                                    window.location.reload();

                                }else if(data.dato=="dependiente"){

                                    var men="No se eliminó, porque existen registros dependientes";
                                    alert(men);
                                    
                                }//endIF
                                
				break;
                                

					
					
												
                        case  "2"://email disponible: viene desde views/be/v_cliente_add
		               

                               if(data.dato=="siexiste"){

                                    var men="No, el email YA existe!";
                                    $("#sp_email_disponible").html(men);
                                    $("#sp_email_disponible").css("color","red");


                                }else{
                                    
                                     var men="Si, el email  está disponible!";
                                    $("#sp_email_disponible").html(men);
                                    $("#sp_email_disponible").css("color","green");
                                }//endIF

				break;
					  
					 
					  	
						
                        case "3"://seo disponible: viene desde views/be/v_producto_add
				
                               
                                
                                if(data.dato=="siexiste"){

                                    var men="No, el SEO YA existe!";
                                    $("#sp_seo_disponible").html(men);
                                    $("#sp_seo_disponible").css("color","red");


                                }else{
                                    
                                     var men="Si, el SEO  está disponible!";
                                    $("#sp_seo_disponible").html(men);
                                    $("#sp_seo_disponible").css("color","green");
                                }//endIF

				break;

                        case "4"://Eliminar una categoria
				 // alert(data.dato);
                                if(data.dato=="ok"){

                                    var men="Registro eliminado en forma satisfactoria";
                                    alert(men);
                                    window.location.reload();

                                }else if(data.dato=="producto_dependiente"){

                                    var men="No se eliminó, porque existen productos dependientes";
                                    alert(men);
                                
                                }else if(data.dato=="categoria_dependiente"){

                                    var men="No se eliminó, porque existen categorias hijos dependientes";
                                    alert(men);
                                    
                                }//endIF
                                
				break;

                        case "5":
                            
				if(data.dato=="ok"){

                                    var men="Registro actualizado forma satisfactoria";
                                    alert(men);
                                    window.location.reload();

                                }

				break;

                       case "6":
				if(data.dato=="ok"){

                                    var men="Registro eliminado en forma satisfactoria";
                                    alert(men);
                                    window.location.reload();

                                }

				break;

                       case "7":
				if(data.dato=="ok"){

                                    var men="Registro eliminado en forma satisfactoria";
                                    alert(men);
                                    window.location.reload();

                                }

				break;
                       case "8":
				if(data.dato=="ok"){

                                    var men="Registro eliminado en forma satisfactoria";
                                    alert(men);
                                    window.location.reload();

                                }

				break;

                       case "9":
				if(data.dato=="ok"){

                                    var men="Registro eliminado en forma satisfactoria";
                                    alert(men);
                                    window.location.reload();

                                }

				break;
								
	 }//endSwitch
	 
	 
					 
}//endFunction
							   

	
	
	