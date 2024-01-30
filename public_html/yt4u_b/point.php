<?php
require_once('../php/func/key.php');
if(isset($_SESSION['admin'])){
    require_once('include/head.php');
    require_once('include/nav.php');
    require_once('../php/conn.php');
    require_once('../php/func/dcount.php');
    $users  = dcount('user');
    $video  = dcount('video');
    $sql    = "SELECT point FROM user";
    $point  = 0;
    $res    = $conn->query($sql);
    if($res->num_rows>0){
        while($row=$res->fetch_assoc()){
            $point += $row["point"];
        }
    }
    $sql    = "SELECT reg,ref,refa,vv,wv,avv,awv,web FROM point";
    $res    = $conn->query($sql);
    $data = $res->fetch_assoc();
        echo "
<html>
<head>
    <title>Admin Panel | Point Manage</title>
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
                    <div class='breadcrumb-item'>Profile</div>
                </div>
            </div>
            <div class='section-body'>

<div class='alert alert-success alert-dismissible show fade' id='output-alert'>
    <div class='alert-body'>
        <span id='output'></span>
    </div>
</div>
            
            
                <h2 class='section-title'>Point Manage</h2>
                <p class='section-lead'>Change point values in your web site.</p>
                <div class='row mt-sm-4'>
                    <div class='col-12 col-md-12 col-lg-5'>
                        <div class='card profile-widget'>
                            <div class='profile-widget-header'>
                                <img alt='image' src='images/point.png' class='rounded-circle profile-widget-picture'>
                                <div class='profile-widget-items'>
                                    <div class='profile-widget-item'>
                                        <div class='profile-widget-item-label'>Users</div>
                                        <div class='profile-widget-item-value'>{$users}</div>
                                    </div>
                                    <div class='profile-widget-item'>
                                        <div class='profile-widget-item-label'>Videos</div>
                                        <div class='profile-widget-item-value'>{$video}</div>
                                    </div>
                                        <div class='profile-widget-item'>
                                            <div class='profile-widget-item-label'>Points</div>
                                            <div class='profile-widget-item-value'>{$point}</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
<div class='col-12 col-md-12 col-lg-7'>
    <div class='card'>
        <div>
            <div class='card-header'>
                <h4>Edit Points</h4>
            </div>
            <div class='card-body'>
                <div class='row'>
                    <div class='form-group col-md-5 col-12'>
                        <label>Normal Registation</label>
                        <input type='text' id='regp' class='form-control' value='{$data['reg']}'>
                    </div>
                    <div class='form-group col-md-5 col-12'>
                        <label>Referer Registation</label>
                        <input type='text' id='refp' class='form-control' value='{$data['ref']}'>
                    </div>
                </div>
                
                <div class='row'>
                    <div class='form-group col-md-5 col-12'>
                        <label>Refferer</label>
                        <input type='text' id='refap' class='form-control' value='{$data['refa']}'>
                    </div>
                    
                    <div class='form-group col-md-5 col-12'>
                        <label>Web Site</label>
                        <input type='text' id='webp' class='form-control' value='{$data['web']}'>
                    </div>
                </div>
                
                
                <div class='row'>
                    <div class='form-group col-md-5 col-12'>
                        <label>View Video</label>
                        <input type='text' id='vvp' class='form-control' value='{$data['vv']}'>
                    </div>
                    <div class='form-group col-md-5 col-12'>
                        <label>Watch Video</label>
                        <input type='text' id='wvp' class='form-control' value='{$data['wv']}'>
                    </div>
                </div>
                
                <div class='row'>
                    <div class='form-group col-md-5 col-12'>
                        <label>Admin View Video</label>
                        <input type='text' id='avvp' class='form-control' value='{$data['avv']}'>
                    </div>
                    <div class='form-group col-md-5 col-12'>
                        <label>Admin Watch Video</label>
                        <input type='text' id='awvp' class='form-control' value='{$data['awv']}'>
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
    var regp  = document.getElementById('regp').value;
    var refp  = document.getElementById('refp').value;
    var refap = document.getElementById('refap').value;
    var vvp   = document.getElementById('vvp').value;
    var wvp   = document.getElementById('wvp').value;
    var avvp  = document.getElementById('avvp').value;
    var awvp  = document.getElementById('awvp').value;
    var webp  = document.getElementById('webp').value;
    var key   = document.getElementById('key').value;
    var data = 'reg='+regp+'&ref='+refp+'&refa='+refap+'&vv='+vvp+'&wv='+wvp+'&avv='+avvp+'&awv='+awvp+'&web='+webp+'&key='+key;
    req("php/point.php",data,"output");
    document.getElementById('output-alert').style.display='block';
    setTimeout(hidefunc, 3000);
}
</script>