<?php
include'connect.php';
$idx=isset($_GET['idx']) ? $_GET['idx'] : '66';

// $sql="SELECT * FROM goodsxuanran WHERE gid='$idx'";
$sql="SELECT * FROM goodsxuanran WHERE gid='$idx'";
// echo $idx
$res=$conn->query($sql);////执行语句：得到结果集

//获取里面的内容
	$row=$res->fetch_all(MYSQLI_ASSOC);
	//转成字符串
	//把字符串形式的json数据传给前端  echo
	echo json_encode($row,JSON_UNESCAPED_UNICODE);
	
	//关闭连接数据库
	$res->close();//关闭结果集
    $conn->close();//关闭数据库的链接
?>