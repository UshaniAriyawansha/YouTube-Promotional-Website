<?php
$path = "./../../php/func/";

function url($string){
    $reg_exUrl = "/(?i)\b((?:https?:\/\/|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}\/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]{};:'\".,<>?«»“”‘’]))/";
    if(preg_match_all($reg_exUrl, $string, $url)) {
        foreach($url[0] as $newLinks){
            if(strstr( $newLinks, ":" ) === false){
                $link = 'http://'.$newLinks;
            }else{
                $link = $newLinks;
            }
            $search  = $newLinks;
            $replace = '<a href="'.$link.'" title="'.$newLinks.'" target="_blank">'.$link.'</a>';
            $string = str_replace($search, $replace, $string);
        }
    }
    return $string;
}
require_once($path."csrf.php");
if(isset($_SESSION["user"])){
if(isset($key)){
    require_once("../../php/conn.php");
    require_once("{$path}input.php");
    $rid  = input("rid",1,"Resiver",1,20,"u","w");
    $last  = input("last",1,"last",0,20,"s","n");
    if(count($in)==2){
        if(isset($_SESSION["r"])){
            if($_SESSION["r"] != $rid or $last ==""){
                $_SESSION["r"] = $rid;
                $_SESSION["l"] = "";
            }
        }else{
            $_SESSION["r"] = $rid;
            $_SESSION["l"] = "";
        }
        $arr  = array();
        //MARK AS READ 
        $sql = "UPDATE msg SET seen=1 WHERE sid=$rid and rid={$_SESSION['id']}";
        $conn->query($sql);
        $sql = "SELECT ID FROM msg WHERE (sid={$_SESSION['id']} and rid=$rid) or (rid={$_SESSION['id']} and sid=$rid) ORDER BY ID ASC";
        $red = $conn->query($sql);
        $ccc = $red->num_rows;
        if($ccc>50){
            $i = 0;
            $s = $ccc-50;
            while($row=$red->fetch_assoc()){
                $sql = "DELETE FROM msg WHERE ID={$row['ID']}";
                $conn->query($sql);
                if($i>$s){
                    break;
                }
                $i += 1;
            }
        }
        $sql = "SELECT ID,sid,msg FROM msg WHERE (sid={$_SESSION['id']} and rid=$rid) or (rid={$_SESSION['id']} and sid=$rid) ORDER BY ID DESC LIMIT 60";
        $res = $conn->query($sql);
        if($res->num_rows>0){
            while($row = $res->fetch_assoc()){
                if($_SESSION["l"] == "" or $_SESSION["l"] < $row["ID"]){
                    $sql  = "SELECT user FROM user WHERE ID={$row['sid']}";
                    $re1  = $conn->query($sql);
                    $data = $re1->fetch_assoc();
                    $msg   = $row['msg'];
                    $msg   = preg_replace("/comJanUbUyBaa/","&",$msg);
                    // Validate url
                    $msg = url($msg);
                    $date = (date("F j, Y, g:i a"));
                    $dp = $data["user"].".jpg?a=".$date;
                    if(!file_exists("../images/{$data['user']}.jpg")){
                        $dp = "user.jpg?a=".$date;
                    }
                    array_push($arr,array("id"=>$row["ID"], "msg"=>$msg, "user"=>$data["user"],"dp"=>$dp));
                }
            }
        }
        $arr3 = (array_reverse($arr));
        if(count($arr3)!=0){
            $_SESSION["l"] = $arr[0]["id"];
        }
        echo json_encode($arr3);
    }else{
        echo json_encode(array(array("id"=>"ID", "msg"=>"w", "user"=>"user","dp"=>"")));
    }
}else{
    echo json_encode(array("msg"=>"false","val"=>"Refresh browser and try again."));
}}else{
    header('Location:../../login.php');
}
?>