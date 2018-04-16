var lang  = '';
jQuery(document).ready(function() {
    goPage(1,pageSize);
    $('input[name=key1]').on('keypress', function(e) {
        if (e.keyCode == 13) {
            goPage(1,pageSize);
        }
    });
});

function setExamId(examId,manageId){
    goDelete(examId);
}

function setExamStatus(examStatus,examId,paperId,manageId){
    chgStatus(examStatus,examId,paperId);
}

/*** P0070572 add end***/
function chgStatus(examStatus,examId,paperId){

    $.ajax({

        type: 'POST',

        url: ctx+"/exam/ajax/examPublishCheck" ,

        dataType:"text",

        data:{'examId':examId,'examStatus':examStatus,'paperId':paperId},

        success: function(msg){
            msg = $.trim(msg);

            if(msg == 'ok'){

                bootbox.confirm(ExamMessage.publishOperation,function(result){

                    if(result){

                        goEdit(examId,examStatus);
                    }

                });
            }else if(msg =='noRoom'){

                bootbox.alert(ExamMessage.examRoomCheck);
                return false;

            }else if(msg =='noAppr'){

                bootbox.alert(ExamMessage.publishAppCheck);
                return false;
            }

        } ,
        error : function(msg) {

        }

    });
}
function goEdit(examId,examStatus){


    $.ajax({

        type: 'POST',

        url: ctx+"/exam/ajax/statusUpdate" ,

        dataType:"text",

        data:{'examId':examId,'examStatus':examStatus},

        success: function(msg){

            if($.trim(msg) == 'success'){

                goPage(1,pageSize);
            }

        } ,
        error : function(msg) {

        }

    });


}

//带答案预览
function paperReview(paperId){

    window.open(ctx+"/paper/ajax/review?paperId="+paperId, ExamMessage.paperReview);

}
function goDelete(examId){


    bootbox.confirm(ExamMessage.isDeleteExam,function(result){

        if(result){

            $.ajax({

                type: 'POST',

                url: ctx+"/exam/ajax/delete" ,

                dataType:"text",

                data:{'examId':examId},

                success: function(msg){

                    $('#myModalDel').modal('hide');
                    goPage(1,pageSize);

                }

            });

        }
    });


}

function editCourseExamInfo(courseId){

    $.ajax({

        type: 'POST',
        url: ctx+"/exam/ajax/editExamInfo" ,
        data: {'courseId':courseId} ,
        dataType:"text",
        success: function(msg){
            $("#editExamArea").html(msg);
            $('#examEditModel').modal('show');
            examEditValidate();
        } ,
        error : function(msg) {

        }

    });

}
function editExamInfo(examId,manageId,itemId){
    editExam(examId,itemId);
}

function editExam(examId,itemId){

    $.ajax({

        type: 'POST',
        url: ctx+"/exam/ajax/editExamInfo" ,
        data: {'examId':examId,'itemId':itemId} ,
        dataType:"text",
        success: function(msg){

            $("#editExamArea").html(msg);
            $('#examEditModel').modal('show');
            examEditValidate();
        }

    });
}

function  editExamInfoProc(flag){

    if($("input[name=examItem]:checked").val()=='NN01' && $("#setCourseId").val()==""){
        $('#setCourseId').rules('add',{ required: true,messages:{required:ExamMessage.courseChoose}})
    }else if($("input[name=examItem]:checked").val() =='NN02'){
        $('#setCourseId').rules('remove');
    }

    if($("#examInfoForm input[name=examItem]:checked").val() =='NN02'){
        $("#examInfoForm input[name=courseId]").val('');
    }

    var examId = $("#examInfoForm input[name=examId]").val();

    var form  = $("#examInfoForm");
    if(!form.valid()) return false;

    var enrollStartTime = $("#enrollStartTime").val();
    var enrollEndTime = $("#enrollEndTime").val();


    if( !compareTime(enrollStartTime,enrollEndTime)){

        bootbox.alert(ExamMessage.enrollTimeValidate);
        return false;
    }

    Metronic.blockUI({target: '#examEditModel',boxed: true});
    $.ajax({
        type: "post",
        url:  ctx+"/exam/ajax/editInfoProc",
        data: form.serialize(),
        success: function(data) {

            if($.trim(data) =='success'){
                Metronic.unblockUI('#examEditModel');
                if(flag == 'next'){

                    setExamApprove(examId);

                }else{

                    bootbox.alert(ExamMessage.examSaveSuccess,function(){
                        $('#examEditModel').modal('hide');
                    });

                }

            }
        },
        error: function(data) {

        }
    });

}

