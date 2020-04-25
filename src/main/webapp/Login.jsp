<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/3/28
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录界面</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link href="layui/css/layui.css" rel="stylesheet"/>
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="layui/layui.js"></script>
</head>

<body class="login_body">
<!--左右两边云-->
<div class="wel" id="box">
    <div class="box-1 lefp"></div>
    <div class="box-1">
        <div class="righp"></div>
    </div>
</div>
<!--荧光点点-->
<div class="wel" id="git"></div>

<div class="login_div">
    <div class="col-xs-12 login_title">登录</div>
    <form action="" class="login" method="post" id="form1">
        <div class="nav">
            <div class="nav login_nav">
                <div class="col-xs-4 login_username">
                    用户账号:
                </div>
                <div class="col-xs-6 login_usernameInput">
                    <input type="text" name="accountnumber" id="name" value="" placeholder="请输入账号"  onBlur="javascript:ok_or_errorBylogin(this)" />
                </div>
                <div class="col-xs-1 ok_gou">
                    √
                </div>
                <div class="col-xs-1 error_cuo">
                    ×
                </div>
            </div>
            <div class="nav login_psdNav">
                <div class="col-xs-4">
                    用户密码:
                </div>
                <div class="col-xs-6">
                    <input type="password" name="password" id="psd" value="" placeholder="请输入密码" onBlur="javascript:ok_or_errorBylogin(this)" />
                </div>
                <div class="col-xs-1 ok_gou">
                    √
                </div>
                <div class="col-xs-1 error_cuo">
                    ×
                </div>
            </div>
            <div class="nav login_psdNav">
                <div class="col-xs-4">
                    用户类型:
                </div>
                <div class="col-xs-6">
                    <select name="flag" style="width: 285px;" id="flag_l" >
                        <option value="0" >管理员</option>
                        <option value="1" selected>普通用户</option>
                    </select>
                </div>
            </div>
            <div class="nav login_psdNav">
                <div class="col-xs-4">
                    验证码:
                </div>
                <div class="col-xs-6">
                    <input type="text" name="vcode" id="vcode" placeholder="请输入验证码" onBlur="javascript:ok_or_errorBylogin(this)" />
                </div>
                <div class="col-xs-1 ok_gou">
                    √
                </div>
                <div class="col-xs-1 error_cuo">
                    ×
                </div>
            </div>
            <%--验证码--%>
            <div id="check-code" style="overflow: hidden;">
                <div class="code" id="data_code"></div>
            </div>
            <div class="col-xs-6 login_btn_div">
                <input type="button" class="sub_btn" value="登录" id="login" />
            </div>
            <div class="col-xs-6 login_btn_div">
                <input type="button" class="sub_btn" value="重置" id="reset" onclick="reset1()"/>
            </div>
        </div>
    </form>

    <div class="col-xs-12 barter_btnDiv">
        <button class="barter_btn" onClick="javascript:barter_btn(this)">没有账号?前往注册</button>
    </div>
</div>

