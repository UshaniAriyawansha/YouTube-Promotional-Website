<?php
require ("../../php/conn.php");
    $arr  = array();
    $date = strtotime(date("F j, Y, g:i:s a"));
    $time = $date - 15;
    $sql  = "UPDATE user SET status=0 WHERE status!=0 and status<$time";
    $conn->query($sql);
    $sql  = "SELECT user,ID,point FROM user WHERE status!=0 and user!='Admin' ORDER BY point DESC";
    $res  = $conn->query($sql);
    if($res->num_rows>0){
        while($row=$res->fetch_assoc()){
            $date = (date("F j, Y, g:i a"));
            $dp = $row["user"].".jpg?a=".$date;
            if(!file_exists("../images/{$row['user']}.jpg")){
                $dp = "user.jpg?a=".$date;
            }
            array_push($arr,array("id"=>$row["ID"], "point"=>$row["point"], "user"=>$row["user"], "dp"=>$dp));
        }
    }
    echo json_encode($arr);
?>