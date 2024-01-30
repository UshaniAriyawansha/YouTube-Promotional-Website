<?php
$path = "./../../php/func/";
require_once($path."csrf.php");
if(isset($_SESSION["user"])){
if(isset($key)){
    require_once("./../../php/conn.php");
    require_once("{$path}input.php");
    $msg  = input("msg",1,"Massage",0,1000,"s","l");
    $rid  = input("rid",1,"Resiver",1,20,"u","w");
    if(count($in)==2){
        if($msg != ""){
            $date = (date("F j, Y, g:i a"));
            //INSER DATA 
            $sql  = "INSERT INTO `msg`(`ID`, `sid`, `rid`, `dtime`, `msg`) VALUES (NULL,{$_SESSION['id']},$rid,'$date', '$msg')";
            if($res=$conn->query($sql)==true){
                echo json_encode(array("msg"=>"true","val"=>"success"));
            }else{
                echo json_encode(array("msg"=>"false","val"=>0));
            }
        }
    }else{
        echo json_encode(array("msg"=>"false","val"=>$err[0]));
    }
}else{
    echo json_encode(array("msg"=>"false","val"=>"Refresh browser and try again."));
}}else{
    header('Location:../../login.php');
}
?>