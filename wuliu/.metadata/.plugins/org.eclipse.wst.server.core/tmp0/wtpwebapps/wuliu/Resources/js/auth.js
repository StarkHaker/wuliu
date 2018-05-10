$(function(){
	// 初始化用户树
	initUserTree();
	
	//初始化角色树
	initRoleTree();
	
	//初始化菜单树
	initMenuTree();

});

function move(element) {
	$(".rMenuLiMove").addClass("rMenuLi");
	$(".rMenuLiMove").removeClass("rMenuLiMove");
	
	$(element).addClass("rMenuLiMove");
	$(element).removeClass("rMenuLi");
}

/**
 * 鼠标在弹出层上方时，解除鼠标按下的事件
 */
function divOver() {
	$("body").unbind("mousedown", mousedown);
}

/**
 * 单击鼠标事件：
 * 在页面任意地方单击鼠标，关闭右键弹出的菜单
 */
function mousedown() {
	$("#rMenu").css({
		"visibility" : "hidden"
	});
	$("#groupMenu").css({
		"visibility" : "hidden"
	});
	$("#menuMenu").css({
		"visibility" : "hidden"
	});
}

/**
 * 鼠标划出右键菜单层时，去除“鼠标经过菜单时”的样式。
 */
function divOut() {
	$("body").bind("mousedown", mousedown);
	
	$(".rMenuLiMove").addClass("rMenuLi");
	$(".rMenuLiMove").removeClass("rMenuLiMove");
}

/**
 * 右击时定位右键菜单展示的位置并显示
 */
function rightClick(event,rMenuId) {
	$("#" + rMenuId).css({
		"top" : event.clientY + "px",
		"left" : event.clientX + "px",
		"visibility" : "visible"
	});
}

/**
 * 清空用户维护界面里的内容
 */
function clearUser() {
	$("#Account").val("");
	$("#userName").val("");
	$("#passwd").val("");
}


/**
 *弹出层 
 */

function dia(msg){
	var dialog = jqueryAlert({
		'content' : msg,
		'modal'   : true,
		'buttons' :{
			'确定' : function(){
				dialog.close();
			}
		}
	});
}

	
function initUserTree() {
	$.ajax({
		url: $("#basePath").val() + "user/ajaxuser",
		success : function(data){
			var setting={
				view:{
					dblClickExpand : true,// 定义双击展开
					showLine : true,
					selectedMulti : false
				},
				data : {
					simpleData : {
						enable : true,
						idKey: "uid",
						pIdKey: "pId",
						rootPId: 0
					},
					key : {
						name : "userName"
					}
				},
				callback : {
					onClick : function(event, treeId, treeNode) {
						selectUser();
					},
					onRightClick : userRightClick
				}
			};
			
			data.push({uid:0,userName:"用户",open:true});
			//alert(JSON.stringify(data)); 
			var zTreeObj = $.fn.zTree.init($("#userTree"), setting, data);
		}
	});
}


function userRightClick(event, treeId, treeNode){
	if(!treeNode) {
		return;
	}
	
	$.fn.zTree.getZTreeObj(treeId).selectNode(treeNode);
	rightClick(event,"rMenu");
	if(treeNode.uid == 0) {
		$(".disabled").hide();
	} else {
		$(".disabled").show();
		selectUser();
	}
}

/**
 * 选中用户后显示用户对应的用户组
 */
function selectUser() {
	var nodes = $.fn.zTree.getZTreeObj("userTree").getSelectedNodes();
	var groupTree = $.fn.zTree.getZTreeObj("roleTree");
	// 先清空原本选中的选项
	var checkedNodes = groupTree.getCheckedNodes(true);
	if (checkedNodes.length > 0) {
		groupTree.checkNode(checkedNodes[0], false);
	}
	$.ajax({
		url :$("#basePath").val() + "user/findgro",
		data : {
			"uid":nodes[0].uid
		},
		success : function(data) {
			// 如果当前选中的用户有用户组，则选中这个用户组
			if(data.rid) {
				groupTree.checkNode(groupTree.getNodeByParam("rid", data.rid),true);
			}
		}
	});

}



/*
 * 初始化新增用户
 */

function initAddUser() {
	mousedown();
	clearUser();
	$("#userTitle").html("新增用户");
	$('#myModal').modal('show');
}

/*
 * 新增用户
 */

$("#userSubmit").click(function(){
	if(checkUser()){
		$.ajax({
			url:$("#basePath").val() + "user/addUser",
			type:"POST",
			data:{
				"Account":$("#Account").val(),
				"userName":$("#userName").val(),
				"passwd":$("#passwd").val()
			},
			success:function(msg){
				$('#myModal').modal('hide');
				initUserTree();
			}
		});
	}
});

/*
 * 移除用户
 */
