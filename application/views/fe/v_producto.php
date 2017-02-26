<section class="" style="margin: 40px 0;" id="producto_detalle">
  <div class="container">
    <h2 class="font-30 text-medium mb-30"><?php echo $titulo; ?></h2>
    <div class="row">

      <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
        <div class="gallery-thumb hidden-xs">
          <ul class="slides">
          <?php
          $fotos=$this->be_parametros->archivos_producto($idproductos);
          if(count($fotos)>0){
            foreach ($fotos as $key => $value) {
                $thumbs=$this->be_funciones->nombre_thumbs($value->imagen);
                ?>
                <li data-thumb="<?php echo base_url().'img_productos/'.$thumbs;?>"> <img src="<?php echo base_url().'img_productos/'.$value->imagen;?>" alt="image"> </li>
                <?php
            }
          }
          ?>

          </ul>
        </div>

      </div>
          
      <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
       <!--   
        <hr>
        <p style="margin: 10px 0 !important;"><?php echo $sumilla; ?></p>
        <hr>  
       -->
        <br/>   
        <p><?php echo $descripcion; ?></p>
        <hr>
        <br/>

        <div class="gallery-thumb hidden-sm hidden-md hidden-lg">
          <ul class="slides">
          <?php
          $fotos=$this->be_parametros->archivos_producto($idproductos);
          if(count($fotos)>0){
            foreach ($fotos as $key => $value) {
                $thumbs=$this->be_funciones->nombre_thumbs($value->imagen);
                ?>
                <li data-thumb="<?php echo base_url().'img_productos/'.$thumbs;?>"> <img src="<?php echo base_url().'img_productos/'.$value->imagen;?>" alt="image"> </li>
                <?php
            }
          }
          ?>

          </ul>
        </div>

        <br/>
        <br/>

        <h3>Información inmediata</h3>
        <img src="<?php echo base_url()."img/whatsapp.png"; ?>">
        <span style="font-size: 18px;margin-left: 10px; font-weight: bold;"><?php echo $this->be_parametros->valor("celular_frontis"); ?></span>

        <br/>
        <br/>
        <br/>
        <div class="comments-tab">
        <?php 
            echo $formulario_right;
        ?>
        </div>

                
        <br/>        <br/>        
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <a href="javascript: history.back(1)" class="btn-back">Volver</a>
            </div>
        </div>
      </div>

    </div>
  </div>
</section>

               