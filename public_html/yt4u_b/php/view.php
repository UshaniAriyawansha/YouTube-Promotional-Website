<?php
$path = "../../php/func/";
require_once("{$path}csrf.php");
if(isset($_SESSION['admin'])){
if(isset($key)){
    if(isset($_POST['tbl'])){
    if(isset($_POST['id'])){
        $tbl = preg_replace('/\`/','',$_POST['tbl']);
        require_once('../../php/conn.php');
        if($tbl=="user"){
            $cols = "`ID`,`user`,`fname`,`lname`,`mail`,`refcode`,`point`,`dtime`";
        }
        $id = $conn->real_escape_string($_POST['id']);
        $sql = "SELECT {$cols} FROM `{$tbl}` WHERE ID={$id}";
        $res = $conn->query($sql);
        $arr = array();
        if($res->num_rows>0){
            $row = $res->fetch_assoc();
            $arr = array("id"=>$row["ID"], "user"=>$row["user"], "fname"=>$row["fname"], "lname"=>$row["lname"], "mail"=>$row["mail"], "ref"=>$row["refcode"], "point"=>$row["point"], "dtime"=>$row["dtime"]);
            echo json_encode($arr);
        }
    }}
}}else{
    header("Location:404.php");
}
?>
 