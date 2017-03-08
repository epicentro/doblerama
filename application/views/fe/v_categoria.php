<section class="" style="padding: 40px 0;" id="categorias">
  <div class="container">

    <ul class="featured plus-box grid-3 equal-height-row">
      <?php
      
        if($cat_productos!="0"){
          $n=1;
            foreach($cat_productos as $cs){

            ?>  

      <li>
        <div class="featured-item equal-height-column">
          <div class="icon"> <a href="<?php echo base_url().'categoria/'.$cs->seo;?>"><i class="material-icons"><img src="<?php echo base_url().'img_categorias/'.$cs->imagen;?>" alt="<?php echo $cs->nombre;?>"></i> </a></div>
          <div class="desc">
            <h2><a href="<?php echo base_url().'categoria/'.$cs->seo;?>"><?php echo $cs->nombre;?></a></h2>
            <p><?php //echo $cs->sumilla;?></p>
          </div>
        </div>
      </li>                
              
        <?php }}else{
          ?>
            <p>No hay resultados</p>
          <?php
          }?>    


    </ul>
  </div>
</section>