function examEditValidate(){

    var form = $('#examInfoForm');/*formID*/

    form.validate({
        errorElement: 'span',
        errorClass: 'help-block',
        focusInvalid: true,
        ignore: "",
        messages: {
            examName: {
                required: ExamMessage.examNameNotNull,
                maxlength:jQuery.validator.format(ExamMessage.examNameMessage1+"{0}"+ExamMessage.examNameMessage2)
            },
            courseId: {
                required: ExamMessage.courseChoose
            },
            paperId: {
                required: ExamMessage.paperChoose
            },
            passScore: {
                required: ExamMessage.passScoreNotNull,
                number:ExamMessage.inputNumber
            },
            timeLimit: {
                required: ExamMessage.timeLimitNotNull,
                number:ExamMessage.inputNumber
            },
            examMaxTimes: {
                required: ExamMessage.examMaxTimesNotNull,
                number:ExamMessage.inputNumber,
                min :  ExamMessage.examMaxTimesMin

            },
            goalPublicWay: {
                required: ExamMessage.goalPublicWayNotNull
            },
            examDesc:{
                maxlength: jQuery.validator.format(ExamMessage.examDescMessage1+"{0}"+ExamMessage.examDescMessage2)
            }
        },
        rules: {
            examName: {
                required: true,
                maxlength:60
            },
            courseId: {
                required: true
            },
            paperId: {
                required: true
            },
            passScore: {
                required: true,
                number:true,
                maxlength: 3
            },
            timeLimit: {
                required: true,
                number:true,
                maxlength: 3
            },
            examMaxTimes: {
                required: true,
                number:true,
                maxlength: 2,
                min:1
            },
            goalPublicWay: {
                required: true
            },
            examDesc:{
                maxlength:200
            }
        },
        highlight: function (element) {
            $(element).closest('.form-group').addClass('has-error').removeClass('has-success');
        },
        unhighlight: function (element) {
            $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
        },

        success: function (label) {
            label.closest('.form-group').removeClass('has-error').addClass('has-success');
        }
    });
}

function  examApproveDelete(examId,userNo){

    bootbox.confirm(ExamMessage.isDeleteAppr,function(result){

        if(result){
            $.ajax({

                type: 'POST',

                url: ctx+"/exam/ajax/deleteExamApprove" ,

                data: {'examId':examId ,'userNo':userNo} ,

                dataType:"text",

                success: function(msg){

                    if($.trim(msg) =='success'){

                        setExamApprove(examId);

                    }
                }

            });
        }
    });


}

function dialog_open(url,modalId){

    $.ajax({
        type: 'GET',
        url: url ,
        dataType:"text",
        success: function(msg){

            $("#"+modalId).html(msg);
            $('#'+modalId).modal('show');
            if(modalId == 'roomEditModal'){
                examRoomEditValidate();
            }

        } ,
        error : function(msg) {
            //alert("err::"+msg);
        }
    });
}

function course_paper_dialog_open(url,modalId,formId){


    var courseId  = $("#"+formId+" input[name=courseId]").val();
    var examItem  = $("#"+formId+" input[name=examItem]:checked").val();

    if(typeof(examItem) == "undefined" ) {
        examItem  = $("#"+formId+" input[name=examItem]").val();
    }


    //课程考试 NN01, 综合考试 NN02，培训考试 NN03
    if(examItem =='NN01' && (courseId=='' || courseId ==0)){
        bootbox.alert(ExamMessage.chooseCourseFirst);
        return false;

    }else if(examItem =='NN02'){

        courseId = 0;

    }else if(examItem =='NN03'){

        courseId = 0;
    }

    $.ajax({
        type: 'GET',
        url: url ,
        data:{'courseId':courseId},
        dataType:"text",

        success: function(msg){

            $("#"+modalId).html(msg);
            $('#'+modalId).modal('show');

        } ,
        error : function(msg) {
        }
    });
}

function goModalPaging(pageNo,pageSize){

    var key1   = $.trim($("#searchForm input[name=key1]").val());
    var examId = $("#searchForm input[name=examId]").val();
    var roomId = $("#searchForm select[name=examRoom]").val();

    $.ajax({

        type: 'POST',

        url: ctx+"/exam/ajax/examUserInfoAjaxList" ,

        data: {'pageNo':pageNo,'pageSize':pageSize,'examId':examId,'key1': key1,'roomId':roomId} ,

        dataType:"text",

        success: function(msg){

            $("#examUserInfoDiv").html(msg);
        } ,
        error : function(msg) {
        }
    });
}


