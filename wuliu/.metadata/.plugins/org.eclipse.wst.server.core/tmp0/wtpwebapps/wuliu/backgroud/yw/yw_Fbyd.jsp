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
  <a href="#">业务处理</a> <span class="divider">/</span>
  电脑开票
</ul>
   
   <div class="title_right"><strong>分理处发货排行榜</strong></div>  
       <div style="width:900px; margin:auto">
       <table class="table table-bordered">
         <tr>
     <td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">开始时间：</td>
     <td width="23%"><input type="text"  class="laydate-icon span1-1" id="Calendar" value="2015-08-25"  /></td>
     <td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">结束时间：</td>
     <td width="23%"><input type="text"  class="laydate-icon  span1-1" id="Calendar2" value="2015-08-25"  /></td>
     <td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">选择排行内容：</td>
     <td><input type="text"   class=" span1-1" /></td>
     </tr>
       </table>
       
       <table  class="margin-bottom-20 table  no-border" >
        <tr>
     	<td class="text-center"><input type="button" value="查询" class="btn btn-info " style="width:80px;" /></td>
     </tr>
 </table>
       <table class="table table-bordered table-hover table-striped">
         <tbody>
           <tr align="center">
             <td><strong>No</strong></td>
             <td><strong>运单号</strong></td>
             <td><strong>运费合计（元）</strong></td>
             <td><strong>代收款合计（元）</strong></td>
             <td><strong>起始时间</strong></td>
             <td><strong>更新时间</strong></td>
             <td><strong> 运单状态</strong></td>
           </tr>
           <tr align="center">
             <td>1</td>
             <td>102001151</td>
             <td>18701</td>
             <td>110517</td>
             <td>2017-10-12</td>
             <td>2017-10-12</td>
             <td><a id="DataGrid1_ctl03_LinkButton1" href="javascript:__doPostBack('DataGrid1$ctl03$LinkButton1','')">详细</a></td>
           </tr>
           <tr align="center">
             <td>2</td>
             <td>华南城分理处</td>
             <td>1637</td>
             <td>151776</td>
             <td>2017-10-12</td>
             <td>2017-10-12</td>
             <td><a id="DataGrid1_ctl04_LinkButton1" href="javascript:__doPostBack('DataGrid1$ctl04$LinkButton1','')">详细</a></td>
           </tr>
           <tr align="center">
             <td>3</td>
             <td>圃田分理处</td>
             <td>1258</td>
             <td>26834</td>
             <td>2017-10-12</td>
             <td>2017-10-12</td>
             <td><a id="DataGrid1_ctl05_LinkButton1" href="javascript:__doPostBack('DataGrid1$ctl05$LinkButton1','')">详细</a></td>
           </tr>
           <tr align="center">
             <td>4</td>
             <td>东建材分理处</td>
             <td>1216</td>
             <td>7672</td>
             <td>2017-10-12</td>
             <td>2017-10-12</td>
             <td><a id="DataGrid1_ctl06_LinkButton1" href="javascript:__doPostBack('DataGrid1$ctl06$LinkButton1','')">详细</a></td>
           </tr>
       
         </tbody>
       </table>
 	   <div class="panel-footer">
		<center>
			<%@ include file="../../common/Page.jsp" %>
		</center>
		</nav>
	  </div>		
    <!--  
     <tr>
       <td class="text-center"><input type="button" value="打印" class="btn btn-info    margin-right-20" style="width:80px;"  /><input type="button" value="数据导出" class="btn btn-info  "  style="width:80px;" /></td>
     </tr>-->
   </div>
     </div>     
     </div>
    </div>
    
<!-- 底部 -->
<div id="footer">版权所有：晶科客流 &copy; 2015&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.mycodes.net/" target="_blank">源码之家</a></div>
    
    

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
