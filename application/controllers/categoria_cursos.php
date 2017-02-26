<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of inicio
 *
 * @author Yasser
 */
class categoria_cursos extends padre {
    //put your code here
    
    public function __construct() {
        parent::__construct();
            
    }
    
    public function index(){
        
        
        
         $seocat=$this->uri->segment(2);
            
            //SI NO EXISTE $this->uri->segment(2) ES PORQUE HEMOS HECHO CLIC EN UNA CATEGORIA
            $strsql="select idcategoria_cursos, title, keyword, description, nombre, titulo, 
                 sumilla   from categoria_cursos 
                 where seo='$seocat' ";
            $fila=$this->modelo_base->c_una_fila($strsql);
            $idcategoria_cursos=$fila->idcategoria_cursos;
            $data["idcategoria_cursos"]=$idcategoria_cursos;
            $data["title"]=$fila->title;
            $data["keyword"]=$fila->keyword;
            $data["description"]=$fila->description;
            $data["nombre"]=$fila->nombre;
            $data["titulo"]=$fila->titulo;
            $data["sumilla"]=$fila->sumilla;
            $data["current"]="cursos";
           


            parent::carga_comun();  

            //////////////////////////////////////////////////////////////////////////////////////////
            //LO PRIMERO QUE TENEMOS QUE PREGUNTAR ES SI TENEMOS cursos PARA LA CATEGORIA ACTUAL,
            //SI TENEMOS cursos POR MAS QUE TE TENGA SUBCATEGORIAS MOSTRARA LOS cursos
            //////////////////////////////////////////////////////////////////////////////////////////
            
            $strsql="select count(*) as cantidad from cursos where idcategoria_cursos='$idcategoria_cursos'";
            $fila=$this->modelo_base->c_una_fila($strsql);
            
            
            //SI LA CATEGORIA NO TIENE PRODCUTOS
            //MOSTRAMOS SUS SUBCATEGORIAS
            if($fila->cantidad==0){
                $strsql="select idcategoria_cursos, nombre, seo, imagen from categoria_cursos "
                    . " where idsw='1' and padre_id='$idcategoria_cursos' order by orden";
                $data["categorias_cursos"]=$this->modelo_base->consulta($strsql);

               // $data["imagen_top"]="cabecera_servicios.jpg";
                $data["seccion"]="fe/v_categoria_cursos";

                $this->load->view("fe/includes_fe/template_categoria", $data);
            }elseif($fila->cantidad>0){//SI ES MAYOR A CERO ES PORQUE LA CATEGORIA TIENE cursos
                                       // POR LO TANTO LOS MOSTRAMOS

                
                $strsql="select idcursos, nombre, descripcion, seo  from cursos where idcategoria_cursos='$idcategoria_cursos'";
                $data["cursos"]=$this->modelo_base->consulta($strsql);
                
                $data["imagen_top"]="cabecera_cursos.jpg";
                
                
                //AVERIGUAMOS SI SON cursos O cursos COMO AMBOS USAN LA TABLA cursos
                //PARA LOS cursos NO HABRA DETALLE DE SU PRODUCTO
                //PARA LOS cursos SI HABRA DETALLE DE SU PRODUCTO
                //PARA SOLUCIONARLO USAREMOS 2 VIEW
                $ids=trim($this->be_categorias->recursivo_padre_origen($idcategoria_cursos));
                $parte=explode(" ", $ids);
                $id_origen=$parte[0];
                
                  
                $data["seccion"]="fe/v_cursos_productos";
              
                
               

                $this->load->view("fe/includes_fe/template_secciones", $data);
                
                
                
                
            }//endIF
                
            
            
            
           
            
        }//endIF
        
        
        
        
        
   
    
    
}

?>
