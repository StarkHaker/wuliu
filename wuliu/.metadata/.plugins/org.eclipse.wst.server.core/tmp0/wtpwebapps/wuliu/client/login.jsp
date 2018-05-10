<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员注册</title>
<link rel="stylesheet" type="text/css" href="css/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<link rel="stylesheet" type="text/css" href="css/thems.css"/>
</head>

<body>
<!--头部-->
<jsp:include page="top.jsp"></jsp:include>
<!--头部-->
<!--中间部分-->
<div class="main clearfix">
    <div class="login_reg clearfix">
    	<!--邮箱注册-->
        <div class="reg">
        	<div class="lore_top">
            	<span>
                	<em>邮箱注册</em>
                </span>
            </div>
        	<form action="${basePath}app/client/regist" method="post">
        	<ul>
            	<li>
                	<span>电子邮箱：</span>
                    <input name="kehuYX" type="text" placeholder="请输入常用邮箱">
                </li>
                <li>
                	<span>密码：</span>
                    <input name="kehuMM" type="text" placeholder="6-16个字符">
                </li>
                <li>
                	<span>确认密码：</span>
                    <input name="kehuMM" type="text" placeholder="和密码一致">
                </li>
                <li>
                	<span>验证码：</span>
                    <input name="" type="text" placeholder="">
                    <a href="" class="yzm">获取验证码</a>
                </li>
                <li>
                	<input name="" class="check" type="checkbox" value="" checked="checked">
                    已阅读
                    <a href="">找物流网上服务协议</a>
                </li>
                <li class="tijiao">
                	<input type="submit" class="submit" value="注册">
                </li>
                
            </ul>
            </form>
        </div>
        <!--邮箱注册-->
    	<!--登录-->
        <div class="login">
        	<div class="lore_top">
            	<span>
                	<em>马上登录</em>
                </span>
            </div>
        	<form action="${basePath}app/client" method="post">
        	<ul>
            	<li>
                	<span>用户名：</span>
                    <input name="kehuYX" type="text" placeholder="用户名/密码">
                </li>
                <li>
                	<span>密码：</span>
                    <input name="kehuMM" type="text" placeholder="6-16个字符">
                </li>
                <li class="tijiao">
                	<input type="submit" class="submit" value="登录">
                </li>
                <li>
                	<p>
                    	使用合作帐号登录：
                        <a href=""><img src="images/icon10.png"/></a>
                        <a href=""><img src="images/icon12.png"/></a>
                        <a href=""><img src="images/icon13.png"/></a>
                    </p>
                </li>
            </ul>
            </form>
        </div>
        <!--登录-->
    </div>
    <div class="space_hx">&nbsp;</div>
    <div class="f_main clearfix">
    	<ul>
        	<li class="title">
            	<span>快捷下单</span>
            </li>
            <li>
            	<a href="">收发货人管理，快速选择下单</a>
            </li>
            <li>
            	<a href="">按模板下单，无需重复填写</a>
            </li>
            <li>
            	<a href="">便捷城市选择控件</a>
            </li>
        </ul>
        <ul>
        	<li class="title">
            	<span>掌控物流</span>
            </li>
            <li>
            	<a href="">实时追踪，邮件提醒</a>
            </li>
            <li>
            	<a href="">”我的订单状态一览“</a>
            </li>
            <li>
            	<a href="">管理历史订单，按需导出</a>
            </li>
        </ul>
        <ul>
        	<li class="title">
            	<span>在线支付</span>
            </li>
            <li>
            	<a href="">批量支付，一键完成</a>
            </li>
            <li>
            	<a href="">在线支付，安全快捷</a>
            </li>
            <li>
            	<a href="">收发货人均可支付</a>
            </li>
        </ul>
        <ul>
        	<li class="title">
            	<span>在线理赔</span>
            </li>
            <li>
            	<a href="">首届物流在线理赔</a>
            </li>
            <li>
            	<a href="">线上提交，专人受理</a>
            </li>
        </ul>
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
        </div>
    </div>	
</div>
<!--底部-->
</body>
</html>