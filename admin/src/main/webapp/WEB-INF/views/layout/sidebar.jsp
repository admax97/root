<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper">
    <!-- END SIDEBAR -->
    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
    <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
    <div class="page-sidebar navbar-collapse collapse">
        <!-- BEGIN SIDEBAR MENU -->
        <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
        <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
        <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
        <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
        <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
        <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
        <ul class="page-sidebar-menu  page-header-fixed page-sidebar-menu-hover-submenu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
            <li class="nav-item start active open">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-home"></i>
                    <span class="title">人员管理</span>
                    <span class="selected"></span>
                    <span class="arrow open"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item start active open">
                        <a href="${ctx}/student/list" class="nav-link ">
                            <i class="icon-bar-chart"></i>
                            <span class="title">学员列表</span>
                            <span class="selected"></span>
                        </a>
                    </li>
                    <li class="nav-item start ">
                        <a href="${ctx}/admin/list" class="nav-link ">
                            <i class="icon-bulb"></i>
                            <span class="title">管理员列表</span>
                            <span class="badge badge-success">1</span>
                        </a>
                    </li>
                    <li class="nav-item start ">
                        <a href="${ctx}/admin/add" class="nav-link ">
                            <i class="icon-graph"></i>
                            <span class="title">创建管理员</span>
                            <span class="badge badge-danger">5</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="${ctx}/library/list" class="nav-link nav-toggle">
                    <i class="icon-diamond"></i>
                    <span class="title">题库管理</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="${ctx}/library/add" class="nav-link ">
                            <span class="title">创建题库</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="${ctx}/library/list" class="nav-link ">
                            <span class="title">题库列表</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-puzzle"></i>
                    <span class="title">试卷管理</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="components_date_time_pickers.html" class="nav-link ">
                            <span class="title">创建试卷</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_date_time_pickers.html" class="nav-link ">
                            <span class="title">试卷列表</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="${ctx}/exam/list" class="nav-link nav-toggle">
                    <i class="icon-diamond"></i>
                    <span class="title">考试管理</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="${ctx}/exam/add" class="nav-link ">
                    <span class="title">创建考试</span>
                    </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="${ctx}/exam/list" class="nav-link ">
                            <span class="title">考试列表</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="/WEB-INF/metronic/table_datatables_editable.jsp" class="nav-link nav-toggle">
                    <i class="icon-diamond"></i>
                    <span class="title">成绩统计</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="${ctx}/static/metronic/table_datatables_editable.html" class="nav-link ">
                            <span class="title">查看成绩</span>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- END SIDEBAR MENU -->
    </div>
    <!-- END SIDEBAR -->
</div>
<!-- END SIDEBAR -->
<script>
    var ctx ='${ctx}';
    var url = window.location.href.replace("http://","");
	var selected = "main_index";
    if(url.indexOf("main/index") > 0){
        selected = "main_index";
    }else if(url.indexOf("user/list") > 0){
        selected = "user_list";
    }else if(url.indexOf("order/list") > 0){
        selected = "order_list";
    }else if(url.indexOf("mafuro/list") > 0){
        selected = "mafuro_list";
    }else if(url.indexOf("info/list") > 0){
        selected = "info_list";
    }else if(url.indexOf("feedback/list") > 0){
        selected = "feedback_list";
    }
    if(selected.length > 0){
        //$("#"+selected).attr("class","selected");
        $("#"+selected).attr("class","start active open");
    }
</script>