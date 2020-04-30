﻿<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta charset="utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Access-Control-Allcontent=" IE=9;IE=8;IE=7;IE=EDGE">
<title>电商网站</title>
<link rel="shortcut icon" href="favicon.ico" type="image/x-ico" />
<link rel="stylesheet" href="/store/css/big.css" />

<link rel="stylesheet" href="/store/css/index.css" />

<script type="text/javascript" src="/store/js/jquery-1.8.3.min.js"></script>

<link rel="stylesheet" href="/store/css/gadget.css" />

<script type="text/javascript" src="/store/js/inde_n.js"></script>
<style type="text/css">
.my_img {
	margin: 5px;
	width: 100px;
	height: 100px;
	line-height: 100px;
	text-align: center;
	border: 1px solid #E5E5E5;
	float: left;
	position: relative;
}

.my_img:hover {
	border-color: #009688;
}

.my_img img {
	max-height: 100px;
	max-width: 100px;
	vertical-align: middle;
}

.rembox {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	width: 100px;
	height: 30px;
	line-height: 30px;
	font-size: 14px;
	color: #fff;
	text-align: center;
	background-color: #009688;
	cursor: pointer;
}

.rembox:hover {
	background-color: #cc3300;
}

body {
	font-family: "微软雅黑";
}

.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	background-color: black;
	/* z-index越大 就在上面 */
	z-index: 1001;
	-moz-opacity: 0.6;
	opacity: .60;
	filter: alpha(opacity = 60);
}

.white_content {
	display: none;
	position: absolute;
	top: 25%;
	left: 25%;
	width: 50%;
	height: 50%;
	padding: 16px;
	/*border: 16px solid orange;*/
	background-color: white;
	z-index: 1002;
	overflow: auto;
}
</style>
</head>

