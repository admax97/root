<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <title>MMM用户管理</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="${ctx}/static/html/assets/global/plugins/fontsGoogle/fontsGoogleLocal.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/html/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/static/html/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/static/html/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <%--<link href="${ctx}/static/html/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />--%>
    <%--<link href="${ctx}/static/html/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />--%>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
    <%--<link href="${ctx}/static/html/assets/global/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" type="text/css" />--%>
    <%--<link href="${ctx}/static/html/assets/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />--%>
    <%--<link href="${ctx}/static/html/assets/global/plugins/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />--%>
    <%--<link href="${ctx}/static/html/assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css" />--%>
    <!-- END PAGE LEVEL PLUGIN STYLES -->
    <!-- BEGIN PAGE STYLES -->
    <link href="${ctx}/static/html/assets/admin/pages/css/tasks.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="${ctx}/static/html/assets/global/css/components.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/static/html/assets/global/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/static/html/assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/static/html/assets/admin/layout/css/themes/blue.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="${ctx}/static/html/assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css" />
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="stylesheet" type="text/css" href="${ctx}/static/html/assets/admin/layout/css/myadmin.css" />
    <!--<link rel="stylesheet" type="text/css" href="${ctx}/static/html/assets/admin/layout/css/themes/light2.css" />-->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->

<body class="page-header-fixed page-quick-sidebar-over-content">
<!-- BEGIN HEADER -->
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
     <jsp:include page="/WEB-INF/views/layout/sidebar.jsp"></jsp:include>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">
            <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            Widget settings form goes here
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn blue">Save changes</button>
                            <button type="button" class="btn default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <!-- BEGIN STYLE CUSTOMIZER -->
            <!-- END STYLE CUSTOMIZER -->
            <!-- BEGIN PAGE HEADER-->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                    <ul class="page-breadcrumb breadcrumb">
                        <li>
                            <i class="fa fa-home"></i>
                            <span>Home</span>
                            <i class="fa fa-angle-right"></i>
                        </li>
                        <li>
                            <span>用户管理</span>
                        </li>
                    </ul>
                    <!-- END PAGE TITLE & BREADCRUMB-->
                </div>
            </div>
            <!-- END PAGE HEADER-->
            <!--main -->
            <div class="row">

                <div class="col-md-12">
                    <form class="form-inline">
                        <table>
                            <tr>
                                <td>用户账号</td>
                                <td>
                                    <div class="col-md-10">
                                        <input type="text" placeholder="用户账号" name="loginAccount" class="form-control">
                                    </div>
                                </td>
                                <td>姓名</td>
                                <td>
                                    <div class="col-md-10">
                                        <input type="text" placeholder="姓名" name="userName" class="form-control">
                                    </div>
                                </td>
                                <td>手机号</td>
                                <td>
                                    <div class="col-md-10">
                                        <input type="text" placeholder="手机号" name="mobileNo" class="form-control">
                                    </div>
                                </td>
                                <td>
                                    <button class="btn blue" type="button" onclick="goPage(1,10)"><i class=" icon-magnifier"></i>查询</button>
                                </td>
                                <td style="padding-left: 10px;">
                                    <button class="btn blue" type="button" data-toggle="modal" data-target=".bs-example-modal-lg"><i class=" glyphicon glyphicon-plus"></i>注册用户</button>
                                </td>
                            </tr>
                        </table>

                    </form>
                </div>
                <!--col-md-6 end-->
            </div>
            <!--row end-->
             <div id="userContent">
             </div>
            <!-- page number-->
            <div class="row">
                <!--main end-->
                <div class="clearfix">
                </div>
            </div>
        </div>
        <!-- END CONTENT -->
        <!-- BEGIN QUICK SIDEBAR -->
        <!-- END QUICK SIDEBAR -->
    </div>
    <!-- END CONTAINER -->
    <!-- BEGIN FOOTER -->
    <jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
    <!-- END FOOTER -->
    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->
    <script>
        var ctx = '${ctx}';
    </script>
    <!--[if lt IE 9]>
    <script src="${ctx}/static/html/assets/global/plugins/respond.min.js"></script>
    <script src="${ctx}/static/html/assets/global/plugins/excanvas.min.js"></script>
    <![endif]-->
    <script src="${ctx}/static/html/assets/global/plugins/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/html/assets/global/plugins/jquery.md5.js" type="text/javascript"></script>
    <script src="${ctx}/static/html/assets/global/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
    <script src="${ctx}/static/html/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/html/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/html/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/html/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/html/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/html/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
    <%--<script src="${ctx}/static/html/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>--%>
    <!-- END CORE PLUGINS -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <%--<script src="${ctx}/static/html/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/jquery.pulsate.min.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>--%>
    <!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js for drag & drop support -->
    <%--<script src="${ctx}/static/html/assets/global/plugins/fullcalendar/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>--%>
    <%--<script src="${ctx}/static/html/assets/global/plugins/gritter/js/jquery.gritter.js" type="text/javascript"></script>--%>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="${ctx}/static/html/assets/global/scripts/metronic.js" type="text/javascript"></script>
    <script src="${ctx}/static/html/assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
    <script src="${ctx}/static/html/assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
    <%--<script src="${ctx}/static/html/assets/admin/pages/scripts/index.js" type="text/javascript"></script>--%>
    <script src="${ctx}/static/html/assets/admin/pages/scripts/tasks.js" type="text/javascript"></script>
    <script src="${ctx}/static/html/assets/admin/layout/scripts/public.js" type="text/javascript" charset="utf-8"></script>
    <script src="${ctx}/static/script/user/user.js" type="text/javascript" charset="utf-8"></script>
    <script src="${ctx}/static/script/user/reguser.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        jQuery(document).ready(function() {
            Metronic.init(); // init metronic core componets
            Layout.init(); // init layout
            QuickSidebar.init() // init quick sidebar
