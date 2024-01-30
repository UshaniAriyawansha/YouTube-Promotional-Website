<?php
$path = ("func/");
require_once("{$path}csrf.php");
if(isset($_SESSION['user'])){
if(isset($key)){
    unset($_SESSION['user']);
    echo "true";
}}else{
    header("Location:404.php");
}
?>