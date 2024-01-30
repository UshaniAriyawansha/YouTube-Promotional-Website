<?php
session_start();
if(isset($_SESSION["user"])){
    require "../../php/conn.php";
    $arr = array();
    $sql = "SELECT link FROM video WHERE user='{$_SESSION['user']}'";
    $res = $conn->query($sql);
    if($res->num_rows>0){
        while($row=$res->fetch_assoc()){
            $sql = "SELECT user,dtime FROM view WHERE video='{$row['link']}'";
            $r1  = $conn->query($sql);
            if($r1->num_rows>0){
                while($data = $r1->fetch_assoc()){
                    array_push($arr,array("user"=>$data["user"], "link"=>$row["link"], "dtime"=>$data["dtime"]));
                }
            }
        }
    }
    echo json_encode($arr);
}
?>