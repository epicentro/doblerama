



<!--===== LISTING STYLE - 1 =====-->
<section id="news-section-1" class="listing-1 bg_light padding30-top padding30-bottom">
    <div class="container ">

      <div class="row">
        <div class="col-xs-12">
          <h2 class="uppercase"> <span class="color_red"><?php echo $titulo;?></span></h2>
          <div class="line_1"></div>
           <div class="line_2"></div>
           <div class="line_3"></div> 
        </div>
      </div>

      <div class="row bg_white">
        <div class="col-md-12 ">


          <div class="property-query-area">
                  
            <?php if(!empty($descripcion)) echo '<br/>'.$descripcion.'<br/><br/>';?>


           
            <div class="row">

              <?php
              if(count($cursos)>0){
                foreach ($cursos as $key => $value) {
                  $idcursos=$value->idcursos;
                  $imagen=$this->be_parametros->primera_foto_cursos($idcursos);
                  //$imagen=$this->be_funciones->nombre_thumbs($imagen);
                  $pathImagen=base_url()."img_cursos/".$imagen;
                  ?>
        <div class="col-xs-12">
            <div class="property-list-list list-vert-2">
                            <div class="col-xs-12 col-sm-3 col-md-3 property-list-list-image">
                                <img src="<?php echo $pathImagen; ?>" alt="<?php echo $value->nombre;?>" class="img-responsive">
                            </div>
                            <div class="col-xs-12 col-sm-9 col-md-9 property-list-list-info bottom10">
                              
                                   <div class="col-xs-12 col-sm-12 col-md-12">
                                      <a href="<?php echo base_url().'capacitacion/'.$value->seo;?>"><h3><?php echo $value->nombre;?></h3></a>
                                  </div>
                                  
                                  <div class="col-xs-12 col-sm-12 col-md-12 sumilla-area">
                                      <div><?php echo $value->sumilla;?></div>
                                  </div>
                                  <div class="col-xs-12 col-sm-12 col-md-12">
                                    <a href="<?php echo base_url().'capacitacion/'.$value->seo;?>" class="btn btn-ada pull-right btn-xs">Ver mas</a>
                                  </div>
                              

                            </div> 
                          </div> 
                        </div> 




                  <?php
                }
              }
              ?>


            
            </div><!--row-->

          </div>
        </div><!--col-md-12 -->
      </div><!--row-->
    </div><!--container-->      
</section>
<!--===== #/LISTING STYLE - 1 =====-->

