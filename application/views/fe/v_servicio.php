<!--===== LISTING STYLE - 1 =====-->
<section id="agent-p-2" class="listing-1 bg_light padding30-top padding30-bottom">
    <div class="container ">

        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2 class="uppercase"> <span class="color_red"><?php echo $titulo; ?></span></h2>
            <div class="line_1"></div>
             <div class="line_2"></div>
             <div class="line_3"></div> 
          </div>
<!--           <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
              <ul class="breadcrumb">
                  
                  <?php   echo $this->be_categorias->recursivo_migajas_li_area($idcategoria_areas);?>
                  <li><a href="<?php echo base_url();?>">Inicio</a></li>
              </ul>          
          </div> -->
        </div>

        <div class="row">
            <div class="col-md-8 col-sm-12 col-xs-12">


                <div class="property-query-area padding-all20">
                    <div class="row">
                        <div class="col-md-12">



                              

                            <div class="clearfix"></div>


<?php $imagen=base_url()."img_servicios/".$this->be_parametros->primera_foto_servicios($idservicios); ?>
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                              <div class="panel-heading detarea" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                  <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                   Descripci&oacute;n
                                  </a>
                                </h4>
                              </div>
                              <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                            <div class="row">
                                              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                              <img class="img-responsive pull-left" src="<?php echo $imagen;?>" style="margin: 0 15px 15px 0;">
                                              <?php echo $descripcion;?></div>                                              
                                            </div>                                




                                </div>
                              </div>
                           
                            </div>
                            


                           





                             


                        </div><!--panel-group-->


                                            <div class="row">
                                              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                                <a href="javascript: history.back(1)" class="btn btn-ada btn-xs pull-right">Volver</a>
                                              </div>
                                            </div>   










                            
                        </div>
                    </div>
                    
                </div><!--property-query-area-->

            </div>

            <div class="col-md-4 colsm-4 col-xs-12">

            	<?php echo $formulario_right;?>

            </div>

        </div><!--row-->
    </div><!--container-->
</section>
<!--===== #/LISTING STYLE - 1 =====-->


