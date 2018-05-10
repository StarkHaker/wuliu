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
    <link href="${basePath}Resources/css/menu.css" rel="stylesheet">
    <link rel="stylesheet" href="${basePath}Resources/css/zTreeStyle/zTreeStyle.css">


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
    <input type="hidden" value="${basePath}" id="basePath"/>
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
      	权限管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      	<a class="btn btn-success" id="roleAllot">角色分配</a>
      	<button type="button" class="btn btn-success" id="menuAllot">菜单分配</button>
      </div>
      <div class="panel-body">
		<div class="row">
		  <div class="col-md-4 col-xs-4">
              <ul id="userTree" class="ztree"></ul>
		  </div>
		  <div class="col-md-4 col-xs-4">
		  	<ul id="roleTree" class="ztree"></ul>
		  </div>
		  <div class="col-md-4 col-xs-4">
		  	<ul id="menuTree" class="ztree"></ul>
		  </div>
		</div>
      </div>
      <div class="panel-footer">

	  </div>
    </div>
    
    
        <div id="rMenu" class="rMenu" onmouseout="divOut();" onmouseover="divOver()">
            <ul class="rMenuUi">
                <li class="rMenuLi" onmousemove="move(this);" onclick="initAddUser();">新增</li>
                <li class="rMenuLi disabled" onmousemove="move(this);" onclick="initModifyUser();">修改</li>
                <li class="rMenuLi disabled" onmousemove="move(this);" onclick="removeUser();">删除</li>
            </ul>
        </div>
        
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="userTitle"></h4>
		      </div>
		      <div class="modal-body">
		      	 <form action="" method="post">
	                <div class="form-group">
	                  <label for="exampleInputEmail1">账号</label>
	                  <input type="text" class="form-control" id="Account" placeholder="账号" required >
	                </div>
	                <div class="form-group">
	                  <label for="exampleInputPassword1">用户名</label>
	                  <input type="text" class="form-control" id="userName" placeholder="用户名">
	                </div>
	                <div class="form-group">
	                  <label for="exampleInputPassword1">密码</label>
	                  <input type="password" class="form-control" id="passwd" placeholder="密码">
	                </div>
	              </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary" id="userSubmit">提交</button>
		      </div>
		    </div>
		  </div>
		</div>

        <!-- 用户组树右键菜单 -->
        <div id="groupMenu" class="rMenu" onmouseout="divOut();" onmouseover="divOver()">
            <ul class="rMenuUi">
                <li class="rMenuLi" onmousemove="move(this);" onclick="initAddGroup();">新增</li>
                <li class="rMenuLi disabled" onmousemove="move(this);" onclick="modifyOfMenu();">修改</li>
                <li class="rMenuLi disabled" onmousemove="move(this);" onclick="removeGroup();">删除</li>
            </ul>
        </div>

        <!-- 菜单树右键菜单 -->
        <div id="menuMenu" class="rMenu" onmouseout="divOut();" onmouseover="divOver()">
            <ul class="rMenuUi">
                <li class="rMenuLi menuClass" onmousemove="move(this);" onclick="initAddMenu();">新增菜单</li>
                <li class="rMenuLi disabled menuClass" onmousemove="move(this);" onclick="initAddAction();">新增动作</li>
                <li class="rMenuLi disabled" onmousemove="move(this);" onclick="modifyOfMenu();">修改</li>
                <li class="rMenuLi disabled" onmousemove="move(this);" onclick="removeOfMenu();">删除</li>
            </ul>
        </div>
    
    <!-- 蒙板 -->
        <div class="window" id="cover"><div class="tip"></div></div>
    
    <!-- 用户操作界面 -->
   
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${basePath}Resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${basePath}Resources/js/bootstrap.min.js"></script>
	<script src='${basePath}Resources/js/jquery.ztree.all.js'></script>
	<script src='${basePath}Resources/js/auth.js'></script>
	    <script src='${basePath}Resources/js/SyntaxHighlighter/shCore.js'></script>
	<script src='${basePath}Resources/js/SyntaxHighlighter/makeSy.js'></script>
	<script src='${basePath}Resources/js/alert.js'></script>
	<script src='${basePath}Resources/js/alert-api.js'></script>
	

  </body>

</html>