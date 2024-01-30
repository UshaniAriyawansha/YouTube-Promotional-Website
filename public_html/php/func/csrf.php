<?php
session_start();
if (empty($_SESSION['key'])) {
    $_SESSION['key'] = bin2hex(random_bytes(32));
}
require_once("{$path}valid.php");
if(isset($_POST['key'])){
if($_POST['key'] == $_SESSION['key']){
    $key = $_SESSION['key'];
}}

// if(isset($key))
?>