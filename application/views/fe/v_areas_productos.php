<!--===== LISTING STYLE - 1 =====-->

<section id="agent-p-2" class="listing-1 bg_light padding30-top padding30-bottom">

    <div class="container ">

        <div class="row">
          <div class="col-xs-6">
            <h2 class="uppercase"> <span class="color_red"><?php echo $titulo;?></span></h2>
            <div class="line_1"></div>
             <div class="line_2"></div>
             <div class="line_3"></div> 
          </div>
          <div class="col-md-6">
              <ul class="breadcrumb">
                  
                  <?php   echo $this->be_categorias->recursivo_migajas_li_area($idcategoria_areas);?>
                  <li><a href="">Inicio</a></li>
              </ul>
          </div>          
        </div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">


               
                    <div class="row">
                        <div class="col-md-12">



                              

                            <div class="clearfix"></div>





                         <?php
                            if($areas!="0"){
                                $con=1;
                                foreach($areas as $pro){
                                    $imagen=base_url()."img_areas/".$this->be_parametros->primera_foto_areas($pro->idareas); ?>

                              


<!--                                     <div class="col-md-4 col-sm-6">
                                      <div class="property_item bottom40" style="margin-top:0;">
                                        <div class="image">
                                          <a href="<?php //echo base_url().'area/'.$pro->seo;?>"><img src="<?php //echo $imagen;?>" alt="<?php //echo $pro->nombre;?>" class="img-responsive"></a>
                                          
                                        </div>
                                        <div class="proerty_content">
                                          
                                          <div class="proerty_text">
                                            <h3><a href="<?php //echo base_url().'area/'.$pro->seo;?>"><?php //echo $pro->nombre;?></a></h3>
                                          </div>
                                          <div class="favroute clearfix">
                                            <p class="pull-md-left"></p>
                                            <ul class="pull-right">
                                              
                                              <li><a href="<?php //echo base_url().'area/'.$pro->seo;?>"><i class="fa fa-search-plus" aria-hidden="true"></i></a></li>
                                            </ul>
                                          </div>
                                        </div>
                                      </div>
                                    </div> -->
                                  
                                                               
        <div class="col-xs-12">
            <div class="property-list-list list-vert-2">
                            <div class="col-xs-12 col-sm-3 col-md-3 property-list-list-image">
                                <img src="<?php echo $imagen;?>" alt="<?php echo $pro->nombre;?>" class="img-responsive">
                            </div>
                            <div class="col-xs-12 col-sm-9 col-md-9 property-list-list-info bottom10">
                              
                                   <div class="col-xs-12 col-sm-12 col-md-12">
                                      <a href="<?php echo base_url().'area/'.$pro->seo;?>"><h3><?php echo $pro->nombre;?></h3></a>
                                  </div>
                                  
                                  <div class="col-xs-12 col-sm-12 col-md-12 sumilla-area">
                                      <div><?php echo $pro->sumilla;?></div>
                                  </div>
                                  <div class="col-xs-12 col-sm-12 col-md-12">
                                    <a href="<?php echo base_url().'area/'.$pro->seo;?>" class="btn btn-ada pull-right btn-xs">Ver mas</a>
                                  </div>
                              

                            </div> 
                          </div> 
                        </div>  
                                                       
               
                                    <?php

                                        if($con % 3 == 0){echo '<div class="clearfix"></div>';}
                                        $con ++;
                                  }//endFor
                                      
                              }//endIF
                        ?>                        


                        </div>
                    </div>
                    
                

            </div>

<!--             <div class="col-md-4 colsm-4 col-xs-12">
<?php //echo $formulario_right;?>

            </div> -->

        </div><!--row-->
    </div><!--container-->
</section>
<!--===== #/LISTING STYLE - 1 =====-->










                                        
                                        
                                        
                                        
