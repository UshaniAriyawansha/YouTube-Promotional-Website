<?php
$in1  = array();
$in   = array();
$err1 = array();
$err  = array();
require_once("{$path}valid.php");
function input1($name,$method,$echo){
    global $in1;
    global $err1;
    if($method == 1){
        if(isset($_POST[$name])){
            array_push($in1,1);
            return valid($_POST[$name]);
        }else{
            array_push($err1,"Empty {$echo}");
            return false;
        }
    }else if($method == 0){
        if(isset($_GET[$name])){
            array_push($in1,1);
            return valid($_GET[$name]);
        }else{
            array_push($err1,"Empty {$echo}");
            return false;
        }
    }else{
        echo "input function error";
    }
}

function input($name,$method,$echo,$min,$max,$type="s",$error="l"){
    global $in;
    global $er;
    global $err;
    if($method == 1){
        if(isset($_POST[$name])){
            if(len($_POST[$name],$echo,$min,$max,$error)==true){
                if($type=="s"){
                    array_push($in,1);
                    return valid($_POST[$name]);
                }else{
                    if(is_numeric($_POST[$name])){
                        array_push($in,1);
                        return ($_POST[$name]);
                    }else{
                        array_push($err,"Only numbers can ue for $echo");
                        return false;
                    }
                }
            }else{
                array_push($err,$er[0]);
                return false;
            }
        }else{
            array_push($err,"Empty {$echo}");
            return false;
        }
    }else if($method == 0){
        if(isset($_GET[$name])){
            if(len($_GET[$name],$echo,$min,$max,$error)==true){
                if($type=="s"){
                    array_push($in,1);
                    return valid($_POST[$name]);
                }else{
                    if(is_numeric($_POST[$name])){
                        array_push($in,1);
                        return ($_POST[$name]);
                    }else{
                        array_push($err,"Only numbers can ue for $echo");
                        return false;
                    }
                }
            }else{
                array_push($err,$er[0]);
                return false;
            }
        }else{
            array_push($err,"Empty {$echo}");
            return false;
        }
    }else{
        array_push($err,"input function error");
    }
}
?>