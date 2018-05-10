$(function () {
    initList();
    initTypeList();
    initWatchList();
});
function initList(){
	var hstr = "";
	$.ajax({
		url:$("#basePath").val()+"app/group",
		success:function(data){
			//alert(JSON.stringify(data)); 
			var index = 1;
			for(var i = 0 ; i < data.length; i ++){
				var str = "<tr><td>" +
						index++ +
						"</td><td>" +
						data[i].gname +
						"</td><td><center>" +
						data[i].describes +
						"</center></td><td>" +
						data[i].insiderInfo.userName+
						"</td><td>"+
						data[i].gtime +
						"</td></tr>";
				hstr += str;
			}
			$("#grouplist").append(hstr);
		}
	});
}

function initTypeList(){
	var hstr = "";
	$.ajax({
		url:$("#basePath").val()+"app/group/typeList",
		success:function(data){
			//alert(JSON.stringify(data)); 
			for(var i = 0 ; i < data.length; i++)
				$("#typeList").append("<option value='"+data[i].inid+"'>"+data[i].itype+"</option>");  
		}
	});
}

function initWatchList(){
	var hstr = "";
	$.ajax({
		url:$("#basePath").val()+"app/group",
		success:function(data){
			//alert(JSON.stringify(data)); 
			var index = 1;
			for(var i = 0 ; i < data.length; i ++){
				var str = "<tr><td>" +
						index++ +
						"</td><td><a href='javascript:find("+data[i].gid+")'>" +
						data[i].gname +
						"</a></td><td><center>" +
						data[i].describes +
						"</center></td><td>" +
						data[i].gtime +
						"</td></tr>";
				hstr += str;
			}
			$("#Watchlist").append(hstr);
		}
	});
}

$("#creatGroup").click(function(){
	
	var rtext = $("#textarea1").val();
	$.ajax({
		url:$("#basePath").val()+"app/group/creatGroup",
		data:{
			Gname:$("#gname").val(),
			Describes:rtext,
			Inid:$("#typeList").val()
		},
		success:function(data){
			
		}
	});
});

function find(gid){
	var hstr = "";
	var title = "<tr><th>序号</th><th>姓名</th><th>性别</th></tr>";
	$.ajax({
		url:$("#basePath").val()+"app/group/"+gid,
		success:function(data){
			//alert(JSON.stringify(data)); 
			var index = 1;
			for(var i = 0 ; i < data.length; i ++){
				var str = "<tr><td>" +
						index++ +
						"</td><td>" +
						data[i].insiderInfo.userName +
						"</td><td><center>" +
						data[i].insiderInfo.sex +
						"</center></td>" +"</tr>";
				hstr += str;
			}
			$("#title").html(title);
			$("#Watchlist").html(hstr);
		}
	});
}

$("#back").click(function(){
	var title = "	<th>序号</th><th>小组名称</th><th>小组描述</th><th>创建时间</th>";
	var hstr = "";
	$.ajax({
		url:$("#basePath").val()+"app/group",
		success:function(data){
			//alert(JSON.stringify(data)); 
			var index = 1;
			for(var i = 0 ; i < data.length; i ++){
				var str = "<tr><td>" +
						index++ +
						"</td><td><a href='javascript:find("+data[i].gid+")'>" +
						data[i].gname +
						"</a></td><td><center>" +
						data[i].describes +
						"</center></td><td>" +
						data[i].gtime +
						"</td></tr>";
				hstr += str;
			}
			$("#title").html(title);
			$("#Watchlist").html(hstr);
		}
	});
});
