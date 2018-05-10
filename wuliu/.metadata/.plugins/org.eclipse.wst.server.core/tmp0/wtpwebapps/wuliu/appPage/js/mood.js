$(function(){
	initmood();
});

function initmood(){
	$.ajax({
		url:$("#basePath").val()+"app/mood/findAllTrend",
		success:function(data){
			//alert(JSON.stringify(data)); 
			var hstr = "";
			var str = "";
			for(var i = 0 ; i < data.length; i++){
				str = "<div class='cd-timeline-block'><div class='cd-timeline-img cd-picture'><img src='"+$("#basePath").val()+"appPage/css/timeline/cd-icon-location.svg' alt='position'></div>" +
						"<div class='cd-timeline-content'><h4>"+data[i].ttitle+"</h4><p>"+data[i].ttext+"</p>" +
						"<a href='../list/pageDetail?Tid="+data[i].tid+"' class='f-r'><input class='btn btn-success size-S' type='button' value='更多'></a>" +
						"<span class='cd-date'>"+data[i].ttime+"</span></div></div>";
				hstr += str;
			}
			$(".timeline").html(hstr);
		}
	});
}