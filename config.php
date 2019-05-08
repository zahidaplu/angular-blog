<?php

$host = "localhost"; /* Host name */
$user = "demosite99_news"; /* User */
$password = "Uk$321Uk$321"; /* Password */
$dbname = "demosite99_news"; /* Database name */

$con = mysqli_connect($host, $user, $password,$dbname);
// Check connection
if (!$con) {
 die("Connection failed: " . mysqli_connect_error());
}
?>