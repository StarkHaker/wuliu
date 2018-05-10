<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 小组活动</title>
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
<link rel="stylesheet" type="text/css" href="plugin/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="plugin/Hui-iconfont/1.0.8/iconfont.min.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="plugin/pifu/pifu.css" />
<!--[if lt IE 9]>
<link href="/staticRes/lib/h-ui/css/H-ui.ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } function showSide(){$('.navbar-nav').toggle();}</script>
</head>
<body>
<c:import url="top.jsp"></c:import>
<!--导航条-->
<nav class="breadcrumb">
    <div class="container">
        <i class="Hui-iconfont"></i><a href="index.html" class="c-primary"></a>
        <span class="c-gray en"></span> <a href="article.html" class="c-primary"></a>
        <span class="c-gray en"></span> <span class="c-gray"><i class="Hui-iconfont"></i> </span>
    </div>
</nav>

<section class="container">
  <!--left-->
  <div class="col-sm-9 col-md-9 mt-20">
  	
  		
  	<!--article list-->
			<ul class="index_arc">
			
<!-- ++++++++++++++++++++++++++++++li 展示区+++++++++++++++++++++++++++++++++++++++++++ -->
				<li class="index_arc_item" >
					<a href="#" class="pic">
						<img class="lazyload" data-original="temp/art.jpg" alt="应该选" />
					</a>
					<h4 class="title"><a href="article_detail.html">个人博客应该选择什么样的域名和域名后缀</a></h4>
					<div class="date_hits">
						<span>老王</span>
						<span>2017-02-24</span>
						<span><a href="/article-lists/10.html">程序人生</a></span>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
						<p class="commonts"><i class="Hui-iconfont" title="点击量">&#xe622;</i> <span class="cy_cmt_count">20</span></p>
					</div>
					<div class="desc">不论搭建什么样的网站，选择一个好的域名都是很有必要的，选择一个好的域名对网站的意义也是不言而喻的。每一个网站都有之对应的域名，就像人的名字一样。每个人都想自己有个好听的名字，网站也是一样。一个网站可以有多个域名，但是一个域名只能对应一个网站。&nbsp;一、域名要好记，方便输入&nbsp; &nbsp; &nbsp; &nbsp;域名本身的意义就是为了人们方便记忆才使用的，不然都用IP地址就好了。所以，网站域名一定要选择好记忆的。因为域名是</div>
				</li>
				
				
				<li class="index_arc_item no_pic">
					<h4 class="title"><a href="/article/5.html">小组活动标题</a></h4>
					<div class="date_hits">
						<span>创建人</span>
						<span>时间</span>
						<span><a href="/article-lists/10.html">小组类型</a></span>
						<p class="hits"><i class="Hui-iconfont" title="人数">&#xe6c1;</i> 276 °</p>
						<p class="commonts"><i class="Hui-iconfont" title="加入小组">&#xe622;</i> <span id="sourceId::105" class="cy_cmt_count">20</span></p>
					</div>
					<div class="desc">小组活动的内容</div>
				</li>
				
				
<!-- ++++++++++++++++++++++++++++++li 展示区+++++++++++++++++++++++++++++++++++++++++++ -->
				</ul>
  		<div class="text-c mb-20" id="moreBlog">
            <a class="btn  radius btn-block " href="javascript:;" onclick="moreBlog('${blogType.id}','${tag.name}');">点击加载更多</a>
            <a class="btn  radius btn-block hidden" href="javascript:;">加载中……</a>
        </div>		
  </div>
  
  <!--right-->
  <div class="col-sm-3 col-md-3 mt-20">
  	
  	<!--导航-->
  	<div class="panel panel-primary mb-20">
			<div class="panel-body">
				<input class="btn btn-primary radius nav-btn" type="button" value="杂谈">
				<input class="btn btn-primary-outline radius nav-btn" type="button" value="java">
				<input class="btn btn-primary-outline radius nav-btn" type="button" value="框架">
				<input class="btn btn-primary-outline radius nav-btn" type="button" value="服务域名">
			</div>
		</div>
  	
  	<!--热门推荐-->
  	<div class="bg-fff box-shadow radius mb-20">
			<div class="tab-category">
				<a href=""><strong>热门推荐</strong></a>
			</div>
			<div class="tab-category-item">
				<ul class="index_recd">
					<li>
						<a href="#">阻止a标签href默认跳转事件</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
					</li>
					<li >
						<a href="#">PHP面试题汇总</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
					</li>
					<li >
						<a href="#">阻止a标签href默认跳转事件</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
					</li>
					<li >
						<a href="#">阻止a标签href默认跳转事件</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
					</li>
					<li >
						<a href="#">PHP面试题汇总</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
					</li>
				</ul>
			</div>
		</div>
	
<!--标签-->
		<div class="bg-fff box-shadow radius mb-20">
			<div class="tab-category">
				<a href=""><strong>标签云</strong></a>
			</div>
			<div class="tab-category-item">
				<div class="tags"> <a href="http://www.h-ui.net/">H-ui前端框架</a> <a href="http://www.h-ui.net/websafecolors.shtml">Web安全色</a> <a href="http://www.h-ui.net/Hui-4.4-Unslider.shtml">jQuery轮播插件</a> <a href="http://idc.likejianzhan.com/vhost/korea_hosting.php">韩国云虚拟主机</a> <a href="http://www.h-ui.net/bug.shtml">IEbug</a> <a href="http://www.h-ui.net/site.shtml">IT网址导航</a> <a href="http://www.h-ui.net/icon/index.shtml">网站常用小图标</a> <a href="http://www.h-ui.net/tools/jsformat.shtml">web工具箱</a> <a href="http://www.h-ui.net/bg/index.shtml">网站常用背景素材</a> <a href="http://www.h-ui.net/yuedu/chm.shtml">H-ui阅读</a> <a href="http://www.h-ui.net/easydialog-v2.0/index.html">弹出层插件</a> <a href="http://www.h-ui.net/SuperSlide2.1/demo.html">SuperSlide插件</a> <a href="http://www.h-ui.net/TouchSlide1.1/demo.html">TouchSlide</a></div>
			</div>
		</div>
  </div>
  
</section>

<script type="text/javascript" src="plugin/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="plugin/layer/3.0/layer.js"></script>
<script type="text/javascript" src="plugin/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="plugin/pifu/pifu.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script> $(function(){ $(window).on("scroll",backToTopFun); backToTopFun(); }); </script>
<script>
$(function(){
//标签
	$(".tags a").each(function(){
		var x = 9;
		var y = 0;
		var rand = parseInt(Math.random() * (x - y + 1) + y);
		$(this).addClass("tags"+rand)
	});
	
	$("img.lazyload").lazyload({failurelimit : 3});
});

</script> 
</body>
</html>
