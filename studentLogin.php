<?php
require "databaseCon.php";

if ($_GET['okay']) {

    $rollno = $_POST['u_name'];
    $pwd = $_POST['pwd'];

    $qry =  "SELECT * FROM `student_registration` WHERE `s_rollno`='$rollno' AND `s_password_hash` = '$pwd' AND `s_approved` = \"approved\" LIMIT 1";

    $res = mysqli_query($conn, $qry);

    $count = mysqli_num_rows($res);
    if ($count > 0) {
        echo "true";
    } else {
        echo "false";
    }
} else {
    echo "internal error occured";
}
