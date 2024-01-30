<?php
session_start();
if(isset($_SESSION["user"])){
    require ("../../php/conn.php");
    $arr  = array();
    //USER ID
    $sql  = "SELECT ID FROM user WHERE user='{$_SESSION['user']}'";
    $res  = $conn->query($sql);
    if($res->num_rows==0){
        unset($_SESSION["user"]);
        header("Location:../../login.php");
    }//ADMIN ID
    $adm  = 0;
    $sql  = "SELECT ID FROM user WHERE user='Admin'";
    $re   = $conn->query($sql);
    if($re ->num_rows>0){
        $adms = $re->fetch_assoc();
        $adm  = $adms["ID"];
    }
    $row  = $res->fetch_assoc();
    $uid  = $row["ID"];
    //GET ALL RIDS
    $sql  = "SELECT sid FROM msg WHERE rid=$uid and sid!=$adm ORDER BY ID DESC";
    $res  = $conn->query($sql);
    if($res->num_rows>0){
        while($row=$res->fetch_assoc()){
            array_push($arr,$row["sid"]);
        }
    }
    $sql  = "SELECT rid FROM msg WHERE sid=$uid and rid!=$adm ORDER BY ID DESC";
    $res  = $conn->query($sql);
    if($res->num_rows>0){
        while($row=$res->fetch_assoc()){
            array_push($arr,$row["rid"]);
        }
    }
    $arr2 = array();
    $arr = array_keys(array_flip($arr));
    foreach($arr as $id){
        $sql  = "SELECT user,ID,point,status FROM user WHERE ID=$id";
        $r1    = $conn->query($sql);
        if($r1->num_rows>0){
            while($row1=$r1->fetch_assoc()){
                $date = (date("F j, Y, g:i a"));
                $dp = $row1["user"].".jpg?a=".$date;
                if(!file_exists("../images/{$row1['user']}.jpg")){
                    $dp = "user.jpg?a=".$date;
                }
                array_push($arr2,array("id"=>$row1["ID"], "p"=>$row1["point"], "u"=>$row1["user"], "d"=>$dp, "o"=>$row1["status"]));
            }
        }
    }
    echo json_encode($arr2);
}
?>