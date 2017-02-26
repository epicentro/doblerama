<section class="blog-section" style="padding: 40px 0;">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="posts-content single-post">
          <article class="post-wrapper">
            <header class="entry-header-wrapper clearfix">
              <div class="entry-header">
                <h2 class="entry-title"><?php echo $titulo;?></h2>
                <div class="entry-meta">
                  <ul class="list-inline">
                    <li> <i class="fa fa-user"></i><a href="#"><?php echo $autor;?></a> </li>
                    <li> <i class="fa fa-clock-o"></i><a href="#"><?php echo $this->be_funciones->formato_fecha($fecha); ?></a> </li>
                  </ul>
                </div>
              </div>
            </header>
            <?php $imagen=base_url()."img_articulos/".$imagen; ?>
            <div class="thumb-wrapper"> <img src="<?php echo $imagen;?>" class="img-responsive" alt="" > </div>
            <div class="entry-content">
              <?php echo $descripcion;?>
            </div>

          </article>

        </div>
        <div class="row">
            <a href="javascript: history.back(1)" class="btn blue pull-right">Volver</a>
        </div>
      </div>
<!--       <div class="col-md-4 comments-tab">

      </div> -->
    </div>
  </div>
</section>
<!-- blog section end --> 