function moveOption(formId,toId,isAll){

    if(isAll){

        $("#"+formId+" option").each(function (){

            var thisVal = $(this).val();

            if(isNotExistsOpt(thisVal,toId)){
                $("#"+toId).append("<option value=\'"+thisVal+"\'>"+$(this).text()+"</option>");

            }
        });

        $("#"+formId).empty();


    }else{

        $("#"+formId+" option").each(function (){

            if($(this).attr("selected")){

                var thisVal = $(this).val();

                if(isNotExistsOpt(thisVal,toId)){
                    $("#"+toId).append("<option value=\'"+thisVal+"\'>"+$(this).text()+"</option>");
                    $(this).remove();
                }

            }


        });
    }
}
function isNotExistsOpt(val,toId){

    var cnt = 0 ;
    $("#"+toId+" option").each(function (){

        if($(this).val() == val){

            cnt++;
        }
    });

    if(cnt > 0) return false;
    else return true;

}
function clearOption(){
    $("#source_select").empty();
    $("#target_select").empty();
}
function clearUserArea(){
    $('#setUserId').val('');
    $('#setUserName').val('');
}
function clearCourseArea(){

    $('#setCourseId').val('');
    $('#setCourseName').val('');
    if($("#setCourseId").val() =='' && $("#courseChoose").hasClass("has-success")){
        $("#setCourseId").closest('.form-group').removeClass('has-success').addClass('has-error');
        $('#setCourseId').after("<span class='help-block'>"+ExamMessage.courseChoose+"</span>");
    }
}
function clear_paper_area(){
    $("#setPaperId").val('');
    $("#setPaperNm").val('');
    if($("#setPaperId").val() =='' && $("#paperChoose").hasClass("has-success")){
        $("#setPaperId").closest('.form-group').removeClass('has-success').addClass('has-error');
        $('#setPaperId').after("<span class='help-block'>"+ExamMessage.paperChoose+"</span>");
    }
}

function saveExamUserInfo(examId,roomId){


    if($("select[name=userInfoArr] option").length == 0){
        bootbox.alert(ExamMessage.chooseExamUser);
        return false;
    }
    var userInfoArr = "";

    $("select[name=userInfoArr] option").each(function (){

        if( userInfoArr !='') userInfoArr +=',';
        userInfoArr += $(this).val();
    });
    var courseId = $("#courseId").val();
    var sendFlag = $('input[name="send_mail"]:checked').val();
    Metronic.blockUI({target: '#examUserSetModel',boxed: true});

    $.ajax({

        type: 'POST',
        url: ctx+"/exam/ajax/editExamUserInfo" ,
        data: {'examId':examId,'roomId':roomId,'userInfoArr':userInfoArr,'courseId':courseId,'sendMail':sendFlag} ,
        dataType:"text",
        success: function(msg){

            if($.trim(msg) =='success'){
                Metronic.unblockUI('#examUserSetModel');
                bootbox.alert(ExamMessage.userAddSuccess,function(){
                    $("#examUserSetModel").modal('hide');
                });
            }
        } ,
        error : function(msg) {
            //alert("err::"+msg);
        }

    });

}

function checkAllUser(obj){

    if($(obj).is(":checked")){

        $("input[name=userNoArr]").each(function(){

            if(!$(this).is(":checked") ){

                $(this).prop ("checked",true);

            }
        });

    }else{

        $("input[name=userNoArr]").each(function(){

            if($(this).is(":checked")){

                $(this).prop ("checked",false);
            }
        });
    }

}

function compareTime(beginTime,endTime) {

    var beginTimes = beginTime.substring(0, 10).split('-');
    var endTimes = endTime.substring(0, 10).split('-');

    beginTime = beginTimes[1] + '-' + beginTimes[2] + '-' + beginTimes[0] + ' ' + beginTime.substring(10, 19);
    endTime = endTimes[1] + '-' + endTimes[2] + '-' + endTimes[0] + ' ' + endTime.substring(10, 19);

    var a = (Date.parse(beginTime) - Date.parse(endTime)) / 3600 / 1000;

    if (a < 0) {
        return true;
    }else {
        return false
    }
}
