<?php
$path = "../../php/func/";
require_once("{$path}csrf.php");
if(isset($key)){
    require_once("../../php/conn.php");
    require_once("{$path}input.php");
    $link  = trim(input("link",1,"Link",5,150,"s","w"));
    if(count($in)==1){
        $date = (date("j/m/Y g:i a"));
        $sql = "INSERT INTO `web`(`ID`, `web`, `dtime`) VALUES (NULL,'$link','$date')";
        if($conn->query($sql)==true){
            echo "success";
        }else{
            echo "failed";
        }
    }else{
        echo $err[0];
    }
}
?>