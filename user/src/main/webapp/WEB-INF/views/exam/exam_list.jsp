<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script>
    var ctx = '${ctx}';
</script>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head>
        <meta charset="utf-8" />
        <title>Metronic Admin Theme #3 | Colreorder Extension</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #3 for colreorder extension demos" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="${ctx}/static/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="${ctx}/static/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="${ctx}/static/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${ctx}/static/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="${ctx}/static/assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
        <link href="${ctx}/static/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="${ctx}/static/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="${ctx}/static/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="${ctx}/static/assets/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="${ctx}/static/assets/layouts/layout3/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="${ctx}/static/assets/layouts/layout3/css/custom.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" /> </head>
    <!-- END HEAD -->

    <body class="page-container-bg-solid">
        <div class="page-wrapper">
            <div class="page-wrapper-row">
                <div class="page-wrapper-top">
                    <!-- BEGIN HEADER -->
                    <jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
                    <!-- END HEADER -->
                </div>
            </div>
            <div class="page-wrapper-row full-height">
                <div class="page-wrapper-middle">
                    <!-- BEGIN CONTAINER -->
                    <div class="page-container">
                        <!-- BEGIN CONTENT -->
                        <div class="page-content-wrapper">
                            <!-- BEGIN CONTENT BODY -->
                            <!-- BEGIN PAGE HEAD-->

                            <!-- END PAGE HEAD-->
                            <!-- BEGIN PAGE CONTENT BODY -->
                            <div class="page-content">
                                <div class="container">
                                    <!-- BEGIN PAGE BREADCRUMBS -->
                                    <!-- END PAGE BREADCRUMBS -->
                                    <!-- BEGIN PAGE CONTENT INNER -->
                                    <div class="page-content-inner">
                                            <%--<div class="m-heading-1 border-green m-bordered">
                                                <h3>在线考试</h3>

                                            </div>--%>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                                <%--<div class="portlet light ">
                                                    <div class="portlet-title">
                                                        <div class="caption font-dark">
                                                            <i class="icon-settings font-dark"></i>
                                                            <span class="caption-subject bold uppercase">Column Reordering</span>
                                                        </div>
                                                        <div class="tools"> </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        <table class="table table-striped table-bordered table-hover" id="sample_1">
                                                            <thead>
                                                                <tr>
                                                                    <th> Rendering engine </th>
                                                                    <th> Browser </th>
                                                                    <th> Platform(s) </th>
                                                                    <th> Engine version </th>
                                                                    <th> CSS grade </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td> Trident </td>
                                                                    <td> Internet Explorer 4.0 </td>
                                                                    <td> Win 95+ </td>
                                                                    <td> 4 </td>
                                                                    <td> X </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Trident </td>
                                                                    <td> Internet Explorer 5.0 </td>
                                                                    <td> Win 95+ </td>
                                                                    <td> 5 </td>
                                                                    <td> C </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Trident </td>
                                                                    <td> Internet Explorer 5.5 </td>
                                                                    <td> Win 95+ </td>
                                                                    <td> 5.5 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Trident </td>
                                                                    <td> Internet Explorer 6 </td>
                                                                    <td> Win 98+ </td>
                                                                    <td> 6 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Trident </td>
                                                                    <td> Internet Explorer 7 </td>
                                                                    <td> Win XP SP2+ </td>
                                                                    <td> 7 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Trident </td>
                                                                    <td> AOL browser (AOL desktop) </td>
                                                                    <td> Win XP </td>
                                                                    <td> 6 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Firefox 1.0 </td>
                                                                    <td> Win 98+ / OSX.2+ </td>
                                                                    <td> 1.7 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Firefox 1.5 </td>
                                                                    <td> Win 98+ / OSX.2+ </td>
                                                                    <td> 1.8 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Firefox 2.0 </td>
                                                                    <td> Win 98+ / OSX.2+ </td>
                                                                    <td> 1.8 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Firefox 3.0 </td>
                                                                    <td> Win 2k+ / OSX.3+ </td>
                                                                    <td> 1.9 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Camino 1.0 </td>
                                                                    <td> OSX.2+ </td>
                                                                    <td> 1.8 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Camino 1.5 </td>
                                                                    <td> OSX.3+ </td>
                                                                    <td> 1.8 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Netscape 7.2 </td>
                                                                    <td> Win 95+ / Mac OS 8.6-9.2 </td>
                                                                    <td> 1.7 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Netscape Browser 8 </td>
                                                                    <td> Win 98SE+ </td>
                                                                    <td> 1.7 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Netscape Navigator 9 </td>
                                                                    <td> Win 98+ / OSX.2+ </td>
                                                                    <td> 1.8 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Mozilla 1.0 </td>
                                                                    <td> Win 95+ / OSX.1+ </td>
                                                                    <td> 1 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Mozilla 1.1 </td>
                                                                    <td> Win 95+ / OSX.1+ </td>
                                                                    <td> 1.1 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Mozilla 1.2 </td>
                                                                    <td> Win 95+ / OSX.1+ </td>
                                                                    <td> 1.2 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Mozilla 1.3 </td>
                                                                    <td> Win 95+ / OSX.1+ </td>
                                                                    <td> 1.3 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Mozilla 1.4 </td>
                                                                    <td> Win 95+ / OSX.1+ </td>
                                                                    <td> 1.4 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Mozilla 1.5 </td>
                                                                    <td> Win 95+ / OSX.1+ </td>
                                                                    <td> 1.5 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Mozilla 1.6 </td>
                                                                    <td> Win 95+ / OSX.1+ </td>
                                                                    <td> 1.6 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Mozilla 1.7 </td>
                                                                    <td> Win 98+ / OSX.1+ </td>
                                                                    <td> 1.7 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Mozilla 1.8 </td>
                                                                    <td> Win 98+ / OSX.1+ </td>
                                                                    <td> 1.8 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Seamonkey 1.1 </td>
                                                                    <td> Win 98+ / OSX.2+ </td>
                                                                    <td> 1.8 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Gecko </td>
                                                                    <td> Epiphany 2.20 </td>
                                                                    <td> Gnome </td>
                                                                    <td> 1.8 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Webkit </td>
                                                                    <td> Safari 1.2 </td>
                                                                    <td> OSX.3 </td>
                                                                    <td> 125.5 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Webkit </td>
                                                                    <td> Safari 1.3 </td>
                                                                    <td> OSX.3 </td>
                                                                    <td> 312.8 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Webkit </td>
                                                                    <td> Safari 2.0 </td>
                                                                    <td> OSX.4+ </td>
                                                                    <td> 419.3 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Webkit </td>
                                                                    <td> Safari 3.0 </td>
                                                                    <td> OSX.4+ </td>
                                                                    <td> 522.1 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Webkit </td>
                                                                    <td> OmniWeb 5.5 </td>
                                                                    <td> OSX.4+ </td>
                                                                    <td> 420 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Webkit </td>
                                                                    <td> iPod Touch / iPhone </td>
                                                                    <td> iPod </td>
                                                                    <td> 420.1 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Webkit </td>
                                                                    <td> S60 </td>
                                                                    <td> S60 </td>
                                                                    <td> 413 </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Presto </td>
                                                                    <td> Opera 7.0 </td>
                                                                    <td> Win 95+ / OSX.1+ </td>
                                                                    <td> - </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Presto </td>
                                                                    <td> Opera 7.5 </td>
                                                                    <td> Win 95+ / OSX.2+ </td>
                                                                    <td> - </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Presto </td>
                                                                    <td> Opera 8.0 </td>
                                                                    <td> Win 95+ / OSX.2+ </td>
                                                                    <td> - </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Presto </td>
                                                                    <td> Opera 8.5 </td>
                                                                    <td> Win 95+ / OSX.2+ </td>
                                                                    <td> - </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Presto </td>
                                                                    <td> Opera 9.0 </td>
                                                                    <td> Win 95+ / OSX.3+ </td>
                                                                    <td> - </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Presto </td>
                                                                    <td> Opera 9.2 </td>
                                                                    <td> Win 88+ / OSX.3+ </td>
                                                                    <td> - </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Presto </td>
                                                                    <td> Opera 9.5 </td>
                                                                    <td> Win 88+ / OSX.3+ </td>
                                                                    <td> - </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Presto </td>
                                                                    <td> Opera for Wii </td>
                                                                    <td> Wii </td>
                                                                    <td> - </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Presto </td>
                                                                    <td> Nokia N800 </td>
                                                                    <td> N800 </td>
                                                                    <td> - </td>
                                                                    <td> A </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Presto </td>
                                                                    <td> Nintendo DS browser </td>
                                                                    <td> Nintendo DS </td>
                                                                    <td> 8.5 </td>
                                                                    <td> C/A
                                                                        <sup>1</sup>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>--%>
                                                <!-- END EXAMPLE TABLE PORTLET-->
                                                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                                <div class="portlet box green">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-globe"></i>考试列表</div>
                                                        <div class="tools"> </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        <table class="table table-striped table-bordered table-hover" id="sample_2">
                                                            <thead>
                                                                <tr>
                                                                    <th> 编号 </th>
                                                                    <th> 考试名称 </th>
                                                                    <th> 时长 </th>
                                                                    <th> 考试类型 </th>
                                                                    <th> 关联的试卷 </th>
                                                                    <th> 有效期</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>


                                                            <c:forEach var="exam" items="${examList}">
                                                                <tr>
                                                                    <td>${exam.examNumber}</td>
                                                                    <td>${exam.examName}</td>
                                                                    <td>${exam.examTime} </td>
                                                                    <td>${exam.examType}</td>
                                                                    <td>${exam.paperId}</td>
                                                                    <td><c:if test="${exam.examStatus==1}">正常</c:if> <c:if test="${exam.examStatus==2}">作废</c:if> </td>
                                                                    <td> ${exam.creater}</td>
                                                                    <td width="150px">
                                                                        <div class="btn-group">
                                                                            <a href="${ctx}/paQuestion/review?paperId=${exam.paperId}">
                                                                                <button class="btn btn-sm blue"  type="button"> 立即考试
                                                                                <%--<i class="fa fa-angle-down"></i>--%>
                                                                                </button>
                                                                            </a>
                                                                            <%--<ul class="dropdown-menu" role="menu">--%>
                                                                                <%--<li>--%>
                                                                                    <%--<a href="javascript:;"> 查看考试 </a>--%>
                                                                                <%--</li>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<a href="javascript:;"> 预览试卷 </a>--%>
                                                                                <%--</li>--%>
                                                                            <%--</ul>--%>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <!-- END EXAMPLE TABLE PORTLET-->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END PAGE CONTENT INNER -->
                                </div>
                            </div>
                            <!-- END PAGE CONTENT BODY -->
                            <!-- END CONTENT BODY -->
                        </div>
                        <!-- END CONTENT -->
                        <!-- BEGIN QUICK SIDEBAR -->
                        <jsp:include page="/WEB-INF/views/layout/sidebar.jsp"></jsp:include>
                        <!-- END QUICK SIDEBAR -->
                    </div>
                    <!-- END CONTAINER -->
                </div>
            </div>
            <div class="page-wrapper-row">
                <div class="page-wrapper-bottom">
                    <!-- BEGIN FOOTER -->
                    <jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
                    <!-- END INNER FOOTER -->
                    <!-- END FOOTER -->
                </div>
            </div>
        </div>
        <!--预览试卷模态框-->
        <%--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">--%>
            <%--<div class="modal-dialog" role="document">--%>
                <%--<div class="modal-content">--%>
                    <%--<div class="modal-header">--%>
                        <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
                        <%--<h4 class="modal-title" id="myModalLabel">试卷预览</h4>--%>
                    <%--</div>--%>
                    <%--<div class="modal-body" id="body">--%>

                    <%--</div>--%>
                    <%--<div class="modal-footer">--%>
                        <%--<button type="button" id="closeModal" class="btn btn-default" data-dismiss="modal" onclick="goPaperList()">关闭</button>--%>
                        <%--<button type="button" class="btn btn-primary" onclick="goPaperList()">确定</button>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <!-- BEGIN QUICK NAV -->
        <nav class="quick-nav">
            <a class="quick-nav-trigger" href="#0">
                <span aria-hidden="true"></span>
            </a>
            <ul>

                <li>
                    <a href="http://keenthemes.com/metronic-theme/changelog/" target="_blank">
                        <span>Changelog</span>
                        <i class="icon-graph"></i>
                    </a>
                </li>
            </ul>
            <span aria-hidden="true" class="quick-nav-bg"></span>
        </nav>
        <div class="quick-nav-overlay"></div>
        <!-- END QUICK NAV -->
        <!--[if lt IE 9]>
