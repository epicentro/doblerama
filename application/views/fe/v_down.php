<?php
var_dump($ruta);
var_dump($archivo);
//die();

// $ruta=$data['ruta'];
// $archivo=$data['archivo'];

// $tam = filesize($ruta); 
// header ("Content-Disposition: attachment; filename=".$archivo);
// header ("Content-Type: application/force-download");
// header ("Content-Length: ".$tam);
// readfile($ruta);  

        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename=' . $archivo);
        header('Content-Transfer-Encoding: binary');
        header('Expires: 0');
        header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
        header('Pragma: public');
        header('Content-Length: ' . filesize($ruta));
 
        ob_clean();
        flush();
        readfile($ruta);
        exit;

?>