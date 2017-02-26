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


<?php //$imagen=base_url()."img_cursos/".$this->be_parametros->primera_foto_cursos($idcursos); ?>
                        <div class="panel-group " id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                              <div class="panel-heading detarea" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                  <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                   Modalidad
                                  </a>
                                </h4>
                              </div>
                              <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                  <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"><?php echo $modalidad;?></div>                                              
                                  </div>                                
                                </div>
                              </div>
                            </div>
                            
                            <div class="panel panel-default">
                              <div class="panel-heading detarea" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                  <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                  Información Inmediata por WhatsApp
                                  </a>
                                </h4>
                              </div>
                              <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                  <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                      <p class="whatsapp">   
                                        <i class="fa fa-whatsapp"></i> <b><?php echo $this->be_parametros->valor("celular_frontis"); ?></b>
                                      </p>
                                      
                                    </div>                                              
                                  </div>                                
                                </div>
                              </div>
                            </div>

                            <div class="panel panel-default">
                              <div class="panel-heading detarea" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                  <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                   Duraci&oacute;n
                                  </a>
                                </h4>
                              </div>
                              <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                  <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"><?php echo $duracion;?></div>                                              
                                  </div>                                
                                </div>
                              </div>
                            </div>

                            <div class="panel panel-default">
                              <div class="panel-heading detarea" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                  <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                   Fecha
                                  </a>
                                </h4>
                              </div>
                              <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                  <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                      <?php $fecha=$this->be_funciones->formato_fecha($fecha);?>
                                      <span>Inicio: <strong><?php echo $fecha;?></strong></span> / 
                                      <span>Precio: <strong><?php echo $precio;?></strong></span>
                                    </div>
                                  </div>                                
                                </div>
                              </div>
                            </div>                                                        

                            <div class="panel panel-default">
                              <div class="panel-heading detarea" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                  <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                   Programa
                                  </a>
                                </h4>
                              </div>
                              <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                  <div class="row">

                                    <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10"><?php echo $programado;?></div>                                              
                                    <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
                                      <?php 
                                      
                                      if($pdfs<>'0'){
                                        foreach ($pdfs as $key => $value) {
                                          $idcursos_pdf=$value->idcursos_pdf;
                                          ?>
                                          <div class="col-md-6 text-center box-file">
                                            <a href="<?php echo base_url();?>capacitacion/download/<?php echo $idcursos_pdf;?>"><img src="<?php echo base_url();?>img/pdf-icon-50x50.png"></a>
                                            <p class="color-ada" style="font-size:10px;"><?php echo $value->imagen?></p>
                                          </div><div class="clearfix"></div>
                                          <?php
                                        }
                                      }
                                      ?>
                                    </div> 

                                  </div>                                
                                </div>
                              </div>
                            </div>  
                           

                            <div class="panel panel-default">
                              <div class="panel-heading detarea" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                  <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                   Inscripciones
                                  </a>
                                </h4>
                              </div>
                              <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                  <div class="row">

                                    <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10"><?php echo $inscripcion;?></div>                                              
                                    <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
                                      <?php 
                                      
                                      if($words<>'0'){
                                        foreach ($words as $key => $value) {
                                          $idcursos_word=$value->idcursos_word;
                                          ?>
                                          <div class="col-md-6 text-center box-file">
                                            <a href="<?php echo base_url();?>word_cursos/<?php echo $value->imagen;?>"><img src="<?php echo base_url();?>img/word50_50.png"></a>
                                            <p class="color-ada" style="font-size:10px;"><?php echo $value->imagen;?></p>
                                          </div><div class="clearfix"></div>
                                          <?php
                                        }
                                      }
                                      ?>
                                    </div> 

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


