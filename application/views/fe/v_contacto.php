<!-- map-section -->
<!--
<div id="map" class="height-350"></div>
-->
<!-- /.map-section --> 



<section class="" style="padding: 40px 0;">
  <div class="container">
    <div class="text-center mb-80">
        <h2 class="section-title text-uppercase" style="font-size: 28px">Formulario de Contacto</h2>
      <p><?php echo $descripcion;?></p>
    </div>
    <div class="row">
      <div class="col-md-8">
        <form name="contact-form" id="" action="<?php echo base_url()."procesar/grabar/"; ?>" method="POST">
          <div class="row">
            <div class="col-md-6">
              <div class="input-field">
                <input type="text" name="txt_nombres" required class="validate" id="name">
                <label for="name">Nombre <span>*</span></label>
              </div>
            </div>
            <div class="col-md-6">
              <div class="input-field">
                <label for="email">Email <span>*</span></label>
                <input id="email" type="email" required name="txt_email" class="validate" >
                <label for="email" data-error="wrong" data-success="right">Email</label>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="input-field">
                <input id="phone" type="text" required name="txt_telefono" class="validate" >
                <label for="phone">Tel&eacute;fono <span>*</span></label>
              </div>
            </div>
            <div class="col-md-6">
              <div class="input-field">
                <input id="asunto" type="text" required name="txt_asunto" class="validate" >
                <label for="asunto">Asunto<span>*</span></label>
              </div>
            </div>
          </div>
          <div class="input-field">
            <textarea name="txt_comentario" id="message" class="materialize-textarea" ></textarea>
            <label for="message">Mensaje</label>
          </div>
          <input type="hidden" name="link" id="link" value="<?php echo base_url().$this->uri->segment(1); ?>"/>   
          <button type="submit" name="submit" class="waves-effect waves-light btn submit-button blue mt-30">Enviar</button>
        </form>
      </div>
      <div class="col-md-4 col-lg-4 col-sm-12 mr-top-30">
        <!--  
        <div class="col-xs-12 col-md-12 col-lg-12 col-sm-12">
          <div class="media media-iconic">
            <div class="media-body">
              <div class="lt-co-icon"> <img src="<?php echo base_url();?>assets/img/ic-loc.png" alt="ic-loc"> </div>
              <div class="lt-co-blok-text">
                <div class="lt-co-title">Direcci&oacute;n</div>
                <hr class="lt-co-yellow-hr">
                <p class="lt-bdr-one"><?php echo $this->be_parametros->valor("direccion"); ?></p>
              </div>
            </div>
          </div>
        </div>
        -->
        <div class="col-xs-12 col-md-12 col-lg-12 col-sm-12">
          <div class="media media-iconic">
            <div class="media-body">
              <div class="lt-co-icon"> <img src="<?php echo base_url();?>assets/img/smartphone.png" alt="ic-call"> </div>
              <div class="lt-co-blok-text">
                <div class="lt-co-title">Tel&eacute;fono | Email</div>
                <hr class="lt-co-green-hr">
                <p class="lt-bdr-two"> <?php echo $this->be_parametros->valor("telefono_frontis"); ?><br>
                  <b>E-Mail</b> :- <a href="mailto:<?php echo $this->be_parametros->valor("correo_contacto"); ?>"><?php echo $this->be_parametros->valor("correo_contacto"); ?></a><br>
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-md-12 col-lg-12 col-sm-12">
          <div class="media media-iconic">
            <div class="media-body">
              <div class="lt-co-icon"> <img src="<?php echo base_url();?>imagenes/ic-time.png" alt="ic-time"> </div>
              <div class="lt-co-blok-text">
                <div class="lt-co-title">Horario de trabajo</div>
                <hr class="lt-bg-blue-hr">
                <p class="lt-bdr-three"><?php echo $this->be_parametros->valor("horario"); ?></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


