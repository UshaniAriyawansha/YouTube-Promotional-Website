<?php
require_once('../php/func/key.php');
if(isset($_SESSION['admin'])){
require_once('include/nav.php');
require_once('include/head.php');
echo "
    <!DOCTYPE html>
<html lang='en'>
<head>
<title>Site | Users</title>
{$head}
    <style>
        #hide,#output-alert,#baneddiv,#item-view{
            display:none;
        }#usersdiv{
            display:block;
        }
    </style>
</head>

<body class='layout-4'>
        {$nav}
        <div class='main-content'>
            <section class='section'>
                <div class='section-header'>
                    <h1>Manage Users</h1>
                    <div class='section-header-breadcrumb'>
                        <div class='breadcrumb-item active'><a href='index.php'>Dashboard</a></div>
                        <div class='breadcrumb-item'>Users</div>
                    </div>
                </div>
                <div id='btns' class='card'>
                    <div class='card-body'>
                        <ul class='nav nav-pills'>
                            <li onclick='loade(`users`)' class='nav-item'><a class='nav-link active' id='users' href='javascript:void(0)'>Active</a></li>
                            <li onclick='loade(`baned`)' class='nav-item'><a class='nav-link' id='baned' href='javascript:void(0)'>Baned</a></li>
                        </ul>
                    </div>
                </div>
                <!-- item view-->
<div class='row mt-sm-4' id='item-view'>
    <div class='col-12 col-md-12 col-lg-5'>
        <div class='card profile-widget'>
            <div class='profile-widget-header'>
                <img alt='image' src='images/user.png' class='rounded-circle profile-widget-picture'>
                <div class='profile-widget-items'>
                    <div class='profile-widget-item'>
                        <div class='profile-widget-item-label'>Delete</div>
                        <div onclick='option(1)' class='profile-widget-item-value'><span class='btn btn-danger fa fa-trash'></span></div>
                    </div>
                    <div class='profile-widget-item'>
                        <div class='profile-widget-item-label'>Ban</div>
                        <div onclick='option(2)' class='profile-widget-item-value'><span class='btn btn-dark fa fa-ban'></span></div>
                    </div>
                    <div class='profile-widget-item'>
                        <div class='profile-widget-item-label'>Close</div>
                        <div onclick='orderview(`block`,`none`)' class='profile-widget-item-value'><span class='btn btn-light fa fa-close'></span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id='item-out'></div>
</div>
                <div class='alert alert-success alert-dismissible show fade' id='output-alert'>
                    <div class='alert-body'>
                        <span id='output'></span>
                    </div>
                </div>
                <label id='sch'></label>
<div id='usersdiv'>
    <div class='table-responsive'>
        <table class='table table-sm'>
            <thead>
                <tr>
                    <th scope='col'>#</th>
                    <th scope='col'>User</th>
                    <th scope='col'>Fname</th>
                    <th scope='col'>Gender</th>
                    <th scope='col'>Mail</th>
                    <th scope='col'>Points</th>
                    <th scope='col'>refferer code</th>
                    <th scope='col'>Ban</th>
                    <th scope='col'>Delete</th>
                </tr>
            </thead>
            <tbody id='usertbd'>
            </tbody>
        </table>
    </div>
