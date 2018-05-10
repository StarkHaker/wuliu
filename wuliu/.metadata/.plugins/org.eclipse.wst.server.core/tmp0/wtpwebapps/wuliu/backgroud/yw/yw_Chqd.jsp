<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XXXX物流管理系统 - 发货清单</title>
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
  发货清单
</ul>
   
   <div class="title_right"><strong>发货单填写</strong></div>  
<div style="width:900px;margin:auto;">
       <table class="table table-bordered">
         <tr>
     <td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">日期：</td>
     <td width="23%"><input type="text"  class="laydate-icon span1-1" id="Calendar" value="2015-08-25"  /></td>
     <td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">直达站：</td>
     <td width="23%"><input type="text" name="" id="" class="span1-1"  /></td>
     <td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">中转至：</td>
     <td><input type="text" name="" id="" class="span1-1"  /></td>
     </tr>
     <tr>
     <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">卡号：</td>
     <td><input type="text" name="" id=""  class="span1-1" /></td>
     <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">发货人：</td>
     <td><input type="text" name="" id=""  class="span1-1" /></td>
     <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">电话：</td>
     <td><input type="text" name="" id=""  class="span1-1" /></td>
     </tr>
     <tr>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">票号：</td>
       <td><input type="text" name="input" id="input"  class="span1-1" /></td>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">收货人：</td>
       <td><input type="text" name="input2" id="input2"  class="span1-1" /></td>
       <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">电话：</td>
       <td><input type="text" name="input3" id="input3" class="span1-1"  /></td>
     </tr>
       </table>
      <table class="table table-bordered">
        <tr>
           <td align="center" bgcolor="#f1f1f1"><strong>货物名称</strong></td>
           <td align="center" bgcolor="#f1f1f1"><strong>包装</strong></td>
           <td align="center" bgcolor="#f1f1f1"><strong>数量</strong></td>
           <td align="center" bgcolor="#f1f1f1"><strong>运费</strong></td>
           <td align="center" bgcolor="#f1f1f1"><strong>重量</strong></td>
           <td align="center" bgcolor="#f1f1f1"><strong>体积</strong></td>
           <td align="center" bgcolor="#f1f1f1"><strong>结算方式</strong></td>
            
         </tr>
         <tr>
           <td align="center"><input type="text" name="input4" id="input4" class=" span2" /></td>
           <td align="center">
              
             <select name="select" id="select" class=" span1">
               <option>无</option>
             </select>
           </td>
           <td align="center"><input type="text" name="input5" id="input5" class=" span1 text-center" value="22" /></td>
           <td align="center"><input type="text" name="input6" id="input6" class=" span1 text-center" value="22" /></td>
           <td align="center"><input type="text" name="input7" id="input7" class=" span1 text-center" value="22" /></td>
           <td align="center"><input type="text" name="input8" id="input8" class=" span1 text-center" value="22" /></td>
           <td align="center">
           <select name="select" id="select"  class=" span1">
               <option>无</option>
             </select></td>
            
         </tr>
       </table>
      <table class="table table-bordered" >
        <tr>
          <td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">代收货款：</td>
          <td width="23%"><input type="text" name="input10" id="input10" class="span1-1"  /></td>
          <td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">中转费：</td>
          <td width="23%"><input type="text" name="input14" id="input14"  class="span1-1" /></td>
          <td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">保险金额：</td>
          <td><input type="text" name="input15" id="input15" class="span1-1"  /></td>
        </tr>
        <tr>
          <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">保费：</td>
          <td><input type="text" name="input11" id="input1-1" class="span1-1"  /></td>
          <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">送货费：</td>
          <td><input type="text" name="input12" id="input12"  class="span1-1" /></td>
          <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">送货方式：</td>
          <td><input type="text" name="input16" id="input16"  class="span1-1" /></td>
        </tr>
        <tr>
          <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">需要回单：</td>
          <td><input type="checkbox"> 打印标签</td>
          <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">返款：</td>
          <td><input type="text" name="input13" id="input13" class="span1-1"  /></td>
          <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">起站：</td>
          <td>
         
      <input type="radio"> 自提
   
      <input type="radio"> 送货
   
          
          </td>
        </tr>
        <tr>
          <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">分理站：</td>
          <td nowrap="nowrap"><select name="select2" id="select2" class=" span1-1">
            <option>郑州</option>
          </select>
          <input type="text" name="input13" id="input13" class="span1" />
          <select name="select2" id="select2" class=" span1">
            <option>无</option>
          </select></td>
          <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">标签数量：</td>
          <td colspan="3"><input type="text" name="input17" id="input17" class="span1" />
             
      <input type="checkbox"> 打印标签
     </td>
        </tr>
        <tr>
          <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">备注：</td>
          <td colspan="5" nowrap="nowrap"><input type="text" name="input9" id="input9" class="span10"  /></td>
          </tr>
      </table>
           
     <table  class="margin-bottom-20  table no-border" >
       <tr>
     	<td class="text-center"><input type="button" value="确定" class="btn btn-info  " style="width:80px;" /></td>
     </tr>
   </table>
      <div class="alert"> 
      <button type="button" class="close" data-dismiss="alert">&times;</button>
      温馨提示：按“Enter”键进行切换；&nbsp;&nbsp;按“F10”保存；&nbsp;&nbsp;按“F5”代收货款；&nbsp;&nbsp;按“F6”返款； 
       </div>
   
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
}();
 
</script>



 
</body>
</html>
