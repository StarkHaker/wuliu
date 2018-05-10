<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

    <title>网站后台管理</title>

	
    <!-- Bootstrap -->
    <link rel="stylesheet" href="${basePath}Resources/css/common.css">
	<link rel="stylesheet" href="${basePath}Resources/js/SyntaxHighlighter/shCoreDefault.css">
	<link rel="stylesheet" href="${basePath}Resources/css/alert.css">
	<link rel="stylesheet" href="${basePath}Resources/css/style.css">
    <link href="${basePath}Resources/css/bootstrap.min.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
      .nav-style{
        margin-right: 25px;
      }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-default">
      <div class="navbar-header">
        <a href="#" class="navbar-brand">后台管理</a>
      </div>
      <ul class="nav navbar-nav navbar-right nav-style">
        <li><a href="#">欢迎你${sessionname}</a></li>
        <li><a href="${basePath}login/loginout"><span class="glyphicon glyphicon-off"></span>&nbsp;注销</a></li>
      </ul>
    </nav>
    <div class="panel panel-default">
      <div class="panel-heading">
      	<form class="form-inline">
		  <div class="form-group">
		    <label for="exampleInputName2">用户管理&nbsp;&nbsp;&nbsp;用户名</label>
		    <input type="text" class="form-control" id="username" value="${UserName}" placeholder="Jane Doe">
		  </div>
		  <a class="btn btn-success" id="find">查询</a>
		  <!--  <a class="btn btn-info">修改</a>-->
		  <a class=" alert-api-button btn btn-danger " id="delete">删除</a>
		</form>
      </div>
      <div class="panel-body">
        <table class="table table-bordered table-hover">
          <tr>
          	<th>#</th>
            <th>编号</th>
            <th>账号</th>
            <th>用户名</th>
            <th>密码</th>
          </tr>
          <c:forEach items="${list}" var="user" varStatus="start">
          	  <tr>
          	  	<td><input type="checkbox" value="${user.uid}" /></td>
	            <td>${start.index + 1}</td>
	            <td>${user.account}</td>
	            <td>${user.userName}</td>
	            <td>${user.passwd}</td>
	          </tr>
          </c:forEach>
        </table>
      </div>
      <div class="panel-footer">
		<center>
			<%@ include file="../common/Page.jsp" %>
		</center>
	  </div>
    </div>
    
    <form action="" id="findForm" method="get">
		<input type="hidden" name="_method" value="GET">
    </form>
    
    <form action="" id="deleteForm" method="post">
    	<input type="hidden" name="_method" value="DELETE"/>
    </form>
    
    <form action="${basePath}user/serch" id="pageForm" method="post">
    	<input type="hidden" id="NewPage" name="NewPage" value="">
		 <input type="hidden" id="_userName" name="UserName" value="">
    </form>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${basePath}Resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${basePath}Resources/js/bootstrap.min.js"></script>
    <script src='${basePath}Resources/js/SyntaxHighlighter/shCore.js'></script>
	<script src='${basePath}Resources/js/SyntaxHighlighter/makeSy.js'></script>
	<script src='${basePath}Resources/js/alert.js'></script>
	<script src='${basePath}Resources/js/alert-api.js'></script>

  </body>
	<script type="text/javascript">
		
		function page(pagenum){
			$("#NewPage").val(pagenum);
			$("#_userName").val($("#username").val());
			$("#pageForm").submit();
		}	

		
	   	$("#find").click(function(){
	   		var url = "${basePath}user/"+$("#username").val();
	   		$("#findForm").attr("action",url);
	   		$("#findForm").submit();
	   	});
	   	
	   	//$('input[type=checkbox]:checked')
	   	var message;
	   	$("#delete").click(function(){
	   		if(check()){
	   			var url = "${basePath}user/"+$('input[type=checkbox]:checked').val();
	   			$("#deleteForm").attr("action",url);
	   			$("#deleteForm").submit();
	   		}
	   	});

	   	function check(){

	   		var num = $('input[type=checkbox]:checked').length;
	   		if(num == 0){
		   		var dialog = jqueryAlert({
		   			'content' : '每次只能选择一个用户',
					'modal'   : true,
					'buttons' :{
						'确定' : function(){
							dialog.close();
						}
					}
				});
	   			return false;
	   		}else if(num > 1){
		   		var dialog = jqueryAlert({
		   			'content' : '每次只能选择一个用户',
					'modal'   : true,
					'buttons' :{
						'确定' : function(){
							dialog.close();
						}
					}
				});
	   			return false;
	   		}else{
	   			return true;
	   		}
	   	}
   </script>
</html>