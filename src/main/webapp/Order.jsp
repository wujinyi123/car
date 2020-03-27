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
    <title>订单管理</title>
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
            <a href="#">
                <li><i class="iconfont icon-app_icons--"></i><span>订单管理</span></li>
            </a>
            <a href="User.jsp">
                <li><i class="iconfont icon-weibiaoti1"></i><span>用户管理</span></li>
            </a>
        </ul>
    </div>
    <!--右侧-->
    <div class="RightBox">
        <div class="PublicContentBox">
            <!--公用指向页面名字-->
            <div class="PublicPointToAgeText">
                <span class="span1">租赁订单管理  </span> <span class="span2">汽车订单信息列表</span>
            </div>


            <!--内容白框-->
            <div class="InquireTableBox">
                <iframe allowtransparency="true" frameborder="0" width="180" height="36" scrolling="no" src="//tianqi.2345.com/plugin/widget/index.htm?s=3&z=2&t=0&v=0&d=3&bd=0&k=&f=&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=71267&w=180&h=36&align=center"></iframe>
                <!--查询到的表格-->

                <div class="InquireSelectTable">
                    <form class="layui-form layui-card-body" method="POST" id="examForm">
                        <div class="layui-inline">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-inline">
                                <input type="text" name="uname" id="uname"  placeholder="输入用户名关键字" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">车名</label>
                            <div class="layui-input-inline">
                                <input type="text" name="cname" id="cname"  placeholder="输入车辆名关键字" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">地址</label>
                            <div class="layui-input-inline">
                                <input type="text" name="address" id="address"  placeholder="输入地址名关键字" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">价格</label>
                            <div class="layui-input-inline">
                                <select name="uprice" id="uprice" lay-verify="required" lay-search="">
                                    <option value="0">全部</option>
                                    <option value="1">100以下</option>
                                    <option value="2">100-200</option>
                                    <option value="3">200-300</option>
                                    <option value="4">300以上</option>
                                </select>
                            </div>
                        </div>

                        <div class="layui-form-item layui-inline" >
                            <div class="layui-input-block">
                                <button class="layui-btn layui-btn-warm" lay-submit lay-filter="formCars">查询</button>
                            </div>
                        </div>
                        <div class="layui-inline" style="margin-bottom: 15px;">
                            <div class="layui-input-block" >
                                <input type="button" class="layui-btn layui-btn-normal" onclick="addFloat()" value="添加"></input>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">状态</label>
                            <div class="layui-input-inline">
                                <select name="ostate" id="ostate" lay-verify="required" lay-search="">
                                    <option value="empty">全部</option>
                                    <option value="1">已还车</option>
                                    <option value="0">未还车</option>
                                </select>
                            </div>
                        </div>
                    </form>
                    <table id="orders"></table>
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
                <span>编辑订单信息</span>
                <i class="Js_closeBtn iconfont icon-buoumaotubiao20 fr" style="float: right;"></i>
            </div>
            <div class="f_content">
                <form method="get" id="form1">
                    <div class="f_alonediv">
                        订单编号：<input type="text" name="onumber" id="u_onumber" class="CarFloat" readonly="readonly">
                    </div>
                    <div class="f_alonediv">
                        汽车编号：<input type="text" name="cnumber" id="u_cnumber" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        用户编号：<input type="text" name="unumber" id="u_unumber" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        地址信息：<input type="text" name="address" id="u_address" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        租赁单价：<input type="text" name="uprice" id="u_uprice" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        租赁总价：<input type="text" name="tprice" id="u_tprice" class="CarFloat" readonly="readonly">
                    </div>
                    <div class="f_alonediv">
                        取车时间：<input type="text" name="pcartime" id="u_pcartime" class="CarFloat" readonly="readonly">
                    </div>
                    <div class="f_alonediv">
                        还车时间：<input type="text" name="rcartime" id="u_rcartime" class="CarFloat" readonly="readonly">
                    </div>
                    <div class="publicf_btn">
                        <div class="publicf_btn1">
                            <input type="button" value="确定" onclick="updateOrder()">
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
                <span>添加订单信息</span>
                <i class="Js_closeBtn iconfont icon-buoumaotubiao20 fr" style="float: right;"></i>
            </div>
            <div class="f_content">
                <%--<form method="get" id="form2">--%>
                    <%--<div class="f_alonediv">--%>
                        <%--汽车编号：<input type="text" name="cnumber" id="a_cnumber" class="CarFloat" required lay-verify="required">--%>
                    <%--</div>--%>
                    <%--<div class="f_alonediv">--%>
                        <%--用户编号：<input type="text" name="unumber" id="a_unumber" class="CarFloat" required lay-verify="required">--%>
                    <%--</div>--%>
                    <%--<div class="f_alonediv">--%>
                        <%--地址信息：<input type="text" name="address" id="a_address" class="CarFloat" required lay-verify="required">--%>
                    <%--</div>--%>
                    <%--<div class="f_alonediv">--%>
                        <%--租赁单价：<input type="text" name="uprice" id="a_uprice" class="CarFloat" required lay-verify="required">--%>
                    <%--</div>--%>
                    <%--<div class="f_alonediv">--%>
                        <%--取车时间：<input type="date" name="pcartime" id="a_pcartime" class="CarFloat" required lay-verify="required">--%>
                    <%--</div>--%>
                    <%--<div class="publicf_btn">--%>
                        <%--<div class="publicf_btn1">--%>
                            <%--<input type="button" value="提交" onclick="insertOrder()">--%>
                        <%--</div>--%>
                        <%--<div class="publicf_btn2 fr Js_closeBtn">--%>
                            <%--<input type="button" value="取消">--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</form>--%>
                    <form class="layui-form layui-card-body" method="POST" id="form2">
                        <div class="layui-form-item">
                            <label class="layui-form-label">汽车编号：</label>
                            <div class="layui-input-block">
                                <input type="text" style="width: 200px;" id="a_cnumber" name="a_cnumber" onkeyup="value=zhzs(this.value)" required  lay-verify="required" placeholder="请输入汽车编号" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户编号：</label>
                            <div class="layui-input-block">
                                <input type="text" style="width: 200px;" id="a_unumber" name="a_unumber" onkeyup="value=zhzs(this.value)" required  lay-verify="required" placeholder="请输入用户编号" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">地址信息：</label>
                            <div class="layui-input-block">
                                <input type="text" style="width: 200px;" id="a_address" name="a_address"  required  placeholder="例：广东广州" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">租赁单价：</label>
                            <div class="layui-input-block">
                                <input type="text" style="width: 200px;" id="a_uprice" name="a_uprice" onkeyup="value=zhzs(this.value)" required  lay-verify="number" placeholder="请输入租赁单价" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">取车时间</label>
                            <div class="layui-input-block">
                                <input type="text" name="a_pcartime" id="a_pcartime" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn layui-btn-blue" lay-submit lay-filter="insertOrder">立即提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
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

    //新建Order
    layui.use(['form','layer'], function(){
        layui.form.on('submit(insertOrder)', function(dataForm){
            var jsonData = {
                cnumber:$('#a_cnumber').val(),
                unumber:$('#a_unumber').val(),
                address:$('#a_address').val(),
                uprice:$('#a_uprice').val(),
                pcartime:$('#a_pcartime').val()
            }
            $.ajax({
                type: "POST",
                url: "/order/insertOrder",
                dataType: "json",
                contentType: "application/json;charset=utf-8",
                data: JSON.stringify(jsonData),
                success: function(data){
                    alert("jinlai");
                    if (data==1 || data=='1') {
                        layui.use('layer', function () {
                            layui.layer.alert('<span style="font-size:16px;">添加成功</span>', {icon: 1});
                        });
                    } else {
                        layui.use('layer', function () {
                            layui.layer.alert('<span style="font-size:16px;">添加失败</span>', {icon: 2});
                        });
                    }
                        pageOrder();
                        $('#a_cnumber').val(''),
                        $('#a_unumber').val(''),
                        $('#a_address').val(''),
                        $('#a_uprice').val(''),
                        $('#a_pcartime').val('')
                    $(".insertFloat1").fadeOut(200);
                },
                error:function(e){
                    console.log(e);
                }
            });
            return false;
        });
    });

    //转化正整数
    function zhzs(value){
        value = value.replace(/[^\d]/g,'');
        if(''!=value){
            value = parseInt(value);
        }
        return value;
    }

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
    function add(onumber,cnumber,unumber,address,uprice,tprice,pcartime,rcartime) {
        $(".update").fadeIn(200);
        $("#u_onumber").val(onumber);
        $("#u_cnumber").val(cnumber);
        $("#u_unumber").val(unumber);
        $("#u_address").val(address);
        $("#u_uprice").val(uprice);
        $("#u_tprice").val(tprice);
        $("#u_pcartime").val(pcartime);
        $("#u_rcartime").val(rcartime);
    }

    // 提交修改的值
    function updateOrder(){
        $.ajax({
            type: "POST",
            url: "/order/updateOrder",
            data: $("#form1").serialize(),
            success: function (result) {
                $(".updatefloat").fadeOut(200);
                if (result!=0){
                    pageOrder();
                }
            }
        });
    }

    // 分页查询
    function pageOrder() {
        uname = $("#uname").val();
        cname = $("#cname").val();
        address = $("#address").val();
        uprice = $("#uprice option:selected").val();
        ostate = $("#ostate option:selected").val();
        layui.use('table', function () {
            var table = layui.table;
            table.render({
                elem: '#orders',
                url: '/order/pageOrder?uname='+uname+'&cname='+cname+'&address='+address+'&uprice='+uprice+'&ostate='+ostate,
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
                    {field: 'onumber', title: '订单编号', sort: true},
                    {field: 'cname', title: '汽车名称', sort: true},
                    {field: 'uname', title: '用户名称', sort: true},
                    {field: 'address', title: '地址', sort: true},
                    {field: 'uprice', title: '单价', sort: true},
                    {field: 'tprice', title: '总价', sort: true},
                    {field: 'pcartime', title: '取车时间', sort: true},
                    {field: 'rcartime', title: '还车时间', sort: true},
                    {field: 'ostate', title: '订单状态', sort: true},
                    {
                        field: 'id', title: '操作', sort: true, templet: function (data) {
                            return '<a id="update" class="layui-btn layui-btn-blue layui-btn-mini links_edit" href="#" onclick="add(\''+data.onumber+'\',\''+data.cnumber+'\',\''+data.unumber+'\',\''+data.address+'\',\''+data.uprice+'\',\''+data.tprice+'\',\''+data.pcartime+'\',\''+data.rcartime+'\')" style="text-decoration:none;"><i class="iconfont icon-edit"></i>修改</a>'
                                +'<a id="delete" class="layui-btn layui-btn-danger layui-btn-mini links_edit" href="#" onclick="todel(\''+data.onumber+'\')" style="text-decoration:none;"><i class="iconfont icon-edit"></i>删除</a>';
                        }
                    }
                ]]
            });
        });
    }
    pageOrder();
    //询问是否删除
    function todel(onumber) {
        var msg = "您真的确定要删除吗？\n\n请确认！";
        if (confirm(msg)==true){
            deleteOrder(onumber);
        }else{
            return false;
        }
    }
    //删除按钮
    function deleteOrder(onumber) {
        $.ajax({
            type: "POST",
            url: "/order/deleteOrder?onumber="+onumber,
            dataType: "json",
            success: function (result) {
                if (result!=0){
                    pageOrder();
                }
            }
        })
    }
    //点击查询跳转
    layui.use(['form','layer'], function(){
        layui.form.on('submit(formCars)', function(dataForm) {
            pageOrder();
            return false;
        });
    });

    // 点击打开插入框
    function addFloat(){
        $(".insertFloat").fadeIn(200);
    }
    // 插入车辆数据
    // function insertOrder(){
    //     $.ajax({
    //         type: "POST",
    //         url: "/order/insertOrder",
    //         data: $("#form2").serializeArray(),
    //         success: function (result) {
    //             $(".insertFloat").fadeOut(200);
    //             if (result!=0){
    //                 pageOrder();
    //             }
    //         }
    //     });
    // }
</script>
</body>
</html>