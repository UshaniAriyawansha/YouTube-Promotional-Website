<?php
$path = "../../../php/func/";
require_once("{$path}csrf.php");
if(isset($_SESSION["admin"])){
    if(isset($key)){
        if(isset($_POST["id"])){
            if($_POST["id"]=="1"){
                $path = "../../../include/banners/view_video/";
            }else if($_POST["id"]=="2"){
                $path = "../../../include/banners/watch_video/";
            }else if($_POST["id"]=="3"){
                $path = "../../../include/banners/admin_view_video/";
            }else if($_POST["id"]=="4"){
                $path = "../../../include/banners/admin_watch_video/";
            }else if($_POST["id"]=="5"){
                $path = "../../../include/banners/home/";
            }else{
                $path = false;
            }
            if($path != false){
                $path2 = "../../banners.php";
                require_once("../func/name.php");
                $img   = name($path);
                require_once("bannerimg.php");
            }else{
                echo "<script>alert('wrong id');location.href='{$path2}';</script>";
            }
        }else{
            echo "<script>alert('empty id');location.href='{$path2}';</script>";
        }
    }
}else{
    header("Location:404.php");
}
?>