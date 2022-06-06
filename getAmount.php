<?php
require "databaseCon.php";

$sid = $_GET['sid'];

$query = "SELECT `amount` FROM `walle_table` where `student_id`='$sid' LIMIT 1";
$raw = mysqli_query($conn, $query);
if(mysqli_num_rows($raw)<1){
    echo"NA";
}
else{
    $row = mysqli_fetch_row($raw);
if($row){
   $amount = $row[0]; 
}
else{
    $amount=null;
}
echo $amount;
}
