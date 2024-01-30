<?php
session_start();
if (isset($_SESSION['user'])){
    echo json_encode(array("msg"=>"true","val"=>"success"));
}else{
    //link
    $path = "func/";
    require_once("conn.php");
    require_once("func/input.php");
    require_once("func/delete.php");
    $user = input1("user",1,"email");
    $pass = input1("pass",1,"password");
    if(count($in1)==2){
        //check true
        $pass = md5(sha1(md5($pass)));
        $sql = "SELECT code,stat,ID,user FROM user WHERE (mail='{$user}' or user='{$user}') and pass='{$pass}';";
        $res = $conn->query($sql);
        if ($res->num_rows>0){
            $data = $res->fetch_assoc();
            if(strlen($data['code'])>10){
                echo json_encode(array("msg"=>"false","val"=>"please check your mail inbox and confirm account"));
            }else{
                if($data['stat']==0){
                    $_SESSION['user'] = $data['user'];
                    $_SESSION['id'] = $data['ID'];
                    echo json_encode(array("msg"=>"true","val"=>"success"));
                }else{
                    echo json_encode(array("msg"=>"false","val"=>"You have been blocked"));
                }
            }
        }else{
            echo json_encode(array("msg"=>"false","val"=>"wrong infomation."));
        }
    }else{
        echo json_encode(array("msg"=>"false","val"=>$err1[0]));
    }
}
?>