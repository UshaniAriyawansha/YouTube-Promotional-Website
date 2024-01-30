<?php
session_start();
$path = "";
$type = "";
$code = "";
$link = "";
if(isset($_SESSION["user"])){
if(isset($_SESSION["vcode"])){
    unset($_SESSION["vcode"]);
    unset($_SESSION["vkey"]);
    unset($_SESSION["vtime"]);
    unset($_SESSION["video"]);
}
if(isset($_GET["n"])){
if(isset($_GET["code"])){
    require "php/conn.php";
    $type = trim(htmlspecialchars($_GET["n"]));
    if($type == "1"){
        $col = "vv";
        $path = "view_video.php";
    }else if($type == "2"){
        $col = "wv";
        $path = "watch_video.php";
    }else if($type == "3"){
        $col = "avv";
        $path = "admin_view_video.php";
    }else if($type == "4"){
        $col = "awv";
        $path = "admin_watch_video.php";
    }else{
        $path = "index.php";
    }
    $sql = "SELECT $col FROM point";
    $res = $conn->query($sql);
    $row = $res->fetch_assoc();
    $vp  = $row[$col];
    $vv   = file_get_contents("include/time/{$type}.txt");
    $code = trim(htmlspecialchars($_GET["code"]));
    if(isset($_SESSION["videos$type"])){
        $msg = "";
        //if link video
        if(strlen($code)==11){
            //valid user and isset
            $sql = ("SELECT user,ID FROM video WHERE type=$type and user != '{$_SESSION['user']}' and link='$code'");
            $res = $conn->query($sql);
            if($res->num_rows>0){
                $row = $res->fetch_assoc();
                //check already viewed
                $sql = "SELECT ID FROM view WHERE video='$code' and user='{$_SESSION['user']}'";
                $r   = $conn->query($sql);
                if($r->num_rows==0){
                    //check owner has points
                    $sql = "SELECT point FROM user WHERE user='{$row['user']}'";
                    $r   = $conn->query($sql);
                    if($r->num_rows>0){
                        $points = $r->fetch_assoc();
                        
                        if($points["point"]>$vp){
                            //check already in 
                            $c = array();
                            for($i=0;$i<count($_SESSION["videos$type"]);$i++){
                            $_SESSION["videos$type"] = array_values($_SESSION["videos$type"]);
                            if($_SESSION["videos$type"][$i]["id"]==$row["ID"]){
                                $_SESSION["videos$type"][$i]["vcode"] = $code;
                                array_push($c,1);
                            }
                        }
                        
                           if(count($c)==0){
                               array_push($_SESSION["videos$type"],array("id"=>$row["ID"], "user"=>$row["user"], "link"=>$code, "vcode"=>$code, "view"=>0));
                           }
                        }else{
                            echo "<script>alert(`This video owner's point balance is low`);location.href='$path';</script>";
                        }
                    }else{
                        $msg = "No owner found";
                    }
                }else{
                    $msg = "Already viewed";
                }
            }else{
                $msg = "note:You can't play your videos. It mean this is your video or this video not in our database";
            }
        }
        
        
        for($i=0;$i<count($_SESSION["videos$type"]);$i++){
            if($_SESSION["videos$type"][$i]["vcode"]==$code){
                $link = $_SESSION["videos$type"][$i]["link"];
                break;
            }
        }
    }
}}}else{
    header("Location:login.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Play Video</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Bootstrap-4---Full-Video-Background.css">
    <link rel="stylesheet" href="assets/css/Full-Screen-HTML5-Video-Background-v1.css">
    <link rel="stylesheet" href="assets/css/Responsive-YouTube-Video-Section-Dark-Centered.css">
    <link rel="stylesheet" href="assets/css/styles.css">



<style type="text/css">
  
  body{
    background-color: black;
  }.msg{
      text-align:center;
      margin:0 auto;
      font-weight:bold;
      color:black;
  }#m{
      color:red;
  }
</style>
</head>

<body>


  <div class="video-background-holder">
    <div class="d-flex h-100 text-center align-items-center">
      <div class="w-100 text-white">
        <div class="card">
         <div class="card-header">
          <div class="text-a">
            <a href="<?php echo $path ?>" class="btn btn-outline-danger" id="timer">Go Back</a><br>
            <span class="msg" id="msg"><?php echo $msg ?></span><br>
            <span class="msg" id="m">Do Not Pause</span>
          </div>
         </div>
         <div class="card-body" width="100%" id="video">
         </div>
        </div>
        
      </div>
    </div>
  </div>
</div>
<input type="hidden" id="a" value="0">
<input type="hidden" id="cd" value="<?php echo (int)$vv + 2; ?>">
<input type="hidden" id="vcode" value="<?php echo $code; ?>">
<script>

function a(vcode){
    $.ajax({
        url: "php/get_videos.php",
        method: "POST",
        data: {vcode:vcode,type:<?php echo $type; ?>},
        datatype: "text",
        success: function (html) {
            const data = JSON.parse(html);
            document.getElementById("msg").innerHTML = "Getting point ...";
            if(data.msg==="true"){
                
                if(data.key===0){
                    time();
                }
                document.getElementById("vcode").value = data.val;
                vcode = data.val;
                if(data.val !== "Success"){
                    if(document.getElementById("a").value !== "1"){
                        document.getElementById("cd").value=data.time;
                        setTimeout(a, 5000, vcode);
                    }
                }else{
                    document.getElementById("msg").innerHTML = " point aded.";
                    document.getElementById("m").innerHTML = "";
                }
                
            }else{
                alert(data.val);
            }
            
        },
    });
}
function time(){
    var timeleft = parseInt(document.getElementById("cd").value);
        var downloadTimer = setInterval(function(){
            var a = document.getElementById("a").value;
            if(a !== "1"){
            if(timeleft < 0){
                clearInterval(downloadTimer);
                document.getElementById("timer").innerHTML = "Go Back";
            } else {
                document.getElementById("timer").innerHTML = timeleft;
                document.getElementById("cd").value = timeleft;
            }
            timeleft = parseInt(document.getElementById("cd").value) - 1;
            
            }
}, 1000);
}
function req(){
    document.getElementById("a").value = "1";
    setTimeout(function(){ document.getElementById("msg").innerHTML = "Can not get points"; }, 5000);
    document.getElementById("video").remove();
    document.getElementById("timer").href="<?php echo $path; ?>";
    document.getElementById("timer").innerHTML = "Go Back";
    document.getElementById("m").innerHTML = "Paused";
}
</script>

<script id='youtube-tracking-script'>
    var youtubeVideoId = '<?php echo $link; ?>';
    var tag = document.createElement('script');
    tag.src = 'https://www.youtube.com/iframe_api';
    var firstScriptTag = document.getElementById('youtube-tracking-script');
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
    var player;
    var w = document.getElementById("video").offsetWidth;
    function onYouTubeIframeAPIReady(){
        player = new YT.Player('video', {
            width:w,
            videoId: youtubeVideoId,
            events: {
                'onStateChange': onPlayerStateChange
            }
        });
     }
    function onPlayerStateChange(event){
        if (event.data == YT.PlayerState.PLAYING) {
            a('<?php echo $code; ?>')
            mixpanel.track('Play Video Clicked',
                {
                    'youtube_video_id': youtubeVideoId
                });
        }
        else if(event.data == YT.PlayerState.PAUSED) {
            req();
            myWindow.close();
            mixpanel.track('Video Paused',
                {
                    'youtube_video_id': youtubeVideoId
                });
        }
        else if(event.data == YT.PlayerState.ENDED) {
            mixpanel.track('Video ended',
                {
                    'youtube_video_id': youtubeVideoId
                });
        }
    }
</script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script>
        if(!window.location.href.includes("newpath")){
            window.location = window.location.href+"&newpath";
        }
    </script>
    <script>
function req(){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            for(var i=0;i<data.length;i++){
                
            }
        }else{
            return;
        }
    };
    xhttp.open('POST',"php/get_videos.php", true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send("type=4");
}
req();
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>

</html>