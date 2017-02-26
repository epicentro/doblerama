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
class procesar extends padre {
    //put your code here
    
    public function __construct() {
        parent::__construct();
            
    }
    
//$_SERVER['HTTP_REFERER']
    public function grabar_ajax(){
        
        
            $txt_nombres=$this->input->post("txt_nombres");
            $txt_nombres=htmlspecialchars($txt_nombres, ENT_QUOTES);
            $txt_nombres=$this->db->escape($txt_nombres);
            
            $txt_email=$this->input->post("txt_email");

            $link=$this->input->post("link");             
            //$txt_email=htmlspecialchars($txt_email, ENT_QUOTES);
            //$txt_email=$this->db->escape($txt_email);
            
            // $txt_celular=$this->input->post("txt_celular");
            // $txt_celular=htmlspecialchars($txt_celular, ENT_QUOTES);
            // $txt_celular=$this->db->escape($txt_celular);

            $asunto="Mensaje de ".$txt_nombres;
            $asunto=str_replace("'", "", $asunto);
            
            $txt_telefono=$this->input->post("txt_telefono");
            $txt_telefono=htmlspecialchars($txt_telefono, ENT_QUOTES);
            $txt_telefono=$this->db->escape($txt_telefono);
            
            $txt_comentario=$this->input->post("txt_comentario");
            $txt_comentario=htmlspecialchars($txt_comentario, ENT_QUOTES);
            $txt_comentario=$this->db->escape($txt_comentario);

            $fecha=date("Y-m-d");
            $hora= time (); 
            $hora=date( "H:i:s" , $hora );
            $fecha_hora=$fecha." ".$hora;
           
           $strsql="insert into mensajes ( nombre, correo,  mensaje, fecha, telefono,link,asunto ) 
                    values ( $txt_nombres, '$txt_email', $txt_comentario, '$fecha_hora', $txt_telefono,'$link','".$asunto."')";
           

           
           $row=$this->modelo_base->ejecuta($strsql);
           $id=$this->db->insert_id();
           
           ////////////////////////////////
           ////  Mandamos el email
           ////////////////////////////////   
           $res=@$this->fe_email->email_contacto($id);
           
           
           if($id>0){
              $resultado=true;
              echo json_encode($resultado);
           }else{
              $resultado=false;
              echo json_encode($resultado);
           }
           
           //redirect($url);
           
           

             
            
       
    }//EndFunction
    
    


    public function grabar(){
        
        
            $txt_nombres=$this->input->post("txt_nombres");
            $txt_nombres=htmlspecialchars($txt_nombres, ENT_QUOTES);
            $txt_nombres=$this->db->escape($txt_nombres);
            
             $txt_email=$this->input->post("txt_email");
            //$txt_email=htmlspecialchars($txt_email, ENT_QUOTES);
            //$txt_email=$this->db->escape($txt_email);
            
            $txt_telefono=$this->input->post("txt_telefono");
            $txt_telefono=htmlspecialchars($txt_telefono, ENT_QUOTES);
            $txt_telefono=$this->db->escape($txt_telefono);
            
            $link=$this->input->post("link");

          if($this->input->post("txt_asunto")){
            $txt_asunto=$this->input->post("txt_asunto");
            $txt_asunto=htmlspecialchars($txt_asunto, ENT_QUOTES);
            $txt_asunto=$this->db->escape($txt_asunto);
             $txt_asunto=str_replace("'", "", $txt_asunto);  
          }else{
            $txt_asunto="Mensaje de ".$txt_nombres;
            $txt_asunto=str_replace("'", "", $txt_asunto);                        
          }
            
            

            
            $txt_comentario=$this->input->post("txt_comentario");
            $txt_comentario=htmlspecialchars($txt_comentario, ENT_QUOTES);
            $txt_comentario=$this->db->escape($txt_comentario);

            $fecha=date("Y-m-d");
            $hora= time (); 
            $hora=date( "H:i:s" , $hora );
            $fecha_hora=$fecha." ".$hora;
           
           $strsql="insert into mensajes ( nombre, correo,  mensaje, fecha, telefono,link,asunto ) 
                    values ( $txt_nombres, '$txt_email', $txt_comentario, '$fecha_hora', $txt_telefono,'$link','$txt_asunto')";
           

           
           $row=$this->modelo_base->ejecuta($strsql);
           $id=$this->db->insert_id();
           
           ////////////////////////////////
           ////  Mandamos el email
           ////////////////////////////////   
           $res=@$this->fe_email->email_contacto($id);
           
           
           if($id>0){
              $url=base_url()."mensaje/contacto/success"; 
           }else{
              $url=base_url()."mensaje/contacto/error"; 
           }
           
           redirect($url);
           
           

             
            
       
    }//EndFunction
    
    
    public function boletin(){
        
        
            $txt_email=$this->input->post("email");
            $txt_email=$this->db->escape($txt_email);
            
            

            $fecha=date("Y-m-d");
            $hora= time (); 
            $hora=date( "H:i:s" , $hora );
            $fecha_hora=$fecha." ".$hora;
           
           $strsql="insert into boletin ( email, fecha ) 
                    values ( $txt_email, '$fecha_hora' )";
           

           
           $row=$this->modelo_base->ejecuta($strsql);
           $id=$this->db->insert_id();
           
           ////////////////////////////////
           ////  Mandamos el email
           ////////////////////////////////   
           $res=@$this->fe_email->email_boletin($id);
           
           
           
           $url=base_url()."gracias/boletin/";
           redirect($url);
           
           

             
            
       
    }//EndFunction
    
    
    
}

?>
