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
    <link href="${ctx}/static/assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/static/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link href="${ctx}/static/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="${ctx}/static/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN THEME LAYOUT STYLES -->
    <link href="${ctx}/static/assets/layouts/layout2/css/layout.min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/static/assets/layouts/layout2/css/themes/blue.min.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="${ctx}/static/assets/layouts/layout2/css/custom.min.css" rel="stylesheet" type="text/css" />
    <!-- END THEME LAYOUT STYLES -->
    <link rel="shortcut icon" href="${ctx}/static/metronic/favicon.ico" />
</head>
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
            <h1 class="page-title">管理员列表</h1>
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="#">人员管理</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">管理员列表</a>
                        <%--<i class="fa fa-angle-right"></i>--%>
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
                                <i class="fa fa-globe"></i>管理员列表 </div>
                            <div class="tools"> </div>
                        </div>
                        <div class="portlet-body" >

                            <table  data-toggle="table" id="table" class="table table-striped table-hover table-bordered">
                             <%--<table class="table table-striped table-hover table-bordered" id="sample_editable_1">--%>
                                <thead>
                                <tr>
                                    <th> 序号 </th>
                                    <th> 姓名 </th>
                                    <th> 电话 </th>
                                    <th> 状态 </th>
                                    <th> 操作 </th>
                                </tr>
                                </thead>
                                <tbody data-auto-height="">
                                <c:forEach var="admin" items="${adminList}">
                                <tr>
                                    <td>${admin.id}</td>
                                    <td>${admin.name} </td>
                                    <td>${admin.phonenumber}</td>
                                    <td><c:if test="${admin.status==1}">正常</c:if> <c:if test="${admin.status==2}">作废</c:if> </td>
                                    <td>
                                            <a class="btn bg-yellow-crusta" href="${ctx}/admin/update?id=${admin.id}" style="border-radius: 5px !important;margin-right:15px;color: white;" ><i class="fa fa-edit"></i>修改</a>

                                            <button style="border-radius: 5px !important;margin-right:15px" class="btn red-sunglo" onclick="delAdmin(${admin.id },${admin.status})"><i class="fa fa-times"></i>冻结</button>
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
                <div class="clearfix"></div>
            </div>

        </div>

        <!-- END CONTENT -->

    </div>
    <!-- END CONTAINER -->


    <!-- BEGIN FOOTER -->
    <jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
</div>
<script>
    /* 删除管理员 */
    function delAdmin(id,status){
        if(status == 2){
           // var op = confirm("该管理员已经被冻结！");
            bootbox.confirm({
                message: "您确定删除所选中代理商户吗？",
                buttons: {
                    confirm: {
                        label: '确定',
                        className: 'btn-success'
                    },
                    cancel: {
                        label: '取消',
                        className: 'btn-danger'
                    }
                },
                callback: function (result) {

                }
            });
           // op == false;
        }
       if(status == 1){
           var op = confirm("确定要冻结该管理员吗？");
           if(op == true){
               $.ajax({
                   type : "post",
                   url : "${ctx}/admin/del",
                   data : "id=" + id,
                   datetype : "text",
                   //请求成功后调用
                   success : function() {
                       alert("修改成功");
                       window.location.reload();
                   },
                   //请求失败后调用
                   error : function() {
                       alert("修改失败");
                   }
               });
           }
       }
    }

</script>
<script>
    bootbox.confirm({
        message: "您确定删除所选中代理商户吗？",
        buttons: {
            confirm: {
                label: '确定',
                className: 'btn-success'
            },
            cancel: {
                label: '取消',
                className: 'btn-danger'
            }
        },
        callback: function (result) {

        }
    });

</script>
<!--分页-->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<%--<script src="${ctx}/static/assets/global/scripts/datatable.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/global/scripts/app.min.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/pages/scripts/table-datatables-editable.min.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/layouts/layout2/scripts/layout.min.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/layouts/layout2/scripts/demo.min.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="${ctx}/static/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>--%>
<script type="text/css" src="${ctx}/static/script/jquery-1.8.0.min.js"></script>
<link rel="stylesheet" href="${ctx}/static/css/page/bootstrap-table.css">
<script src="${ctx}/static/script/page/bootstrap-table.js"></script>
<script src="${ctx}/static/script/page/bootstrap-table-zh-CN.js"></script>
<!--弹出框样式-->
<script src="${ctx}/static/assets/global/plugins/bootbox/bootbox.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->

<script>
//前端分页
    $('#table').bootstrapTable({
        pagination: true,
        pageSize: 5,
        search:true,
        searchOnEnterKey:true,
        pageList:[2, 5, 7],
        striped:true
    });


</script>
</body>
<!-- END BODY -->