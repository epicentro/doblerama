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
class preguntas_frecuentes extends padre {
    //put your code here
    
    public function __construct() {
        parent::__construct();
            
    }
    
    public function index(){
        
      
        $strsql="select title, keyword, description, nombre, titulo, sumilla, descripcion,imagen from secciones 
                 where seo='preguntas' ";
        $fila=$this->modelo_base->c_una_fila($strsql);
        $data["title"]=$fila->title;
        $data["keyword"]=$fila->keyword;
        $data["description"]=$fila->description;
        $data["nombre"]=$fila->nombre;
        $data["titulo"]=$fila->titulo;
        $data["sumilla"]=$fila->sumilla;
        $data["descripcion"]=$fila->descripcion;
        $data["imagen"]=$fila->imagen;        
        $data["current"]="faqs";        
//        $data["formulario_right"]=$this->load->view("fe/includes_fe/formulario_right",$data ,true); 
        
        parent::carga_comun(); 
        
        

                  
        // LISTA DE CATEGORIAS DE PREGUNTAS
        $strsql="select *  from categoria_preguntas where idsw='1' order by orden ";
        $fila=$this->modelo_base->consulta($strsql);
        $data["categoria_preguntas"]=$fila;
       
        
        $data["imagen_top"]="cabecera_preguntas_frecuentes.jpg";
        $data["seccion"]="fe/v_preguntas";
        
        $this->load->view("fe/includes_fe/template_secciones", $data);
        
        
        
    }
    
    
}

?>
