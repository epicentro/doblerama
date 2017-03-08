<section class=" grid-news" style="padding: 40px 0;">
  <div class="container">
    <div class="row">

     <?php
      if($noticias!="0"){
          $con=1;
          foreach($noticias as $pro){
            ?>
            <div class="col-md-4">
              <article class="post-wrapper">
                <div class="thumb-wrapper waves-effect waves-block waves-light"> <a href="<?php echo base_url()."item/".$pro->seo."/"; ?>"><img src="<?php echo base_url()."img_articulos/".$pro->imagen; ?>" class="img-responsive" alt="<?php echo $pro->nombre; ?>"></a> </div>
                <div class="blog-content">
                  <header class="entry-header-wrapper sticky">
                    <div class="entry-header">
                      <h2 class="entry-title"><a href="<?php echo base_url()."item/".$pro->seo."/"; ?>"><?php echo $pro->nombre; ?></a></h2>
                      <div class="entry-meta">
                        <ul class="list-inline">
                          <li> <i class="fa fa-user"></i> <a href="#"><?php echo $pro->autor; ?></a> </li>
                          <li> <i class="fa fa-clock-o"></i> <a href="#"><?php echo $this->be_funciones->formato_fecha($pro->fecha); ?></a> </li>
                        </ul>
                      </div>
                    </div>
                  </header>
                  <div class="entry-content">
                    <p><?php echo $pro->sumilla; ?></p>
                  </div>
                  <footer class="entry-footer">
      <!--               <ul class="list-inline pull-left">
                      <li><a href="#"><i class="fa fa-heart-o"></i> 42</a></li>
                      <li><a href="#"><i class="fa fa-comments"></i> 15</a></li>
                      <li><a href="#"><i class="fa fa-share-alt"></i> Share</a></li>
                    </ul> -->
                    <a class="readmore pull-right" href="<?php echo base_url()."item/".$pro->seo."/"; ?>"><i class="fa fa-hand-o-right"></i> Leer mas</a> </footer>
                </div>
              </article>
            </div>

 
            
                                       
                                                                                      

            <?php

                
          }//endFor
              
      }//endIF?>    


    </div>

    <div class="row">
      <div class="col-md-12 padding-all20">
      <?php echo $this->pagination->create_links();?>

      </div>
    </div>

  </div>
</section>

