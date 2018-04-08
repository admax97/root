var pageSize = 10;

jQuery(document).ready(function() {

    goPage(1,pageSize);

    $('input[name=loginAccount]').on('keypress', function(e) {
        if (e.keyCode == 13) {
            goPage(1,pageSize);
        }
    });
    $('input[name=userName]').on('keypress', function(e) {
        if (e.keyCode == 13) {
            goPage(1,pageSize);
        }
    });
    $('input[name=mobileNo]').on('keypress', function(e) {
        if (e.keyCode == 13) {
            goPage(1,pageSize);
        }
    });


});

function goPage(pageNo, pageSize) {

    var loginAccount = $('input[name=loginAccount]').val();
    var userName = $('input[name=userName]').val();
    var mobileNo = $('input[name=mobileNo]').val();

    $.ajax({

        type: 'POST',
        url: ctx + "/user/ajaxList",
        data: {pageNo:pageNo,pageSize:pageSize,userName:userName,loginAccount:loginAccount,mobileNo:mobileNo},
        dataType: "text",
        success: function (msg) {
            $("#userContent").html(msg);
        },
        error: function (msg) {
            console.info(msg);
        }

    });


}