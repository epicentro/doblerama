<?php
//var_dump($this->cat_productos);
?>

<section class="feature_area" id="inicio">
  <div class="container">
    <div class="row fix_m">

    <?php
    $n=1;
    foreach ($this->cat_productos as $key => $value) {
      if($n==5) break;
    ?>
      <div class="col-xs-12 col-sm-6 col-md-3 fix_p">
        <div class="single_feature text-center"> 
          <i class="fa" aria-hidden="true"><img  class="img-responsive" src="<?php echo base_url().'img_categorias/'.$value->imagen?>" alt="<?php echo $value->nombre;?>"></i>
          <h4><?php echo $value->nombre?></h4>
          <div class="single_cap">
            <?php echo $value->sumilla?>
            <a class="th_bt btn waves-effect" href="<?php echo base_url().'categoria/'.$value->seo;?>">Ver Más</a> </div>
        </div>
      </div>

    <?php
    $n++;
    }
    ?>
    </div>
  </div>
</section>
<section class="section-padding">
  <div class="container">
    <div class="text-center mb-80">
      <h2 class="section-title text-uppercase"> <?php echo $this->be_parametros->valor("titulo_bienvenida"); ?></h2>
      <p class="section-sub"><?php echo $this->be_parametros->valor("mensaje_bienvenida"); ?></p>
    </div>
    <div class="vertical-tab">
      <div class="row">
        <div class="col-sm-12">
          <ul class="nav nav-tabs nav-stacked" role="tablist">

          <?php
          $n=1;
          foreach ($this->cat_productos as $key => $value) {
            if($n==6) break;
            if($n==1){$active="active";}else{$active="";}
            ?>
              <li role="presentation" class="<?php echo $active;?>"><a href="#tab-<?php echo $n;?>" class="waves-effect waves-light" role="tab" data-toggle="tab"><?php echo $value->nombre?></a></li>
            <?php
            $n++;
          }
          ?>          

          </ul>
        </div>
        <div class="col-sm-12">
          <div class="panel-body">
            <div class="tab-content">
              <?php
              $n=1;
              foreach ($this->cat_productos as $key => $value) {
                if($n==6) break;
                if($n==1){$active="active";}else{$active="";}
                ?>
                  <div role="tabpanel" class="tab-pane fade in <?php echo $active;?>" id="tab-<?php echo $n;?>">
                    <h2><?php echo $value->nombre;?></h2>
                    <div class="row equal-height-row icon_box2_hex">
                        <?php 
                        $idcategoria_productos=$value->idcategoria_productos;
                        $productos=$this->be_parametros->productos_categoria($idcategoria_productos); 

                        if($productos<>''){
                          $n2=1;
                          foreach ($productos as $key => $value) {
                            ?>
                            <div class="col-md-4 col-sm-6 mb-30">
                              <a href="<?php echo base_url().$value->seo;?>" class="" style="display: block;">
                                <div class="featured-item border-box brand-hover equal-height-column">
                                  
                                    <img style="max-width:250px" class="img-responsive" src="<?php echo base_url().'img_productos/'.$this->be_parametros->primera_foto($value->idproductos)?>">
                                  
                                    <div class="desc">
                                      <h2><?php echo $value->nombre;?></h2>
                                     
                                  
                                      <a href="<?php echo base_url().$value->seo;?>" class="btn blue waves-effect mt-20">Ver más</a> 
                                    </div>
                                </div>
                                </a>
                            </div>
                            <?php
                            
                            if($n2 % 3 ==0){?> <div class="clearfix hidden-xs hidden-sm"></div> <?php }
                            if($n2 % 2 ==0){?> <div class="clearfix hidden-xs hidden-md hidden-lg"></div> <?php }
                              $n2++;
                                                       
                          }
                        }else{
                          ?>
                            <p>Esta categor&iacute;a no tiene productos</p>
                          <?php
                        }
                        ?>


                    </div>
                  </div>
                <?php
                $n++;
              }
              ?>          

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!--
<section class="parallax-bg testimonial-block-bg bg-fixed overlay dark-9 padding-top-100 padding-bottom-80 ">
  <div class="container">
    <div class="text-center mb-50">
      <h2 class="section-title white-text text-uppercase">Testimonios</h2>
    </div>
    <div class="row">
      <div class="col-md-8 col-md-offset-2">
        <div class="quote-carousel text-center">
        <?php
        if($this->testimonios<>''){
        foreach ($this->testimonios as $key => $value) {        ?>
          <div class="carousel-item">
            <div class="content">
              <div class="circle-thumb-list-img">
                <i class="fa fa-male" aria-hidden="true" style="
                    font-size: 44px;
                    color: #fff;
                "></i>              
                
              </div>
              <h2 class="white-text line-height-40">"<?php echo $value->sumilla; ?>"</h2>
              <div class="testimonial-meta font-20 white-text"><?php echo $value->contacto; ?></div>
            </div>
          </div>
        <?php }} ?>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="section-padding">
  <div class="container">
    <div class="text-center mb-80">
      <h2 class="section-title text-uppercase"><?php echo $this->be_parametros->valor("titulo_cliente_ini"); ?></h2>
      <p class="section-sub"><?php echo $this->be_parametros->valor("texto_cliente_ini"); ?></p>
    </div>
    <div class="clients-grid grid-gutter">
      <div class="row">
        <?php
        foreach ($clientes as $key => $value) {
          ?>
          <div class="col-md-3 col-sm-6">
            <div class="border-box"> <a href="#"> <img src="<?php echo base_url().'img_clientes/'.$value->imagen;?>" alt="<?php echo $value->nombre;?>"> </a> </div>
          </div>          
          <?php
        }
        ?>      
      </div>
    </div>
  </div>
</section>
-->


<div class="promo-box brand-bg ptb-30 purchase-block-bg">
  <div class="container">
    <div class="col-md-12 promo-box-block">
      <div class="promo-info">
        <h2 class="font-24 white-text text-bold text-uppercase no-margin"><?php echo $this->be_parametros->valor("texto_mayor_info"); ?></h2>
        <!--<span class="white-text text-uppercase">Lorem ipsum dolor sit amet, consectetur adipisicing</span> -->
      </div>
      <div class="promo-btn"> <a href="<?php echo base_url().'contacto/'?>" class="btn white waves-effect waves-grey">Clic Aquí</a> </div>
    </div>
  </div>
</div>