<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>货物追踪</title>
<link rel="stylesheet" type="text/css" href="${basePath}client/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}client/css/common.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}client/css/thems.css"/>
<title>Insert title here</title>
</head>
<body>
<!--头部-->
<jsp:include page="top.jsp"></jsp:include>
<!--头部-->
<!--中间部分-->
<div class="main">
	<div class="book">
    	<div class="tabBox_t">
            <div class="tabBox">
              <ul class="tabNav">
                <li><a href="">网上下单</a></li>
                <li><a href="">网点查询</a></li>
                <li class="now"><em>货物追踪</em><span>&nbsp;</span></li>
              </ul>
              <div class="tabCont" style="display:block;">
              	<div class="follow_m">
                	<div class="space_hx">&nbsp;</div>
                	<div class="follow_mtop">
                    	<form action="" method="post">
                        	<input id="inputId" name="" type="text" placeholder="请输入订单编号）">
                            
                            <a href="${basePath}app/client/yundanCX?'#yundanH'" id="yundanH">查询</a>
                        </form>
                    </div>
                    <div class="space_hx">&nbsp;</div>
                    <div class="follow_main">
                    	<ul>
                        	<li>
                            	<span>2014-03-03 17:22:31</span>
                                <span>快件离开武汉硚口二部已发往东莞中心</span>
                            </li>
                            <li>
                            	<span>2014-03-03 17:22:31</span>
                                <span>快件离开武汉硚口二部已发往东莞中心</span>
                            </li>
                            <li>
                            	<span>2014-03-03 17:22:31</span>
                                <span>快件离开武汉硚口二部已发往东莞中心</span>
                            </li>
                            <li>
                            	<span>2014-03-03 17:22:31</span>
                                <span>快件离开武汉硚口二部已发往东莞中心</span>
                            </li>
                            <li class="last">
                            	<span>2014-03-03 17:22:31</span>
                                <span>快件离开武汉硚口二部已发往东莞中心</span>
                            </li>
                        </ul>
                    </div>
                </div>	
              </div>
            </div>
        </div>
    </div>
    <div class="space_hx">&nbsp;</div>
</div>
<!--中间部分-->
<div class="space_hx">&nbsp;</div>
<!--底部-->
<div class="foot_bg">
	<div class="foot">
    	<div class="foot_t">
        	<a href="">业务介绍</a>
            <a href="">联系我们</a>
        </div>
        <div class="copy">
        	Copyright&copy;&nbsp;2012-2015&nbsp; 找物流有限责任公司.&nbsp;&nbsp;All&nbsp;&nbsp;rights&nbsp;&nbsp;reserved. &nbsp;&nbsp;粤ICP备10005645
        </div>
    </div>	
</div>
<!--底部-->
<script src="${basePath}client/js/jquery-1.8.3.min.js"></script>
 <script type="text/javascript">
    $(document).ready(function(){
       //点击链接的时候调用
      $("#yundanH").click(function(){
 
          //得到input的值
          var count = $("#inputId").val();
 
         
 
          //设置linkToCart的href的值
          $("#yundanH").attr("href","${basePath}app/client/yundanCX?"+count);
      });
    });
</script>
</body>
</html>