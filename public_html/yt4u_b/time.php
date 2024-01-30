<?php
require_once('../php/func/key.php');
if(isset($_SESSION['admin'])){
    require_once('include/head.php');
    require_once('include/nav.php');
    $vv  = file_get_contents("../include/time/1.txt");
    $wv  = file_get_contents("../include/time/2.txt");
    $avv = file_get_contents("../include/time/3.txt");
    $awv = file_get_contents("../include/time/4.txt");
    $bv  = file_get_contents("../include/time/back.txt");
    $nv  = file_get_contents("../include/time/newvid.txt");
    echo "
<html>
<head>
    <title>Admin Panel | Time Manage</title>
    {$head}
    <style>
        #output-alert{
            display:none;
        }
    </style>
</head>
<body>
    {$nav}
    
    <div class='main-content'>
        <section class='section'>
            <div class='section-header'>
                <h1>Setting</h1>
                <div class='section-header-breadcrumb'>
                    <div class='breadcrumb-item active'><a href='index.php'>Dashboard</a></div>
                    <div class='breadcrumb-item'>Times</div>
                </div>
            </div>
            <div class='section-body'>

<div class='alert alert-success alert-dismissible show fade' id='output-alert'>
    <div class='alert-body'>
        <span id='output'></span>
    </div>
</div>
            
            
<h2 class='section-title'>Time Manage</h2>
<div class='row mt-sm-4'>
    <div class='col-12 col-md-12 col-lg-5'>
        <div class='card profile-widget'>
            <div class='profile-widget-header'>
                <img alt='image' src='images/point.png' class='rounded-circle profile-widget-picture'>
            </div>
        </div>
    </div>
</div>
                        
<div class='col-12 col-md-12 col-lg-7'>
    <div class='card'>
        <div>
            <div class='card-header'>
                <h4>Manage Times</h4>
            </div>
            <div class='card-body'>
                <div class='row'>
                    <div class='form-group col-md-5 col-12'>
                        <label>View Video Duration</label>
                        <input type='text' id='vv' class='form-control' value='{$vv}'>
                    </div>
                    <div class='form-group col-md-5 col-12'>
                        <label>Watch Video Duration</label>
                        <input type='text' id='wv' class='form-control' value='{$wv}'>
                    </div>
                </div>
                
                <div class='row'>
                    <div class='form-group col-md-5 col-12'>
                        <label>Admin View Video Duration</label>
                        <input type='text' id='avv' class='form-control' value='{$avv}'>
                    </div>
                    
                    <div class='form-group col-md-5 col-12'>
                        <label>Admin Watch Video Duration</label>
                        <input type='text' id='awv' class='form-control' value='{$awv}'>
                    </div>
                </div>
                
                
                <div class='row'>
                    <div class='form-group col-md-5 col-12'>
                        <label>New Video Get Time</label>
                        <input type='text' id='nv' class='form-control' value='{$nv}'>
                    </div>
                    <div class='form-group col-md-5 col-12'>
                        <label>Back Video Get Time</label>
                        <input type='text' id='bv' class='form-control' value='{$bv}'>
                    </div>
                </div>
                <div class='card-footer text-right'>
                    <button class='btn btn-primary' onclick='change()'>Save Changes</button>
                </div>
            </div>
        </div>
    </div>
<input type='hidden' id='key' value='{$_SESSION['key']}'>
                        </div>
                        
                    </div>
                </div>
            </section>
        </div>
<script src='assets/bundles/lib.vendor.bundle.js'></script>
<script src='js/CodiePie.js'></script>
<script src='js/scripts.js'></script>
<script src='js/custom.js'></script>
    ";
    
}else{
    header('Locaion:404.php');
}
?>

<script>
function req(url,val,id){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById(id).innerHTML = this.responseText;
            window.scrollTo(0, 0);
        }else{
            return;
        }
    };
    xhttp.open('POST',url, true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send(val);
}
function hidefunc(){
    document.getElementById('output-alert').style.display='none';
}
function change(){
    var vv  = document.getElementById('vv').value;
    var wv  = document.getElementById('wv').value;
    var avv = document.getElementById('avv').value;
    var awv   = document.getElementById('awv').value;
    var nv   = document.getElementById('nv').value;
    var bv  = document.getElementById('bv').value;
    var key   = document.getElementById('key').value;
    var data = 'vv='+vv+'&wv='+wv+'&avv='+avv+'&awv='+awv+'&nv='+nv+'&bv='+bv+'&key='+key;
    req("php/time.php",data,"output");
    document.getElementById('output-alert').style.display='block';
    setTimeout(hidefunc, 7000);
}
</script>