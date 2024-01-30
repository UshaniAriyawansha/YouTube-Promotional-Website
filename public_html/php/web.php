<?php
session_start();
if(isset($_SESSION["user"])){
if(isset($_SESSION["web"])){
    if(isset($_POST["web"])){
        $time = strtotime(date("F j, Y, g:i:s a"));
        require_once("conn.php");
        $web = $conn->real_escape_string($_POST["web"]);
        if($_SESSION["web"] + 30 <$time and $_SESSION["web"] + 30>$time- 10){
            $sql = "SELECT web FROM web WHERE web='{$web}'";
            $res = $conn->query($sql);
            if($res->num_rows>0){
                $sql = "SELECT ID FROM visit WHERE user='{$_SESSION['user']}' and web = '{$web}';";
            $res = $conn->query($sql);
                if($res->num_rows<=0){
                    $sql = "INSERT INTO `visit`(`ID`, `user`, `web`, `dtime`) VALUES (NULL,'{$_SESSION['user']}','{$web}',$time)";
                    if($conn->query($sql)==true){
                        $sql = "SELECT web FROM point WHERE ID=1";
                        $res = $conn->query($sql);
                        if($res->num_rows>0){
                            $data = $res->fetch_assoc();
                            $sql  = "UPDATE user SET point=point+{$data['web']} WHERE user = '{$_SESSION['user']}'";
                            $sql2 = "UPDATE web SET views=views+1 WHERE web = '{$web}'";
                            $conn->query($sql2);
                             if($conn->query($sql)==true){
                                echo "point added";
                            }else{
                                echo "can not add points.";
                            }
                        }else{
                            echo "Can not get any points";
                        }
                    }else{
                        echo "Can not add point";
                    }
                    
            }else{
                echo "Already viewed";
            }
            }else{
                echo "No web site.";
            }
        }else{
            echo "Please try again";
        }
    }else{
        $_SESSION["web"] = strtotime(date("F j, Y, g:i:s a"));
        echo "s1";
    }
}else{
    $_SESSION["web"] = strtotime(date("F j, Y, g:i:s a"));
    echo "s2";
}}else{
    header("Location:../login.php");
}
?>