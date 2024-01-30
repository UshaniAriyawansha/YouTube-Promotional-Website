<?php
$path = "./func/";
require_once("func/csrf.php");
require_once("conn.php");
require_once("func/delete.php");
if(isset($key)){
    require_once("func/input.php");
    $key   = input1("code",1,"code");
    $pass1 = input1("pass",1,"Password");
    $pass2 = input1("pass2",1,"Re-Enter Password");
    if(count($in1)==3){
        $sql = "SELECT mail FROM foget WHERE code='{$key}'";
        $res = $conn->query($sql);
        if($res->num_rows>0){
            $data = $res->fetch_assoc();
            if($pass1 == $pass2){
            if(strlen($pass1)>=6){
                $pass = md5(sha1(md5($pass1)));
                $sql  = "UPDATE user SET pass='{$pass}' WHERE mail='{$data['mail']}'";
                if($conn->query($sql)==true){
                    $sql = "DELETE FROM foget WHERE mail='{$data['mail']}'";
                    $c   = $conn->query($sql);
                    echo json_encode(array("msg"=>"true","val"=>"successfully reset password"));
                }else{
                    echo json_encode(array("msg"=>"false","val"=>"somthing went wrong"));
                }
            }else{
                echo json_encode(array("msg"=>"false","val"=>"please use 6 or more characters for password"));
            }}else{
                echo json_encode(array("msg"=>"false","val"=>"password and confirm password not match"));
            }
        }else{
            echo json_encode(array("msg"=>"false","val"=>"Expired"));
        }
    }else{
        echo json_encode(array("msg"=>"false","val"=>$err1[0]));
    }
}
?>