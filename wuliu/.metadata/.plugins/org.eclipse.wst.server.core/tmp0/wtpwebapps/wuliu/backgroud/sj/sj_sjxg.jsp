<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XXXX物流管理-司机信息修改</title>
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
  <a href="#">司机管理</a> <span class="divider">/</span>
 司机信息修改
</ul>
   <form action="${basePath}app/BKdriver/sijiUPD" autocomplete="on" method="post">
   <div class="title_right"><strong>订单详情：</strong></div>
   <div style="width:900px; margin:auto">
   <table class="table table-bordered" >
     <tr>
       <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">司机电话 ：</td>
       <td width="38%"><input type="text"  id="cezuDH" name="cezuDH" class="span1-1" value="${Session_bkSiji.cezuDH}" readonly="true"/></td>
         <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">司机密码：</td>
       <td><input type="text" name="cezuMM" id="cezuMM" class="span1-1" value="${Session_bkSiji.cezuMM}" /></td>
     </tr>
     <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">司机名字：</td>
       <td><input type="text" name="cezuMZ" id="cezuMZ" class="span1-1" value="${Session_bkSiji.cezuMZ}" /></td>
       <td align="right" bgcolor="#f1f1f1">身份证号码：</td>
       <td><input type="text" name="cezuID" id="cezuID" class="span1-1"  value="${Session_bkSiji.cezuID}"/></td>
     </tr>
         <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">汽车车牌：</td>
       <td><input type="text" name="qiceCP" id="qiceCP" class="span1-1" value="${Session_bkSiji.qiceCP}" /></td>
      
     </tr>
   
   </table>
   <table  class="margin-bottom-20 table  no-border" >
        <tr>
     	<td class="text-center"><input type="submit" value="修改" class="btn btn-info " style="width:106px;" /></td>
     	</form>
     	<td class="text-center"><a href="sj_sjgl.jsp" value="取消" class="btn btn-info " style="width:80px;">取消</a></td>
     </tr>
 </table>
   </div> 
     </div>     
     </div>
    </div>
    
<!-- 底部 -->
    
    

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
