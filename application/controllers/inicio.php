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
class inicio extends padre {
    //put your code here
    
    public function __construct() {
        parent::__construct();
            
    }
    
    public function index(){
        
      
        //EXTRAEMOS LAS ETIQUETAS SEO
        $strsql="select title, keyword, description, nombre, titulo, sumilla, descripcion  from secciones 
                 where seo='inicio' ";
        $fila=$this->modelo_base->c_una_fila($strsql);
        $data["title"]=$fila->title;
        $data["keyword"]=$fila->keyword;
        $data["description"]=$fila->description;
        $data["nombre"]=$fila->titulo;
        $data["titulo"]=$fila->titulo;
        $data["sumilla"]=$fila->sumilla;
        $data["descripcion"]=$fila->descripcion;
        $data["current"]="inicio";        
        
        parent::carga_comun(); 


        

        // //INICIO BIENVENIDA
        $strsql="select nombre, titulo, descripcion  from secciones 
                 where seo='inicio-bienvenida' ";
        $fila=$this->modelo_base->c_una_fila($strsql);
        $data["nombre_bienvenido"]=$fila->nombre;
        $data["titulo_bienvenido"]=$fila->titulo;
        $data["descripcion_bienvenido"]=$fila->descripcion;        
        

                
        //EXTRAEMOS LOS BANNERS CENTRALES PARA EL SLIDE
        $strsql="select idbanners, nombre,  link, alt, imagen, sumilla "
                . "  from banners where idsw='1' ORDER by orden";
        $data["banners"]=$this->modelo_base->consulta($strsql);
        
        
         //Sub categorias de areas
        $strsql="select idcategoria_areas, nombre, seo, imagen,sumilla from categoria_areas where idsw='1' and idprimera_hoja='1' and padre_id<>'0' order by orden limit 2";
        $data["subCatAreas"]=$this->modelo_base->consulta($strsql);

         //areas especializadas
        $strsql="select idareas, nombre, seo, idcategoria_areas,sumilla from areas where idsw='1' and idprimera_hoja='1' order by orden";
        $data["areas"]=$this->modelo_base->consulta($strsql);
        
       
         //CLIENTES
        $strsql="select idclientes, imagen,nombre from clientes where idsw='1' and idprimera_hoja='1' order by orden";
        $data["clientes"]=$this->modelo_base->consulta($strsql);
        
        //BLOG
        //$strsql="select nombre, sumilla, fecha, seo, imagen from articulos order by fecha desc limit 2";
        //$data["blog"]=$this->modelo_base->consulta($strsql);
        
        //$data["lado_izquierdo"]="fe/menu_categorias";
        //$data["lado_derecho"]="fe/v_productos";
        
        
        
        //$data["variable_top"]="fe/includes_fe/banner";
        
        $this->load->view("fe/includes_fe/template_home", $data);
        
        
        
        
        
    }
    
    
}

?>
