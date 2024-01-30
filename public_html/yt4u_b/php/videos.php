<?php
$path = "../../php/func/";
require_once("{$path}csrf.php");
if(isset($_SESSION['admin'])){
    if(isset($key)){
        require_once('../../php/conn.php');
        if(isset($_POST['count'])){
        if(isset($_POST['stat'])){
            require_once("{$path}valid.php");
            $n = numeric($_POST['count'],1);
            if($_POST['stat']=="vv"){
                $stat = 3;
            }else if($_POST['stat']=="wv"){
                $stat = 4;
            }else if($_POST['stat']=="vvu"){
                $stat = 1;
            }else if($_POST['stat']=="wvu"){
                $stat = 2;
            }else{
                $stat = 5;
            }
            $n = (int)($n);
            $s = ($n * 10) - 10;
            $l = $n * 10;
            $_SESSION['vstart'] = $s;
            $_SESSION['vend'] = $l;
        }else{
            $_SESSION['vstart'] = 0;
            $_SESSION['vend']   = 10;
        }
        $search = "";
        if(isset($_POST['search'])){
            $search = $conn->real_escape_string(trim($_POST['search']));
        }
        if(preg_match("/[A-Za-z0-9\-\_]{11}/",$search,$id)){
            $link = $id[0];
            $sql = "SELECT ID,link,type,dtime,user,views FROM video WHERE link LIKE '%{$link}%' or user LIKE '%$link%' and type=$stat order by ID desc;";
        }else{
            $sql = "SELECT ID,link,type,dtime,user,views FROM video WHERE user LIKE '%$search%' or user LIKE '%$search%' and type=$stat order by ID desc;";
        }
        $res = $conn->query($sql);
        $arr = array();
        if($res->num_rows>0){
            $i = 1;
            while($data = $res->fetch_assoc()){
                if($i>=$_SESSION['vstart']){
                    if($i>$_SESSION['vend']){
                        break;
                    }
                    array_push($arr,array("id"=>$data["ID"], "user"=>$data["user"], "link"=>$data["link"], "dtime"=>$data["dtime"], "views"=>$data["views"]));
                }
                $i += 1;
            }
        }
        echo json_encode($arr);
}}}else{
    header("Location:404.php");
}
?>