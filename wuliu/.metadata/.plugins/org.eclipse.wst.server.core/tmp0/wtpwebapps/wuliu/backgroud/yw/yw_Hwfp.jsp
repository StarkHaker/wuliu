<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XXXX物流管理-到货确认</title>
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
  到货确认
</ul>
   
   <div class="title_right"><strong>订单签收：</strong></div>
   <div style="width:900px; margin:auto">
   <table class="table table-bordered" >
     <tr>
       <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">票号：</td>
       <td width="38%"><input type="text" name="input" id="input" class="span1-1"  /></td>
       <td width="12%" align="right" bgcolor="#f1f1f1">发货日期：</td>
       <td><input type="text"  class="laydate-icon span1-1" id="Calendar" value="2015-08-25"  /></td>
     </tr>
     <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">客户姓名：</td>
       <td><input type="text" name="input3" id="input3" class="span1-1"  /></td>
       <td align="right" bgcolor="#f1f1f1">客户电话：</td>
       <td><input type="text" name="input4" id="input4" class="span1-1"  /></td>
     </tr>
     <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">运费：</td>
       <td><input type="text" name="input2" id="input2" class="span1-1"  /></td>
       <td align="right" bgcolor="#f1f1f1">货款：</td>
       <td><input type="text" name="input5" id="input5" class="span1-1"  /></td>
     </tr>
     <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">签收人：</td>
       <td><input type="text" name="input7" id="input7" class="span1-1" /></td>
       <td align="right" bgcolor="#f1f1f1">签收日期：</td>
       <td><input type="text"  class="laydate-icon span1-1" id="Calendar2" value="2015-08-25"  /></td>
     </tr>
      <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">签收状态：</td>
       <td colspan="3"><textarea name="input9" id="input9" class="span10"></textarea></td>
       </tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">客户评价：</td>
       <td colspan="3"><textarea name="input12" id="input12" class="span10"></textarea></td>
       </tr>
   </table>
   <table  class="margin-bottom-20 table  no-border" >
        <tr>
     	<td class="text-center"><input type="button" value="确定" class="btn btn-info " style="width:80px;" /></td>
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
