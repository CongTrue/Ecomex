<?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "ecomex";
  // Kết nối đến CSDL
  $conn = mysqli_connect($servername, $username, $password, $dbname);
  // Kiểm tra kết nối
  if (!$conn) {
    die("Kết nối đến CSDL thất bại: " . mysqli_connect_error());
  }
?>