<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网上下订单</title>
<link rel="stylesheet" type="text/css" href="${basePath}client/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}client/css/common.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}client/css/thems.css"/>
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
                <li class="now"><em>网上下单</em><span>&nbsp;</span></li>
                <li><a href="">网点查询</a></li>
                <li><a href="">货物追踪</a></li>
              </ul>

              
              <div class="tabCont" style="display:block;">
              	<div class="book_m">
                	<div class="space_hx">&nbsp;</div>
                	<!-- <div class="shunxu">
                    	<img src="images/icon6.jpg" alt=""/>
                    </div> -->
                    <div class="space_hx">&nbsp;</div>
                    <form action="${basePath}app/client/buildBill" method="post">
                    <div class="fahuo">
                    	<span>
                    	发货城市
                    	<input id="zhhuoDD" name="zhhuoDD" type="text" placeholder="请输入城市名（中文/拼音）">
			                        到达城市
			            <input id="xihuoDD" name="xihuoDD" type="text" placeholder="请输入城市名（中文/拼音）"></br>
			                        物品信息
			            <input id="huowuXX" name="huowuXX" type="text" placeholder="请输入物品信息（中文/拼音）">
			                        物品重量
			            <input id="huowuZL" name="huowuZL" type="text" placeholder="请输入物品重量（kg）"></br>
			                        物品大小
			            <input id="huowuDX" name="huowuDX" type="text" placeholder="请输入物品体积（m^3）">
			                        物品数量
			            <input id="huowuSL" name="huowuSL" type="text" placeholder="请输入物品个数（个/件）"></br>
                        </span>
                    </div>
                    <div class="space_hx">&nbsp;</div>
                    <ul class="xinxi">
                        <li class="shuxing">
                        	<span>增值服务</span>
                            <input name="" class="check" type="checkbox" value="">
                            防倾斜
                            <input name="" class="check" type="checkbox" value="">
                            防撞
                            <input name="" class="check" type="checkbox" value="">
                            易碎
                            <input name="" class="check" type="checkbox" value="">
                            不能堆叠
                            <input name="" class="check" type="checkbox" value="">
                            不能分拆
                            <input name="" class="check" type="checkbox" value="">
                            不能倒置
                            <input name="" class="check" type="checkbox" value="">
                            正本回单
                            <input name="" class="check" type="checkbox" value="">
                            高价值
                        </li>
                    </ul>
                    
                    <div class="space_hx">&nbsp;</div>
                    <table cellpadding="0" cellspacing="0">
                      
                      <tr class="wl_title">
                        <td width="50" class="tubiao"></td>
                        <td width="85">物品种类</td>
                        <td width="150">线路</td>
                        <td width="90">泡货<em>元/公斤</em></td>
                        <td width="90">重泡货<em>元/公斤</em></td>
                        <td width="90">重货<em>元/公斤</em></td>
                        <td width="90">最低收费</td>
                        <td width="70">时效</td>
                        <td width="85">承运件数</td>
                        <td width="65"></td>
                        <td width="67"></td>
                      </tr>
                     
                    
                    </table>
                    <div class="space_hx">&nbsp;</div>
                    <div class="txxx clearfix">
                    
                
               
            <!--发货人信息-->
            <div class="txxx_l">
                        	<div class="txxx_h">
                            	<span>发货人信息</span>
                            </div>
                            <ul>
                            	<li>
                                	<span>
                                    	<i>&nbsp;</i>
                                        发货人
                                    </span>
                                    <input id="fahuoXM" name="fahuoXM" type="text">
                                </li>
                                <li>
                                	<span>
                                        手机
                                    </span>
                                    <input id="fahuoDH" name="fahuoDH" type="text">
                                </li>
                                <!-- 
                                <li>
                                	<span>
                                    	<i>&nbsp;</i>
                                        发货地址
                                    </span>
                                    <input id="" name="" type="text" placeholder="请选择/输入城市名称">
                                    <input id="" name="" class="jiedao" type="text" placeholder="请输入街道地址">
                                </li>
                                 -->
                            </ul>
                        </div>
                        <!--发货人信息-->
                        
                        <!--收货人信息-->
                        <div class="txxx_r">
                        	<div class="txxx_h">
                            	<span>收货人信息</span>
                            </div>
                            <ul>
                            	<li>
                                	<span>
                                    	<i>&nbsp;</i>
                                        收货人
                                    </span>
                                    <input id="shhuoXM" name="shhuoXM" type="text">
                                </li>
                                <li>
                                	<span>
                                        手机
                                    </span>
                                    <input id="shhuoDH" name="shhuoDH" type="text">
                                </li>
                     
                                <!-- 
                                <li>
                                	<span>
                                    	<i>&nbsp;</i>
                                                       收货地址
                                    </span>
                                    <input id="" name="" type="text" placeholder="请选择/输入城市名称">
                                    <input id="" class="jiedao" name="" type="text" placeholder="请输入街道地址">
                                </li>
                                 -->
                            </ul>
                        </div>
                        <!--收货人信息-->
                    </div>
                    <div class="space_hx">&nbsp;</div>
                    <div class="tiaok">
                    	<span><input name="" type="checkbox" value="" checked>统一服务条款</span>
                        <textarea name="" cols="" rows="">
1.托运人应准确填写本单，如实告知承运人所托运货物的名称、性质、重量、数量、价值等必要情况；托与人应对所托运获取按照行业标准妥善包装，使其适合运输.
2.托运人应准确填写本单，如实告知承运人所托运货物的名称、性质、重量、数量、价值等必要情况；托与人应对所托运获取按照行业标准妥善包装，使其适合运输.
                        </textarea>
                    </div>
                    <div class="space_hx">&nbsp;</div>
                    <div class="xiadan_btn">
                    	<input type="submit" class="sub" value="生成运单">
                        <!-- <a href="" class="qux">取消</a> -->
                    </div>
                    </form>
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
        	Copyright&copy;&nbsp;2012-2015&nbsp;
        </div>
    </div>	
</div>
<!--底部-->
</body>
</html>