//            Index.init();
//            Index.initDashboardDaterange();
//            Index.initJQVMAP(); // init index page's custom scripts
//            Index.initCalendar(); // init index page's custom scripts
//            Index.initCharts(); // init index page's custom scripts
//            Index.initChat();
//            Index.initMiniCharts();
//            Index.initIntro();
            Tasks.initDashboardWidget();
        });
    </script>
    <!-- END JAVASCRIPTS -->

    <style type="text/css">
        .form-group{ margin-bottom: 15px!important; width: 100%;}
        input[type="text"]{ width: 100%!important;}
    </style>
<input type="hidden" id="userset-id" value="0">
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">用户注册</h4>
                </div>
                <div class="modal-body">
                    <div class="wrap">
                        <div style="margin-bottom:10px;" class="bwizard" id="wizard">
                        </div>
                        <div style="clear:both;"></div>
                        <form onsubmit="dialog_loading();" id="upload" name="upload" method="post" action="/lms/?s=Course%2FCourseware%2Fcw_edit" class="form form-inline form-horizontal">
                            <fieldset>
                                <div class="clearfix">
                                </div>
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"><span class="form_required">*</span>姓名</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="userName" placeholder="Enter text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"><span class="form_required">*</span>邮箱</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="email" placeholder="Enter text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"><span class="form_required">*</span>手机号码</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="mobile" placeholder="Enter text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"><span class="form_required">*</span>手机验证码</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="verifyCode" placeholder="Enter text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"><span class="form_required">*</span>密码</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="password" placeholder="Enter text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label"><span class="form_required">*</span>密码(确认)</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="confirmPassword" placeholder="Enter text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">邀请</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="leaderInfo" placeholder="Enter text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">领导人邮箱</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="leaderEmail" placeholder="领导人邮箱" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label">领导人手机号</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="leaderMobile" placeholder="领导人手机号" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <div class="col-md-12">&nbsp;</div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">&nbsp;</div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">&nbsp;</div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <button type="button" class="btn btn-default left" onclick="getMobileCode();">点击获取手机验证码</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--col-md-6 end-->
                                </div>
                                <div class="containerBody">
                                    <div align="right" style="border:0px" class="formTableTd"><span class="form_required">*</span> <small>本项信息不能留空!</small></div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
                <!--modal-body end-->
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" onclick="addUser();">保存</button>
                </div>
            </div>
            <!--modal-content end-->
        </div>
        <!--modal-dialog modal-lg end-->
    </div>
    <!--modal fade bs-example-modal-lg-dr3 end-->
</div>

<!-- 用户设置pop-->

