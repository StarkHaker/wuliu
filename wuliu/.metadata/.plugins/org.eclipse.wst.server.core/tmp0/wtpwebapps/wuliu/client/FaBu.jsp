<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布运单</title>
<link rel="stylesheet" type="text/css" href="${basePath}client/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}client/css/common.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}client/css/thems.css"/>
<script type="text/javascript" src="${basePath}client/js/jquery-1.8.3.min.js"></script>
</head>
<body>
<!--头部-->
<jsp:include page="top.jsp"></jsp:include>
<!--头部-->
<!-- 中间 -->
<div class="main">
	<!--订单中心-->
    <div class="order clearfix">
    	<div class="order_l">
        	<ul id="left_menu" class="left_menu">
            	<li>
                	<a class="yiji"><span>XX物流运单</span><em>&nbsp;</em></a>
                    <ul class="erji">
                    	<li>
                        	<i>&nbsp;</i>
                            <strong><a href="">基本信息</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="">运单信息</a></strong>
                        </li>
                    </ul>
                </li>
                <li>
                	<a class="yiji"><span>订单中心</span><em>&nbsp;</em></a>
                    <ul class="erji">
                    	<li>
                        	<i>&nbsp;</i>
                            <strong><a href="">我的订单</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="">我的账单</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="">代收货款</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="">资金流水</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="">询价历史</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="">常发货物</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="">常用联系人</a></strong>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="order_r">
        	<div class="order_h">
            	<span>基本信息</span>
            </div>
            
           <tr>
            <td>
            <ul class="my_zil">
                <li>
                    <span>发货人信息：</span>
                    <a href="">${SESSION_YUNDAN.fahuoXM}</a>
                </li>
                <li>
                    <span>地址：</span>
                    <a href="">${SESSION_YUNDAN.zhhuoDD}</a>
                </li>
                <li>
                    <span>联系电话：</span>
                    <a href="">${SESSION_YUNDAN.fahuoDH}</a>
                </li>
                </ul>
            </td>
            <td>
            <ul class="my_zil">
               <li>
                    <span>收货人信息：</span>
                    <a href="">${SESSION_YUNDAN.shhuoXM}</a>
                </li>
                <li>
                    <span>地址：</span>
                    <a href="">${SESSION_YUNDAN.xihuoDD}</a>
                </li>
                <li>
                    <span>联系电话：</span>
                    <a href="">${SESSION_YUNDAN.shhuoDH}</a>
                </li> 
                </ul>
            </td>	   
           </tr>
            <div class="space_hx">&nbsp;</div>
            <div class="order_news">
            	<span>运单信息</span>
            </div>
            
            	 <table cellpadding="0" cellspacing="0">
                      <tr class="wl_title">
                        <td width="60" class="tubiao">订单号</td>
                        <td width="85">物品名称</td>
                        <td width="180">线路</td>
                        <td width="90">货物重量<em>元/公斤</em></td>
                        <td width="110">重泡货<em>元/公斤</em></td>
                        <td width="90">重货<em>元/公斤</em></td>
                        <td width="80">货物数量</td>
                        <td width="65">总费用</td>
                      </tr>
                      <tr>
                        <td><a href="" class="fav">${SESSION_YUNDAN.yundanH} &nbsp;</a></td>
                        <td class="left">
                            ${SESSION_YUNDAN.huowuXX}
                        </td>
                        <td class="left">
                            <span>从： ${SESSION_YUNDAN.zhhuoDD}</span>
                            <span>到： ${SESSION_YUNDAN.xihuoDD}</span>
                        </td>
                        <td><i>0.15</i></td>
                        <td><i>0.12</i></td>
                        <td><i>20</i>元</td>
                        <td>${SESSION_YUNDAN.huowuSL}</td>
                        <td><i> ${SESSION_YUNDAN.yundaFY}元</i></td>
                       
                      </tr>
                    </table>
                
        </div>
    </div>
    <!--订单中心-->

    <div class="space_hx">&nbsp;</div>
      <div class="book_m" >
                <div class="xiadan_btn" >
                        <a href="" class="sub">付款</a>
                        <a href="" class="qux">取消订单</a> 
                </div>         
                        </div>

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
</body>
</html>
