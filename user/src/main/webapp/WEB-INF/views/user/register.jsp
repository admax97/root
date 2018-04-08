<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>注册 / MMM English - Official Website</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/prettyPhoto.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/main1.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/jquery-ui.css">
</head>
<body class="china cn">
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->
<div class="all_wrap">
    <div class="wrapper">
        <div class="started_video" style="display: none;">
            <div class="sv_wrapper">
                <div class="close" alt="Close" title="Close">×</div>
                <div class="no_show" alt="Close and do not show" title="Close and do not show"><i>×</i> Not show again
                </div>
                <div class="sv_video"></div>
            </div>
        </div>
        <header>
            <div class="lang"><span>中文</span></div>
            <div class="menu_bg">
                <nav><a href="https://mmmoffice.ch/">主页</a> <a href="#">什么是MMM</a> <a href="#">思想</a> <a
                        href="#">国外MMM</a> <a href="#">善意</a> <a href="#" class="testimonials">反馈意见</a> <a
                        href="#">消息</a> <a href="#">联系信息</a></nav>
            </div>
            <div class="sub_menu"><a href="#" class="facebook_consultant">Facebook Consultants</a> <a href="#"
                                                                                                      class="mobile"
                                                                                                      data-to-mobile="">手机网站</a>
                <a href="#" class="mobile last">手机软件</a> <a href="#" class="reg_button">注册</a> <a
                        href="#"  class="log_button">登陆MMM</a> <a href="#"
                                                                                                              class="grey_buttons">合法性</a>
                <a href="#" class="grey_buttons howstart">如何开始参与</a></div>
            <div class="logo_wrap"><a href="https://mmmoffice.ch/" title="Return on main" class="logo_href"> <i
                    class="logo">中国</i> <i class="sfn">社会金融网络</i> <i class="spm"></i> </a> <i class="fkmi"></i>

                <div class="china_social"><a href="#" title="Vimeo" class="soc_vimeo" target="_blank">Vimeo</a> <a
                        href="#" title="Weibo" class="soc_weibo" target="_blank">Weibo</a> <a href="#" title="Q-zone"
                                                                                              class="soc_qzone"
                                                                                              target="_blank">Q-zone</a>
                </div>
                <a href="#" class="happycalc">
                    <p style="margin-top:10px;">幸福计算</p>
                </a></div>
            <div id="loading-layer">Loading...</div>
        </header>
        <section class="content" style="display:none;" id="End">
            <h1>
                恭喜！ </h1>

            <div class="success_reg">
                <p style="text-align: center; font-weight: bold; text-align: center; font-size: 30px;">
                    欢迎参与MMM系统！:-))</p>

                <p style="font-style: italic; font-size: 16px;">该怎么办？</p>

                <p>按照说明进行操作：</p>
                <ol>
                    <li>您将收到通过电子邮件或短信来找回密码的链接。这取决于注册过程中您指定的信息：电子邮件或电话号码 。 （如果链接不是在您的收件箱，检查垃圾邮件！并且还尝试 重新启动页面。）</li>
                    <li>点击该链接，进入一个新的，永久性的密码。 （您自己创造的。:-))</li>
                    <li>然后在网站的菜单再次单击“登录”，并输入不仅是您的电子邮件/电话号码，而是一个新的密码。这一点您已经做到吗？以同样的方式，您将能继续进入您的虚拟帐户（通过“登录”）。</li>
                </ol>
                <p>
                    在虚拟个人账户中（用户中心）首先指定您的联系信息：电话号码，等等。如果您还没有做呢。一般情况下，您的虚拟账户开始运作之前，首先更好地阅读说明。当然，这里没有什么特别复杂的，您可以研究使用试错法:)），但您最好地先阅读说明。:-))</p>

                <p style="text-align: center; font-weight: bold; font-size: 20px;">祝好运！</p>
            </div>
        </section>
        <section class="content" id="Reg">
            <h1> 注册 </h1>

            <div class="other_country"> You are from another country? Click <a href="#" class="other_countries_toggle">
                here. </a></div>
            <div class="registration">
                <div class="register-feedback-form">
                    <div class="line">
                        <div class="left">
                            <label> 名字 *: </label>

                            <p> (也许昵称) </p>
                        </div>
                        <div class="right">
                            <input id="UserName" type="text">
                        </div>
                    </div>
                    <div class="line">
                        <div class="left">
                            <label> 邮箱 *: </label>

                            <p> (例如： 123456@qq.com) </p>
                        </div>
                        <div class="right">
                            <input id="UserWord" type="text">
                        </div>
                    </div>
                    <div class="line">
                        <div class="left">
                            <label> 手机号码 *: </label>

                            <p> （例如： +8618600800600） </p>
                        </div>
                        <div class="right">
                            <input id="UserPhone" type="text">

                            <div style="background-color:#F00;color:#FFF; width:120px; padding:5px; margin-top:10px; cursor:pointer;"
                                 id="P_V_Btn" onclick="POST_Data(2);">点击获取手机验证码
                            </div>
                        </div>
                    </div>
                    <div class="line">
                        <div class="left">
                            <label> 手机验证码 *: </label>

                            <p> （请输入您手机上获得的验证码） </p>
                        </div>
                        <div class="right">
                            <input id="UserPhone_V" type="text">
                        </div>
                    </div>
                    <div class="line">
                        <div class="left">
                            <label> 密码* : </label>

                            <p> (输入您的密码) </p>
                        </div>
                        <div class="right">
                            <input id="UserPass" type="password">
                            <span id="password_input_simple_text"></span></div>
                    </div>
                    <div class="line">
                        <div class="left">
                            <label> 密码 (确认)* : </label>

                            <p> (再次确认您的密码) </p>
                        </div>
                        <div class="right">
                            <input id="UserPass1" type="password">
                        </div>
                    </div>
                    <div class="line" style="display:none;">
                        <div class="left">
                            <label> 您的领导人的电子邮箱: </label>

                            <p> （如果您有一个领导人一起工作，或者您已经从列表中选了一位，您也可以不填写这个字段） </p>
                        </div>
                        <div class="right">
                            <input id="Recommend" type="text">
                        </div>
                    </div>
                    <div class="line" id="captcha-code-label">
                        <div class="left">
                            <label> 图像编码 *: </label>
                            <p> 从图片中输入验证码 </p>
                        </div>
                        <div class="right">
                            <input maxlength="5" pattern="\d{5}" id="Captcha" type="text">
                        </div>
                        <p></p>
                        <div class="right"><img id="Captcha_Img" src=""
                                                height="40" width="110"><a style="text-align:center;font-weight:bold;font-size: 18px;" href="#" onclick="Refresh_Captcha()"> 更新 </a>
                        </div>
                    </div>
                    <p></p>
                    <!-- <div class="line">
                        <div class="left"></div>
                        <div class="right" data-form-errors-container=""></div>
                    </div> -->
                    <div class="line">
                        <div class="right">
                            <p>
                                <input id="CKBOX" checked="checked" type="checkbox">
                                我读过 <a href="#">警告</a>，现在完全意识风险，并在健全的记忆和思维决定参加MMM。 </p>
                        </div>
                    </div>
                    <div class="line">
                        <div class="left"></div>
                        <div class="right">
                            <button type="button" onclick="POST_Data(1);"> 在MMM系统注册</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- <div class="footer_push"></div> -->
