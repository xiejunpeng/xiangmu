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
	var hei = document.getElementsByClassName('sub-nav')[0];
	var top = hei.offsetTop;
	//          console.log(a)
	window.onscroll = function () {
		//获取滚动距离
		var scrollTop = window.scrollY;
		if (scrollTop >= top) {
			hei.classList.add('menu');
			$('.sub-nav .sub-nav-logo').css('display', 'block');
			$('.sub-nav .yugao').css('display', 'none');
			$('.sub-nav .feiji').css('display', 'block');
			$('.sub-nav .dianzan').css('display', 'block');
		} else {
			hei.classList.remove('menu');
			$('.sub-nav .sub-nav-logo').css('display', 'none');
			$('.sub-nav .yugao').css('display', 'block');
			$('.sub-nav .feiji').css('display', 'none');
			$('.sub-nav .dianzan').css('display', 'none');
		}
	};

	//更多
	$('.gengduo1').click(function () {
		$('.pinpaiming').css('height', '205px');
		$('.gengduo1').css('display', 'none');
		$('.gengduo2').css('display', 'block');
	});
	//收起
	$('.gengduo2').click(function () {
		$('.pinpaiming').css('height', '37px');
		$('.gengduo1').css('display', 'block');
		$('.gengduo2').css('display', 'none');
	});

	//鼠标滑过的时候
	$('.pinpaiming table tbody tr td img').mouseover(function () {
		$('.pinpaiming table tbody tr td img').attr('class', ''); //清空隐藏属性
		$('.pinpaiming table tbody tr td span').css('display', 'none');
		$(this).attr('class', 'yincang'); //添加影藏属性
		$(this).next().css('display', 'block'); //span显示。
	});

	//=================================================  列表页主要功能就是分页功能跟带id到详情页  gid
	/*
 1)带数据可以是<a href="goods.html?id=${item.gid}" target="blank">  
 2)或<a href="http://localhost:9090/xiejunpeng/html/goods.html?id=${item.gid}" target="blank">  
 3)也可以通过点击事件     location.href='06详情页.html?'+html;
           */
	//一.内容部分的渲染 初始化
	var matter1 = document.querySelector('.matter1');
	var page1 = document.querySelector('.page1');

	//渲染部分的封装 
	function xuanlan(arr) {
		var reg = arr.datalist.map(function (item) {
			//arr.datalist  得到的是获取内容部分  是一个数组织
			return '<li data-id="' + item.id + '">\n\t\t\t\t\t\t\t<a href="goods.html?id=' + item.gid + '" target="blank">  \n\t\t\t\t\t\t\t\t<div class="matter1-1">\n\t\t\t\t\t\t\t\t\t<img src="' + item.imgurl + '"/ title="' + item.title + '">\n\t\t\t\t\t\t\t\t</div>\n\t\t\t\t\t\t\t\t<p class="title1" title="' + item.title + '">' + item.title + '</p>\n\t\t\t\t\t\t\t\t<p class="jiagede">\n\t\t\t\t\t\t\t\t<span class="fuhao">\uFFE5</span>\t\n\t\t\t\t\t\t\t\t<span class="jiageint">' + item.priceint + '</span>\n\t\t\t\t\t\t\t\t<span class="jiagefloat">.90</span>\n\t\t\t\t\t\t\t\t</p>\n\t\t\t\t\t\t\t</a>\n\t\t\t\t\t\t</li>';
		}).join('');
		matter1.innerHTML = reg;
	}

	var url = '../api/list.php'; //1)连接php
	var data = 'page=1&qty=12'; //2)带数据在php写查询语句
	ajax('GET', url, data, function (str) {

		var arr = JSON.parse(str); //3)接收php传回来的数据,把字符串转成对象
		console.log(arr); //4)事先测试一下,全黑的是字符串,绿色的是对象
		xuanlan(arr); //5)渲染

		//生成页数
		var num = Math.ceil(arr.total / arr.qty); //ceil  向上取整  总条数除以每页显示多少条,如果一页没有那么多条,也向上取整 ,生出一页
		var con = '';
		for (var i = 0; i < num; i++) {
			con += '<span>' + (i + 1) + '</span>'; // 总条数/每页显示多少条  生成页数
		}
		page1.innerHTML = con; //输出 结构要事先看老师的
		page1.children[0].className = 'active2'; //默认第一页为高亮
	});

	//二.点击切换页码
	page1.onclick = function (ev) {
		//事件绑在父元素身上,
		var ev = ev || window.event;
		if (ev.target.tagName.toLowerCase() == 'span') {
			//目标span  如果点击的目标是span则
			var pagenum = ev.target.innerText; // 拿到这个数字
			var url = '../api/list.php';
			var data = 'page=' + pagenum + '&qty=12';
			ajax('GET', url, data, function (str) {
				var arr = JSON.parse(str);
				console.log(arr);
				xuanlan(arr);

				for (var i = 0; i < page1.children.length; i++) {

					page1.children[i].className = '';
				}
				page1.children[pagenum - 1].className = 'active2';
			});
		}
	};

	//三.排序部分
	var zonghe = document.querySelector('.zonghe');
	var jiage = document.querySelector('.jiage');
	var xiaoliang = document.querySelector('.xiaoliang');
	zonghe.onclick = function () {
		var url = '../api/list.php';
		var data = 'page=1&qty=12&paixu=1';
		ajax('GET', url, data, function (str) {
			var arr = JSON.parse(str);
			xuanlan(arr);
		});
	};

	jiage.onclick = function () {
		var url = '../api/list.php';
		var data = 'page=1&qty=12&paixu=2';
		ajax('GET', url, data, function (str) {
			var arr = JSON.parse(str);
			xuanlan(arr);
		});
	};

	xiaoliang.onclick = function () {
		var url = '../api/list.php';
		var data = 'page=1&qty=12&paixu=3';
		ajax('GET', url, data, function (str) {
			var arr = JSON.parse(str);
			xuanlan(arr);
		});
	};
};