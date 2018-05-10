<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>兴趣日志</title>

<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="keywords" content="">
<meta name="description" content="">
<LINK rel="Bookmark" href="favicon.ico">
<LINK rel="Shortcut Icon" href="favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="/staticRes/js/html5shiv.js"></script>
<script type="text/javascript" src="/staticRes/js/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css"
	href="${basePath}appPage/plugin/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="${basePath}appPage/plugin/Hui-iconfont/1.0.8/iconfont.min.css" />
<link rel="stylesheet" type="text/css"
	href="${basePath}appPage/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="${basePath}appPage/plugin/pifu/pifu.css" />
<link rel="stylesheet" type="text/css"
	href="${basePath}appPage/css/timeline.css" />
<!--[if lt IE 9]>
<link href="/staticRes/lib/h-ui/css/H-ui.ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
<script type="application/x-javascript">
	 addEventListener("load", function()
		{ setTimeout(hideURLbar, 0); }, false); 
	 function hideURLbar(){ window.scrollTo(0,1); } function showSide(){$('.navbar-nav').toggle();}
</script>
</head>
<body>

	<c:import url="top.jsp"></c:import>
	<!--导航条-->
	<nav class="breadcrumb">
	<div class="container">
		<i class="Hui-iconfont"></i> <a href="index.html" class="c-primary"></a>
		<span class="c-gray en"></span> <span class="c-gray"></span>
	</div>
	</nav>

	<section class="container mt-20">
	<div class="container-fluid">
		<div class="timeline">
			<div class="cd-timeline-block">
				<div class="cd-timeline-img cd-picture">
					<img src="css/timeline/cd-icon-location.svg" alt="position">
				</div>
				<div class="cd-timeline-content">
					<h4>测试测试</h4>
					<p>Lao王博客测试版本上线。。Lao王博客测试版本上线。。Lao王博客测试版本上线。。Lao王博客测试版本上线。。Lao王博客测试版本上线。。Lao王博客测试版本上线。。</p>
					<a href="http://www.wfyvv.com" class="f-r"><input
						class="btn btn-success size-S" type="button" value="更多"></a> <span
						class="cd-date">2017年1月01日</span>
				</div>
			</div>
		</div>
	</div>

	</section>
	<input type="hidden" value="${basePath}" id="basePath" />
	<script type="text/javascript"
		src="${basePath}appPage/plugin/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="${basePath}appPage/plugin/layer/3.0/layer.js"></script>
	<script type="text/javascript"
		src="${basePath}appPage/plugin/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript"
		src="${basePath}appPage/plugin/pifu/pifu.js"></script>
	<script type="text/javascript" src="${basePath}appPage/js/common.js"></script>
	<script type="text/javascript" src="${basePath}appPage/js/mood.js"></script>
	<script>
		$(function() {
			$(window).on("scroll", backToTopFun);
			backToTopFun();
		});
	</script>
	<script>
		$(function() {
			//on scolling, show/animate timeline blocks when enter the viewport
			$(window)
					.on(
							'scroll',
							function() {
								$('.cd-timeline-block')
										.each(
												function() {
													if ($(this).offset().top <= $(
															window).scrollTop()
															+ $(window)
																	.height()
															* 0.75
															&& $(this)
																	.find(
																			'.cd-timeline-img')
																	.hasClass(
																			'is-hidden')) {
														$(this)
																.find(
																		'.cd-timeline-img, .cd-timeline-content')
																.removeClass(
																		'is-hidden')
																.addClass(
																		'bounce-in');
													}
													if ($(window).scrollTop()
															- $(this).offset().top > 0) {
														$(this)
																.find(
																		'.cd-timeline-img, .cd-timeline-content')
																.addClass(
																		'is-hidden')
																.removeClass(
																		'bounce-in');
													}

												});
								$('.cd-timeline-block')
										.each(
												function() {
													if ($(this).offset().top < $(
															window).scrollTop()
															+ $(window)
																	.height()
															* 0.75) {
														$(this)
																.find(
																		'.cd-timeline-img, .cd-timeline-content')
																.removeClass(
																		'is-hidden');
													}
												});
							});
		});
	</script>
</body>
</html>
