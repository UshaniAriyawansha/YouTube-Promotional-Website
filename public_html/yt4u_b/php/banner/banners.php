<?php
$path;
$arr = array();
function banner($path,$vv,$id){
    global $arr;
    $imgs = scandir("../../".$path);
    $imgs = array_diff($imgs,array(".",".."));
    $imgs = array_values($imgs);
    for($i=0;$i<count($imgs);$i++){
        array_push($arr,array("name"=>$vv, "path"=>$path, "img"=>$imgs[$i], "id"=>$id));
    }
    unset($imgs);
}
banner("../include/banners/view_video/","View Video",1);
banner("../include/banners/watch_video/","Watch Video",2);
banner("../include/banners/admin_view_video/","Admin View Video",3);
banner("../include/banners/admin_watch_video/","Admin Watch Video",4);
banner("../include/banners/home/","Home",5);
echo json_encode($arr);
?>