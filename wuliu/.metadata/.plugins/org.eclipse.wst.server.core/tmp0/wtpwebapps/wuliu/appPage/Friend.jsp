<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${basePath}/appPage/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}/Resources/js/jquery.ztree.all"></script>
<title>兴趣小队社交网站</title>
<script type="text/javascript">
function wer(){ 
	var result2 = $("input[id='input_text2']").val();    
	 $("#person1").empty();
	 $("#whs").empty();
$.ajax({
    url : "${basePath}/app/friend/cx",
    type : "post",
    dataType : "json",
    data :{"userName": result2},
    cache : false,
    async : false,
    success : function(data) {
     var s='<tr><th>'+'用户名'+'</th><th>'
            +'邮箱'+'</th><th>'
            +'添加'+'</th></tr>';
          
            $("#whs").append(s);
            for(var i=0;i<data.length;i++){
   	 var sdk='<tr><td>'+data[i].userName+'</td>'
           +'<td>'+data[i].account+'</td>'
           +'<td>'+'<a href="../app/friend/addfriend?'+'friendName='+data[i].userName+'&&userName='+"${sessionScope.SESSION_INSIDERINFO.userName}"+'">'+'添加'+'</a>'+'</td></tr>';
       
          $("#person1").append(sdk);
    }
},

       error : function() {
       	alert("出错了1");
       }

   });
   }

function were(){     
	 
$.ajax({
    url : "${basePath}/app/friend/myfriend",
    type : "post",
    dataType : "json",
    data :{"userName": "${sessionScope.SESSION_INSIDERINFO.userName}"},
    cache : false,
    async : false,
    success : function(data) {
     var s='<h3>我的好友</h3>'+'<tr><th>'+'用户名'+'</th><th>'
            +'邮箱'+'</th></tr>';
            $("#whs").append(s);
            for(var i=0;i<data.length;i++){
   	 var sdk='<tr><td>'+data[i].selfId.userName+'</td>'
           +'<td>'+data[i].selfId.account+'</td></tr>';
       
          $("#person1").append(sdk);
    }
},

       error : function() {
       	alert("请先登录");
       }

   });
   }

$(function(){
	were();
});
 

</script> 
 </head>
<body>

<span>用户名:</span>
<input  id="input_text2" type="text" name="userName"/>
<input id="button_text2" type="button" onclick="wer()" value="查询"/>

<table>
	  <thead id="whs">
	  </thead>
	<tbody id="person1">
	</tbody>
	</table>
<ul id="permissionZtree" class="ztree" style="padding-left: 45px" ></ul> 
</body>
</html>