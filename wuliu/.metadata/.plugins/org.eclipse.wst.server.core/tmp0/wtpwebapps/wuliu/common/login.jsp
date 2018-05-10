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
        <a href="#" class="navbar-brand">物流管理后台登录</a>
      </div>
      <ul class="nav navbar-nav navbar-right nav-style">
      </ul>
    </nav>

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">

          <div class="panel panel-default">
            <div class="panel-heading">用户登录</div>
            <div class="panel-body">
              <form>
                <div class="form-group">
                  <label for="exampleInputEmail1">用户名</label>
                  <input type="email" class="form-control" id="username" placeholder="用户名">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">密码</label>
                  <input type="password" class="form-control"  id="passwd" placeholder="密码">
                </div>
                <center><a class="btn btn-default" id="submit">Submit</a></center>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4"></div>
    </div>
    <form action="${basePath }/login/submit" method="post" id="loginForm">
    	<input type="hidden" name="UserName" id="_UserName">
    	<input type="hidden" name="Passwd" id="_Passwd">
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
	<script type="text/javascript">
		$("#submit").click(function(){
			$("#_UserName").val($("#username").val());
			$("#_Passwd").val($("#passwd").val());
			$("#loginForm").submit();
		});
   </script>
</html>