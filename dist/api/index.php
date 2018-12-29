<?php

//接收参数 isset() 是否设置了，返回布尔值,经常和三目运算符一起用，设置默认值
	$page=isset($_GET['page']) ? $_GET['page'] : '1';
	$qty=isset($_GET['qty']) ? $_GET['qty'] : '5';
	
//	echo $page;//证明：前端传给后端的数据已经到了
	
	//连接数据库
	include 'connect.php';//相当于复制connect.php的文件内容过这里
	
	$index=($page-1)*$qty;//计算下标的公式
	
	//写查询语句 ：
	$sql="SELECT * FROM `index`  LIMIT $index,$qty";
	
	//执行语句：得到结果集
	$res=$conn->query($sql);
//	var_dump($res);
	//获取内容部分
	$data=$res->fetch_all(MYSQLI_ASSOC);//获取内容部分
//	var_dump($data);
	//再写一个查询语句
	$sql2="SELECT * FROM `index`";
	
	//执行语句
	$res2=$conn->query($sql2);
	
	$row=$res2->num_rows;//获取结果集里面的num_rows属性，记录的条数
	
	//把你要给前端数据，做成关联数组，再统一转成字符串
	
	$goodlist=array(
		'total'=>$row,//总条数
		'datalist'=>$data,//查询到的数据
		'page'=>$page,//第几页
		'qty'=>$qty//每页显示多少条
	);
	
	echo json_encode($goodlist);
	
	$res->close();//关掉结果集
	$res2->close();//关掉结果集
	$conn->close();//断开连接


?>