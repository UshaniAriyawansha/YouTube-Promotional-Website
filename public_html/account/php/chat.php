<?php
require("../php/func/key.php");
if(isset($_SESSION["user"])){
    require "../php/conn.php";
    $sql = "SELECT user,refcode,point FROM user WHERE user='{$_SESSION['user']}'";
    $res = $conn->query($sql);
    if($res->num_rows==0){
        unset($_SESSION["user"]);
        header("Location:../login.php");
        return;
    }
    $data = $res->fetch_assoc();
    $dp   = $data["user"].".jpg";
    if(!file_exists($data["user"].".jpg")){
        $dp = "user.jpg";
    }
    //ADMIN ID
    $adm  = 0;
    $sql  = "SELECT ID FROM user WHERE user='Admin'";
    $re   = $conn->query($sql);
    if($re ->num_rows>0){
        $adms = $re->fetch_assoc();
        $adm  = $adms["ID"];
    }
}else{
    header("Location:../login.php");
}
?>
<!doctype html>
<html lang="en" class="light-theme">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="assets/images/favicon-32x32.png" type="image/png" />
  <!--plugins-->
  <style>
    #recent-list{
        display:none;
    }
    #online-list{
        display:block;
    }#cts{
        display:block;
    }#notify,#chat-bx,#video{
        display:none;
    }
</style>
  <link rel="stylesheet" href="assets/plugins/notifications/css/lobibox.min.css" />
  <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
  <link href="assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" />
  <link href="assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />
  <!-- Bootstrap CSS -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/bootstrap-extended.css" rel="stylesheet" />
  <link href="assets/css/style.css" rel="stylesheet" />
  <link href="assets/css/icons.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
  <title>user settings</title>
</head>
<body>
  <!--start wrapper-->
  <div class="wrapper">
    <!--start content-->
    <?php
    require "head.php";
    require "header.php";
    ?>
    <div class="container">
      <main class="page-content">
        <div class="row">
          <div class="col-12 col-lg-4">
            <div class="card shadow-sm border-0 overflow-hidden">
              <div class="card-body">
                <div class="profile-avatar text-center">
                  <img src="images/<? echo $data['user']; ?>.jpg" class="rounded-circle shadow" width="120" height="120" alt="">
                </div>
                <div class="text-center mt-4">
                  <h4 class="mb-1"><? echo $data['user']; ?></h4>
                  <a href="#" class="btn btn-white btn-sm radius-30 dropdown-toggle dropdown-toggle-nocaret" data-bs-toggle="dropdown"><i class="bi bi-trophy"></i> Points : <? echo $data['point']; ?></a>
                  <div class="mt-4"></div>
                  <h6 class="mb-1">Referral Code :<? echo $data['refcode']; ?></h6>
                </div>
                <br><br>
                <div style="margin-left: 50px;" class="d-flex">
                  <div class="col">
                    <div onclick="opentab(`cts`)" class="icon-badge position-relative bg-primary bg-gradient me-lg-5">
                      <i class="bi bi-chat-fill text-white"></i><span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" id="mc"></span>
                    </div>
                  </div>
                  <div class="col">
                    <div onclick="opentab(`notify`)" class="icon-badge position-relative bg-secondary bg-gradient me-lg-5">
                      <i class="bi bi-bell-fill text-white"></i><span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" id="nc"></span>
                    </div>
                  </div>
                  <div class="col">
                    <div onclick="opentab(`video`)" class="icon-badge position-relative bg-danger bg-gradient me-lg-5">
                      <i class="bi bi-play-fill text-white"></i>
                    </div>
                  </div>
                </div>
              </div><br>
            </div>
          </div>
          <div class="col-12 col-lg-8">
            <!-- Content replace  -->

