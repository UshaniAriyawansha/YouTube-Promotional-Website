<?php
$path = "./func/";
require_once($path."csrf.php");
if(isset($_SESSION["user"])){
if(isset($key)){
    require_once("./conn.php");
    require_once("{$path}input.php");
    $msg  = input("msg",1,"Massage",0,10000,"s","l");
    $rid  = input("rid",1,"Resiver",1,20,"u","w");
    if(count($in)==2){
        if($msg != ""){
            $date = (date("F j, Y, g:i a"));
            //GET USER ID 
            $sql  = "SELECT ID FROM user WHERE user='{$_SESSION['user']}'";
            $res  = $conn->query($sql);
            if($res->num_rows==0){
                unset($_SESSION["user"]);
                header("Location:login.php");
            }
            $row  = $res->fetch_assoc();
            //INSER DATA 
            $sql  = "INSERT INTO `msg`(`ID`, `sid`, `rid`, `dtime`) VALUES (NULL,{$row['ID']},$rid,'$date')";
            if($res=$conn->query($sql)==true){
                //GET MSG ID 
                $sql = "SELECT ID FROM msg WHERE sid={$row['ID']} and rid=$rid and dtime='{$date}' ORDER BY ID DESC LIMIT 1";
                $res = $conn->query($sql);
                if($res->num_rows>0){
                    $row = $res->fetch_assoc();
                    //WRITE MSG 
                    if(file_exists("../include/msg/")){
                        $file = fopen("..//include/msg/".$row["ID"],"w");
                        if(fwrite($file,$msg)){
                            echo json_encode(array("msg"=>"false","val"=>1));
                        }
                    }else{
                        echo json_encode(array("msg"=>"false","val"=>"Somthing went wrong. Please contact website owner"));
                    }
                }else{
                    //CAN NOT GET MSG ID
                    echo json_encode(array("msg"=>"false","val"=>0));
                }
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
    header('Location:login.php');
}
?>