<?php
$path = "../../../php/func/";
require_once("{$path}csrf.php");
if(isset($_SESSION["admin"])){
    if(isset($key)){
        if(isset($_POST["id"])){
        if(isset($_POST["img"])){
            if($_POST["id"]=="1"){
                $path = "../../../include/banners/aw/";
            }else if($_POST["id"]=="2"){
                $path = "../../../include/banners/av/";
            }else if($_POST["id"]=="3"){
                $path = "../../../include/banners/wv/";
            }else if($_POST["id"]=="4"){
                $path = "../../../include/banners/vv/";
            }else{
                $path = false;
            }
            if($path != false){
                $img = preg_replace("/\//","",$_POST["img"]);
                $imgs = scandir($path);
                if(in_array($img,$imgs)){
                    unlink($path.$img);
                    echo "Success";
                }else{
                    echo "No image";
                }
            }else{
                echo "Wrong Path";
            }
        }}
    }
}else{
    header("Location:404.php");
}
?>