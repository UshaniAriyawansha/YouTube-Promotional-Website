<?php
function del($tbl){
    global $conn;
    $date = strtotime(date("F j, Y, g:i a"));
    $time = $date - 10800;
    $sql = "SELECT code FROM {$tbl} WHERE `dtime` < $time";
    $res = $conn->query($sql);
    if ($res->num_rows>0){
        while ($row = $res->fetch_assoc()){
            if(strlen($row['code'])>15){
                $sql = "DELETE FROM user WHERE code='{$row['code']}'";
                $c = $conn->query($sql);
            }
        }
    }
}
del("user");
del("foget");
?>