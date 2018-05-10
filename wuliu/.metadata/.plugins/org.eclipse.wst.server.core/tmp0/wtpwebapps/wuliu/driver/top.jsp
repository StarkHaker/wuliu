<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--顶部-开始-->
<div style=" background:#EBEBEB; width:100%; height:80px; line-height:80px;">
    <div class="container">
        <div class="row">
            <span class="col-sm-7 col-sm-offset-1 col-xs-6 col-xs-offset-1"><img src=" images/logo.png" class="img-responsive" alt="XXXX物流"></span>
            <span class="col-sm-4 col-xs-5" style="float:right">
            </span>
            <%
		        if(session.getAttribute("SESSION_Adriver") == null){
		    %>
            <span class="col-sm-4 col-xs-5" style="float:right">
            	<a href="login.jsp" target="_blank" id="login">登录</a>&nbsp;
                <a href="register.jsp" target="_blank" id="reg">注册</a>
            </span>
            <%
	                   		}else{
	              %>  
	               <span class="col-sm-4 col-xs-5" style="float:right">
            	<a a href="#" target="_blank">${SESSION_Adriver.cezuMZ}</a>&nbsp;&nbsp;
                <a href="${basePath}app/driver/loginout" target="_blank" id="reg">退出</a>
            </span>
	              
	               <% 
		                        	 } 
		                         %>
        </div>
    </div>
</div>
<!--顶部-结束-->
</body>
</html>