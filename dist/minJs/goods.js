'use strict';

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

window.onload = function () {
	//商家的下拉菜单
	$('.shangjia').mousemove(function () {
		$('.top-r1').css(_defineProperty({
			'display': 'block',
			'transition': '1s',
			'background': '#ffffff',
			'border': '1px solid #ccc',
			'border-top': 'none'
		}, 'transition', '2s'));

		$('.shangjia').css('background', '#ffffff').css('border', '1px solid #ccc').css('border-top', 'none');
	});
	$('.shangjia').mouseout(function () {
		$('.top-r1').css('display', 'none');
		$('.shangjia').css('background', '#f4f4f4').css('border', 'none');
	});

	//帮助的下拉菜单
	$('.bangzhu').mousemove(function () {
		$('.bangzhu2').css({
			'display': 'block',
			'background': '#ffffff',
			'z-index': '1000'

		});
		$('.bangzhu').css({
			'background': '#ffffff',
			'border': '1px solid #ccc'
		});
	});
	//离开的时候
	$('.bangzhu').mouseout(function () {
		$('.bangzhu2').css('display', 'none');
		$('.bangzhu').css({
			'background': '#f4f4f4',
			'border': 'none'
		});
	});

	//关注下拉菜单
	$('.guanzhu').mousemove(function () {
		$('.guanzhu1').css({
			'display': 'block',
			'background': 'white'

		});
		$('.guanzhu').css({
			'background': '#ffffff',
			'border': '1px solid #ccc',
			'border-bottom': '1px solid white',
			'z-index': '100'
		});
	});
	//离开的时候
	$('.guanzhu').mouseout(function () {
		$('.guanzhu1').css({
			'display': 'none'
		});
		$('.guanzhu').css({
			'border': 'none',
			'background': '#f4f4f4'
		});
	});

	//我的购物车那里
	$('.beibei-r1').mousemove(function () {
		$('.gouwuche').css({
			'display': 'block'
		});
		$('.beibei-r1').css({
			'border-bottom-right-radius': '0'
		});
	});
	$('.beibei-r1').mouseout(function () {
		$('.gouwuche').css({
			'display': 'none'
		});
		$('.beibei-r1').css({
			'border-bottom-right-radius': '10px'
		});
	});

	//侧栏广告回到顶部等。
	$('.cgouwu').mousemove(function () {
		$('.cgouwuche').css({
			'display': 'block'
		});
		$('.cgouwu').css({
			'background': '#ff647c'
		});
	});
	//离开的时候
	$('.cgouwu').mouseout(function () {
		$('.cgouwuche').css({
			'display': 'none'
		});
		$('.cgouwu').css({
			'background': '#ffffff'
		});
	});

	//手机
	$('.cshouji').mousemove(function () {
		$('.phone1').css({
			'display': 'block'
		});
		$('.cshouji').css({
			'background': '#ff647c'
		});
	});

	$('.cshouji').mouseout(function () {
		$('.phone1').css({
			'display': 'none'
		});
		$('.cshouji').css({
			'background': '#ffffff'
		});
	});

	//客服在线
	$('.gfzx').mousemove(function () {
		$('.gfzx-img').css({
			'display': 'none'
		});
		$('.gfzx').css({
			'background': '#ff647c'
		});
		$('.gfzx-span').css({
			'display': 'block'
		});
	});
	//离开的时候
	$('.gfzx').mouseout(function () {
		$('.gfzx-span').css({
			'display': 'none'
		});
		$('.gfzx-img').css({
			'display': 'block',
			'text-aline': 'center'
		});
		$('.gfzx').css({
			'background': '#ffffff'
		});
	});

	//回到顶部
	$('.totop').mousemove(function () {
		$('.totop-img').css({
			'display': 'none'
		});
		$('.totop-span').css({
			'display': 'block'
		});
		$('.totop').css('background', '#ff647c');
	});

	//离开的时候
	$('.totop').mouseout(function () {
		$('.totop-img').css({
			'display': 'block'
		});
		$('.totop-span').css({
			'display': 'none'
		});
		$('.totop').css('background', '#ffffff');
	});

	//回到顶部的按钮
	window.onscroll = function () {
		var scrollTop = window.scrollY;
	};
	$('.totop').click(function () {
		window.scrollTo(0, 0);
	});

	//在售分类的下拉菜单部分

	$('.liebiao').mousemove(function () {
		$('.fenkuai').css({
			'display': 'block'
		});
		$('.liebiao').css('background', '#f34660');
	});
	$('.liebiao').mouseout(function () {
		$('.fenkuai').css({
			'display': 'none'
		});
		$('.liebiao').css('background', '#ff647c');
	});

	//选项卡部分
	$('.fenlei li').mousemove(function () {
		//排他，清除所有
		$('.fenlei li').attr('class', '');
		//当前的高亮显示
		$(this).attr('class', 'active');
		//div跟着切换
		$('.fenlei-r .con').css('display', 'none');
		$('.fenlei-r .con').eq($(this).index()).css('display', 'block');
	});

	//吸顶菜单
	var hei = document.getElementsByClassName('xiding1')[0];
	var top = hei.offsetTop;
	//          console.log(top);
	window.onscroll = function () {
		//获取滚动距离
		var scrollTop = window.scrollY;
		if (scrollTop >= top) {
			hei.classList.add('menu');
			$('.xiding1 .qianggou').css('display', 'block');
		} else {
			hei.classList.remove('menu');
			$('.xiding1 .qianggou').css('display', 'none');
		}
	};

	//尺码那里
	$('.yanse2 ul li a').click(function () {
		$('.yanse2 ul li a').attr('class', '');
		$('.yanse2 ul li a div:nth-child(2)').attr('class', '');
		$('.yanse2 ul li a i:nth-child(3)').attr('class', '');

		$(this).attr('class', 'addbiank');
		$(this).children().eq(1).attr('class', 'current-box');
		$(this).children().eq(2).attr('class', 'dagou');
	});

	//颜色那块当点击的时候右下角和边框固定住。(有问题的)
	$('.yanse1-2 li a').click(function () {

		//排他，清除所有

		$('.yanse1-2 li a').attr('class', '');
		$('.yanse1-2 li a div:nth-child(3)').attr('class', '');
		$('.yanse1-2 li a i:nth-child(4)').attr('class', '');
		//当前的高亮显示
		$(this).attr('class', 'addbiank');
		$(this).children().eq(2).attr('class', 'current-box');
		$(this).children().eq(3).attr('class', 'dagou');
	});

	//加减数量
	$('.jia').click(function () {
		//this是js的方法,用$()包起来
		//prev([expr]): 获取前一个同辈元素 ==> previousElementSibling
		//nextAll([expr]): 获取当前元素之后所有的同辈元素
		var val = $(this).prev().val(); //原来的值是value=1； 
		val++; //当点击加号的时候val就加1变成了1+1就等于了2   value="1"标签里面就是设置了为1   所以++就为2  输出一直为2
		if (val >= 5) {
			//限定购物买五件

			val = 5;
			$('.noticeMaxBuy').css('display', 'block'); //如等于五刚显示限定购物买五件
		}
		//这里就是将上面的val哪下来上面等于多少这里的val就等于多少

		//  console.log(val)
		$(this).prev().val(val);
		//val没有放在val()里面就一直是2    有两个知识点  1) value="1"本来就是1的,当点击的时候就变成2
		//2)当再点击的时候又是1+1,因为value="1"本来就是1的,当点击的时候就变成2
		//3)要把变量val放在方法input的输入框里;
		//这里相当于将得到的val的值赋予input的val比如点击一次这个val就是2了这时input那个输入框里的值就变成了2.
		//  console.log($(this).prev().val())
	});

	//减
	$('.jian').click(function () {
		var val = $(this).next().val();
		val--;
		if (val <= 1) {
			val = 1;
			$('.noticeMaxBuy').css('display', 'none');
		}
		//  console.log(val)
		//  console.log($(this).next().val())
		val = $(this).next().val(val);
	});

	//==================================================================================核心思想
	/*需求
 一.数据渲染+放大镜
 	1)先是从列表页传个id过来
 	2)接收接收列表页转过来的id 
 	3)发送ajax请求->api/goods.php->表里面的goodsxuanran->gid='$idx->接收数据
 	4)放大镜功能
 	
 		二.插入
  	1)点击单独购买时
 	2)获取id并且将得到的数据插入到cars购物车表中(ajax请求中还有个ajax)
 		*/
	//===================================================================放大镜部分
	//接收列表页转过来的id
	var res = location.search.slice(1); //id=g1    slice(1)  得到=g1
	var id = res.split('=')[1]; //得到g1
	console.log(id); //得到g1
	var price1 = document.querySelector('.price1');
	var url = '../api/goods.php'; //连接PHP

	data = 'idx=' + id; //把g1传到数据库,查询这个id的内容
	ajax('GET', url, data, function (str) {
		var arr = JSON.parse(str);
		console.log(arr); //得到这个id的整条数据
		price1.innerHTML = arr[0].priceint + '.00'; //改变价格   arr[0].priceint得到"19"

		//==================================================================老师放大镜插件开始的位置				
		var arrSmall = []; //定义空数组存小图
		var arrBig = []; //定义空数组存大图
		for (var i = 0; i < arr.length; i++) {
			// 数据库里只存有一张大图,大图可以通过样式改度宽度,  大图数组跟小图数组存的是同一张图片
			arrSmall.push(arr[i].imgurl); //把图片推进空数组里  小图样式里设置好了宽度,
			arrBig.push(arr[i].imgurl); ////把图片推进空数组里  大图样式里设置好了宽度,
		}

		//渲染数据	
		var html = '';
		for (var i = 0; i < arrSmall.length; i++) {
			html += '<li><img src="' + arrSmall[i] + '" data-lsrc="' + arrSmall[i] + '" data-maxSrc="' + arrBig[i] + '"></li>';
			//小图路径src="${arrSmall[i]}    框框里面大图左边路径data-lsrc="${arrSmall[i]}    点击显示右边路径data-maxSrc="${arrBig[i]}"
		}
		//console.log(html);
		$('#MagnifierWrap2 .spec-items ul').html(html); //生成节点  html(): （等同于原生js中的innerHTML）
		$('#MagnifierWrap2 .spec-items ul li').eq(0).addClass('on'); //第一个li样式为on  加黑色边框  border: 2px solid #000;

		//第一个大图的渲染  初始化  图片里面只存了两张图片   两个大图,第三张图片可以用改变大图的宽度来做;
		var str = '<img class="MagTargetImg" src="' + arrSmall[0] + '" data-src="' + arrBig[0] + '">';
		$('#MagnifierWrap2 .MagnifierMain').html(str);

		//调用放大镜插件：传最大盒子id即可 
		MagnifierF("MagnifierWrap2");
	});

	//==============================================================================获取id并且将得到的数据插入到cars表中。ajax请求中还有个ajax
	var buyalong = document.querySelector('.buyalong');
	buyalong.onclick = function () {
		//点击单独购买
		ajax('GET', url, data, function (str) {
			var arr = JSON.parse(str);
			console.log(arr);

			var num = $('.num').val(); //$('.num').val()  262行的 加减数量
			//		  	 	console.log(num);
			var url1 = '../api/inserttocars.php';
			var data1 = 'dianming1=' + arr[0].dianming + '&urlimgc=' + arr[0].imgurl + '&titlec=' + arr[0].title1 + '&yang=' + arr[0].yangshi + '&danjiac=' + arr[0].priceint + '&shuliangc=' + num;
			//再次发起ajax请求把数据插购物车的表中				
			ajax('GET', url1, data1, function (str1) {
				console.log(str1); //测试下就可以了
			});
		});
	};
};