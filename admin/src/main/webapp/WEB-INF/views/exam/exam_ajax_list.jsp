<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script type="text/javascript">
    jQuery(document).ready(function () {
        $('.btn.btn-xs').tooltip();
    });
</script>
<div class="col-md-12">
    <table class="table table-hover table-bordered table-striped">
        <thead>
        <tr>
            <th>考试名称</th>
            <th>考试编号></th>
            <th>关联试卷</th>
            <th>考试类型</th>
            <th>考试状态</th>
            <th>创建人</th>
        </tr>
        </thead>
        <tbody>
        <c:choose>
            <c:when test="${!empty examList}">

                <c:forEach items="${examList}" var="customExam">
                    <tr>
                        <td>
                            <div  title="${customExam.id}">
                                    ${customExam.id}
                            </div>
                        </td>
                        <td>${customExam.name}</td>
                        <td>${customExam.phonenumber}</td>
                        <td>${customExam.role}</td>
                        <td>${customExam.password}</td>
                        <td width="150px">
                            <div class="btn-group ma-t">
                                <button type="button" class="btn btn-xs btn-primary dropdown-toggle" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">
                                    <span class="caret"></span>
                                    <span class="sr-only">Toggle Dropdown</span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a href="javascript:editExamInfo('${customExam.id}');">查看考试</li>
                                    <li><a href="javascript:paperReview('${customExam.id}');">预览试卷</a></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="9" class="text-center">
                        没有数据
                    </td>
                </tr>
            </c:otherwise>
        </c:choose>
        </tbody>
    </table>
</div>
<c:if test="${totalCnt >0}">
    <jsp:include page="/WEB-INF/views/include/admPaging.jsp" flush="true">
        <jsp:param name="pageNo" value="${pageNo}"/>
        <jsp:param name="pageSize" value="${pageSize}"/>
        <jsp:param name="totalCnt" value="${totalCnt}"/>
    </jsp:include>
</c:if>
