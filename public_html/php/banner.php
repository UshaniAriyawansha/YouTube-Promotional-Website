<?php
$path;
$imgs = scandir($path);
$imgs = array_diff($imgs,array(".",".."));
$imgs = array_values($imgs);
for($i=0;$i<count($imgs);$i++){
    echo $imgs[$i];
}
?>