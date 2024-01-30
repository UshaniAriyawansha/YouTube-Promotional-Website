<?php
require_once("../func/compress.php");
if(!empty($_FILES["image"]['name'])){
    $uploadTo = $path; 
    $allowImageExt = array('jpg','png','jpeg','gif');
    $imageName = $_FILES["image"]['name'];
    $tempPath=$_FILES["image"]["tmp_name"];
    $imageQuality= 60;
    $originalPath = $uploadTo.$img; 
    $imageExt = pathinfo($imageName, PATHINFO_EXTENSION); 
    if(empty($imageName)){ 
        $img = false;
       echo "<script>alert('empty image');location.href='{$path2}';</script>";
     }else{
         if(in_array($imageExt, $allowImageExt)){ 
             $compressedImage = compress_image($tempPath, $originalPath, $imageQuality);
             if($compressedImage){
                 echo "<script>alert('Success');location.href='{$path2}';</script>";
             }else{
                 $img = false;
                 echo "<script>alert('empty image');location.href='{$path2}';</script>";
             }
         }else{
             $img = false;
             echo "<script>alert('Extention not allowed');location.href='{$path2}';</script>";
         }
     } 
}else{
    echo "<script>alert('empty image');location.href='{$path2}';</script>";
}
?>