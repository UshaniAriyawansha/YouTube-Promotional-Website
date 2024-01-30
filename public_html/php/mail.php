<?php
$from_email = "admin@trafforyou.com";
$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
$headers .= "From: $from_email" . "\r\n" . "Reply-To: $email"  ;
mail( $email, $subject, $msg, $headers );
?>