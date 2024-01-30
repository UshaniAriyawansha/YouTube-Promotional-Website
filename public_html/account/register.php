<?php
$path = "./func/";
require_once("{$path}csrf.php");
require_once("conn.php");
require_once("{$path}/delete.php");
if(isset($key)){
    // user,fname,lname,pass,confpass,mail,ref
    require_once("{$path}input.php");
    $name  = input("name",1," Name",3,40);
    $mail  = input("mail",1,"E-Mail",4,90);
    $user  = input("user",1,"User Name",3,20);
    $gend  = input("gend",1,"gender",4,6,"s","w");
    $pass  = input("pass",1,"Password",6,50);
    $cpass = input("confpass",1,"Confirm Password",6,50);
    $ref   = input("ref",1,"Referer",0,8);
    if(count($in)==7){
        if($gend == "Male" or $gend == "Female"){
        if(mailvalid($mail)==true){
            if($pass==$cpass){
                $pass = md5(sha1(md5($pass)));
                //check already exists
                $sql = "SELECT code FROM user WHERE mail='{$mail}'";
                $res = $conn->query($sql);
                if($res->num_rows>0){
                    $data=$res->fetch_assoc();
                    if(strlen($data['code']>15)){
                        echo json_encode(array("msg"=>"true","val"=>"Please Check Your Mailbox to Confirm Your Account"));
                    }else{
                        echo json_encode(array("msg"=>"false","val"=>"This Email Address is Already Registered"));
                    }
                }else{
                    
                    $sql = "SELECT ID FROM user WHERE user='{$user}'";
                    $res = $conn->query($sql);
                    if($res->num_rows>0){
                        echo json_encode(array("msg"=>"false","val"=>"This Username Already Taken."));
                    }else{
                        if($ref!=""){
                            $sql = "SELECT refcode FROM user WHERE refcode='{$ref}'";
                            $res = $conn->query($sql);
                            if($res->num_rows>0){
                                $coin = 1;
                            }else{
                                echo json_encode(array("msg"=>"false","val"=>"Refferer Not Found"));
                            }
                        }else{
                            $coin = 0;
                        }
                        if(isset($coin)){
                            $sql     = "SELECT reg,ref,refa FROM point";
                            $rcoin   = 0;
                            $rfcoin  = 0;
                            $res     = $conn->query($sql);
                            if($res->num_rows>0){
                                $data = $res->fetch_assoc();
                                $rcoin = $data['reg'];
                                if($coin==1){
                                    $rfcoin  = $data['ref'];
                                    $rfacoin = $data['refa'];
                                }
                            }
                            require_once("{$path}code.php");
                            $ucode = code(30,'user','`code`');
                            $rcode = code(8,'user','refcode');
                            $acoin  = $rcoin + $rfcoin;
                            $date = strtotime(date("F j, Y, g:i a"));
                            $sql   = "INSERT INTO `user`(`ID`, `fname`, `lname`, `mail`, `user`, `pass`, `code`, `refcode`, `stat`, `dtime`, `point`,`status`) VALUES (NULL,'{$name}','{$gend}','{$mail}','{$user}','{$pass}','{$ucode}','{$rcode}',0,'{$date}',$acoin,0)";
                            if($conn->query($sql)==true){
                                //mail
                                $subject = "Confirm Registation";
                                $msg = "https://trafforyou.com/verify.php?key={$ucode}&ref=$ref";
                                $msg = "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml' xmlns:o='urn:schemas-microsoft-com:office:office' style='font-family:Montserrat, sans-serif'>
 <head> 
  <meta charset='UTF-8'> 
  <meta content='width=device-width, initial-scale=1' name='viewport'> 
  <meta name='x-apple-disable-message-reformatting'> 
  <meta http-equiv='X-UA-Compatible' content='IE=edge'> 
  <meta content='telephone=no' name='format-detection'> 
  <title>Traffofyou</title> 
  <link href='https://fonts.googleapis.com/css2?family=Montserrat&display=swap' rel='stylesheet'> 
  <!--<![endif]--> 
  <style type='text/css'>
#outlook a {
	padding:0;
}
.es-button {
	mso-style-priority:100!important;
	text-decoration:none!important;
}
a[x-apple-data-detectors] {
	color:inherit!important;
	text-decoration:none!important;
	font-size:inherit!important;
	font-family:inherit!important;
	font-weight:inherit!important;
	line-height:inherit!important;
}
.es-desk-hidden {
	display:none;
	float:left;
	overflow:hidden;
	width:0;
	max-height:0;
	line-height:0;
	mso-hide:all;
}
[data-ogsb] .es-button {
	border-width:0!important;
	padding:10px 30px 10px 30px!important;
}
@media only screen and (max-width:600px) {p, ul li, ol li, a { line-height:150%!important } h1, h2, h3, h1 a, h2 a, h3 a { line-height:120% } h1 { font-size:42px!important; text-align:center } h2 { font-size:26px!important; text-align:center } h3 { font-size:20px!important; text-align:center } .es-header-body h1 a, .es-content-body h1 a, .es-footer-body h1 a { font-size:42px!important } .es-header-body h2 a, .es-content-body h2 a, .es-footer-body h2 a { font-size:26px!important } .es-header-body h3 a, .es-content-body h3 a, .es-footer-body h3 a { font-size:20px!important } .es-menu td a { font-size:14px!important } .es-header-body p, .es-header-body ul li, .es-header-body ol li, .es-header-body a { font-size:16px!important } .es-content-body p, .es-content-body ul li, .es-content-body ol li, .es-content-body a { font-size:16px!important } .es-footer-body p, .es-footer-body ul li, .es-footer-body ol li, .es-footer-body a { font-size:16px!important } .es-infoblock p, .es-infoblock ul li, .es-infoblock ol li, .es-infoblock a { font-size:12px!important } *[class='gmail-fix'] { display:none!important } .es-m-txt-c, .es-m-txt-c h1, .es-m-txt-c h2, .es-m-txt-c h3 { text-align:center!important } .es-m-txt-r, .es-m-txt-r h1, .es-m-txt-r h2, .es-m-txt-r h3 { text-align:right!important } .es-m-txt-l, .es-m-txt-l h1, .es-m-txt-l h2, .es-m-txt-l h3 { text-align:left!important } .es-m-txt-r img, .es-m-txt-c img, .es-m-txt-l img { display:inline!important } .es-button-border { display:block!important } a.es-button, button.es-button { font-size:16px!important; display:block!important; border-right-width:0px!important; border-left-width:0px!important; border-bottom-width:15px!important; border-top-width:15px!important } .es-adaptive table, .es-left, .es-right { width:100%!important } .es-content table, .es-header table, .es-footer table, .es-content, .es-footer, .es-header { width:100%!important; max-width:600px!important } .es-adapt-td { display:block!important; width:100%!important } .adapt-img { width:100%!important; height:auto!important } .es-m-p0 { padding:0!important } .es-m-p0r { padding-right:0!important } .es-m-p0l { padding-left:0!important } .es-m-p0t { padding-top:0!important } .es-m-p0b { padding-bottom:0!important } .es-m-p20b { padding-bottom:20px!important } .es-mobile-hidden, .es-hidden { display:none!important } tr.es-desk-hidden, td.es-desk-hidden, table.es-desk-hidden { width:auto!important; overflow:visible!important; float:none!important; max-height:inherit!important; line-height:inherit!important } tr.es-desk-hidden { display:table-row!important } table.es-desk-hidden { display:table!important } td.es-desk-menu-hidden { display:table-cell!important } .es-menu td { width:1%!important } table.es-table-not-adapt, .esd-block-html table { width:auto!important } table.es-social { display:inline-block!important } table.es-social td { display:inline-block!important } .es-m-p5 { padding:5px!important } .es-m-p5t { padding-top:5px!important } .es-m-p5b { padding-bottom:5px!important } .es-m-p5r { padding-right:5px!important } .es-m-p5l { padding-left:5px!important } .es-m-p10 { padding:10px!important } .es-m-p10t { padding-top:10px!important } .es-m-p10b { padding-bottom:10px!important } .es-m-p10r { padding-right:10px!important } .es-m-p10l { padding-left:10px!important } .es-m-p15 { padding:15px!important } .es-m-p15t { padding-top:15px!important } .es-m-p15b { padding-bottom:15px!important } .es-m-p15r { padding-right:15px!important } .es-m-p15l { padding-left:15px!important } .es-m-p20 { padding:20px!important } .es-m-p20t { padding-top:20px!important } .es-m-p20r { padding-right:20px!important } .es-m-p20l { padding-left:20px!important } .es-m-p25 { padding:25px!important } .es-m-p25t { padding-top:25px!important } .es-m-p25b { padding-bottom:25px!important } .es-m-p25r { padding-right:25px!important } .es-m-p25l { padding-left:25px!important } .es-m-p30 { padding:30px!important } .es-m-p30t { padding-top:30px!important } .es-m-p30b { padding-bottom:30px!important } .es-m-p30r { padding-right:30px!important } .es-m-p30l { padding-left:30px!important } .es-m-p35 { padding:35px!important } .es-m-p35t { padding-top:35px!important } .es-m-p35b { padding-bottom:35px!important } .es-m-p35r { padding-right:35px!important } .es-m-p35l { padding-left:35px!important } .es-m-p40 { padding:40px!important } .es-m-p40t { padding-top:40px!important } .es-m-p40b { padding-bottom:40px!important } .es-m-p40r { padding-right:40px!important } .es-m-p40l { padding-left:40px!important } }
</style> 
 </head> 
 <body style='width:100%;font-family:Montserrat, sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;padding:0;Margin:0'> 
  <div class='es-wrapper-color' style='background-color:#FFFFFF'> 
   <table class='es-wrapper' width='100%' cellspacing='0' cellpadding='0' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;padding:0;Margin:0;width:100%;height:100%;background-repeat:repeat;background-position:center top;background-color:#FFFFFF'> 
     <tr> 
      <td valign='top' style='padding:0;Margin:0'> 
       <table cellpadding='0' cellspacing='0' class='es-content' align='center' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%'> 
         <tr> 
          <td align='center' style='padding:0;Margin:0'> 
           <table bgcolor='#ffffff' class='es-content-body' align='center' cellpadding='0' cellspacing='0' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#FFFFFF;width:700px'> 
             <tr> 
              <td align='left' style='Margin:0;padding-bottom:20px;padding-left:20px;padding-right:20px;padding-top:40px'> 
               <table cellpadding='0' cellspacing='0' width='100%' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px'> 
                 <tr> 
                  <td align='center' valign='top' style='padding:0;Margin:0;width:660px'> 
                   <table cellpadding='0' cellspacing='0' width='100%' role='presentation' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px'> 
                     <tr> 
                      <td align='center' style='padding:0;Margin:0;font-size:0px'><img src='https://rxedlo.stripocdn.email/content/guids/CABINET_0434fc6b4d1cb089b97d93144716fbba/images/96331631885570431.png' alt style='display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic' width='60'></td> 
                     </tr> 
                     <tr> 
                      <td align='center' style='padding:0;Margin:0'><h2 style='Margin:0;line-height:43px;mso-line-height-rule:exactly;font-family:Montserrat, sans-serif;font-size:36px;font-style:normal;font-weight:normal;color:#384b9e'>Verify your email to finish signing up</h2></td> 
                     </tr> 
                     <tr> 
                      <td align='center' class='es-m-txt-c' style='padding:0;Margin:0;padding-top:10px;padding-bottom:10px;font-size:0'> 
                       <table border='0' width='40%' height='100%' cellpadding='0' cellspacing='0' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;width:40% !important;display:inline-table' role='presentation'> 
                         <tr> 
                          <td style='padding:0;Margin:0;border-bottom:1px solid #cccccc;background:none;height:1px;width:100%;margin:0px'></td> 
                         </tr> 
                       </table></td> 
                     </tr> 
                     <tr> 
                      <td align='center' class='es-m-p0r' style='padding:0;Margin:0;padding-top:5px;padding-bottom:5px;padding-right:40px'><p style='Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:Montserrat, sans-serif;line-height:24px;color:#333333;font-size:16px'></p><p style='Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:Montserrat, sans-serif;line-height:24px;color:#333333;font-size:16px'>Please confirm that <b>Email Address</b>&nbsp;is your email address by clicking on the button below or use this link <strong>{$msg}</strong>&nbsp;within <strong>3 hours</strong>.</p></td> 
                     </tr> 
                     <tr> 
                      <td align='center' class='es-m-txt-c' style='padding:0;Margin:0;padding-top:10px;padding-bottom:10px;font-size:0'> 
                       <table border='0' width='40%' height='100%' cellpadding='0' cellspacing='0' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;width:40% !important;display:inline-table' role='presentation'> 
                         <tr> 
                          <td style='padding:0;Margin:0;border-bottom:1px solid #cccccc;background:none;height:1px;width:100%;margin:0px'></td> 
                         </tr> 
                       </table></td> 
                     </tr> 
                     <tr> 
                      <td align='center' class='es-m-txt-l' style='padding:0;Margin:0;padding-top:10px;padding-bottom:10px'><span class='es-button-border' style='border-style:solid;border-color:#999999;background:#264bb5;border-width:0px;display:inline-block;border-radius:20px;width:auto'><a href='{$msg}' class='es-button' style='mso-style-priority:100 !important;text-decoration:none;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;color:#ffffff;font-size:16px;border-style:solid;border-color:#264bb5;border-width:10px 30px 10px 30px;display:inline-block;background:#264bb5;border-radius:20px;font-family:Montserrat, sans-serif;font-weight:normal;font-style:normal;line-height:19px;width:auto;text-align:center'>Verify my email</a></span></td> 
                     </tr> 
                   </table></td> 
                 </tr> 
               </table></td> 
             </tr> 
           </table></td> 
         </tr> 
       </table> 
       <table cellpadding='0' cellspacing='0' class='es-footer' align='center' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%;background-color:transparent;background-repeat:repeat;background-position:center top'> 
         <tr> 
          <td align='center' style='padding:0;Margin:0'> 
           <table bgcolor='#ffffff' class='es-footer-body' align='center' cellpadding='0' cellspacing='0' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#FFFFFF;width:700px'> 
             <tr> 
              <td align='left' style='padding:0;Margin:0;padding-left:20px;padding-right:20px'> 
               <table cellpadding='0' cellspacing='0' width='100%' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px'> 
                 <tr> 
                  <td align='left' style='padding:0;Margin:0;width:660px'> 
                   <table cellpadding='0' cellspacing='0' width='100%' role='presentation' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px'> 
                     <tr> 
                      <td align='center' style='padding:0;Margin:0;padding-top:10px;padding-bottom:10px;font-size:0'> 
                       <table border='0' width='100%' height='100%' cellpadding='0' cellspacing='0' role='presentation' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px'> 
                         <tr> 
                          <td style='padding:0;Margin:0;border-bottom:1px solid #cccccc;background:none;height:1px;width:100%;margin:0px'></td> 
                         </tr> 
                       </table></td> 
                     </tr> 
                   </table></td> 
                 </tr> 
               </table></td> 
             </tr> 
             <tr> 
              <td align='left' style='padding:20px;Margin:0'> 
               <table cellpadding='0' cellspacing='0' width='100%' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px'> 
                 <tr> 
                  <td align='center' valign='top' style='padding:0;Margin:0;width:660px'> 
                   <table cellpadding='0' cellspacing='0' width='100%' role='presentation' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px'> 
                     <tr> 
                      <td align='center' style='padding:0;Margin:0'><p style='Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:Montserrat, sans-serif;line-height:23px;color:#333333;font-size:15px'>අපගේ වෙබ් අඩවිය භාවිතා කර ඔබගේ YouTube චැනලය සඳහා අවශ්‍ය Views, Watch hours ඔබටම පහසුවෙන් ලබා ගත හැක.ඒ සඳහා අවශ්‍ය උපදෙස් <a target='_blank' style='-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:underline;color:#134F5C;font-size:15px' href='https://trafforyou.com/'>වෙබ් අඩවියේ</a> දක්වා ඇත.</p></td> 
                     </tr> 
                   </table></td> 
                 </tr> 
               </table></td> 
             </tr> 
           </table></td> 
         </tr> 
       </table> 
       <table cellpadding='0' cellspacing='0' class='es-content' align='center' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%'> 
         <tr> 
          <td align='center' style='padding:0;Margin:0'> 
           <table bgcolor='#ffffff' class='es-content-body' align='center' cellpadding='0' cellspacing='0' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#FFFFFF;width:700px'> 
             <tr> 
              <td align='left' style='padding:20px;Margin:0'> 
               <table cellpadding='0' cellspacing='0' width='100%' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px'> 
                 <tr> 
                  <td align='center' valign='top' style='padding:0;Margin:0;width:660px'> 
                   <table cellpadding='0' cellspacing='0' width='100%' role='presentation' style='mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px'> 
                     <tr> 
                      <td align='center' class='es-infoblock made_with' style='padding:0;Margin:0;line-height:0px;font-size:0px;color:#CCCCCC'><a target='_blank' href='https://viewstripo.email/?utm_source=templates&utm_medium=email&utm_campaign=fashion_17&utm_content=finishing_signing_up' style='-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:underline;color:#CCCCCC;font-size:12px'><img src='https://rxedlo.stripocdn.email/content/guids/CABINET_0434fc6b4d1cb089b97d93144716fbba/images/81881631885386333.png' alt width='100' style='display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic'></a></td> 
                     </tr> 
                   </table></td> 
                 </tr> 
               </table></td> 
             </tr> 
           </table></td> 
         </tr> 
       </table></td> 
     </tr> 
   </table> 
  </div>  
 </body>
</html>";
                                $email = $mail;
                                include("mail.php");
                                echo json_encode(array("msg"=>"true","val"=>"Successfully registered. Please Check Your Mailbox to Confirm Your Account."));
                            }else{
                                echo json_encode(array("msg"=>"false","val"=>"Registration Failed Please Try Again Later"));
                            }
                        }
                    }
                }
            }else{
                echo json_encode(array("msg"=>"false","val"=>"Password and Confirm Password Not Match"));
            }
        }
        }else{
            echo json_encode(array("msg"=>"false","val"=>"Wrong Gender"));
        }
    }else{
        echo json_encode(array("msg"=>"false","val"=>$err[0]));
    }
}else{
    echo json_encode(array("msg"=>"false","val"=>"Refresh Browser And Try Again"));
}
?>