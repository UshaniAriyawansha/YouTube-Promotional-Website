<?php
require_once("php/func/key.php");
if(isset($_SESSION['user'])){
    header("Location:account.php");
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
        <?php require_once("include/header.php"); ?>
        <div class="no-bottom no-top" id="content">
            <div id="top"></div>
            
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
							<form action="javascript:void(0)" class="form-border">

                            <!-- Alerts -->
                                <div class="alert alert-success" role="alert" id="true"></div>
                                <div class="alert alert-danger" role="alert" id="false"></div>
                            <!-- Alerts -->
                                    <h3>Login to your account</h3>

                                            <div class="field-set">
                                                <label>Email or Username</label>
                                                <input type='text' id='user' class="form-control" placeholder="">
                                            </div>


                                            <div class="field-set">
                                                <label>Password</label>
                                                <input type='password' id='pass' class="form-control" placeholder="">
                                                <a href="foget.php">Forgotten pasward?</a>
                                            </div>

                                    <div id='submit' class="pull-left pt-2">
                                        <input type='submit' value='Login' onclick="login()" class="btn btn-custom color-2">
                                        <p class="pt-2">Don't have an account? <a href="register.php">Register now.</a></p>
            
                                    </div>
									
                                </form>
						</div>
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
		


<script>
function login(){
    var user = document.getElementById("user").value;
    var pass = document.getElementById("pass").value;
    $.ajax({
        url: "php/login.php",
        method: "POST",
        data: {pass:pass,user:user},
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