<div class="modal fade" id="responsive" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">用户设置</h4>
            </div>
            <div class="modal-body">
                <div>

                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">个人信息</a></li>
                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">账户信息</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="home">

                            <form class="form form-inline form-horizontal" action="/lms/?s=Admin%2FMgrCenter%2Fcourse_setting" method="post" name="set_course" id="set_course" onsubmit="dialog_loading();">
                                <fieldset>
                                    <h4 class="blue-font mt20"> 基本信息</h4>
                                    <div class="form-group col-md-12 mt7">
                                        <label class="col-md-3 col-md-3 control-label"><span class="form_required">*</span>姓名</label>
                                        <div class="col-md-6">
                                            <p class="form-control-static" id="userset-name">1</p>
                                        </div>
                                        <div class="col-md-3">
                                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal01">修改</button>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12 mt7">
                                        <label class="col-md-3 col-md-3 control-label"> 状态</label>
                                        <div class="col-md-6">
                                            <p class="form-control-static"  id="userset-status">2</p>
                                        </div>
                                        <div class="col-md-3">
                                            <button type="button" class="btn btn-primary btn-sm" id="btn-userstatus" onclick="updateUserStatus();">冻结账号/解冻账号</button>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12 mt7">
                                        <label class=" col-md-3 col-md-3 control-label"> 密码</label>
                                        <div class="col-md-6">
                                            <p class="form-control-static">******</p>
                                        </div>
                                        <div class="col-md-3">
                                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-sm2">修改</button>
                                        </div>
                                    </div>

                                    <div class="form-group col-md-12 mt7">
                                        <label class=" col-md-3 col-md-3 control-label"> 邮箱</label>
                                        <div class="col-md-6">
                                            <p class="form-control-static"  id="userset-email">4</p>
                                        </div>
                                        <div class="col-md-3">
                                            <button type="button"  class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal003">修改</button>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12 mt7">
                                        <label class=" col-md-3 col-md-3 control-label"> 手机号码</label>
                                        <div class="col-md-6">
                                            <p class="form-control-static"  id="userset-mobile">5</p>
                                        </div>
                                        <div class="col-md-3">
                                            <button  type="button"  class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal004">修改</button>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12 mt7 ">
                                        <label class=" col-md-3 col-md-3 control-label"> 注册日期</label>
                                        <div class="col-md-6">
                                            <p class="form-control-static"  id="userset-regdate">6</p>
                                        </div>
                                    </div>
                                    <div class="clearfix">

                                    </div>
                                    <div class="line mb20 pb20">

                                    </div>

                                    <div class="clearfix">

                                    </div>
                                    <h4 class="blue-font mt20"> 领导人信息</h4>
                                    <div class="form-group col-md-12 mt7">
                                        <label class="col-md-3 col-md-3 control-label"><span class="form_required">*</span>姓名</label>
                                        <div class="col-md-6">
                                            <p class="form-control-static"  id="userset-leadername">王鹏</p>
                                        </div>
                                    </div>

                                    <div class="form-group col-md-12 mt7">
                                        <label class=" col-md-3 col-md-3 control-label"> 邮箱</label>
                                        <div class="col-md-6">
                                            <p class="form-control-static"  id="userset-leaderemail">123@126.com</p>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12 mt7">
                                        <label class=" col-md-3 col-md-3 control-label"> 手机号码</label>
                                        <div class="col-md-6">
                                            <p class="form-control-static"  id="userset-leadermobile">135000000</p>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12 mt7 mb20 ">
                                        <label class=" col-md-3 col-md-3 control-label"> 微信</label>
                                        <div class="col-md-6">
                                            <p class="form-control-static"  id="userset-leaderweixin">1982－09-09</p>
                                        </div>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </fieldset>
                            </form>

                        </div>
                        <!--tab1 end-->
                        <div style="overflow: hidden;" role="tabpanel" class="tab-pane" id="profile">
                            <div class="form-group col-md-12 mt7">
                                <label class="col-md-3 col-md-3 control-label"><span class="form_required">*</span>微信</label>
                                <div class="col-md-6">
                                    <p class="form-control-static" id="account-weixin">1</p>
                                </div>
                                <div class="col-md-3">
                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModalweixin">修改</button>
                                </div>
                            </div>
                            <div class="form-group col-md-12 mt7">
                                <label class="col-md-3 col-md-3 control-label" > 支付宝</label>
                                <div class="col-md-6">
                                    <p class="form-control-static" id="account-pay">2</p>
                                </div>
                                <div class="col-md-3">
                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModalpay">修改</button>
                                </div>
                            </div>
                            <div class="form-group col-md-12 mt7">
                                <label class=" col-md-3 col-md-3 control-label"> 银行名称</label>
                                <div class="col-md-6">
                                    <p class="form-control-static" id="account-bank">3</p>
                                </div>
                                <div class="col-md-3">
                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModalbankname">修改</button>
                                </div>
                            </div>
                            <div class="form-group col-md-12 mt7">
                                <label class=" col-md-3 col-md-3 control-label"> 银行账号</label>
                                <div class="col-md-6">
                                    <p class="form-control-static"  id="account-no">4</p>
                                </div>
                                <div class="col-md-3">
                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModalbankcode">修改</button>
                                </div>
                            </div>
                            <div class="form-group col-md-12 mt7">
                                <label class=" col-md-3 col-md-3 control-label"> 账户持有人</label>
                                <div class="col-md-6">
                                    <p class="form-control-static"  id="account-name">4</p>
                                </div>
                                <div class="col-md-3">
                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModalpayowner">修改</button>
                                </div>
                            </div>
                        </div>
                        <!--tab2 end-->
                    </div>

                </div>
            </div>
            <!-- modal-body end-->
        </div>
    </div>
