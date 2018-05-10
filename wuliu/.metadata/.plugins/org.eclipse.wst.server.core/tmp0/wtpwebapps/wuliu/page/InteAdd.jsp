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
		    <label for="exampleInputName2">兴趣类型新增</label>
      </div>
      <div class="panel-body">
      	<div class="row">
		  <div class="col-md-4"></div>
		  <div class="col-md-4">
			  <div class="panel panel-success">
	            <div class="panel-heading">兴趣新增</div>
	            <div class="panel-body">
	              <form action="" method="post">
	                <div class="form-group">
	                  <label for="exampleInputEmail1">兴趣类型</label>
	                  <input type="text" class="form-control" id="Itype" value="">
	                </div>
	                <center><a class="btn btn-success" id="add">Submit</a></center>
	              </form>
	            </div>
	          </div>
		  </div>
		  <div class="col-md-4"></div>
		</div>
      </div>
      <div class="panel-footer">
	  </div>
    </div>
    <form action="${basePath}Inte/add_success" method="post" id="addForm">
    	<input type="hidden" id="_Itype" name="itype" />
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
  	$("#add").click(function(){
  		if(check()){
	  		$("#_Itype").val($("#Itype").val());
	  		$("#addForm").submit();
  		}
  	});
  	function check(){
  		var itype = $("#Itype").val();
  		if(itype.trim() == ""){
  			dia("角色类型不能为空");
  			return false;
  		}
  		return true;
  	}
  	
  	function dia(msg){
  		var dialog = jqueryAlert({
   			'content' : msg,
			'modal'   : true,
			'buttons' :{
				'确定' : function(){
					dialog.close();
				}
			}
		});
  	}
  </script>
</html>