<?php
$path = "./func/";
require_once("{$path}csrf.php");
if(isset($_SESSION['user'])){
    header("Location:account.php");
}else{
    require_once("conn.php");
    require_once("{$path}/delete.php");
    if(isset($key)){
        //inputs
        if(isset($_POST['email'])){
            require_once("{$path}/valid.php");
            $mail = valid($_POST['email']);
            $sql  = "SELECT mail FROM user WHERE mail='{$mail}'";
            $res  = $conn->query($sql);
            //check in user
            if($res->num_rows>0){
                //check already send mail
                $sql  = "SELECT mail FROM foget WHERE mail='{$mail}'";
                $res  = $conn->query($sql);
                if($res->num_rows<=0){
                    require_once("func/code.php");
                    $code = code(32,"foget","code");
                    $date = strtotime(date("F j, Y, g:i a"));
                    $sql  = "INSERT INTO foget(ID,mail,code,`dtime`) VALUES (NULL,'{$mail}','{$code}',$date)";
                        if($conn->query($sql)==true){
                            //mail
                            $subject = "Reset Pasword";
                            $msg = "https://trafforyou.com/reset.php?key={$code}";
                            $email = $mail;
                            include("mail.php");
                            echo json_encode(array("msg"=>"true","val"=>"password reset link send. check your mail inbox."));
                        }else{
                            echo json_encode(array("msg"=>"false","val"=>"somthing went wrong"));
                        }
                }else{
                    echo json_encode(array("msg"=>"false","val"=>"Already sended password reset link"));
                }
            }else{
                echo json_encode(array("msg"=>"false","val"=>"we can't find your mail address."));
            }
        }else{
            echo json_encode(array("msg"=>"false","val"=>"Empty E-mail"));
        }
    }else{
        echo json_encode(array("msg"=>"false","val"=>"Refresh browser and try again"));
    }
}
?>