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
    <table class="table table-striped table-bordered table-hover" id="sample_2" style="text-align: center">
        <thead  style="text-align: center">
        <tr >
            <th> 试卷编号 </th>
            <th> 试卷名称 </th>
            <th> 试卷类型 </th>
            <th> 试卷分数 </th>
            <th> 发布状态 </th>
            <th> 阅卷人 </th>
            <th> 操作</th>
        </tr>
        </thead>
        <tbody>


        <c:forEach var="paper" items="${paperList}">
            <tr>
                <td>${paper.id}</td>
                <td>${paper.paperName}</td>
                <td>${paper.paperType} </td>
                <td>${paper.totalScore}</td>
                <td><c:if test="${paper.status==1}">正常</c:if> <c:if test="${paper.status==2}">作废</c:if> </td>
                <td> ${paper.examiner}</td>
                <td width="150px">
                    <div class="btn-group">
                        <button class="btn btn-sm blue dropdown-toggle" type="button" data-toggle="dropdown"> 操作
                            <i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="javascript:;"> 编辑试卷 </a>
                            </li>
                            <li>
                                <a href="javascript:viewPaper(${paper.id});"> 预览试卷 </a>
                            </li>
                        </ul>
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
                </td>
            </tr>
        </c:forEach>
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
<script type="text/javascript">
     function viewPaper(id){
         $.post(
             "${ctx}/paperQuestion/review",
             {paperId:id},
             function (data, status) {
                 var number = 0;
                 var html = "<h3>试卷名称："+data.paperName+"</h3>";
                 if(data.singleChoiceCount>0){
                     for(var i = 0; i<data.singleChoiceList.length; i++){
                         number++;
                         html += "<span style='text-align:left'><p>"+number+"."+data.singleChoiceList[i].title+"</p><span>";
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
     }
</script>