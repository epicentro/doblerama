
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
            <div class="col-md-12 col-sm-12 col-xs-12">

<!-- property-query-area  -->
                <div class="padding-all20">
                <?php if(!empty($descripcion)) echo $descripcion.'<br/><br/>';?>
                    <div class="row">
                      <div class="col-md-12 col-sm-8 right_box">
                        <div class=" padding clearfix" style="padding: 25px 0;">
                        <?php
                        $con=1;
                        foreach ($valores as $key => $value) {?>
<!--                           <div class="col-md-4 col-sm-6 white_content top20 bottom30">
                            <i class="<?php echo $value->icon;?>"></i>
                            <h3 class="bottom10 top20"><?php echo $value->nombre;?></h3>
                            <p><?php echo $value->sumilla;?></p>
                          </div> -->

                          <div class="property-list-list">
                            <div class="col-xs-12 col-sm-2 col-md-2 top30 wr_i ">
                                <i class="<?php echo $value->icon;?> pull-right color-ada"></i>
                            </div>
                            <div class="col-xs-12 col-sm-10 col-md-10 property-list-list-info bottom20">
                                   <div class="col-xs-12 col-sm-12 col-md-12">
                                      <a href="#"><h3><?php echo $value->nombre;?></h3></a>
                                  </div>
                                  
                                  <div class="col-xs-12 col-sm-12 col-md-12">
                                      <p><?php echo $value->sumilla;?></p>
                                  </div>

                            </div> 
                          </div>                                                       
                            <?php
                                        if($con % 3 == 0){echo '<div class="clearfix"></div>';}
                                        $con ++;                            
                        }
                        ?>

                        </div>
                      </div>
                    </div>
                    
                </div><!--property-query-area-->

            </div>



        </div><!--row-->
    </div><!--container-->
</section>
<!--===== #/LISTING STYLE - 1 =====