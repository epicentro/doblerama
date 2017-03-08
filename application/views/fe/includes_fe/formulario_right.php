
                    

                    <div class="comment-respond">
                      <h3>Solicite mayor informaci&oacute;n llenando el siguiente formulario:</h3>
                      <form action="<?php echo base_url()."procesar/grabar/"; ?>" method="POST" id="commentform">
                        <div class="form-group">
                          <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 comment-form-author">
                              <input class="form-control" id="author" required placeholder="Su nombre" name="txt_nombres" type="text" value="" aria-required="true">
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 comment-form-email">
                              <input class="form-control" required placeholder="Teléfono" id="subject" name="txt_telefono" type="text" value="">                              
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 comment-form-subject">
                              <input id="email" class="form-control" required name="txt_email" placeholder="Correo Electrónico" type="email" value="" aria-required="true">
                            </div>                            
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 comment-form-subject">
                              <!-- <input class="form-control" required placeholder="Asunto" id="subject" name="txt_asunto" type="text" value=""> -->
                            </div>
                          </div>
                        </div>
                        <div class="form-group comment-form-comment" id="default-comment">
                          <textarea class="form-control" id="comment" name="txt_comentario" placeholder="Mensaje" rows="8" aria-required="true"></textarea>
                        </div>
                        <div class="form-submit">
                          <input type="hidden" name="link" id="link" value="<?php echo base_url().$this->uri->segment(1).'/'.$this->uri->segment(2); ?>"/>                                
                          <button class="btn blue waves-effect waves-light w100" name="submit" type="submit" id="submit" value="" >Enviar</button>
                        </div>
                      </form>
                    </div>                