



<!--===== LISTING STYLE - 1 =====-->
<section id="agent-p-2" class="listing-1 bg_light padding30-top padding30-bottom">
    <div class="container ">

        <div class="row">
          <div class="col-xs-12">
            <h2 class="uppercase"> <span class="color_red"><?php echo $titulo;?></span></h2>
            <div class="line_1"></div>
             <div class="line_2"></div>
             <div class="line_3"></div> 
          </div>
        </div>

        <div class="row">
            <div class="col-md-12 ">


                <div class="property-query-area padding-all20">
                    
<?php if(!empty($descripcion)) echo $descripcion;?>


                   
                     <div class="row">
                     <?php
                                    if($servicios!="0"){
                                        $con=1;
                                        foreach($servicios as $pro){
                                            ?>

<!--                           <div class="col-md-4 col-sm-4 top40 serv">
                            <div class="feature_box equal-height">
                              <div class="image">
                                <a href="<?php //echo base_url()."servicio/".$pro->seo."/"; ?>"><img src="<?php //echo base_url()."img_servicios/".$this->be_parametros->primera_foto_servicios($pro->idservicios); ?>" alt="<?php //echo $pro->nombre; ?>" class="img-responsive"></a>
                                
                              </div>
                              <div class="description">
                                <h4><a href="<?php //echo base_url()."servicio/".$pro->seo."/"; ?>"><?php //echo $pro->nombre; ?><a></h4>
                                <a href="<?php //echo base_url()."servicio/".$pro->seo."/"; ?>" class="link_arrow top20">Leer más</a> 
                              </div>
                            </div>
                          </div>  -->  

        <div class="col-xs-12">
            <div class="property-list-list list-vert-2">
                            <div class="col-xs-12 col-sm-3 col-md-3 property-list-list-image">
                                <img src="<?php echo base_url()."img_servicios/".$this->be_parametros->primera_foto_servicios($pro->idservicios); ?>" alt="<?php echo $pro->nombre;?>" class="img-responsive">
                            </div>
                            <div class="col-xs-12 col-sm-9 col-md-9 property-list-list-info bottom10">
                              
                                   <div class="col-xs-12 col-sm-12 col-md-12">
                                      <a href="<?php echo base_url()."servicio/".$pro->seo."/"; ?>"><h3><?php echo $pro->nombre;?></h3></a>
                                  </div>
                                  
                                  <div class="col-xs-12 col-sm-12 col-md-12 sumilla-area">
                                      <div><?php echo $pro->sumilla;?></div>
                                  </div>
                                  <div class="col-xs-12 col-sm-12 col-md-12">
                                    <a href="<?php echo base_url()."servicio/".$pro->seo."/"; ?>" class="btn btn-ada pull-right btn-xs">Ver mas</a>
                                  </div>
                              

                            </div> 
                          </div> 
                        </div>                                                                     
                                                                                      
                       
                                            <?php
                                        if($con % 3 == 0){echo '<div class="clearfix"></div>';}
                                        $con ++;  
                                                
                                          }//endFor
                                              
                                      }//endIF?>
      







                         
                      </div>






                    
                </div><!--property-query-area-->

            </div>

           

        </div><!--row-->
    </div><!--container-->
</section>
<!--===== #/LISTING STYLE - 1 =====-->

