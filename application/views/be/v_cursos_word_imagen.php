<?php
           if(isset($recarga_padre) && $recarga_padre=="si"){

              
           echo "<script>";
           echo " window.opener.location.reload();";
                                   echo " window.close();";
           echo "</script>";
                                   exit();
           }//endIF
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload</title>
        <link rel="stylesheet" type="text/css" media="all" href="<?php echo base_url(); ?>css/personal.css" />

        <script type="text/javascript" src="<?php echo base_url(); ?>js/jquery-1.6.2.js"></script>

 <!-- ESTE jquery-ui.js es muy importante para hacer AJAX CON JSON-->
 <script type="text/javascript" src="<?php echo base_url();?>js/jquery-ui.js"></script>


 <script type="text/javascript" src="<?php echo base_url(); ?>js/mis_js.js"></script>
 <script type="text/javascript" src="<?php echo base_url();?>ajax/funciones_query.js"></script>

<style>
  body{font-family: arial;}
</style>

<script type="text/javascript">



function validar(){

    var file=$.trim($("#file").val());
    
    
    

   if(file.length==0){

       var men="Por favor seleccione el archivo .";
       alert(men);
       $("#file").focus();
        return false;

   }//endIF


   




}

</script>



    </head>
    <body>

        <?php 

                $strsql="select imagen,nombre from $this->tabla where id$this->tabla='$idtabla'";
                $fila=$this->modelo_base->c_una_fila($strsql);
              
                if(  $fila!="0" ){
                }
        ?>

       <form id="form1" method="post" enctype="multipart/form-data" action="<?php echo base_url();?>be/<?php echo $this->tabla; ?>/word/<?php echo $id; ?>/<?php echo $idtabla; ?>" onsubmit="return validar();" >

        <table cellpadding="0" cellspacing="0" class="tb_mnto" width="100%" >


<!--seo_title, seo_descripcion, seo_keywords, text_html-->


          <tr>
                    <td width="50%">
                      Seleccione el archivo Word: <img width="20" src="<?php echo base_url()."img/word.png"?>"/>
                    </td>
                    <td width="50%">
                      
                      
                      
                    <div class="upload"><input type="file" name="imagen" id="file" /></div>
                    </td>
          </tr>
       
            <tr>
                <td colspan="2">
                   <input type="submit" name="Subir" value="Grabar" id="save" />

                </td>

            </tr>

        </table>

       </form>
        
        <?php 

             
                 
              
                if(  $fila!="0" ){
        ?>
        <img width="50" src="<?php echo base_url()."img/word.png"?>"/>
                   <p><?php echo $fila->imagen;?></p>
        <?php
                    
                   
                }//endIF
               
                 
        ?>
        
        

    </body>
</html>
