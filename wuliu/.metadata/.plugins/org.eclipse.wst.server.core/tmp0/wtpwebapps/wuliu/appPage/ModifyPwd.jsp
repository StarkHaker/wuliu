<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>login</title>
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
								<div id="login" class="animate form">
									<form action="${basePath}app/sysPersonal/dosave?Iid=${user[0].iid}" autocomplete="on" method="post">
										<h1>修改</h1>
										<p>
											<label for="username" class="uname" data-icon="u">
												用户名 </label> <input id="username" name="UserName"
												required="required" type="text"  value="${user[0].userName}"/>
										</p>
										<p>
											<label for="password" class="youpasswd" data-icon="p">
												密码 </label> <input id="password" name="Passwd" required="required"
												type="password" placeholder="请输入密码"  value="${user[0].passwd}" />
										</p>
										
										<p>
											<label for="Phone" class="youpasswd" data-icon="p">
												手机号 </label> <input id="Phone" name="phone" required="required"
												type="number" placeholder="请输入手机号"  value="${user[0].phone}" />
										</p>
											<p>
											<label for="Motto" class="youpasswd" data-icon="p">
												签名 </label> <input id="Motto" name="Motto" required="required"
												type="text" placeholder="请输入签名"  value="${user[0].motto}" />
										</p>
										<p class="login button">
											<input type="submit" value="修改" />
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
	<script src="${basePath}appPage/js/TweenLite.min.js"></script>
	<script src="${basePath}appPage/js/EasePack.min.js"></script>
	<script src="${basePath}appPage/js/rAF.js"></script>
	<script src="${basePath}appPage/js/demo-1.js"></script>
	<script type="text/javascript" >
		//验证信息
	
	</script>
</body>
</html>