<input type="hidden" id="rc" value="1">
<input type="hidden" id="cp" value="">
<input type="hidden" id="op" value="0">
<input type="hidden" id="limit" value="10">
<input type='hidden' id='last' value=''>
<input type="hidden" id="key" value="<? echo $_SESSION['key']; ?>">
            <!-- This Content Show if user click chat button-->
            <div id="cts">
            <div id="ops" class="chat-wrapper overflow-hidden chat-toggled">
              <div id="chat-ops" class="chat-sidebar">
                <div class="chat-sidebar-header">
                  <div class="d-flex align-items-center"></div>
                  <div class="mb-3"></div>
                  <div class="chat-tab-menu mt-3">
                    <a href="javascript:;" onclick="op(<?php echo $adm; ?>)" class="list-group-item">
                      <div class="d-flex">
                        <div class="chat-user-online">
                          <img src="images/Admin.jpg" width="42" height="42" class="rounded-circle"
                            alt="" />
                        </div>
                        <div class="flex-grow-1 ms-2">
                          <h6 class="mb-0 chat-title">Site Admin</h6>
                          <p class="mb-0 chat-msg">Do you need any help?</p>
                        </div>
                        <div class="chat-time text-success">Online</div>
                      </div>
                    </a>
                  </div>
                </div>
                <div class="chat-sidebar-content">
                  <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-Chats">
                      <div class="p-3">
                        										<div class="dropdown mt-3"> <a href="#" class="text-uppercase text-secondary dropdown-toggle dropdown-toggle-nocaret" data-bs-toggle="dropdown" id="list-drop">Online Users <i class='bx bxs-chevron-down'></i></a>
<div class="dropdown-menu">
												<a class="dropdown-item" onclick="rc(1)">Online Users</a>
												<a class="dropdown-item" onclick="rc(0)">Recent Chats</a>
                        <!-- If user ofline 
                          <div class="chat-time text-muted">Offline</div>
                        -->
											</div>

										</div>
                      </div>

                      <!-- Chat list -->
                      <div class="chat-list">
                         <div id="online-list"></div>
                         <div id="recent-list"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div id="chat-box">
              <div class="chat-header d-flex align-items-center">
                <div id="c" onclick="op(0)" class="chat-toggle-btn">
                  <i class="bx bx-menu-alt-left"></i>
                </div>
                <div>
                  <h4 class="mb-1 font-weight-bold" id="chat-box-user">User</h4>
                </div>
                <div class="dropdown ms-auto">
                  <a href="#" class="btn btn-white btn-sm radius-30 dropdown-toggle dropdown-toggle-nocaret"
                    data-bs-toggle="dropdown">
                    <i class="bi bi-trophy"></i>Point: <span id="chat-box-point">5000</span> </a>
                </div>
              </div>
              <!-- En!d Chat Header -->
              <!-- Chat Content -->
              <div class="chat-content" id="chats">
                <div class="text-center mb-4">
                  <div class="dropdown">
                    <a href="#" class="btn btn-white btn-sm radius-30 dropdown-toggle dropdown-toggle-nocaret"
                      data-bs-toggle="dropdown">See more <i class="bi bi-chevron-up"></i>
                    </a>
                  </div>
                </div>
              </div>
              <!-- Chat Entery-->
              <div class="chat-footer d-flex align-items-center">
                <div class="flex-grow-1 pe-2">
                  <div class="input-group">
                    <textarea
                      style="outline: none; box-shadow: none; border-top-left-radius: 25px; border-bottom-left-radius: 25px; border-right: none; resize: none" rows="1" type="text" class="form-control" placeholder="Type a message..." id="msg"></textarea>
                    <a onclick="msg()" href="javascript:void(0)">
                      <span
                        style="background-color: #fff; border-top-right-radius: 25px; border-left: none; border-bottom-right-radius: 25px;"
                        class="input-group-text">
                        <i class="bi bi-chat-dots"></i>
                      </span>
                    </a>
                  </div>
                </div>
              </div>
              <!-- End Chat Entery-->
            </div>
            </div>
            </div>
            
<!-- notification -->
<div id="notify">
              <h6 class="mb-0 text-uppercase">notifications</h6>
              <hr>
              <div id="nf"></div>
