<?php
require_once("func/key.php");
if(isset($_POST['key'])){
if($_POST['key'] == $_SESSION['key']){
    require_once("conn.php");
    $path = "func/";
    require_once("func/input.php");
    $name = input1('name',1,'Name');
    $mail = input1('mail',1,'E-Mail');
    $msg  = input1('msg',1,'Massage');
    $sub  = input1('sub',1,'Subject');
    if(count($in1)==4){
        if(mailvalid($mail)==true){
            $header = "From:{$mail}\r\n";
            $header .= "MIME-Version: 1.0\r\n";
            $header .= "Content-type: text/html\r\n";
            $msg = "{$msg}
- {$name} -
            ";
            if(mail("admin@trafforyou.com", $sub, $msg, $header)){
                echo json_encode(array("msg"=>"true","val"=>"success"));
            }else{
                echo json_encode(array("msg"=>"false","val"=>"Somthing went wrong"));
            }

        }else{
            echo json_encode(array("msg"=>"false","val"=>"Wrong E-Mail."));
        }
    }else{
        echo json_encode(array("msg"=>"false","val"=>$err1[0]));
    }
}else{
    echo json_encode(array("msg"=>"false","val"=>"Refresh and try again"));
}}else{
    echo json_encode(array("msg"=>"false","val"=>"refresh and try again"));
}
?>