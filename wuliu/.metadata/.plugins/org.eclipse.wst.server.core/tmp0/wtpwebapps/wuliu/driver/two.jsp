<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/logo.ico">
<title>XXXX物流-货运信息发布</title>
<meta name="description" content="XXXX物流实现了车找货、货找车的实时连接，通过互联网服务于广大货运司机和相关货运的各界人。XXXX物流坚持社会效益始终第一的原则，服务质量期待你的关注，希望一路与你同行，共创美好的未来！">
<meta name="keywords" content="XXXX物流,物流,XXXX物流,货运,货运联盟">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/WdatePicker.css">
<link rel="stylesheet" href="css/reset.css" type="text/css">
<link rel="stylesheet" href="css/LocationRange.css" type="text/css">
<link rel="stylesheet" type="text/css" href="css/freight-info.css">
<!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
<![endif]-->
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>

<!--导航-开始-->
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.html">首页<span class="sr-only"></span></a></li>
                <li><a href="alliance.html">联盟简介</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">货运信息<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">货运信息发布</a></li>
                        <li><a href="freight-details.html">货运信息详情</a></li>
                        <li><a href="freight-map.html">货运地图</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">司机读本<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="driving-knowledge.html">驾驶常识</a></li>
                        <li><a href="driving-knowledge.html">政策法规</a></li>
                        <li><a href="driving-knowledge.html">卡车评估</a></li>
                        <li><a href="driving-knowledge.html">修车指导</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">行内互动<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="line-interaction.html">驾驶员记分</a></li>
                        <li><a href="line-interaction.html">卡车求购转让</a></li>
                        <li><a href="line-interaction.html">招聘信息</a></li>
                    </ul>
                </li>
                <li><a href="contact-us.html">联系我们</a></li>
            </ul>
        </div>
    </div>
</nav>
<!--导航-结束-->

