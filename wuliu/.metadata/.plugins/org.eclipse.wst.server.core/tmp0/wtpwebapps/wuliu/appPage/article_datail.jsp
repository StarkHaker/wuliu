<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日志详情</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="keywords" content="兴趣小队">
<meta name="description" content="兴趣小队">
<LINK rel="Bookmark" href="favicon.ico" >
<LINK rel="Shortcut Icon" href="favicon.ico" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/Hui-iconfont/1.0.8/iconfont.min.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/css/common.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/pifu/pifu.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/wangEditor/css/wangEditor.min.css">

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } function showSide(){$('.navbar-nav').toggle();}</script>
</head>
<body>

<c:import url="top.jsp"></c:import>
<!--导航条-->
<nav class="breadcrumb">
  <div class="container"></div>
</nav>
<input type="hidden" value="${basePath}" id="basePath"/>
<section class="container pt-20">
	
	<div class="row w_main_row">
				
				
	<div class="col-lg-9 col-md-9 w_main_left">
<!-- --------------------------------------主体区域-------------------------------------------- -->
					<div class="panel panel-default  mb-20">
						<div class="panel-body pt-10 pb-10">
							<h2 class="c_titile">${sessionScope.SESSION_DETAIL.ttitle}</h2>
							<p class="box_c"><span class="d_time">发布时间：${sessionScope.SESSION_DETAIL.ttime}</span><span>编辑：${sessionScope.SESSION_DETAIL.insiderInfo.userName}</span><span>阅读（88646）</span></p>
							<ul class="infos">
								    
								<p>&nbsp;<img src="${basePath}appPage/tempPic/${sessionScope.SESSION_DETAIL.timage}" alt="" width="700" height="440"></p>
								<p><img src="" alt=""></p>
								<p><strong>${sessionScope.SESSION_DETAIL.ttext}</strong></p>
							</ul>
															
							<div class="keybq">
						    	<p><span>关键字</span>：<a class="label label-default">个人博客</a><a class="label label-default">阿里云</a><a class="label label-default">空间</a></p>    
						    </div>
							
							
							
							<div class="nextinfo">
								<p class="last">上一篇：<a href="#">免费收录网站搜索引擎登录口大全</a></p>
								<p class="next">下一篇：<a href="#">javascript显示年月日时间代码</a></p>
						    </div>
							
						</div>
					</div>
<!-- ++++++++++++++++++++++++++++++评论区+++++++++++++++++++++++++++++++++++ -->
					<div class="panel panel-default  mb-20">
						<div class="tab-category">
                <a href=""><strong>评论区</strong></a>
            </div>
						<div class="panel-body">
							<div class="panel-body" style="margin: 0 3%;">
                    <div class="mb-20">
                    	<ul class="commentList" id="list">

                        </ul>
    
                    </div>
                    <div class="line"></div>
                    <!--用于评论-->
                    <div class="mt-20" id="ct">
                        <div id="err" class="Huialert Huialert-danger hidden radius">成功状态提示</div>
                        <textarea id="textarea1" name="comment" style="height:200px;" placeholder="看完不留一发？"> </textarea>
                        <div class="text-r mt-10">
                            <button id="fbreply"  class="btn btn-primary radius" > 发表评论</button>
                        </div>
                    </div>
                    <!--用于回复-->
                    <div class="comment hidden mt-20">
                        <div id="err2" class="Huialert Huialert-danger hidden radius">成功状态提示</div>
                            <textarea class="textarea" style="height:100px;" > </textarea>
                            <button onclick="hf(this);" type="button" class="btn btn-primary radius mt-10">回复</button>
                            <a class="cancelReply f-r mt-10">取消回复</a>
                    </div>

                </div>
						</div>
					</div>
					
<!-- ++++++++++++++++++++++++++++++评论区+++++++++++++++++++++++++++++++++++ -->
				</div>
				
				<div class="col-lg-3 col-md-3">
					<!--热门推荐-->
  	<div class="bg-fff box-shadow radius mb-20">
			<div class="tab-category">
				<a href=""><strong>热门推荐</strong></a>
			</div>
			<div class="tab-category-item">
				<ul class="index_recd">
					<li>
						<a href="#">阻止a标签href默认跳转事件</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
					</li>
					<li >
						<a href="#">PHP面试题汇总</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
					</li>
					<li >
						<a href="#">阻止a标签href默认跳转事件</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
					</li>
					<li >
						<a href="#">阻止a标签href默认跳转事件</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
					</li>
					<li >
						<a href="#">PHP面试题汇总</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
					</li>
				</ul>
			</div>
		</div>
						
					<!--图片-->
		<div class="bg-fff box-shadow radius mb-20">
			<div class="tab-category">
				<a href=""><strong>扫我关注</strong></a>
			</div>
			<div class="tab-category-item">
				<img data-original="temp/gg.jpg" class="img-responsive lazyload" alt="响应式图片">
			</div>
		</div>
					
				</div>
			</div>
	
</section>

<script type="text/javascript" src="${basePath}appPage/plugin/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}appPage/plugin/layer/3.0/layer.js"></script>
<script type="text/javascript" src="${basePath}appPage/plugin/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${basePath}appPage/plugin/pifu/pifu.js"></script>
<script type="text/javascript" src="${basePath}appPage/js/common.js"></script>

<script> $(function(){ $(window).on("scroll",backToTopFun); backToTopFun(); }); </script>
<script type="text/javascript" src="${basePath}appPage/plugin/wangEditor/js/wangEditor.min.js"></script>
<script type="text/javascript">
    $(function () {
    		$("img.lazyload").lazyload({failurelimit : 3});
    	
        wangEditor.config.printLog = false;
        var editor1 = new wangEditor('textarea1');
        editor1.config.menus = ['insertcode', 'quote', 'bold', '|', 'img', 'emotion', '|', 'undo', 'fullscreen'];
        editor1.config.emotions = { 'default': { title: '老王表情', data: 'plugin/wangEditor/emotions1.data'}, 'default2': { title: '老王心情', data: 'plugin/wangEditor/emotions3.data'}, 'default3': { title: '顶一顶', data: 'plugin/wangEditor/emotions2.data'}};
        editor1.create();

        //show reply
        $(".hf").click(function () {
            pId = $(this).attr("name");
            $(this).parents(".commentList").find(".cancelReply").trigger("click");
            $(this).parent(".comment-body").append($(".comment").clone(true));
            $(this).parent(".comment-body").find(".comment").removeClass("hidden");
            $(this).hide();
        });
        //cancel reply
        $(".cancelReply").on('click',function () {
            $(this).parents(".comment-body").find(".hf").show();
            $(this).parents(".comment-body").find(".comment").remove();
        });
    });

</script>
<script type="text/javascript" src="${basePath}appPage/js/board.js"></script>
</body>
</html>
