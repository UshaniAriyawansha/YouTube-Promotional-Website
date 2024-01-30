<?php
require_once('../php/func/key.php');
if(isset($_SESSION['admin'])){
    require_once('include/head.php');
    require_once('include/nav.php');
    require_once('../php/conn.php');
    $sql = "SELECT name,mail FROM admin WHERE mail='{$_SESSION['admin']}'";
    $res = $conn->query($sql);
    if($res->num_rows>0){
        require_once('../php/func/dcount.php');
        $d1   = dcount("web");
        $d2   = dcount("user");
        $d3   = dcount("video");
        $data = $res->fetch_assoc();
        echo "
<html>
<head>
    <title>Admin | Profile</title>
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
                <h1>Profile</h1>
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
            
            
                <h2 class='section-title'>Hi, {$data['name']}!</h2>
                <p class='section-lead'>Change information about yourself on this page.</p>
                <div class='row mt-sm-4'>
                    <div class='col-12 col-md-12 col-lg-5'>
                        <div class='card profile-widget'>
                            <div class='profile-widget-header'>
                                <img alt='image' src='images/user.png' class='rounded-circle profile-widget-picture'>
                                <div class='profile-widget-items'>
                                    <div class='profile-widget-item'>
                                        <div class='profile-widget-item-label'>websites</div>
                                        <div class='profile-widget-item-value'>{$d1}</div>
                                    </div>
                                    <div class='profile-widget-item'>
                                        <div class='profile-widget-item-label'>users</div>
                                        <div class='profile-widget-item-value'>{$d2}</div>
                                    </div>
                                        <div class='profile-widget-item'>
                                            <div class='profile-widget-item-label'>videos</div>
                                            <div class='profile-widget-item-value'>{$d3}</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
<div class='col-12 col-md-12 col-lg-7'>
    <div class='card'>
        <div class='needs-validation' novalidate=''>
        
        
        
            <div class='card-header'>
                <h4>Edit Profile</h4>
            </div>
            <div class='card-body'>
                
                <div class='row'>
                    <div class='form-group col-md-6 col-12'>
                        <label>Name</label>
                        <input type='text' name='name' id='name' class='form-control' value='{$data['name']}' required=''>
                        <div class='invalid-feedback'>Please fill in the first name</div>
                    </div>
                </div>
                
                <div class='row'>
                    <div class='form-group col-md-7 col-12'>
                        <label>Email</label>
                        <input type='email' name='mail' class='form-control' id='mail' value='{$data['mail']}' required=''>
                        <div class='invalid-feedback'>Please fill in the email</div>
                    </div>
                </div>
                <div class='row'>
                    <div class='form-group col-md-5 col-12'>
                        <label>New Password</label>
                        <input type='text' name='pass1' id='pass1' class='form-control' value=''>
                    </div>
                    <div class='form-group col-md-5 col-12'>
                        <label>Old Password</label>
                        <input type='text' name='pass2' id='pass2' class='form-control' value=''>
                    </div>
                </div>
                <label>Note: If don't need to change password, keep new password field required.</label>
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
<script>
function hidefunc(){
    document.getElementById('output-alert').style.display='none';
}
function change(){
    var name = document.getElementById('name').value;
    var mail = document.getElementById('mail').value;
    var pass1 = document.getElementById('pass1').value;
    var pass2 = document.getElementById('pass2').value;
    var key = document.getElementById('key').value;
    
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById('output').innerHTML=this.responseText;
            document.getElementById('output-alert').style.display='block';
            document.getElementById('pass1').value='';
            document.getElementById('pass2').value='';
            window.scrollTo(0, 0);
            setTimeout(hidefunc, 3000);
        }else{
            return;
        }
    }
    xhttp.open('POST', 'php/profile_edit.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('name='+name+'&mail='+mail+'&pass1='+pass1+'&pass2='+pass2+'&key='+key);
}
</script>
    ";
    }
}else{
    header('Locaion:404.php');
}

?>