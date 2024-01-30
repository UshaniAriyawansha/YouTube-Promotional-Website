<?php
session_start();
if(isset($_SESSION["user"])){
$image = "image";
require("../../php/conn.php");
$uploadTo = "../images/";
include("../../php/func/compress.php");
$arr = array();
if(!empty($_FILES[$image]['name'])){
    $allowImageExt = array('jpg','png','jpeg');
    $imageName = $_FILES[$image]['name'];
    $tempPath=$_FILES[$image]["tmp_name"];
    $imageQuality= 60;
    $img = $_SESSION["user"].".jpg";
    $originalPath = $uploadTo.$img; 
    $imageExt = pathinfo($imageName, PATHINFO_EXTENSION);
    if(in_array($imageExt, $allowImageExt)){
    $compressedImage = compress_image($tempPath, $originalPath, $imageQuality);
    if($compressedImage){
        echo json_encode(array("msg"=>"true", "val"=>"Successfuly upload image", "dp"=>$img));
    }else{
        echo json_encode(array("msg"=>"false", "val"=>"Compress failed"));
    }}else{
        echo json_encode(array("msg"=>"false", "val"=>"Please upload .png , .jpg or .jpeg image"));
    }
}else{
    echo json_encode(array("msg"=>"false", "val"=>"Empty Image"));
}
}else{
    header("Location:../../login.php");
}
?>