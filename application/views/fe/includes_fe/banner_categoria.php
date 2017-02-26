<!--page title start-->
<section class="page-title page-title-bg fixed-bg overlay dark-3 ptb-90">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h1 class="white-text text-bold"><?php echo $nombre;?></h1>
        <ol class="breadcrumb">
          <li><a href="<?php echo base_url();?>">Inicio</a></li>          
          <?php   echo $this->be_categorias->recursivo_migajas_li($idcategoria_productos);?>          
        </ol>
      </div>
    </div>
  </div>
</section>
<!--page title end-->

 