</div>
<div id='baneddiv'>
    <div class='table-responsive'>
        <table class='table table-sm'>
            <thead>
                <tr>
                    <th scope='col'>#</th>
                    <th scope='col'>User</th>
                    <th scope='col'>Fname</th>
                    <th scope='col'>Lname</th>
                    <th scope='col'>Mail</th>
                    <th scope='col'>Points</th>
                    <th scope='col'>refferer code</th>
                    <th scope='col'>Undo</th>
                </tr>
            </thead>
            <tbody id='bantbd'>
            </tbody>
        </table>
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
<input type='hidden' id='tdp' value=''>
<input type='hidden' id='hview' value=''>
<input type='hidden' id='search' value=''>
<!-- General JS Scripts -->
<script src='assets/bundles/lib.vendor.bundle.js'></script>
<script src='js/CodiePie.js'></script>
<script src='js/scripts.js'></script>
<script src='js/custom.js'></script>
</body>
</html>
";
}else{
    header("Location:404.php");
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
    if (confirm('Do you want to remove '+name+'?')) {
        var key  = document.getElementById('key').value;
        var data = ("key="+key+"&tbl="+tbl+"&val="+val);
        req("php/delete.php",data,"output");
        document.getElementById('output-alert').style.display='block';
        setTimeout(getdata, 1000);
        setTimeout(hidefunc, 5000);
    }
}
function update(tbl,op,val,id){
    var key  = document.getElementById('key').value;
    var data = ("key="+key+"&tbl="+tbl+"&op="+op+"&val="+val+"&id="+id);
    req("php/update.php",data,"output");
    document.getElementById('output-alert').style.display='block';
    setTimeout(getdata, 1000);
    setTimeout(hidefunc, 5000);
}
function loade(id){
    const ids = ['users','baned'];
    for(var i = 0;i<ids.length;i++){
        document.getElementById(ids[i]).className='nav-link';
        document.getElementById(ids[i]+'div').style.display='none';
    }
    if(id !== ''){
        document.getElementById(id).className='nav-link active';
        document.getElementById(id+'div').style.display='block';
    }
}
function getall(stat){
    var num = document.getElementsByClassName("page-link v")[0].innerHTML;
    var key = document.getElementById('key').value;
    var sch = document.getElementById('search').value;
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            document.getElementById('usertbd').innerHTML = "";
            document.getElementById('bantbd').innerHTML  = "";
            var baned  = 0;
            var active = 0;
            for (var i=0;i<data.length;i++){
                const child = data[i];
                var u = i + 1;
                if(child.stat==='0'){
                    active += 1;
                    var ban = "<td><span class='btn btn-dark fa fa-ban' onclick='update(`user`,0,1,"+child.id+")'></span></td>";
                    var del = "<td><span onclick='remove(`user`,"+child.id+")' class='btn btn-danger fa fa-trash'></span></td>";
                    document.getElementById('usertbd').innerHTML += '<tr><td>'+u+"</td><td onclick='orderview(`none`,`block`,`"+child.id+"`)'>"+child.user+'</td><td>'+child.fname+'</td><td>'+child.lname+'</td><td>'+child.mail+"</td><td id='td"+child.id+"' onclick='editbl(this.id,`tdp`)'>"+child.point+'</td><td>'+child.ref+'</td>'+ban+del+'</tr>';
                }else{
                    baned += 1;
                    var undo = "<td><span onclick='update(`user`,0,0,"+child.id+")' class='btn btn-dark fa fa-undo'></span></td>";
                    document.getElementById('bantbd').innerHTML += '<tr><td>'+u+'</td><td>'+child.user+'</td><td>'+child.fname+'</td><td>'+child.lname+'</td><td>'+child.mail+'</td><td>'+child.point+'</td><td>'+child.ref+'</td>'+undo+'</tr>';
                }
                document.getElementById('users').innerHTML='Active('+active+')';
                document.getElementById('baned').innerHTML='Baned('+baned+')';
            }
        }else{
            return;
        }
    };
    xhttp.open('POST','php/users.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('count='+num+'&key='+key+'&search='+sch+'&stat='+stat);
}
function option(op){
    var id= document.getElementById('hview').value;
    if(op === 1){
        remove('user',id);
    }else{
        update('user',0,1,id);
    }
}
function save(){
    var point  = document.getElementById('point').value; 
    var id     = document.getElementById('hview').value; 
    update('user',1,point,id)
    orderview(`block`,`none`);
}
function orderview(val1,val2,uid){
    var key = document.getElementById('key').value;
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            document.getElementById('item-out').innerHTML = "<div class='col-12 col-md-12 col-lg-7'>        <div class='card'>            <div>                <div class='card-header'>                    <h4>User Info</h4>                </div>                <div class='card-body'>                    <div class='row'>                        <div class='form-group col-md-6 col-12'>                            <label>UserName</label><br>                            <span>"+data.user+"</span>                        </div>                        <div class='form-group col-md-6 col-12'>                            <label>Full Name</label><br>                            <span>"+data.fname+"</span>                        </div>                        <div class='form-group col-md-6 col-12'>                            <label>E-Mail</label><br>                            <span>"+data.mail+"</span>                        </div>                        <div class='form-group col-md-6 col-12'>                            <label>Referer Code</label><br>                            <span>"+data.ref+"</span>                        </div>                        <div class='form-group col-md-6 col-12'>                            <label>Points</label><br>                            <input type='text' id='point' value='"+data.point+"'>                        </div>                        <div class='form-group col-md-6 col-12'>                        <button class='btn btn-primary' onclick='save()'>save</button>                        </div>                    </div>                </div>            </div>        </div>    </div>";
            window.scrollTo(0, 0);
        }else{
            return;
        }
    };
    xhttp.open('POST','php/view.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('id='+uid+'&tbl=user'+'&key='+key);
    var id = document.getElementsByClassName('nav-link active')[0].id;
    document.getElementById(id+'div').style.display=val1;
    document.getElementById('btns').style.display=val1;
    document.getElementById('pageination').style.display=val1;
    document.getElementById('item-view').style.display=val2;
    document.getElementById('hview').value=uid;
}
function getdata(){
    getall(0);
    getall(1);
}
getdata();
</script>