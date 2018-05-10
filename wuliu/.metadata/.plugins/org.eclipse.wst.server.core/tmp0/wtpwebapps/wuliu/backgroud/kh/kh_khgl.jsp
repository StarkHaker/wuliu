<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XXXX物流管理系统 - 客户管理</title>
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
  客户管理
</ul>
   
   <div class="title_right"><strong>客户管理</strong></div>  
       <div style="width:900px; margin:auto">
       <table class="table table-bordered">
       </table>
       <form action="${basePath}app/yongH/KHlist"  autocomplete="on" method="post">
        <table  class="margin-bottom-20 table  no-border" >
        <tr>
       	
     	<td class="text-center"><input id="kehuYX" name="kehuYX" type="text" class=" text-center" />
     	<input type="submit" value="查询" class="btn btn-info " style="width:80px;" />
     	</td>
     	</tr>
 		</table>
       </form>
       <table class="table table-bordered table-hover table-striped">
         <tbody>
           <tr align="center">
             <td><strong>客户邮箱</strong></td>
             <td><strong>客户姓名</strong></td>
             <td><strong>客户电话</strong></td>
             <td><strong>客户性别</strong></td>
             <td><strong>删除</strong></td>
             <td><strong>修改</strong></td>
           </tr>
           <c:forEach items="${KHlist}" var="kehu">
           <tr align="center" >
             <td>${kehu.kehuYX}</td>
             <td>${kehu.kehuXM}</td>
             <td>${kehu.kehuDH}</td>
             <td>${kehu.kehuXB}</td>
             <td><a id="DataGrid1_ctl03_LinkButton1" href="${basePath}app/yongH/yongHDEL?${kehu.kehuYX}">删除</a></td>
             <td><a id="DataGrid1_ctl03_LinkButton1" href="${basePath}app/yongH/yongHUCX?${kehu.kehuYX}">修改</a></td>
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
<div id="footer"></div>
     
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