<div class="register_body">
    <div class="col-xs-12 register_title">注册</div>
    <form action="" class="register" method="post" id="form2">
        <div class="nav">
            <div class="nav register_nav">
                <div class="col-xs-4">
                    用户姓名:
                </div>
                <div class="col-xs-6">
                    <input type="text" name="uname" id="name_r"  placeholder="请输入用户名" onBlur="javascript:ok_or_errorByRegister(this)" />
                </div>
                <div class="col-xs-1 ok_gou">
                    √
                </div>
                <div class="col-xs-1 error_cuo">
                    ×
                </div>
            </div>
            <div class="nav register_psdnav">
                <div class="col-xs-4">
                    用户账号:
                </div>
                <div class="col-xs-6">
                    <input type="text" name="accountnumber" id="accountnumber_r" placeholder="请输入用户账号" onBlur="javascript:ok_or_errorByRegister(this)" />
                </div>
                <div class="col-xs-1 ok_gou">
                    √
                </div>
                <div class="col-xs-1 error_cuo">
                    ×
                </div>
            </div>
            <div class="nav register_psdnav">
                <div class="col-xs-4">
                    用户密码:
                </div>
                <div class="col-xs-6">
                    <input type="password" name="password" id="psd_r" placeholder="请输入密码" onBlur="javascript:ok_or_errorByRegister(this)" />
                </div>
                <div class="col-xs-1 ok_gou">
                    √
                </div>
                <div class="col-xs-1 error_cuo">
                    ×
                </div>
            </div>
            <div class="nav register_affirm">
                <div class="col-xs-4">
                    确认密码:
                </div>
                <div class="col-xs-6">
                    <input type="password" name="password2" id="affirm_psd" placeholder="请确认密码" onBlur="javascript:ok_or_errorByRegister(this)" />
                </div>
                <div class="col-xs-1 ok_gou">
                    √
                </div>
                <div class="col-xs-1 error_cuo">
                    ×
                </div>
            </div>
            <div class="nav register_psdnav">
                <div class="col-xs-4">
                    用户邮箱:
                </div>
                <div class="col-xs-6">
                    <input type="text" name="email" id="email_r" placeholder="&nbsp;&nbsp;请输入用户邮箱" onBlur="javascript:ok_or_errorByRegister(this)" />
                </div>
                <div class="col-xs-1 ok_gou">
                    √
                </div>
                <div class="col-xs-1 error_cuo">
                    ×
                </div>
            </div>
            <div class="col-xs-6" style="display: none;">
                <input type="text" name="registertime" id="registertime" />
            </div>
            <div class="nav register_psdnav">
                <div class="col-xs-4">
                    用户类型:
                </div>
                <div class="col-xs-6">
                    <select name="flag" style="width: 285px;" id="flag_r" >
                        <option value="0">管理员</option>
                        <option value="1" selected>普通用户</option>
                    </select>
                </div>
            </div>

            <div class="col-xs-6 register_btn_div">
                <input type="button" class="sub_btn" value="注册" id="register"/>
            </div>
            <div class="col-xs-6 register_btn_div">
                <input type="button" class="sub_btn" value="重置" id="reset2" onclick="reset()" />
            </div>
        </div>
    </form>
    <div class="col-xs-12 barter_register">
        <button class="barter_registerBtn" onClick="javascript:barter_btn(this)" style="">已有秘籍?返回登录</button>
    </div>
</div>
<script type="text/javascript">
    /**
     * 验证码
     * @param {Object} o 验证码长度
     */
    $.fn.code_Obj = function(o) {
        var _this = $(this);
        var options = {
            code_l: o.codeLength,//验证码长度
            codeChars: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
                'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
                'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
            ],
            codeColors: ['#f44336', '#009688', '#cddc39', '#03a9f4', '#9c27b0', '#5e4444', '#9ebf9f', '#ffc8c4', '#2b4754', '#b4ced9', '#835f53', '#aa677e'],
            code_Init: function() {
                var code = "";
                var codeColor = "";
                var checkCode = _this.find("#data_code");
                for(var i = 0; i < this.code_l; i++) {
                    var charNum = Math.floor(Math.random() * 52);
                    code += this.codeChars[charNum];
                }
                for(var i = 0; i < this.codeColors.length; i++) {
                    var charNum = Math.floor(Math.random() * 12);
                    codeColor = this.codeColors[charNum];
                }
                console.log(code);
                if(checkCode) {
                    checkCode.css('color', codeColor);
                    checkCode.className = "code";
                    checkCode.text(code);
                    checkCode.attr('data-value', code);
                }
            }
        };

        options.code_Init();//初始化验证码
        _this.find("#data_code").bind('click', function() {
            options.code_Init();
        });
    };
</script>
<script type="text/javascript">
    /**
     * 验证码
     * codeLength:验证码长度
     */
    $('#check-code').code_Obj({
        codeLength: 5
    });