</div>

<!--修改pop-->
<div class="modal fade bs-example-modal-sm" id="myModal01" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改</h4>
            </div>
            <div class="modal-body">
                <input class="form-control" type="text"  id="modify-name"  placeholder="姓名" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="updateUserName();">确定</button>
            </div>
        </div>
    </div>
</div>
<!--修改2pop-->
<div class="modal fade bs-example-modal-sm2" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改</h4>
            </div>
            <div class="modal-body">

                请输入新密码
                <input class="form-control" type="text"  id="modify-password"  placeholder="新密码" />
                <div class=" mt20">

                </div>
                请输入新的确认密码
                <input class="form-control" type="text"  id="modify-confirm" placeholder="新的确认密码" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="updateUserPassword();">确定</button>
            </div>
        </div>
    </div>
</div>

<!--修改pop3-->
<div class="modal fade bs-example-modal-sm" id="myModal003" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改</h4>
            </div>
            <div class="modal-body">
                <input class="form-control" type="text"  id="modify-email"  placeholder="邮箱" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="updateUserEmail();">确定</button>
            </div>
        </div>
    </div>
</div>
<!--修改pop4-->
<div class="modal fade bs-example-modal-sm" id="myModal004" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改</h4>
            </div>
            <div class="modal-body">
                <input class="form-control" type="text"  id="modify-mobile"  placeholder="手机号码" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="updateUserMobile();">确定</button>
            </div>
        </div>
    </div>
</div>
<!--修改pop weixin-->
<div class="modal fade bs-example-modal-sm" id="myModalweixin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改</h4>
            </div>
            <div class="modal-body">
                <input class="form-control" type="text"  id="modify-weixin"  placeholder="微信号" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="updateAccountWeixin();">确定</button>
            </div>
        </div>
    </div>
</div>
<!--修改pop weixin-->
<div class="modal fade bs-example-modal-sm" id="myModalpay" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改</h4>
            </div>
            <div class="modal-body">
                <input class="form-control" type="text"  id="modify-pay"  placeholder="支付宝" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="updateAccountPay();">确定</button>
            </div>
        </div>
    </div>
</div>
<!--修改pop weixin-->
<div class="modal fade bs-example-modal-sm" id="myModalbankname" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改</h4>
            </div>
            <div class="modal-body">
                <input class="form-control" type="text"  id="modify-bankname"  placeholder="银行名称" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="updateAccountBank();">确定</button>
            </div>
        </div>
    </div>
</div>
<!--修改pop code-->
<div class="modal fade bs-example-modal-sm" id="myModalbankcode" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改</h4>
            </div>
            <div class="modal-body">
                <input class="form-control" type="text"  id="modify-code"  placeholder="银行账号" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="updateAccountCode();">确定</button>
            </div>
        </div>
    </div>
</div>
<!--修改pop owner-->
<div class="modal fade bs-example-modal-sm" id="myModalpayowner" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改</h4>
            </div>
            <div class="modal-body">
                <input class="form-control" type="text"  id="modify-owner"  placeholder="账户持有人" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="updateAccountOwner();">确定</button>
            </div>
        </div>
    </div>
</div>
</body>
<!-- END BODY -->

</html>