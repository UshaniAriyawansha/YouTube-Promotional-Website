<?php
session_start();
if(isset($_SESSION["user"])){
if(isset($_POST["type"])){
if($_POST["type"] == "1" or $_POST["type"] == "2" or $_POST["type"] == "3" or $_POST["type"] == "4"){
    $time = strtotime(date("F j, Y, g:i:s a"));
    $type = $_POST["type"];
    require_once("conn.php");
    require_once("func/valid.php");
    require_once("func/code.php");
    $del  = (int)file_get_contents("../include/time/back.txt");
    $del  = $time - $del;
    $sql  = "DELETE FROM view WHERE dtime<$del";
    $conn->query($sql);
    if($type=="1"){
        $col = "vv";
    }else if($type=="2"){
        $col = "wv";
    }else if($type=="3"){
        $col = "avv";
    }else if($type=="4"){
        $col = "awv";
    }
    $sql = "SELECT $col FROM point";
    $res = $conn->query($sql);
    $row = $res->fetch_assoc();
    $vp  = $row[$col];
    if(isset($_POST['vcode']) and $_POST["vcode"] !== ""){
        if(isset($_SESSION['vcode'])){
            if($_SESSION['vcode']==$_POST['vcode']){
                $_SESSION["vkey"] += 1;
            }
            $vt  = (int)file_get_contents("../include/time/$type.txt");
            if($vt + $_SESSION["vtime"] <= $time){
                if((int)($vt/7)<=$_SESSION["vkey"] and (int)($vt/5>=$_SESSION["vkey"])){
                    $sql = "SELECT ID FROM view WHERE user='{$_SESSION['user']}' and video='{$_SESSION['video']}'";
                    $res = $conn->query($sql);
                    if($res->num_rows>0){
                        echo json_encode(array("msg"=>"false", "val"=>"Already viewd"));
                    }else{
                        $sql = "INSERT INTO view(ID,user,video,dtime) VALUES(NULL,'{$_SESSION['user']}','{$_SESSION['video']}',{$time})";
                        if($conn->query($sql)==true){
                            $sql = "UPDATE user SET point=point+$vp WHERE user='{$_SESSION['user']}'";
                            if($conn->query($sql)==true){
                                for($i = 0;$i<count($_SESSION["videos$type"]);$i++){
                                    if($_SESSION["videos$type"][$i]["link"]==$_SESSION["video"]){
                                        $user = $_SESSION["videos$type"][$i]["user"];
                                        $link = $_SESSION["videos$type"][$i]["link"];
                                        $sql = "UPDATE user SET point=point-$vp WHERE user='{$user}'";
                                        $conn->query($sql);
                                        $sql = "UPDATE video SET views=views+1 WHERE link='{$link}'";
                                        $conn->query($sql);
                                        $_SESSION["videos$type"][$i]["view"] = $time;
                                        $_SESSION["videos$type"][$i]["vcode"] = "";
                    break;
                    }
                }
                
                                unset($_SESSION["vcode"]);
                                unset($_SESSION["vkey"]);
                                unset($_SESSION["vtime"]);
                                unset($_SESSION["video"]);
                                echo json_encode(array("msg"=>"true", "val"=>"Success"));
                            }else{
                                echo json_encode(array("msg"=>"false", "val"=>"Can not add point"));
                            }
                        }else{
                            echo json_encode(array("msg"=>"false", "val"=>"Can not add Views"));
                            echo "";
                        }
                    }
                }else{
                    echo json_encode(array("msg"=>"false", "val"=>"Warning"));
                }
            }else{
                $code = vcode("videos$type");
                $_SESSION["vcode"] = $code;
                $vt  = (int)file_get_contents("../include/time/$type.txt");
                echo json_encode(array("msg"=>"true", "val"=>$code,"key"=>$_SESSION['vkey'], "time"=>abs($time - $_SESSION["vtime"] - $vt)));
            }
        }else{
            $code = vcode("videos$type");
            for($i = 0;$i<count($_SESSION["videos$type"]);$i++){
                if($_SESSION["videos$type"][$i]["vcode"]==$_POST["vcode"]){
                    $_SESSION["vcode"] = $code;
                    $_SESSION["video"] = $_SESSION["videos$type"][$i]["link"];
                     $_SESSION["vkey"] = 0;
                     $_SESSION["vtime"] = $time;
                break;
                }
            }
            if(isset($_SESSION["vcode"])){
                echo json_encode(array("msg"=>"true", "val"=>$code, "key"=>$_SESSION['vkey']));
            }else{
                echo json_encode(array("msg"=>"false", "val"=>"Failed"));
            }
        }
    }else{
        if(isset($_SESSION['vcode'])){
            unset($_SESSION["vcode"]);
            unset($_SESSION["vtime"]);
            unset($_SESSION["vkey"]);
            unset($_SESSION["video"]);
        }
            if(empty($_SESSION["videos$type"])){
                $_SESSION["videos$type"] = array();
                $sql = ("SELECT user,link,ID FROM video WHERE type=$type and user != '{$_SESSION['user']}' ORDER BY views");
                $res = $conn->query($sql);
                if($res->num_rows>0){
                    while($row = $res->fetch_assoc()){
                        $sql = "SELECT point FROM user WHERE user='{$row['user']}'";
                        $res1 = $conn->query($sql);
                        if($res1->num_rows>0){
                            $points = $res1->fetch_assoc();
                            if($points["point"]>$vp){
                                if(count($_SESSION["videos$type"])<10){
                                    
                                   $code = vcode("videos$type");
                                   array_push($_SESSION["videos$type"],array("id"=>$row["ID"], "user"=>$row["user"], "link"=>$row["link"], "vcode"=>$code, "view"=>0));
                                }else{
                                    break;
                                }
                            }
                        }else{
                            echo $sql;
                        }
                    }
                }
                echo json_encode($_SESSION["videos$type"]);
            }else{
                //isset session videos
                $_SESSION["videos$type"] = array_values($_SESSION["videos$type"]);
if(isset($_SESSION["videos{$type}"])){
        for($i=0;$i<count($_SESSION["videos{$type}"]);$i++){
            $link = $_SESSION["videos{$type}"][$i]["link"];
            $user = $_SESSION["videos{$type}"][$i]["user"];
            $sql = "SELECT link FROM video WHERE link='{$link}'";
                    $res = $conn->query($sql);
                    if($res->num_rows<=0){
                        $error =1;
                    }else{
                        $error =0;
                    }
                    $sql = "SELECT point FROM user WHERE user='{$row['user']}'";
                        $res1 = $conn->query($sql);
                        if($res1->num_rows>0){
                            $points = $res1->fetch_assoc();
                            if($points["point"]>$vp){
                                $error2 = 1;
                            }else{
                                $error2 = 0;
                            }}else{
                                $error2 = 0;
                            }
            if($_SESSION["videos{$type}"][$i]["view"]!=0 or $error==1 or $error2==0){
                if($_SESSION["videos$type"][$i]["view"]+$new <$time){
                    unset($_SESSION["videos$type"][$i]);
                }
            }
        }
        if(count($_SESSION["videos$type"])<10){
            $sql = ("SELECT user,link,ID FROM video WHERE type=$type and user != '{$_SESSION['user']}' ORDER BY views");
            $res = $conn->query($sql);
            if($res->num_rows>0){
                while($row=$res->fetch_assoc()){
                    
                    //check already viewed
                    $sql = "SELECT ID FROM view WHERE video='{$row['link']}' and user='{$_SESSION['user']}'";
                    $d = $conn->query($sql);
                    $c = array();
                    if($d->num_rows<=0){
                        for($i=0;$i<count($_SESSION["videos$type"]);$i++){
                            if($_SESSION["videos$type"][$i]["id"]==$row["ID"]){
                                array_push($c,1);
                            }
                        }
                        $sql = "SELECT point FROM user WHERE user='{$row['user']}'";
                        $res1 = $conn->query($sql);
                        if($res1->num_rows>0){
                            $points = $res1->fetch_assoc();
                            if($points["point"]>$vp){
                        if(count($c)==0){
                            unset($_SESSION["videos$type"][$i]);
                            if(count($_SESSION["videos$type"])<10){
                                $code = vcode("videos$type");
                                array_push($_SESSION["videos$type"],array("id"=>$row["ID"], "user"=>$row["user"], "link"=>$row["link"], "vcode"=>$code, "view"=>0));
                                $_SESSION["videos$type"] = array_values($_SESSION["videos$type"]);
                            }
                        }
                    }}else{
                        echo $sql;
                    }
                        }
                }
            }
        }
    }
    $_SESSION["videos$type"] = array_values($_SESSION["videos$type"]);
                echo json_encode($_SESSION["videos$type"]);
            }
    }
}else{
    echo "Wrong Type";
}}else{
    echo "Empty Type";
}}
?>