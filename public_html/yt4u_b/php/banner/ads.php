<?php
$path;
$arr = array();
function banner($path,$vv,$id){
    global $arr;
    $imgs = scandir("../../".$path);
    $imgs = array_diff($imgs,array(".",".."));
    $imgs = array_values($imgs);
    for($i=0;$i<count($imgs);$i++){
        $code = file_get_contents("../../".$path.$imgs[$i]);
        array_push($arr,array("name"=>$vv, "path"=>$path, "img"=>$imgs[0], "code"=>$code, "id"=>$id));
    }
    unset($imgs);
}
banner("../include/banners/vv/","Ad View Video",4);
banner("../include/banners/wv/","Ad Watch Video",3);
banner("../include/banners/av/","Ad Admin View Video",2);
banner("../include/banners/aw/","Ad Admin Watch Video",1);
echo json_encode($arr);
?>