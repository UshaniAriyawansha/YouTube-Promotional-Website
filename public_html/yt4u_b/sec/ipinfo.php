<?php
function get_ip(){
    if(!empty($_SERVER['HTTP_CF_CONNECTING_IP'])) {
        $ip = $_SERVER['HTTP_CF_CONNECTING_IP'];  
    }else if(!empty($_SERVER['HTTP_CLIENT_IP'])) {  
        $ip = $_SERVER['HTTP_CLIENT_IP'];  
    }elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];  
    }else{  
        $ip = $_SERVER['REMOTE_ADDR'];     }  
     return $ip;  
}
$ip = get_ip();
$country = json_decode(file_get_contents("http://ipinfo.io/".$ip));
$country = $country->country;
$ua = $_SERVER['HTTP_USER_AGENT'];
?>