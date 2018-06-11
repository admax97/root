<%--
  Created by IntelliJ IDEA.
  User: lijingxing
  Date: 2018/6/10
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${ctx}/static/assets/radioStyle/css/htmleaf-demo.css">
<link rel="stylesheet" type="text/css" href="${ctx}/static/assets/radioStyle/css/build.css">
<script>
    var ctx = '${ctx}';
</script>
<html>
<head>
    <title>考试中</title>
</head>
<body style="margin: 0px;color: #494A5F!important;">
<div style="background-image:url('${ctx}/static/assets/pages/img/exambg.jpg'); width: 100%; height:auto;
        background-repeat: repeat;border: 0px;">
    <div style="z-index: 99; position: fixed; top: 30px; left: 20px; background-color: snow;
        border-radius:5px; ">
        &nbsp;&nbsp;
        <img src="${ctx}/static/assets/pages/img/timg.jpg" style="width: 30px; height:30px;padding-top: 5px;">
        &nbsp;&nbsp;
        <span style="font-size: 30px;font-weight: bold;margin-top:-20px; color: #cccccc" id="time">20:20</span>
        &nbsp;&nbsp;
    </div>
    <!--预览试卷模态框-->
    <%--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">--%>
        <%--<div class="modal-dialog" role="document">--%>
            <%--<div class="modal-content">--%>
                <div id="body" style="text-align: left; width: 70%; margin: auto auto;">

                    <h2 style="text-align: center; padding-top: 20px;">试卷名称：${paper.paperName}</h2>
                    <br>
                    <h4>一、选择题</h4>
                    <form method="post" action="">
                        <c:forEach items="${paper.singleChoiceList}" var="singleChoice"  varStatus="status">
                            <p> ${status.index+1}.${singleChoice.title}</p>
                            <p>
                                <div class="checkbox checkbox-info checkbox-circle">
                                    <input id="${status.index}A" class="styled" type="checkbox" >
                                    <label for="${status.index}A">
                                        &nbsp;A. ${singleChoice.answerA}
                                    </label>
                                </div>
                            </p>
                            <p>
                            <div class="checkbox checkbox-info checkbox-circle">
                                <input id="${status.index}B" class="styled" type="checkbox" >
                                <label for="${status.index}B">
                                    &nbsp;B. ${singleChoice.answerB}
                                </label>
                            </div>
                            </p>
                            <p>
                            <div class="checkbox checkbox-info checkbox-circle">
                                <input id="${status.index}C" class="styled" type="checkbox" >
                                <label for="${status.index}C">
                                    &nbsp;C. ${singleChoice.answerC}
                                </label>
                            </div>
                            </p>
                            <p>
                            <div class="checkbox checkbox-info checkbox-circle">
                                <input id="${status.index}D" class="styled" type="checkbox" >
                                <label for="${status.index}D">
                                    &nbsp;D. ${singleChoice.answerD}
                                </label>
                            </div>
                            </p>

                        </c:forEach>
                        <h4>二、简答题</h4>
                        <c:forEach items="${paper.shortQuestionList}" var="shortQuestion"  varStatus="status">
                            <p> ${status.index+1}.${shortQuestion.title}</p>
                            <textarea style="background-color: #D5D5D5" rows="12" cols="80">

                            </textarea>
                        </c:forEach>
                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" id="closeModal" class="btn btn-default" data-dismiss="modal" onclick="goPaperList()">关闭</button>
                    <button type="button" class="btn btn-primary" onclick="goPaperList()">确定</button>
                </div>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

</div>
<script type="text/javascript" src="${ctx}\static\assets\global\plugins\jquery.min.js"></script>
<script>
    var timer;
    $(function () {
        timer = setInterval("show()",1000);
    });
    function show() {
        var timestamp = Date.parse(new Date());
        var time =  ${examTime} - timestamp;
        if (time < 0) {
            alert("自动交卷");
            // 停止定时器
            clearInterval(timer);
            //作自动交卷处理
        }else {
            var min = parseInt(time/1000/60);
            var se = parseInt((time/1000)%60);
            var seV = "00";
            var minV = "00";
            if (se < 10) {
                seV = "0" + se
            }else {
                seV = "" + se
            }

            if (min < 10) {
                minV = "0" + min
            }else {
                minV = "" + min
            }
            $("#time").text(minV + ":" + seV)
        }
    }
</script>
</body>
</html>
