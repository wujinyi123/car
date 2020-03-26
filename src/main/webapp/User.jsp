<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link href="css/reset.css" rel="stylesheet"/>
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <link href="css/iconfont.css" rel="stylesheet"/>
    <link href="css/plan.css" rel="stylesheet"/>
    <link href="css/plan2.css" rel="stylesheet"/>
    <link href="css/plan3.css" rel="stylesheet"/>
    <link href="layui/css/layui.css" rel="stylesheet"/>
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/plan.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="layui/layui.js"></script>
    <title>用户管理</title>
</head>

<body>
<div class="PublicHead clearfix">
    <div class="leftBox clearfix">
        <div class="companyLogo">
            <img src="images/dongruan.jpg"/>
        </div>
        <!--<i class="iconfont icon-caidan"></i>-->

        <div class="companyText">
            汽车租赁商家管理平台
        </div>
    </div>
    <div class="RightBox clearfix">
        <div class="UserPhotoBox">
            <div class="UserPic">
                <img src="images/user.jpg"/>
            </div>
            <div class="UserName">
                商家
            </div>
        </div>
        <a href="index.html">
            <div class="dropOutBox">
                <i class="iconfont icon-app_icons--">
                </i>
                <span>退出</span>
            </div>
        </a>
    </div>
</div>

<div class="PublicDownWhole clearfix">
    <!--左侧-->
    <div class="leftBox">
        <ul>
            <a href="Car.jsp">
                <li><i class="iconfont icon-tubiaozhizuomobanyihuifu-"></i><span>车辆管理</span></li>
            </a>
            <a href="Order.jsp">
                <li><i class="iconfont icon-app_icons--"></i><span>订单管理</span></li>
            </a>
            <a href="#">
                <li><i class="iconfont icon-weibiaoti1"></i><span>用户管理</span></li>
            </a>
        </ul>
    </div>
    <!--右侧-->
    <div class="RightBox">
        <div class="PublicContentBox">
            <!--公用指向页面名字-->
            <div class="PublicPointToAgeText">
                <span class="span1">用户管理  </span> <span class="span2">用户信息列表</span>
            </div>


            <!--内容白框-->
            <div class="InquireTableBox">
                <iframe allowtransparency="true" frameborder="0" width="180" height="36" scrolling="no" src="//tianqi.2345.com/plugin/widget/index.htm?s=3&z=2&t=0&v=0&d=3&bd=0&k=&f=&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=71267&w=180&h=36&align=center"></iframe>
                <!--查询到的表格-->

                <div class="InquireSelectTable">
                    <form class="layui-form" method="POST" id="examForm">
                        <div class="layui-inline">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-inline">
                                <input type="text" name="uname" id="uname"  placeholder="输入用户名关键字" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">邮箱</label>
                            <div class="layui-input-inline">
                                <input type="text" name="email" id="email"  placeholder="输入完整的邮箱号" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">黑名单</label>
                            <div class="layui-input-inline">
                                <select name="blacklist" id="blacklist" lay-verify="required" lay-search="">
                                    <option value="empty">全部</option>
                                    <option value="0">非黑名单</option>
                                    <option value="1">黑名单</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">类型</label>
                            <div class="layui-input-inline">
                                <select name="flag" id="flag" lay-verify="required" lay-search="">
                                    <option value="all">全部</option>
                                    <option value="0">管理员</option>
                                    <option value="1">普通用户</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label"></label>
                            <div class="layui-input-block">
                                <button class="layui-btn layui-btn-warm" lay-submit lay-filter="formUsers">查询</button>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label"></label>
                            <div class="layui-input-block" >
                                <input type="button" class="layui-btn layui-btn-normal" onclick="addFloat()" value="添加"></input>
                            </div>
                        </div>
                    </form>
                    <table id="users"></table>
                </div>
            </div>
        </div>

    </div>
</div>

<!--模态框编辑产品信息浮层-->
<div class="PublicFloatBox adduser update updatefloat">
    <div class="kongfx">
        <div class=" wid400">
            <div class="f_Head">
                <span>编辑用户信息</span>
                <i class="Js_closeBtn iconfont icon-buoumaotubiao20 fr" style="float: right;"></i>
            </div>
            <div class="f_content">
                <form method="get" id="form1">
                    <div class="f_alonediv">
                        用户编号：<input type="text" name="unumber" id="u_unumber" class="CarFloat" readonly="readonly">
                    </div>
                    <div class="f_alonediv">
                        用户姓名：<input type="text" name="uname" id="u_uname" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        用户账号：<input type="text" name="accountnumber" id="u_accountnumber" class="CarFloat " readonly="readonly">
                    </div>
                    <div class="f_alonediv">
                        用户邮箱：<input type="text" name="email" id="u_email" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        名单状态：
                        <select name="blacklist" id="u_blacklist" class="CarFloat">
                            <option value="0">正常</option>
                            <option value="1">黑名单</option>
                        </select>
                    </div>
                    <div class="f_alonediv">
                        用户类型：
                        <select name="flag" id="u_flag" class="CarFloat">
                            <option value="0">管理员</option>
                            <option value="1">普通用户</option>
                        </select>
                    </div>
                    <div class="publicf_btn">
                        <div class="publicf_btn1">
                            <input type="button" value="确定" onclick="updateUser()">
                        </div>
                        <div class="publicf_btn2 fr Js_closeBtn">
                            <input type="button" value="取消">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- 模态框添加浮层中的数据 -->
