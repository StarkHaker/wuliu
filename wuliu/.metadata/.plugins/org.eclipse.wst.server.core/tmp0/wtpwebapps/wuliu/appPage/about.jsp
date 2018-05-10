<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>兴趣小队社交网站</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="keywords" content="">
<meta name="description" content="">
<LINK rel="Bookmark" href="favicon.ico" >
<LINK rel="Shortcut Icon" href="favicon.ico" />


<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/Hui-iconfont/1.0.8/iconfont.min.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/css/common.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/pifu/pifu.css" />

 <script type="text/javascript" src="${basePath}appPage/jquery/jquery.min.js"></script>

<!-- <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } function showSide(){$('.navbar-nav').toggle();}</script> -->
<script type="text/javascript">
function ss(){
	
	console.log("-------------------------------");
	  $("#person").empty();
	$.ajax({
         url : "${basePath}/app/sysPersonal/Message",
         type : "post",
         dataType : "json",
         data :{"userName":"${sessionScope.SESSION_INSIDERINFO.userName}"},
         cache : false,
         async : false,
         success : function(data) {
             var sex;
             if(data[0].sex==1){
            	 sex="男";
             }else{
            	 sex="女"; 
             }
        	 var sdk='<tr><td>'+'用户名'+'</td><td>'
               +data[0].userName+'</td></tr>'
               +'<tr><td>'+'账号'+'</td><td>'
               +data[0].account+'</td></tr>'
               +data[0].passwd+'</td></tr>'
               +'<tr><td>'+'性别'+'</td><td>'
               +sex+'</td></tr>'
               +'<tr><td>'+'手机号'+'</td><td>'
               +data[0].phone+'</td></tr>'
               +'<tr><td>'+'签名'+'</td><td>'
               +data[0].motto+'</td></tr>';
               $("#person").append(sdk)
         },

	        error : function() {
	        	alert("出错了1");
	        }

	    });
}

           function wzll(){
        	   window.open("${basePath}appPage/Friend.jsp","newwindow", "height=200, width=400, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")
}
           function asdf(){
        	   alert("你个丑逼还敢提意见");
}
           function getFileUrl(sourceId) { 
        	   var url; 
        	   if (navigator.userAgent.indexOf("MSIE")>=1) { // IE 
        	   url = document.getElementById(sourceId).value; 
        	   } else if(navigator.userAgent.indexOf("Firefox")>0) { // Firefox 
        	   url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0)); 
        	   } else if(navigator.userAgent.indexOf("Chrome")>0) { // Chrome 
        	   url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0)); 
        	   } 
        	   return url; 
        	   } 

        	   /** 
        	   * 将本地图片 显示到浏览器上 
        	   */ 
        	   function preImg(sourceId, targetId) { 
        	   var url = getFileUrl(sourceId); 
        	   var imgPre = document.getElementById(targetId); 
        	   imgPre.src = url; 
        	   }          
        
           
           </script> 
</head>
<body>
<c:import url="top.jsp"></c:import>
<!--导航条-->
<nav class="breadcrumb">
    <div class="container"> <i class="Hui-iconfont">&#xe67f;</i> <a href="index.html" class="c-primary">首页</a> <span class="c-gray en">&gt;</span>  <span class="c-gray">关于</span> </div>
</nav>
<br/>

<br/>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-4 column">
		<div style="text-align:center">
		<img  src="${basePath}appPage/userPic/${sessionScope.SESSION_INSIDERINFO.userPic}" class="img-circle" style="height:100px;width: 100px ;border-radius:10px 10px 10px 10px;" >

		</div>
		<ul class="list-group" >
  
    <li class="list-group-item"><a class="btn btn-info btn-block" onclick="wzll()" >添加好友 </a></li>
    <li class="list-group-item"><a class="btn btn-info btn-block" onclick="wzll()">我的好友 </a></li>
    <li class="list-group-item" ><a class="btn btn-info btn-block" href="javascript:ss();" id="test123">个人信息 <span class="badge"></span></a></li>
    <li class="list-group-item"><a class="btn btn-info btn-block" onclick="asdf()">用户反馈 <span class="badge"></span></a></li>
    <li class="list-group-item"><a class="btn btn-info btn-block" href="${basePath}app/sysPersonal/ModifyPwd?UserName=${sessionScope.SESSION_INSIDERINFO.userName}">修改密码 <span class="badge"></span></a></li>
    <form action="${basePath}app/friend/dopatic" method="POST" enctype="multipart/form-data">  
     <input type="file" name="file" id="imgOne" onchange="preImg(this.id,'imgPre');">
			</input>
	<input type="submit"/>
	</form>							
</ul>
		</div>
		<div class="col-md-8 column">
	<table>
	  <thead>
	  </thead>
	<tbody id="person">
	</tbody>
	</table>
	
	<div style="border: solid 1px;">
	</div>
		</div>
	
	</div>
</div>

</footer> 
<!-- <script> $(function(){ $(window).on("scroll",backToTopFun); backToTopFun(); }); </script> -->
</body>
</html>