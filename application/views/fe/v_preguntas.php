
<?php
//var_dump($preguntas);
?>
<section class="" style="padding: 40px 0;">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="panel-group feature-accordion brand-accordion icon angle-icon" id="accordion-one">
        <?php 
        if($categoria_preguntas<>'0'){
          $n=1;
           
          foreach ($categoria_preguntas as $key => $value) {

            $nombre=$value->nombre;
            $idcategoria_preguntas=$value->idcategoria_preguntas;            
            $lista_preguntas=$this->be_parametros->lista_preguntas($idcategoria_preguntas);
            if($n<>1) $br='<br>'; else $br='';
            echo $br.$br
            ?>
            <h2><?php echo $nombre?></h2>

            <?php
            if($lista_preguntas<>''){
              foreach ($lista_preguntas as $key2 => $value2) {
                if($n==1) $in='in'; else $in='';
                if($n<>1) $collapsed='collapsed'; else $collapsed='';                 
                
                ?>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h3 class="panel-title"> <a class="<?php echo $collapsed;?>" data-toggle="collapse" data-parent="#accordion-one" href="#collapse-<?php echo $n;?>"><?php echo $n.'. '.$value2->pregunta;?></a> </h3>
                  </div>
                  <div id="collapse-<?php echo $n;?>" class="panel-collapse collapse <?php echo $in;?>">
                    <div class="panel-body"><?php echo $value2->respuesta;?></div>
                  </div>
                </div>
                <?php
                $n++;
              }
            }
            ?>

            <?php
            
          }
        }
        ?>


        </div>
      </div>        
    </div>      
  </div>    
</section>