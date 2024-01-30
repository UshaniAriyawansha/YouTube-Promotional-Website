<?php
function imgname(){
    $chr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWZYX0987654321";
    $name = str_shuffle(substr($chr,0,30)).".jpg";
    $files = scandir("../images/");
    if(in_array($name,$files)){
        imgname();
    }else{
        return $name;
    }
}
?>