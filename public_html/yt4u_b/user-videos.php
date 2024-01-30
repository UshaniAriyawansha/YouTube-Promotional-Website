<?php
require_once('../php/func/key.php');
if(isset($_SESSION['admin'])){
require_once('include/nav.php');
require_once('include/head.php');
echo "
    <!DOCTYPE html>
<html lang='en'>
<head>
<title> Manage User Videos</title>
{$head}
    <style>
        #hide,#output-alert,#wvudiv,#webudiv{
            display:none;
        }#vvudiv,#pageination{
            display:block;
        }iframe{
            width:100%;
            border-radius:5px;
        }
    </style>
</head>

<body class='layout-4'>
        {$nav}
        <div class='main-content'>
            <section class='section'>
                <div class='section-header'>
                    <h1>Manage Videos</h1>
                    <div class='section-header-breadcrumb'>
                        <div class='breadcrumb-item active'><a href='index.php'>Dashboard</a></div>
                        <div class='breadcrumb-item'>Videos</div>
                    </div>
                </div>
                <div id='btns' class='card'>
                    <div class='card-body'>
                        <ul class='nav nav-pills'>
                            <li onclick='loade(`vvu`)' class='nav-item'><a class='nav-link active' id='vvu' href='javascript:void(0)'>View Videos</a></li>
                            <li onclick='loade(`wvu`)' class='nav-item'><a class='nav-link' id='wvu' href='javascript:void(0)'>Watch Videos</a></li>
                        </ul>
                    </div>
                </div>
                <div class='alert alert-success alert-dismissible show fade' id='output-alert'>
                    <div class='alert-body'>
                        <span id='output'></span>
                    </div>
                </div>
                <label id='sch'></label>

<div id='vvudiv'>
                    <div class='row'>
                        <div class='col-12 col-md-6 col-lg-6' id='vvuf'></div>
                        <div class='col-12 col-md-6 col-lg-6' id='vvul'></div>
                    </div>
</div>
<div id='wvudiv'>
                    <div class='row'>
                        <div class='col-12 col-md-6 col-lg-6' id='wvuf'></div>
                        <div class='col-12 col-md-6 col-lg-6' id='wvul'></div>
                    </div>
</div>

                <div class='card-body' id='pageination'>
                                    <div class='buttons'>
                                        <nav aria-label='Page navigation example'>
                                            <ul class='pagination'>
                                                <li class='page-item'>
                                                    <a onclick='page(-1)' class='page-link' href='javascript:void(0)' aria-label='Previous'>
                                                        <span aria-hidden='true'>&laquo;</span>
                                                        <span class='sr-only'>Previous</span>
                                                    </a>
                                                </li>
                                                <li onclick='clik(this.id)' id='li1' class='page-item'><a class='page-link v' href='javascript:void(0)'>1</a></li>

                                                <li class='page-item'>
                                                    <a onclick='page(1)' class='page-link' href='javascript:void(0)' aria-label='Next'>
                                                        <span aria-hidden='true'>&raquo;</span>
                                                        <span class='sr-only'>Next</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                </div>
            </section>
        </div>
    </div>
</div>
<input type='hidden' id='key' value='{$_SESSION['key']}'>
<input type='hidden' id='search' value=''>
<!-- General JS Scripts -->
<script src='assets/bundles/lib.vendor.bundle.js'></script>
<script src='js/CodiePie.js'></script>
<script src='js/scripts.js'></script>
<script src='js/custom.js'></script>
</body>
</html>
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
function page(val){
    var btns = document.getElementsByClassName('page-link v');
    if(parseInt(btns[0].innerHTML) + val !== 0){
        btns[0].innerHTML = parseInt(btns[0].innerHTML) + val;
    }
    getdata();
}
function search(){
    var res = document.getElementById('svalue').value;
    document.getElementById('sch').innerText = 'Search : ' + res;
    document.getElementById('search').value = res;
    getdata();
}
function closech(){
    document.getElementById('svalue').value = '';
    document.getElementById('search').value = '';
    document.getElementById('sch').innerText = '';
    getdata();
}
function remove(tbl,val){
    if (confirm('Do you want to remove?')) {
        var key  = document.getElementById('key').value;
        var data = ('key='+key+'&tbl='+tbl+'&val='+val);
        req('php/delete.php',data,'output');
        document.getElementById('output-alert').style.display='block';
        setTimeout(getdata, 1000);
        setTimeout(hidefunc, 5000);
    }
}
function loade(id){
    const ids = ['vvu','wvu'];
    for(var i = 0;i<ids.length;i++){
        document.getElementById(ids[i]).className='nav-link';
        document.getElementById(ids[i]+'div').style.display='none';
    }
    if(id !== ''){
        document.getElementById(id).className='nav-link active';
        document.getElementById(id+'div').style.display='block';
    }
}
function getall(id){
    var num = document.getElementsByClassName('page-link v')[0].innerHTML;
    var key = document.getElementById('key').value;
    var sch = document.getElementById('search').value;
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            var videos = 0;
            document.getElementById(id+'f').innerHTML = '';
            document.getElementById(id+'l').innerHTML = '';
            for (var i=0;i<data.length;i++){
                const child = data[i];
                if(videos%2===0){
                    document.getElementById(id+'f').innerHTML += "<div class='card'>                                <div class='card-header'>                                    <h4>"+child.user+"</h4>                                </div>                                <div class='card-body'>                                    <iframe src='https://www.youtube.com/embed/"+child.link+"'></iframe><label>"+child.dtime+"</label>                                <br><label><i class='fa fa-eye'></i>&nbsp;"+child.views+"</label>                                </div>                                <div class='card-footer text-right'>                                    <button class='btn btn-danger' onclick='remove(`video`,"+child.id+")'><i class='fa fa-trash'></i></button>                                </div>                            </div>";
                }else{
                    document.getElementById(id+'l').innerHTML += "<div class='card'>                                <div class='card-header'>                                    <h4>"+child.user+"</h4>                                </div>                                <div class='card-body'>                                    <iframe src='https://www.youtube.com/embed/"+child.link+"'></iframe><label>"+child.dtime+"</label>                                <br><label><i class='fa fa-eye'></i>&nbsp;"+child.views+"</label>                                </div>                                <div class='card-footer text-right'>                                    <button class='btn btn-danger' onclick='remove(`video`,"+child.id+")'><i class='fa fa-trash'></i></button>                                </div>                            </div>";
                }
                videos += 1;
            }
            if(id==='vvu'){
                document.getElementById(id).innerText='View Videos('+videos+')';
            }else{
                document.getElementById(id).innerText='Watch Videos('+videos+')';
            }
        }else{
            return;
        }
    };
    xhttp.open('POST','php/videos.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('count='+num+'&key='+key+'&search='+sch+'&stat='+id);
}
function getdata(){
    getall('vvu');
    getall('wvu');
}
getdata();
web();
</script>