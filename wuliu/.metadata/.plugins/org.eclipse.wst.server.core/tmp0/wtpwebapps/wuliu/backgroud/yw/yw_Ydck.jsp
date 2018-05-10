<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XXXX物流管理系统 - 运单仓库</title>
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
  运单仓库
</ul>
   
   <div class="title_right"><strong>订单仓库</strong></div>  
       <div style="width:900px; margin:auto">
       <table class="table table-bordered">
       </table>
        <table  class="margin-bottom-20 table  no-border" >
        <tr>
       <form action="${basePath}app/yundan/listPage"  autocomplete="on" method="post">
     	<td class="text-center"><input type="submit" value="全部" class="btn btn-info " style="width:80px;" /></td>
       </form>
        <form action="${basePath}app/yundan/listWCL"  autocomplete="on" method="post">
     	<td class="text-center"><input type="submit" value="未处理" class="btn btn-info " style="width:80px;" /></td>
       </form>
       <form action="${basePath}app/yundan/listYFB"  autocomplete="on" method="post">
     	<td class="text-center"><input type="submit" value="已发布" class="btn btn-info " style="width:80px;" /></td>
       </form>
       <form action="${basePath}app/yundan/listYJD"  autocomplete="on" method="post">
     	<td class="text-center"><input type="submit" value="已接单" class="btn btn-info " style="width:80px;" /></td>
       </form>
  	   </tr>
 		</table>
       <table class="table table-bordered table-hover table-striped">
         <tbody>
           <tr align="center">
             <td><strong>运单号</strong></td>
             <td><strong>客户名</strong></td>
             <td><strong>运费合计（元）</strong></td>
             <td><strong>起始时间</strong></td>
             <td><strong>运单状态</strong></td>
             <td><strong>缴费状态</strong></td>
             <td><strong>运单复核</strong></td>
             <td><strong>运单修改</strong></td>
           </tr>
           <c:forEach items="${list}" var="yundan">
           <tr align="center" >
             <td>${yundan.yundanH}</td>
             <td>${yundan.kehuZH}</td>
             <td>${yundan.yundaFY}</td>
             <td>${yundan.yundaSJ}</td>
             <td>${yundan.yundaZT}</td>
             <td>${yundan.jiaofZT}</td>
             <td><a id="DataGrid1_ctl03_LinkButton1" href="${basePath}app/yundan/yundanXQ?${yundan.yundanH}">复核</a></td>
             <td><a id="DataGrid1_ctl03_LinkButton1" href="${basePath}app/yundan/yundanXG?${yundan.yundanH}">修改</a></td>
           </tr>
          </c:forEach>
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
     
  <script >
 function show(){
	 var hstr="";
	 $.ajax({
		 url:"${basePath}"+"app/yundan/listPage",
		 success:function(data){
			 for (var i = 0; i < data.length; i++) {
				var str="<form action='${basePath}app/yundan/listPage' method='get'>"
				+"<td>"+data[i].yundanH+"</td>"
				+"<td>"+data[i].kehuZH+"</td>"
				+"<td>"+data[i]+yundaFY"</td>"
				+"<td>"+data[i].yundaSJ+"</td>"
				+"<td>"+data[i].kehuZT+"</td>"
				+"<td>"+data[i].jiaofZT+"</td>"
				+"</form>";
				hstr += str;
			}
			 $("#list").html(hstr);
		 }
	 });
 }


 $(function(){
		// 初始化用户树
		show();
	});
   
 
 </script>
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
