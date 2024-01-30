<?php
if(isset($_SESSION['admin'])){
    $head = "<meta charset='UTF-8'>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no' name='viewport'>
<!--CSS-->
<link rel='stylesheet' href='assets/modules/bootstrap/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel='stylesheet' href='assets/css/style.min.css'>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.15.4/css/all.css' integrity='sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm' crossorigin='anonymous'>
<link rel='stylesheet' href='assets/css/components.min.css'>";
}else{
    header("Locaion:404.php");
}
?>