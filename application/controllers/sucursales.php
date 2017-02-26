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
class sucursales extends padre {
    //put your code here
    
    public function __construct() {
        parent::__construct();
            
    }
    
    public function index(){
        
      
        $strsql="select title, keyword, description, nombre, titulo, sumilla, descripcion  from secciones 
                 where seo='sucursales' ";
        $fila=$this->modelo_base->c_una_fila($strsql);
        $data["title"]=$fila->title;
        $data["keyword"]=$fila->keyword;
        $data["description"]=$fila->description;
        $data["nombre"]=$fila->nombre;
        $data["titulo"]=$fila->titulo;
        $data["sumilla"]=$fila->sumilla;
        $data["descripcion"]=$fila->descripcion;
        $data["current"]="sucursales";  
        //$data["formulario_right"]=$this->load->view("fe/includes_fe/formulario_right",$data ,true); 
        
        parent::carga_comun(); 
        
        
        //LISTAR SUCURSALES
        $strsql="select *  from categoria_mapas";

        $data["categoria_mapas"]=$this->modelo_base->consulta($strsql);
        
        
        
           
        //$data["imagen_top"]="cabecera_sucursales.jpg";
        $data["seccion"]="fe/v_sucursales";
        
        $this->load->view("fe/includes_fe/template_secciones", $data);
        
        
        
    }
    
   
    public function detalle(){
        
        parent::carga_comun(); 
        $seo=$this->uri->segment(2); 

        $strsql="select *  from mapas 
                 where seo='$seo' ";
        $fila=$this->modelo_base->c_una_fila($strsql);
        $data["nombre"]=$fila->nombre;
        $data["latitud_centro_suc"]=$fila->latitud_centro;
        $data["longitud_centro_suc"]=$fila->longitud_centro;
        $data["latitud_punto_suc"]=$fila->latitud_punto;
        $data["longitud_punto_suc"]=$fila->longitud_punto;
        $data["direccion"]=$fila->direccion;
        $data["celular"]=$fila->celular;
        $data["telefono"]=$fila->telefono;
        $data["title"]=$fila->title;
        $data["keyword"]=$fila->keyword;
        $data["description"]=$fila->description;               
        $data["current"]="sucursales";  
        //$data["formulario_right"]=$this->load->view("fe/includes_fe/formulario_right",$data ,true); 
        
        parent::carga_comun(); 
        
    
        
        
           
        //$data["imagen_top"]="cabecera_sucursales.jpg";
        $data["seccion"]="fe/v_sucursales_detalle";
        
        $this->load->view("fe/includes_fe/template_secciones", $data);
        
        
        
    }
       
    
    
}

?>
