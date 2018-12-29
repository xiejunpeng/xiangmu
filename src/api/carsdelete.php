<?php
	
	//删除数据
	
	//连接数据库
	
	include 'connect.php';
	
	//接收参数
	$danjia1=isset($_GET['jiage']) ? $_GET['jiage'] : '888';
	
	//写删除语句
	$sql="DELETE FROM cars WHERE danjia=$danjia1";
	
	//执行查询语句
	$res=$conn->query($sql);
	
	if($res){
		echo '删除成功';
	}
	
	//关闭连接数据库
	
    $conn->close();//关闭数据库的链接
?>