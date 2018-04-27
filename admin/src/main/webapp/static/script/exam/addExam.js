/**
 * Created by jingxing on 2018/4/27.
 */
function  addExam(){
    var form = $('#libraryForm');/*formID*/
    // if(!form.valid()) return false;
    $.ajax({
        type: "post",
        url:  ctx+"/exam/addProc",
        data: $("#examForm").serialize(),
        success: function(data) {
            if($.trim(data) =='success'){
                alert("添加考试成功")
                setTimeout(goExamList(),500)
            }
        },
        error: function(errorMsg) {
            console.error(errorMsg)
        }
    });
}

function goExamList (){
    window.location.href = ctx+"/exam/list";
}