<body id="body">
	<div style="clear: both;"></div>
	<div id="light" class="white_content" style="display: none">
		<form method="post" id="form21">
			<input type="hidden" id="uid" name="uid"
				value="${sessionScope.user.uid }"> <br> 姓名 :<input
				type="text" name="name" id="name" style="border: 0px; color: blue"
				readonly="readonly" value="${sessionScope.user.sname }" /> <br>
			用户名 :<input type="text" name="username" id="username"
				style="border: 0px; color: blue" readonly="readonly"
				value="${sessionScope.user.suser }" /> <br>登录密码:<input
				type="password" name="text" id="password"
				style="border: 0px; color: blue" readonly="readonly"
				value="${sessionScope.user.spwd }" /> <br>手机号:<input
				type="text" name="phone" id="phone" style="border: 0px; color: blue"
				readonly="readonly" value="${sessionScope.user.sphone }" /> <br>
			性别:<input type="text" name="ssex" id="
				ssex"
				style="border: 0px; color: blue" readonly="readonly"
				value="${sessionScope.user.ssex }" /> <br>出生日期:<input
				type="text" name="birth" id="birth" style="border: 0px; color: blue"
				readonly="readonly" value="${sessionScope.user.dbirth }" /> <br>Email:<input
				type="text" name="email" id="email" style="border: 0px; color: blue"
				readonly="readonly" value="${sessionScope.user.semail }" /> <br>地址:<input
				type="text" name="address" id="address"
				style="border: 0px; color: blue" readonly="readonly"
				value="${sessionScope.user.saddress }" /> <br> <input
				type="button" value="修改个人信息" onclick="three()">
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="修改密码"
				onclick="five()"><br>
		</form>
		<a href="index.jsp" onclick="two()"><input type="button"
			value="关闭"></a>
	</div>
	<div id="fade" class="black_overlay"></div>

	<div id="light1" class="white_content">
		<h2>个人资料</h2>
		<form id="form22">
			<input type="hidden" id="uid1" name="uid1"
				value="${sessionScope.user.uid }"> <br> 姓名 :<input
				type="text" name="name1" id="name1"
				value="${sessionScope.user.sname }" /> <br> 用户名 :<input
				type="text" name="username1" id="username1"
				value="${sessionScope.user.suser }" /> <br>手机号:<input
				type="text" name="phone1" id="phone1"
				value="${sessionScope.user.sphone }" /> <br> <input
				type="hidden" name="ssex1" id="ssex1"
				value="${sessionScope.user.ssex }" /> 性别:<input type="radio"
				name="sex1" value="男" />男<input type="radio" name="sex1" value="女" />女<br>出生日期:<input
				type="Date" name="birth1" id="birth1"
				value="${sessionScope.user.dbirth }" /> <br>Email:<input
				type="text" name="email1" id="email1"
				value="${sessionScope.user.semail }" /> <br>地址:<input
				type="text" name="address1" id="address1"
				value="${sessionScope.user.saddress }" /> <br> <input
				type="button" value="提交" onclick="save()"><br>
		</form>
		<a href="javascript:void(0)" onclick="four()"><input type="button"
			value="关闭"></a>
	</div>
	<div id="fade1" class="black_overlay"></div>


	<div id="light2" class="white_content">
		<h2>修改密码</h2>
		<form id="form23">
			<input type="hidden" id="uid2" name="uid2" value=""> <br>旧密码:<input
				type="password" name="password0" id="password0" /><br> 新密码:<input
				type="password" name="password1" id="password1" /><br>确认密码:<input
				type="password" name="password2" id="password2" value="" /> <br>
			<br> <input type="button" value="提交" onclick="savePassword()"><br>
		</form>
		<a href="javascript:void(0)" onclick="six()"><input type="button"
			value="关闭"></a>
	</div>
	<div id="fade2" class="black_overlay"></div>


	<div class="dengl">
		<div>
			<ul class="dengul">
				<li>您好！欢迎来到电商网城，够你所购&nbsp;&nbsp; <a href="login.html"
					id="login">登录</a>&nbsp;&nbsp; <a href="register.html" id="reg">注册</a><a
					href="http://localhost:8080/store/UserWeb?m=exit" id="exit"
					style="visibility: hidden">退出登录</a>
				</li>
				<li class="dengfl dengo"><a id="dengomy" onclick='one()'>用户中心</a></li>
				<li class="dengo"><a id="car" href="myshop.jsp">我的购物车</a></li>
				<li class="dengo"><a id="denmyorder" href="myorder.html">我的订单</a>
				</li>
				<li class="dengo"><a href="help.html">帮助中心</a></li>
				<li class="dengo"><a href="feedback.html">意见反馈</a></li>

			</ul>
		</div>
	</div>
	<div class="zhandlog">

		<div class="logsu">
			<a href="index.jsp"><img class="logo" src="imgeas/logo1.jpg"></a>
			<div class="zhan"></div>
			<div class="sosu">
				<div class="searchbig">
					<input class="logtex" name="search" type="text" id="search"
						placeholder="请输入商品名称" /> <input class="logsub" name="0"
						type="submit" value="搜 索" onclick="search()" />
					<div id="shophover">

						<ul id="shoplik">
							<li>商品名</li>
						</ul>

					</div>
				</div>

			</div>
		</div>
	</div>
	<div id="header">
		<div class="headh">
			<a class="heafenl"><i class="heafots">&#xe601;</i> 全部商品分类</a> <a
				href="index.jsp" class="heaxz">首 页</a>

		</div>
		<!-- 分类显示的地方-->
		<div class="heafenlx">
			<ul id="heafenul">


			</ul>
		</div>
		<!-- 首页图片-->
		<div class="healunb" class="big_pic_t">
			<div class="big_pic_s">
				<img src="imgeas/FileHandlerqa.png" /> <img
					src="imgeas/FileHandlerq.jpg" />
			</div>

		</div>
		<div class="heagg">
			<div class="heatab">
				<p>公告</p>
				<p>订单动态</p>
			</div>
			<div class="heagongg">
				<ul class="heaggone">这是公告
				</ul>
				<ul class="headingd">这是订单动态
				</ul>
			</div>
		</div>
	</div>
	<div id="banner"></div>
