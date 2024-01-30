<?php
session_start();
require_once("php/conn.php");
$time = strtotime(date("F j, Y, g:i:s a"));
$del  = $time - 21600;
$sql  = "DELETE FROM visit WHERE dtime<$del";
$conn->query($sql);
if(isset($_SESSION["user"])){
if(isset($_GET["web"])){
    $web = $conn->real_escape_string($_GET["web"]);
    $sql = "SELECT web FROM web WHERE web='{$web}'";
    $res = $conn->query($sql);
    if($res->num_rows>0){
        echo "<html>
    <head>
        <title>Web Site visit</title>

    <style>
        button{
            background:black;
            color:white;
            border: none;
            border-radius: 10%;
            font-size:40px;
            padding:10px;
            position:fixed;
        }
    </style>
    </head>
    <body>
        <button id='time'>time</button>
        <iframe src='{$web}'
            width=100% style='height:100vh' marginwidth='0' marginheight='0' align='top' scrolling='Yes' frameborder='0' hspace='0'
            vspace='0'frameborder='0'>
        </iframe>    
    </body>
</html>";
    }else{
        echo "<html>
    <head>
        <title>Iframe</title>

    <style>
        button{
            background:black;
            color:white;
            border: none;
            border-radius: 10%;
            font-size:40px;
            padding:10px;
            position:fixed;
        }
    </style>
    </head>
    <body>
        <button id='time'>time</button>
        <iframe src='https://trafforyou.com'
            width=100% style='height:100vh' marginwidth='0' marginheight='0' align='top' scrolling='Yes' frameborder='0' hspace='0'
            vspace='0'frameborder='0'>
        </iframe>
    </body>
</html>";
    }
}}
?>

<script>
function time(){
    var timeleft = 30;
    var downloadTimer = setInterval(function(){
    if(timeleft < 1){
        clearInterval(downloadTimer);
    } else {
        timeleft -= 1;
        document.getElementById("time").innerHTML=timeleft;
    }
    }, 1000);
}
function ab(){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            time();
            setTimeout(b, 30000);
        }else{
            return;
        }
    };
    xhttp.open('POST',"php/web.php", true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send("a=a");
}
function b(){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            alert(this.responseText);
        }else{
            return;
        }
    };
    xhttp.open('POST',"php/web.php", true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('web=<?php echo $web; ?>');
}
ab()
</script>