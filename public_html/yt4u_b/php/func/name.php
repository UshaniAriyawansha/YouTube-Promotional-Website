<?php
function name($path){
    $chr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWZYX0987654321";
    $name = str_shuffle(substr($chr,0,30)).".jpg";
    $files = scandir($path);
    if(in_array($name,$files)){
        name();
    }else{
        return $name;
    }
}
?>