<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XXXX物流管理-客户信息修改</title>
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
  <a href="#">客户管理</a> <span class="divider">/</span>
 客户信息修改
</ul>
   <form action="${basePath}app/yongH/yongHUPD" autocomplete="on" method="post">
   <div class="title_right"><strong>信息修改：</strong></div>
   <div style="width:900px; margin:auto">
   <table class="table table-bordered" >
     <tr>
          <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">用户邮箱 ：</td>
       <td width="38%"><input type="text"  id="kehuYX" name="kehuYX" class="span1-1" value="${Session_yongH.kehuYX}" readonly="true"/></td>
         <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">密码：</td>
       <td><input type="text" name="kehuMM" id="kehuMM" class="span1-1" value="${Session_yongH.kehuMM}" /></td>
     </tr>
     <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">用户姓名：</td>
       <td><input type="text" name="kehuXM" id="kehuXM" class="span1-1" value="${Session_yongH.kehuXM}" /></td>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">性别：</td>
       <td><input type="text" name="kehuXB" id="kehuXB" class="span1-1" value="${Session_yongH.kehuXB}" /></td>
     </tr>
     <tr>
      <td align="right" bgcolor="#f1f1f1">电话：</td>
       <td><input type="text" name="kehuDH" id="kehuDH" class="span1-1"  value="${Session_yongH.kehuDH}"/></td>
       </tr>
     <!-- 备注  -->
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">备注：</td>
       <td colspan="3"><textarea name="input12" id="input12" class="span10"></textarea></td>
       </tr>
      
   </table>
   <table  class="margin-bottom-20 table  no-border" >
        <tr>
     	<td class="text-center"><input type="submit" value="修改" class="btn btn-info " style="width:106px;" /></td>
     	</form>
     	<td class="text-center"><a href="kh_khgl.jsp" value="取消" class="btn btn-info " style="width:80px;">取消</a></td>
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
