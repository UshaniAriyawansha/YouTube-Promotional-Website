<?php
$path = "func/";
require_once("{$path}csrf.php");
if(isset($key)){
if(isset($_SESSION['user'])){
    require_once("conn.php");
    require_once("{$path}input.php");
    //get inputs
    $type  = input("type",1,"Type",1,1,"u","w");
    $link  = input("link",1,"Link",5,150,"s","w");
    if(count($in)==2){
        //check type is true
        if($type == "1" or $type == "2"){
            $t = true;
        }
        if(isset($t)){
            $sql = "SELECT user FROM video WHERE user = '{$_SESSION['user']}' and type=$type";
            $res = $conn->query($sql);
            if($res->num_rows<5){
                //get video id
                if(preg_match("/[A-Za-z0-9\-\_]{11}/",$link,$id)){
                    //check if already exist
                    $sql = "SELECT link FROM video WHERE link='{$id[0]}'";
                    $res = $conn->query($sql);
                    if($res->num_rows>0){
                        echo json_encode(array("msg"=>"false","val"=>"This video already exists"));
                    }else{
                        $date = (date("j/m/Y g:i a"));
                        $sql = "INSERT INTO `video`(`ID`, `user`, `link`, `type`, `dtime`, `views`) VALUES (NULL,'{$_SESSION['user']}','{$id[0]}',$type,'$date',0)";
                        if($conn->query($sql)==true){
                            echo json_encode(array("msg"=>"true","val"=>"success"));
                        }else{
                            echo json_encode(array("msg"=>"false","val"=>"failed"));
                        }
                    }
                }else{
                    echo json_encode(array("msg"=>"false","val"=>"Wrong Link"));
                }
            }else{
                echo json_encode(array("msg"=>"false","val"=>"Can not add more than five videos."));
            }
        }else{
            echo json_encode(array("msg"=>"false","val"=>"wrong type"));
        }
    }else{
        echo json_encode(array("msg"=>"false","val"=>$err[0]));
    }
}}else{
    echo json_encode(array("msg"=>"false","val"=>"refresh browser and try again"));
}
?>