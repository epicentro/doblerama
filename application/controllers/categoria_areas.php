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
class categoria_areas extends padre {
    //put your code here
    
    public function __construct() {
        parent::__construct();
            
    }
    
    public function index(){
        
        
        
         $seocat=$this->uri->segment(2);
            
            //SI NO EXISTE $this->uri->segment(2) ES PORQUE HEMOS HECHO CLIC EN UNA CATEGORIA
            $strsql="select idcategoria_areas, title, keyword, description, nombre, titulo, 
                 sumilla   from categoria_areas 
                 where seo='$seocat' ";
            $fila=$this->modelo_base->c_una_fila($strsql);
            if($fila=='0'){
                show_404(); 
            } 

            //             var_dump($fila);
            // die();
            $idcategoria_areas=$fila->idcategoria_areas;
            $data["idcategoria_areas"]=$idcategoria_areas;
            $data["title"]=$fila->title;
            $data["keyword"]=$fila->keyword;
            $data["description"]=$fila->description;
            $data["nombre"]=$fila->nombre;
            $data["titulo"]=$fila->titulo;
            $data["sumilla"]=$fila->sumilla;
            $data["current"]="areas";
            $data["formulario_right"]=$this->load->view("fe/includes_fe/formulario_right",$data ,true);


            parent::carga_comun(); 

            //////////////////////////////////////////////////////////////////////////////////////////
            //LO PRIMERO QUE TENEMOS QUE PREGUNTAR ES SI TENEMOS areas PARA LA CATEGORIA ACTUAL,
            //SI TENEMOS areas POR MAS QUE TE TENGA SUBCATEGORIAS MOSTRARA LOS areas
            //////////////////////////////////////////////////////////////////////////////////////////
            
            $strsql="select count(*) as cantidad from areas where idcategoria_areas='$idcategoria_areas'";
            $fila=$this->modelo_base->c_una_fila($strsql);
            
            
            //SI LA CATEGORIA NO TIENE PRODCUTOS
            //MOSTRAMOS SUS SUBCATEGORIAS
            if($fila->cantidad==0){
                
                $strsql="select idcategoria_areas, nombre, seo, imagen,sumilla from categoria_areas "
                    . " where idsw='1' and padre_id='$idcategoria_areas' order by orden";
                $data["cat_areas"]=$this->modelo_base->consulta($strsql);

                $data["imagen_top"]="cabecera_servicios.jpg";
                $data["seccion"]="fe/v_categoria_areas";

                $this->load->view("fe/includes_fe/template_categoria", $data);
            
                
            }elseif($fila->cantidad>0){//SI ES MAYOR A CERO ES PORQUE LA CATEGORIA TIENE areas
                                       // POR LO TANTO LOS MOSTRAMOS
                
                
                
                
                
                
                
                
                
                $strsql="select idareas, nombre, descripcion, seo,sumilla  from areas where idcategoria_areas='$idcategoria_areas'";
                $data["areas"]=$this->modelo_base->consulta($strsql);
                
                $data["imagen_top"]="cabecera_areas.jpg";
                
                
                //AVERIGUAMOS SI SON areas O areas COMO AMBOS USAN LA TABLA areas
                //PARA LOS areas NO HABRA DETALLE DE SU PRODUCTO
                //PARA LOS areas SI HABRA DETALLE DE SU PRODUCTO
                //PARA SOLUCIONARLO USAREMOS 2 VIEW
                //$ids=trim($this->be_categorias->recursivo_padre_origen($idcategoria_areas));
                //$parte=explode(" ", $ids);
                //$id_origen=$parte[0];
                  
                $data["seccion"]="fe/v_areas_productos";

                $this->load->view("fe/includes_fe/template_categoria_areas", $data);
                
                
                
                
            }//endIF
                
            
            
            
           
            
        }//endIF
        
        
        
        
        
   
    
    
}

?>
