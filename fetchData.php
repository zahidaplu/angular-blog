<?php
include 'config.php';
$id = $_GET['id'];
$sel = mysqli_query($con,"select * from news where id='$id' ");
$data = array();

while ($row = mysqli_fetch_array($sel)) {

	$data[] = array("id"=>$row['id'],"newstitle"=>$row['newstitle'],"description"=>$row['description'],"updated_at"=>$row['updated_at']);
}
echo json_encode($data);
?>