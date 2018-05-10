<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="icon" href="images/logo.ico">
<title>XXXX物流-注册页面</title>
<link rel="stylesheet" href="${basePath}driver/css/login.css" />
<body>
<div class="register-container">
	<h1>司机注册</h1>
	<form action="${basePath}app/driver/regist" method="post" id="registerForm">
    	<div>
			<input type="text" id="cezuDH" name="cezuDH" class="phone_number" placeholder="输入手机号码" autocomplete="off" id="number"/>
		</div>
        <div>
			<input type="password" id="cezuMM" name="cezuMM" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="password" id="cezuMM" name="cezuMM" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="text" id="cezuMZ" name="cezuMZ" class="username" placeholder="真实姓名" autocomplete="off"/>
		</div>
        <div>
			<input type="text" id="cezuID" name="cezuID" class="id" placeholder="输入身份证号码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<!-- 
        <div>
			<input type="" name="email" class="" placeholder="输入手机验证码" style="width:170px;" />
            <button type="button" style="width:90px;">点击获取</button>
		</div>
		 -->
        <div>
        	<input type="text" id="" name="qiceCP" placeholder="输入汽车车牌">
        </div>
        <div>
			<input type="text" id="" name="qiceXH" class="cell_number" placeholder="输入汽车型号" autocomplete="off" id="number"/>
		</div>
        <div style="float:left; margin-top:10px;">
			注册即代表同意<a href="agreement.html" target="_blank">&laquo;会员注册协议&raquo;</a>
		</div>
		<button id="submit" type="submit">注 册</button>
        <button type="reset" style="background:#F0AD4E;">重 置</button>
	</form>
	<a href="login.jsp">
		<button type="button" class="register-tis">已经有账号？</button>
	</a>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/common.js"></script>
<!--背景图片自动更换-->
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>
</body>
</html>