<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XXXX物流管理系统</title>
<link rel="stylesheet" href="${basePath}backgroud/css/bootstrap.css" />
<link rel="stylesheet" href="${basePath}backgroud/css/css.css" />
<script type="text/javascript"
	src="${basePath}backgroud/js/jquery1.9.0.min.js"></script>
<script type="text/javascript"
	src="${basePath}backgroud/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${basePath}backgroud/js/sdmenu.js"></script>
<script type="text/javascript"
	src="${basePath}backgroud/js/laydate/laydate.js"></script>
</head>
<body>
	<div class="header">
		<div class="logo">
			<img src="${basePath}backgroud/img/logo.png" />
		</div>
		<div class="header-right">
			<i class="icon-question-sign icon-white"></i> <a href="#">帮助</a> <i
				class="icon-off icon-white"></i> <a id="modal-973558"
				href="#modal-container-973558" role="button" data-toggle="modal">注销</a>
			<i class="icon-user icon-white"></i> <a href="#">开票员的工作平台</a> <i
				class="icon-envelope icon-white"></i> <a href="#">发送短信</a>
			<div id="modal-container-973558" class="modal hide fade"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
				style="width: 300px; margin-left: -150px; top: 30%">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="myModalLabel">注销系统</h3>
				</div>
				<div class="modal-body">
					<p>您确定要注销退出系统吗？</p>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
					<a class="btn btn-primary" style="line-height: 20px;"
						href="${basePath}app/admin/loginout">确定退出</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 顶部 -->
	<!-- 左侧 -->
	<div id="middle">
		<div class="left">

			<script type="text/javascript">
				var myMenu;
				window.onload = function() {
					myMenu = new SDMenu("my_menu");
					myMenu.init();
				};
			</script>

			<div id="my_menu" class="sdmenu">
				<div>
					<span>业务处理</span> <a href="${basePath}backgroud/yw/yw_Ydck.jsp">运单仓库</a>
					<a href="${basePath}backgroud/yw/yw_Ydfh.jsp">运单复核</a> <a
						href="${basePath}backgroud/yw/yw_Ydxg.jsp">运单修改</a> <a
						href="${basePath}backgroud/yw/yw_Hwfp.jsp">货物分配</a> <a
						href="${basePath}backgroud/yw/yw_Fbyd.jsp">发布运单</a> <a
						href="${basePath}backgroud/yw/yw_Qhqd.jsp">取货清单</a> <a
						href="${basePath}backgroud/yw/yw_Chqd.jsp">出货清单</a> <a
						href="${basePath}backgroud/yw/yw_Dhqr.jsp">到货确认</a> <a
						href="${basePath}backgroud/yw/yw_Yfjs.jsp">运费结算</a>

				</div>
				<div class="collapsed">
					<span>数据统计</span> <a href="${basePath}backgroud/zj/zj_Jytj.jsp">综合统计</a>
					<a href="${basePath}backgroud/zj/zj_Khtj.jsp">客户统计</a> <a
						href="${basePath}backgroud/zj/zj_Sjtj.jsp">司机统计</a> <a href="#">收款详单</a>
					<a href="#">每日汇总</a> <a href="#">车辆运费</a> <a href="#">线路运量</a>
				</div>
				<div class="collapsed">
					<span>司机管理</span> <a href="${basePath}backgroud/sj/sj_Sjgl.jsp">司机管理</a><a href="#">基本资料管理</a> <a
						href="#">维修管理</a> <a href="#">加油管理</a> <a href="#">保养记录</a> <a
						href="#">派车管理</a> <a href="#">派车记录</a> <a href="#">包车分账</a> <a
						href="#">月分账</a> <a href="#">事故业务</a> <a href="#">保险业务</a> <a
						href="#">行驶证</a> <a href="#">营运证</a>

				</div>
				<div class="collapsed">
					<span>客户管理</span> <a href="${basePath}backgroud/kh/kh_khgl.jsp">客户管理</a><a
						href="#">客户投诉</a> <a href="#">投诉处理</a> <a href="#">投诉查询</a> <a
						href="#">客户关怀</a> <a href="#">积分查询</a> <a href="#">分理处排行</a> <a
						href="#">理赔申请</a> <a href="#">理赔审核</a> <a href="#">理赔结算</a> <a
						href="#">理赔查询</a>
				</div>
				<div class="collapsed">
					<span>资金结算</span> <a href="#">提货登记</a> <a href="#">收款核销</a> <a
						href="#">现金转账</a> <a href="#">现付结算</a>
				</div>
				<div class="collapsed">
					<span>票据查询</span> <a href="#">票据查询</a> <a href="#">跟踪查询</a> <a
						href="#">车次查询</a>
				</div>
				<div class="collapsed">
					<span>系统管理</span> <a href="#">线路管理</a> <a href="#">手续费设置</a> <a
						href="#">更改密码</a> <a href="#">系统日志</a> <a href="#">帐号管理</a> <a
						href="#">复核设置</a> <a href="#">部门管理</a> <a href="#">角色管理</a> <a
						href="#">用户管理</a> <a href="#">短信设置</a> <a href="#">短信发送</a> <a
						href="#">分理处分成设置</a> <a href="#">省价格设置</a> <a href="#">市价格设置</a> <a
						href="#">县价格设置</a>
				</div>
				<div class="collapsed">
					<span>中转处理</span> <a href="#">中转操作</a> <a href="#">中转单修改</a> <a
						href="#">当日中转明细</a>
				</div>
				<div class="collapsed">
					<span>财务管理</span> <a href="#">分公司日报</a> <a href="#">科目管理</a> <a
						href="#">费用录入</a> <a href="#">费用统计</a> <a href="#">当日对账</a> <a
						href="#">往日对账</a> <a href="#">利润分成</a>
				</div>
				<div class="collapsed">
					<span>单据管理</span> <a href="#">作废挂失</a> <a href="#">取消修改</a> <a
						href="#">修改清单</a> <a href="#">退单管理</a> <a href="#">运单修改查询</a> <a
						href="#">运单修改</a> <a href="#">异常处理</a>
				</div>

				<div class="collapsed">
					<span>行政办公</span> <a href="#">文件管理</a> <a href="#">在线留言</a> <a
						href="#">人事管理</a> <a href="#">公告管理</a> <a href="#">罚款登记</a> <a
						href="#">滚动字幕</a>

				</div>
				<div class="collapsed">
					<span>工资及包车费管理</span> <a href="#">工资管理</a> <a href="#">包车费管理</a> <a
						href="#">房租管理</a> <a href="#">货场费管理</a>
				</div>
				<div class="collapsed">
					<span>领导决策</span> <a href="#">新增客户分析</a> <a href="#">长期未发货分析</a> <a
						href="#">同比业务分析</a> <a href="#">环比业务分析</a> <a href="#">超期预警</a>

				</div>


			</div>

		</div>
		<div class="Switch"></div>
		<script type="text/javascript">
			$(document).ready(function(e) {
				$(".Switch").click(function() {
					$(".left").toggle();

				});
			});
		</script>

		<!-- 左侧 -->

		<!-- 右侧 -->
		<!-- 右侧 -->

		<!-- 底部 -->
</body>
</html>