<div class="PublicFloatBox insert insertFloat" style="display: none;">
    <div class="kongfx">
        <div class=" wid400">
            <div class="f_Head">
                <span>添加用户信息</span>
                <i class="Js_closeBtn iconfont icon-buoumaotubiao20 fr" style="float: right;"></i>
            </div>
            <div class="f_content">
                <form method="get" id="form2">
                    <div class="f_alonediv">
                        用户姓名：<input type="text" name="uname" id="a_uname" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        用户账号：<input type="text" name="accountnumber" id="a_accountnumber" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        用户密码：<input type="password" name="password" id="a_password" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        再次输入：<input type="password" name="password2" id="a_password2" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        用户邮箱：<input type="text" name="email" id="a_email" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        名单状态：
                        <select name="flag" id="a_flag" class="CarFloat">
                            <option value="0">管理员</option>
                            <option value="1" selected>普通用户</option>
                        </select>
                    </div>
                    <div class="publicf_btn">
                        <div class="publicf_btn1">
                            <input type="button" value="提交" onclick="insertUser()">
                        </div>
                        <div class="publicf_btn2 fr Js_closeBtn">
                            <input type="button" value="取消">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>

<!-- 弹框的编辑数值-->
<script type="text/javascript">

    /* 添加品牌字符串 */
    function addString() {
        var result = '';
        $('input[name="inlineRadioOptions"]:checked').each(function (index, value) {
            if ($(value).val() != 'on') {
                result += $(this).val() + ',';
            }
        });
        if (result == '') {
            alert('没有选择任何品牌！')
            return false;
        } else {
            $("brand").attr("value", result);
        }
    }
    // 赋值到编辑框
    function add(unumber,uname,accountnumber,blacklist,flag,email) {
        $(".update").fadeIn(200);
        $("#u_unumber").val(unumber);
        $("#u_uname").val(uname);
        $("#u_accountnumber").val(accountnumber);
        $('#u_blacklist').val(blacklist);
        $("#u_flag").val(flag);
        $("#u_email").val(email);
    }

    // 提交修改的值
    function updateUser(){
        $.ajax({
            type: "POST",
            url: "/user/updateUser",
            data: $("#form1").serialize(),
            success: function (result) {
                $(".updatefloat").fadeOut(200);
                if (result!=0){
                    pageUser();
                }
            }
        });
    }

    // 分页查询
    function pageUser() {
        uname = $("#uname").val();
        blacklist = $("#blacklist").val();
        email = $("#email").val();//在此处添加邮箱判断
        flag = $("#flag").val();
        layui.use('table', function () {
            var table = layui.table;
            table.render({
                elem: '#users',
                url: '/user/pageUser?uname='+uname+'&blacklist='+blacklist+'&email='+email+'&flag='+flag,
                page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                    layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'], //自定义分页布局
                    limits: [5, 10, 15],
                    limit: 10,
                    curr: 1,
                    groups: 5, //只显示 1 个连续页码
                    first: '首页',
                    last: '尾页',
                    skin: 'row',
                    page: true,
                    even: true,
                    done: function (res) {
                        userPage.data = res.data;
                    }
                },
                cols: [[
                    {field: 'unumber',width:115, title: '用户编号', sort: true},
                    {field: 'uname',width:115, title: '用户名称', sort: true},
                    {field: 'accountnumber',width:125, title: '用户账号', sort: true},
                    {field: 'email', title: '用户邮箱', sort: true},
                    {field: 'flag',width:115, title: '用户类型', sort: true},
                    {field: 'blacklist',width:120, title: '黑名单状态', sort: true},
                    {
                        field: 'id',width:180, title: '操作', sort: true, templet: function (data) {
                            return '<a id="update" class="layui-btn layui-btn-blue layui-btn-mini links_edit" href="#" onclick="add(\''+data.unumber+'\',\''+data.uname+'\',\''+data.accountnumber+'\',\''+data.blacklist+'\',\''+data.flag+'\',\''+data.email+'\')" style="text-decoration:none;"><i class="iconfont icon-edit"></i>修改</a>'
                                +'<a id="delete" class="layui-btn layui-btn-danger layui-btn-mini links_edit" href="#" onclick="todel(\''+data.unumber+'\')" style="text-decoration:none;"><i class="iconfont icon-edit"></i>删除</a>';
                        }
                    }
                ]]
            });
        });
    }
    pageUser();
    //询问是否删除
    function todel(unumber) {
        var msg = "您真的确定要删除吗？\n\n请确认！";
        if (confirm(msg)==true){
            deleteUser(unumber);
        }else{
            return false;
        }
    }
    //删除按钮
    function deleteUser(unumber) {
        $.ajax({
            type: "POST",
            url: "/user/deleteUser?unumber="+unumber,
            dataType: "json",
            success: function (result) {
                if (result!=0){
                    pageUser();
                }
            }
        })
    }
    //点击查询跳转
    layui.use(['form','layer'], function(){
        layui.form.on('submit(formUsers)', function(dataForm) {
            pageUser();
            return false;
        });
    });

    // 点击打开插入框
    function addFloat(){
        $(".insertFloat").fadeIn(200);
    }
    // 插入车辆数据
    function insertUser(){
        if ( $("#a_password").val()!=$("#a_password2").val()){
            alert("您两次输入的密码不一致！！！");
            return false;
            $(".insertFloat").fadeOut(200);
        }
        $.ajax({
            type: "POST",
            url: "/user/insertUser",
            data: $("#form2").serialize(),
            success: function (result) {
                $(".insertFloat").fadeOut(200);
                if (result!=0){
                    pageUser();
                }
            }
        });
    }
</script>
</body>
</html>