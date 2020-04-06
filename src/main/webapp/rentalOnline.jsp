<%--
  Created by IntelliJ IDEA.
  User: 邓大忠
  Date: 2020/3/28
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>卡尔租车</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/datedropper.css">
    <link rel="stylesheet" href="css/timedropper.min.css">
    <link rel="stylesheet" href="css/RentalOnline.css">
    <link href="layui/css/layui.css" rel="stylesheet"/>
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/cityAndPro.js"></script>
    <script src="layui/layui.js"></script>
</head>
<body>
<!-- 头部 -->
<div class="header">
    <div class="logo"><img src="../img/logo.jpg" alt=""></div>
    <div class="header2">
        <div class="spann1" style="color: white;">Car</div>
        <!-- 导航栏 -->
        <nav class="nav row">
            <li class="li1 col-md-2"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
            <li class="col-md-2"><a href="#"><span class="glyphicon glyphicon-globe"></span>&nbsp;在线租车</a></li>
            <li class="col-md-2"><a href="carBrowsing.jsp"><span class="glyphicon glyphicon-picture"></span>&nbsp;车型查询</a></li>
            <li class="col-md-2"><a href="userOrders.jsp"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;我的订单</a></li>
            <li class="col-md-2"><a href="Personal.jsp" target="_blank"><span class="glyphicon glyphicon-user"></span>&nbsp;个人中心</a></li>
        </nav>
    </div>
    <div class="touxiang">
        <a href="javascript:;" style="color: white;"> ${sessionScope.thisUser.uname}，欢迎您</a>
        <a href="javascript:;"><span><img src="../img/xiaoyanzi.jpeg" alt="" class="pic2"></span></a>
    </div>
</div>
<!-- 固定导航栏 -->
<script>
    $(window).scroll(function(){
        var h=$(window).scrollTop();
        if(h>=100){
            $('.nav').addClass('one')
            $('.nav-down').addClass('two')
        }
        else{
            $('.nav').removeClass('one')
            $('.nav-down').removeClass('two')
        }   // 获取滚轮滚动的长度
    })
</script>
<!-- 侧导航栏 -->
<div class="left-nav">
    <ul>
        <a href="#"><li class="nav-span glyphicon glyphicon-chevron-up" title='返回顶部'></li></a>
        <a href="javascript:;"><li class="nav-span glyphicon glyphicon-thumbs-up" title='用户反馈'></li></a>
        <a href="javascript:;"><li class="nav-span glyphicon glyphicon-comment" title='社区'></li></a>
        <a href="javascript:;"><li class="nav-span glyphicon glyphicon-user" title='个人中心'></li></a>
        <a href="javascript:;"><li class="nav-span glyphicon glyphicon-list-alt" title='订单'></li></a>
        <a href="javascript:;"><li class="nav-span glyphicon glyphicon-signal" title='数据'></li></a>
    </ul>
</div>

<!-- 搜索栏 -->
<form action="" id="form1">
    <div class="sousuolan">
        <!-- 城市选择 -->
        <div class="citychoise">
            <div class="form-group">
                <label class="control-label glyphicon glyphicon-map-marker">所在地址:</label>
                <div class="chengshixuanze">
                    <div class="sheng">
                        <select name="input_province" id="input_province" class="form-control">
                            <option value="">--请选择--</option>
                        </select>
                    </div>
                    <div class="shi">
                        <select name="input_city" id="input_city" class="form-control">
                            <option value="">--请选择--</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <!-- 时间选择 -->
        <div class="timechoise">
            <div id="pcartime_r"  class="StratTime">
                <div class="demo">
                    <p class="glyphicon glyphicon-calendar">取车时间：</p>
                    <input type="text" name="pcartime" class="input" id="pcartime" />
                </div>
            </div>
            <div id="rcartime_r"  class="EndTime">
                <div class="demo">
                    <p class="glyphicon glyphicon-calendar">还车时间：</p>
                    <input type="text" name="rcartime" class="input" id="rcartime" />
                </div>
            </div>
        </div>
    </div>
    <div class="shaixuan">
        <div class="layui-inline">
            <label class="layui-form-label glyphicon glyphicon-yen" style="width: 80px;padding: 0px;margin-top: 7px;font-weight: bold;margin-right: 6px;">车辆价格:</label>
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
            <label class="layui-form-label glyphicon glyphicon-equalizer" style="width: 80px;padding: 0px;margin-top: 7px;font-weight: bold;margin-right: 15px;">车辆座位:</label>
            <div class="layui-input-inline">
                <select name="seatnumber" id="seatnumber" lay-verify="required" lay-search="">
                    <option value="0">全部</option>
                </select>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label glyphicon glyphicon-credit-card" style="width: 80px;padding: 0px;margin-top: 7px;font-weight: bold;margin-right: 15px;">车辆品牌:</label>
            <div class="layui-input-inline">
                <select name="brand" id="brand" lay-verify="required" lay-search="">
                    <option value="0">全部</option>
                </select>
            </div>
        </div>
        <!-- 结果提交 -->
        <div style="float: right;margin-right: 50px;">
            <input class="check btn btn-success" type="button" value="查询车辆" onclick="listCar()">
        </div>
    </div>
</form>
<div class="show" id="show">
    <table style="width: 100%;" class="showtable">
        <thead>
        <tr class="thead_tr"><th>车辆图片</th><th>车辆品牌</th><th>车辆名称</th><th>租赁单价</th><th>车辆座位</th><th>订单操作</th></tr>
        </thead>
        <tbody id="thisBody"></tbody>
    </table>
