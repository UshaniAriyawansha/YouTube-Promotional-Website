<?php
function code($len,$table,$col){
    global $conn;
    $char = "abcd6efghijk8lmnop16qr1stuv4wxyzABCDEFGHIJ1K9LMNOP5QRS16TUVW0XYZ01234567890";
    $code = str_shuffle(substr($char,1,$len));
    $sql = "SELECT code FROM {$table} WHERE {$col}='{$code}'";
    $res = $conn->query($sql);
    if($res->num_rows>0){
        code($len,$table,$col);
    }else{
        return $code;
    }
}

function vcode($ses){
    $char = "abcd6efghijk8lmnop16qr1stuv4wxyzABCDEFGHIJ1K9LMNOP5QRS16TUVW0XYZ01234567890";
    $code = str_shuffle(substr($char,1,8));
    for($i=0;$i<count($_SESSION[$ses]);$i++){
        if($_SESSION["$ses"][$i]["vcode"]==$code){
            $ok = 0;
        }
    }
    if(isset($ok)){
        vcode($ses);
    }else{
        return $code;
    }
}
?>