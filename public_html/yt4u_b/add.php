<?php
require_once('../php/func/key.php');
if(isset($_SESSION['admin'])){
require_once('include/nav.php');
require_once('include/head.php');
echo "
    <!DOCTYPE html>
<html lang='en'>
<head>
<title>Admin | Add video or web</title>
{$head}
    <style>
        #output-alert{
            display:none;
        }
    </style>
</head>
<body class='layout-4'>
        {$nav}
        <div class='main-content'>
            <section class='section'>
                <div class='section-header'>
                    <h1>Add</h1>
                    <div class='section-header-breadcrumb'>
                        <div class='breadcrumb-item active'><a href='index.php'>Dashboard</a></div>
                        <div class='breadcrumb-item'>Add</div>
                    </div>
                </div>

                <div class='section-body'>
                    <h2 class='section-title'>Add video or web</h2>
                    
                    <div class='alert alert-success alert-dismissible show fade' id='output-alert'>
                    <div class='alert-body'>
                        <span id='output'></span>
                    </div>
                    </div>
                    <div class='row'>
                        <div class='col-12 col-md-6 col-lg-6'>
                            <div class='card card-danger'>
                                <div class='card-header'>
                                    <h4>Add Video</h4>
                                    <div class='card-header-action'>
                                        <a href='javascript:void(0)' onclick='add(1)' class='btn btn-primary'>Add</a>
                                        <div class='dropdown'>
                                            <a href='javascript:void(0)' data-toggle='dropdown' class='btn btn-warning dropdown-toggle' id='op'>Options</a>
                                            <div class='dropdown-menu'>
                                                <a onclick='tselect(`View`)' href='javascript:void(0)' class='dropdown-item has-icon'><i class='fas fa-eye'></i> View Video</a>
                                                <a onclick='tselect(`Watch`)' href='javascript:void(0)' class='dropdown-item has-icon'><i class='far fa-clock-o'></i> Watch Video</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class='card-body'>
                                    
                                    <input type='text' id='vlink' placeholder='Enter video link' class='form-control'>
                                </div>
                            </div>
                        </div>
                        <div class='col-12 col-md-6 col-lg-6'>
                            <div class='card card-danger'>
                                <div class='card-header'>
                                    <h4>Add WebSite</h4>
                                    <div class='card-header-action'>
                                        <a onclick='add(2)' href='javascript:void(0)' class='btn btn-primary'>Add</a>
                                        <div class='dropdown'>
                                            <a href='javascript:void(0)' data-toggle='dropdown' class='btn btn-warning'>web</a>
                                        </div>
                                    </div>
                                </div>
                                <div class='card-body'>
                                    
                                    <input type='text' id='wlink' placeholder='Enter website link' class='form-control'>
                                </div>
                            </div>
                    </div>

                    
                </div>
            </section>
        </div>
        <footer class='main-footer'>
            <div class='footer-left'>
                 <div class='bullet'></div>  <a href='https://helascript.com'>HelaScript</a>
            </div>
            <div class='footer-right'>
            </div>
        </footer>
    </div>
</div>
<input type='hidden' id='key' value='{$_SESSION['key']}'>
<input type='hidden' id='opin' value=''>
<!-- General JS Scripts -->
<script src='assets/bundles/lib.vendor.bundle.js'></script>
<script src='js/CodiePie.js'></script>

<!-- JS Libraies -->
<script src='assets/modules/chocolat/dist/js/jquery.chocolat.min.js'></script>
<script src='assets/modules/jquery-ui/jquery-ui.min.js'></script>
<script src='js/scripts.js'></script>
<script src='js/custom.js'></script>
";
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
function tselect(val){
    document.getElementById('op').innerText = val;
    var a = document.getElementById('opin');
    if(val === 'View'){
        a.value = 3;
    }else{
        a.value = 4;
    }
}
function add(val){
    document.getElementById('output').innerText='';
    var key  = document.getElementById('key').value;
    if(val === 1){
        var type = document.getElementById('opin').value;
        var link = document.getElementById('vlink').value;
        document.getElementById('vlink').value = '';
        req('php/add_video.php','key='+key+'&type='+type+'&link='+link,'output')
    }else if(val === 2){
        var link = document.getElementById('wlink').value;
        document.getElementById('wlink').value = '';
        req('php/add_web.php','key='+key+'&link='+link,'output')
    }else{
        document.getElementById('output').innerText='Could not identify video or web';
    }
    document.getElementById('output-alert').style.display='block';
    setTimeout(hidefunc, 5000);
}
</script>
</body>
</html>