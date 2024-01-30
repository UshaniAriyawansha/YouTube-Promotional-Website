<?php
$path = "../../php/func/";
require_once("{$path}csrf.php");
if(isset($key)){
if(isset($_SESSION['admin'])){
    require_once("../../php/conn.php");
    require_once("{$path}input.php");
    //get inputs
    $type  = input("type",1,"Type",1,1,"u","w");
    $link  = input("link",1,"Link",5,150,"s","w");
    if(count($in)==2){
        //check type is true
        if($type == "3" or $type == "4"){
            $t = true;
        }
        if(isset($t)){
            //get video id
            if(preg_match("/[A-Za-z0-9\-\_]{11}/",$link,$id)){
                //check if already exist
                $sql = "SELECT link FROM video WHERE link='{$id[0]}'";
                $res = $conn->query($sql);
                if($res->num_rows>0){
                    echo "This video already exists";
                }else{
                    $date = (date("j/m/Y g:i a"));
                    $sql = "INSERT INTO `video`(`ID`, `user`, `link`, `type`, `dtime`) VALUES (NULL,'a','{$id[0]}',$type,'$date')";
                    if($conn->query($sql)==true){
                        echo "success";
                    }else{
                        echo "failed";
                    }
                }
            }else{
                echo "Wrong Link";
            }
        }else{
            echo "wrong type";
        }
    }else{
        echo $err[0];
    }
}else{
    header("Location:404.php");
}}
?>