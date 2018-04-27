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
        <h4 class=" page-title">创建试题</h4>
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="#">题库管理</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <%--<i class="icon-home"></i>--%>
                        <a href="#">创建试题</a>
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
                            <span class="caption-subject bold uppercase">输入试题信息</span>
                        </div>
                    </div>
                    <div class="portlet-body form">
                        <form role="form"  method="post" id="questionForm">
                            <input type="hidden" value="${libraryid}" name="libraryId" id="libraryId">
                            <input type="hidden" value="${library.quesType}" name="questionType">
                            <input type="hidden" value="${library.libraryType}" name="libraryType">
                            <div class="form-body">
                                <div class="form-group">
                                    <label>题库题型</label>
                                    <select class="form-control input-circle" name="questionType" disabled>
                                        <option VALUE="">－请选择试题类型－</option>
                                        <c:if test="${!empty quesType}">
                                            <c:forEach var="type" items="${quesType}">
                                                <option value="${type.typeSubCd}" <c:if test="${type.typeSubCd eq library.quesType }"> selected="true" </c:if>>${type.typeSubName}</option>
                                            </c:forEach>
                                        </c:if>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>题库试题范围</label>
                                    <select class="form-control input-circle" name="libraryType" disabled>
                                        <option VALUE="">－请选择试题范围－</option>
                                        <c:if test="${!empty areaType}">
                                            <c:forEach var="type" items="${areaType}">
                                                <option value="${type.typeSubCd}"  <c:if test="${type.typeSubCd eq library.libraryType }"> selected="true" </c:if>>${type.typeSubName}</option>
                                            </c:forEach>
                                        </c:if>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>题目</label>
                                    <textarea class="form-control" rows="3" name="title"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>分数</label>
                                    <div class="input-icon right">
                                        <i class="fa fa-microphone"></i>
                                        <input type="text" class="form-control input-circle" placeholder="请输入分数" name="score" maxlength="2">
                                    </div>
                                </div>
                                <c:if test="${!empty library.quesType && library.quesType eq 'AA01' }">
                                <div class="form-group">
                                    <label>选项A</label>
                                    <div class="input-icon right">
                                        <i class="fa fa-microphone"></i>
                                        <input type="text" class="form-control input-circle" placeholder="请输入选项A" name="answerA" maxlength="200">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>选项B</label>
                                    <div class="input-icon right">
                                        <i class="fa fa-microphone"></i>
                                        <input type="text" class="form-control input-circle" placeholder="请输入选项B" name="answerB" maxlength="200">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>选项C</label>
                                    <div class="input-icon right">
                                        <i class="fa fa-microphone"></i>
                                        <input type="text" class="form-control input-circle" placeholder="请输入选项C" name="answerC" maxlength="200">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>选项D</label>
                                    <div class="input-icon right">
                                        <i class="fa fa-microphone"></i>
                                        <input type="text" class="form-control input-circle" placeholder="请输入选项D" name="answerD" maxlength="200">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>答案项</label>
                                    <select class="form-control input-circle" name="rightAnswer">
                                        <option VALUE="">－请选择答案－</option>
                                        <option VALUE="A">选项A</option>
                                        <option VALUE="B">选项B</option>
                                        <option VALUE="C">选项C</option>
                                        <option VALUE="D">选项D</option>
                                    </select>
                                </div>
                                 </c:if>
                                <c:if test="${!empty library.quesType && library.quesType eq 'AA02' }">
                                    <div class="form-group">
                                        <label>答案内容</label>
                                        <textarea class="form-control" rows="3" name="rightAnswer"></textarea>
                                    </div>
                                </c:if>
                              <div class="form-actions">
                                  <button type="button" class="btn blue-steel" onclick="addQuestion()"  >提交</button>
                                  <button type="button" class="btn default"  onclick="goBackList('${library.id}')" >返回</button>
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
<script src="${ctx}/static/script/question/addQuestion.js" type="text/javascript"></script>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
</div>
</body>
<!-- END BODY -->