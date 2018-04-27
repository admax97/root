/**
 * Created by jingxin on 2018/4/27.
 */
jQuery(document).ready(function() {
    goPage(1,pageSize);
    $('input[name=key1]').on('keypress', function(e) {
        if (e.keyCode == 13) {
            goPage(1,pageSize);
        }
    });
});
function  addLibrary(){
    var form = $('#libraryForm');/*formID*/
    // if(!form.valid()) return false;
    $.ajax({
        type: "post",
        url:  ctx+"/library/addProc",
        data: $("#libraryForm").serialize(),
        success: function(data) {
            if($.trim(data) =='success'){
                alert("添加题库成功")
                setTimeout(goLibList(),500)
            }
        },
        error: function(errorMsg) {
            console.error(errorMsg)
        }
    });
}

function goLibList (){
    window.location.href = ctx+"/library/list";
}
