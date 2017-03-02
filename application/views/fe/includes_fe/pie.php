<!--footer start -->
<footer class="footer footer-one footer_area">
  <div class="primary-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-4 widget clearfix">
          <h2 class="white-text">Doble Rama</h2>
          <p><?php echo $this->be_parametros->valor("texto_footer"); ?></p>
          <h2 class="white-text">Social Media</h2>
          <ul class="social-link tt-animate ltr">
            <li><a href="<?php echo $this->be_parametros->valor("link_facebook"); ?>"  target="_blank"><i class="fa fa-facebook"></i></a></li>
            <li><a href="<?php echo $this->be_parametros->valor("link_twitter"); ?>" target="_blank"><i class="fa fa-twitter"></i></a></li>
           <li><a href="<?php echo $this->be_parametros->valor("link_linkedin"); ?>" target="_blank"><i class="fa fa-linkedin"></i></a></li>
            <li><a href="<?php echo $this->be_parametros->valor("link_youtube"); ?>" target="_blank"><i class="fa fa-youtube-play"></i></a></li>     
          </ul>
        </div>
        <div class="col-md-4 widget">
          <h2 class="white-text">Mapa Web</h2>
          <ul class="footer-list">
            <li><a href="<?php echo base_url(); ?>"><i class="fa fa-angle-double-right"></i> Inicio</a></li>
            <li><a href="<?php echo base_url().'nosotros/'; ?>"><i class="fa fa-angle-double-right"></i> Nosotros</a></li>
            <li><a href="<?php echo base_url().'categorias/'; ?>"><i class="fa fa-angle-double-right"></i> Productos</a></li>
            <li><a href="<?php echo base_url().'preguntas-frecuentes/'; ?>"><i class="fa fa-angle-double-right"></i> Preguntas Frecuentes </a></li>
            <li><a href="<?php echo base_url().'noticias/'; ?>"><i class="fa fa-angle-double-right"></i> Blog</a></li>
            <!--
            <li><a href="<?php echo base_url().'sucursales'; ?>" ><i class="fa fa-angle-double-right"></i> Sucursales</a></li>
            -->
            <li><a href="<?php echo base_url().'contacto'; ?>"><i class="fa fa-angle-double-right"></i> Contacto</a></li>
          </ul>
        </div>
        <div class="col-md-4 widget">
          <h2 class="white-text">Boletín</h2>
          <form action="<?php echo base_url()."procesar/boletin/"; ?>" method="POST">
            <div class="form-group clearfix">
              <input type="email" class="form-control" id="subscribe" placeholder="Ingrese su email" name="email" required>
              <button type="submit" class="tt-animate ltr"><i class="fa fa-long-arrow-right"></i></button>
            </div>
          </form>
          <div class="widget-tags">
            <h2 class="white-text">Datos de contacto</h2>
            <a href="javascript:void(0);"><?php echo $this->be_parametros->valor("telefono_frontis"); ?></a> <a href="javascript:void(0);">WhatsApp: <?php echo $this->be_parametros->valor("celular_frontis"); ?></a> 
            <!--
            <a href="javascript:void(0);">Dirección: <?php echo $this->be_parametros->valor("direccion").' '.$this->be_parametros->valor("distrito"); ?></a>  </div>
            -->
        </div>
      </div>
    </div>
  </div>
  <div class="secondary-footer">
    <div class="container"> 
        <div class="pie col-md-6  text-left">Copyright © 2017 Todos los derechos reservados.</div> 
        <div class="pie col-md-6 text-right">Desarrollado por: <a href="http://www.solucionesajax.com/" target="_blank">Soluciones Ajax</a></div> 
    </div>
  </div>
</footer>
<!-- <div id="preloader">
  <div class="preloader-position"> <img src="<?php echo base_url();?>imagenes/loading_circle.gif" alt="logo" ></div>
</div> -->
<div class="scrollup"><i class="material-icons topup">&#xE316;</i></div>

<!-- jQuery --> 
<script src="<?php echo base_url(); ?>assets/js/jquery-2.1.3.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/materialize/js/materialize.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/js/menuzord.js"></script> 
<script src="<?php echo base_url(); ?>assets/js/bootstrap-tabcollapse.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/js/animated-headline.js"></script> 
<script src="<?php echo base_url(); ?>assets/js/jquery.easing.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/js/jquery.sticky.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/js/smoothscroll.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/js/imagesloaded.js"></script> 
<script src="<?php echo base_url(); ?>assets/js/jquery.stellar.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/js/jquery.inview.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/js/jquery.shuffle.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/owl.carousel/owl.carousel.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/flexSlider/jquery.flexslider-min.js"></script> 
<script src="<?php echo base_url(); ?>assets/magnific-popup/jquery.magnific-popup.min.js"></script> 

