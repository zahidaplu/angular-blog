<?php
include 'config.php';

$sel = mysqli_query($con,"select * from news ");
$data = array();

while ($row = mysqli_fetch_array($sel)) {

	$data[] = array("id"=>$row['id'],"newstitle"=>$row['newstitle'],"description"=>$row['description'],"updated_at"=>$row['updated_at']);
}
echo json_encode($data);
?>