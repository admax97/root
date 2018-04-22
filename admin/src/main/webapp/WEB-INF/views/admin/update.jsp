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
        <h4 class=" page-title">创建管理员</h4>
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="index.html">人员管理</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">修改管理员信息</a>
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
                            <span class="caption-subject bold uppercase">输入管理员信息</span>
                        </div>
                    </div>
                    <div class="portlet-body form">
                        <form role="form" action="${ctx}/admin/update" method="post">
                            <div class="form-body">
                                <div class="form-group">
                                    <label >名称</label>
                                    <div class="input-group">
                                        <input type="hidden" value="${admin.id}" name="id">
                                        <input type="text" class="form-control input-circle-left"  name="name" value="${admin.name}" maxlength="11">
                                        <span class="input-group-addon input-circle-right"> <i class="fa fa-user"></i></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>手机号</label>
                                    <input class="form-control spinner input-circle" type="text"  name="phonenumber" value="${admin.phonenumber}"maxlength="11"/>
                                </div>
                                <div class="form-group">
                                    <label>密码</label>
                                    <div class="input-icon right">
                                        <i class="fa fa-microphone"></i>
                                        <input type="password" readonly  class="form-control input-circle"  name="password" value="${admin.password}" maxlength="50">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>用户状态</label>
                                    <c:if test="${admin.status==1}" >
                                        <input  name="status"  type="radio" value="1" checked="checked" />正常
                                        <input  name="status"  type="radio" value="2"/>冻结
                                    </c:if>
                                    <c:if test="${admin.status==2}" >
                                        <input  name="status"  type="radio" value="1"  />正常
                                        <input  name="status"  type="radio" value="2" checked="checked" />冻结
                                    </c:if>
<%--
--%>
                                </div>
                            <div class="form-actions">
                                <input type="submit" class="  btn btn-circle green "  onclick="return confirm('确定修改管理员信息吗？')" />
                                <button type="button" class="btn default" onclick="window.close()">取消</button>
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
<script>
    /*修改管理员信息*/
    function updateAdmin(id){
        var op = confirm("确定要修改管理员吗？");
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
                    alert("冻结失败");
                }
            });
        }
    }

</script>

</body>
<!-- END BODY -->