/**
 * Created by jingxin on 2018/4/27.
 */
function  addQuestion(){
    var form = $('#questionForm');/*formID*/
    // if(!form.valid()) return false;
    $.ajax({
        type: "post",
        url:  ctx+"/question/addProc",
        data: $("#questionForm").serialize(),
        success: function(data) {
            if($.trim(data) =='success'){
                alert("添加试题成功")
                setTimeout(goBackList(),500)
            }
        },
        error: function(errorMsg) {
            console.error(errorMsg)
        }
    });
}

function goBackList (){
    var libraryId = $("#libraryId").val()
    window.location.href = ctx+"/question/list?libraryid="+ libraryId;
}