<!-- Top bar -->
<div class="top-bar light-blue">
  <div class="container">
    <div class="row"> 
      <!-- Social Icon -->
      <div class="col-md-4"> 
        <!-- Social Icon -->
        <ul class="list-inline social-top tt-animate btt">
          <li><a href="<?php echo $this->be_parametros->valor("link_facebook"); ?>"  target="_blank"><i class="fa fa-facebook"></i></a></li>
          <li><a href="<?php echo $this->be_parametros->valor("link_twitter"); ?>" target="_blank"><i class="fa fa-twitter"></i></a></li>
          <li><a href="<?php echo $this->be_parametros->valor("link_linkedin"); ?>" target="_blank"><i class="fa fa-linkedin"></i></a></li>
          <li><a href="<?php echo $this->be_parametros->valor("link_youtube"); ?>" target="_blank"><i class="fa fa-youtube-play" ></i></a></li>

          
          
        </ul>
      </div>
      <div class="col-md-8 text-right">
        <ul class="topbar-cta no-margin">
          <li><i class="material-icons mr-10">&#xE0B9;</i><a href="mailto:<?php echo $this->be_parametros->valor("correo_contacto"); ?>" class="mailto"><?php echo $this->be_parametros->valor("correo_contacto"); ?></a></li>
          <li><i class="material-icons mr-10">&#xE0CD;</i><a href="#"><?php echo $this->be_parametros->valor("telefono_frontis"); ?></a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- /.top-bar --> 
<!--header start-->
<header id="header" class="tt-nav nav-border-bottom">
  <div class="header-sticky light-header">
    <div class="container">
      
      <div id="header-menu" class="menuzord"> 
        <a href="<?php echo base_url(); ?>" class="logo-brand"> 
          <!--
        <img class="retina" src="assets/img/logo.png" alt=""/> 
      --><img class="retina" src="<?php echo base_url(); ?>imagenes/logo1.png" alt=""/> 
      </a>
        <ul class="menuzord-menu pull-right">
          <li class="<?php if(isset($current) and $current=="inicio") echo 'active';?>"><a href="<?php echo base_url(); ?>">Inicio</a>
            <!--
            <ul class="dropdown">
              <li><a href="index.html"><i class="fa fa-angle-double-right"></i> Home Page 1</a></li>
              <li><a href="index-2.html"><i class="fa fa-angle-double-right"></i> Home Page 2</a></li>
              <li><a href="index-3.html"><i class="fa fa-angle-double-right"></i> Home Page 3</a></li>
              <li><a href="index-4.html"><i class="fa fa-angle-double-right"></i> Home Page 4</a></li>
              <li class="active"><a href="index-5.html"><i class="fa fa-angle-double-right"></i> Home Page 5</a></li>
            </ul>
          -->
          </li>
          <li class="<?php if(isset($current) and $current=="nosotros") echo 'active';?>"><a href="<?php echo base_url().'nosotros'; ?>">Nosotros</a>
            <!--
            <ul class="dropdown">
              <li><a href="about-us.html"><i class="fa fa-angle-double-right"></i> About Us 1</a></li>
              <li><a href="about-us-2.html"><i class="fa fa-angle-double-right"></i> About Us 2</a></li>
            </ul>
          -->
          </li>
          

          <li class="<?php if(isset($current) and $current=="productos") echo 'active';?>"><a href="<?php echo base_url().'categorias'; ?>">Productos</a>
            <ul class="dropdown">
            <?php 
              foreach ($this->cat_productos as $key => $value) {
                ?>
                <li><a href="<?php echo base_url().'categoria/'.$value->seo;?>"><i class="fa fa-caret-right"></i> <?php echo $value->nombre?></a></li>
                <?php
              }
            ?>
              
            </ul>
          </li>
           
          <!--
           <li class="<?php if(isset($current) and $current=="sucursales") echo 'active';?>"><a href="<?php echo base_url().'sucursales'; ?>">Sucursales</a>
          </li>
          -->

          <li class="<?php if(isset($current) and $current=="faqs") echo 'active';?>"><a href="<?php echo base_url().'preguntas-frecuentes'; ?>">Preguntas Frecuentes</a>
            
          </li> 
          
           <li class="<?php if(isset($current) and $current=="blogs") echo 'active';?>"><a href="<?php echo base_url().'noticias/'; ?>">Blog</a>
            
          </li>
          
          <li class="<?php if(isset($current) and $current=="contacto") echo 'active';?>"><a href="<?php echo base_url().'contacto/'; ?>">Contacto</a>
            
          </li>
        </ul>
      </div>
    </div>
  </div>
</header>
<!--header end--> 
