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
        <h4 class=" page-title">创建考试</h4>
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="index.html">考试管理</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">创建考试</a>
                        <i class="fa fa-angle-right"></i>
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
        <div class="row">
            <div class="col-md-offset-1 col-md-10 ">
                <div class="portlet box green">
                    <div class="portlet-title">
                        <div class="caption ">
                            <i class="icon-settings"></i>
                            <span class="caption-subject bold uppercase">输入考试信息</span>
                        </div>
                    </div>
                    <div class="portlet-body form">
                        <form role="form" action="" method="post" id="examForm">
                            <div class="form-body">
                                <div class="form-group">
                                    <label >名称</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control input-circle-left" placeholder="请输入考试名称" name="examName" maxlength="11">
                                        <span class="input-group-addon input-circle-right"> <i class="fa fa-user"></i></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>考试类型</label>
                                    <input class="form-control spinner input-circle" type="text" placeholder="请输入考试类型" name="examType" maxlength="11"/>
                                </div>
                                <div class="form-group">
                                    <label>关联试卷</label>
                                    <select class="form-control input-circle" name="examTime">
                                        <option VALUE="">－请选择要关联的试卷－</option>
                                        <c:forEach var="paper" items="${paperList}">
                                            <option VALUE="${paper.id}">－${paper.paperName}－</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>考试时长</label>
                                    <select class="form-control input-circle" name="examTime">
                                        <option VALUE="">－请选择考试时长－</option>
                                        <option value="30m" >30分钟</option>
                                        <option value="60m" >1小时</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>创建人</label>
                                    <c:if test="${!empty sessionScope.admin}">
                                        <input class="form-control spinner input-circle" readonly type="text" value="${sessionScope.admin.name}" name="creater" maxlength="11"/>
                                    </c:if>
                                </div>
                                <div class="form-group">
                                    <label>注意事项</label>
                                    <input class="form-control spinner input-circle" type="text" placeholder="请输入考试注意事项" name="examMark" maxlength="11"/>
                                </div>

                            <div class="form-actions">
                                <button type="button" class="btn blue-steel" onclick="addExam()">提交</button>
                                <button type="button" class="btn default"  onclick="goExamList()">返回</button>
                            </div>
                            </div>
                        </form>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- END CONTENT -->
</div>
<script src="${ctx}/static/script/library/addLibrary.js" type="text/javascript"></script>

<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
</div>
</body>
<!-- END BODY -->