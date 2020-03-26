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
    <title>汽车管理</title>
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
            <a href="#">
                <li><i class="iconfont icon-tubiaozhizuomobanyihuifu-"></i><span>车辆管理</span></li>
            </a>
            <a href="Order.jsp">
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
                <span class="span1">租赁车辆管理  </span> <span class="span2">汽车信息列表</span>
            </div>


            <!--内容白框-->
            <div class="InquireTableBox">
                <iframe allowtransparency="true" frameborder="0" width="180" height="36" scrolling="no" src="//tianqi.2345.com/plugin/widget/index.htm?s=3&z=2&t=0&v=0&d=3&bd=0&k=&f=&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=71267&w=180&h=36&align=center"></iframe>
                <!--查询到的表格-->

                <div class="InquireSelectTable">
                    <form class="layui-form" method="POST" id="examForm">
                        <div class="layui-inline">
                            <label class="layui-form-label">价格</label>
                            <div class="layui-input-inline">
                                <select name="price" id="price" lay-verify="required" lay-search="">
                                    <option value="0">全部</option>
                                    <option value="1">100以下</option>
                                    <option value="2">100-200</option>
                                    <option value="3">200-300</option>
                                    <option value="4">300以上</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">座位</label>
                            <div class="layui-input-inline">
                                <select name="seatnumber" id="seatnumber" lay-verify="required" lay-search="">
                                    <option value="0">全部</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">品牌</label>
                            <div class="layui-input-inline">
                                <select name="brand" id="brand" lay-verify="required" lay-search="">
                                    <option value="0">全部</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label"></label>
                            <div class="layui-input-inline">
                                <button class="layui-btn layui-btn-warm" lay-submit lay-filter="formCars">查询</button>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label"></label>
                            <div class="layui-input-inline" >
                                <input type="button" class="layui-btn layui-btn-normal" onclick="addFloat()" value="添加"></input>
                            </div>
                        </div>
                    </form>
                    <table id="cars"></table>
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
                <span>编辑车辆信息</span>
                <i class="Js_closeBtn iconfont icon-buoumaotubiao20 fr" style="float: right;"></i>
            </div>
            <div class="f_content">
                <form method="get" id="form1">
                    <div class="f_alonediv">
                        汽车编号：<input type="text" name="cnumber" id="u_cnumber" class="CarFloat" readonly="readonly">
                    </div>
                    <div class="f_alonediv">
                        汽车品牌：<input type="text" name="brand" id="u_brand" class="CarFloat" readonly="readonly">
                    </div>
                    <div class="f_alonediv">
                        汽车名称：<input type="text" name="cname" id="u_cname" class="CarFloat" readonly="readonly">
                    </div>
                    <div class="f_alonediv">
                        租借单价：<input type="text" name="price" id="u_price" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        车辆座位：<input type="text" name="seatnumber" id="u_seatnumber" class="CarFloat" readonly="readonly">
                    </div>
                    <div class="f_alonediv">
                        图片地址：<input type="text" name="carphoto" id="u_carphoto" class="CarFloat" readonly="readonly">
                    </div>
                    <div class="publicf_btn">
                        <div class="publicf_btn1">
                            <input type="button" value="确定" onclick="updateCar()">
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
<div class="PublicFloatBox insert insertFloat1" style="display: none;">
    <div class="kongfx">
        <div class=" wid400">
            <div class="f_Head">
                <span>添加汽车信息</span>
                <i class="Js_closeBtn iconfont icon-buoumaotubiao20 fr" style="float: right;"></i>
            </div>
            <div class="f_content">
                <form method="get" id="form2">
                    <div class="f_alonediv">
                        汽车品牌：<input type="text" name="brand" id="a_brand" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        汽车名称：<input type="text" name="cname" id="a_cname" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        租借单价：<input type="text" name="price" id="a_price" class="CarFloat">
                    </div>
                    <div class="f_alonediv">
                        车辆座位：<input type="text" name="seatnumber" id="a_seatnumber" class="CarFloat">
                    </div>

                    <div class="publicf_btn">
                        <div class="publicf_btn1">
                            <input type="button" value="提交" onclick="insertCar()">
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
    function add(cnumber) {
        $.ajax({
            type: "POST",
            url: "/car/addFloatCar?cnumber="+cnumber,
            success: function (result) {
                $(".update").fadeIn(200);
                $("#u_cnumber").val(result.cnumber);
                $("#u_carphoto").val(result.carphoto);
                $("#u_brand").val(result.brand);
                $("#u_cname").val(result.cname);
                $("#u_price").val(result.price);
                $("#u_seatnumber").val(result.seatnumber);
            }
        });
    }

    // 提交修改的值
    function updateCar(){
        $.ajax({
            type: "POST",
            url: "/car/updateCar",
            data: $("#form1").serialize(),
            success: function (result) {
                $(".updatefloat").fadeOut(200);
                if (result!=0){
                    pageCar();
                }
            }
        });
    }

    // 分页查询
    function pageCar() {
        price = $("#price option:selected").val();
        seatnumber = $("#seatnumber option:selected").val();
        brand = $("#brand option:selected").val();
        layui.use('table', function () {
            var table = layui.table;
            table.render({
                elem: '#cars',
                url: '/car/pageCar?price='+price+'&seatnumber='+seatnumber+'&brand='+brand,
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
                    {
                        field: 'carphoto', title: '汽车展示', sort: true,templet:function (data) {
                            return '<img src="'+data.carphoto+'" style="height:100%;width: 100%;margin-left: 30px;" onclick="bigImg(\''+data.carphoto+'\')">';
                        }
                    },
                    {field: 'cnumber',width:125, title: '汽车编号', sort: true},
                    {field: 'brand',width:100, title: '品牌', sort: true},
                    {field: 'cname', title: '车辆名称', sort: true},
                    {field: 'price',width:80, title: '单价', sort: true},
                    {field: 'seatnumber', width:120, title: '座位数', sort: true},
                    {
                        field: 'id',width:180, title: '操作', sort: true, templet: function (data) {
                            return '<a id="update" class="layui-btn layui-btn-blue layui-btn-mini links_edit" href="#" onclick="add(\''+data.cnumber+'\')" style="text-decoration:none;"><i class="iconfont icon-edit"></i>修改</a>'
                                +'<a id="delete" class="layui-btn layui-btn-danger layui-btn-mini links_edit" href="#" onclick="todel(\''+data.cnumber+'\')" style="text-decoration:none;"><i class="iconfont icon-edit"></i>删除</a>';
                        }
                    }
                ]]
            });
        });
    }
    pageCar();
    //询问是否删除
    function todel(cnumber) {
        var msg = "您真的确定要删除吗？\n\n请确认！";
        if (confirm(msg)==true){
            deleteCar(cnumber);
        }else{
            return false;
        }
    }
    //删除按钮
    function deleteCar(cnumber) {
        $.ajax({
            type: "POST",
            url: "/car/deleteCar?cnumber="+cnumber,
            dataType: "json",
            success: function (result) {
                if (result!=0){
                    pageCar();
                }
            }
        })
    }
    //放大图片
    function bigImg(imgSrc) {
        layui.use('layer', function () {
            layui.layer.alert('<img id="ddz" src="'+imgSrc+'" style="height: 250px; margin:0px auto;">');
        });
    }
    //点击查询跳转
    layui.use(['form','layer'], function(){
        layui.form.on('submit(formCars)', function(dataForm) {
            pageCar();
            return false;
        });
    });
//获取码表值
    $.ajax({
        type: "POST",
        url: "/car/getCarMb",
        dataType: "json",
        success: function(data){
            layui.use('form', function(){
                var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
                arr = data.data.seatnumber;
                for (i=0; i<arr.length; i++) {
                    $('#seatnumber').append('<option value="'+arr[i]+'">'+arr[i]+'</option>');
                }
                arr = data.data.brand;
                for (i=0; i<arr.length; i++) {
                    $('#brand').append('<option value="'+arr[i]+'">'+arr[i]+'</option>');
                }
                form.render();
            });

        },
        error:function(e){
            console.log(e);
        }
    })

    // 点击打开插入框
    function addFloat(){
        $(".insertFloat1").fadeIn(200);
    }
    // 插入车辆数据
    function insertCar(){

    }
</script>
</body>
</html>