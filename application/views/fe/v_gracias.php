<section class="section-padding">
        <div class="container">
                <div class="row">
        
          <?php
             if( $this->uri->segment(2)=="boletin" ){
                 ?>
                 
                <div class="alert alert-success">
                        Gracias por su interés en nuestro boletin, en breve recibira noticias, novedades y tips.
                </div>
          
           <?php
             }elseif( $this->uri->segment(2)=="contacto" ){
          ?>
          
               <div class="alert alert-success">
                        Gracias por dejarnos su consulta, en breve un representante de nuestra empresa se contactará con Ud.
                </div>
          
          <?php
             }//endIF
          ?>
          
          
          
      
      </div>
    </div>


</section>




	



	







