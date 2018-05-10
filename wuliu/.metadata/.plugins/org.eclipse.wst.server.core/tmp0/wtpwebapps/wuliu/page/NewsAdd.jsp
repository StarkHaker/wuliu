<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath", basePath);
%>
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
    
    <script type="text/javascript" charset="utf-8" src="${basePath}ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${basePath}ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="${basePath}ueditor/lang/zh-cn/zh-cn.js"></script>


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
		    <label for="exampleInputName2">新闻发布</label>
      </div>
      <div class="panel-body">
      	<div class="row">
		  <div class="col-md-1"></div>
		  <div class="col-md-10">
		  	<form action="${basePath}news/add_success">
		  		<script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
		  		<a class="btn btn-danger" >新闻发布</a>
		  	</form>
		  </div>
		  <div class="col-md-1"></div>
		</div>
      </div>
      <div class="panel-footer">
	  </div>
    </div>
    <form action="${basePath}role/add_success" method="post" id="addForm">
    	<input type="hidden" id="_Rname" name="Rname" />
    	<input type="hidden" id="_Rcode" name="Rcode"/>
    	<input type="hidden" id="_Describe" name="Describe"/>
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
	  		$("#_Rname").val($("#Rname").val());
	  		$("#_Rcode").val($("#Rcode").val());
	  		$("#_Describe").val($("#Describe").val());
	  		$("#addForm").submit();
  		}
  	});

  	function check(){
  		var rname = $("#Rname").val();
  		var rcode = $("#Rcode").val();
  		var describe = $("#Describe").val();
  		if(rname.trim() == ""){
  			dia("角色名不能为空");
  			return false;
  		}
  		if(rcode.trim() == ""){
  			dia("角色代码名不能为空");
  			return false;
  		}
  		if(describe.trim() == ""){
  			dia("角色描述不能为空");
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
  	
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
  </script>
</html>