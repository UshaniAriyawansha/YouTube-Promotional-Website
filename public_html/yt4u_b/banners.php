<?php
require_once('../php/func/key.php');
if(isset($_SESSION['admin'])){
require_once('include/nav.php');
require_once('include/head.php');
echo "
    <!DOCTYPE html>
<html lang='en'>
<head>
<title> Manage Site Ads</title>
{$head}
    <style>
        #hide,#output-alert{
            display:none;
        }img{
            width:100%;
        }
    </style>
</head>

<body class='layout-4'>
        {$nav}
        <div class='main-content'>
            <section class='section'>
                <div class='section-header'>
                    <h1>Manage Banners</h1>
                    <div class='section-header-breadcrumb'>
                        <div class='breadcrumb-item active'><a href='index.php'>Dashboard</a></div>
                        <div class='breadcrumb-item'>Banners</div>
                    </div>
                </div>
                <div class='alert alert-success alert-dismissible show fade' id='output-alert'>
                    <div class='alert-body'>
                        <span id='output'></span>
                    </div>
                </div>
<div class='row'>
    <div class='col-12'>
        <div class='card'>
            <div class='card-header'>
                <h4>Add New Banner</h4>
            </div>
            <div class='card-body'>
                <form method='post' action='php/banner/add.php' enctype='multipart/form-data'>
                    <div class='form-group row mb-4'>
                        <label class='col-form-label text-md-right col-12 col-md-3 col-lg-3'>Path</label>
                        <div class='col-sm-12 col-md-7' id='out-tremnt'>
                            <select name='id' class='form-control selectric'>
                                <option value='1'>View Video</option>
                                <option value='2'>Watch Video</option>
                                <option value='3'>Admin view Video</option>
                                <option value='4'>Admin Watch Video</option>
                                </select>
                        </div>
                    </div>
                    <div class='form-group row mb-4'>
                        <label class='col-form-label text-md-right col-12 col-md-3 col-lg-3'>Banner Image</label>
                        <div class='col-sm-12 col-md-7'>
                            <input type='file' name='image' class='form-control'>
                            <input type='hidden' name='key' value='{$_SESSION['key']}'><br><br>
                            <div class='form-group row mb-4'>
                                <div class='col-sm-12 col-md-7'>
                                    <a href= '#'><button id='submit' name='submit' value='0' class='btn btn-primary'>Upload</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class='row'>
    <div class='col-12'>
        <div class='card'>
            <div class='card-header'>
                <h4>Add Iframe Banner</h4>
            </div>
            
            <div class='card-body'>
                    <div class='form-group row mb-4'>
                        <label class='col-form-label text-md-right col-12 col-md-3 col-lg-3'>Path</label>
                        <div class='col-sm-12 col-md-7' id='out-tremnt'>
                            <select id='pat' class='form-control selectric'>
                                <option value='1'>View Video</option>
                                <option value='2'>Watch Video</option>
                                <option value='3'>Admin view Video</option>
                                <option value='4'>Admin Watch Video</option>
                                </select>
                        </div>
                    </div>
                    <div class='form-group row mb-4'>
                        <label class='col-form-label text-md-right col-12 col-md-3 col-lg-3'>Code</label>
                        <div class='col-sm-12 col-md-7' id='out-tremnt'>
                            <input type='text' id='iframe' class='form-control'>
                        </div>
                    </div>
                    <div class='form-group row mb-4'>
                                <div class='col-sm-12 col-md-7'>
                                    <a href='#'><button onclick='iframe()' name='submit' value='0' class='btn btn-primary'>Add</button></a>
                                </div>
                            </div>
            </div>
        </div>
    </div>
</div>
<div id='ads'>
                    <div class='row'>
                        <div class='col-12 col-md-6 col-lg-6' id='adf'></div>
                        <div class='col-12 col-md-6 col-lg-6' id='adl'></div>
                    </div>
</div>
                                
<div id='banners'>
                    <div class='row'>
                        <div class='col-12 col-md-6 col-lg-6' id='banf'></div>
                        <div class='col-12 col-md-6 col-lg-6' id='banl'></div>
                    </div>
</div>
                                </div>
                </div>
                
            </section>
        </div>
    </div>
