<?php
$path = "func/";
require_once("{$path}csrf.php");
if(isset($_SESSION['user'])){
if(isset($key)){
    if(isset($_POST['tbl'])){
    if(isset($_POST['val'])){
        $tbl = preg_replace('/\`/','',$_POST['tbl']);
        if(is_numeric($_POST['val'])){
            require_once("conn.php");
            $sql = "DELETE FROM `{$tbl}` WHERE ID={$_POST['val']} and user='{$_SESSION['user']}'";
            if($conn->query($sql)==true){
                echo "Success";
            }else{
                echo "Failed";
            }
        }
    }else{
        echo "Empty value";
    }}else{
        echo "Empty table";
    }
}}else{
    header('Location:404.php');
}