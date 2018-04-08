var Show_Time = setTimeout("Show_Time_Str()", 1000);
var Time_Str = 5;
var code = '';
function createCode() {
    code = '';
    var codeLength = 6;//验证码的长度
    var checkCode = document.getElementById("checkCode");
    var selectChar = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');//所有候选组成验证码的字符，当然也可以用中文的
    for (var i = 0; i < codeLength; i++) {
        var charIndex = Math.floor(Math.random() * 36);
        code += selectChar[charIndex];
    }
    if (checkCode) {
        checkCode.className = "upCode";
        console.log(code);
        checkCode.value = code;
    }
}
function Show_Time_Str() {
    Time_Str--;
    $('#Time-Str').html(Time_Str);
    if (Show_Time) {
        clearTimeout(Show_Time)
    }
    ;
    if (Time_Str > 0) {
        Show_Time = setTimeout("Show_Time_Str()", 1000);
    }
    else {
        $('.time').hide();
        $('.login').show();
        createCode();
    }
}

function Refresh_Captcha() {
   /* $('#captcha').attr('src', 'https://mmmoffice.ch/?t=captcha&r=' + Get_Random(999999));*/
    $('#cap_ch').val('');
}

function POST_Data(Type) {
    ajaxBusy_Show(1);
    if (Type == 1) {
        var inputCode = document.getElementById("cap_ch").value.toUpperCase();
        if (inputCode.length <= 0) {
            simplemodal_Show(1, '请输入验证码！');
            ajaxBusy_Show(0);
            return;
        }
        else if (inputCode != code) {
            simplemodal_Show(1, '验证码输入错误！');
            createCode();//刷新验证码
            ajaxBusy_Show(0);
            return;
        }
        else {
            $('#auth').hide();
            $('#container').show();
            ajaxBusy_Show(0);
        }
    } else if (Type == 2) {
        if($('#uname').val() !=""&& $('#upass').val() !=""){
            Ajax_POST(ctx + "/login/login",
                'user=' + $('#uname').val() + '&pass=' + $.md5($('#upass').val()),
                'json', Post_Success, Post_Error);
        }else{
            if($('#uname').val() ==""){
                simplemodal_Show(1, '请输入您的邮箱或电话号码.');
            }else{
                simplemodal_Show(1, '请输入您的密码.');
            }
        }


    } else if (Type == 3) {
        if ($('#Send_Phone').val().substr(0, 1) != '1') {
            simplemodal_Show(1, '请输入正确的手机号码.');
            return;
        }
        if ($('#Send_Phone').val().length != 11) {
            simplemodal_Show(1, '请输入正确的手机号码.');
            return;
        }
        //TODO 缺少发送短信接口
        Ajax_POST(ctx + "/sms/sendVerifyCode/json",
            'phone=' + $('#Send_Phone').val() + '&templateCode=user_account_mofify', 'json', Post_Success, Post_Error);
    } else if (Type == 4) {
        if ($('#Edit_Phone').val().substr(0, 1) != '1') {
            simplemodal_Show(1, '请输入正确的手机号码.');
            return;
        }
        if ($('#Edit_Phone').val().length != 11) {
            simplemodal_Show(1, '请输入正确的手机号码.');
            return;
        }
        if ($('#Edit_Phone_V').val().length != 6) {
            simplemodal_Show(1, '请输入正确的短信恢复码.');
            return;
        }
        if ($('#Edit_Pass_1').val() == '') {
            simplemodal_Show(1, '请输入您想要的新密码.');
            return;
        }
        if ($('#Edit_Pass_1').val() != $('#Edit_Pass_2').val()) {
            simplemodal_Show(1, '您两次输入的密码不一致.');
            return;
        }
        Ajax_POST(ctx + "/login/changePassWord",
            'mobileNo=' + $('#Edit_Phone').val() + '&resetCode=' + $('#Edit_Phone_V').val() + '&newPassWord=' + $.md5($('#Edit_Pass_1').val()),
            'json', changePassWordSuccess, Post_Error);
        /*Ajax_POST('https://mmmoffice.ch/?m=ajax&ajax_header=user&ajax_class=basis&ajax_type=phone_edit_pass', 'phone=' + $('#Edit_Phone').val() + '&phone_v=' + $('#Edit_Phone_V').val() + '&pass=' + $.md5($('#Edit_Pass_1').val()), 'xml', Post_Success, Post_Error);*/
    }
}

function changePassWordSuccess(json) {
    ajaxBusy_Show(0);
    if(json.sms_code == true){
    	simplemodal_Show(1, '验证码输入错误!');
    }
    if(json.success == true){
    	simplemodal_Show(1, '修改密码成功!');
    }else{
    	simplemodal_Show(1, '修改密码失败!');
    }
    Edit_Pass_Show(0);
}

function Post_Error() {
    ajaxBusy_Show(0);
    simplemodal_Show(1, '连接服务器失败,请您稍后尝试!');
    Refresh_Captcha();
}

function Post_Success(json) {
    console.log(json);
    ajaxBusy_Show(0);
    if (json.ajax_status < 0) {
        simplemodal_Show(1, json.ajax_notice);
        //Refresh_Captcha();
    } else if (json.ajax_header== 'public') {
        if ($(Xml).find('ajax_type').text() == 'captcha' && $(Xml).find("ajax_class").text() == 'index') {
            $('#auth').hide();
            $('#container').show();
        }
    } else if (json.ajax_header == 'user') {
        if (json.ajax_type == 'login' && json.ajax_class == 'basis') {
            window.location.href =ctx+ '/desktop/index.html';
        } else if (json.ajax_type == 'sms_code' && json.ajax_class == 'basis') {
            Send_SMS_Show(0);
            if(json.ajax_status == '1'){
            	simplemodal_Show(1, '验证码发送成功');
            }else{
            	simplemodal_Show(1, '验证码发送失败，请重新发送');
            }
        } /*else if ($(Xml).find('ajax_type').text() == 'phone_edit_pass' && $(Xml).find("ajax_class").text() == 'basis') {
            Edit_Pass_Show(0);
            simplemodal_Show(1, $(Xml).find('ajax_notice').text());
        }*/
    }
}
function Go_Reg() {
    window.location.href = '../../';
}
function ajaxBusy_Show(Type) {
    if (Type == 0) {
        $('#ajaxBusy').hide();
    } else {
        $('#ajaxBusy').show();
    }
}
function simplemodal_Show(Type, Text) {
    if (Type == 0) {
        $('#simplemodal-overlay').hide();
        $('#simplemodal-container').hide();
    } else if (Type == 1) {
        ajaxBusy_Show(0);
        $('#simplemodal-content').html(Text);
        $('#simplemodal-overlay').show();
        $('#simplemodal-container').show();
    }
}
function Send_SMS_Show(Type) {
    if (Type == 0) {
        $('#Send_SMS').hide();
        $('#simplemodal-overlay').hide();
    } else if (Type == 1) {
        ajaxBusy_Show(0);
        $('#Send_SMS').show();
        $('#simplemodal-overlay').show();
    }
}
function Edit_Pass_Show(Type) {
    if (Type == 0) {
        $('#Edit_Pass').hide();
        $('#simplemodal-overlay').hide();
    } else if (Type == 1) {
        ajaxBusy_Show(0);
        $('#Edit_Pass').show();
        $('#simplemodal-overlay').show();
    }
}