<script src="${ctx}/static/assets/global/plugins/respond.min.js"></script>
<script src="${ctx}/static/assets/global/plugins/excanvas.min.js"></script> 
<script src="${ctx}/static/assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        <script src="${ctx}/static/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="${ctx}/static/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${ctx}/static/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="${ctx}/static/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="${ctx}/static/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="${ctx}/static/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="${ctx}/static/assets/global/scripts/datatable.js" type="text/javascript"></script>
        <script src="${ctx}/static/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
        <script src="${ctx}/static/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="${ctx}/static/assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="${ctx}/static/assets/pages/scripts/table-datatables-colreorder.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="${ctx}/static/assets/layouts/layout3/scripts/layout.min.js" type="text/javascript"></script>
        <script src="${ctx}/static/assets/layouts/layout3/scripts/demo.min.js" type="text/javascript"></script>
        <script src="${ctx}/static/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="${ctx}/static/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
        <script>
            <%--function goexaming(id){--%>
                <%--$.post(--%>
                    <%--"${ctx}/paQuestion/review",--%>
                    <%--{paperId:id},--%>
                    <%--function (data, status) {--%>
                        <%--var number = 0;--%>
                        <%--var html = "<h3>试卷名称："+data.paperName+"</h3>";--%>
                        <%--if(data.singleChoiceCount>0){--%>
                            <%--for(var i = 0; i<data.singleChoiceList.length; i++){--%>
                                <%--number++;--%>
                                <%--html += "<span style='text-align:left'><p>"+number+"."+data.singleChoiceList[i].title+"</p><span>";--%>
                                <%--html +="<p>A."+data.singleChoiceList[i].answerA+"&nbsp;&nbsp; B."+data.singleChoiceList[i].answerB+" <br> C."+data.singleChoiceList[i].answerC+" &nbsp;&nbsp;D."+data.singleChoiceList[i].answerD+"</p>"--%>
                            <%--}--%>
                        <%--}--%>
                        <%--if(data.shortQuestionCount>0){--%>
                            <%--for(var i = 0; i<data.shortQuestionList.length; i++){--%>
                                <%--number++;--%>
                                <%--html += "<p>"+number+"."+data.shortQuestionList[i].title+"</p>";--%>
                            <%--}--%>
                        <%--}--%>
                        <%--var b = $("#body");--%>
                        <%--b.append(html);--%>
                        <%--$('#myModal').modal();--%>

                    <%--},--%>
                    <%--"json"--%>

                <%--);--%>
            <%--}--%>

            <%--$(document).ready(function()--%>
            <%--{--%>
                <%--$('#clickmewow').click(function()--%>
                <%--{--%>
                    <%--$('#radio1003').attr('checked', 'checked');--%>
                <%--});--%>
            <%--})--%>
        </script>
    </body>

</html>