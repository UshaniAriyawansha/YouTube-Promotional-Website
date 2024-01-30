<?php
$path = "../../php/func/";
require_once("{$path}csrf.php");
if(isset($key)){
if(isset($_SESSION['admin'])){
    require_once('../../php/conn.php');
    require_once("{$path}input.php");

    $name  = input("name",1,"name",1,20);
    $mail  = input("mail",1,"mail",5,60);
    $pass2 = input("pass2",1,"old password",4,20,"s","w");
    $pass1 = input("pass1",1,"new password",0,10000);
    if(count($in)==4){
        $pass2 = md5(sha1(md5($pass2)));
        $sql = "SELECT ID FROM admin WHERE mail='{$_SESSION['admin']}' and pass='{$pass2}';";
        $res = $conn->query($sql);
        if($res->num_rows>0){
            if(mailvalid($mail)==true){
                if($pass1==""){
                    $sql  = "UPDATE admin SET mail='{$mail}',name='{$name}' WHERE mail='{$_SESSION['admin']}';";
                    if($conn->query($sql)==true){
                        $_SESSION['admin'] = $mail;
                        echo "Successfull<script>location.href='';</script>";
                    }else{
                        echo "Err: {$sql}";
                    }
                }else{
                    if(strlen($pass1)>5){
                        $pass = md5(sha1(md5($pass1)));
                        $sql  = "UPDATE admin SET mail='{$mail}',name='{$name}',pass='{$pass}' WHERE mail='{$_SESSION['admin']}';";
                        if($conn->query($sql)==true){
                            $_SESSION['admin'] = $mail;
                            echo "Successfull";
                        }else{
                            echo "Err: {$sql}";
                        }
                    }else{
                        echo "please use 6 or more characters for password";
                    }
                }
            }else{
                echo "mail validation failed";
            }
        }else{
            echo "wrong old password";
        }
    }else{
        echo $err[0];
    }
}
}
?>