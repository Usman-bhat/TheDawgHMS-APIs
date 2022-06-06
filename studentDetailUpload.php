<?php
require "databaseCon.php";


$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$rollno = $_POST['rollno'];
$sphone = $_POST['sphone'];
$batch = $_POST['batch'];
$parentage = $_POST['parentage'];
$parent_phonenumber = $_POST['parent_phonenumber'];
$pincode = $_POST['pincode'];
$address = $_POST['address'];
$pass= $_POST['password'];
$branch= $_POST['branch'];


$img = $_POST['upload'];

$filename = "IMG" . rand() . "-" . rand() . ".jpg";
file_put_contents("../images/" . $filename, base64_decode($img));


$qry = "INSERT INTO `student_registration`
( `s_rollno`, `s_name`, `s_parentage`, `s_phone`, `s_batch`,`s_branch`, `s_pincode`, `s_p_phone`, `s_email`, `s_address`, `s_image`,`s_password_hash`) VALUES 
('$rollno','$name','$parentage','$phone','$batch','$branch','$pincode','$parent_phonenumber','$email','$address','$filename','$pass')";

// $qry = "INSERT INTO `students`(`name`, `email`, `image`) VALUES ('$name','$email','$filename')";
$res = mysqli_query($conn, $qry);

if ($res == true) {
    echo "File Uploaded Successfully";
	
} else {
    echo "File Uploaded UnSuccessfully";
}