</div>";
$c = '"';
echo "
<input type='hidden' id='key' value='{$_SESSION['key']}'>
<!-- General JS Scripts -->
<script src='assets/bundles/lib.vendor.bundle.js'></script>
<script src='js/CodiePie.js'></script>
<script src='js/scripts.js'></script>
<script src='js/custom.js'></script>

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
function iframe(){
    var code = document.getElementById('iframe').value;
    code = code.replace('<iframe','|');
    var ipat = document.getElementById('pat').value;
    var key = document.getElementById('key').value;
    data = 'code='+code+'&id='+ipat+'&key='+key;
    req('php/banner/ad.php',data,'output');
    document.getElementById('output-alert').style.display='block';
    setTimeout(hidefunc, 3000);
    setTimeout(getall2, 3000);
}
function hidefunc(){
    document.getElementById('output-alert').style.display='none';
}
function remove(id,img){
    if (confirm('Do you want to remove?')) {
        var key  = document.getElementById('key').value;
        var data = ('key='+key+'&id='+id+'&img='+img);
        req('php/banner/delete.php',data,'output');
        document.getElementById('output-alert').style.display='block';
        setTimeout(getall, 1000);
        setTimeout(hidefunc, 5000);
    }
}
function remove2(id,img){
    if (confirm('Do you want to remove?')) {
        var key  = document.getElementById('key').value;
        var data = ('key='+key+'&id='+id+'&img='+img);
        req('php/banner/del.php',data,'output');
        document.getElementById('output-alert').style.display='block';
        setTimeout(getall2, 700);
        setTimeout(hidefunc, 5000);
    }
}
function getall(){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            var banners = 0;
            document.getElementById('banf').innerHTML = '';
            document.getElementById('banl').innerHTML = '';
            for (var i=0;i<data.length;i++){
                const child = data[i];
                if(banners%2===0){
                    document.getElementById('banf').innerHTML += {$c}<div class='card'>                                <div class='card-header'>                                    <h4>{$c}+child.name+{$c}</h4>                                </div>                                <div class='card-body'>                                    <img src='{$c}+child.path+child.img+{$c}'>                                </div>                                <div class='card-footer text-right'>                                    <button class='btn btn-danger' onclick='remove(`{$c}+child.id+{$c}`,`{$c}+child.img+{$c}`)'><i class='fa fa-trash'></i></button>                                </div>                            </div>{$c};
                }else{
                    document.getElementById('banl').innerHTML += {$c}<div class='card'>                                <div class='card-header'>                                    <h4>{$c}+child.name+{$c}</h4>                                </div>                                <div class='card-body'>                                    <img src='{$c}+child.path+child.img+{$c}'>                                </div>                                <div class='card-footer text-right'>                                    <button class='btn btn-danger' onclick='remove(`{$c}+child.id+{$c}`,`{$c}+child.img+{$c}`)'><i class='fa fa-trash'></i></button>                                </div>                            </div>{$c};
                }
                banners += 1;
            }
        }else{
            return;
        }
    };
    xhttp.open('POST','php/banner/banners.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send();
}
function getall2(){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            var banners = 0;
            document.getElementById('adf').innerHTML = '';
            document.getElementById('adl').innerHTML = '';
            for (var i=0;i<data.length;i++){
                const child = data[i];
                if(banners%2===0){
                    document.getElementById('adf').innerHTML += {$c}<div class='card'>                                <div class='card-header'>                                    <h4>{$c}+child.name+{$c}</h4>                                </div>                                <div class='card-body'>                                    {$c}+child.code+{$c}                                </div>                                <div class='card-footer text-right'>                                    <button class='btn btn-danger' onclick='remove2(`{$c}+child.id+{$c}`,`{$c}+child.img+{$c}`)'><i class='fa fa-trash'></i></button>                                </div>                            </div>{$c};
                }else{
                    document.getElementById('adl').innerHTML += {$c}<div class='card'>                                <div class='card-header'>                                    <h4>{$c}+child.name+{$c}</h4>                                </div>                                <div class='card-body'>                                    {$c}+child.code+{$c}                                </div>                                <div class='card-footer text-right'>                                    <button class='btn btn-danger' onclick='remove2(`{$c}+child.id+{$c}`,`{$c}+child.img+{$c}`)'><i class='fa fa-trash'></i></button>                                </div>                            </div>{$c};
                }
                banners += 1;
            }
        }else{
            return;
        }
    };
    xhttp.open('POST','php/banner/ads.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send();
}
getall();
getall2();
</script>
</body>
</html>
";
}
?>