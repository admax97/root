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
        <h4 class=" page-title">题库管理</h4>
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="#">创建试题</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <%--<li>
                        <a href="#">创建管理员</a>
                        <i class="fa fa-angle-right"></i>
                    </li>--%>
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
                        <form role="form" action="${ctx}/admin/update" method="post">
                            <div class="form-body">
                                <div class="form-group">
                                    <label >请选择试题类型</label>
                                    <select name="选择" class="form-control input-circle">
                                        <option>java</option>
                                        <option>c语言</option>
                                        <option>html</option>
                                        <option>数据库</option>
                                    </select>
                                </div>
                                <div>


                                </div>



                                <div class="form-group">
                                    <label >名称</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control input-circle-left" placeholder="请输入管理员名称" name="name" maxlength="11">
                                        <span class="input-group-addon input-circle-right"> <i class="fa fa-user"></i></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>手机号</label>
                                    <input class="form-control spinner input-circle" type="text" placeholder="请输入管理员手机号" name="phonenumber" maxlength="11"/>
                                </div>
                                <div class="form-group">
                                    <label>密码</label>
                                    <div class="input-icon right">
                                        <i class="fa fa-microphone"></i>
                                        <input type="text" class="form-control input-circle" placeholder="请输入管理员密码" name="password" maxlength="50">
                                    </div>
                                </div>
                            <div class="form-actions">
                                <input type="submit" class="btn blue-steel"/>
                                <button type="button" class="btn default" >返回</button>
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
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
</div>
</body>
<!-- END BODY -->