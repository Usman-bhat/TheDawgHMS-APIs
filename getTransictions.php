<?php
require "databaseCon.php";

$sid = $_GET['sid'];

$query = "SELECT * FROM `transiction_log` where `student_id` ='$sid'";
$raw = mysqli_query($conn, $query);
while ($res = mysqli_fetch_array($raw)) {
    $data[] = $res;
}
print(json_encode($data));
