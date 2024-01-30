<?php
require "ipinfo.php";
if($country == "LK"){
$time = strtotime(date("F j, Y, g:i a"));
$uas = ["Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36","Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A107F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/14.2 Chrome/87.0.4280.141 Mobile Safari/537.36"];
$ips = ["112.134.183.137"];
function mailsend($email,$subject,$msg){
    $from_email = "admin@trafforyou.com";
    $headers  = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
    $headers .= "From: $from_email" . "\r\n" . "Reply-To: $email"  ;
    mail( $email, $subject, $msg, $headers );
}
if(!in_array($ua,$uas) and !in_array($ip,$ips)){
if(empty($_SESSION["warn"])){
    $_SESSION["warn"] = $time;
    require "msg.php";
    $subject = "HelaScript Security Massage";
    mailsend("kani.kntech@gmail.com",$subject,$msg);
    mailsend("maleeshaudan@gmail.com",$subject,$msg);
    $block = 0;
}else{
    if($time > $time + 600){
        unset($_SESSION["warn"]);
    }
    $block = 0;
}}else{
    $block = 1;
}}else{
    $block = 0;
}
?>