function removeUser(){
	mousedown();
	var nodes = $.fn.zTree.getZTreeObj("userTree").getSelectedNodes();
	$.ajax({
		url:$("#basePath").val() + "user/rmUser",
		type : "POST",
		data : {
			"uid":nodes[0].uid
		},
		success:function(data){
			initUserTree();
		}
	});
}
function checkUser(){
		var Account = $("#Account").val();
		var userName = $("#userName").val();
		var passwd = $("#passwd").val();
		if(Account.trim() == ""){
			$("#Account").select();
			return false;
		}
		if(userName.trim() == ""){
			$("#userName").select();
			return false;
		}
		if(passwd.trim() == ""){
			$("#passwd").select();
			return false;
		}
		return true;
}

/**
 * 为用户分配角色
 * @returns
 */
$("#roleAllot").click(function(){
	var usernodes = $.fn.zTree.getZTreeObj("userTree").getSelectedNodes();
	var rolenodes = $.fn.zTree.getZTreeObj("roleTree").getSelectedNodes();
	$.ajax({
		url:$("#basePath").val() + "user/Allotrole",
		data:{
			"uid":usernodes[0].uid,
			"rid":rolenodes[0].rid
		},
		success(data){
			
		}
	});
});


function initRoleTree(){
	$.ajax({
		url: $("#basePath").val() + "role/ajaxrole",
		success : function(data){
			var setting={
				check : {
					enable : true,
					chkStyle : "radio"
				},
				view:{
					dblClickExpand : true,// 定义双击展开
					showLine : true,
					selectedMulti : false
				},
				data : {
					simpleData : {
						enable : true,
						idKey: "rid",
						pIdKey: "pId",
						rootPId: 0
					},
					key : {
						name : "rname"
					}
				},
				callback : {
					onClick : function(event, treeId, treeNode) {
						selectGroup();
					}
					//onRightClick : groupRightClick
				}
			};
			
			data.push({rid:0,rname:"角色",open:true,nocheck:true});
			//alert(JSON.stringify(data)); 
			var zTreeObj = $.fn.zTree.init($("#roleTree"), setting, data);
		}
	});
}

/**
 * 选中用户组后显示用户组对应的菜单
 */
function selectGroup() {
	var nodes = $.fn.zTree.getZTreeObj("roleTree").getSelectedNodes();
	if (nodes.length > 0 && nodes[0].rid != 0) {
		$.ajax({
			url : $("#basePath").val() + "role/findMenu",
			data:{
				"rid":nodes[0].rid
			},
			success : function(data) {
				var menuTree = $.fn.zTree.getZTreeObj("menuTree");
				menuTree.checkAllNodes(false);
				// 将菜单树上,用户组对应的菜单节点勾选上
//				for (var i = 0; i < data.menuDtoList.length; i++) {
//					// 因为菜单树是一颗混合树,需要用组合ID(带前缀的ID)来选中对应的节点
//					menuTree.checkNode(menuTree.getNodeByParam("comboId", common.menuPrefix.PREFIX_MENU + data.menuDtoList[i].id), true);
//				}
				
				for(var i = 0 ; i < data.length; i ++){
					menuTree.checkNode(menuTree.getNodeByParam("mid", data[i].mid),true);
				}
				
				// 将菜单树上,用户组对应的动作节点勾选上
				/*for (var i = 0; i < data.actionDtoList.length; i++) {
					// 因为菜单树是一颗混合树,需要用组合ID(带前缀的ID)来选中对应的节点
					menuTree.checkNode(menuTree.getNodeByParam("comboId", common.menuPrefix.PREFIX_ACTION + data.actionDtoList[i].id), true);
				}*/
			}
		});
	}
}
function initMenuTree(){
	$.ajax({
		url: $("#basePath").val() + "menu/ajaxmenu",
		success:function(data){
			var setting = {
				edit : {
					enable : true,
					showRemoveBtn : false,
					showRenameBtn : false,
					drag : {
						isCopy : false
					}
				},
				check : {
					enable : true
				},
				view : {
					dblClickExpand : true,// 定义双击展开
					showLine : true,
					selectedMulti : false
				},
				data : {
					simpleData : {
						enable : true,
						pIdKey : "pid",
						idKey : "mid"
					},
					key : {
						name : "mname"
					}
				}
			};
			data.push({mid:0,mname:"菜单",open:true,nocheck:true});
			//alert(JSON.stringify(data)); 
			var zTreeObj = $.fn.zTree.init($("#menuTree"), setting, data);
		}
	});
}

/**
 * 菜单分配
 */
$("#menuAllot").click(function(){
	var nodes = $.fn.zTree.getZTreeObj("menuTree").getCheckedNodes();
	var param = {};
	for(var i = 0 ; i < nodes.length; i++){
		param["menuIdList[" + i + "]"] = nodes[i].mid;
	}
	$.ajax({
		url:$("#basePath").val() + "role/addMenu",
		data:param,
		success:function(data){
			
		}
		
	});
	
});
