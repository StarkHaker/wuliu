<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XXXX物流管理系统 - 交易数据统计</title>
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
  交易数量统计
</ul>
   
   <div class="title_right"><strong>交易数量统计</strong></div>  
       <div style="width:900px; margin:auto">
				<table class="table table-bordered">
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">开始时间：</td>
						<td width="23%"><input type="text"
							class="laydate-icon span1-1" id="Calendar" value="2015-08-25" /></td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">结束时间：</td>
						<td width="23%"><input type="text"
							class="laydate-icon  span1-1" id="Calendar2" value="2015-08-25" /></td>
					</tr>
				</table>
				<table class="margin-bottom-20 table  no-border">
					<tr>
						<td class="text-center"><input type="button" value="查询"
							class="btn btn-info " style="width: 80px;" /></td>
					</tr>
				</table>
				<table class="table table-bordered">
					<tr>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">柜员：</td>
						<td width="23%">12345678</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">起始时间：</td>
						<td width="23%">2017-12-23</td>
						<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">截至时间：</td>
						<td width="23%">2017-02-01</td>
					</tr>
				</table>
				<table class="table table-bordered table-hover table-striped">
         <tbody>
           <tr align="center">
             <td><strong>No</strong></td>
             <td><strong>运单数量</strong></td>
             <td><strong>收款合计</strong></td>
             <td><strong>运输总量</strong></td>
             <td><strong>总运输时间</strong></td>
             <td><strong>运输车辆</strong></td>
             <td><strong>车辆费用</strong></td>
             <td><strong>运单状态</strong></td>
           </tr>
           <tr align="center">
             <td>1</td>
             <td>100</td>
             <td>18701</td>
             <td>110517</td>
             <td>24h</td>
             <td>24</td>
             <td>24</td>
             <td><a id="DataGrid1_ctl03_LinkButton1" href="javascript:__doPostBack('DataGrid1$ctl03$LinkButton1','')">已完成</a></td>
           </tr>
            <tr align="center">
             <td>2</td>
             <td>100</td>
             <td>18701</td>
             <td>110517</td>
             <td>24h</td>
              <td>24</td>
             <td>24</td>
             <td><a id="DataGrid1_ctl03_LinkButton1" href="javascript:__doPostBack('DataGrid1$ctl03$LinkButton1','')">未完成</a></td>
           </tr>
          
         </tbody>
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
<div id="footer">版权所有：&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.mycodes.net/" target="_blank">源码之家</a></div>
    
    

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
