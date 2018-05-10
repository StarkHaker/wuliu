<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>兴趣小队社交网站</title>
<link href="${basePath}appPage/css/base.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${basePath}appPage/css/index.css" />
<script src="${basePath}appPage/js/move.js"></script>
<script src="${basePath}appPage/js/xunlei.js"></script>

</head>
<body>
<!--头部菜单-->
		<div class="top"> 
		    <div class="w t_cen">
		        <div class="t_c_logo"><a href="index.jsp"><img src="${basePath}appPage/images/logo.png" /></a></div>
		        <div class="t_c_lr t_c_left"></div>
		        <div class="t_c_cen">
		            <div class="t_c_top">
		            </div>
		            <div class="t_c_bottom">
		                <ul>
		                    <li class="thisli">
		                        <a href="${basePath}appPage/welcome.jsp"><em>兴趣首页</em><i>Home</i></a>
		                    </li>
		                    <li>
		                        <a href="${basePath}appPage/index.jsp"><em>兴趣中心</em><i>Interest </i></a>
		                    </li>
		                    <li>
		                        <a href="${basePath}app/replay/mood"><em>兴趣日志</em><i>Journal</i></a>
		                        <div class="Nodes">
		                            <img src="${basePath}appPage/images/menu_top.png" />
		                            <ul>
		                                <li><a href="#">类型1</a></li>
		                                <li><a href="#">类型2</a></li>
		                                <li><a href="#">类型3</a></li>
		                                <li><a href="#">类型4</a></li>
		                            </ul>
		                            <img src="${basePath}appPage/images/menu_bottom.png" />
		                        </div>
		                    </li>
		                    <li>
		                        <a href="${basePath}appPage/article.jsp"><em>兴趣小组</em><i>Group </i></a>
		                        <div class="Nodes">
		                            <img src="${basePath}appPage/images/menu_top.png" />
		                            <ul>
		                                <li><a href="#">小组1</a></li>
		                                <li><a href="#">小组2</a></li>
		                                <li><a href="#">小组3</a></li>
		                            </ul>
		                            <img src="${basePath}appPage/images/menu_bottom.png" />
		                        </div>
		                    </li>
		                    <li>
		                        <a href="${basePath}app/replay/jump"><em>留言板</em><i> Board</i></a>
		                    </li>
		                    
		                    <li>
		                        <a href="${basePath}app/group/jump"><em>小组管理</em><i>Manage</i></a>
		                    </li>
		                    <li>
		                        <a href="${basePath}app/friend/jump"><em>个人中心</em><i>My Center</i></a>
		                        <div class="Nodes">
		                            <img src="${basePath}appPage/images/menu_top.png">
		                            <ul>
		                           	    <li><a href="#">个人详情</a></li>
		                                <li><a href="#">个人信息</a></li>
		                            </ul>
		                            <img src="${basePath}appPage/images/menu_bottom.png" />
		                        </div>
		                    </li>
		                    
		                    	<%
		                    		if(session.getAttribute("SESSION_INSIDERINFO") == null){
		                    	%>
		                    	<li>
		                        <a href="#"><em>登录注册</em><i>Join Us</i></a>
		                          <div class="Nodes">
		                            <img src="${basePath}appPage/images/menu_top.png" />
		                            <ul>
		                                <li><a href="${basePath}appPage/login.jsp#toregister">点击注册</a></li>
		                                <li><a href="${basePath}appPage/login.jsp">点击登录</a></li>
		                            </ul>
		                            <img src="${basePath}appPage/images/menu_bottom.png" />
		                        </div>
		                        </li>
		                        <%
		                    		}else{
		                        %>
		                        <li>
		                         <a href="#"><em>${sessionScope.SESSION_INSIDERINFO.userName}</em><i>Join Us</i></a>
		                          <div class="Nodes">
		                            <img src="${basePath}appPage/images/menu_top.png" />
		                            <ul>
		                                <li><a href="${basePath}appPage/about.jsp">个人中心</a></li>
		                                <li><a href="${basePath}app/regist/logout">退出</a></li>
		                            </ul>
		                            <img src="${basePath}appPage/images/menu_bottom.png" />
		                        </div>
		                         </li>
		                         <% 
		                        	 } 
		                         %>
		                </ul>
		                <div class="thisMenu" id="thisMenu"></div>
		            </div>
		        </div>
		        <div class="t_c_lr t_c_right"></div>
		    </div>
		</div>

	
<!--/头部菜单-->

<!--引用JQuery-->
<script type="text/javascript" src="${basePath}appPage/js/jquery.js"></script>
<!-- <!--其他样式-->
<script type="text/javascript" src="${basePath}appPage/js/Other.js"></script> 
</body>
</html>