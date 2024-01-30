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
            $s = numeric($_POST['stat'],0);
            $n = (int)($n);
            $s = ($n * 10) - 10;
            $l = $n * 10;
            $_SESSION['cstart'] = $s;
            $_SESSION['cend'] = $l;
        }else{
            $_SESSION['cstart'] = 0;
            $_SESSION['cend']   = 10;
        }
        $search = "";
        if(isset($_POST['search'])){
            $search = $conn->real_escape_string(trim($_POST['search']));
        }
        $sql = "SELECT ID,user,fname,lname,mail,refcode,stat,point,dtime FROM user WHERE user LIKE '%$search%' or refcode LIKE '%$search%' and stat=$s ORDER BY ID DESC;";
        $res = $conn->query($sql);
        $arr = array();
        if($res->num_rows>0){
            $i = 1;
            while($data = $res->fetch_assoc()){
                if($i>=$_SESSION['cstart']){
                    if($i>$_SESSION['cend']){
                        break;
                    }
                    array_push($arr,array("id"=>$data["ID"],"user"=>$data["user"], "fname"=>$data["fname"], "lname"=>$data["lname"], "mail"=>$data["mail"], "ref"=>$data["refcode"], "stat"=>$data["stat"], "point"=>$data["point"],"dtime"=>$data["dtime"]));
                }
                $i += 1;
            }
        }
        echo json_encode($arr);
}}}else{
    header("Location:404.php");
}
?>