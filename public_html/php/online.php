<?php
require ("conn.php");
$arr  = array();
$date = strtotime(date("F j, Y, g:i:s a"));
$time = $date - 15;
$sql  = "UPDATE user SET status=0 WHERE status!=0 and status<$time";
$conn->query($sql);
$sql  = "SELECT fname,ID FROM user WHERE status!=0 ORDER BY point DESC";
$res  = $conn->query($sql);
if($res->num_rows>0){
    while($row=$res->fetch_assoc()){
        array_push($arr,array("id"=>$row["ID"], "user"=>$row["fname"]));
    }
}
echo json_encode($arr);
?>