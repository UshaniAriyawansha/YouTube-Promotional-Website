<?php
require_once("php/func/key.php");
if(empty($_SESSION['user'])){
    header("Location:login.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>TraffForYou | Admin Watch Time Videos</title>
    <meta content="" name="keywords">
    <meta content="" name="author">
    <meta content="" name="description">
    <?php require_once("include/head.php"); ?>
    <style>
        .blur{
            opacity:0.5;
        }
.c{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: #555;
  color: white;
  font-size: 16px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
}

.c:hover {
  background-color: #fc0000;
  color: white;
}
.banner{
    margin-top: 90px;
}

@media screen and (max-width: 992px) {
  .banner{
    margin-top: 0px;
}

}


@media screen and (max-width: 600px) {
  .banner{
    margin-top: 0px;
}

}
    </style>
</head>

<body>
    <div id="wrapper">
        <?php require_once("include/header.php"); ?>
<br><br>
<div class='banner'>
                    <div class='' data-scroll-speed='4'>
                            <div class='row'>
<?php
$path = "include/banners/view_video/";
$imgs = scandir($path);
$imgs = array_diff($imgs,array(".",".."));
$imgs = array_values($imgs);
for($i=0;$i<count($imgs);$i++){
    $img = $imgs[$i];
    echo "
                                    <img src='{$path}{$img}' width='100%' height='200px'>";
}
?>

                                </div>
                            </div>
                    </div>
            </div class='baner'>
<section>
    <div class="container">
        <div class="row" id="getv">
        </div>
    </div>
</section>
			<section class="pt60 pb60 bg-color-2 text-light">
				<div class="container">
					<div class="row align-items-center">
					</div>
				</div>
			</section>

        </div>
        <?php echo file_get_contents("include/footer.php"); ?>
		<div id="preloader">
                <div class="spinner">
                    <div class="bounce1"></div>
                    <div class="bounce2"></div>
                    <div class="bounce3"></div>
                </div>
            </div>
        </div>
<input type="hidden" id="a" value="">
<script>
function req(){
    var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            for(var i=0;i<data.length;i++){
                if(data[i].view !== 0){
                    cls = "img-fluid blur";
                    hrf = "javascript:void(0)";
                }else{
                    cls = "img-fluid";
                    hrf = "video.php?n=4&code="+data[i].vcode;
                }
                var d =  "<div class='col-lg-4 mb30 '><a href='"+hrf+"'><img class='"+cls+"' src='https://img.youtube.com/vi/"+data[i].link+"/maxresdefault.jpg'><button class='btn c'><i class='fas fa-play'></i></button>            </a></div>";
                document.getElementById("getv").innerHTML += d;
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
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/easing.js"></script>
        <script src="js/owl.carousel.js"></script>
        <script src="js/validation.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/enquire.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.plugin.js"></script>
        <script src="js/typed.js"></script>
		<script src="js/jquery.countTo.js"></script>
        <script src="js/jquery.countdown.js"></script>
        <script src="js/designesia.js"></script>
</body>
</html>