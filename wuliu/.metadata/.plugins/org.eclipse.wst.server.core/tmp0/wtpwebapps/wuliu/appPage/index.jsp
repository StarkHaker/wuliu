<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>兴趣小队社交网站</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="keywords" content="兴趣小队社交网站">
<meta name="description" content="兴趣小队社交网站，一个站在java开发之路上的程序员交友网站。">
<LINK rel="Bookmark" href="favicon.ico" >
	<LINK rel="Shortcut Icon" href="favicon.ico" />

<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/Hui-iconfont/1.0.8/iconfont.min.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/css/common.css" />
<link rel="stylesheet" type="text/css" href="${basePath}appPage/plugin/pifu/pifu.css" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } function showSide(){$('.navbar-nav').toggle();}</script>
</head>
<body>


<c:import url="top.jsp"></c:import>
<section class="container pt-20">
	<!--<div class="Huialert Huialert-info"><i class="Hui-iconfont">&#xe6a6;</i>成功状态提示</div>-->
  <!--left-->
  <div class="col-sm-9 col-md-9">
  	<!--滚动图-->
  	<div class="slider_main">
            <div class="slider">
                <div class="bd">
                    <ul>
                        <li><a href="#" target="_blank"><img src="${basePath}appPage/img/temp/banner1.jpg"></a></li>
                        <li><a href="#" target="_blank"><img src="${basePath}appPage/img/temp/banner8.png"></a></li>
                    </ul>
                </div>
                <ol class="hd cl dots">
                    <li>1</li>
                    <li>2</li>
                </ol>
                <a class="slider-arrow prev" href="javascript:void(0)"></a>
                <a class="slider-arrow next" href="javascript:void(0)"></a>
            </div>
        </div>
  		
		<div class="mt-20 bg-fff box-shadow radius mb-5">
			<div class="tab-category">
				<a href=""><strong class="current">最新发布</strong></a>
			</div>
		</div>
		
		<div class="art_content">
			<ul class="index_arc" id="list">
			</ul>
<!-- ++++++++++++++++++++++++++++++++分页++++++++++++++++++++++++++++++++++++++++ -->		
  		<div class="text-c mb-20" id="moreBlog">
  		<form action="${basePath}app/list/findNextPage" id="pageForm" method="post">
    	<input type="hidden" id="NewPage" name="NewPage" value="">
		 <input type="hidden" id="_Mname" name="Mname" value="">
    </form>
	        <a class="btn  radius btn-block " href="javascript:page(${page.page.currentPage} + 1);" >点击加载更多</a>
	        <a class="btn  radius btn-block hidden" href="javascript:;">加载中……</a>
	    </div>
		</div>
  </div>
<!-- ++++++++++++++++++++++++++++++++++++以上是要修改的主页内容++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
  <!--right-->
  <div class="col-sm-3 col-md-3">
  	
  	<!--站点声明-->
        <div class="panel panel-default mb-20">
            <div class="panel-body">
                <i class="Hui-iconfont" style="float: left;">&#xe62f;&nbsp;</i>
                <div class="slideTxtBox">
                    <div class="bd">
                        <ul>
                            <li><a href="javascript:void(0);">兴趣小队测试版上线，欢迎访问</a></li>
                            <li><a href="javascript:void(0);">内容如有侵犯，请立即联系管理员删除</a></li>
                            <li><a href="javascript:void(0);">本站内容仅供学习和参阅，不做任何商业用途</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
