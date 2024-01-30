<?php
session_start();
//require "./sec/index.php";
$block = 1;
if($block !== 0){
include('../php/conn.php');
//if already loged in
if (isset($_SESSION['admin'])){
    header("Location:index.php");
}
if (isset($_POST['mail'])){
if (isset($_POST['pass'])){
    $user = htmlspecialchars($_POST['mail']);
    $user = $conn->real_escape_string($user);
    $pass = md5(sha1(md5($_POST['pass'])));
    $sql="select mail,pass from admin where mail ='{$user}' and pass = '{$pass}' and code=1 limit 1";
    $result= $conn->query($sql);
    if ($result->num_rows>0){
        $_SESSION['admin'] = $user;
        header("Location:index.php");
    }else{
        echo "<script>document.getElementById('err').innerHTML='Username or password not Correct';</script>";
    }
}}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
<title>Login | Trafforyou Admin</title>

<link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/modules/bootstrap-social/bootstrap-social.css">

<link rel="stylesheet" href="assets/css/style.min.css">
<link rel="stylesheet" href="assets/css/components.min.css">
</head>
<body class="layout-4">
<div id="app">
    <section class="section">
        <div class="container mt-5">
            <div class="row">
                <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
                    <div class="login-brand">
                        <img src="images/user.png" alt="logo" width="100" class="shadow-light rounded-circle">
                    </div>
                    <div class="card card-primary">
                        <div class="card-header">
                            <h4>Login</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="#" class="needs-validation" novalidate="">
                                <center>
                                    <div class="form-group" id="err"></div>
                                    </center>
                                
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input id="email" type="email" class="form-control" name="mail" tabindex="1" required autofocus>
                                    <div class="invalid-feedback">
                                        Please fill in your email
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="d-block">
                                        <label for="password" class="control-label">Password</label>
                                    </div>
                                    <input id="password" type="password" class="form-control" name="pass" tabindex="2" required>
                                    <div class="invalid-feedback">
                                        please fill in your password
                                    </div>
                                </div>

                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                                    Login
                                    </button>
                                </div>
                            </form>
                            </div>
                            </div>
                    <div class="simple-footer">
                        Copyright &copy; <a href="helascript.com">HelaScript</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script src='assets/bundles/lib.vendor.bundle.js'></script>
<script src='js/CodiePie.js'></script>
<script src='js/scripts.js'></script>
<script src='js/custom.js'></script>
</body>
</html>