<?php
	
	//接收前端传过来的用户名，验证数据库是否存在该用户名，返回相关信息给前端
	
	//连接数据库
	
	include 'connect.php';
	
	//接收参数
	$name=isset($_GET['use']) ? $_GET['use'] : '888';
//	
//	echo $name;//一定要做检测才往下面做
//
	//写查询语句
	$sql="SELECT * FROM username WHERE NAME=$name";
//	
	//执行语句
	$res=$conn->query($sql);//结果集
//	
	// var_dump($res);
//	
	if($res->num_rows>0){//num_rows存记录的条数，所有超过0就意味着存在
		//数据库存在该用户名
		echo 'not';
	}else{
		echo 'yes';
	}
	
	//关闭结果集和数据库
	
	$res->close();
	$conn->close();
	
?>