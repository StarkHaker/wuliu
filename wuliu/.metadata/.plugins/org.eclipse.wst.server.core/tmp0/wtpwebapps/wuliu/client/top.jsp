<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

<link rel="stylesheet" type="text/css" href="${basePath}client/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}client/css/common.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}client/css/thems.css"/>
<script type="text/javascript" src="${basePath}client/js/jquery-1.8.3.min.js"></script

<!--滑动门-->
<script type="text/javascript">
	$(function() {
		$(".tabBox .tabNav li").click(
				function() {
					$(this).siblings("li").removeClass("now");
					$(this).addClass("now");
					$(this).parents(".tabBox").find(".tabCont").css("display",
							"none");
					var i = $(this).index();
					$(this).parents(".tabBox").find(".tabCont:eq(" + i + ")")
							.css("display", "block");
					//console.log(i);
				});
	})
</script>
<!--滑动门-->
</head>
<body>
	<!--头部-->
	<div class="head_bg">
		<div class="head clearfix">
			<div class="logo">
				<a href=""><img src="images/logo.png" alt="" /></a>
			</div>
			<div class="menu">
				<div class="head_top">
			<%
		        if(session.getAttribute("SESSION_Aclient") == null){
		    %>
					<a href="login.jsp">登录</a> <a href="login.jsp">注册</a> 
			 <%
	                   		}else{
	              %>
	             	 <a href="#">${SESSION_Aclient.kehuYX}</a> <a href="${basePath}app/client/loginout">退出</a> 
			 <% 
		                        	 } 
		                         %>
					<a href="">设为首页</a>
					<a href="">加入收藏</a>
				</div>
				<ul class="clearfix">
					<li class="now"><a href="index.html">首页</a></li>
					<li><a href="order.html">我的物流</a></li>
					<li class="news"><a href="news.html">消息</a></li>
					<li><a href="">网站地图</a></li>
					<li><a href="">帮助</a></li>
					<li><a href="about.html">关于xxxx物流</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--头部-->
</body>
</html>