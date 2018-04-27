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
        <h4 class=" page-title">创建题库</h4>
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="index.html">题库管理</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">创建题库</a>
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
        <div class="row">
            <div class="col-md-offset-1 col-md-10 ">
                <div class="portlet box green">
                    <div class="portlet-title">
                        <div class="caption ">
                            <i class="icon-settings"></i>
                            <span class="caption-subject bold uppercase">输入题库信息</span>
                        </div>
                    </div>
                    <div class="portlet-body form">
                        <form role="form"  method="post" id="libraryForm">
                            <div class="form-body">
                                <div class="form-group">
                                    <label >题库名称</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control input-circle-left" placeholder="请输入题库名称" name="title" maxlength="11">
                                        <span class="input-group-addon input-circle-right"> <i class="fa fa-user"></i></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>题库题型</label>
                                    <select class="form-control input-circle" name="quesType">
                                        <option VALUE="">－请选择试题类型－</option>
                                        <c:if test="${!empty quesType}">
                                            <c:forEach var="type" items="${quesType}">
                                                <option value="${type.typeSubCd}">${type.typeSubName}</option>
                                            </c:forEach>
                                        </c:if>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>题库试题范围</label>
                                    <select class="form-control input-circle" name="libraryType">
                                        <option VALUE="">－请选择试题范围－</option>
                                        <c:if test="${!empty areaType}">
                                            <c:forEach var="type" items="${areaType}">
                                                <option value="${type.typeSubCd}">${type.typeSubName}</option>
                                            </c:forEach>
                                        </c:if>
                                    </select>
                                </div>
                            <div class="form-actions">
                                <button type="button" class="btn blue-steel" onclick="addLibrary()">提交</button>
                                <button type="button" class="btn default"  onclick="goLibList()">返回</button>
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