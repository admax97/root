<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
            <div class="table-scrollable">
            <table class="table table-hover table-bordered table-striped">
            <thead>
            <tr>
            <th>用户账号</th>
            <th>姓名</th>
            <th>手机号码</th>
            <th>邮箱地址</th>
            <th>注册日期</th>
            <th>推荐人姓名</th>
            <th>推荐人账号</th>
            <th>账号状态</th>
            <th>操作</th>
            </tr>
            </thead>
            <c:forEach items="${userList}" var="userList">
                <tr>
                    <td>${userList.loginAccount}</td>
                    <td>${userList.userName}</td>
                <td>${userList.mobileNo}</td>
                <td>${userList.email}</td>
                <td><fmt:formatDate value="${userList.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${userList.leaderName}</td>
                <td>${userList.leaderAccount}</td>
                <td>
                 <c:if test="${userList.status == 0 }">正常</c:if>
                 <c:if test="${userList.status == 1 }">被冻结</c:if>
                </td>
                <td><a type="button" class="btn btn-default btn-sm" onclick="userSet('${userList.userId}');" data-toggle="modal" data-target="#responsive">用户设置</a></td>
            </tr>
        </c:forEach>
    </table>
    <!--table table-bordered end-->
</div>
<c:if test="${totalCnt >0}">
    <jsp:include page="/WEB-INF/views/include/admPaging.jsp" flush="true">
        <jsp:param name="pageNo" value="${pageNo}"/>
        <jsp:param name="pageSize" value="${pageSize}"/>
        <jsp:param name="totalCnt" value="${totalCnt}"/>
    </jsp:include>
</c:if>