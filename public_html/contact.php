<?php
require_once("php/func/key.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>TraffForYou | Contact </title>
    <meta content="" name="keywords">
    <meta content="" name="author">
    <meta content="" name="description">
    <?php require_once("include/head.php"); ?>
    <style>
        #true,#false{
            display:none;
        }
        
    .whatsapp{
        color: #2af756;
        }

    .whatsapp:hover{
        color: #27bc51;
        }
    </style>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
</head>

<body>
    <div id="wrapper">
        <?php require_once("include/header.php"); ?>
        <!-- header close -->

        <!-- section begin -->
            <section id="subheader" data-bgimage="url(images/background/5.png) bottom">
                    <div class="center-y relative text-center" data-scroll-speed="4">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 offset-md-2">
                                    <div class="row" name="myForm">
                                <div class="col-md-12 text-center">
                                    <h1>Contact Us</h1>
                                    <p> Send Us Your Questions</p>
                                </div>
                            </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>
            <!-- section close -->
            
            <div class="text-center">
            <a href="https://wa.me/message/7ECG4MYGSMTYA1" target="_blank"><img src="qrcode.png" width="200px" height="200px"></a>
            <div>
                <p>Contact Us Via <a href="https://wa.me/message/7ECG4MYGSMTYA1" target="_blank" class="whatsapp">WhatsApp  </a><i class="fab fa-whatsapp whatsapp"></i></p>
            </div>
        </div>

            
            

                 <section id="topp">
                    <div class="container">
                        <!-- Alerts -->
                                <div class="alert alert-success" role="alert" id="true"></div>
                                <div class="alert alert-danger" role="alert" id="false"></div>
                            <!-- Alerts -->
                    <div class="col-lg-4"></div>
                    <div>
                        <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Name</label>
      <input type="text" class="form-control" id="name" placeholder="Name">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Email Address</label>
      <input type="mail" class="form-control" id="mail" placeholder="E-Mail">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Subject</label>
    <input type="text" class="form-control" id="sub" placeholder="Subject">
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Message</label>
    <textarea class="form-control" id="msg" rows="3"></textarea>
  </div>
  </div>
  <div class="text-center"><button type="submit" onclick="send()" class="btn btn-custom">Send</button></div>
  </div>
    </div>
</div> 
                 </section>
<?php require_once("include/footer.php");
echo "<input type='hidden' id='key' value='{$_SESSION['key']}'>";
?>
		<div id="preloader">
                <div class="spinner">
                    <div class="bounce1"></div>
                    <div class="bounce2"></div>
                    <div class="bounce3"></div>
                </div>
            </div>
        </div>		
		

<script>
function send(){
    var name = document.getElementById("name").value;
    var mail = document.getElementById("mail").value;
    var msg = document.getElementById("msg").value;
    var key = document.getElementById("key").value;
    var sub = document.getElementById("sub").value;
    $.ajax({
        url: "php/send.php",
        method: "POST",
        data: {name:name,mail:mail,key:key,msg:msg,sub:sub},
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