<?php
session_start();
if(isset($_SESSION["user"])){
    $arr  = array();
    require "../../php/conn.php";
    //GET USER ID 
    $sql  = "SELECT ID FROM user WHERE user='{$_SESSION['user']}'";
    $res  = $conn->query($sql);
    if($res->num_rows==0){
        unset($_SESSION["user"]);
        header("Location:../.../login.php");
    }
    //ADMIN ID
    $adm  = 0;
    $sql  = "SELECT ID FROM user WHERE user='Admin'";
    $re   = $conn->query($sql);
    if($re ->num_rows>0){
        $adms = $re->fetch_assoc();
        $adm  = $adms["ID"];
    }
    $row  = $res->fetch_assoc();
    $sql = "SELECT sid FROM msg WHERE rid={$row['ID']} and sid!=$adm and seen=0";
    $res  = $conn->query($sql);
    if($res->num_rows>0){
        while($row=$res->fetch_assoc()){
            array_push($arr,$row["sid"]);
        }
    }
    $arr = array_keys(array_flip($arr));
    echo json_encode($arr);
}
?>