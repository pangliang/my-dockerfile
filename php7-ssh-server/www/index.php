<?php

$db = mysqli_connect("mysql","root","root123456","mysql") or die("connect error");
$sql = "show tables";
$rs = mysqli_query($db,$sql) or die(mysqli_error($db));
while($row=mysqli_fetch_array($rs,MYSQLI_ASSOC)){
	print_r($row);
}
