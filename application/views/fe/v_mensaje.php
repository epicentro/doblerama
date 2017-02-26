               

<section class="section-padding">
        <div class="container">
                <div class="row">
                    
                       <?php if( $this->uri->segment(2)=="contacto" and $this->uri->segment(3)=="success"  ){ ?>


                            <div class="alert alert-success mt-lg" id="contactSuccess">
                                <strong>Exito!</strong> Su consulta fue enviado con éxito. En breve estaremos en contacto con Ud.
                            </div>





                        <?php }elseif( $this->uri->segment(2)=="contacto" and $this->uri->segment(3)=="error"  ){
?>
                            <div class="alert alert-danger mt-lg" id="contactError">
                                <strong>Error!</strong> Su mensaje no pude ser enviado.
                                <span class="font-size-xs mt-sm display-block" id="mailErrorMessage"></span>
                            </div>
                            <?php
                            }//endIF ?>
                                                    

                    <!-- INSERT OTHERS GALLERY ITEMS HERE -->
                   
                </div>
                
            
            

                <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                    <a href="javascript: history.back(1)" class="waves-effect waves-light btn submit-button blue mt-30 pull-right">Volver</a>
                  </div>
                </div>             
            </div>
            
            
    </section>