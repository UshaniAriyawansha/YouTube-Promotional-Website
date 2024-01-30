<?php
$path = "./func/";
require_once($path."csrf.php");
if(isset($_SESSION["user"])){
if(isset($key)){
    require_once("conn.php");
    require_once("{$path}input.php");
    $rid  = input("rid",1,"Resiver",1,20,"u","w");
    $limit  = input("limit",1,"Limit",2,10,"u","n");
    $last  = input("last",1,"last",0,20,"s","n");
    if(count($in)==3){
        $arr  = array();
        //GET USER ID 
        $sql  = "SELECT ID FROM user WHERE user='{$_SESSION['user']}'";
        $res  = $conn->query($sql);
        if($res->num_rows==0){
            unset($_SESSION["user"]);
            header("Location:login.php");
        }
        $row  = $res->fetch_assoc();
        $sql = "SELECT ID,sid FROM msg WHERE (sid={$row['ID']} or sid=$rid) and (rid={$row['ID']} or rid=$rid) ORDER BY ID DESC LIMIT $limit";
        $res = $conn->query($sql);
        if($res->num_rows>0){
            while($row = $res->fetch_assoc()){
                if($last == "" or $last < $row["ID"]){
                    $sql  = "SELECT fname FROM user WHERE ID={$row['sid']}";
                    $re1  = $conn->query($sql);
                    $data = $re1->fetch_assoc();
                    $msg = file_get_contents("../include/msg/{$row['ID']}");
                    array_push($arr,array("id"=>$row["ID"], "msg"=>$msg, "user"=>$data["fname"]));
                }
            }
        }
        echo json_encode(array_reverse($arr));
    }else{
        echo json_encode(array("msg"=>"false","val"=>$err[0]));
    }
}else{
    echo json_encode(array("msg"=>"false","val"=>"Refresh browser and try again."));
}}else{
    header('Location:login.php');
}
?>