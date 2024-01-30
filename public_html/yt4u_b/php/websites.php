<?php
$path = "../../php/func/";
require_once("{$path}csrf.php");
if(isset($_SESSION['admin'])){
    if(isset($key)){
        require_once('../../php/conn.php');
        $sql = "SELECT ID,web,dtime,views FROM web;";
        $res = $conn->query($sql);
        $arr = array();
        if($res->num_rows>0){
            while($data = $res->fetch_assoc()){
                array_push($arr,array("id"=>$data["ID"],"web"=>$data["web"], "dtime"=>$data["dtime"], "views"=>$data['views']));
            }
        }
        echo json_encode($arr);
}}else{
    header("Location:404.php");
}
?>