</div>


<!-- 筛选 -->
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script src="js/datedropper.min.js"></script>
<script src="js/timedropper.min.js"></script>
<script>
    $(function() {
        var html = "";
        var province_idx;
        $("#input_city").append(html);

        $.each(cityMessage, function(idx, item) {
            if(item.parid == '1'){
                html += "<option value='" + item.regname + "' exid='" + item.regid + "'>" + item.regname + "</option>";
            }

        });
        $("#input_province").append(html);
        $("#input_province").change(function(e) {
            var province =$(this).val();
            var cityList = [];
            if(province == "") return;
            $("#input_city option").remove();
            var html = "<option value=''>--请选择--</option>";

            //					获取已选择的省份的数组下标
            $.each(cityMessage, function(idx, item) {
                if(province == item.regname && item.parid == '1') {
                    province_idx=idx
                }
            })

            //					获取已选择的省份的城市列表
            $.each(cityMessage, function(idx, item) {
                if(cityMessage[idx].parid == cityMessage[province_idx].regid) {
                    cityList.push(cityMessage[idx])
                }
            })

            //					添加城市信息给标签
            if(cityList instanceof Array && cityList.length>0){
                $.each(cityList, function(idx, item) {
                    console.log(item)
                    html += "<option value='" + item.regname + "' exid='" + item.regid + "'>" + item.regname + "</option>";

                });
            }else{
                html += "<option value='" + cityMessage[province_idx].regname + "' exid='" + cityMessage[province_idx].regid + "'>" + cityMessage[province_idx].regname + "</option>";

            }
            $("#input_city").append(html);
        });
    });
</script>
<script>

    $("#pcartime").dateDropper({
        animate: false,
        format: 'Y-m-d',
        maxYear: '2020'
    });
    $("#rcartime").dateDropper({
        animate: false,
        format: 'Y-m-d',
        maxYear: '2020'
    });
</script>
<script>
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

    // 查询车辆
    function listCar(){
        $.ajax({
            type: "POST",
            url: "/car/checkCar",
            dataType: 'json',
            data: $("#form1").serialize(),
            success:function(result){
                // 请求成功时执行该函数内容，result即为服务器返回的json对象
                if (result != null && result.length > 0) {
                    var count=0;
                    $('#thisBody').html('');
                    for(var i=0;i<result.length;i++){
                            newTr = $('<tr>');
                            newTr.append('<td class="td1 .col-md-2"><img src="'+result[i].carphoto+'" style="height:100%;width: 100%;"></td>');
                            newTr.append('<td class="td2 .col-md-2">'+result[i].brand+'</td>');
                            newTr.append('<td class="td2 .col-md-2">'+result[i].cname+'</td>');
                            newTr.append('<td class="td2 .col-md-2">'+result[i].price+'元/日均'+'</td>');
                            newTr.append('<td class="td2 .col-md-2">'+result[i].seatnumber+'</td>');
                            newTr.append('<td class="td3 .col-md-2"><button class="btn btn-info" onclick="reserve(\''+result[i].price+'\',\''+result[i].cnumber+'\')">预定</button></td>');
                            $('#thisBody').append(newTr);
                        count = count +1;
                    }
                }else {
                    layui.use('layer', function () {
                        layui.layer.alert('<span style="font-size:16px;">无车辆信息</span>', {icon: 1});
                    });
                    userOrders();
                    setTimeout(function () {
                        layer.close(layer.index);
                    },1500)
                }
            }
        })
    }
    // 页面刷新
    listCar();

    // 点击预定
    function reserve(price,cnumber){
        if ($('#input_province').val()=='' || $('#input_province').val()==null){
            alert("地点选择不能为空");
            return false;
        }else if($('#pcartime').val()=='' || $('#pcartime').val()==null){
            alert("您未选择取车时间");
            return false;
        }else if($('#rcartime').val()!='' && $('#rcartime').val()<=$('#pcartime').val()){
            alert("还车时间不能早与取车时间");
            return false;
        }
        else{
            var jsonData = {
                input_province: $('#input_province').val(),
                input_city: $('#input_city').val(),
                pcartime: $('#pcartime').val(),
                rcartime: $('#rcartime').val(),
                price: price,
                brand: $('#brand').val(),
                seatnumber: $('#seatnumber').val(),
                unumber: '4',
                cnumber:cnumber
            };
            <%--unumber:${sessionScope.thisUser.unumber}--%>
            $.ajax({
                type: "POST",
                url: "/order/reserveOrder",
                dataType: "json",
                contentType: "application/json;charset=utf-8",
                data: JSON.stringify(jsonData),
                success: function(result){
                    if (result=='1' || result==1) {
                        layui.use('layer', function () {
                            layui.layer.alert('<span style="font-size:16px;">预定成功</span>', {icon: 1});
                        });
                        setTimeout(function () {
                                layer.close(layer.index);
                            },1500)
                    } else {
                        layui.use('layer', function () {
                            layui.layer.alert('<span style="font-size:16px;">预定失败</span>', {icon: 2});
                        });
                        setTimeout(function () {
                                layer.close(layer.index);
                            },1500)
                    }
                },
                error:function(e){
                    console.log(e);
                }
            });
        }
    }
</script>

</body>
</html>
