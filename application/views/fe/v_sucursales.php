<section class="" id="seccion_sucursales" style="padding:40px 0;">
  <div class="container">
    <div class="text-center mb-80">
<!--       <h2 class="section-title text-uppercase">Our Features</h2> -->
      <p class="section-sub"><?php echo $descripcion;?></p>
    </div>

    <?php 
      if($categoria_mapas!="0"){
        $con=1;
        foreach($categoria_mapas as $catm){
          $idcategoria_mapas=$catm->idcategoria_mapas;
          $nombre=$catm->nombre;          
          $sucursales=$this->be_parametros->sucursales_por_sede($idcategoria_mapas);

          ?>
          <h2 class="section-title_locales text-uppercase"><?php echo $nombre;?></h2>
          <ul class="featured plus-box grid-3 equal-height-row">
           <?php
            if($sucursales!=""){
                $con=1;
                foreach($sucursales as $pro){  ?>  
                  <li>
                    <div class="featured-item equal-height-column">
                      <div class="icon"><a href="<?php echo base_url().'sucursal/'.$pro->seo;?>"> <img src="<?php echo base_url().'imagenes/maps.png'?>" alt="<?php echo $pro->nombre;?>"> </a></div>
                      <div class="desc">
                        <h2><?php echo $pro->nombre;?></h2>
                        <p><?php echo $pro->direccion;?></p>
                        <p><span class="glyphicon glyphicon-earphone"></span>&nbsp;<?php echo $pro->telefono;?></p>
                        <p><span class="glyphicon glyphicon-phone"></span>&nbsp;<?php echo $pro->celular;?></p>                                    
                      </div>
                    </div>
                  </li>
                  <?php
                }
              }else{
                ?>

                <li>
                  <div class="featured-item equal-height-column">
                    <div class="icon"><a href="#"> <img src="<?php echo base_url().'imagenes/maps.png'?>" alt="mapa"> </a></div>
                    <div class="desc">
                      <h2>Sin sucursal</h2>
                    </div>
                  </div>
                </li>
                <?php                
              }
                ?>
              

          </ul>
          <?php
        }
      }
      ?>
  </div>
</section>

