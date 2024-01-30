<?php
$path = ("../../php/func/");
require_once("{$path}csrf.php");
if(isset($_SESSION['admin'])){
if(isset($key)){
    unset($_SESSION['admin']);
    echo "true";
}}else{
    header("Location:404.php");
}
?>