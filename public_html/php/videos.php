<?php
$path = "func/";
require_once("{$path}csrf.php");
if(isset($_SESSION['user'])){
    if(isset($key)){
        require_once('conn.php');
        if(isset($_POST['stat'])){
            require_once("{$path}valid.php");
            if($_POST['stat']=="vv"){
                $stat = 1;
            }else if($_POST['stat']=="wv"){
                $stat = 2;
            }else{
                $stat = 5;
            }
        $sql = "SELECT ID,link,type,dtime,user,views FROM video WHERE user = '{$_SESSION['user']}' and type=$stat;";
        $res = $conn->query($sql);
        $arr = array();
        if($res->num_rows>0){
            $i = 1;
            while($data = $res->fetch_assoc()){
                array_push($arr,array("id"=>$data["ID"], "user"=>$data["user"], "link"=>$data["link"], "dtime"=>$data["dtime"], "views"=>$data["views"]));
            }
        }
        echo json_encode($arr);
}}}else{
    header("Location:404.php");
}
?>