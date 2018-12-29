<?php

//连接数据库
include 'connect.php';
$page=isset($_GET['page']) ? $_GET['page'] : '1';
$qty=isset($_GET['qty']) ? $_GET['qty'] : '5';
$paixuname=isset($_GET['paixu']) ? $_GET['paixu'] : '7';


$index=($page-1)*$qty;//计算下标的公式
$sql="SELECT * FROM list LIMIT $index,$qty";
if($paixuname==1){
	$sql="SELECT * FROM list ORDER BY id  LIMIT $index,$qty";
}
if($paixuname==2){
	$sql="SELECT * FROM list ORDER BY priceint DESC LIMIT $index,$qty";
}
if($paixuname==3){
	$sql="SELECT * FROM list ORDER BY xiaoliang DESC LIMIT $index,$qty";
}

$res=$conn->query($sql);//执行语句：得到结果集
//var_dump($res);
$data=$res->fetch_all(MYSQLI_ASSOC);//获取内容部分
$sql2="SELECT * FROM list";
$res2=$conn->query($sql2);//执行语句：得到结果集
$row=$res2->num_rows;//获取结果集里面的num_rows属性，记录的条数
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