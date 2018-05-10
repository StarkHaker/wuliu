<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登陆</title>
<link rel="stylesheet" type="text/css" href="${basePath}appPage/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/css/demo.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/css/style3.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/css/animate-custom.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="${basePath}appPage/css/component.css" />
<!--[if IE]>
<script src="js/html5.js"></script>
<![endif]-->
</head>
<body>
	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header">
				<canvas id="demo-canvas"></canvas>
				<div class="logo_box">
					<section>
						<div id="container_demo">
							<!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
							<a class="hiddenanchor" id="toregister"></a> <a
								class="hiddenanchor" id="tologin"></a>
							<div id="wrapper">
								<div id="login" class="animate form" >
									<form action="${basePath}app/regist/login" autocomplete="on" method="post">
										<h1>登陆</h1>
										<p>
											<label for="username" class="uname" data-icon="u">
												用户名 </label> <input id="UserName" name="UserName"
												required="required" type="text" placeholder="请输入用户名" />
										</p>
										<p>
											<label for="password" class="youpasswd" data-icon="p">
												密码 </label> <input id="Passwd" name="Passwd" required="required"
												type="password" placeholder="请输入密码" />
										</p>
										 <p>
												   <label for="code" class="" data-icon="">
												验证码 </label>
										             <input type="text" id="code" name="code" class="text" maxlength="10" 
										             style="height: 20px;width:30%;margin-left: 0px;" placeholder="请输入验证码"/>
										              <img id="codeImg" alt="验证码" src="${basePath}app/admin/code" onclick="changeImg()"/>
						
										</p> 
										<p class="keeplogin">
											<input type="checkbox" name="loginkeeping" id="loginkeeping"
												value="loginkeeping" /> <label for="loginkeeping">记住密码</label>
										</p>
										<p class="login button">
											<input type="submit" value="登陆" onclick="login();"/>
										</p>
										<p class="change_link">
											没有账号！ <a href="#toregister" class="to_register">注册</a>
										</p>
									</form>
								</div>

								<div id="register" class="animate form" >
									<form action="${basePath}app/regist" autocomplete="on" method="post" onsubmit="return checkForm();">
										<h1>注册</h1>
										<p>
											<label for="usernamesignup" class="uname" data-icon="u">用户名</label>
											<input id="usernamesignup" name="usernamesignup"
												required="required" type="text" placeholder="输入用户名" />
											<span id="span1"></span>
										</p>
										<p>
											<label for="emailsignup" class="youmail" data-icon="e">
												邮箱</label> <input id="emailsignup" name="emailsignup"
												required="required" type="email" placeholder="输入邮箱" />
										</p>
										<p>
											<label for="passwordsignup" class="youpasswd" data-icon="p">密码
											</label> <input id="passwordsignup" name="passwordsignup"
												required="required" type="password" placeholder="输入密码" />
										</p>
										<p>
											<label for="passwordsignup_confirm" class="youpasswd"
												data-icon="p">确认密码 </label> <input
												id="passwordsignup_confirm" name="passwordsignup_confirm"
												required="required" type="password" placeholder="确认密码" />
										</p>
										<p class="signin button">

											<input type="submit" value="注册" />
										<p class="change_link">
											已有账号！ <a href="#tologin" class="to_register"> 登陆 </a>
										</p>
										</p>

									</form>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->
	<script type="text/javascript" src="${basePath}appPage/plugin/jquery/1.9.1/jquery.min.js"></script>
	<script src="${basePath}appPage/js/TweenLite.min.js"></script>
	<script src="${basePath}appPage/js/EasePack.min.js"></script>
	<script src="${basePath}appPage/js/rAF.js"></script>
	<script src="${basePath}appPage/js/demo-1.js"></script>
	<script type="text/javascript" >
       function changeImg() {
	 // 更换验证码
        var imgSrc = $("#codeImg");
        var src = imgSrc.attr("src");
        imgSrc.attr("src", chgUrl(src));
    }  
     //加入时间戳，去缓存机制 
    function chgUrl(url) {
        var timestamp = (new Date()).valueOf();if ((url.indexOf("&") >= 0)) {
            url = url + "&timestamp=" + timestamp;
        } else {
            url = url + "?timestamp=" + timestamp;
        }
        return url;
    }
     
   function login(){
	   var username=document.getElementById("UserName").value;    
      var password=document.getElementById("Passwd").value;    
      var code=document.getElementById("code").value;   	   
      var matchResult=true; 
      if(validcode==""){    
          alert("验证码不能为空！");
          matchResult=false;    
   	  }
      if(matchResult==true){  
          $.post("${basePath}app/regist/login", {usersname:username,password:pwd, code:code},function(data,status){  
             var error=data.error;  
             var result=data.result;    
             getPic();  
         if(error=="error"){  
             errors="true";  
             document.getElementById("dialogs").innerHTML="<h3>验证码错误，请重新输入！</h3>";  
             dialog();  
         }  
         if(result=="0"){  
             document.getElementById("dialogs").innerHTML="<h3>您输入的用户名不存在！</h3>";  
              document.getElementById("username").value="";  
             dialog();  
         }else if(result=="1"){  
             document.getElementById("dialogs").innerHTML="<h3>您输入的密码错误，请重新输入！</h3>";  
             document.getElementById("password").value="";  
             dialog();  
         }     
        },"json");  
      }    
     };  
  

	</script>
	<script>
	function checkForm(){
		// 校验确认密码:
		var password = document.getElementById("passwordsignup").value;
		var repassword = document.getElementById("passwordsignup_confirm").value;
		if(repassword != password){
			alert("两次密码输入不一致!");
			return false;
		}
	}
	
	function checkUsername(){
		// 获得文件框值:
		var username = document.getElementById("usernamesignup").value;
		// 1.创建异步交互对象
		var xhr = createXmlHttp();
		// 2.设置监听
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					document.getElementById("span1").innerHTML = xhr.responseText;
				}
			}
		}
		// 3.打开连接
		xhr.open("GET","${basePath}app/regist/user_findByName?username="+username,true);
		// 4.发送
		xhr.send(null);
	}
	
	function createXmlHttp(){
		   var xmlHttp;
		   try{ // Firefox, Opera 8.0+, Safari
		        xmlHttp=new XMLHttpRequest();
		    }
		    catch (e){
			   try{// Internet Explorer
			         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			      }
			    catch (e){
			      try{
			         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			      }
			      catch (e){}
			      }
		    }
			return xmlHttp;
		 }

	
	</script>
</body>
</html>