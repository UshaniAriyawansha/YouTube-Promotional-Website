<?php
if(isset($_SESSION['admin'])){
    $nav =  "
<!-- Page Loader -->
<div class='page-loader-wrapper'>
    <span class='loader'><span class='loader-inner'></span></span>
</div>

<div id='app'>
    <div class='main-wrapper main-wrapper-1'>
        <div class='navbar-bg'></div>

        <!-- Start app top navbar -->
        <nav class='navbar navbar-expand-lg main-navbar'>
            <div class='form-inline mr-auto'>
                <ul class='navbar-nav mr-3'>
                    <li><span data-toggle='sidebar' class='nav-link nav-link-lg'><i class='fa fa-bars'></i></span></li>
                    <li><span data-toggle='search' class='nav-link nav-link-lg d-sm-none'><i class='fa fa-search'></i></span></li>
                </ul>
                <div class='search-element'>
                    <input id='svalue' onkeyup='search()' class='form-control' type='search' placeholder='Search' aria-label='Search' data-width='250'>
                    <button onclick='closech()' class='btn' type='submit'><i class='fa fa-close'></i></button>
                    <div class='search-backdrop'></div>
                    
                </div>
            </div>
            
            <ul class='navbar-nav navbar-right'>
                <li class='dropdown'>
                    <a href='#' data-toggle='dropdown' class='nav-link dropdown-toggle nav-link-lg nav-link-user'>
                    <img alt='image' src='images/user.png' class='rounded-circle mr-1'>
                    <div class='d-sm-none d-lg-inline-block'>Admin</div></a>
                    <div class='dropdown-menu dropdown-menu-right'>
                        <div class='dropdown-title'>Logged in</div>
                        <a href='profile.php' class='dropdown-item has-icon'><i class='fa fa-user'></i> Profile</a>
                        <a onclick='logout(".'"'.$_SESSION['key'].'"'.")' class='dropdown-item text-danger'><i class='fa fa-sign-out-alt'></i>&nbsp;&nbsp;Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div class='main-sidebar sidebar-style-2'>
            <aside id='sidebar-wrapper'>
                <div class='sidebar-brand'>
                    <a href='index.php'>Admin Panel</a>
                </div>
                
                <ul class='sidebar-menu'>
                    <li class='menu-header'>Dashboard</li>
                    <li class='dropdown'>
                        <a href='index.php' class='nav-link'><i class='fa fa-home'></i><span>Home</span></a>
                    </li>
                    <li class='menu-header'>Users Manage</li>
                    <li class='dropdown'>
                        <a href='users.php' class='nav-link'><i class='fa fa-users'></i><span>Users</span></a>
                    </li>
                    <li class='menu-header'>Video Manager</li>
                    <li class='dropdown'>
                        <a href='#' class='nav-link has-dropdown'><i class='fa fa-play-circle'></i><span>Videos</span></a>
                        <ul class='dropdown-menu'>
                            <li><a class='nav-link' href='add.php'>Add</a></li>
                            <li><a class='nav-link' href='user-videos.php'>User videos</a></li>
                            <li><a class='nav-link' href='admin-videos.php'>Admin videos</a></li>
                        </ul>
                    </li>
                    <li class='menu-header'>Site Editor</li>
                    <li class='dropdown'>
                        <a href='#' class='nav-link has-dropdown'><i class='fa fa-cogs'></i><span>Site Edit</span></a>
                        <ul class='dropdown-menu'>
                            <li><a class='nav-link' href='point.php'>Manage Point</a></li>
                            <li><a class='nav-link' href='time.php'>Manage Times</a></li>
                            <li><a class='nav-link' href='banners.php'>Manage Banners</a></li>
                        </ul>
                    </li>
                </ul>
                <div class='mt-4 mb-4 p-3 hide-sidebar-mini'>
                    <a href='https://helascript.com' class='btn btn-primary btn-lg btn-block btn-icon-split'><i class='fa fa-rocket'></i> Welcome</a>
                </div>
            </aside>
        </div>
    </div>
</div>
<span id='out'></span>
<script>
function logout(key){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            if(this.responseText === 'true'){
                location.href='login.php';
            }else{
                alert('failed');
            }
        }else{
            return;
        }
    };
    xhttp.open('POST', 'php/logout.php', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('key='+key);
}
</script>
";
}else{
    header("Locaion:404.php");
}
?>