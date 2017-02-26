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
class padre extends CI_Controller {
    //put your code here
    
    
    
    
    

    //ESTAS VARIABLES SE CONTROLAN MENU
    public $productos_naturales="";
    public $tratamiento_natural="";
    public $cosmetica_natural="";
    
    public $cat_actual="";
    public $subcat_actual="";
    
    //Simbolo de la Moneda, Pais, CamposPrecio
    public $moneda="";
    public $pais="";
    public $campos_precio="";
    
    public $menu="";
    
    public $inicio_bienvenida="";
   
    public $testimonios="";
    public $cat_cursos="";    
    public $cat_productos="";
    public $first_cat="";    
    public $servicios="";
    public $servicios2="";    
    public $cat_areas_menu="";
    public $first_cat_areas="";    
    
    public $cursos="";
    
    
    public function __construct() {
        parent::__construct();
             $this->load->library('pagination'); 
             $this->load->model("modelo_base");
             $this->load->library('be/be_funciones');
             $this->load->library('be/be_categorias');
             $this->load->library('be_parametros');
             $this->load->library('fe/fe_email');
             $this->load->library('login/validacion');
             
             
             
             //Este es para saber el Ip de que Pais es
             $this->load->library('geoip_lib');
             
             //http://www.cesarcancino.com/configurar-zona-horaria-con-php-n221.html
             date_default_timezone_set("America/Lima");
    }
    
    public function carga_comun(){
        
        
         //Categoria_productos
        $strsql="select idcategoria_productos, nombre, seo, imagen,sumilla from categoria_productos where idsw='1' and padre_id='0' order by orden";
        $this->cat_productos=$this->modelo_base->consulta($strsql);
         
         //testimonios
        $strsql="select contacto, sumilla, imagen from testimonios where idsw='1' and idprimera_hoja='1' order by orden";
        $this->testimonios=$this->modelo_base->consulta($strsql);

        // Categoria Areas
        $strsql="select idcategoria_areas, nombre, seo, imagen from categoria_areas where idsw='1' and padre_id='1' order by orden";
        $this->cat_areas_menu=$this->modelo_base->consulta($strsql);
         
         //Primera cat area
        $strsql="select idcategoria_areas, nombre, seo, imagen from categoria_areas where idsw='1' and padre_id='0' order by orden";
        $this->first_cat_areas=$this->modelo_base->consulta($strsql);

        //servicios
        $strsql="select s.*,i.imagen from servicios s right join servicios_imagenes i on i.idservicios=s.idservicios  where s.idsw='1' and i.idprimera_foto=1 order by s.orden asc";
        $this->servicios=$this->modelo_base->consulta($strsql);


        //servicios2
        $strsql="select s.* from servicios s where s.idsw='1' order by s.orden asc";
        $this->servicios2=$this->modelo_base->consulta($strsql);
        
        // Cursos
        $strsql="select idcursos, nombre, seo from cursos where idsw='1' order by orden";
        $this->cursos=$this->modelo_base->consulta($strsql);


        
    }//endFunction
    
    
}

?>
