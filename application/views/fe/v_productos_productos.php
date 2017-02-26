<section class="" style="margin-top: 40px;">
  <div class="container">

                    <div class="row equal-height-row icon_box2_hex">
                        <?php 

                        if($productos<>'0'){
                          $n=1;
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
                            if($n % 3 ==0){?> <div class="clearfix hidden-xs hidden-sm"></div> <?php }
                            if($n % 2 ==0){?> <div class="clearfix hidden-xs hidden-md hidden-lg"></div> <?php }
                            ?>
                            
                            <?php
                            $n++;
                          }
                        }else{
                          ?>
                            <p>Esta categor&iacute;a no tiene productos</p>
                          <?php
                        }
                        ?>


                    </div>
  </div>
</section>


