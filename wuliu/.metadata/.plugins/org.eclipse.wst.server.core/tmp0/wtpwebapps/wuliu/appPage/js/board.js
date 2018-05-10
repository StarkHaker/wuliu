

function initBoard(){
	var hstr="";
	$.ajax({
		url:$("#basePath").val()+"app/replay",
		success:function(data){
			//alert(data[0].insiderInfo.userName); 
			for(var i = 0 ; i < data.length; i ++){
				var str = "<li class='item cl'> <a href='#'><i class='avatar size-L radius'><img alt='' src='http://qzapp.qlogo.cn/qzapp/101388738/1CF8425D24660DB8C3EBB76C03D95F35/100'></i></a>"+
                "<div class='comment-main'>" + 
                "<header class='comment-header'>" +
                "<div class='comment-meta'><a class='comment-author' href='#'>"+data[i].insiderInfo.userName+"</a>" +
                "<time title='2014年8月31日 下午3:20' datetime='2014-08-31T03:54:20' class='f-r'>"+data[i].rtime+"</time>" +
                "</div>" +
                "</header>" +
                "<div class='comment-body d"+data[i].rid+"'>" 
                +data[i].rtext +
                "<button onclick='replay(this.name);' class='hf f-r btn btn-default size-S mt-10 hf"+data[i].rid+"' name='"+data[i].rid+"'>回复</button>" +
                "<button id='large' onclick='btnclick(this.name);' class='hf f-r btn btn-default size-S mt-10 btn' name='"+data[i].rid+"'>更多</button>"+
                "</div>" +
                "</div>" +
                "</li>";
				hstr += str;
			}
			$("#list").html(hstr);
		}
	});
}


function btnclick(name){
	$.ajax({
		url:$("#basePath").val()+"app/replay/large",
		data:{
			"rid":name
		},
		success:function(data){
			
			var dclass=".d"+name;
			//alert($(dclass).text());
			var fstr = $(dclass).text();
			fstr = fstr.replace("回复更多","");
			var str = fstr+"<ul class='commentList u"+name+"'>"
			var uclass=".u"+name;
			for(var i = 0 ; i < data.length; i ++){
				var newstr = "<li class='item cl'> <a href='#'><i class='avatar size-L radius'><img alt='' src='http://qzapp.qlogo.cn/qzapp/101388738/1CF8425D24660DB8C3EBB76C03D95F35/100'></i></a>"+
                "<div class='comment-main'>" + 
                "<header class='comment-header'>" +
                "<div class='comment-meta'><a class='comment-author' href='#'>"+data[i].insiderInfo.userName+"</a>" +
                "<time title='2014年8月31日 下午3:20' datetime='2014-08-31T03:54:20' class='f-r'>"+data[i].rtime+"</time>" +
                "</div>" +
                "</header>" +
                "<div class='comment-body d"+data[i].rid+"'>" 
                +data[i].rtext +
                "</div>" +
                "</div>" +
                "</li>";
				str += newstr;
			}
			str+= "</ul><button onclick='replay(this.name);' class='hf f-r btn btn-default size-S mt-10 hf"+name+"' name='"+name+"'>回复</button>";
			$(dclass).html(str);
		}
	});
}

var replayId;
function replay(name){
	pId = name;
	replayId = name;
	var hf = ".hf"+name;
    $(hf).parents(".commentList").find(".cancelReply").trigger("click");
    $(hf).parent(".comment-body").append($(".comment").clone(true));
    $(hf).parent(".comment-body").find(".comment").removeClass("hidden");
    $(hf).hide();
}

function hf(){
	var fId = replayId;
	var rtext = $(".textarea").val();
	$.ajax({
		url:$("#basePath").val()+"app/replay/Freply",
		data:{
			"fId":fId,
			"rtext":rtext,
			"type":"Freply"
		},
		success:function(data){
			initBoard();
		}
	});
}


$("#fbreply").click(function(){
	var fId = 0;
	var rtext = $("#textarea1").val();
	$.ajax({
		url:$("#basePath").val()+"app/replay/Freply",
		data:{
			"fId":fId,
			"rtext":rtext,
			"type":"Lreply"
		},
		success:function(data){
			initBoard();
		}
	});
});