<?php
	
	//查询数据接口
	
	//连接数据库
	
	include 'connect.php';
	
	//写查询语句
	$sql="SELECT * FROM cars;";
	
	//执行查询语句
	$res=$conn->query($sql);
	
	//获取里面的结果集
	$row=$res->fetch_all(MYSQLI_ASSOC);
	
	//转成字符串
	//把字符串形式的json数据传给前端  echo
	echo json_encode($row,JSON_UNESCAPED_UNICODE);
	
	//关闭连接数据库
	$res->close();//关闭结果集
    $conn->close();//关闭数据库的链接
?>