<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10"> <![endif]-->
<!--[if gt IE 9]><!-->
<html style="" class=" js no-touch"><!--<![endif]--><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>推荐人</title>
<meta name="author" content="MMM">
<meta name="robots" content="noindex, nofollow">
<meta name="format-detection" content="telephone=no">

<!-- Icons -->
<!--<link rel="shortcut icon" href="https://mmmoffice.ch/static/Public_Img/favicon.ico">
<link rel="apple-touch-icon" href="https://mmmoffice.ch/static/Public_Img/iOs_57_57.png" sizes="57x57">
<link rel="apple-touch-icon" href="https://mmmoffice.ch/static/Public_Img/iOs_72_72.png" sizes="72x72">
<link rel="apple-touch-icon" href="https://mmmoffice.ch/static/Public_Img/iOs_114_114.png" sizes="114x114">-->
<!-- END Icons -->

<!-- Stylesheets -->
<link rel="stylesheet" href="${ctx}/static/css/bootstrap.css">
<link rel="stylesheet" href="${ctx}/static/css/font-ico.css">
<link rel="stylesheet" href="${ctx}/static/css/plugins.css">
<link rel="stylesheet" href="${ctx}/static/css/main.css">
<!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
<link rel="stylesheet" href="${ctx}/static/css/themes.css">
<link rel="stylesheet" href="${ctx}/static/css/mmm.css">
<link rel="stylesheet" href="${ctx}/static/css/icon.css">
<!-- END Stylesheets -->
<link rel="stylesheet" href="${ctx}/static/css/datetimepicker.css" type="text/css">
<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->