</div>
<!-- video -->
              <div id="video" class="card">
                <div class="card-body">
                  <ul class="nav nav-tabs nav-primary" role="tablist">

                    <li class="nav-item" role="presentation">
                      <a class="nav-link active" data-bs-toggle="tab" href="#viewvideos" role="tab" aria-selected="true">
                        <div class="d-flex align-items-center">
                          <div class="tab-icon"><i class='bi bi-eye font-18 me-1'></i>
                          </div>
                          <div class="tab-title">View Videos</div>
                        </div>
                      </a>
                    </li>

                    <li class="nav-item" role="presentation">
                      <a class="nav-link" data-bs-toggle="tab" href="#watchhours" role="tab" aria-selected="false">
                        <div class="d-flex align-items-center">
                          <div class="tab-icon"><i class='bi bi-film font-18 me-1'></i>
                          </div>
                          <div class="tab-title">Watch Hours</div>
                        </div>
                      </a>
                    </li>

                    <li class="nav-item" role="presentation">
                      <a class="nav-link" data-bs-toggle="tab" href="#addavideo" role="tab" aria-selected="false">
                        <div class="d-flex align-items-center">
                          <div class="tab-icon"><i class='bi bi-plus-circle font-18 me-1'></i>
                          </div>
                          <div class="tab-title">Add a Video</div>
                        </div>
                      </a>
                    </li>

                  </ul>
                  <div class="tab-content py-3">
                    <div class="tab-pane active" id="viewvideos" role="tabpanel">
                      <div class="row" id="vout"></div>
                    </div>
                    <div class="tab-pane fade" id="watchhours" role="tabpanel">
                       <div class="row" id="wout"></div>
                    </div>
                    <div class="tab-pane fade" id="addavideo" role="tabpanel">
                      <div id="adddiv" class="tab-pane">
                        <h3>Add a Video</h3>
                        <br>
                          <div class="d-inlive">
                            <div class="form-row"  >
                              <div class="form-group col-auto">
                                <label class="mb-1">URL</label>
                                <input type="text" id="link" class="form-control" style="outline: none; box-shadow: none;">
                              </div>
                              <br>
                              <div class="form-group col-md-2">
                                <label class="mb-1">Type</label>
                                <select id="type" class="form-control" style="outline: none; box-shadow: none;">
                                  <option selected value="1">Views</option>
                                  <option value="2">Watch Hours</option>
                                </select>
                              </div>
                              <br>
                            <button type="submit" class="btn btn-primary" onclick="add()">Add</button>
                          </div>
                    </div>
                  </div>
                </div>
              </div>
              </div>
              </div>
          </div>
        </div>
        <div class="overlay chat-toggle-btn-mobile"></div>
      </main>
      <div class="overlay nav-toggle-icon"></div>
    </div>