<!------------------------------------博主信息------------------------------------------->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>博主信息</strong></a>
            </div>
            <div class="tab-category-item">
                <ul class="index_recd">
                    <li class="index_recd_item"><i class="Hui-iconfont">&#xe653;</i>姓名：${sessionScope.SESSION_INSIDERINFO.userName}</li>
                    <li class="index_recd_item"><i class="Hui-iconfont">&#xe70d;</i>签名：${sessionScope.SESSION_INSIDERINFO.motto}</li>
                    <li class="index_recd_item"><i class="Hui-iconfont">&#xe63b;</i>邮箱：<a href="#">${sessionScope.SESSION_INSIDERINFO.account}</a></li>
                    <li class="index_recd_item"><i class="Hui-iconfont">&#xe671;</i>定位：阿尔法星球 &middot; 兴趣庄园</li>
              
               <%	
              	 if(session.getAttribute("SESSION_INSIDERINFO") != null){
		   		%>    
			<!-- ++++++++++++++++++这是弹窗++++++++++++++++++++++++++++ -->
		     <div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-12 column">
							 <a id="modal-934436" href="#modal-container-934436" role="button" class="btn" data-toggle="modal">添加日志</a>
							 <!-- ----------提交的表单--------------- -->
							 
							<form action="${basePath}app/list/addJournal" method="POST" enctype="multipart/form-data">  
							<div class="modal fade" id="modal-container-934436" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
											<h3 class="modal-title" id="myModalLabel">
												<input id="Ttitle" name="Ttitle" type="text" placeholder="标题" style="width:100%;"/>											
											</h3>
										</div> 
										
										<div class="modal-body">
										
										<p>
											<textarea rows="10" cols="90" name="Ttext"></textarea>
										</p>
											<p>
												 <div class="container">
												 <!-- 下拉类型菜单 -->
													<label>日志类型</label>  
														<select id="typeList">
															<option>---请选择---</option>
														</select>
											     <!-- 菜单 -->
											</p>
											<!--图片添加  -->
						
											<input type="file" name="file" id="imgOne" onchange="preImg(this.id,'imgPre');">
											<img id="imgPre"  alt="140x140" src="${basePath}appPage/img/tianjia.png"  class="img-rounded" style="width:150px;height: 120px;border-radius: 5px;"/>
											</input>
											<!--图片添加 END -->
												</div>
												<div class="modal-footer">
													 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> 
													 <button type="submit" class="btn btn-primary">保存</button>
												</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
								 <%
		                    		}else{
		                        %>
		                          <div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-12 column">
							 <a id="modal-934436" href="#modal-container-934436" role="button" class="btn" data-toggle="modal">添加日志</a>
							没有登陆，请先登陆
							</div>
						</div>
					</div>
				</div>
			</div>
								 <% 
		                        	 } 
		                         %>
<!--------------------------------------------- END -------------------------------------------->
		</div>
	</div>
</div>
   
                </ul>
            </div>
        </div>
  	<!--======================================= 博主信息===================================== -->
  	
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
				</ul>
			</div>
		</div>
		
		<!--点击排行-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>点击排行</strong></a>
            </div>
            <div class="tab-category-item">
                <ul class="index_recd clickTop">
                    <li>
                        <a href="#">AJAX的刷新和前进后退问题解决</a>
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
			<div class="tags"> <a href="http://www.h-ui.net/">H-ui前端框架</a> 
			<a href="http://www.h-ui.net/websafecolors.shtml">Web安全色</a>
			 <a href="http://www.h-ui.net/Hui-4.4-Unslider.shtml">jQuery轮播插件</a>
			  <a href="http://idc.likejianzhan.com/vhost/korea_hosting.php">韩国云虚拟主机</a> 
			  <a href="http://www.h-ui.net/bug.shtml">IEbug</a>
		 	  <a href="http://www.h-ui.net/site.shtml">IT网址导航</a>
		 	   <a href="http://www.h-ui.net/icon/index.shtml">网站常用小图标</a>
		      <a href="http://www.h-ui.net/tools/jsformat.shtml">web工具箱</a>
		       <a href="http://www.h-ui.net/bg/index.shtml">网站常用背景素材</a> 
		       <a href="http://www.h-ui.net/yuedu/chm.shtml">H-ui阅读</a>
		       <a href="http://www.h-ui.net/easydialog-v2.0/index.html">弹出层插件</a>
		        <a href="http://www.h-ui.net/SuperSlide2.1/demo.html">SuperSlide插件</a> 
		        <a href="http://www.h-ui.net/TouchSlide1.1/demo.html">TouchSlide</a></div>
			</div>
		</div>
		<!--图片-->


