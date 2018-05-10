<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XXXX物流管理系统 - 发布运单</title>
<link rel="stylesheet" href="${basePath}backgroud/css/bootstrap.css" />
<link rel="stylesheet" href="${basePath}backgroud/css/css.css" />
<script type="text/javascript" src="${basePath}backgroud/js/jquery1.9.0.min.js"></script>
<script type="text/javascript" src="${basePath}backgroud/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${basePath}backgroud/js/sdmenu.js"></script>
<script type="text/javascript" src="${basePath}backgroud/js/laydate/laydate.js"></script>

</head>
<body>
<jsp:include page="../left.jsp"></jsp:include>
  <div class="right"  id="mainFrame">
     
     <div class="right_cont">
<ul class="breadcrumb">当前位置：
  <a href="#">首页</a> <span class="divider">/</span>
  <a href="#">资金处理</a> <span class="divider">/</span>
  交易明细
</ul>
   
   <div class="title_right"><strong>运单明细</strong></div>  
       <div style="width:900px; margin:auto">
				<table class="table table-bordered">
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">运单号：</td>
						<td width="23%">12345678</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">发货地址：</td>
						<td width="23%">0000000000</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">收货地址：</td>
						<td width="23%">00000000000</td>
					</tr>
				</table>
				<table class="table table-bordered">
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">交易时间：</td>
						<td width="23%">2017-10-11</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">结束时间：</td>
						<td width="23%">2017-11-11</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">运单交易状态：</td>
						<td width="23%">已完成</td>
					</tr>
				</table>

				<table class="table table-bordered table-hover table-striped">
         <tbody>
           <tr align="center">
             <td><strong>No</strong></td>
             <td><strong>运单货物名称</strong></td>
             <td><strong>货物种类</strong></td>
             <td><strong>大小</strong></td>
             <td><strong>重量</strong></td>
             <td><strong>数量</strong></td>
             <td><strong>费用金额</strong></td>
             <td><strong>运送车辆</strong></td>
           </tr>
           <tr align="center">
             <td>1</td>
             <td>102001151</td>
             <td>18701</td>
             <td>110517</td>
             <td>12</td>
             <td>2017</td>
             <td><a id="DataGrid1_ctl03_LinkButton1" href="javascript:__doPostBack('DataGrid1$ctl03$LinkButton1','')">详细</a></td>
             <td>完成</td>
           </tr>
           <tr align="center">
             <td>2</td>
             <td>华南城分理处</td>
             <td>1637</td>
             <td>151776</td>
             <td>12</td>
             <td>2017</td>
             <td>蒙B12138</td>
             <td><a id="DataGrid1_ctl04_LinkButton1" href="javascript:__doPostBack('DataGrid1$ctl04$LinkButton1','')">详细</a></td>
           </tr>
           <tr align="center">
             <td>3</td>
             <td>102001151</td>
             <td>18701</td>
             <td>110517</td>
             <td>12</td>
             <td>2017</td>
             <td>完成</td>
             <td><a id="DataGrid1_ctl03_LinkButton1" href="javascript:__doPostBack('DataGrid1$ctl03$LinkButton1','')">详细</a></td>
           </tr>
         </tbody>
         	<table class="table table-bordered">
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">收货人：</td>
						<td width="23%">12345678</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">发货人：</td>
						<td width="23%">0000000000</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">总费用：</td>
						<td>00000000000</td>
					</tr>
				</table>
       </table>
 	  	
    <!--  
     <tr>
       <td class="text-center"><input type="button" value="打印" class="btn btn-info    margin-right-20" style="width:80px;"  /><input type="button" value="数据导出" class="btn btn-info  "  style="width:80px;" /></td>
     </tr>-->
   </div>
     </div>     
     </div>
    </div>
    
<!-- 底部 -->
<div id="footer">版权所有：&nbsp;&nbsp;&nbsp;&nbsp;</div>
    
    

 <script>
!function(){
laydate.skin('molv');
laydate({elem: '#Calendar'});
laydate.skin('molv');
laydate({elem: '#Calendar2'});
}();
 
</script>



 
</body>
</html>