<script>
var online;
var recent;
var msgget;
function copy(TextToCopy){
    var TempText = document.createElement("input");
    TempText.value = TextToCopy;
    document.body.appendChild(TempText);
    TempText.select();
    document.execCommand("copy");
    document.body.removeChild(TempText);
    round_info_noti("URL Copied To ClipBoard");
}
function add(){
    var link = document.getElementById("link").value;
    var type = document.getElementById("type").value;
    var key = document.getElementById("key").value;
    $.ajax({
        url: "php/add_video.php",
        method: "POST",
        data: {link:link,type:type,key:key},
        datatype: "text",
        success: function (html) {
            const res = JSON.parse(html);
            if(res.msg==="true"){
                round_info_noti("Successfully aded video");
                document.getElementById("link").innerHTML = "";
                getdata();
            }else{
                round_info_noti(res.val);
            }
        },
    });
}
function mc(){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            document.getElementById('mc').innerHTML = data.length;
            for(var i=0;i<data.length;i++){
                document.getElementById('c'+data[i]).innerHTML = "<img  width='20px' height='20px' src='images/1.png'>";
            }
        }else{
            return;
        }
    };
    xhttp.open('POST','php/msg_notify.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('a=a');
}
function viewnotify(){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            document.getElementById('nc').innerHTML = data.length;
            for(var i=0;i<data.length;i++){
                const arr = data[i];
                document.getElementById("nf").innerHTML += "<div class='card radius-10'><div class='card-body'><div class='d-flex align-items-center'><img src='https://img.youtube.com/vi/"+arr.link+"/maxresdefault.jpg' width='90' height='60'><div class='flex-grow-1 ms-3'><h5 class='mt-0'>"+arr.user+" Watched Your Video</h5></div></div></div></div>";
            }
        }else{
            return;
        }
    };
    xhttp.open('POST','php/views.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('a=a');
}
viewnotify();
function msg(){
    var msg = document.getElementById('msg').value;
    document.getElementById('msg').value = "";
    var key = document.getElementById('key').value;
    var rid = document.getElementById('op').value;
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            scrollToBottom("chats");
        }else{
            return;
        }
    };
    xhttp.open('POST','php/msg.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('msg='+msg+'&rid='+rid+'&key='+key);
}
function getdata(){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            document.getElementById("wout").innerHTML = "";
            document.getElementById("vout").innerHTML = "";
            for(var i=0;i<data.length;i++){
                if(data[i].type==="1"){
                    document.getElementById("vout").innerHTML += "<div class='col-sm-6'>                          <div class='card'>                            <img class='img-fluid z-depth-1' src='https://img.youtube.com/vi/"+data[i].link+"/maxresdefault.jpg'>                            <div class='p-2 text-center'>                              <button onclick='copy(`https://asp.helascript.com/video.php?n=1&code="+data[i].link+"`)' style='outline: none; box-shadow: none;' class='btn btn-success ml-auto' data-bs-toggle='tooltip' data-bs-placement='bottom' title='Copyed Video URL'>                                <i class='bi bi-clipboard-check' ></i>                              </button>                                <button style='outline: none; box-shadow: none;' class='btn btn-danger ml-auto' data-bs-toggle='tooltip' data-bs-placement='bottom' onclick='remove(`video`,"+data[i].id+")' title='Remove the Video'>                                <i class='bi bi-trash' ></i>                             </button>                                                                      </div>                          </div>                        </div>";
                    }else if(data[i].type==="2"){
                    document.getElementById("wout").innerHTML += "<div class='col-sm-6'>                          <div class='card'>                            <img class='img-fluid z-depth-1' src='https://img.youtube.com/vi/"+data[i].link+"/maxresdefault.jpg'>                            <div class='p-2 text-center'>                              <button onclick='copy(`https://asp.helascript.com/video.php?n=1&code="+data[i].link+"`)' style='outline: none; box-shadow: none;' class='btn btn-success ml-auto' data-bs-toggle='tooltip' data-bs-placement='bottom' title='Copyed Video URL'>                                <i class='bi bi-clipboard-check' ></i>                              </button>                                <button style='outline: none; box-shadow: none;' class='btn btn-danger ml-auto' data-bs-toggle='tooltip' data-bs-placement='bottom' onclick='remove(`video`,"+data[i].id+")' title='Remove the Video'>                                <i class='bi bi-trash' ></i>                              </button>                                                                      </div>                          </div>                        </div>";
                }
            }
    }else{
        return;
    }
  };
    xhttp.open('POST',"php/vid.php", true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send("a=a");
}
getdata();
function remove(tbl,val){
    if (confirm('Do you want to remove '+name+'?')) {
        var key  = document.getElementById('key').value;
        var data = ("key="+key+"&tbl="+tbl+"&val="+val);
        var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            alert("success");
        }else{
            return;
        }
    };
    xhttp.open('POST','php/delete.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send(data);
        setTimeout(getdata, 700);
    }}
