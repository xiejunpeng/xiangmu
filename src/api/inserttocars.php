<?php
	
	//连接数据库
	
	include 'connect.php';
	
	$dianming1=isset($_GET['dianming1']) ? $_GET['dianming1'] : '2';
	$urlimgc=isset($_GET['urlimgc']) ? $_GET['urlimgc'] : '3';
	$titlec=isset($_GET['titlec']) ? $_GET['titlec'] : '4';
	$yang=isset($_GET['yang']) ? $_GET['yang'] : '5';
	$shuliangc=isset($_GET['shuliangc']) ? $_GET['shuliangc'] : '6';
	$danjiac=isset($_GET['danjiac']) ? $_GET['danjiac'] : '7';
	//写插入语句
	// echo $urlimgc;
	// $sql="INSERT INTO cars(dianming,urlimg1,title,yangshi,shuliang,danjia) VALUES('$dianming1','$urlimgc','$titlec','$yang','$shuliangc','$danjiac')";
	$sql="INSERT INTO cars(dianming,urlimg1,title,yangshi,shuliang,danjia) VALUES('$dianming1','$urlimgc','$titlec','$yang','$shuliangc','$danjiac')";
	//执行查询语句
	$res=$conn->query($sql);
	
	
	if($res){
		echo '插入成功';
	}
	
	//关闭连接数据库
	
    $conn->close();//关闭数据库的链接
?>