</script>
<script type="text/javascript">
    $(function() {
        $('#login').click(function() {
            var name_state = $('#name');
            var psd_state = $('#psd');
            var vcode_state = $('#vcode');
            var vcode = $('#vcode').val();
            var name = $('#name').val();
            var psd = $('#psd').val();

            if (name == '') {
                name_state.parent().next().next().css("display", "block");
                return false;
            } else if (psd == '') {
                name_state.parent().next().next().css("display", "none");
                psd_state.parent().next().next().css("display", "block");
                return false;
            } else if (vcode == '') {
                name_state.parent().next().next().css("display", "none");
                psd_state.parent().next().next().css("display", "none");
                vcode_state.parent().next().next().css("display", "block");
                return false;
            } else {
                name_state.parent().next().next().css("display", "none");
                psd_state.parent().next().next().css("display", "none");
                vcode_state.parent().next().next().css("display", "none");
                if (vcode.toUpperCase()!=$('#data_code').attr('data-value').toUpperCase()) {
                    alert("验证码不正确");
                    name_state.parent().next().next().css("display", "none");
                    psd_state.parent().next().next().css("display", "none");
                    vcode_state.parent().next().next().css("display", "block");
                    return false;
                }
                else{
                    // alert("跳转");
                    $.ajax({
                        type: "POST",
                        url: "/user/login",
                        data: $("#form1").serialize(),
                        success: function (data) {
                            login_check(data);
                        }
                    });

                }
            }
        });
        $('#register').click(function() {
            var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
            var name_r_state = $('#name_r');
            var accountnumber_state = $('#accountnumber_r');
            var psd_r_state = $('#psd_r');
            var affirm_psd_state = $('#affirm_psd');
            var email_state = $('#email_r');
            var accountnumber_r = $('#accountnumber_r').val();
            var email_r = $('#email_r').val();
            var name_r = $('#name_r').val();
            var psd_r = $('#psd_r').val();
            var affirm_psd = $('#affirm_psd').val();
            if (name_r == '') {
                name_r_state.parent().next().css("display", "none");
                email_state.parent().next().next().css("display", "none");
                accountnumber_state.parent().next().next().css("display", "none");
                psd_r_state.parent().next().next().css("display", "none");
                affirm_psd_state.parent().next().next().css("display", "none");
                name_r_state.parent().next().next().css("display", "block");
                return false;
            } else if (accountnumber_r == '') {
                accountnumber_state.parent().next().css("display", "none");
                name_r_state.parent().next().next().css("display", "none");
                accountnumber_state.parent().next().next().css("display", "block");
                psd_r_state.parent().next().next().css("display", "none");
                affirm_psd_state.parent().next().next().css("display", "none");
                email_state.parent().next().next().css("display", "none");
                return false;
            } else if (psd_r == '') {
                psd_r_state.parent().next().css("display", "none");
                name_r_state.parent().next().next().css("display", "none");
                accountnumber_state.parent().next().next().css("display", "none");
                psd_r_state.parent().next().next().css("display", "block");
                affirm_psd_state.parent().next().next().css("display", "none");
                email_state.parent().next().next().css("display", "none");
                return false;
            } else if (affirm_psd == '') {
                affirm_psd_state.parent().next().css("display", "none");
                name_r_state.parent().next().next().css("display", "none");
                accountnumber_state.parent().next().next().css("display", "none");
                psd_r_state.parent().next().next().css("display", "none");
                affirm_psd_state.parent().next().next().css("display", "block");
                email_state.parent().next().next().css("display", "none");
                return false;
            } else if (psd_r != affirm_psd) {
                return false;
            } else if (email_r == '') {
                email_state.parent().next().css("display", "none");
                name_r_state.parent().next().next().css("display", "none");
                accountnumber_state.parent().next().next().css("display", "none");
                psd_r_state.parent().next().next().css("display", "none");
                affirm_psd_state.parent().next().next().css("display", "none");
                email_state.parent().next().next().css("display", "block");
                return false;
            } else {
                if(reg.test(email_r)){
                    register();
                }else{
                    email_state.parent().next().css("display", "none");
                    name_r_state.parent().next().next().css("display", "none");
                    accountnumber_state.parent().next().next().css("display", "none");
                    psd_r_state.parent().next().next().css("display", "none");
                    affirm_psd_state.parent().next().next().css("display", "none");
                    email_state.parent().next().css("display", "none");
                    email_state.parent().next().next().css("display", "block");
                    alert("邮箱格式不正确");
                    return false;
                }
            }
        })
    })

    function ok_or_errorBylogin(l) {
        var content = $(l).val();
        if (content != "") {
            $(l).parent().next().next().css("display", "none");
        }
    }

    function ok_or_errorByRegister(r) {
        var affirm_psd = $("#affirm_psd");
        var psd_r = $("#psd_r");
        var accountnumber_r = $('#accountnumber_r');
        var email_r = $('#email_r');
        var accountnumber_v = $('#accountnumber_r').val();
        var email_v = $('#email_r').val();
        var affirm_psd_v = $("#affirm_psd").val();
        var psd_r_v = $("#psd_r").val();
        var content = $(r).val();
        if (content == "") {
            $(r).parent().next().next().css("display", "block");
            return false;
        } else {
            $(r).parent().next().css("display", "block");
            $(r).parent().next().next().css("display", "none");
            if (accountnumber_v == "") {
                accountnumber_r.parent().next().css("display", "none");
                accountnumber_r.parent().next().next().css("display", "block");
                return false;
            }
            if (psd_r_v == "") {
                psd_r.parent().next().css("display", "none");
                psd_r.parent().next().next().css("display", "block");
                returnfalse;
            }
            if (affirm_psd_v == "") {
                affirm_psd_v.parent().next().css("display", "none");
                affirm_psd_v.parent().next().next().css("display", "block");
                return false;
            }
            if (psd_r_v == affirm_psd_v) {
                affirm_psd.parent().next().css("display", "none");
                affirm_psd.parent().next().next().css("display", "none");
                psd_r.parent().next().next().css("display", "none");
                affirm_psd.parent().next().css("display", "block");
                psd_r.parent().next().css("display", "block");
            }
            else {
                affirm_psd.parent().next().css("display", "none");
                affirm_psd.parent().next().next().css("display", "none");
                psd_r.parent().next().next().css("display", "none");
                psd_r.parent().next().css("display", "block");
                affirm_psd.parent().next().next().css("display", "block");
                return false;
            }
            if (email_v == "") {
                email_r.parent().next().css("display", "none");
                email_r.parent().next().next().css("display", "block");
                return false;
            }
        }
    }

    function barter_btn(bb) {
        $(bb).parent().parent().fadeOut(1000);
        $(bb).parent().parent().siblings().fadeIn(2000);
    }

    // 清空表单
    function reset1(){
        $("#name").val('');
        $("#psd").val('');
        $("#flag_l").val("1");
        $("#vcode").val('');
    }

    function reset(){
        $("#name_r").val('');
        $("#accountnumber_r").val('');
        $("#psd_r").val('');
        $("#affirm_psd").val('');
        $("#email_r").val('');
        $("#flag_2").val("1");
    }

    // 登录验证
    function login_check(data){
        setTimeout(function () {
            if (data.state == 'pass') {
                //登录成功
                //  alert("登录成功<br>欢迎回来");
                layui.use('layer', function () {
                    layui.layer.alert('登录成功<br>欢迎回来');
                });
                setTimeout(function () {
                    if (data.msg=='1') {
                        window.location.href="index.jsp";
                    }
                    else if(data.msg=='0'){
                        window.location.href="Car.jsp";
                    }
                }, 1000);
            } else {
                layui.use('layer', function () {
                    layui.layer.alert(data.msg);
                });
                setTimeout(function () {
                    window.location.href="Login.jsp";
                },1000);
            }
        },1000);
    }

    // 注册
    function register(){
        var now = new Date();
        var year = now.getFullYear(); //得到年份
        var month = now.getMonth()+1;//得到月份
        var date = now.getDate();//得到日期
        var hour = now.getHours();//得到小时
        var minu = now.getMinutes();//得到分钟
        var sec = now.getSeconds();//得到秒
        var time = year + "-" + month + "-" + date+ " " + hour + ":" + minu + ":" + sec;
        $("#registertime").val(time);
            if ( $("#psd_r").val()!=$("#affirm_psd").val()){
                alert("您两次输入的密码不一致！！！");
                return false;
            }
            $.ajax({
                type: "POST",
                url: "/user/registerUser",
                data: $("#form2").serialize(),
                success: function (result) {
                    if (result!=0){
                        layui.use('layer', function () {
                            layui.layer.alert('注册成功，正在跳转。。。');
                        });
                        setTimeout(function () {
                            window.location.href="Login.jsp";
                        },1000);
                    }
                    else{
                        layui.use('layer', function () {
                            layui.layer.alert('注册失败');
                        });
                        return false;
                    }
                }
            });
    }
</script>
</body>
</html>
