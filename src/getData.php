<?php
include 'config.php';

$sel = mysqli_query($con,"select * from news");
$data = array();

while ($row = mysqli_fetch_array($sel)) {
 $data[] = array("newstitle"=>$row['newstitle'],"created_at"=>$row['created_at']);
}
echo json_encode($data);
?>