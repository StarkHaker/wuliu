<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/logo.ico">
<title>XXXX物流-货运信息详情</title>
<meta name="description" content="XXXX物流实现了车找货、货找车的实时连接，通过互联网服务于广大货运司机和相关货运的各界人。XXXX物流坚持社会效益始终第一的原则，服务质量期待你的关注，希望一路与你同行，共创美好的未来！">
<meta name="keywords" content="XXXX物流,物流,XXXX物流,货运,货运联盟">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${basePath}driver/css/style.css">
<link rel="stylesheet" type="text/css" href="${basePath}driver/css/WdatePicker.css">
<link rel="stylesheet" href="${basePath}driver/css/reset.css" type="text/css">
<link rel="stylesheet" href="${basePath}driver/css/LocationRange.css" type="text/css">
<link rel="stylesheet" type="text/css" href="${basePath}driver/css/freight-detail.css">
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
                        <li><a href="freight-info.html">货运信息发布</a></li>
                        <li><a href="#">货运信息详情</a></li>
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
	<div style="margin-left:0; margin-right:0;">
    	 <ul class="row xiangqing" style=" background:#f5f5f5">
             <li class="tit_hover col-lg-3 col-md-3 col-sm-3" style="width:25%" id="huo1" onclick="setTab2(&#39;huo&#39;,1,4)">货源信息</li>
             <li class="col-lg-3 col-md-3 col-sm-3" id="huo2" style="width:25%" onclick="setTab2(&#39;huo&#39;,2,4)">我的货源</li>
             <li class="col-lg-3 col-md-3 col-sm-3" id="huo3" style="width:25%" onclick="setTab2(&#39;huo&#39;,3,4)">车源信息</li>
             <li class="col-lg-3 col-md-3 col-sm-3" id="huo4" style="width:25%" onclick="setTab2(&#39;huo&#39;,4,4)">我的车源</li>
         </ul>
         <!--货源信息-->
         <div class="bill_left_text" id="list_huo1">
        	<div class="bill_chaxun">
            	<form action="" method="post" class="form-horizontal bd">
                    <div class="form-group row" style="margin-bottom:0;">
                        <label class="col-md-1 control-label">起点</label>
                        <div class="list_div area-wraper col-md-2">
                            <input class="list_select form-control" autocomplete="off" id="search_begincity" name="search_begincity" placeholder="" type="text">
                            <span style="display: none;" class="area-select area-tab">
                              <ul class="h">
                                  <li tabindex="0" class="s-tab-t current"><span class="inner" index="0">常用</span></li>
                                  <li tabindex="1" class="s-tab-t"><span class="inner" index="1">省</span></li>
                                  <li tabindex="2" class="s-tab-t"><span class="inner" index="2">市</span></li>
                                  <li tabindex="3" class="s-tab-t"><span class="inner" index="3">区县</span></li>
                                  <span class="alp-close alp-close-area">&nbsp;</span>
                                  <div class="c"></div>
                              </ul>
                              <div style="display: block;" index="0" class="s-tab-b">
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
                              <div style="display: none;" index="1" class="s-tab-b">
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
                                              <li><a href="javascript:;" class="panel-item" code="3379" panel-item="台湾">台湾</a></li>
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
                              <div style="display: none;" index="2" class="s-tab-b"></div>
                              <div style="display: none;" index="3" class="s-tab-b"></div>
                              <div class="c"></div>
                          </span>
                        </div>
                        <label class="col-md-1 control-label">终点</label>
                        <div class="list_div area-wraper col-md-2">
                            <input class="list_select form-control" autocomplete="off" id="search_endcity" name="search_endcity" placeholder="" type="text">
                            <span style="display: none;" class="area-select area-tab">
                              <ul class="h">
                                  <li tabindex="0" class="s-tab-t current"><span class="inner" index="0">常用</span></li>
                                  <li tabindex="1" class="s-tab-t"><span class="inner" index="1">省</span></li>
                                  <li tabindex="2" class="s-tab-t"><span class="inner" index="2">市</span></li>
                                  <li tabindex="3" class="s-tab-t"><span class="inner" index="3">区县</span></li>
                                  <span class="alp-close alp-close-area">&nbsp;</span>
                                  <div class="c"></div>
                              </ul>
                              <div style="display: block;" index="0" class="s-tab-b">
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
                              <div style="display: none;" index="1" class="s-tab-b">
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
                                            <li><a href="javascript:;" class="panel-item" code="3379" panel-item="台湾">台湾</a></li>
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
                              <div style="display: none;" index="2" class="s-tab-b"></div>
                              <div style="display: none;" index="3" class="s-tab-b"></div>
                              <div class="c"></div>
                          </span>
                        </div>
                        <label class="col-md-1 control-label">车辆类型</label>
                        <div class="list_div col-md-1">
                            <select name="cartype" id="cartype" class="list_type form-control" style="padding-left:0;">
                                <option value="请选择" selected>请选择</option>
                                <option value="高栏车">高栏车</option>
                                <option value="标箱车">标箱车</option>
                                <option value="平板车">平板车</option>
                                <option value="其他">其他</option>
                            </select>
                        </div>
                        <label class="col-md-1 control-label">车辆高度</label>
                        <div class="list_div col-md-2">
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
                        <div class="col-md-1" style="float:right">
                            <input class="btn btn-info form-control" type="submit" value="查询">
                        </div>
                    </div>
                </form>
            </div> 
            <div class="hy_right_top">
                <p>货源信息</p>
            </div>       
            <table class="table table-bordered" style="margin-bottom:0; width:100%">
            	<thead>
                	<tr style="background-color:#ebebeb">
                        <td>货主姓名</td>
                        <td>运输路线</td>
                        <td>货物描述</td>
                        <td>意向价格</td>
                        <td>车辆类型</td>
                        <td>车辆长度</td>
                        <td>发布时间</td>
                        <td>状态</td>
                    </tr>
                </thead>
                <tbody>
                	<tr>
                        <td>易平立</td>
                        <td>
                            <span>起点：</span>湖南省-娄底市-娄星区<br><span>终点：</span>广东省-东莞市-市辖区
                        </td>
                        <td>小钢卷</td>
                        <td>价格面议</td>
                        <td>高栏车</td>
                        <td>4.2米</td>
                        <td>9秒前</td>
                        <td class="yincang">
                            <a style="color:red">查看</a>
                            <div class="text" style="display:none">
                                重量:
                                <span>5吨</span><br>
                                车辆数量：
                                <span>3</span><br>
                                运费：
                                <span>6000</span><br>
                                发货电话：
                                <span>15225033124</span><br>
                                取货电话：
                                <span>空</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>易平立</td>
                        <td>
                            <span>起点：</span>湖南省-娄底市-娄星区<br><span>终点：</span>广东省-东莞市-市辖区
                        </td>
                        <td>小钢卷</td>
                        <td>价格面议</td>
                        <td>高栏车</td>
                        <td>4.2米</td>
                        <td>9秒前</td>
                        <td class="yincang">
                            <a style="color:red">查看</a>
                            <div class="text" style="display:none">
                                重量:
                                <span>5吨</span><br>
                                车辆数量：
                                <span>3</span><br>
                                运费：
                                <span>6000</span><br>
                                发货电话：
                                <span>15225033124</span><br>
                                取货电话：
                                <span>空</span>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="list_more" id="getmore1">更多»</div>
         </div>
         <!--我的货源-->
         <div class="bill_left_text" id="list_huo2" style="display:none;">
            <div class="hy_right_top">
                <p>我的货源</p>
            </div>       
            <table class="table table-bordered" style="margin-bottom:0;">
            	<thead>
                	<tr>
                        <td style=" background-color:#ebebeb">出发地</td>
                        <td style=" background-color:#ebebeb">到达地</td>
                        <td style=" background-color:#ebebeb">货物描述</td>
                        <td style=" background-color:#ebebeb">意向价格</td>
                        <td style=" background-color:#ebebeb">发布时间</td>
                        <td style=" background-color:#ebebeb">状态</td>
                        <td style=" background-color:#ebebeb">操作</td>
                    </tr>
                </thead>
                <tbody>
                	<tr>
                        <td>山东省-济宁市-邹城市</td>
                        <td> 浙江省-湖州市-全市</td>
                        <td>小钢卷</td>
                        <td>价格面议</td>
                        <td>2016-01-11 00:00:00</td>
                        <td>
                        	<a href="" style="display:none">正常</a>
                            <a href="">过期</a>
                        </td>
                        <td>
                        	<a href="">[删除]</a>
                            <a href="">[重发]</a>
                        </td>
                    </tr>
                    <tr>
                        <td>山东省-济宁市-邹城市</td>
                        <td> 浙江省-湖州市-全市</td>
                        <td>小钢卷</td>
                        <td>价格面议</td>
                        <td>2016-01-11 00:00:00</td>
                        <td>
                        	<a href="">正常</a>
                            <a href="" style="display:none">过期</a>
                        </td>
                        <td>
                        	<a href="">[删除]</a>
                            <a href="">[重发]</a>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="list_more" id="getmore2">更多»</div>
         </div>
         <!--车源信息-->
         <div class="bill_left_text" id="list_huo3" style="display:none">
        	<div class="bill_chaxun">
            	<form action="" method="post" class="form-horizontal bd">
                    <div class="form-group row" style="margin-bottom:0;">
                        <label class="col-md-1 control-label">起点</label>
                        <div class="list_div area-wraper col-md-2">
                            <input class="list_select form-control" autocomplete="off" id="search_begincity" name="search_begincity" placeholder="" type="text">
                            <span style="display: none;" class="area-select area-tab">
                              <ul class="h">
                                  <li tabindex="0" class="s-tab-t current"><span class="inner" index="0">常用</span></li>
                                  <li tabindex="1" class="s-tab-t"><span class="inner" index="1">省</span></li>
                                  <li tabindex="2" class="s-tab-t"><span class="inner" index="2">市</span></li>
                                  <li tabindex="3" class="s-tab-t"><span class="inner" index="3">区县</span></li>
                                  <span class="alp-close alp-close-area">&nbsp;</span>
                                  <div class="c"></div>
                              </ul>
                              <div style="display: block;" index="0" class="s-tab-b">
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
                              <div style="display: none;" index="1" class="s-tab-b">
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
                                              <li><a href="javascript:;" class="panel-item" code="3379" panel-item="台湾">台湾</a></li>
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
                              <div style="display: none;" index="2" class="s-tab-b"></div>
                              <div style="display: none;" index="3" class="s-tab-b"></div>
                              <div class="c"></div>
                          </span>
                        </div>
                        <label class="col-md-1 area-wraper control-label">终点</label>
                        <div class="list_div col-md-2">
                            <input class="list_select form-control" autocomplete="off" id="search_endcity" name="search_endcity" placeholder="" type="text">
                            <span style="display: none;" class="area-select area-tab">
                              <ul class="h">
                                  <li tabindex="0" class="s-tab-t current"><span class="inner" index="0">常用</span></li>
                                  <li tabindex="1" class="s-tab-t"><span class="inner" index="1">省</span></li>
                                  <li tabindex="2" class="s-tab-t"><span class="inner" index="2">市</span></li>
                                  <li tabindex="3" class="s-tab-t"><span class="inner" index="3">区县</span></li>
                                  <span class="alp-close alp-close-area">&nbsp;</span>
                                  <div class="c"></div>
                              </ul>
                              <div style="display: block;" index="0" class="s-tab-b">
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
                              <div style="display: none;" index="1" class="s-tab-b">
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
                                            <li><a href="javascript:;" class="panel-item" code="3379" panel-item="台湾">台湾</a></li>
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
                              <div style="display: none;" index="2" class="s-tab-b"></div>
                              <div style="display: none;" index="3" class="s-tab-b"></div>
                              <div class="c"></div>
                          </span>
                        </div>
                        <label class="col-md-1 control-label">车辆类型</label>
                        <div class="list_div col-md-1">
                            <select name="cartype" id="cartype" class="list_type form-control" style="padding-left:0;">
                                <option value="请选择" selected>请选择</option>
                                <option value="高栏车">高栏车</option>
                                <option value="标箱车">标箱车</option>
                                <option value="平板车">平板车</option>
                                <option value="其他">其他</option>
                            </select>
                        </div>
                        <label class="col-md-1 control-label">车辆高度</label>
                        <div class="list_div col-md-2">
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
                        <div class="col-md-1" style="float:right">
                            <input class="btn btn-info form-control" type="submit" value="查询">
                        </div>
                    </div>
                </form>
            </div>
            <table class="table table-bordered" style="margin-bottom:0;">
            	<thead>
                	<tr style="background-color:#ebebeb">
                    	<td>车主信息</td>
                        <td>运输路线</td>
                        <td>重量/体积</td>
                        <td>车辆数量</td>
                        <td>车辆类型</td>
                        <td>车辆长度</td>
                        <td>发车时间</td>
                        <td>状态</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>易平立</td>
                        <td><span>起点：</span>湖南省-娄底市-娄星区<br><span>终点：</span>广东省-东莞市-市辖区</td>
                        <td>30吨</td>
                        <td>20辆</td>
                        <td>高栏车</td>
                        <td>4.2米</td>
                        <td>2016-11-03 00:00</td>
                        <td class="yincang">
                            <a style="color:red">查看</a>
                            <div class="text" style="display:none">
                                发货电话：<span>15225033124</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>易平立</td>
                        <td><span>起点：</span>湖南省-娄底市-娄星区<br><span>终点：</span>广东省-东莞市-市辖区</td>
                        <td>30吨</td>
                        <td>20辆</td>
                        <td>高栏车</td>
                        <td>4.2米</td>
                        <td>2016-11-03 00:00</td>
                        <td class="yincang">
                            <a style="color:red">查看</a>
                            <div class="text" style="display:none">
                                发货电话：<span>15225033124</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>易平立</td>
                        <td><span>起点：</span>湖南省-娄底市-娄星区<br><span>终点：</span>广东省-东莞市-市辖区</td>
                        <td>30吨</td>
                        <td>20辆</td>
                        <td>高栏车</td>
                        <td>4.2米</td>
                        <td>2016-11-03 00:00</td>
                        <td class="yincang">
                            <a style="color:red">查看</a>
                            <div class="text" style="display:none">
                                发货电话：<span>15225033124</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>易平立</td>
                        <td><span>起点：</span>湖南省-娄底市-娄星区<br><span>终点：</span>广东省-东莞市-市辖区</td>
                        <td>30吨</td>
                        <td>20辆</td>
                        <td>高栏车</td>
                        <td>4.2米</td>
                        <td>2016-11-03 00:00</td>
                        <td class="yincang">
                            <a style="color:red">查看</a>
                            <div class="text" style="display:none">
                                发货电话：<span>15225033124</span>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="list_more" id="getmore3">更多»</div>
        </div>
        <!--我的车源-->
        <div class="bill_left_text" id="list_huo4" style="display:none;">
            <div class="hy_right_top">
                <p>我的车源</p>
            </div>       
            <table class="table table-bordered" style="margin-bottom:0;">
            	<thead>
                	<tr style=" background-color:#ebebeb">
                        <td>运单号</td>
                        <td>出发地</td>
                        <td>到达地</td>
                        <td>车辆描述</td>
                        <td>车辆数量</td>
                        <td>发车时间</td>
                        <td>状态</td>
                        <td>操作</td>
                    </tr>
                </thead>
                <tbody>
                	<tr>
                        <td>245166525</td>
                        <td>浙江省-湖州市-全市</td>
                        <td>浙江省-湖州市-全市</td>
                        <td>高栏车</td>
                        <td>34辆</td>
                        <td>2016-01-11 00:00:00</td>
                        <td>
                        	<a href="" style="display:none">正常</a>
                            <a href="">过期</a>
                        </td>
                        <td>
                        	<a href="">[删除]</a>
                            <a href="">[重发]</a>
                        </td>
                    </tr>
                    <tr>
                        <td>245166525</td>
                        <td>浙江省-湖州市-全市</td>
                        <td>浙江省-湖州市-全市</td>
                        <td>高栏车</td>
                        <td>34辆</td>
                        <td>2016-01-11 00:00:00</td>
                        <td>
                        	<a href="">正常</a>
                            <a href="" style="display:none">过期</a>
                        </td>
                        <td>
                        	<a href="">[删除]</a>
                            <a href="">[重发]</a>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="list_more" id="getmore4">更多»</div>
         </div>
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
<!--上传图片-->
<script type="text/javascript">
    //图片上传预览    IE是用了滤镜。
	function previewImage(file){
	  var MAXWIDTH  = 260; 
	  var MAXHEIGHT = 180;
	  var div = document.getElementById('preview');
	  if (file.files && file.files[0]){
		  div.innerHTML ='<img id=imghead>';
		  var img = document.getElementById('imghead');
		  img.onload = function(){
			var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
			img.width  =  rect.width;
			img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
			img.style.marginTop = rect.top+'px';
		  }
		  var reader = new FileReader();
		  reader.onload = function(evt){img.src = evt.target.result;}
		  reader.readAsDataURL(file.files[0]);
	  }else{ //兼容IE
		var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		file.select();
		var src = document.selection.createRange().text;
		div.innerHTML = '<img id=imghead>';
		var img = document.getElementById('imghead');
		img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
		var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
		status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
		div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
	  }
	}
	function clacImgZoomParam( maxWidth, maxHeight, width, height ){
		var param = {top:0, left:0, width:width, height:height};
		if( width>maxWidth || height>maxHeight ){
			rateWidth = width / maxWidth;
			rateHeight = height / maxHeight;
			
			if( rateWidth > rateHeight ){
				param.width =  maxWidth;
				param.height = Math.round(height / rateWidth);
			}else{
				param.width = Math.round(width / rateHeight);
				param.height = maxHeight;
			}
		}
		param.left = Math.round((maxWidth - param.width) / 2);
		param.top = Math.round((maxHeight - param.height) / 2);
		return param;
	}
</script>
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
<script src="js/LocationRange.js" type="text/javascript"></script> 
<script src="js/jquery_003.js" type="text/javascript"></script> 
<script src="js/areaData1.js" type="text/javascript"></script> 
<script type="text/javascript">
	// 收缩展开效果
	$(document).ready(function(){
		$('.yincang').click(function(){
			$(this).children('.text').slideToggle().parents('.yincang').siblings('.yincang').children('.text').hide();
		})   
	});
</script>
</body>
</html>