<div class="container biao">
    <div style="border:1px solid #F5841C; margin-left:0; margin-right:0;">
         <ul class="new_tab_ul row">
             <li class="new_tab_f hover col-lg-6 col-md-6 col-sm-6" id="one1" style=" background:#fff;" onclick="setTab(&#39;one&#39;,1,2)">
            	 <a href="javascript:;" style="color:#F5841C;">货源发布</a>
             </li>
             <li class="new_tab_f col-lg-6 col-md-6 col-sm-6" id="one2" onclick="setTab(&#39;one&#39;,2,2)">
         		 <a href="javascript:;">车源发布</a>
             </li>
         </ul>
         <div class="row">
            <!--货源发布-->
            <div class="new_tab_div" id="list_one1">
            	<form action="" method="post" class="bd">
                    <div class="form-group row">
                        <label class="col-sm-2 control-label"><span>*&nbsp;</span>出发城市</label>
                        <div class="list_div area-wraper col-sm-4">
                           <input autocomplete="off" type="text" id="begincity" name="begincity" class="list_select form-control" value="" placeholder="出发城市">
                           <span style="display: none;" class="area-select area-tab">
                              <ul class="h">
                                  <li class="s-tab-t current" tabindex="0"><span class="inner" index="0">常用</span></li>
                                  <li class="s-tab-t" tabindex="1"><span class="inner" index="1">省</span></li>
                                  <li class="s-tab-t" tabindex="2"><span class="inner" index="2">市</span></li>
                                  <li class="s-tab-t" tabindex="3"><span class="inner" index="3">区县</span></li>
                                  <span class="alp-close alp-close-area">&nbsp;</span>
                                  <div class="c"></div>
                              </ul>
                              <div index="0" class="s-tab-b" style="display: block;">
                                  <ul>
                                      <li><a href="javascript:;" class="panel-item" code="291" panel-item="深圳市">深圳市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="289" panel-item="广州市">广州市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="166" panel-item="苏州市">苏州市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="385" panel-item="成都市">成都市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="305" panel-item="东莞市">东莞市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="176" panel-item="宁波市">宁波市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="175" panel-item="杭州市">杭州市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="224" panel-item="青岛市">青岛市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="258" panel-item="武汉市">武汉市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="294" panel-item="佛山市">佛山市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="240" panel-item="郑州市">郑州市</a></li>
                                  </ul>
                                  <div class="c"></div>
                              </div>
                              <div index="1" class="s-tab-b" style="display: none;">
                                  <dl class="panel-category">
                                     <dt>O-T</dt>
                                     <dd>
                                         <ul>
                                            <li><a href="javascript:;" class="panel-item" code="25" panel-item="上海市">上海市</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="27" panel-item="天津市">天津市</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="22" panel-item="青海省">青海省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="26" panel-item="四川省">四川省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="23" panel-item="山东省">山东省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="11" panel-item="山西省">山西省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="24" panel-item="陕西省">陕西省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="3379" panel-item="台湾省">台湾省</a></li>
                                         </ul>
                                     </dd>
                                  </dl>
                                  <dl class="panel-category">
                                     <dt>A-G</dt>
                                     <dd>
                                         <ul>
                                            <li><a href="javascript:;" class="panel-item" code="2" panel-item="北京市">北京市</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="1" panel-item="安徽省">安徽省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="3378" panel-item="澳门">澳门</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="3" panel-item="福建省">福建省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="5" panel-item="广东省">广东省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="4" panel-item="甘肃省">甘肃省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="6" panel-item="广西壮族自治区">广西壮族自治区</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="8" panel-item="贵州省">贵州省</a></li>
                                         </ul>
                                     </dd>
                                  </dl>
                                  <dl class="panel-category">
                                     <dt>W-Z</dt>
                                     <dd>
                                         <ul>
                                            <li><a href="javascript:;" class="panel-item" code="31" panel-item="重庆市">重庆市</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="28" panel-item="西藏自治区">西藏自治区</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="3377" panel-item="香港">香港</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="29" panel-item="新疆维吾尔自治区">新疆维吾尔自治区</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="7" panel-item="云南省">云南省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="30" panel-item="浙江省">浙江省</a></li>
                                         </ul>
                                     </dd>
                                  </dl>
                                  <dl class="panel-category">
                                     <dt>H-N</dt>
                                     <dd>
                                         <ul>
                                            <li><a href="javascript:;" class="panel-item" code="14" panel-item="湖北省">湖北省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="10" panel-item="河北省">河北省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="13" panel-item="黑龙江省">黑龙江省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="9" panel-item="海南省">海南省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="15" panel-item="湖南省">湖南省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="12" panel-item="河南省">河南省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="16" panel-item="吉林省">吉林省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="17" panel-item="江苏省">江苏省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="18" panel-item="江西省">江西省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="19" panel-item="辽宁省">辽宁省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="20" panel-item="内蒙古自治区">内蒙古自治区</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="21" panel-item="宁夏回族自治区">宁夏回族自治区</a></li>
                                         </ul>
                                     </dd>
                                  </dl>
                              </div>
                              <div index="2" class="s-tab-b" style="display: none;"></div>
                              <div index="3" class="s-tab-b" style="display: none;"></div>
                              <div class="c"></div>
                           </span>
                        </div>
                        <label class="col-sm-2 control-label">详细地址</label>
                        <div class="list_div list_div_last col-sm-4">
                            <input type="text" id="get_addr" name="get_addr" class="list_select1 form-control" value="" placeholder="出发地详细地址">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label"><span>*&nbsp;</span>到达城市</label>
                        <div class="list_div area-wraper col-sm-4">
                            <input autocomplete="off" type="text" id="endcity" name="endcity" class="list_select form-control" value="" placeholder="到达城市">
                            <span style="display: none;" class="area-select area-tab">
                                <ul class="h">
                                    <li class="s-tab-t current" tabindex="0"><span class="inner" index="0">常用</span></li>
                                    <li class="s-tab-t" tabindex="1"><span class="inner" index="1">省</span></li>
                                    <li class="s-tab-t" tabindex="2"><span class="inner" index="2">市</span></li>
                                    <li class="s-tab-t" tabindex="3"><span class="inner" index="3">区县</span></li>
                                    <span class="alp-close alp-close-area">&nbsp;</span>
                                    <div class="c"></div>
                                </ul>
                                <div index="0" class="s-tab-b" style="display: block;">
                                    <ul>
                                        <li><a href="javascript:;" class="panel-item" code="291" panel-item="深圳市">深圳市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="289" panel-item="广州市">广州市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="166" panel-item="苏州市">苏州市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="385" panel-item="成都市">成都市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="305" panel-item="东莞市">东莞市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="176" panel-item="宁波市">宁波市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="175" panel-item="杭州市">杭州市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="224" panel-item="青岛市">青岛市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="258" panel-item="武汉市">武汉市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="294" panel-item="佛山市">佛山市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="240" panel-item="郑州市">郑州市</a></li>
                                    </ul>
                                    <div class="c"></div>
                                </div>
                                <div index="1" class="s-tab-b" style="display: none;">
                                    <dl class="panel-category">
                                        <dt>O-T</dt>
                                        <dd>
                                            <ul>
                                                <li><a href="javascript:;" class="panel-item" code="25" panel-item="上海市">上海市</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="27" panel-item="天津市">天津市</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="22" panel-item="青海省">青海省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="26" panel-item="四川省">四川省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="23" panel-item="山东省">山东省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="11" panel-item="山西省">山西省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="24" panel-item="陕西省">陕西省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="3379" panel-item="台湾省">台湾省</a></li>
                                            </ul>
                                        </dd>
                                    </dl>
                                    <dl class="panel-category">
                                        <dt>A-G</dt>
                                        <dd>
                                            <ul>
                                                <li><a href="javascript:;" class="panel-item" code="2" panel-item="北京市">北京市</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="1" panel-item="安徽省">安徽省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="3378" panel-item="澳门">澳门</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="3" panel-item="福建省">福建省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="5" panel-item="广东省">广东省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="4" panel-item="甘肃省">甘肃省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="6" panel-item="广西壮族自治区">广西壮族自治区</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="8" panel-item="贵州省">贵州省</a></li>
                                            </ul>
                                        </dd>
                                    </dl>
                                    <dl class="panel-category">
                                        <dt>W-Z</dt>
                                        <dd>
                                            <ul>
                                                <li><a href="javascript:;" class="panel-item" code="31" panel-item="重庆市">重庆市</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="28" panel-item="西藏自治区">西藏自治区</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="3377" panel-item="香港">香港</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="29" panel-item="新疆维吾尔自治区">新疆维吾尔自治区</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="7" panel-item="云南省">云南省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="30" panel-item="浙江省">浙江省</a></li>
                                            </ul>
                                        </dd>
                                    </dl>
                                    <dl class="panel-category">
                                        <dt>H-N</dt>
                                        <dd>
                                            <ul>
                                                <li><a href="javascript:;" class="panel-item" code="14" panel-item="湖北省">湖北省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="10" panel-item="河北省">河北省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="13" panel-item="黑龙江省">黑龙江省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="9" panel-item="海南省">海南省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="15" panel-item="湖南省">湖南省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="12" panel-item="河南省">河南省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="16" panel-item="吉林省">吉林省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="17" panel-item="江苏省">江苏省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="18" panel-item="江西省">江西省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="19" panel-item="辽宁省">辽宁省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="20" panel-item="内蒙古自治区">内蒙古自治区</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="21" panel-item="宁夏回族自治区">宁夏回族自治区</a></li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                                <div index="2" class="s-tab-b" style="display: none;"></div>
                                <div index="3" class="s-tab-b" style="display: none;"></div>
                                <div class="c"></div>
                            </span>
                        </div>
                        <label class="col-sm-2 control-label">详细地址</label>
                        <div class="list_div list_div_last col-sm-4">
                            <input type="text" id="put_addr" name="put_addr" class="list_select1 form-control" value="" placeholder="到达地详细地址">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label"><span>*&nbsp;</span>货物名称</label>
                        <div class="list_div list_div_last col-sm-3">
                            <input type="text" class="form-control" name="goodstype" id="goodstype" value="" placeholder="请填写货物名称">
                        </div>
                        <label class="col-sm-2 control-label">重量/体积</label>
                        <div class="list_div col-sm-3">
                            <input name="weight_unit" maxlength="5" id="weight" class="form-control" type="text" value="" placeholder="填写阿拉伯数字">
                        </div>
                        <div class="list_div col-sm-2">
                            <select class="list_weight form-control" id="weight_unit">
                                <option value="请选择规格" selected>请选择规格</option>
                                <option value="吨">吨</option>
                                <option value="千克">千克</option>
                                <option value="立方米">立方米</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label"><span>*&nbsp;</span>车辆类型</label>
                        <div class="list_div col-sm-4">
                            <select name="cartype" id="cartype" class="list_type form-control">
                                <option value="请选择" selected>请选择</option>
                                <option value="高栏车">高栏车</option>
                                <option value="标箱车">标箱车</option>
                                <option value="平板车">平板车</option>
                                <option value="其他">其他</option>
                            </select>
                        </div>
                        <label class="col-sm-2 control-label"><span>*&nbsp;</span>车辆长度</label>
                        <div class="list_div col-sm-4">
                            <select name="carlength" id="carlength" class="list_type form-control">
                                <option value="请选择" selected>请选择</option>
                                <option value="零担">零担</option>
                                <option value="4.2米以下">4.2米以下</option>
                                <option value="4.2米">4.2米</option>
                                <option value="4.2米~6.8米">4.2米~6.8米</option>
                                <option value="6.8米~9.6米">6.8米~9.6米</option>
                                <option value="9.6米">9.6米</option>
                                <option value="9.6米~13米">9.6米~13米</option>
                                <option value="13米">13米</option>
                                <option value="13米~17.5米">13米~17.5米</option>
                                <option value="17.5米">17.5米</option>
                            </select>
                        </div>
                     </div>
                     <div class="form-group row">
                        <label class="col-sm-2 control-label"><span>*&nbsp;</span>车辆数量</label>
                        <div class="list_div list_div_last col-sm-4">
                            <select name="car_num" id="car_num" class="list_type form-control">
                                <option value="请选择" selected>请选择</option>
                                <option value="1">1辆</option>
                                <option value="2">2辆</option>
                                <option value="3">3辆</option>
                                <option value="4">4辆</option>
                                <option value="5">5辆</option>
                                <option value="6">6辆</option>
                                <option value="7">7辆</option>
                                <option value="8">8辆</option>
                                <option value="9">9辆</option>
                                <option value="10">10辆</option>
                                <option value="11">11辆</option>
                                <option value="12">12辆</option>
                                <option value="13">13辆</option>
                                <option value="14">14辆</option>
                                <option value="15">15辆</option>
                                <option value="16">16辆</option>
                                <option value="17">17辆</option>
                                <option value="18">18辆</option>
                                <option value="19">19辆</option>
                                <option value="20">20辆</option>
                                <option value="21">21辆</option>
                                <option value="22">22辆</option>
                                <option value="23">23辆</option>
                                <option value="24">24辆</option>
                                <option value="25">25辆</option>
                                <option value="26">26辆</option>
                                <option value="27">27辆</option>
                                <option value="28">28辆</option>
                                <option value="29">29辆</option>
                                <option value="30">30辆</option>
                                <option value="31">31辆</option>
                                <option value="32">32辆</option>
                                <option value="33">33辆</option>
                                <option value="34">34辆</option>
                                <option value="35">35辆</option>
                                <option value="36">36辆</option>
                                <option value="37">37辆</option>
                                <option value="38">38辆</option>
                                <option value="39">39辆</option>
                                <option value="40">40辆</option>
                                <option value="41">41辆</option>
                                <option value="42">42辆</option>
                                <option value="43">43辆</option>
                                <option value="44">44辆</option>
                                <option value="45">45辆</option>
                                <option value="46">46辆</option>
                                <option value="47">47辆</option>
                                <option value="48">48辆</option>
                                <option value="49">49辆</option>
                                <option value="50">50辆</option>
                                <option value="51">51辆</option>
                                <option value="52">52辆</option>
                                <option value="53">53辆</option>
                                <option value="54">54辆</option>
                                <option value="55">55辆</option>
                                <option value="56">56辆</option>
                                <option value="57">57辆</option>
                                <option value="58">58辆</option>
                                <option value="59">59辆</option>
                                <option value="60">60辆</option>
                            </select>
                        </div>
                        <label class="col-sm-2 control-label">运费</label>
                        <div class="list_div col-sm-4">
                            <input name="weight_unit" type="text" class="form-control" placeholder="请输入运费金额">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label"><span>*&nbsp;</span>发货电话</label>
                        <div class="list_div col-sm-4">
                            <input type="text" id="mobileno" name="mobileno" class="list_select1 form-control" value="" placeholder="请输入发货人电话">
                        </div>
                        <label class="col-sm-2 control-label">取货电话</label>
                        <div class="list_div list_div_last col-sm-4">
                            <input type="text" id="endmobile" name="endmobile" class="list_select1 form-control" value="" placeholder="请输入取货人电话">
                        </div>
                    </div>
                    <div class="new_tab_bottom form-group row">
                        <input class=" btn btn-info col-sm-1 col-sm-offset-9" type="submit" value="提交">
                        <input class=" btn btn-warning col-sm-1" type="reset" value="重置">
                    </div>
                </form>
            </div>
            <!--车源发布-->
            <div class="new_tab_div" style="display:none" id="list_one2">
            	<form action="" method="post" class="bd">
                    <div class="form-group row">
                        <label class="col-sm-2 control-label"><span>*&nbsp;</span>出发城市</label>
                        <div class="list_div area-wraper col-sm-4">
                           <input autocomplete="off" type="text" id="car_begincity" name="begincity" class="list_select form-control" value="" placeholder="出发城市">
                           <span style="display: none;" class="area-select area-tab">
                              <ul class="h">
                                  <li class="s-tab-t current" tabindex="0"><span class="inner" index="0">常用</span></li>
                                  <li class="s-tab-t" tabindex="1"><span class="inner" index="1">省</span></li>
                                  <li class="s-tab-t" tabindex="2"><span class="inner" index="2">市</span></li>
                                  <li class="s-tab-t" tabindex="3"><span class="inner" index="3">区县</span></li>
                                  <span class="alp-close alp-close-area">&nbsp;</span>
                                  <div class="c"></div>
                              </ul>
                              <div index="0" class="s-tab-b" style="display: block;">
                                  <ul>
                                      <li><a href="javascript:;" class="panel-item" code="291" panel-item="深圳市">深圳市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="289" panel-item="广州市">广州市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="166" panel-item="苏州市">苏州市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="385" panel-item="成都市">成都市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="305" panel-item="东莞市">东莞市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="176" panel-item="宁波市">宁波市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="175" panel-item="杭州市">杭州市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="224" panel-item="青岛市">青岛市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="258" panel-item="武汉市">武汉市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="294" panel-item="佛山市">佛山市</a></li>
                                      <li><a href="javascript:;" class="panel-item" code="240" panel-item="郑州市">郑州市</a></li>
                                  </ul>
                                  <div class="c"></div>
                              </div>
                              <div index="1" class="s-tab-b" style="display: none;">
                                  <dl class="panel-category">
                                     <dt>O-T</dt>
                                     <dd>
                                         <ul>
                                            <li><a href="javascript:;" class="panel-item" code="25" panel-item="上海市">上海市</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="27" panel-item="天津市">天津市</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="22" panel-item="青海省">青海省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="26" panel-item="四川省">四川省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="23" panel-item="山东省">山东省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="11" panel-item="山西省">山西省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="24" panel-item="陕西省">陕西省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="3379" panel-item="台湾省">台湾省</a></li>
                                         </ul>
                                     </dd>
                                  </dl>
                                  <dl class="panel-category">
                                     <dt>A-G</dt>
                                     <dd>
                                         <ul>
                                            <li><a href="javascript:;" class="panel-item" code="2" panel-item="北京市">北京市</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="1" panel-item="安徽省">安徽省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="3378" panel-item="澳门">澳门</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="3" panel-item="福建省">福建省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="5" panel-item="广东省">广东省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="4" panel-item="甘肃省">甘肃省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="6" panel-item="广西壮族自治区">广西壮族自治区</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="8" panel-item="贵州省">贵州省</a></li>
                                         </ul>
                                     </dd>
                                  </dl>
                                  <dl class="panel-category">
                                     <dt>W-Z</dt>
                                     <dd>
                                         <ul>
                                            <li><a href="javascript:;" class="panel-item" code="31" panel-item="重庆市">重庆市</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="28" panel-item="西藏自治区">西藏自治区</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="3377" panel-item="香港">香港</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="29" panel-item="新疆维吾尔自治区">新疆维吾尔自治区</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="7" panel-item="云南省">云南省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="30" panel-item="浙江省">浙江省</a></li>
                                         </ul>
                                     </dd>
                                  </dl>
                                  <dl class="panel-category">
                                     <dt>H-N</dt>
                                     <dd>
                                         <ul>
                                            <li><a href="javascript:;" class="panel-item" code="14" panel-item="湖北省">湖北省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="10" panel-item="河北省">河北省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="13" panel-item="黑龙江省">黑龙江省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="9" panel-item="海南省">海南省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="15" panel-item="湖南省">湖南省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="12" panel-item="河南省">河南省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="16" panel-item="吉林省">吉林省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="17" panel-item="江苏省">江苏省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="18" panel-item="江西省">江西省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="19" panel-item="辽宁省">辽宁省</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="20" panel-item="内蒙古自治区">内蒙古自治区</a></li>
                                            <li><a href="javascript:;" class="panel-item" code="21" panel-item="宁夏回族自治区">宁夏回族自治区</a></li>
                                         </ul>
                                     </dd>
                                  </dl>
                              </div>
                              <div index="2" class="s-tab-b" style="display: none;"></div>
                              <div index="3" class="s-tab-b" style="display: none;"></div>
                              <div class="c"></div>
                           </span>
                        </div>
                        <label class="col-sm-2 control-label"><span>*&nbsp;</span>到达城市</label>
                        <div class="list_div area-wraper col-sm-4">
                            <input autocomplete="off" type="text" id="car_endcity" name="endcity" class="list_select form-control" value="" placeholder="到达城市">
                            <span style="display: none;" class="area-select area-tab">
                                <ul class="h">
                                    <li class="s-tab-t current" tabindex="0"><span class="inner" index="0">常用</span></li>
                                    <li class="s-tab-t" tabindex="1"><span class="inner" index="1">省</span></li>
                                    <li class="s-tab-t" tabindex="2"><span class="inner" index="2">市</span></li>
                                    <li class="s-tab-t" tabindex="3"><span class="inner" index="3">区县</span></li>
                                    <span class="alp-close alp-close-area">&nbsp;</span>
                                    <div class="c"></div>
                                </ul>
                                <div index="0" class="s-tab-b" style="display: block;">
                                    <ul>
                                        <li><a href="javascript:;" class="panel-item" code="291" panel-item="深圳市">深圳市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="289" panel-item="广州市">广州市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="166" panel-item="苏州市">苏州市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="385" panel-item="成都市">成都市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="305" panel-item="东莞市">东莞市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="176" panel-item="宁波市">宁波市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="175" panel-item="杭州市">杭州市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="224" panel-item="青岛市">青岛市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="258" panel-item="武汉市">武汉市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="294" panel-item="佛山市">佛山市</a></li>
                                        <li><a href="javascript:;" class="panel-item" code="240" panel-item="郑州市">郑州市</a></li>
                                    </ul>
                                    <div class="c"></div>
                                </div>
                                <div index="1" class="s-tab-b" style="display: none;">
                                    <dl class="panel-category">
                                        <dt>O-T</dt>
                                        <dd>
                                            <ul>
                                                <li><a href="javascript:;" class="panel-item" code="25" panel-item="上海市">上海市</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="27" panel-item="天津市">天津市</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="22" panel-item="青海省">青海省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="26" panel-item="四川省">四川省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="23" panel-item="山东省">山东省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="11" panel-item="山西省">山西省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="24" panel-item="陕西省">陕西省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="3379" panel-item="台湾省">台湾省</a></li>
                                            </ul>
                                        </dd>
                                    </dl>
                                    <dl class="panel-category">
                                        <dt>A-G</dt>
                                        <dd>
                                            <ul>
                                                <li><a href="javascript:;" class="panel-item" code="2" panel-item="北京市">北京市</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="1" panel-item="安徽省">安徽省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="3378" panel-item="澳门">澳门</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="3" panel-item="福建省">福建省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="5" panel-item="广东省">广东省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="4" panel-item="甘肃省">甘肃省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="6" panel-item="广西壮族自治区">广西壮族自治区</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="8" panel-item="贵州省">贵州省</a></li>
                                            </ul>
                                        </dd>
                                    </dl>
                                    <dl class="panel-category">
                                        <dt>W-Z</dt>
                                        <dd>
                                            <ul>
                                                <li><a href="javascript:;" class="panel-item" code="31" panel-item="重庆市">重庆市</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="28" panel-item="西藏自治区">西藏自治区</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="3377" panel-item="香港">香港</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="29" panel-item="新疆维吾尔自治区">新疆维吾尔自治区</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="7" panel-item="云南省">云南省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="30" panel-item="浙江省">浙江省</a></li>
                                            </ul>
                                        </dd>
                                    </dl>
                                    <dl class="panel-category">
                                        <dt>H-N</dt>
                                        <dd>
                                            <ul>
                                                <li><a href="javascript:;" class="panel-item" code="14" panel-item="湖北省">湖北省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="10" panel-item="河北省">河北省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="13" panel-item="黑龙江省">黑龙江省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="9" panel-item="海南省">海南省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="15" panel-item="湖南省">湖南省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="12" panel-item="河南省">河南省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="16" panel-item="吉林省">吉林省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="17" panel-item="江苏省">江苏省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="18" panel-item="江西省">江西省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="19" panel-item="辽宁省">辽宁省</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="20" panel-item="内蒙古自治区">内蒙古自治区</a></li>
                                                <li><a href="javascript:;" class="panel-item" code="21" panel-item="宁夏回族自治区">宁夏回族自治区</a></li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                                <div index="2" class="s-tab-b" style="display: none;"></div>
                                <div index="3" class="s-tab-b" style="display: none;"></div>
                                <div class="c"></div>
                            </span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label">重量/体积</label>
                        <div class="list_div col-sm-5">
                            <input maxlength="5" id="weight" class="form-control" type="text" value="" placeholder="填写阿拉伯数字">
                        </div>
                        <div class="list_div col-sm-5">
                            <select class="list_weight form-control" id="weight_unit">
                                <option value="请选择规格" selected>请选择规格</option>
                                <option value="吨">吨</option>
                                <option value="千克">千克</option>
                                <option value="立方米">立方米</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label"><span>*</span>车辆类型</label>
                        <div class="list_div col-sm-3">
                            <select name="cartype" id="cartype" class="list_type form-control">
                                <option value="请选择" selected>请选择</option>
                                <option value="高栏车">高栏车</option>
                                <option value="标箱车">标箱车</option>
                                <option value="平板车">平板车</option>
                                <option value="其他">其他</option>
                            </select>
                        </div>
                        <div class="list_div col-sm-3">
                            <select name="carlength" id="carlength" class="list_type form-control">
                                <option value="请选择" selected>请选择车辆长度</option>
                                <option value="4.2米以下">4.2米以下</option>
                                <option value="4.2米">4.2米</option>
                                <option value="4.2米~6.8米">4.2米~6.8米</option>
                                <option value="6.8米~9.6米">6.8米~9.6米</option>
                                <option value="9.6米">9.6米</option>
                                <option value="9.6米~13米">9.6米~13米</option>
                                <option value="13米">13米</option>
                                <option value="13米~17.5米">13米~17.5米</option>
                                <option value="17.5米">17.5米</option>
                            </select>
                        </div>
                        <div class="list_div list_div_last col-sm-4">
                            <select name="car_num" id="car_num" class="list_type form-control">
                                <option value="请选择" selected>请选择车辆数量</option>
                                <option value="1">1辆</option>
                                <option value="2">2辆</option>
                                <option value="3">3辆</option>
                                <option value="4">4辆</option>
                                <option value="5">5辆</option>
                                <option value="6">6辆</option>
                                <option value="7">7辆</option>
                                <option value="8">8辆</option>
                                <option value="9">9辆</option>
                                <option value="10">10辆</option>
                                <option value="11">11辆</option>
                                <option value="12">12辆</option>
                                <option value="13">13辆</option>
                                <option value="14">14辆</option>
                                <option value="15">15辆</option>
                                <option value="16">16辆</option>
                                <option value="17">17辆</option>
                                <option value="18">18辆</option>
                                <option value="19">19辆</option>
                                <option value="20">20辆</option>
                                <option value="21">21辆</option>
                                <option value="22">22辆</option>
                                <option value="23">23辆</option>
                                <option value="24">24辆</option>
                                <option value="25">25辆</option>
                                <option value="26">26辆</option>
                                <option value="27">27辆</option>
                                <option value="28">28辆</option>
                                <option value="29">29辆</option>
                                <option value="30">30辆</option>
                                <option value="31">31辆</option>
                                <option value="32">32辆</option>
                                <option value="33">33辆</option>
                                <option value="34">34辆</option>
                                <option value="35">35辆</option>
                                <option value="36">36辆</option>
                                <option value="37">37辆</option>
                                <option value="38">38辆</option>
                                <option value="39">39辆</option>
                                <option value="40">40辆</option>
                                <option value="41">41辆</option>
                                <option value="42">42辆</option>
                                <option value="43">43辆</option>
                                <option value="44">44辆</option>
                                <option value="45">45辆</option>
                                <option value="46">46辆</option>
                                <option value="47">47辆</option>
                                <option value="48">48辆</option>
                                <option value="49">49辆</option>
                                <option value="50">50辆</option>
                                <option value="51">51辆</option>
                                <option value="52">52辆</option>
                                <option value="53">53辆</option>
                                <option value="54">54辆</option>
                                <option value="55">55辆</option>
                                <option value="56">56辆</option>
                                <option value="57">57辆</option>
                                <option value="58">58辆</option>
                                <option value="59">59辆</option>
                                <option value="60">60辆</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><span>*&nbsp;</span>发车电话</label>
                        <div class="list_div col-sm-4">
                            <input type="text" id="mob" name="mob" class="list_select1 form-control" value="" placeholder="请输入手机号">
                        </div>
                        <label class="col-sm-2 control-label"><span>*&nbsp;</span>发车时间</label>
                        <div class="list_div list_div_last col-sm-3">
                            <input placeholder="请输入日期" class="laydate-icon form-control" style="height:34px;" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
                        </div>
                    </div>
                    <div class="new_tab_bottom form-group row">
                        <input class=" btn btn-info col-sm-1 col-sm-offset-9" type="submit" value="提交">
                        <input class=" btn btn-warning col-sm-1" type="reset" value="重置">
                    </div>
                </form>
            </div>
         </div> 
    </div>
    <div class="container row">
    	<p style="text-align:right; color:red; margin-right:15px;">* 发布的信息只保留15天！</p>
    </div>
