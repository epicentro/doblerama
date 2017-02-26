

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
                  <li><a href="<?php echo base_url();?>">Inicio</a></li>
              </ul>
          </div>           
        </div>

        <div class="row">
            <div class="col-md-12 ">


                <div class="property-query-area padding-all20">
                    



                    <div class="row">

                                        
                            
                            <?php
                            
                            
                            
                                  if($cat_areas!="0"){
                                      foreach($cat_areas as $cs){
                                          ?>
<!--                           <div class="col-md-4 col-sm-6">
                            <div class="property_item bottom40">
                              <div class="image">
                                <a href="<?php //echo base_url();?>categoria-areas/<?php //echo $cs->seo;?>"><img src="<?php //echo base_url()."img_areas/".$cs->imagen; ?>" alt="listin" class="img-responsive"></a>
                                
                              </div>
                              <div class="proerty_content">
                                
                                <div class="proerty_text">
                                  <h3><a href="<?php //echo base_url();?>categoria-areas/<?php //echo $cs->seo;?>"><?php //echo $cs->nombre; ?></a></h3>
                                </div>
                                <div class="favroute clearfix">
                                  <p class="pull-md-left"></p>
                                  <ul class="pull-right">
                                    
                                    <li><a href="<?php //echo base_url();?>categoria-areas/<?php //echo $cs->seo;?>  "><i class="fa fa-search-plus" aria-hidden="true"></i></a></li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </div>  -->                           
                            

        <div class="col-xs-12">
            <div class="property-list-list list-vert-2">
                            <div class="col-xs-12 col-sm-3 col-md-3 property-list-list-image">
                                <img src="<?php echo base_url()."img_areas/".$cs->imagen; ?>" alt="<?php echo $cs->nombre;?>" class="img-responsive">
                            </div>
                            <div class="col-xs-12 col-sm-9 col-md-9 property-list-list-info bottom10">
                              
                                   <div class="col-xs-12 col-sm-12 col-md-12">
                                      <a href="<?php echo base_url().'categoria-areas/'.$cs->seo;?>"><h3><?php echo $cs->nombre;?></h3></a>
                                  </div>
                                  
                                  <div class="col-xs-12 col-sm-12 col-md-12 sumilla-area">
                                      <div><?php echo $cs->sumilla;?></div>
                                  </div>
                                  <div class="col-xs-12 col-sm-12 col-md-12">
                                    <a href="<?php echo base_url().'categoria-areas/'.$cs->seo;?>" class="btn btn-ada pull-right btn-xs">Ver mas</a>
                                  </div>
                              

                            </div> 
                          </div> 
                        </div>  
                            
                            
                                          <?php
                                      }
                                          
                                  }
                            ?>   




                          
                    </div>




                    
                </div><!--property-query-area-->

            </div>

           

        </div><!--row-->
    </div><!--container-->
</section>
<!--===== #/LISTING STYLE - 1 =====-->