</section>

<script type="text/javascript" src="${basePath}appPage/plugin/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}appPage/plugin/layer/3.0/layer.js"></script>
<script type="text/javascript" src="${basePath}appPage/plugin/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${basePath}appPage/plugin/pifu/pifu.js"></script>
<script type="text/javascript" src="${basePath}appPage/js/common.js"></script>
<script> $(function(){ $(window).on("scroll",backToTopFun); backToTopFun(); }); </script>
<script type="text/javascript" src="${basePath}appPage/plugin/jquery.SuperSlide/2.1.1/jquery.SuperSlide.min.js"></script>
<script type="text/javascript" src="${basePath}/appPage/js/group.js"></script>
<script>
$(function(){
//幻灯片
jQuery(".slider_main .slider").slide({mainCell: ".bd ul", titCell: ".hd li", trigger: "mouseover", effect: "leftLoop", autoPlay: true, delayTime: 700, interTime: 2000, pnLoop: true, titOnClassName: "active"})
//tips
jQuery(".slideTxtBox").slide({titCell: ".hd ul", mainCell: ".bd ul", autoPage: true, effect: "top", autoPlay: true});
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
<script >
/** 
* 从 file 域获取 本地图片 url 
*/ 
function getFileUrl(sourceId) { 
var url; 
if (navigator.userAgent.indexOf("MSIE")>=1) { // IE 
url = document.getElementById(sourceId).value; 
} else if(navigator.userAgent.indexOf("Firefox")>0) { // Firefox 
url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0)); 
} else if(navigator.userAgent.indexOf("Chrome")>0) { // Chrome 
url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0)); 
} 
return url; 
} 

/** 
* 将本地图片 显示到浏览器上 
*/ 
function preImg(sourceId, targetId) { 
var url = getFileUrl(sourceId); 
var imgPre = document.getElementById(targetId); 
imgPre.src = url; 
} 
</script>
<script >
 function show(){
	 var hstr="";
	 $.ajax({
		 url:"${basePath}"+"app/list/listPage",
		 success:function(data){
			 for (var i = 0; i < data.length; i++) {
				var str="<form id='search_form' name='search_form' action='${basePath}app/list/pageDetail' method='get'>"
				+"<li class='index_arc_item'>"
				+"<a href='#' class='pic'>"
				+"<img class='lazyload' src='${realPath}tempPic/"+data[i].timage+"' alt='应该选' />"
				+"</a>"
				+"<h4 class='Ttitle'><a href='${basePath}app/list/pageDetail?Tid="+data[i].tid+"'>"+data[i].ttitle+"</a></h4>"
				+"<div class='date_hits'>"
				+"<span>"+data[i].insiderInfo.userName+"</span>"
				+"<span>"+data[i].ttime+"</span>"
				+"<span><a href='/article-lists/10.html'>兴趣小队</a></span>"
				+"<p class='hits'><i class='Hui-iconfont' title='点击量'>&#xe6c1;</i> 276° </p>"
				+"<p class='commonts'><i class='Hui-iconfont' title='评论'>&#xe622;</i> <span class='cy_cmt_count'>20</span></p>"
				+"</div>"
				+"<div class='Ttext'>"+data[i].ttext+"</div>"
				+"</li></form>";
				hstr += str;
			}
			 $("#list").html(hstr);
		 }
	 });
 }


 $(function(){
		// 初始化用户树
		show();
	});
 
 function page(pagenum){
		$("#NewPage").val(pagenum);
		$("#_Mname").val($("#menuname").val());
		$("#pageForm").submit();
	}	
</script>
<script>

</script>
</body>
</html>
