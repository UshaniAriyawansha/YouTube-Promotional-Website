<?php
$path = "../../../php/func/";
require_once("{$path}csrf.php");
if(isset($_SESSION["admin"])){
    if(isset($key)){
        if(isset($_POST["id"])){
            if($_POST["id"]=="1"){
                $path = "../../../include/banners/vv/";
            }else if($_POST["id"]=="2"){
                $path = "../../../include/banners/wv/";
            }else if($_POST["id"]=="3"){
                $path = "../../../include/banners/av/";
            }else if($_POST["id"]=="4"){
                $path = "../../../include/banners/aw/";
            }else{
                $path = false;
            }
            if($path != false){
                $path2 = "../../banners.php";
                require_once("../func/name.php");
                $img   = name($path);
                if(isset($_POST["code"])){
                    $f = fopen($path.$img,"w");
                    $cont = preg_replace("/\|/","<iframe",$_POST["code"]);
                    fwrite($f,$cont);
                    echo "$cont";
                }
            }else{
                echo "wrong id";
            }
        }else{
            echo "empty id";
        }
    }else{
        echo "empty key";
    }
}else{
    header("Location:404.php");
}
?>