</div>
<footer>© 2016  All Rights Reserved.</footer>
<script src="${ctx}/static/js/jquery-1.10.2.js"></script>
<script src="${ctx}/static/js/RSystem.Common.js"></script>
<script src="${ctx}/static/js/jquery.md5.js"></script>
<script>
    /*var R_Mail = '';
     if(R_Mail!=''){
     $('#Recommend').val(R_Mail);
     }*/
     var U_Status = ${sessionScope.pjtUser.status};
	//var Status_Abnormal_1 ="您的账户已经被警告!";
	var Status_Abnormal_1 ="您的账户已经被冻结,您只能使用反馈功能进行解冻!";
	if (U_Status == '1') {
		alert(Status_Abnormal_1);
	} 
    $(function () {

        $('#UserName').bind('keypress', function (event) {
            if (event.keyCode == '13') {
                $('#UserWord').focus();
            }
        });
        $('#UserWord').bind('keypress', function (event) {
            if (event.keyCode == '13') {
                $('#UserPhone').focus();
            }
        });
        $('#UserPhone').bind('keypress', function (event) {
            if (event.keyCode == '13') {
                $('#UserPhone_V').focus();
            }
        });
        $('#UserPhone_V').bind('keypress', function (event) {
            if (event.keyCode == '13') {
                $('#UserPass').focus();
            }
        });
        $('#UserPass').bind('keypress', function (event) {
            if (event.keyCode == '13') {
                $('#UserPass1').focus();
            }
        });
        $('#UserPass1').bind('keypress', function (event) {
            if (event.keyCode == '13') {
                $('#Recommend').focus();
            }
        });
        $('#Recommend').bind('keypress', function (event) {
            if (event.keyCode == '13') {
                $('#Captcha').focus();
            }
        });
        $('#Captcha').bind('keypress', function (event) {
            if (event.keyCode == '13') {
                POST_Data(1);
            }
        });

    });

    function Refresh_Captcha() {
        $('#Captcha_Img').attr('src', '${ctx}/randomImage/number?n=' + Math.random() * 1000);
        $('#Captcha').val('');
    }

    function Post_Error() {
        alert('连接服务器失败,请您稍后尝试!');
        Refresh_Captcha();
    }

    function Post_Success(Xml) {
        if ($(Xml).find('ajax_status').text() < 0) {
            alert($(Xml).find('ajax_notice').text());
            Refresh_Captcha();
        } else if ($(Xml).find('ajax_header').text() == 'user') {
            if ($(Xml).find('ajax_type').text() == 'registered_account' && $(Xml).find("ajax_class").text() == 'basis') {
                $.cookie('user', $('#UserWord').val(), {expires: 365});
                $('#Reg').hide();
                $('#End').show();
            } else if ($(Xml).find('ajax_type').text() == 'sms_code' && $(Xml).find("ajax_class").text() == 'basis') {
                alert($(Xml).find('ajax_notice').text());
            }
        }
    }

    function POST_Data(Type) {
    	if(U_Status =='1'){alert(Status_Abnormal_1);return;} 
        if (Type == 1) {
            if ($('#UserName').val() == '') {
                alert('请输入您的名称.');
            } else if (!isValidMail($('#UserWord').val())) {
                return;
            } else if ($('#UserPass').val() == '') {
                alert('请输入您喜欢的密码.');
            } else if ($('#UserPhone').val() == '') {
                alert('请输入您的手机号码.');
            } else if ($('#UserPhone_V').val() == '') {
                alert('请输入您手机收到的验证码');
            } else if ($('#UserPass').val() != $('#UserPass1').val()) {
                alert('您两次输入的密码不一致.');
            } else if ($('#Captcha').val() == '') {
                alert('请输入验证码(图片内的英文字母).');
            } else {
                $.ajax({
                    type: "POST",
                    url: '${ctx}/user/add',
                    data: {
                        name: $('#UserName').val(),
                        password: $.md5($('#UserPass').val()),
                        email: $('#UserWord').val(),
                        mobile: $('#UserPhone').val(),
                        mobileVerifyCode: $('#UserPhone_V').val(),
                        picVerifyCode: $('#Captcha').val()
                    },
                    dataType: "json",
                    success: function (result) {
                        if (!result.success) {
                            alert(result.message);
                        }else{
                        	 alert('注册用户成功！');
                            window.location.href="${ctx}/user/recommend";
                        }
                    }
                });
                 }
        } else if (Type == 2) {
            if ($('#UserPhone').val().substr(0, 1) != '1') {
                alert('请输入正确的手机号码.');
                return;
            }
            if ($('#UserPhone').val().length != 11) {
                alert('请输入正确的手机号码.');
                return;
            }
            Ajax_POST('${ctx}/sms/sendVerifyCode/xml/?m=ajax&ajax_header=user&ajax_class=basis&ajax_type=sms_code', 'phone=' + $('#UserPhone').val() +'&templateCode=user_register', 'xml', Post_Success, Post_Error);
        }
    }
    function isValidMail(TextVal) {
        var Regex = /^(?:\w+\.?)*\w+@(?:\w+\.)*\w+$/;

        if (Regex.test(TextVal)) {
            return true;
        }
        else {

            if (TextVal == "") {
                alert("请输入电子邮件地址！");
                return false;
            }
            else {
                alert("您好，你输入的邮箱不正确，请重新输入；");
                return false;
            }
        }
    }
    Refresh_Captcha();
</script>

<div id="xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd"></div>
</body>
</html>
<!--Write_Html : False [user/reg]-->