<?php
$path = "../../php/func/";
require_once("{$path}csrf.php");
if(isset($key)){
    require_once("{$path}input.php");
    $vv   = input("vv",1,"view video time",0,5,"u");
    $wv   = input("wv",1,"watch video time",0,5,"u");
    $avv  = input("avv",1,"admin view video time",0,5,"u");
    $awv  = input("awv",1,"admin watch video time",0,5,"u");
    $nv   = input("nv",1,"new video video time",0,5,"u");
    $bv   = input("bv",1,"back video time",0,5,"u");
    $arr  = array();
    $er   = array();
    if(count($in)==6){
        function edit($name,$val){
            global $er;
            global $arr;
            $f = fopen("../../include/time/$name.txt","w");
            if(fwrite($f,$val)){
                array_push($arr,1);
            }else{
                array_push($er,"can not change {$name}");
            }
            fclose($f);
        }
        edit("1",$vv);
        edit("2",$wv);
        edit("3",$avv);
        edit("4",$awv);
        edit("back",$bv);
        edit("newvid",$nv);
        if(count($arr)==6){
            echo "success";
        }else{
            echo $er[0];
        }
    }else{
        echo $err[0];
    }
}
?>