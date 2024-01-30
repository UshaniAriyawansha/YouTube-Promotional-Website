<?php
require_once("php/func/key.php");
$code = "";
if(isset($_GET["key"])){
    $key = trim(htmlspecialchars($_GET['key']));
}else{
    header("Location:index.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>TraffForYou | Login</title>
    <meta content="" name="keywords">
    <meta content="" name="author">
    <meta content="" name="description">
    <?php require_once("include/head.php"); ?>
    <style>
        #true,#false{
            display:none;
        }
    </style>
</head>

<body>
    <div id="wrapper">
        <div class="no-bottom no-top" id="content">
            <!-- section begin -->
            <section id="subheader" data-bgimage="url(images/background/5.png) bottom">
                    <div class="center-y relative text-center" data-scroll-speed="4">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 offset-md-2">
                                    <div class="row" id='form_subscribe'>
                                <div class="col-md-12 text-center">
									<h1>Welcome Back !</h1>
									
                                </div>
                                <div class="clearfix"></div>
                            </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>
            <!-- section close -->
            

            <section class="no-top" data-bgimage="url(images/background/3.png) top">
                <div class="container" id="topp">
					<div class="row">
						<div class="col-md-6 offset-md-3">
							<div class="form-border">

                            <!-- Alerts -->
                                <div class="alert alert-success" role="alert" id="true"></div>
                                <div class="alert alert-danger" role="alert" id="false"></div>
                            <!-- Alerts -->
                                    <h3>Reset your password</h3>

                                            <div class="field-set">
                                                <label>New Password</label>
                                                <input type='text' id='pass' class="form-control" placeholder="">
                                            </div>


                                            <div class="field-set">
                                                <label>Re-Enter Password</label>
                                                <input type='password' id='pass2' class="form-control" placeholder="">
                                            </div>

                                    <div id='submit' class="pull-left pt-2">
                                        <input type='submit' value='Reset' onclick="reset()" class="btn btn-custom color-2">
                                    </div>
									
                                </div>
						</div>
                    </div>
				</div>
            </section>

        </div>
		<div id="preloader">
                <div class="spinner">
                    <div class="bounce1"></div>
                    <div class="bounce2"></div>
                    <div class="bounce3"></div>
                </div>
            </div>
        </div>		
		<input type="hidden" id="code" value="<?php echo $key; ?>">
		<input type="hidden" id="key" value="<?php echo $_SESSION['key']; ?>">
<script>
function reset(){
    var pass2 = document.getElementById("pass2").value;
    var pass = document.getElementById("pass").value;
    var code = document.getElementById("code").value;
    var key  = document.getElementById("key").value;
    $.ajax({
        url: "php/resetpass.php",
        method: "POST",
        data: {code:code,pass:pass,pass2:pass2,key:key},
        datatype: "text",
        success: function (html) {
            const res = JSON.parse(html);
            if(res.msg==="true"){
                document.getElementById("true").style.display = "block";
                document.getElementById("false").style.display = "none";
                document.getElementById("true").innerHTML = res.val;
                location.href="account.php";
            }else{
                document.getElementById("false").style.display = "block";
                document.getElementById("true").style.display = "none";
                document.getElementById("false").innerHTML = res.val;
                document.getElementById("topp").scrollIntoView();
            }
        },
    });
}
</script>
        <!-- Javascript Files
    ================================================== -->
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