<script src="<?php echo base_url(); ?>assets/js/scripts.js"></script> 

<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAOBKD6V47-g_3opmidcmFapb3kSNAR70U"></script>
<script src="<?php echo base_url(); ?>assets/js/gmaps.js"></script>

<?php 
if(isset($latitud_centro_suc)){
  $lat1=$latitud_centro_suc;
  $lng1=$longitud_centro_suc;
  $lat2=$latitud_punto_suc;
  $lng2=$longitud_punto_suc; 
  $title_mapa= "";   
}else{
  $lat1=$this->be_parametros->valor("latitud_mapa");
  $lng1=$this->be_parametros->valor("longitud_mapa");
  $lat2=$this->be_parametros->valor("latitud_mapa");
  $lng2=$this->be_parametros->valor("longitud_mapa");     
  $title_mapa="Doble Rama";  
}
?>
<!-- Google Map Customization  --> 
<script type="text/javascript">
   var map;
    map = new GMaps({
        el: '#map',
        lat: <?php echo $lat1; ?>,
        lng: <?php echo $lng1; ?>,
        scrollwheel: false
    });

    map.addMarker({
        lat: <?php echo $lat2; ?>,
        lng: <?php echo $lng2; ?>,
        title: '<?php echo $title_mapa;?>',
        infoWindow: {
            content: '<p><?php echo $this->be_parametros->valor("direccion")." ".$this->be_parametros->valor("distrito"); ?></p>'
        }
    });  
</script>



<script>
$('.chart-skill-wrapper').on('inview', function(event, visible, visiblePartX, visiblePartY) {
  if (visible) {
    $('.chart').easyPieChart({
      //your configuration goes here
      easing: 'easeOut',
      delay: 3000,
      barColor:'#03A9F4',
      trackColor:'rgba(238,238,238,0.8)',
      scaleColor: false,
      lineWidth: 15,
      size: 150,
      animate: 2000,
      onStep: function(from, to, percent) {
        this.el.children[0].innerHTML = Math.round(percent);
      }

    });
    $(this).off('inview');
  }
});
</script> 

<!-- RS5.0 Core JS Files --> 
<script src="<?php echo base_url(); ?>assets/revolution/js/jquery.themepunch.tools.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/revolution/js/jquery.themepunch.revolution.min.js"></script> 

<!-- RS5.0 Init  --> 
<script type="text/javascript">
jQuery(document).on('ready',function() {
jQuery(".un-material-slider").revolution({
  sliderType:"standard",
  sliderLayout:"fullscreen",
  delay:7000,
  navigation: {
    keyboardNavigation: "on",
    keyboard_direction: "horizontal",
    mouseScrollNavigation: "off",
    onHoverStop: "on",
    touch: {
      touchenabled: "on",
      swipe_threshold: 75,
      swipe_min_touches: 1,
      swipe_direction: "horizontal",
      drag_block_vertical: false
    },
    arrows: {
      style: "gyges",
      enable: true,
      hide_onmobile: false,
      hide_onleave: true,
      tmp: '',
      left: {
        h_align: "left",
        v_align: "center",
        h_offset: 10,
        v_offset: 0
      },
      right: {
        h_align: "right",
        v_align: "center",
        h_offset: 10,
        v_offset: 0
      }
    }
  },
  responsiveLevels:[1240,1024,778,480],
  gridwidth:[1240,1024,778,480],
  gridheight:[700,600,500,500],
  disableProgressBar:"on",
  parallax: {
    type:"mouse",
    origo:"slidercenter",
    speed:2000,
    levels:[2,3,4,5,6,7,12,16,10,50],
  }

});
});
</script> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/revolution/js/extensions/revolution.extension.video.min.js"></script> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/revolution/js/extensions/revolution.extension.slideanims.min.js"></script> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/revolution/js/extensions/revolution.extension.actions.min.js"></script> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/revolution/js/extensions/revolution.extension.kenburn.min.js"></script> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/revolution/js/extensions/revolution.extension.navigation.min.js"></script> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/revolution/js/extensions/revolution.extension.migration.min.js"></script> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/revolution/js/extensions/revolution.extension.parallax.min.js"></script>




</body>
</html>


