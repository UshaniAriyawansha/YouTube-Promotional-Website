<?php
$path = "../../php/func/";
require_once("{$path}csrf.php");
if(isset($_SESSION['admin'])){
if(isset($key)){
    if(isset($_POST['tbl'])){
    if(isset($_POST['id'])){
    if(isset($_POST['val'])){
    if(isset($_POST['op'])){
        if($_POST['op']=="0"){
            $col = "stat";
        }else if($_POST['op']==1){
            $col = "point";
        }
        $tbl = preg_replace('/\`/','',$_POST['tbl']);
        if(is_numeric($_POST['id'])){
        if(is_numeric($_POST['val'])){
            require_once("../../php/conn.php");
            $val =$conn->real_escape_string($_POST['val']);
            $sql = "UPDATE `{$tbl}` SET {$col}={$val} WHERE ID={$_POST['id']}";
            if($conn->query($sql)==true){
                echo "Success";
            }else{
                echo "Failed";
            }
        }}
    }else{
        echo "Empty Option";
    }}else{
        echo "Empty value 2";
    }}else{
        echo "Empty value 1";
    }}else{
        echo "Empty table";
    }
}}else{
    header('Location:404.php');
}