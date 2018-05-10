<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="icon" href="${basePath}driver/images/logo.ico">
<title>XXXX物流-登录页面</title>
<link rel="stylesheet" href="${basePath}driver/css/login.css" />
<body>
<div class="login-container">
    <h1>司机登录</h1>
    <form action="${basePath}app/driver" method="post" id="loginForm">
        <div>
			<input type="text" name="cezuDH" id="cezuDH" class="phone_number" placeholder="输入手机号码" autocomplete="off" id="number"/>
        </div>
        <div>
            <input type="password" name="cezuMM" id="cezuMM" class="password" placeholder="密码" oncontextmenu="return false" onpaste="return false" />
        </div>
        <div>
        	<input type="text" placeholder="请输入验证码" style="width:150px; float:left"><img src="images/code1.png" style="float:right; display:inline-block; margin-top:28px;">
        </div>
        <button id="submit" type="submit">登 陆</button>
        <button type="reset" style="background:#F0AD4E;">重 置</button>
    </form>
    <a href="register.jsp">
    	<button type="button" class="register-tis">还没有账号？</button>
    </a>
</div>
<script src="${basePath}driver/js/jquery.min.js"></script> 
<script src="${basePath}driver/js/common.js"></script> 
<!--背景图片自动更换--> 
<script src="${basePath}driver/js/supersized.3.2.7.min.js"></script> 
<script src="${basePath}driver/js/supersized-init.js"></script> 
<!--表单验证--> 
<script src="${basePath}driver/js/jquery.validate.min.js?var1.14.0"></script>
</body>
</html>