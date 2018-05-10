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
<meta name="keywords" content="兴趣小队">
<meta name="description" content="兴趣小队">
<LINK rel="Bookmark" href="favicon.ico" >
<LINK rel="Shortcut Icon" href="favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="/staticRes/js/html5shiv.js"></script>
<script type="text/javascript" src="/staticRes/js/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="${basePath}/appPage/plugin/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${basePath}/appPage/plugin/Hui-iconfont/1.0.8/iconfont.min.css" />
<link rel="stylesheet" type="text/css" href="${basePath}/appPage/css/common.css" />
<link rel="stylesheet" type="text/css" href="${basePath}/appPage/plugin/pifu/pifu.css" />
<link rel="stylesheet" type="text/css" href="${basePath}/appPage/plugin/wangEditor/css/wangEditor.min.css">
<link href="${basePath}appPage/css/huiyi8.css" type="text/css" rel="stylesheet"/> 
<script type="text/javascript" src="${basePath}/appPage/jquery/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } function showSide(){$('.navbar-nav').toggle();}</script>
</head>
<body>

<c:import url="top.jsp"></c:import>
<!--导航条-->
<nav class="breadcrumb">
  <div class="container"> <span class="c-gray"></span> <span class="c-gray"></span></div>
</nav>
<div class="contentOut">
			<ul class="tabs">
				<li class="current">
					<a href="#" title="tab1">我的小组</a>
				</li>
				<li>
					<a href="#" title="tab2">新增小组</a>
				</li>
				<li>
					<a href="#" title="tab3">小组成员</a>
				</li>
			</ul>
			<div class="content">

				<div class="tab1">
					<table class="zebra">
						<thead>
							<tr>
								<th>序号</th>
								<th>小组名称</th>
								<th>小组描述</th>
								<th>创建者</th>
								<th>创建时间</th>
							</tr>
						</thead>
						<tbody id="grouplist">
						</tbody>
					</table>
				</div>
				<div class="tab2">
					<div class="row">
					  <div class="col-md-2"></div>
					  <div class="col-md-8">
						  <form style="display:block;margin:0 auto;">
							<div id="">
								<div class="inp_Div" >
									<label>小组名称</label>
									<input placeholder="请输入标题" type="text" id="gname"/>
								</div>
							</div>
							<div class="">
								小组描述
								 <div class="mt-20" id="ct">
						            <div id="err" class="Huialert Huialert-danger hidden radius">成功状态提示</div>
						            <textarea class="textarea" id="textarea1" name="comment" style="height:200px;" placeholder=""></textarea>
						        </div>
								<div class="inp_Div">
									<label>小组类型</label>
									<select id="typeList">
										<option>---请选择---</option>
									</select>
								</div>
							</div>
							<!--  <div style="padding-left:10px ;">
								<label style="float: left;">描述</label>
								<div id="" style="float: left;">
									<textarea>
									
									</textarea>
								</div>
							</div>-->
							<div >
								<button class="btn btn-success" id="creatGroup">提交</button>
							</div>
						</form>
					  </div>
					  <div class="col-md-2"></div>
					</div>
					
				</div>
				<div class="tab3">
					<table class="zebra">
						<thead id="title">
							<tr>
								<th>序号</th>
								<th>小组名称</th>
								<th>小组描述</th>
								<th>创建时间</th>
							</tr>
						</thead>
						<tbody id="Watchlist">
						</tbody>
						
					</table>
					<center><button class="btn btn-success" id="back">返回</button></center>
				</div>
			</div>
		</div>
 <input type="hidden" value="${basePath}" id="basePath"/>
<script src="http://code.jquery.com/jquery-1.6.3.min.js"></script>  
<script type="text/javascript" src="${basePath}/appPage/plugin/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}/appPage/plugin/layer/3.0/layer.js"></script>
<script type="text/javascript" src="${basePath}/appPage/plugin/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${basePath}/appPage/plugin/pifu/pifu.js"></script>
<script type="text/javascript" src="${basePath}/appPage/js/common.js"></script>
<script> $(function(){ $(window).on("scroll",backToTopFun); backToTopFun(); }); </script>
<script type="text/javascript" src="${basePath}/appPage/plugin/wangEditor/js/wangEditor.min.js"></script>
<script type="text/javascript" src="${basePath}/appPage/js/group.js"></script>
		<script>
			$(".content>div").hide();
			//$(".tabs li:first").attr("class","current"); 
			$(".content>.tab1 ").fadeIn();

			$('.tabs a').click(function(e) {
				e.preventDefault();
				var parent = $(this).parent().parent().parent();

				parent.find(".content>div").hide();
				//$().hide(); 
				parent.find(".tabs li").removeClass("current");
				$(this).parent().attr("class", "current");
				parent.find('.' + $(this).attr('title')).fadeIn();
			});
			
		    $(function () {
		        wangEditor.config.printLog = false;
		        var editor1 = new wangEditor('textarea1');
		        editor1.config.menus = ['insertcode', 'quote', 'bold', '|', 'img', 'emotion', '|', 'undo', 'fullscreen'];
		        editor1.config.emotions = { 'default': { title: '表情', data: '${basePath}appPage/plugin/wangEditor/emotions1.data'}, 'default2': { title: '心情', data: '${basePath}appPage/plugin/wangEditor/emotions3.data'}, 'default3': { title: '顶一顶', data: '${basePath}appPage/plugin/wangEditor/emotions2.data'}};
		        editor1.create();
		    });
		</script>
</body>
</html>
