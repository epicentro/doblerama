<?php

echo $ruta;
die();
header("Cache-Control: no-store");
header("Content-Type: application/octet-stream");
//header("Content-type: application/msword");
header('Content-Disposition: attachment; filename="'. basename($ruta) . '"');
header('Content-Transfer-Encoding: binary');
header('Content-Length: '. filesize($ruta));
ob_clean();
flush();
readfile($ruta);
exit();
?>