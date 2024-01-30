<?php
$path = "../../php/func/";
require_once("{$path}csrf.php");
if(isset($key)){
    require_once("../../php/conn.php");
    require_once("{$path}input.php");
    $reg  = input("reg",1,"register points",0,5,"u");
    $ref  = input("ref",1,"referer registation points",0,5,"u");
    $refa = input("refa",1,"referer points",0,5,"u");
    $vv   = input("vv",1,"view video points",0,5,"u");
    $wv   = input("wv",1,"watch video points",0,5,"u");
    $awv  = input("awv",1,"admin watch video points",0,5,"u");
    $avv  = input("avv",1,"admin view video points",0,5,"u");
    $web  = input("web",1,"web site points",0,5,"u");
    if(count($in)==8){
        $sql = "UPDATE `point` SET reg=$reg, ref=$ref, refa=$refa, vv=$vv, wv=$wv, avv=$avv, awv=$awv, web=$web";
        if($conn->query($sql)==true){
            echo "Success";
        }else{
            echo "Failed";
        }
    }else{
        echo $err[0];
    }
}
?>