function scrollToBottom (id) {
   var div = document.getElementById(id);
   div.scrollTop = div.scrollHeight - div.clientHeight;
}
function opentab(id){
    const ids = ["cts","video","notify"];
    for(var i=0;i<ids.length;i++){
        document.getElementById(ids[i]).style.display='none';
    }
    document.getElementById(id).style.display='block';
    if(document.getElementById('rc').value == 1 || document.getElementById('rc').value == 2){
        if(id=='cts'){
            online_list();
        }else{
            clearInterval(online);
        }
    }else{
        if(id=='cts'){
            recent_list();
        }else{
            clearInterval(recent);
        }
    }
}
function msg_get(){
    var rid = document.getElementById('op').value;
    var key = document.getElementById('key').value;
    var limit = document.getElementById('limit').value;
    var last = document.getElementById('last');
    var fin  = last.value;
    clearInterval(msgget);
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            for(var i=0;i<data.length;i++){
                const arr = data[i];
                if(last.value == ''){
                    document.getElementById('chats').innerHTML = '';
                }
                if(arr.user!='<? echo $_SESSION["user"]; ?>'){
                    document.getElementById('chats').innerHTML += "                <div class='chat-content-leftside'>                  <div class='d-flex'>                    <img src='images/"+arr.user+"' width='48' height='48' class='rounded-circle'                      alt='' />                    <div class='flex-grow-1 ms-2'>     <p class='mb-0 chat-time'>"+arr.user+"</p>                 <p class='chat-left-msg'>"+arr.msg+"</p>                    </div>                  </div>                </div>";
                last.value = arr.id;
                }else{
                    document.getElementById('chats').innerHTML += "<div class='chat-content-rightside'>                  <div class='d-flex ms-auto'>                    <div class='flex-grow-1 me-2'>                      <p class='mb-0 chat-time text-end'>you</p>                      <p class='chat-right-msg'>"+arr.msg+"</p>                    </div>                  </div>               </div>";
                last.value = arr.id;
                }
            }
            if(fin == ''){
                    scrollToBottom("chats");
                    setTimeout(mc,50);
        }else{
                }
            return;
        }
    };
    xhttp.open('POST',"php/get_msg.php", true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('rid='+rid+'&limit='+limit+'&key='+key+'&last='+last.value);
    if(document.getElementById('op').value!="0"){
        msgget = setInterval(msg_get, 5000);
    }
}
function op(id){
    if(id==0){
        clearInterval(msgget);
        document.getElementById('chats').innerHTML = '';
        document.getElementById("").style.display="block";
        document.getElementById("op").value=id;
    }else{
        document.getElementById('last').value="";
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function(){
            if (this.readyState == 4 && this.status == 200) {
                const data = JSON.parse(this.responseText);
                document.getElementById("chat-box-user").innerHTML = data.user;
                document.getElementById("chat-box-point").innerHTML = data.point;
            }else{
                return;
            }
        };
        xhttp.open('POST','php/id.php', true);
        xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhttp.send('id='+id);
        document.getElementById("ops").className="chat-wrapper overflow-hidden";
        document.getElementById("chat-box").style.display="block";
        document.getElementById("op").value=id;
        msgget = setInterval(msg_get, 20);
    }
}
function rc(num){
    if(num==1){
        clearInterval(recent);
        online_list();
        document.getElementById("rc").value = 1;
        document.getElementById("online-list").style.display = 'block';
        document.getElementById("recent-list").style.display = 'none';
        document.getElementById("list-drop").innerHTML = "Online Users<i class='bx bxs-chevron-down'></i>";
    }else{
        clearInterval(online);
        recent_list();
        document.getElementById("list-drop").innerHTML = "Recent Chats<i class='bx bxs-chevron-down'></i>";
        document.getElementById("rc").value = 0;
        document.getElementById("online-list").style.display = 'none';
        document.getElementById("recent-list").style.display = 'block';
    }
}
function online_list(){
    var num = 10000;
    if(document.getElementById("rc").value == '1'){
        document.getElementById("rc").value = 2;
        num = 2000;
    }
    clearInterval(online);
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            var all = '';
            for(var i=0;i<data.length;i++){
                var all   = all+"<div class='list-group list-group-flush'>                          <a href='javascript:;' class='list-group-item'>                            <div class='d-flex'>                              <div onclick='op("+data[i]['id']+")' class='chat-user-online'>                                <img src='images/"+data[i]['dp']+"' width='42' height='42'                                  class='rounded-circle' alt='' />                              </div>                              <div onclick='op("+data[i]['id']+")' class='flex-grow-1 ms-2'>                                <h6 class='mb-0 chat-title'>"+data[i]['user']+"</h6>                                <p class='mb-0 chat-msg'>User Points : "+data[i]['point']+" </p>                              </div>                              <div style='margin-right: 10px;'></div>                              <div class='chat-time text-success'>Online</div>                            </div>                          </a>                        </div>";
                
            }
            document.getElementById("online-list").innerHTML = all;
        }else{
            return;
        }
    };
    xhttp.open('POST','php/online.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('a=a');
    online = setInterval(online_list, num);
}
function recent_list(){
    var num = 10000;
    if(document.getElementById("rc").value == '0'){
        document.getElementById("rc").value = 3;
        num = 2000;
    }
    clearInterval(recent);
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            var all = '';
            for(var i=0;i<data.length;i++){
                var s = 'offline';
                var c = 'muted';
                if(data[i]['o']!='0'){
                    s = 'online';
                    c = 'success';
                }
                var all   = all+"<div class='list-group list-group-flush'>                          <a href='javascript:;' class='list-group-item'>                            <div class='d-flex'>                              <div onclick='op("+data[i]['id']+")' class='chat-user-"+s+"' id='user-stat2"+data[i]['id']+"'>                                <img src='images/"+data[i]['d']+"' width='42' height='42'                                  class='rounded-circle' alt='' />                              </div>                              <div onclick='op("+data[i]['id']+")' class='flex-grow-1 ms-2'>                                <h6 class='mb-0 chat-title'>"+data[i]['u']+"</h6>                                <p class='mb-0 chat-msg'>User Points : "+data[i]['p']+" </p>                              </div>                              <div id='c"+data[i]['id']+"' style='margin-right: 10px;'></div>                              <div class='chat-time text-"+c+"' id='user-stat"+data[i]['id']+"'>"+s+"</div>                            </div>                          </a>                        </div>";
            }
            document.getElementById("recent-list").innerHTML = all;
            setTimeout(mc,50);
        }else{
            return;
        }
    };
    xhttp.open('POST','php/recent.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('a=a');
    recent = setInterval(recent_list, num);
}
online_list();
setTimeout(mc,100);
</script>
<!--notification js -->
  <script src="assets/plugins/notifications/js/lobibox.min.js"></script>
  <script src="assets/plugins/notifications/js/notifications.min.js"></script>
  <script src="assets/plugins/notifications/js/notification-custom-script.js"></script>
  <script src="assets/js/pace.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!--end wrapper-->
    <!-- Bootstrap bundle JS -->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <!--plugins-->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/plugins/simplebar/js/simplebar.min.js"></script>
    <script src="assets/plugins/metismenu/js/metisMenu.min.js"></script>
    <script src="assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
    <script src="assets/js/pace.min.js"></script>
    <!--app-->
    <script src="assets/js/app.js"></script>
    <script src="assets/js/app-chat-box.js"></script>
    
<!-- Javascript Files
    ================================================== -->
        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/wow.min.js"></script>
        <script src="../js/jquery.isotope.min.js"></script>
        <script src="../js/easing.js"></script>
        <script src="../js/owl.carousel.js"></script>
        <script src="../js/validation.js"></script>
        <script src="../js/jquery.magnific-popup.min.js"></script>
        <script src="../js/enquire.min.js"></script>
        <script src="../js/jquery.stellar.min.js"></script>
        <script src="../js/jquery.plugin.js"></script>
        <script src="../js/typed.js"></script>
		<script src="../js/jquery.countTo.js"></script>
        <script src="../js/jquery.countdown.js"></script>
        <script src="../js/designesia.js"></script>
</body>

</html>