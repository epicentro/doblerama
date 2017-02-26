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
class nuestros_valores extends padre {
    //put your code here
    
    public function __construct() {
        parent::__construct();
            
    }
    
    public function index(){
        
      
        $strsql="select title, keyword, description, nombre, titulo, sumilla, descripcion  from secciones 
                 where seo='nuestros-valores' ";
        $fila=$this->modelo_base->c_una_fila($strsql);
        $data["title"]=$fila->title;
        $data["keyword"]=$fila->keyword;
        $data["description"]=$fila->description;
        $data["nombre"]=$fila->nombre;
        $data["titulo"]=$fila->titulo;
        $data["sumilla"]=$fila->sumilla;
        $data["descripcion"]=$fila->descripcion;
        $data["current"]="nuestros-valores";        
        
        
        parent::carga_comun(); 
        
        
        
        //VALORES
        $strsql="select * from valores where idsw='1'  order by orden";
        $data["valores"]=$this->modelo_base->consulta($strsql);
        


        $data["imagen_top"]="cabecera_nosotros.jpg";
        $data["seccion"]="fe/v_valores";
        
        $this->load->view("fe/includes_fe/template_secciones", $data);
        
        
        
    }
    
    
}

?>
