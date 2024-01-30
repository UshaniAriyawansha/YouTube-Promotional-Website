<?php
if(isset($_POST["id"])){
    if(is_numeric($_POST["id"])){
        require "../../php/conn.php";
        $sql = "SELECT user,point FROM user WHERE ID={$_POST['id']}";
        $res = $conn->query($sql);
        if($res->num_rows>0){
            $data = $res->fetch_assoc();
            echo json_encode(array("user"=>$data["user"], "point"=>$data["point"]));
        }
    }
}
?>