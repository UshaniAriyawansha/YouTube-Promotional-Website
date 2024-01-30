<?php
session_start();
//ID , user , time
if(isset($_SESSION["user"])){
    include("../../php/conn.php");
    $date = strtotime(date("F j, Y, g:i:s a"));
    $sql = "UPDATE user SET status = $date WHERE user = '{$_SESSION['user']}'";
    $conn->query($sql);
}
?>