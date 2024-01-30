<?php
require_once('../php/func/key.php');
if(isset($_SESSION['admin'])){
    require_once('include/head.php');
    require_once('include/nav.php');
    require_once('../php/conn.php');
    require_once('../php/func/dcount.php');
$date = (date("d"));
$mon  = (date("F"));
$y    = (date("Y"));
$d1   = dcount("user");
$d2   = dcount("video");
$d3   = dcount("web");
$d4   = 0;
$sql  = "SELECT point FROM user where user!='a'";
$res  = $conn->query($sql);
if($res->num_rows>0){
    while($row=$res->fetch_assoc()){
        $d4 += $row['point'];
    }
}
    echo "
<html>
<head>
    <title>Admin | Panel</title>
    {$head}
<style>
    .i{
        color:white;
        font-size:120%;
        margin-top:40%;
    }
</style>
</head>
<body>
<div id='app'>
    <div class='main-wrapper main-wrapper-1'>
        {$nav}
        <div class='main-content'>
            <section class='section'>
                    <div class='section-header'>
                    <h1>Dashboard</h1>
                </div>
                    <div class='row'>
                    <div class='col-lg-3 col-md-6 col-sm-6 col-12'>
                        <div class='card card-statistic-1'>
                            <div class='card-icon bg-primary'>
                                <i class='fa fa-user i'></i>
                            </div>
                            <div class='card-wrap'>
                                <div class='card-header'>
                                    <h4>Total Users</h4>
                                </div>
                                <div class='card-body'>
                                    {$d1}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='col-lg-3 col-md-6 col-sm-6 col-12'>
                        <div class='card card-statistic-1'>
                            <div class='card-icon bg-danger'>
                                <i class='fa fa-play-circle i'></i>
                            </div>
                            <div class='card-wrap'>
                                <div class='card-header'>
                                    <h4>Total Videos</h4>
                                </div>
                                <div class='card-body'>
                                    {$d2}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='col-lg-3 col-md-6 col-sm-6 col-12'>
                        <div class='card card-statistic-1'>
                            <div class='card-icon bg-warning'>
                                <i class='fa fa-coins i'></i>
                            </div>
                            <div class='card-wrap'>
                                <div class='card-header'>
                                    <h4>Total Points</h4>
                                </div>
                                <div class='card-body'>
                                    {$d4}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='col-lg-3 col-md-6 col-sm-6 col-12'>
                        <div class='card card-statistic-1'>
                            <div class='card-icon bg-success'>
                                <i class='fa fa-globe i'></i>
                            </div>
                            <div class='card-wrap'>
                                <div class='card-header'>
                                    <h4>Total WebSites</h4>
                                </div>
                                <div class='card-body'>
                                    {$d3}
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </section>
            </div>
        </div>
</div>
<input type='hidden' id='key' value='{$_SESSION['key']}'>
<script src='assets/bundles/lib.vendor.bundle.js'></script>
<script src='js/CodiePie.js'></script>
<script src='js/scripts.js'></script>
<script src='js/custom.js'></script>
";
}else{
    header("Locaion:404.php");
}

?>