</div>

<!--尾部-开始-->
<div class="footer" style="background:#525252; width:100%; padding-bottom:20px; margin-top:30px;">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <p>友情链接</p>
                <hr>
                <ul>
                   <li><a href="" target="_blank">中国物流网</a></li>
                   <li><a href="" target="_blank">中国物流网</a></li>
                   <li><a href="" target="_blank">中国物流网</a></li>
                </ul>
            </div>
            <div class="col-sm-4">
                <p>XXXX物流</p>
                <hr>
                <p>XXXX物流成立于2013年，是一家专业提供互联网物流信息的网站。</p>
                <p>XXXX物流实现了车找货、货找车的实时连接，通过互联网服务于广大货运司机和相关货运的各界人士。</p>
                <p>XXXX物流坚持社会效益始终第一的原则，服务质量期待你的关注，希望一路与你同行，共创美好的未来！</p>
            </div>
            <div class="col-sm-4">
                <p><a href="contact-us.html">加盟我们</a> | <a href="contact-us.html">联系我们</a></p>
                <hr>
                <p>咨询电话：13462264663</p>
                <p>邮箱：xinguanghuoyun@163.com</p>
                <p>地址：河南省新乡市八一路35号中同街办事处</p>
            </div>
            <div class="col-sm-12 text-center" style="margin-top:20px;">
            	Copyright ©  XXXX物流 版权所有 Power by www.xghylm.com  更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a>
            </div>
        </div>
    </div>