</body>
<script type="text/javascript">
	$(function() {
		$
				.get(
						"http://localhost:8080/store/ProductTypeWeb?m=treelist",
						null,
						function(data) {
							if (data != null) {
								var html = "";
								//动态生成数据
								for (i = 0; i < data.length; i++) {
									//获取每一个一级分类 
									var onecate = data[i];
									html += '<li class="fenlifi" name="3"><i class="heafots">&#xe605;</i>'
											+ onecate.text;
									html += '<div class="heafotxx" >'
											+ '<h4 class="heafothfo">'
											+ onecate.text + '</h4>';
									html += '<ul class="liuliuo">'
											+ '<li class="heafotxxli" >';
									//拼接二级分类
									for (var j = 0; j < onecate.children.length; j++) {
										var twocate = onecate.children[j];

										html += '<h2><a href="productlist.jsp?i='
												+ twocate.id
												+ '" target="_blank" name="107">'
												+ twocate.text + '</a></h2>';

									}
									html += '	</li>' + '	</ul>' + '	</div>';
								}
								html += "</li>";
							}
							$("#heafenul").html(html);

							//绑定事件
							$("#heafenul>li").mouseover(
									function() {
										//显示当前选中的分类的div
										$(this).children("div").css("display",
												"block");
										//某个节点的所有兄弟节点 siblings
										$(this).siblings().children("div").css(
												"display", "none");
									})
						});

	});

	$(document)
			.ready(
					function() {
						$
								.ajax({
									url : "http://localhost:8080/store/IsUserLogin",
									type : "post",
									success : function(data) {
										if (data == 1) {
											document.getElementById('login').style.display = 'none';
											document.getElementById('reg').style.display = 'none';
											document.getElementById('exit').style.visibility = "visible";
											document.getElementById('car').style.visibility = "visible";
											document
													.getElementById('denmyorder').style.visibility = "visible";
											document.getElementById('dengomy').style.visibility = "visible";

										} else {
											document.getElementById('login').style.visibility = 'visible';
											document.getElementById('reg').style.visibility = 'visible';
											document.getElementById('exit').style.visibility = "hidden";
											document.getElementById('car').style.visibility = "hidden";
											document
													.getElementById('denmyorder').style.visibility = "hidden";
											document.getElementById('dengomy').style.visibility = "hidden";
										}
									}
								})
					})
	function one() {
		$(document)
				.ready(
						function() {
							$
									.ajax({
										url : "http://localhost:8080/store/IsUserLogin",
										type : "post",
										success : function(data) {
											if (data == 1) {
												document
														.getElementById('light').style.display = 'block';
												document.getElementById('fade').style.display = 'block';
											} else {
												alert("你尚未登录");
												//	window.location.href = "http://localhost:8080/store/index.jsp";
											}
										}
									})
						})
	}

	function two() {
		$("form21").submit();
		document.getElementById('light').style.display = 'none';
		document.getElementById('fade').style.display = 'none';
	}

	function three() {
		document.getElementById('light1').style.display = 'block';
		document.getElementById('fade1').style.display = 'block';
		var sex = document.getElementById('ssex1').value;
		if (sex == "男") {
			$(":radio[name='sex1'][value='男']").prop("checked", "checked");
		} else {
			$(":radio[name='sex1'][value='女']").prop("checked", "checked");
		}
	}

	function four() {
		$("form22").submit();
		document.getElementById('light1').style.display = 'none';
		document.getElementById('fade1').style.display = 'none'
	}

	function save() {
		$.ajax({
			url : "http://localhost:8080/store/UserWeb?m=save",
			type : "post",
			data : $('#form22').serialize(),
			success : function(data) {
				if (data == 1) {
					alert("信息修改成功");
					location.reload();
					one();
				} else if (data == -1) {
					alert("该手机号已经被绑定");
				} else {
					alert("修改失败");
				}
			}
		})
	}

	function five() {
		document.getElementById('light2').style.display = 'block';
		document.getElementById('fade2').style.display = 'block';
	}

	function six() {
		$("form23").submit();
		document.getElementById('light2').style.display = 'none';
		document.getElementById('fade2').style.display = 'none';
	}
	function savePassword() {
		$
				.ajax({
					url : "http://localhost:8080/store/UserWeb?m=savepass",
					type : "post",
					data : $('#form23').serialize(),
					success : function(data) {
						if (data == -2) {
							alert("新密码输入不一致");
						} else if (data == 1) {
							alert("修改已更改，请重新登录");
							window.location.href = "http://localhost:8080/store/login.html";
						} else if (data == -1) {
							alert("旧密码错误");
						} else {
							alert("修改失败");
						}
					}
				})
	}
	function search() {
		var spname = $("#search").val();
		var url = "http://localhost:8080/store/searchdrugs.html?s=" + spname;
		var u=encodeURI(url);
		window.location.href = u;
	}
</script>
</html>