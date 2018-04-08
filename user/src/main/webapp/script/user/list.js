$(document).ready(function(){
	loadListData(1);
});
function loadListData(pageNo){
   var pageSize = $("#selectPageSize").val();
   if(typeof(pageSize)=="undefined"){
               pageSize=10;
   }
	$.ajax({
		type : "POST",
		url : ctx + "/user/list",
		data : {
			pageSize : pageSize,
			pageNo : pageNo,
			},
		async : false,
		dataType : "json",
		success : function(result) {
			pageTemplateDiv(result, "");	
			if (result.dataList.length == 0 && result.totalPage != 0) {
				loadListData(result.totalPage);
			}
		},
		error: function(jqXHR, textStatus, errorThrown){
			var info=jqXHR.responseText.trim().split("#");
			if(info[0]=="AJAXSESSIONERROR"){
				toastr.warning("登录超时，请重新登录！", "警告",function(){
					window.location.href=ctx +info[1];			
			});				
			}
		}
	});
}
