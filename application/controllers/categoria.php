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
class categoria extends padre {
    //put your code here
    
    public function __construct() {
        parent::__construct();
            
    }
    

    public function download(){

        $id=$this->uri->segment(3);

        $strsql="select imagen from productos_imagenes where idproductos_imagenes='$id'";;

        $fila=$this->modelo_base->c_una_fila($strsql);

        $archivo=$fila->imagen;

        $data['archivo']=$archivo;
        $ruta = base_url().'img_productos/'.$archivo;
        $data['ruta']=$ruta;

        $this->load->view("fe/v_down", $data);
//$this->load->view("v_down", $data);         

    }

    public function index(){
        
        
        
         $seocat=$this->uri->segment(2);
         if(trim($seocat)==""){
            redirect(base_url());
         }
            
            //SI NO EXISTE $this->uri->segment(2) ES PORQUE HEMOS HECHO CLIC EN UNA CATEGORIA
            $strsql="select idcategoria_productos, title, keyword, description, nombre, titulo, 
                 sumilla,seo from categoria_productos 
                 where seo='$seocat' ";

            $fila=$this->modelo_base->c_una_fila($strsql);
            $idcategoria_productos=$fila->idcategoria_productos;
            $data["idcategoria_productos"]=$idcategoria_productos;
            $data["title"]=$fila->title;
            $data["keyword"]=$fila->keyword;
            $data["description"]=$fila->description;
            $data["nombre"]=$fila->nombre;
            $data["titulo"]=$fila->titulo;
            $data["sumilla"]=$fila->sumilla;
            $data["seo"]=$fila->seo;            
            $data["current"]="productos";
            $data["formulario_right"]=$this->load->view("fe/includes_fe/formulario_right",$data ,true);
            

            parent::carga_comun(); 

            //////////////////////////////////////////////////////////////////////////////////////////
            //LO PRIMERO QUE TENEMOS QUE PREGUNTAR ES SI TENEMOS PRODUCTOS PARA LA CATEGORIA ACTUAL,
            //SI TENEMOS PRODUCTOS POR MAS QUE TE TENGA SUBCATEGORIAS MOSTRARA LOS PRODUCTOS
            //////////////////////////////////////////////////////////////////////////////////////////
            
            $strsql="select count(*) as cantidad from productos where idcategoria_productos='$idcategoria_productos'";
            $fila=$this->modelo_base->c_una_fila($strsql);
            
            
            //SI LA CATEGORIA NO TIENE PRODCUTOS
            //MOSTRAMOS SUS SUBCATEGORIAS
            if($fila->cantidad==0){
                
                $strsql="select idcategoria_productos, nombre, seo, imagen,sumilla from categoria_productos "
                    . " where idsw='1' and padre_id='$idcategoria_productos' order by orden";
                $data["cat_productos"]=$this->modelo_base->consulta($strsql);

                $data["imagen_top"]="cabecera_servicios.jpg";
                $data["seccion"]="fe/v_categoria";

                $this->load->view("fe/includes_fe/template_categoria", $data);
                
            
                
            }elseif($fila->cantidad>0){//SI ES MAYOR A CERO ES PORQUE LA CATEGORIA TIENE PRODUCTOS
                                       // POR LO TANTO LOS MOSTRAMOS
                
                
                
                
                
                
                
                
                
                $strsql="select idproductos, nombre, descripcion, seo,sumilla  from productos where idcategoria_productos='$idcategoria_productos'";
                $data["productos"]=$this->modelo_base->consulta($strsql);
                
                $data["imagen_top"]="cabecera_servicios.jpg";
                
                $strsql="select idatributos,nombre from atributos where padre_id<>0 and idsw=1 order by orden";
                $data["atributos"]=$this->modelo_base->consulta($strsql);                
                //AVERIGUAMOS SI SON SERVICIOS O PRODUCTOS COMO AMBOS USAN LA TABLA PRODUCTOS
                //PARA LOS SERVICIOS NO HABRA DETALLE DE SU PRODUCTO
                //PARA LOS PRODUCTOS SI HABRA DETALLE DE SU PRODUCTO
                //PARA SOLUCIONARLO USAREMOS 2 VIEW
//                $ids=trim($this->be_categorias->recursivo_padre_origen($idcategoria_productos));

                $data["seccion"]="fe/v_productos_productos";

                $this->load->view("fe/includes_fe/template_categoria", $data);
                
                
                
                
            }//endIF
                
            
            
            
           
            
        }//endIF
        
        
    public function search(){
        
        //var_dump($_POST);
        
         $temas=$this->input->post("temas");
         $tags=$this->input->post("tags");
         $fecha01=$this->input->post("fecha01");
         $fecha02=$this->input->post("fecha02");         
         $seo=$this->input->post("seo");                           
         $idcategoria_productos=$this->input->post("idcategoria_productos");                                    
            
            //SI NO EXISTE $this->uri->segment(2) ES PORQUE HEMOS HECHO CLIC EN UNA CATEGORIA
            $strsql="select idcategoria_productos, title, keyword, description, nombre, titulo, 
                 sumilla,seo   from categoria_productos 
                 where seo='$seo' ";

            $fila=$this->modelo_base->c_una_fila($strsql);
            $idcategoria_productos=$fila->idcategoria_productos;
            $data["idcategoria_productos"]=$idcategoria_productos;
            $data["title"]=$fila->title;
            $data["keyword"]=$fila->keyword;
            $data["description"]=$fila->description;
            $data["nombre"]=$fila->nombre;
            $data["titulo"]=$fila->titulo;
            $data["sumilla"]=$fila->sumilla;
            $data["seo"]=$fila->seo;            
            $data["current"]="productos";
            $data["formulario_right"]=$this->load->view("fe/includes_fe/formulario_right",$data ,true);
            

            parent::carga_comun(); 

            //////////////////////////////////////////////////////////////////////////////////////////
            //LO PRIMERO QUE TENEMOS QUE PREGUNTAR ES SI TENEMOS PRODUCTOS PARA LA CATEGORIA ACTUAL,
            //SI TENEMOS PRODUCTOS POR MAS QUE TE TENGA SUBCATEGORIAS MOSTRARA LOS PRODUCTOS
            //////////////////////////////////////////////////////////////////////////////////////////
                
            // filtro

            $filtro="";
//echo $temas;
            if(isset($temas) and $temas<>0){
                $filtro=" and idproductos in (select idproductos from productos_atributos where idatributos=$temas)";
                $data["temas"]=$temas;
            }
            if(isset($tags) and trim($tags)<>""){
                $filtro.=" and (tags like '%$tags%' or nombre like '%$tags%')";
                $data["tags"]=$tags;                
            }

            if(isset($fecha) and trim($fecha)<>""){
                $filtro.=" and fecha like '%$fecha%' ";
                $data["fecha"]=$fecha;                                
            }

            if(trim($fecha01)<>"" and trim($fecha02)<>""){
                $fecha01=$this->be_funciones->formato_fecha($fecha01);
                $fecha02=$this->be_funciones->formato_fecha($fecha02);            
                $filtro.=" and fecha between '$fecha01' and '$fecha02' ";
            }  

            if(trim($fecha01)<>"" and trim($fecha02)==""){
                $fecha01=$this->be_funciones->formato_fecha($fecha01);
                $filtro.=" and fecha >= '$fecha01' ";
            }   

            if(trim($fecha02)<>"" and trim($fecha01)==""){
                $fecha02=$this->be_funciones->formato_fecha($fecha02);
                $filtro.=" and fecha <= '$fecha02' ";
            } 

            $strsql="select idproductos, nombre, descripcion, seo,sumilla  from productos where idcategoria_productos='$idcategoria_productos' $filtro";

            echo $strsql;
            $data["productos"]=$this->modelo_base->consulta($strsql);
            
            $data["imagen_top"]="cabecera_servicios.jpg";
            
            $strsql="select idatributos,nombre from atributos where padre_id<>0 and idsw=1 order by orden";
            $data["atributos"]=$this->modelo_base->consulta($strsql);                
            //AVERIGUAMOS SI SON SERVICIOS O PRODUCTOS COMO AMBOS USAN LA TABLA PRODUCTOS
            //PARA LOS SERVICIOS NO HABRA DETALLE DE SU PRODUCTO
            //PARA LOS PRODUCTOS SI HABRA DETALLE DE SU PRODUCTO
            //PARA SOLUCIONARLO USAREMOS 2 VIEW
//                $ids=trim($this->be_categorias->recursivo_padre_origen($idcategoria_productos));

            $data["seccion"]="fe/v_productos_productos";

            $this->load->view("fe/includes_fe/template_categoria", $data);
                
                

            
           
            
        }//endIF        
        
        
    public function all(){
        
        
        $seocat=$this->uri->segment(2);
 
        $strsql="select title, keyword, description, nombre, titulo, sumilla, descripcion,imagen from secciones 
                 where seo='categorias' ";
        $fila=$this->modelo_base->c_una_fila($strsql);
        $data["title"]=$fila->title;
        $data["keyword"]=$fila->keyword;
        $data["description"]=$fila->description;
        $data["nombre"]=$fila->nombre;
        $data["titulo"]=$fila->titulo;
        $data["sumilla"]=$fila->sumilla;
        $data["descripcion"]=$fila->descripcion;
        $data["imagen"]=$fila->imagen;        
        $data["current"]="productos";   
            

        parent::carga_comun(); 

                
        $strsql="select idcategoria_productos, nombre, seo, imagen,sumilla from categoria_productos "
            . " where idsw='1' order by orden";
        $data["cat_productos"]=$this->modelo_base->consulta($strsql);

        $data["imagen_top"]="cabecera_servicios.jpg";
        $data["seccion"]="fe/v_categoria";

        $this->load->view("fe/includes_fe/template_secciones", $data);
                
            
    }//endIF
           

}

?>
