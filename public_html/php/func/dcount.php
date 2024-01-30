<?php
function dcount($table,$end=""){
    global $conn;
    $sql = "SELECT ID FROM $table $end";
    $res = $conn->query($sql);
    return ($res->num_rows);
}
?>