<?php
$conn = new mysqli("localhost","root","","motor_db");

$username = $_POST['username'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);

$sql = "INSERT INTO users(username,email,password) VALUES('$username','$email','$password')";
$conn->query($sql);

echo "Registered successfully";
?>
