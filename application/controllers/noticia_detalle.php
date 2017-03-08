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
class noticia_detalle extends padre {
    //put your code here
   
    public function __construct() {
        parent::__construct();
        
        $this->load->model("modelo_captcha");
        $this->rand = random_string('alnum', 6);    
             
    }
   
    public function index(){

         parent::carga_comun(); 
         $seo=$this->uri->segment(2);   
        
        $strsql="select idarticulos, title, keyword, description, nombre,  descripcion, seo,sumilla,imagen,autor,fecha from articulos where seo='$seo'";
        
        $fila=$this->modelo_base->c_una_fila($strsql);
        
        if($fila!="0"){
       
      
                $strsql="select title, keyword, description, nombre, titulo, sumilla, descripcion  from secciones 
                         where seo='Blog' ";
                $fila2=$this->modelo_base->c_una_fila($strsql);
                $data["nombre"]=$fila2->nombre;


                $data["idnoticias"]=$fila->idarticulos;
                $data["title"]=$fila->title;
                $data["keyword"]=$fila->keyword;
                $data["description"]=$fila->description;
                $data["titulo"]=$fila->nombre;
                $data["descripcion"]=$fila->descripcion;
                $data["sumilla"]=$fila->sumilla;
                $data["imagen"]=$fila->imagen;                
                $data["fecha"]=$fila->fecha;                
                $data["autor"]=$fila->autor;                                                
                $data["current"]="blogs";
                $data["formulario_right"]=$this->load->view("fe/includes_fe/formulario_right",$data ,true);    
                

                $data["seccion"]="fe/v_blog_detalle";
                $this->load->view("fe/includes_fe/template_blog", $data);
                
                
        }else{
            
            //Si la pagina no existe que se vaya al index
           //redirect(base_url());
            show_404(); 
            
        }//endIF*/
         
         
       
    }//endFuntionCargar
    
    
    public function captcha()
    {
        //configuramos el captcha
        $conf_captcha = array(
            'word'   => $this->rand,
            'img_path' => './captcha/',
            'img_url' =>  base_url().'captcha/',
            //fuente utilizada por mi, poner la que tengáis
            'font_path' => './fonts/open-sans/OpenSans-Regular.ttf',
            'img_width' => '120',
            'img_height' => '30', 
            //decimos que pasados 10 minutos elimine todas las imágenes
            //que sobrepasen ese tiempo
            'expiration' => 600 
        );
 
        //guardamos la info del captcha en $cap
        $cap = create_captcha($conf_captcha);
 
        //pasamos la info del captcha al modelo para 
        //insertarlo en la base de datos
        $this->modelo_captcha->insert_captcha($cap);
        
        //devolvemos el captcha para utilizarlo en la vista
        return $cap;
    }
    
   
    
     public function send_form()
    {
            $idnoticias=$this->input->post('idnoticias');
            $nombre=$this->input->post('nombre');
            $email=$this->input->post('email'); 
            
            $comentario=$this->input->post('comentario'); 
            $comentario=htmlspecialchars($comentario, ENT_QUOTES);
            $comentario=$this->db->escape($comentario);
            
            $captcha=$this->input->post('captcha'); 
            $fecha=date("Y-m-d");
           
            
             
            $expiration = time()-600; // Límite de 10 minutos 
            $ip = $this->input->ip_address();//ip del usuario
            $captcha = $this->input->post('captcha');//captcha introducido por el usuario
 
            //eliminamos los captcha con más de 2 minutos de vida
            $this->modelo_captcha->remove_old_captcha($expiration);
            
 
            //comprobamos si es correcta la imagen introducida
            $check = $this->modelo_captcha->check($ip,$expiration,$captcha);
 
            /*
            |si el número de filas devuelto por la consulta es igual a 1
            |es decir, si el captcha ingresado en el campo de texto es igual
            |al que hay en la base de datos, junto con la ip del usuario 
            |entonces dejamos continuar porque todo es correcto
            */
            if($check == 1)
            {
               // echo 'Validación pasada correctamente';
                
                $strsql="insert into comentarios (idnoticias, nombre, email, pregunta, fecha, idsw) "
                        . "VALUES ('$idnoticias', '$nombre', '$email',$comentario,'$fecha','1')";
                $this->modelo_base->ejecuta($strsql);
                
                
                 echo '{"sw":"4", "dato":"ok"}';
            }else{
                
                echo '{"sw":"4", "dato":"errado"}';
            }
 
           
                
    }
    
    
    
}

?>
