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
class blog extends padre {
    //put your code here
    
    public function __construct() {
        parent::__construct();
            
    }
    
    public function index(){
        
      
        $strsql="select title, keyword, description, nombre, titulo, sumilla, descripcion  from secciones 
                 where seo='Blog' ";
        $fila=$this->modelo_base->c_una_fila($strsql);
        $data["title"]=$fila->title;
        $data["keyword"]=$fila->keyword;
        $data["description"]=$fila->description;
        $data["nombre"]=$fila->nombre;
        $data["titulo"]=$fila->titulo;
        $data["sumilla"]=$fila->sumilla;
        $data["descripcion"]=$fila->descripcion;
        $data["current"]="blogs";  
        //$data["formulario_right"]=$this->load->view("fe/includes_fe/formulario_right",$data ,true); 
        
        parent::carga_comun(); 
        
        
        //LISTAR ARTICULOS
        $strsql="select nombre, fecha, sumilla, descripcion, seo, imagen,autor from articulos where idsw='1' order by fecha desc";
       
        $cantidad=$this->modelo_base->cantidad_filas($strsql);
       
        $config['base_url'] = base_url().'blog/';
        $config['total_rows'] = $cantidad;
        $num=$this->be_parametros->valor("fe_elementos_x_pagina");
        $config['per_page'] = $num;
        $config['uri_segment'] = 2;


        /*ESTE full_tag_open ME PERMITE PONER UNA ETIQUETA CONTENEDORA PARA LUEGO AGARRARME DE ELLA
          Y PONER ESTILOS A LOS ENLACES QUE ESTAN DENTRO DE ELLA  */

        $config['full_tag_open'] = "<ul class='pagination post-pagination text-center mt-50'>";
        $config['full_tag_close'] = "</ul>";

        //ESTILO PARA LA PAGINACION SELECCIONADA.
        $config['cur_tag_open'] = "&nbsp;<li class='active'><span class='current waves-effect waves-light'>";
        $config['cur_tag_close'] = "</span></li>";
        $config['num_tag_open'] = "&nbsp;<li>";
        $config['num_tag_close'] = "</li>";        
        
        $config['next_link'] = "";  
        $config['prev_link'] = "";  


        $this->pagination->initialize($config);

        $offset=$this->uri->segment(2);
        if ($offset == '') $offset=0;

            $strsql.=" limit $offset ,  $num";
        
        
        
        
        $data["noticias"]=$this->modelo_base->consulta($strsql);
        
        
        
           
        //$data["imagen_top"]="cabecera_noticias.jpg";
        $data["seccion"]="fe/v_blog";
        
        $this->load->view("fe/includes_fe/template_blog", $data);
        
        
        
    }
    
   
    
    
}

?>
