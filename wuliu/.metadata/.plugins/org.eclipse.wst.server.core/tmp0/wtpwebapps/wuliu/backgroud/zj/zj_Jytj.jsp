<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>xxxx物流管理平台-综合统计</title>
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
	<jsp:include page="../left.jsp"></jsp:include>
	<div class="right" id="mainFrame">

		<div class="right_cont">
			<ul class="breadcrumb">
				当前位置：
				<a href="#">首页</a>
				<span class="divider">/</span>
				<a href="#">业务处理</a>
				<span class="divider">/</span> 综合统计
			</ul>
			<div class="title_right">
				<strong>XXXX物流数据统计</strong>
			</div>
			<div style="width: 900px; margin: auto">
			<form action="${basePath}app/yundan/ZHTJ"  autocomplete="on" method="post">
				<table class="table table-bordered">
					<tr>
						<td width="15%" align="right" bgcolor="#f1f1f1">起始日期：</td>
						<td><input type="text" class="laydate-icon span1-1"
							id="Calendar" value="" /></td>
						<td width="15%" align="right" bgcolor="#f1f1f1">查询日期：</td>
						<td><input type="text" class="laydate-icon span1-1"
							id="Calendar" value="" /></td>
					</tr>
					<tr>
						<td align="right" bgcolor="#f1f1f1">客户号：</td>
						<td><input type="text" name="" id="" class="span1-1" /></td>
						<td align="right" bgcolor="#f1f1f1">运单状态：</td>
						<td><input type="text" name="" id="" class="span1-1" /></td>
					</tr>
				</table>
				<table class="margin-bottom-20 table  no-border">
					<tr>
						<td class="text-center"><input type="button" value="查询"
							class="btn btn-info " style="width: 80px;" /></td>
					</tr>
				</table>
				</form>
				<table class="table table-bordered">
					<tr>
						<td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>起始日期</strong></td>
						<td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>查询日期</strong></td>
						<td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>天数</strong></td>
						<td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>运单数量</strong></td>
						<td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>运单总费用</strong></td>
						<td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>货物总重</strong></td>
						<td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>运单状态</strong></td>
			
					</tr>
					<tr>
						<td align="center">&nbsp;</td>
						<td align="center">&nbsp;</td>
						<td align="center">&nbsp;</td>
						<td align="center">&nbsp;</td>
						<td align="center">&nbsp;</td>
						<td align="center">&nbsp;</td>
						<td align="center">&nbsp;</td>
					</tr>
				</table>
				<!-- 
				<table class="table table-bordered">
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">现付：</td>
						<td width="23%"><input name="input" type="text" class="span1"
							id="input" value="0" /> 计<input name="input" type="text"
							class="span1" id="input" value="0" /> 张</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">提付：</td>
						<td width="23%"><input name="input13" type="text"
							class="span1" id="input13" value="0" /> 计 <input name="input2"
							type="text" class="span1" id="input2" value="0" /> 张</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">回单付：</td>
						<td><input name="input14" type="text" class="span1"
							id="input14" value="0" /> 计 <input name="input3" type="text"
							class="span1" id="input3" value="0" /> 张</td>
					</tr>
					<tr>
						<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">运费合计：</td>
						<td><input name="input12" type="text" class="span1"
							id="input12" value="0" />计 <input name="input4" type="text"
							class="span1" id="input4" value="0" /> 张</td>
						<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">送货费：</td>
						<td><input name="input5" type="text" class="span1-1"
							id="input5" value="0" /></td>
						<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">运费总合计：</td>
						<td><input name="input11" type="text" class="span1-1"
							id="input11" value="0" /></td>
					</tr>
					<tr>
						<td align="right" nowrap="nowrap">代收款：</td>
						<td><input name="input6" type="text" class="span1-1"
							id="input6" value="0" /></td>
						<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">返款：</td>
						<td><input name="input7" type="text" class="span1-1"
							id="input7" value="0" /></td>
						<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">中转费用：</td>
						<td><input name="input10" type="text" class="span1-1"
							id="input10" value="0" /></td>
					</tr>
					<tr>
						<td align="right" nowrap="nowrap">中转送货费：</td>
						<td><input name="input8" type="text" class="span1-1"
							id="input8" value="0" /></td>
						<td align="right" nowrap="nowrap" bgcolor="#f1f1f1">中转费合计：</td>
						<td colspan="3"><input name="input9" type="text"
							class="span1-1" id="input9" value="0" /></td>
					</tr>
				</table>
				<table class="margin-bottom-20 table  no-border">
					<tr>
						<td class="text-center">
							<input type="button" value="打印"
							class="btn btn-info  margin-right-20" style="width: 80px;" />
						
							<input
							type="button" value="数据导出" class="btn btn-info  "
							style="width: 80px;" /></td>
							 
					</tr>
				</table> -->
			</div>


		</div>
	</div>
	</div>

	<!-- 底部 -->
	<div id="footer">
		版权所有：晶科客流 &copy; 2015&nbsp;&nbsp;&nbsp;&nbsp;<a
			href="http://www.mycodes.net/" target="_blank">源码之家</a>
	</div>



	<script>
		!function() {
			laydate.skin('molv');
			laydate({
				elem : '#Calendar'
			});
		}();
	</script>




</body>
</html>
