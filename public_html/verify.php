<?php
session_start();
//link
require_once("php/conn.php");
require_once("php/func/valid.php");
require_once("php/func/code.php");
require_once("php/func/delete.php");
if(isset($_GET['key'])){
if(isset($_GET['ref'])){
    $key = valid($_GET['key']);
    $ref = valid($_GET['ref']);
    $sql = "SELECT refa FROM point";
    $res = $conn->query($sql);
    $row = $res->fetch_assoc();
    $sql = "UPDATE user SET point = point+{$row['refa']} WHERE refcode='{$ref}'";
    $conn->query($sql);
    $sql = "SELECT code,user,ID FROM user WHERE code='{$key}'";
    $res = $conn->query($sql);
    if($res->num_rows>0){
        $data = $res->fetch_assoc();
        if(strlen($data['code'])>15){
            $code = code(10,"user","code");
            $sql  = "UPDATE user SET code='{$code}' WHERE code='{$key}'";
            if($conn->query($sql)==true){
                $_SESSION['user'] = $data["user"];
                $_SESSION['id']   = $data["ID"];
                echo "<script>alert('successfully confirm');location.href='account.php';</script>";
            }else{
                echo "somthing went wrong";
            }
        }else{
            echo "expired";
        }
    }else{
        //wrong code
        echo "expired";
    }
}else{
    echo "expired";
}}
?>