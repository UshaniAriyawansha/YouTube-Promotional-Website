<?php
session_start();
if(isset($_SESSION["user"])){
    $view = array();
    require_once("conn.php");
    $sql  = "SELECT link,type,views,ID FROM video WHERE user='{$_SESSION['user']}'";
    $res  = $conn->query($sql);
    if($res->num_rows>0){
        while($row=$res->fetch_assoc()){
            array_push($view,array("link"=>$row["link"], "id"=>$row["ID"], "views"=>$row["views"], "type"=>$row["type"]));
        }
    }
    echo (json_encode($view));
}
?>