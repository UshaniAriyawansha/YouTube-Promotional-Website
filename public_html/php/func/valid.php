<?php
$er = array();
function num($input,$out){
    if(is_numeric($input)){
        return $input;
    }else{
        return $out;
    }
}
function valid($input){
    $input = trim($input);
    $input = htmlspecialchars($input);
    global $conn;
    $input = preg_replace("/\'/","`",$input);
    $input = $conn->real_escape_string($input);
    return $input;
}
function numeric($input,$out){
    if(is_numeric($input)){
        return $input;
    }else{
        return $out;
    }
}
function len($input,$echo,$min,$max,$error){
    global $er;
    if($min>0){
        $e = 0;
    }else{
        $e = -1;
    }
    if(strlen($input)>$e){
        if (strlen($input)<$min or strlen($input)>$max){
            if($error=="l"){
                array_push($er,"Please use {$min} to {$max} characters for {$echo}.");
            }else{
                array_push($er,"Wrong {$echo}");
            }
            return false;
        }else{
            return true;
        }
    }else{
        array_push($er,"Empty {$echo}");
    }
}
function mailvalid($mail){
    if(!filter_var($mail, FILTER_VALIDATE_EMAIL)) {
        return false;
    }else{
        return true;
    }
}
?>