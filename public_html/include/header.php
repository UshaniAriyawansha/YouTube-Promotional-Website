<?php
if(isset($_SESSION["user"])){
    $sign = "<a onclick='logout(`{$_SESSION['key']}`)' class='btn btn-outline-primary' href='javascript:void(0)'><i class='fas fa-sign-in-alt'></i> Sign Out</a>";
                                        $las = "
<style>

#nav-item:hover {
  font-size: 20px;
}

</style>

<script>
function logout(key){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
                location.href='login.php';
        }else{
            return;
        }
    };
    xhttp.open('POST', 'php/logout.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('key='+key);
} 
function status(){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            mc();
            return;
        }else{
            return;
        }
    };
    xhttp.open('POST', 'php/status.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('a=a');
    setTimeout(status, 10000);
}
status();
</script>";
}else{
    $sign = "<a class='btn btn-outline-primary' href='register.php'><i class='fas fa-sign-in-alt'></i> Sign Up</a>";
                                        $las = "";
}
echo "
        <header class='header-light transparent scroll-light'>
                <div class='container'>
                    <div class='row'>
                        <div class='col-md-12'>
                            <div class='d-flex justify-content-between'>
                                <div class='align-self-center header-col-left'>
                  
                                    <!-- logo begin -->
                                    <div id='logo'>
                                        <a href='index.php'>
											<img alt='' src='images/logo-1.png' />
										</a>
                                    </div>
                                    <!-- logo close -->
                               
                                </div>
                                <div class='align-self-center ml-auto header-col-mid'>

                                    <!-- mainmenu begin -->
                                    <ul id='mainmenu'>
                                        <li>
                                            <a href='index.php' id='nav-item'>Home</a>
                                        </li>
                                        <li>
                                            <a href='view_video.php' id='nav-item'>View Videos</a>
                                        </li>
                                        <li>
                                            <a href='watch_video.php' id='nav-item'>Watch Hours</a>
                                        </li>
                                        <li>
                                            <a href='javascript:void(0)' id='nav-item'>Admin Videos</a>
                                            <ul>
                                                <li><a href='admin_view_video.php'>View Videos</a></li>
                                                <li><a href='admin_watch_video.php'>Watch Hours</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href='contact.php' id='nav-item'>Contact Us</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class='align-self-center ml-auto header-col-right'>
                                    <a class='btn btn-outline-primary' href='login.php'><i class='fa fa-user'></i></a>
{$sign}
                                    <span id='menu-btn'></span>
                                </div>
                                <div class='clearfix'></div>
                            </div>
                        </div>
                    </div>
                </div>
                {$las}
<script>
function mc(){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            document.getElementById('msgcnt').innerHTML = 'Massage ('+data.length+')';
        }else{
            return;
        }
    };
    xhttp.open('POST','account/php/msg_notify.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('a=a');
}
</script>

            </header>";
?>