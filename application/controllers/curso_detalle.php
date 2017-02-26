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
class curso_detalle extends padre {
    //put your code here
   
    public function __construct() {
        parent::__construct();
        
        $this->load->model("modelo_captcha");
        $this->rand = random_string('alnum', 6);    
             
    }
   
    public function index(){

         parent::carga_comun(); 
         $seo=$this->uri->segment(2);   
        
        $strsql="select * from cursos where seo='$seo'";
        
        $fila=$this->modelo_base->c_una_fila($strsql);
        
        if($fila!="0"){
        
                $data["idcursos"]=$fila->idcursos;
                $data["title"]=$fila->title;
                $data["keyword"]=$fila->keyword;
                $data["description"]=$fila->description;
                $data["titulo"]=$fila->nombre;
                $data["inscripcion"]=$fila->descripcion;
                $data["programado"]=$fila->programacion;               
                $data["modalidad"]=$fila->modalidad;               
                $data["duracion"]=$fila->duracion;                                               
                $data["idcategoria_cursos"]=$fila->idcategoria_cursos;                
                $data["video"]=$fila->video;
                $data["fecha"]=$fila->fecha;                
                $data["precio"]=$fila->pvp;
                $data["words"]=0;
                $data["pdfs"]=0;
                $data["formulario_right"]=$this->load->view("fe/includes_fe/formulario_right",$data ,true);    
                
                // WORDS
                $strsql="select * from cursos_word where idcursos='$fila->idcursos' order by orden";
                $fila2=$this->modelo_base->consulta($strsql);
                if($fila2!="0"){
                    $data["words"]=$fila2;
                }

                // PDF
                $strsql="select * from cursos_pdf where idcursos='$fila->idcursos' order by orden";
                $fila2=$this->modelo_base->consulta($strsql);
                if($fila2!="0"){
                    $data["pdfs"]=$fila2;
                }

                //CARGAMOS SUS IMAGENES
                $strsql="select imagen from cursos_imagenes where idcursos='$fila->idcursos' and idprimera_foto='1' order by orden";
                $data["imagenes"]=$this->modelo_base->consulta($strsql);


                $data["seccion"]="fe/v_curso";
                $this->load->view("fe/includes_fe/template_secciones", $data);
                
                
        }else{
            
            //Si la pagina no existe que se vaya al index
           //redirect(base_url());
            show_404(); 
            
        }//endIF*/
         
         
       
    }//endFuntionCargar
    
    
    public function download(){

        $id=$this->uri->segment(3);

        $strsql="select imagen from cursos_pdf where idcursos_pdf='$id'";;

        $fila=$this->modelo_base->c_una_fila($strsql);

        $archivo=$fila->imagen;

        $data['archivo']=$archivo;
        $ruta = base_url().'pdf_cursos/'.$archivo;
        $data['ruta']=$ruta;

        $this->load->view("fe/v_down", $data);


    }

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
            $idcursos=$this->input->post('idcursos');
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
                
                $strsql="insert into comentarios (idcursos, nombre, email, pregunta, fecha, idsw) "
                        . "VALUES ('$idcursos', '$nombre', '$email',$comentario,'$fecha','1')";
                $this->modelo_base->ejecuta($strsql);
                
                
                 echo '{"sw":"4", "dato":"ok"}';
            }else{
                
                echo '{"sw":"4", "dato":"errado"}';
            }
 
           
                
    }
    
    
    
}

?>
