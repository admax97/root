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
    <link rel="shortcut icon" href="${ctx}/static/metronic/favicon.ico" /> </head>
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
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="#">题库管理</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">试题列表</a>
                        <i class="fa fa-angle-right"></i>
                    </li>

                </ul>
                <%--<div class="page-toolbar">
                    <div class="btn-group pull-right">
                        <button type="button" class="btn btn-fit-height grey-salt dropdown-toggle"> Actions
                            <i class="fa fa-angle-down"></i>
                        </button>
                    </div>
                </div>--%>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE HEADER-->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box green">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-globe"></i>
                                <c:if test="${title eq 'AA01'}">
                                    选择题题库
                                </c:if>
                                <c:if test="${title eq 'AA02'}">
                                    简答题题库
                                </c:if>
                                 </div>
                            <div class="tools"> </div>
                        </div>
                        <div class="portlet-body">
                            <div class="row margin-bottom-10" style="text-align: center">
                                <div class="col-md-8">
                                    <table>
                                        <tr>
                                            <td>试题名称</td>
                                            <td>
                                                <%--<c:if test="${null !=libraryid && libraryid!=''}">--%>
                                                    <%--<input type="hidden" value="${libraryid}" name="libraryid">--%>

                                                <%--</c:if>--%>
                                                    <c:if test="${null !=libraryType && libraryType!=''}">
                                                        <input type="hidden" value="${libraryType}" name="libraryType">

                                                    </c:if>
                                                    <c:if test="${null !=questionType && questionType!=''}">
                                                        <input type="hidden" value="${questionType}" name="questionType">

                                                    </c:if>
                                                <div class="col-md-12">
                                                    <input type="text" placeholder="试题名称"  name="key1" class="form-control">
                                                </div>
                                            </td>
                                            <td>题库范围</td>
                                            <td>
                                                <div class="col-md-12">
                                                    <select class="form-control" name="key2">
                                                             <option VALUE="">－ALL－</option>
                                                        <c:forEach var="type" items="${typeDictionaryList}">
                                                             <option VALUE="${type.typeSubCd}">－${type.typeSubName}－</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </td>
                                            <td>
                                                <button class="btn blue" type="button" onclick="goPage('1',10);"><i class=" icon-magnifier"></i>&nbsp;查询</button>
                                            </td>
                                        </tr>
                                    </table>
                               </div>
                                <div class="modal fade" id="uploadDiv" role="dialog" aria-labelledby="myModalLabel" style=" width: 500px; height: 300px;background-color: white; margin: auto auto">
                                    <title>批量导入试题</title>
                                    <form action="addController/batchimport" method="post" enctype="multipart/form-data" id="excelForm">
                                        <div style="margin: 30px;"><input id="excel_file" type="file" name="filename" accept="xlsx" size="80"/>
                                            <input id="excel_button" type="button" value="导入Excel"/></div>
                                    </form>
                                </div>
                                <a class="btn btn-success" href="#" id="uploadButton"> <i class=" fa fa-upload"></i>&nbsp;导入试题</a>&nbsp;
                                <a class="btn btn-primary" href="javascript:editExamInfo('0');"> <i class=" icon-plus"></i>&nbsp;创建试题</a>
                            </div>
                            <div id="content" class="row">

                            </div>
                        </div>
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
    <script>
        var pageSize = 10;

        function goPage(pageNo, pageSize) {
            var questionType = $("input[name=questionType]").val();
            var key1 = $("input[name=key1]").val();

           /* var key2 = $("select[name=key2]").val();*/
            var libraryType = $("input[name=libraryType]").val();

            var parameterMap = {'title': key1,'libraryType':libraryType,'questionType':questionType};

            $.ajax({

                type: 'POST',
                url: ctx + "/question/ajax/ajaxList",
                data: {'parameterMap':parameterMap, 'pageNo': pageNo, 'pageSize': pageSize},
                dataType: "text",
                success: function (msg) {
                    $("#content").html(msg);
                },
                error: function (msg) {
                    console.error(msg)
                }
            });
        }
    </script>
<!--弹出框样式-->
<script src="${ctx}/static/assets/global/plugins/bootbox/bootbox.min.js"></script>
<script type="text/javascript" src="/static/script/jquery-form.js"></script>
<script>
    /*导入模态框*/
    $('#uploadButton').click(function(){
        $('#uploadDiv').modal();
    });

    $('#excel_button').click(function(){
        var form = $("#excelForm");
        var options = {
            url:'/question/batchImport', //上传文件的路径
            type:'post',
            success:function(data,status)
                {
                    if('success' == status){
                        bootbox.alert({
                            size: "small",
                            title: "提示",
                            message: "导入成功！",
                            callback: function(){
                                window.location.href = ctx+"/question/list";
                            }
                        });
                    } else {
                        bootbox.alert({
                            size: "small",
                            title: "提示",
                            message: "导入失败！",
                            callback: function(){
                                window.location.href = '/question/list';
                            }
                        });
                    }

                }
            };
        form.ajaxSubmit(options);
    });


</script>
    <script src="${ctx}/static/script/exam/exam.js" type="text/javascript"></script>
    <jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
</div>

</body>
<!-- END BODY -->