</div>
<!--尾部-结束-->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/laydate.js"></script>
<script type="text/javascript">
!function(){
	laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
	laydate({elem: '#demo'});//绑定元素
}();

//日期范围限制
var start = {
    elem: '#start',
    format: 'YYYY-MM-DD',
    min: laydate.now(), //设定最小日期为当前日期
    max: '2099-06-16', //最大日期
    istime: true,
    istoday: false,
    choose: function(datas){
         end.min = datas; //开始日选好后，重置结束日的最小日期
         end.start = datas //将结束日的初始值设定为开始日
    }
};

var end = {
    elem: '#end',
    format: 'YYYY-MM-DD',
    min: laydate.now(),
    max: '2099-06-16',
    istime: true,
    istoday: false,
    choose: function(datas){
        start.max = datas; //结束日选好后，充值开始日的最大日期
    }
};
laydate(start);
laydate(end);

//自定义日期格式
laydate({
    elem: '#test1',
    format: 'YYYY年MM月DD日',
    festival: true, //显示节日
    choose: function(datas){ //选择日期完毕的回调
        alert('得到：'+datas);
    }
});

//日期范围限定在昨天到明天
laydate({
    elem: '#hello3',
    min: laydate.now(-1), //-1代表昨天，-2代表前天，以此类推
    max: laydate.now(+1) //+1代表明天，+2代表后天，以此类推
});
</script>
<script type="text/javascript">
    var app_url ='';
    $(document).ready(function(){	

	       $.post(app_url+"goods/",{num:0,type:8},function(data){
				if(data.resid){
						  $('#demo1').html(data.msg);
					}
				},'json');
			
		    $.post(app_url+"goods_count/",{},function(data){
			if(data.resid){
				      $('#zxhz').html(data.msg);	
					  $('#zxcy').html(data.msgs);
				}
			},'json');

		});  

    function setTab(name,cursel,n){
		for(i=1;i<=n;i++){
			if(cursel==i){
			   $('#'+name+i).attr("class","hover");
			   $('#'+name+i).css("background","#fff");
			   $('#'+name+i+" a").css("color","#F5841C");
			   $('#list_'+name+i).css("display","block");
			 }else{
			   $('#'+name+i).attr("class","");
			   $('#'+name+i).css("background","#F5841C");
			   $('#'+name+i+" a").css("color","#fff");
			   $('#list_'+name+i).css("display","none");
			 }
		}
}

    function setTab2(name,cursel,n){
		for(i=1;i<=n;i++){
			if(cursel==i){
			   $('#'+name+i).attr("class","tit_hover");
			   $('#'+name+i+" a").css("color","#29a25b");
			   $('#list_'+name+i).css("display","block");
			 }else{
			   $('#'+name+i).attr("class","");
			   $('#'+name+i+" a").css("color","#fff");
			   $('#list_'+name+i).css("display","none");
			 }
		}
}

	$(function(){
      $('.denglu').click(function(){
           $('.head').toggle();
		   
		   
	    });   
	  $('.guanbi').click(function(){
           $('.head').hide();
	    });
	 $('.guanbi1').click(function(){
           $('.header').hide();
	    });
      $('.chaxun').click(function(){
           var  search_begincity = $('#search_begincity').val();
		   var  search_endcity = $('#search_endcity').val();
		   if(search_begincity.length <= 0 &&search_endcity.length <= 0 ){
			    $('#demo1').show().html("<div style='font-size:12px; color:#50B1E3; line-height:24px; padding-left:20px;'>请输入出发城市或到达城市！</div>");
				return false;
			}
		   
		   var  type = $('#type').val();
		    $.post(app_url+"goods/",{num:0,type:type,search_begincity:search_begincity,search_endcity:search_endcity},function(data){
				if(data.resid){
						  $('#demo1').html(data.msg);
					}
				},'json');
	   
	    });
		
		$('#huo1').click(function(){
			$.post(app_url+"goods/",{num:0,type:8},function(data){
			if(data.resid){
					  $('#demo1').html(data.msg);
				}
			},'json');

		});
		
		$('#huo2').click(function(){
			var num = 0;
			$.post(app_url+"carlist/",{type:6},function(data){
				if(data.resid){
				    $('#demo2').html(data.msg);	
					}
				},'json');
		});
		$('#huo3').click(function(){
			var num = 0;
			$.post(app_url+"goods/",{type:1,num:0},function(data){
				if(data.resid){
				    $('#demo3').html(data.msg);	
					}
				},'json');
		});
		$('#huo4').click(function(){
			var num = 0;
			$.post(app_url+"carlist/",{type:1},function(data){
				if(data.resid){
				    $('#demo4').html(data.msg);	

					}
				},'json');
		});
		$('#huo5').click(function(){
			var num = 0;
			$.post(app_url+"carlist/",{type:2},function(data){
				if(data.resid){
				    $('#demo5').html(data.msg);	

					}
				},'json');
		});
		$('#huo6').click(function(){
			var num = 0;
			$.post(app_url+"goods/",{num:0,type:2},function(data){
				if(data.resid){
				    $('#demo6').html(data.msg);	

					}
				},'json');
		});		

		$('input').focus(function(){  
		   $(this).attr('placeholder','');
		})	
		$('.tp_bk_1').mouseover(function(){  	   
				 $(this).attr('class','tp_bk'); 
		});
		
       	$('.tp_bk_1').mouseout(function(){  
             $(this).attr('class','tp_bk_1'); 
		});
		   
		$('input').blur(function(){
			 var numb = $("#mobile").val();
			 var verify = $("#verify").val();
			 var code = $("#code").val();
			 var mobileno = $("#mobileno").val();
			 var goodstype = $("#goodstype").val();
			 if(mobileno == ''){
				$("#mobileno").attr('placeholder','请输入您的手机号');
			 }
			 if(numb == ''){
				$("#mobile").attr('placeholder','请输入您的手机号');
			 }
			 if(code == ''){
				$("#code").attr('placeholder','请输入验证码');
			 }
			 if(verify == ''){
				$("#verify").attr('placeholder','请输入验证码');
			 } 
		});
		

		$('.btnLogin,#btnLogin').click(function(){
   
			var mobileno = $('#mobileno').val();
			var begincity = $('#begincity').val();
			var endcity = $('#endcity').val();
			var get_addr = $('#get_addr').val();
			var put_addr = $('#put_addr').val();
			var endmobile = $('#endmobile').val();
			var goodstype = $('#goodstype').val();
			var yan_code = $('#yan_code').val();
			var verify = $('#car_verify').val();
             
		   
			if(begincity.length <= 0){
			    $('.begincity').show();
				$('#begincity').focus();
				return false;
			}else{
			    $('.begincity').show();
			}
			if(endcity.length <= 0){
				$('.endcity').show();
				$('#endcity').focus();
				return false;
			}else{
			    $('.endcity').hide();
			}
			
			if(goodstype.length <= 0){
			    $('.goodstype').show().html("货物名称不能为空");
				$('#goodstype').focus();
				return false;
			}else{
			    $('.good_stype').hide();
			}
			if(mobileno.length != 11){
				$('.mobileno').show().html("发货人电话不能为空");
				$('#mobileno').focus();
				return false;
			}else{
			    $('.mobileno').hide();
			}

			if(yan_code.length != 4){
			    $('.header').show();
				$('#car_mobileno').attr("value",mobileno);
				$('#btnLogin').attr("class","btnLogin");
				$('#yan_code').focus();
				return false;
			}else{
			    $('.yan_code').hide();
			}
			

			if(verify.length != 4){
			    $('.ve_rify').show();
				$('#car_verify').focus();
				return false;
			}else{
			    $('.ve_rify').hide();
			}
				$.post(app_url+"goods_send/",{mobileno:mobileno,get_addr:get_addr,put_addr:put_addr,endmobile:endmobile,begincity:begincity,endcity:endcity,verify:verify,goodstype:goodstype,ips:"61.52.245.52"},function(data){
				if(data.resid==1){
				    $('.header').hide();
					$('.btn_Login').html(data.msg);
				    $('.new_importance_tab').append(data.xinxi);
					//$('#items_denglu').html(denglu);
				}else if(data.resid==2){
				    $('.mobileno').show().html(data.msg);
					
				}else{
				    $('.mobileno').show().html(data.msg);
					
				}
			},'json');
			
			 var wait=100; 
             time(this);
			 function time(o) { 
                if (wait == 0) { 
                    o.removeAttribute("disabled");           
                    o.value="发布货源"; 
                    wait = 100; 
                } else { 
                    o.setAttribute("disabled", true); 
                    o.value=wait+"秒可再次发货"; 
                    wait--; 
                    setTimeout(function() { 
                        time(o) 
                    }, 
                    1000) 
                } 
               }
			
		});
		
 	$('.car_btnLogin').click(function(){
			var mobileno = $('#car_mobileno').val();
			var begincity = $('#car_begincity').val();
			var endcity = $('#car_endcity').val();
			var verify = $('#car_verify').val();
			var cartype = $('#cartype').val();
			var car_num = $('#car_num').val();
			var carlength = $('#carlength').val();
			var weight = $('#weight').val();
			var weight_unit = $('#weight_unit').val();
			var volume = $('#volume').val();
			var runtime = $('#runtime').val();
			var mob = $('#mob').val();
			if(begincity.length <= 0){
				$('.city').show().html("出发城市不能为空！");
				$('#car_begincity').focus();
				return false;
			}else{
			      $('.city').hide();
			}
			if(endcity.length <= 0){
				$('.city').show().html("到达城市不能为空！");
				$('#car_endcity').focus();
				return false;
			}else{
			      $('.city').hide();
			}
			
			if(weight.length > 5){
				$('.weight').show().html("重量填写过大");
				$('#weight').focus();
				return false;
			}else{
			    $('.weight').hide();
			}
			if(volume.length > 5){
				$('.weight').show().html("体积填写过大");
				$('#volume').focus();
				return false;
			}else{
			    $('.weight').hide();
			}
			if(runtime.length <= 0){
				$('.runtime').show().html("发车时间不能为空!");
				$('#runtime').focus();
				return false;
			}else{
			    $('.runtime').hide();
			}
			
			
			if(mobileno.length != 11){
				$('.header').show();
				$('#car_mobileno').attr("value",mob);
				$('#btnLogin').attr("id","");
				return false;
			}	
			
			if(verify.length != 4){
				$('.yz_ts').show().html('请输入正确验证码!');
				$('#car_verify').focus();
				return false;
			}	
						
			$.post(app_url+"car_send/",{mobileno:mobileno,begincity:begincity,endcity:endcity,verify:verify,cartype:cartype,car_num:car_num,carlength:carlength,weight:weight,weight_unit:weight_unit,volume:volume,runtime:runtime,ips:"61.52.245.52"},function(data){
				if(data.resid==1){
					$('.header').hide();
				    $('.new_importance_tab').append(data.xinxi);
				}else if(data.resid==2){
                    $('.runtime').show().html(data.msg);
				    $('.yz_ts').show().html(data.msg);
				}else{
				    $('.yz_ts').show().html(data.msg);
					$('.runtime').show().html(data.msg);
					
				}
			},'json');
		});
		
		$('.dl_btnLogin').click(function(){
			var mobile = $('#dl_mobileno').val();
			var verify  = $('#dl_verify').val();
			if(mobile.length <= 0){
				$('.dl_yz_ts').show().html('手机要号码不能为空');
				$('#dl_mobileno').focus();
				return false;
			}
			if(verify.length <= 0){
				$('.dl_yz_ts').show().html('验证码不能为空');
				$('#dl_verify').focus();
				return false;
			}
		//	return  false;
			$.post(app_url+"register/",{mobileno:mobile,code:verify},function(data){
			if(data.resid==1){
			        $('#main').append('<iframe frameborder="0" width="1px" height="1px" src=""></iframe>');
					$('.head').hide();
					window.location.href=app_url;
					$('.denglu').append(data.msg);
					 
				}else{
					$('.dl_yz_ts').show().html(data.msg);
				}
			},'json');
		 
		 });	
})
	function gb(){ 
		$('#tc').hide();	
		window.location.href=app_url;	
	}	
	
    function qiang(billno){
	
           	$.post(app_url+"car_bill_qiang/",{billno:billno},function(data){
				if(data.resid==2){
				   
					$('#A' + billno).show().html(data.msg);
                    $('#C' + billno).show().html("已查看");

				}else{
					$('#A' + billno).show().html(data.msg);
				}
			},'json');
		 
	//	$('#A' + billno).html('<div class="main_4_1">车主电话:15510686838</div><div class="main_4_2"><a>拨号</a></div>');		
	}
	
	function yuding(billno){
	
           	$.post(app_url+"getcarsdetail/",{billno:billno},function(data){
				if(data){

					$('#b' + billno).show().html(data.msg);
					$('#z' + billno).show().html('已查看');

				}
			},'json');
		 
	//	$('#A' + billno).html('<div class="main_4_1">车主电话:15510686838</div><div class="main_4_2"><a>拨号</a></div>');		
	}
	
	function carsdetail(billno){
	
           	$.post(app_url+"carsdetail/",{billno:billno},function(data){
				if(data){

					$('#b' + billno).show().html(data.msg);

				}
			},'json');
		 
	//	$('#A' + billno).html('<div class="main_4_1">车主电话:15510686838</div><div class="main_4_2"><a>拨号</a></div>');		
	}	
	
	function show(billno){
	 
           	$.post(app_url+"goods_qiang/",{bill:billno},function(data){
				if(data.qianlist){
					$('#add'+billno).toggle().html(data.qianlist);
				}else{
				    $('#add'+billno).toggle().html(data.msg);
					
				}
			},'json');
	}	
	
	function msn(){
		var mobile = $('#car_mobileno').val();
		var yan_code = $('#yan_code').val();
		if(mobile.length != 11){
			$('.yz_ts').show().html("手机号码输入错误！");
			$('#mobile').focus();
			return false;
		}
        $.post(app_url+"msn/",{mobile:mobile,yan_code:yan_code},function(data){
			if(data.resid==3){
				$('.yz_ts').show().html(data.msg);
			}else{	
				$('.yz_ts').show().html(data.msg);
			}
		},'json');
	}
	
		function dl_msn(){
		var mobile = $('#dl_mobileno').val();
		var yan_code = $('#dl_code').val();
		if(mobile.length != 11){
			$('.dl_yz_ts').show().html("手机号码输入错误！");
			$('#dl_mobileno').focus();
			return false;
		}
        $.post(app_url+"msn/",{mobile:mobile,yan_code:yan_code},function(data){
			if(data.resid==3){
				$('.dl_yz_ts').show().html(data.msg);
			}else{	
				$('.dl_yz_ts').show().html(data.msg);
			}
		},'json');
	}
</script> 
<script src="js/jquery_002_002.js" type="text/javascript"></script> 
<script src="js/areaData1.js" type="text/javascript"></script> 
<script src="js/LocationRange.js" type="text/javascript"></script> 
<script src="js/jquery_003.js" type="text/javascript"></script> 
</body>
</html>