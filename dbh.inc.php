<?php

$dbServername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "conference proposal"; // change back to original DB when done testing how to add new entries to DB

$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
