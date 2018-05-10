<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="keywords" content="个人博客,王风宇个人博客,个人博客系统,老王博客,王风宇">
<meta name="description" content="Lao王博客系统，一个站在java开发之路上的草根程序员个人博客网站。">
<LINK rel="Bookmark" href="favicon.ico" >
<LINK rel="Shortcut Icon" href="favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="/staticRes/js/html5shiv.js"></script>
<script type="text/javascript" src="/staticRes/js/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/Hui-iconfont/1.0.8/iconfont.min.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/css/common.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/pifu/pifu.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/wangEditor/css/wangEditor.min.css">
<!--[if lt IE 9]>
<link href="/staticRes/lib/h-ui/css/H-ui.ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } function showSide(){$('.navbar-nav').toggle();}</script>
</head>
<body>

<c:import url="top.jsp"></c:import>
<!--导航条-->
<nav class="breadcrumb">
    <div class="container"> <i class="Hui-iconfont">&#xe67f;</i> <a href="index.html" class="c-primary">首页</a> <span class="c-gray en">&gt;</span>  <span class="c-gray">留言板</span> </div>
</nav>
 <input type="hidden" value="${basePath}" id="basePath"/>
<section class="container">
    <div class="col-xs-12 col-md-10 col-md-offset-1 mt-20">
        <!--用于评论-->
        <div class="mt-20" id="ct">
            <div id="err" class="Huialert Huialert-danger hidden radius">成功状态提示</div>
            <textarea id="textarea1" name="comment" style="height:200px;" placeholder=""></textarea>
            <div class="text-r mt-10">
                <button id="fbreply" class="btn btn-primary radius" > 发表评论</button>
            </div>
        </div>

        <div class="line"></div>

        <ul class="commentList mt-50" id="list">

        </ul>
        <!--用于回复-->
        <div class="comment hidden mt-20">
            <div id="err2" class="Huialert Huialert-danger hidden radius">成功状态提示</div>
            <textarea class="textarea" style="height:100px;" > </textarea>
            <button onclick="hf(this);" type="button" class="btn btn-primary radius mt-10">回复</button>
            <a class="cancelReply f-r mt-10">取消回复</a>
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
<script type="text/javascript" src="${basePath}appPage/js/board.js"></script>

<script type="text/javascript">
    $(function () {
        wangEditor.config.printLog = false;
        var editor1 = new wangEditor('textarea1');
        editor1.config.menus = ['insertcode', 'quote', 'bold', '|', 'img', 'emotion', '|', 'undo', 'fullscreen'];
        editor1.config.emotions = { 'default': { title: '表情', data: '${basePath}appPage/plugin/wangEditor/emotions1.data'}, 'default2': { title: '心情', data: '${basePath}appPage/plugin/wangEditor/emotions3.data'}, 'default3': { title: '顶一顶', data: '${basePath}appPage/plugin/wangEditor/emotions2.data'}};
        editor1.create();
       

        //show reply
       /* $(".hf").click(function () {
        	alert("sss");
            pId = $(this).attr("name");
            $(this).parents(".commentList").find(".cancelReply").trigger("click");
            $(this).parent(".comment-body").append($(".comment").clone(true));
            $(this).parent(".comment-body").find(".comment").removeClass("hidden");
            $(this).hide();
        });*/
        //cancel reply
        $(".cancelReply").on('click',function () {
            $(this).parents(".comment-body").find(".hf").show();
            $(this).parents(".comment-body").find(".comment").remove();
        });
        
        
        initBoard();
    });

</script>

</body>
</html>
