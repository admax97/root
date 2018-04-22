<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script>
    var ctx = '${ctx}';
</script>
<head>
    <meta charset="utf-8" />
    <title>在线学习管理系统</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="Preview page of Metronic Admin Theme #2 for colreorder extension demos" name="description" />
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
    <link href="${ctx}/static/assets/layouts/layout2/css/layout.min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/static/assets/layouts/layout2/css/themes/blue.min.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="${ctx}/static/assets/layouts/layout2/css/custom.min.css" rel="stylesheet" type="text/css" />
    <!-- END THEME LAYOUT STYLES -->
    <link rel="shortcut icon" href="${ctx}/static/metronic/favicon.ico" /> </head>
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/fontawesome/4.2.0/css/font-awesome.min.css">

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
            <h1 class="page-title">人员管理</h1>
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="#">学员管理</a>
                        <i class="fa fa-angle-right"></i>
                    </li>


                </ul>
                <div class="page-toolbar">
                    <div class="btn-group pull-right" style="margin-top:2px;">
                        <%--<button type="button" class="btn btn-fit-height grey-salt dropdown-toggle"> Actions--%>
                            <%--<i class="fa fa-angle-down"></i>--%>
                        <%--</button>--%>
                            <button class="btn green-meadow " style="border-radius: 5px !important;margin-right:15px"><i class="fa fa-level-down" style="font-size: 15px"></i>&nbsp;&nbsp;导入</button>&nbsp;&nbsp;

                            <button class="btn green-meadow" style="border-radius: 5px !important;"><i class="fa fa-level-up" style="font-size: 15px"></i>&nbsp;导出</button>

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
                                <i class="fa fa-globe"></i>学员列表 </div>
                            <div class="tools"> </div>
                        </div>
                        <div class="portlet-body">
                            <table class="table table-striped table-bordered table-hover" id="table">
                                <thead>
                                <tr>
                                    <th> 学员编号 </th>
                                    <th> 姓名 </th>
                                    <th> 性别 </th>
                                    <th> 联系方式</th>
                                    <th> 状态 </th>
                                    <th> 操作 </th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="stu" items="${stuList}">
                                    <tr>
                                        <td> ${stu.id} </td>
                                        <td> ${stu.name} </td>
                                        <td> ${stu.sex} </td>
                                        <td> ${stu.phonenumber} </td>
                                        <td><c:if test="${stu.status==1}">正常</c:if>
                                            <c:if test="${stu.status==2}">作废</c:if>
                                        </td>
                                        <td>

                  <a class="btn bg-yellow-crusta" href="${ctx}/student/update?id=${stu.id}" style="border-radius: 5px !important;margin-right:15px;color: white;" ><i class="fa fa-edit"></i>修改</a>
                   <%--<button style="border-radius: 5px !important;margin-right:15px" class="btn yellow-crusta"--%>
                           <%--onclick="javascript:window.href='${ctx}/student/update?id=${stu.id}' "><i class="fa fa-edit"></i>修改</button>--%>

                                    <%--<a href="javascript: elStu(${stu.id },${stu.status})" onmouseover="this.style.color='red';" onmouseout="this.style.color='#0a6aa1';">冻结</a>--%>
                                    <button style="border-radius: 5px !important;margin-right:15px" class="btn red-sunglo" onclick="delStu(${stu.id },${stu.status})">冻结</button>

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
<!--分页-->
<script type="text/css" src="${ctx}/static/script/jquery-1.8.0.min.js"></script>
<link rel="stylesheet" href="${ctx}/static/css/page/bootstrap-table.css">
<script src="${ctx}/static/script/page/bootstrap-table.js"></script>
<script src="${ctx}/static/script/page/bootstrap-table-zh-CN.js"></script>

<script src="${ctx}/static/assets/global/scripts/datatable.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/pages/scripts/table-datatables-responsive.min.js" type="text/javascript"></script>

<script>
    $('#table').bootstrapTable({
        pagination: true,
        pageSize: 5,
        search:true,
        searchOnEnterKey:true,
        pageList:[2, 5, 7]

    });
//    $('#table').DataTable( {
//        responsive: true
//    } );
</script>
</body>
<!-- END BODY -->