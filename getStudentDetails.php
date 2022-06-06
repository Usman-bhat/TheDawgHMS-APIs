<?php
require "databaseCon.php";

$id = $_GET['id'];

$query = "SELECT * FROM `student_registration` where `s_rollno`='$id'";
$raw = mysqli_query($conn, $query);
while ($res = mysqli_fetch_array($raw)) {
    $data[] = $res;
}
print(json_encode($data));
