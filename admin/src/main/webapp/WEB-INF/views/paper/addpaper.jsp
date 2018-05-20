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
                        <a href="index.html">人员管理</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">创建试卷</a>
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
                        <form role="form" id="paperForm" action="" method="post">
                            <div class="form-body">
                                <div class="form-group">
                                    <label >名称</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control input-circle-left" required placeholder="请输入试卷名称" name="paperName" maxlength="11">
                                        <span class="input-group-addon input-circle-right"> <i class="fa fa-user"></i></span>
                                    </div>
                                </div>
                                <div class="form-group"><hr></div>
                                <div class="form-group"><label>选择题题库范围</label>
                                    <select class="form-control input-circle" name="singleChoiceLibraryType">
                                        <option VALUE="">－请选择题库范围－</option>
                                        <c:if test="${!empty areaType}">
                                            <c:forEach var="type" items="${areaType}">
                                                <option value="${type.typeSubCd}">${type.typeSubName}</option>
                                            </c:forEach>
                                        </c:if>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>选择题总分数</label>
                                    <input class="form-control spinner input-circle" required type="text"  placeholder="请输入选择题总分数" name="singleChoiceScore" id="singleScore" maxlength="2"/>
                                </div>
                                <div class="form-group">
                                    <label>选择题数量</label>
                                    <input class="form-control spinner input-circle" required type="text" placeholder="请输入选择题数量" name="singleChoiceCount" id="singleCount" maxlength="2"/>
                                </div>
                                <div class="form-group"><hr></div>
                                <div class="form-group"><label>简答题题库范围</label>
                                    <select class="form-control input-circle" name="shortQuestionLibraryType">
                                        <option VALUE="">－请选择题库范围－</option>
                                        <c:if test="${!empty areaType}">
                                            <c:forEach var="type" items="${areaType}">
                                                <option value="${type.typeSubCd}">${type.typeSubName}</option>
                                            </c:forEach>
                                        </c:if>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>简答题总分数</label>
                                    <input class="form-control spinner input-circle" required type="text" placeholder="请输入简答题总分数" name="shortQuestionScore" id="jdScore" maxlength="2"/>
                                </div>
                                <div class="form-group">
                                    <label>简答题数量</label>
                                    <input class="form-control spinner input-circle" required type="text" placeholder="请输入简答题数量" name="shortQuestionCount" id="jdCount" maxlength="2"/>
                                </div>
                                <div class="form-group"><hr></div>
                                <div class="form-group">
                                    <label>您新建的试卷总分数为：</label>
                                    <div class="input-icon right">
                                        <input type="text" class="form-control input-circle" placeholder="总分数" readonly="readonly" name="totalScore" id="totalScore" maxlength="3   ">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>试卷说明：</label>
                                    <div class="input-icon right">
                                        <input type="text" class="form-control input-circle" required placeholder="试卷说明" name="title" maxlength="50">
                                    </div>
                                </div>

                                <div class="form-actions">
                                <input type="button" class="btn blue-steel" id="subbutton" value="提交并预览试卷"/>
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
<!--预览试卷模态框-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">试卷预览</h4>
            </div>
            <div class="modal-body" id="body">
            </div>
            <div class="modal-footer">
                <button type="button" id="closeModal" class="btn btn-default" data-dismiss="modal" onclick="goPaperList()">关闭</button>
                <button type="button" class="btn btn-primary" onclick="goPaperList()">确定</button>
            </div>
        </div>
    </div>
</div>

<script>
    $("#subbutton").click(function () {
        var data = $("#paperForm").serialize();
        $.post(
            "${ctx}/paperQuestion/generateAndReview",
            data,
            function (data, status) {
                var number = 0;
                var html = "<h3>试卷名称"+data.paperName+"</h3>";
                if(data.singleChoiceCount>0){
                    for(var i = 0; i<data.singleChoiceList.length; i++){
                        number++;
                           html += "<p>"+number+"."+data.singleChoiceList[i].title+"</p>";
                        html +="<p>A."+data.singleChoiceList[i].answerA+"&nbsp;&nbsp; B."+data.singleChoiceList[i].answerB+" <br> C."+data.singleChoiceList[i].answerC+" &nbsp;&nbsp;D."+data.singleChoiceList[i].answerD+"</p>"
                    }
                }
                if(data.shortQuestionCount>0){
                    for(var i = 0; i<data.shortQuestionList.length; i++){
                        number++;
                        html += "<p>"+number+"."+data.shortQuestionList[i].title+"</p>";
                    }
                }
                var b = $("#body");
                b.append(html);
                $('#myModal').modal();

            },
            "json"
        );
    });
</script>
<script>
    $("#jdCount").blur(function(){
        var  singleCount = $("#singleCount").val();
        var singleScore = $("#singleScore").val();
        var  jdCount = $("#jdCount").val();
        var jdScore = $("#jdScore").val();
        var total = parseInt(singleScore) + parseInt(jdScore);
        document.getElementById("totalScore").value=total;
    });

    function goPaperList (){
        window.location.href = ctx+"/paper/list";
    }
</script>
</body>
<!-- END BODY -->