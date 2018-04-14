<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script>
    var ctx = '${ctx}';
</script>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid">
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
            <!-- END THEME PANEL -->
            <h1 class="page-title">试题管理</h1>
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="index.html">题库管理</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">试题列表</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <span>新建试题</span>
                    </li>
                </ul>
                <div class="page-toolbar">
                    <div class="btn-group pull-right">
                        <button type="button" class="btn btn-fit-height grey-salt dropdown-toggle"> Actions
                            <i class="fa fa-angle-down"></i>
                        </button>
                    </div>
                </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE HEADER-->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box green">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-globe"></i>Column Reordering </div>
                            <div class="tools"> </div>
                        </div>
                        <div class="portlet-body">
                            <table class="table table-striped table-bordered table-hover" id="sample_2">
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
                                    <td> Gecko </td>
                                    <td> Mozilla 1.0 </td>
                                    <td> Win 95+ / OSX.1+ </td>
                                    <td> 1 </td>
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
                    </div>
                    <!-- END EXAMPLE TABLE PORTLET-->
                </div>
            </div>
            <!-- END PAGE HEADER-->
            <div class="row">
                <!--main end-->
                <div class="clearfix">
                </div>
            </div>
        </div>
        <!-- END CONTENT -->
    </div>
    <!-- END CONTAINER -->
    <!-- BEGIN FOOTER -->
    <jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
</div>
</body>
<!-- END BODY -->