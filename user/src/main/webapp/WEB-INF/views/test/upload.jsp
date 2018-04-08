<%--
  Created by IntelliJ IDEA.
  User: P0068233
  Date: 2016/3/31
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>上传文件</title>
</head>
<body>
<form name="uploadForm" method="post" id="uploadForm" action="${ctx}/test/uploadProc" enctype="multipart/form-data">
 <input type="file" name="file">
 <button type="submit" >上传文件</button>
</form>
</body>
</html>