<!-- Modernizr (browser feature detection library) -->
<script src="${ctx}/static/js/modernizr-2.js"></script>
<script src="${ctx}/static/js/jquery-2.js"></script>
<script src="${ctx}/static/js/jquery.js"></script>
<script src="${ctx}/static/js/bootstrap.js"></script>
<script src="${ctx}/static/js/jquery_002.js"></script>
<script src="${ctx}/static/js/bootstrap-datetimepicker.js"></script>
<script src="${ctx}/static/js/ajaxfileupload.js"></script>
<script src="${ctx}/static/js/RSystem.Js"></script>
<script src="${ctx}/static/js/plugins.js"></script> 
<script src="${ctx}/static/js/app.js"></script>
<script src="${ctx}/static/js/index.js"></script>
<style type="text/css">.jqstooltip { width: auto !important; height: auto !important; position: absolute;left: 0px;top: 0px;visibility: hidden;background: #000000;color: white;font-size: 11px;text-align: left;white-space: nowrap;padding: 5px;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>
<body>
<div id="page-wrapper" class=""> 
	<!-- 页面加载部分开始 -->
	<div class="preloader">
		<div class="inner"> 
			<div class="preloader-spinner themed-background hidden-lt-ie10"></div>
			<!-- Text for IE9 -->
			<h3 class="text-primary visible-lt-ie10"><strong><i class="fa fa-rsystem"></i> Loading..</strong></h3>
		</div>
	</div>
	<!-- 页面加载部分结束 -->
	
	<!-- 页面主体框架开始 -->
	<div id="page-container" class="header-fixed-top"> 
		<!-- 页面右侧整体开始 -->
		<div id="main-container">
			<!-- 页面右侧头部开始 -->
			<!-- 页面右侧头部结束 -->
			<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
			<!-- 页面右侧内容开始 -->
			<div style="min-height: 749px;" id="page-content"> 
				<!-- 页面主体内容开始 -->
				<div class="row" id="Main-Box">    <div class="col-lg-12">
        <div class="block">
			<div class="block-title">
				<div class="block-options pull-right" style="height:25px; display:none;">
                	<a class="btn btn-xs" href="javascript:void(0)" style="border: 1px solid #D19405; background-color:rgb(254,220,105); opacity: 1; margin-top:-8px;" onclick="$('#Edit_Box').modal();">显示我的推荐链接</a>
                </div>
				推荐人
			</div>
            <div class="form-bordered">
				<div style="min-height: 617px;" class="table-responsive form-group" id="JS-Set-H">
					<div class="dataTables_wrapper form-inline no-footer">
						<table class="table table-hover table-bordered table-vcenter dataTable no-footer">
							<thead>
								<tr id="List_Box_Config">
									<th class="hide" data-css="hide" width="0%">ID</th>
									<th width="20%">姓名</th>
									<th width="20%">邮箱</th>
									<th width="15%">手机号码</th>
									<th width="20%">领导人</th>
									<th data-f="Get_Status_Str" width="10%">状态</th>
									<th width="15%">微信</th>
								</tr>
							</thead>
							<tbody id="List_Box" data-get="id,name,user_word,pass_phone,r_name,status,we">
							<!-- <tr id="List_Box_Val_31483"><td class="hide" style="undefined">31483</td>
							<td class="undefined" style="undefined">全</td><td class="undefined" style="undefined">
							ququankid@sina.com</td><td class="undefined" style="undefined">18853230862</td>
							<td class="undefined" style="undefined">baoluliuyuhang@163.com</td>
							<td class="undefined" style="undefined"><span class="label label-success">活跃</span></td>
							<td class="undefined" style="undefined"></td></tr> -->
							</tbody>
                		</table>
						<div class="row">
							<div class="col-sm-5 hidden-xs">
								<ul class="pagination pagination-sm remove-margin" id="Page-Function"><li><a href="javascript:void(0)" onclick="$('#Set_Page_Max_Box').modal();"> 显示 (10条)</a></li><li><a href="javascript:void(0)" onclick="$('#Go_Page_Box').modal();"> 页数 (1页/1条)</a></li></ul>
							</div>
							<div class="col-sm-7 col-xs-12 clearfix remove-padding">
								<div class="dataTables_paginate paging_bootstrap" id="example-datatable_paginate">
									<ul class="pagination pagination-sm remove-margin" id="Page-List"><li class="prev disabled"><a href="javascript:void(0)"><i class="fa fa-chevron-left"></i> </a></li><li class="active"><a href="javascript:void(0)">1</a></li><li class="next disabled"><a href="javascript:void(0)"><i class="fa fa-chevron-right"></i> </a></li></ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group form-actions" style="padding:5px !important;">
					<button type="button" class="btn btn-primary" onclick="POST_Data(1);"><i class="fa fa-refresh"></i> 刷新数据</button>
				</div>
            </div>
        </div>
    </div>
    
    <div class="modal fade in" id="Edit_Box" tabindex="-1" role="dialog" aria-hidden="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">我的推荐链接</h4>
                </div>
                <div class="modal-body" style="z-index:1060;">
                    <div class="form-horizontal">
                        <div class="form-group">
							<div class="col-lg-12"><input class="form-control" value="https://mmmoffice.ch/?t=registered_account&amp;r=baoluliuyuhang@163.com" readonly="readonly" type="text"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
					<button data-dismiss="modal" class="btn btn-danger" type="button"><i class="fa fa-times-circle"></i> 关闭</button>
                </div>
            </div>
        </div>
    </div>

	<script type="text/javascript">
		var Set_Data = '';
		//Auto_Start();
		var Page = 1;
		var Page_Max = 10;
		POST_Data(1);
		
		function Get_Status_Str(Status){
			if(Status=='0'){
				return '<span class="label label-success">活跃</span>';
			}else if(Status=='1'){
				return '<span class="label label-warning">警告</span>';
			}else if(Status=='-1'){
				return '<span class="label label-danger">冻结</span>';
			}
		}

		function List_Page(Target){
			Page = Target;
			POST_Data(1);
		}
		
		function POST_Data(Type){
			var Tmp_Search = '&p='+Page+'&pm='+Page_Max+'&get_array='+$('#List_Box').data('get');
			//if($('#List_Search').val()!=''){Tmp_Search += '&s_code='+Auto_Get_Search();}
			if(Type==1){
				$('#Page-List').html('<i class="fa fa-spinner fa-2x fa-spin text-primary"></i>');
				Ajax_POST('${ctx}/user/list/xml/?m=ajax&ajax_header=user&ajax_class=recommend&ajax_type=get',Tmp_Search,'xml',Post_Success,Post_Error);
			}
		}
		
		function Post_Success(Xml){
			if($(Xml).find("ajax_status").text()<0){
				if($(Xml).find("ajax_type").text()=='get'){
					$('#List_Box').html('');
					$('#Page-List').html('<li class="disabled"><a href="javascript:void(0)"><span class="text-danger"><i class="fa fa-exclamation-triangle"></i> 系统未找到任何数据!</span></a></li>');
				}else{
					Show_Prompt_Box(3,$(Xml).find("ajax_notice").text());
				}
			}else if($(Xml).find("ajax_header").text()=='user' && $(Xml).find("ajax_class").text()=='recommend'){
				if($(Xml).find("ajax_type").text()=='get'){
					$('#Page-List').html(Get_List_Page($(Xml).find("data_num").text().replace(".0",""),Page_Max,Page,'','',false,'','#Page-Function'));
					Auto_Set_List('List_Box',Xml,'data');
				}
			}
		}
    </script><!--Write_Html : False [user/recommend]-->
</div>
				<!-- 页面主体内容结束 -->
			</div>
			<!-- 页面右侧内容结束 -->
		</div>
		<!-- 页面右侧整体结束 -->
	</div>
</div>

<div class="modal fade" id="Prompt_Box" tabindex="-1" role="dialog" aria-hidden="true" style="z-index:999999;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="Prompt_Box_Title">提示标题</h4>
            </div>
            <div class="modal-body" id="Prompt_Box_Content">提示内容</div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-primary" type="button" id="Prompt_Box_Button">确定</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="One_Photo_Box" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">上传文件</h4>
            </div>
            <div class="modal-body">
				<div style="display:none;" id="One_Photo_Text">正在为您保存文件,请不要进行任何操作.</div>
				<div class="form-horizontal">
					<div class="form-group">
						<label class="col-lg-2 control-label">本地文件</label>
						<div class="col-lg-10">
							<div class="input-group">
								<input class="form-control" id="One_Photo_Up_Val" name="One_Photo_Up_Val" accept="image/jpg,image/jpeg,image/png,image/pjpeg,image/gif,image/bmp,image/x-png" type="file">
								<span class="input-group-btn">
									<button style="overflow: hidden; position: relative;" class="btn btn-effect-ripple btn-primary" type="button" onclick="Up_One_Photo();"><i class="fa fa-cloud-upload"></i> 上传文件</button>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-danger" type="button"><i class="fa fa-times-circle"></i> 取消</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="Set_Page_Max_Box" tabindex="-1" role="dialog" aria-hidden="true" style="z-index:999999;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">请选择每页最大显示数量</h4>
            </div>
            <div class="modal-body form-horizontal form-bordered">
				<div class="form-group">
					<label class="col-md-3 control-label">每页显示</label>
					<div class="col-md-6">
						<select class="form-control" id="Set_Page_Max_Select" onchange="Set_Page_Tag();">
							<option value="5" onclick="Set_Page_Max(5);">每页  5条</option>
							<option selected="selected" value="10" onclick="Set_Page_Max(10);">每页  10条</option>
							<option value="15" onclick="Set_Page_Max(15);">每页  15条</option>
							<option value="20" onclick="Set_Page_Max(20);">每页  20条</option>
							<option value="30" onclick="Set_Page_Max(30);">每页  30条</option>
							<option value="40" onclick="Set_Page_Max(40);">每页  40条</option>
							<option value="50" onclick="Set_Page_Max(50);">每页  50条</option>
							<option value="60" onclick="Set_Page_Max(60);">每页  60条</option>
							<option value="70" onclick="Set_Page_Max(70);">每页  70条</option>
							<option value="80" onclick="Set_Page_Max(80);">每页  80条</option>
							<option value="90" onclick="Set_Page_Max(90);">每页  90条</option>
							<option value="100" onclick="Set_Page_Max(100);">每页 100条</option>
						</select>
					</div>
				</div>
			</div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-primary" type="button">确定</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="Go_Page_Box" tabindex="-1" role="dialog" aria-hidden="true" style="z-index:999999;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">请选择需要查看的页数</h4>
            </div>
            <div class="modal-body form-horizontal form-bordered">
				<div class="form-group">
					<label class="col-md-3 control-label">选择页数</label>
					<div class="col-md-6">
						<select class="form-control" id="Go_Page_Select" onchange="Go_Page_Tag();"><option selected="selected" value="1" onclick="List_Page(1);$('#Go_Page_Box').modal('hide');">第 1 页 / 共 1 页</option></select>
					</div>
				</div>
			</div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-warning" type="button"><i class="fa fa-times-circle"></i> 取消</button>
            </div>
        </div>
    </div>
</div>

<script>
	//var Web_Titie = 'MMMOffice.CH - mmmoffice.ch';
	//var Web_Name = 'MMMOffice.CH';
	//var Web_Host = 'https://mmmoffice.ch/';
	var U_Status = '0';
	var User = new Array();
	var Select_Photo_Page = 1;
	var Edit_ID = '';
	var Search_ST = 0;
	var Search_ET = 0;
	var Current_Frame;
	var APP_Init = 1;
	
	/* var Status_Abnormal_1 = "您的账户已经被警告!";
	var Status_Abnormal_2 = "您的账户已经被冻结,您只能使用反馈功能进行解冻!";
	
	if(U_Status=='1'){
		Show_Prompt_Box(3,Status_Abnormal_1);
	}else if(U_Status=='-1'){
		Show_Prompt_Box(3,Status_Abnormal_2);
	} */
	
	//Ajax_POST('https://mmmoffice.ch/?m=ajax&ajax_header=public&ajax_class=window&ajax_type=data','id=1','xml',Post_Tickets_Success,Post_Error);
	//Ajax_POST('https://mmmoffice.ch/?m=ajax&ajax_header=user&ajax_class=users_message&ajax_type=get_look','','xml',Post_Tickets_Success,Post_Error);
	
	/* function Post_Tickets_Success(Xml){
		if($(Xml).find("ajax_status").text()<0){
			
		}else if($(Xml).find("ajax_header").text()=='user' && $(Xml).find("ajax_class").text()=='users_message'){
			if($(Xml).find("ajax_type").text()=='get_look'){
				$('#Tickets_Num').html($(Xml).find("num").text());
			}
		}else if($(Xml).find("ajax_header").text()=='public' && $(Xml).find("ajax_class").text()=='window'){
			if($(Xml).find("ajax_type").text()=='data'){
				if($(Xml).find("window").text()=='1'){
					Show_Prompt_Box('焦点资讯',$(Xml).find("content").text());
				}
			}
		}
	} */
	
	function Set_Page_Tag(){
		Set_Page_Max($('#Set_Page_Max_Select').val());
	}
	
	function Go_Page_Tag(){
		List_Page($('#Go_Page_Select').val());
		$('#Go_Page_Box').modal('hide');
	}
	
	//if(Is_Digit(parseInt($.cookie('Page_Max')))==false || parseInt($.cookie('Page_Max'))>100){$.cookie('Page_Max','10',{expires:365});}
	
	//var Page_Max = parseInt($.cookie('Page_Max'));
	
	/* if(U_Status!='-1'){
		window.document.title = '新闻';
		Ajax_POST(Web_Host+'?t=user/news','features_page=Read','text',Read_Success,Post_Error);
	}else{
		window.document.title = '反馈';
		Ajax_POST(Web_Host+'?t=user/tickets','features_page=Read','text',Read_Success,Post_Error);
	}
	 */
	/* $(document).on('click', '[data-atype="load_frame"]', function(){
		if(U_Status=='-1' && $(this).data('frame')!='user/tickets'){
			Show_Prompt_Box(3,Status_Abnormal_2);
			return;
		}
		window.document.title = $(this).data('name');
		Ajax_POST(Web_Host+'?t='+$(this).data('frame'),'features_page=Read','text',Read_Success,Post_Error);
	}) */
	
	$(window).resize(function(){
	   Set_Size();
	});
	
	function Set_Size(){
		$('#JS-Set-H').css('min-height',$(window).height()-132);
		$('[data-auto="JS-Set-H"]').css('height',$(window).height()-135);
	}
	
</script>

<div id="xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd"></div></body></html>
<!--Write_Html : False [user/index]-->