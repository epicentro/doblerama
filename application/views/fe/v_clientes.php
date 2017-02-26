<section id="news-section-1" class="listing-1 bg_light padding30-top padding30-bottom">
                                            
                <div class="container">

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


                      <div class="property-query-area padding-all20">
                          
                        <?php if(!empty($descripcion)) echo $descripcion.'<br/><br/>';?>


                         
                           <div class="row">

                              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                <div class="row">
                                  <ul class="image-gallery sort-destination lightbox">

                                    <?php
                                      if($clientes!="0"){

                                          
                                          foreach($clientes as $cli){
                                              

                                              ?>
                                    

                                              <li class="col-lg-2 col-md-2 col-sm-4 col-xs-6">
                                                <div class="image-gallery-item">
                                                  <span class="thumb-info">   
                                                      <span class="thumb-info-wrapper cli">
                                                        <img src="<?php echo base_url()."img_clientes/".$cli->imagen; ?>" class="img-responsive" alt="">
                                                      </span>
                                                  </span>
                                                </div> 
                                              </li>                                            
                                    
                                    
                                              <?php

                                              
                                              
                                          }//endFor
                                      }//endIF
                                    ?>                          


                                    <hr/>
                                    <div class="clearfix"></div>   
                                  </ul>
                                </div>
                              </div>
                            </div>
                      </div>
                    </div>
                </div><!--row-->
              </div>
</section>
              