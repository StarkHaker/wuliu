<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XXXX物流管理-运单修改</title>
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
  运单修改
</ul>
   <<form action="${basePath}app/yundan/yundanXG" autocomplete="on" method="post">
   <div class="title_right"><strong>订单详情：</strong></div>
   <div style="width:900px; margin:auto">
   <table class="table table-bordered" >
     <tr>
       <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">运单号：</td>
       <td width="38%"><input type="text"  id="yundanH" name="yundanH" class="span1-1" value="${Session_yundan.yundanH}" readonly="true"/></td>
       <td width="12%" align="right" bgcolor="#f1f1f1">运单日期：</td>
       <td><input type="text" readonly="true" class="laydate-icon span1-1" id="Calendar" value="${Session_yundan.yundaSJ}"  /></td>
     </tr>
     <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">发货人姓名：</td>
       <td><input type="text" name="fahuoXM" id="fahuoXM" class="span1-1" value="${Session_yundan.fahuoXM}" /></td>
       <td align="right" bgcolor="#f1f1f1">发货人电话：</td>
       <td><input type="text" name="fahuoDH" id="fahuoDH" class="span1-1"  value="${Session_yundan.fahuoDH}"/></td>
     </tr>
         <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">收货人姓名：</td>
       <td><input type="text" name="shhuoXM" id="shhuoXM" class="span1-1" value="${Session_yundan.shhuoXM}" /></td>
       <td align="right" bgcolor="#f1f1f1">收货人电话：</td>
       <td><input type="text" name="shhuoDH" id="shhuoDH" class="span1-1" value="${Session_yundan.shhuoDH}" /></td>
     </tr>
     <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">运费：</td>
       <td><input readonly="true" type="text" name="input2" id="input2" class="span1-1"  value="${Session_yundan.yundaFY}"/>元</td>
       <td align="right" bgcolor="#f1f1f1">运单状态：</td>
       <td><input type="text" readonly="true" name="yundaZT" id="yundaZT" class="span1-1" value="${Session_yundan.yundaZT}" /></td>
     </tr>
     <tr>
       <td align="right"  nowrap="nowrap" bgcolor="#f1f1f1">货物信息：</td>
       <td><input type="text" readonly="true" name="huowuXX" id="huowuXX" class="span1-1" value="${Session_yundan.huowuXX}"/></td>
       <td align="right" bgcolor="#f1f1f1">货物数量：</td>
        <td><input type="text" readonly="true" name="huowuSL" id="huowuSL" class="span1-1" value="${Session_yundan.huowuSL}" /></td>
     </tr>
         <tr>
       <td align="right"  nowrap="nowrap" bgcolor="#f1f1f1">货物重量：</td>
       <td><input type="text" readonly="true" name="input7" id="input7" class="span1-1" value="${Session_yundan.huowuZL}"/></td>
       <td align="right"  bgcolor="#f1f1f1">货物大小：</td>
        <td><input type="text" readonly="true" name="input5" id="input5" class="span1-1"  value="${Session_yundan.huowuDX}"/></td>
     </tr>
       <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">装货地点：</td>
       <td><input type="text" readonly="true" name="input7" id="input7" class="span1-1" value="${Session_yundan.zhhuoDD}"/></td>
       <td align="right" bgcolor="#f1f1f1">卸货地点：</td>
        <td><input type="text" readonly="true" name="input5" id="input5" class="span1-1"  value="${Session_yundan.xihuoDD}"/></td>
     </tr>
     <!-- 备注 
      <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">签收状态：</td>
       <td colspan="3"><textarea name="input9" id="input9" class="span10"></textarea></td>
       </tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">客户评价：</td>
       <td colspan="3"><textarea name="input12" id="input12" class="span10"></textarea></td>
       </tr>
       -->
   </table>
   <table  class="margin-bottom-20 table  no-border" >
        <tr>
     	<td class="text-center"><input type="submit" value="修改" class="btn btn-info " style="width:106px;" /></td>
     	</form>
     	<td class="text-center"><a href="yw_Ydck.jsp" value="取消" class="btn btn-info " style="width:80px;">取消</a></td>
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
