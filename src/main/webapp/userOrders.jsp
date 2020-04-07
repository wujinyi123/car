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
    <link rel="stylesheet" href="css/userOrders.css">
    <link href="layui/css/layui.css" rel="stylesheet"/>
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/cityAndPro.js"></script>
    <script src="layui/layui.js"></script>
</head>
<body>
<!--荧光点点-->
<div class="wel" id="git"></div>
<!-- 头部 -->
<div class="header">
    <div class="logo"><img src="../img/logo22.jpg" alt=""></div>
    <div class="header2">
        <div class="spann1"></div>
        <!-- 导航栏 -->
        <nav class="nav">
            <li class="li1 col-md-2"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
            <li class="col-md-2"><a href="rentalOnline.jsp"><span class="glyphicon glyphicon-globe"></span>&nbsp;在线租车</a></li>
            <li class="col-md-2"><a href="carBrowsing.jsp"><span class="glyphicon glyphicon-picture"></span>&nbsp;车型查询</a></li>
            <li class="col-md-2"><a href="#"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;我的订单</a></li>
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
<%--内容--%>
<div class="content">
    <%--标题头部--%>
    <div class="c_head">
        <h2>我的订单</h2>
    </div>
    <%--订单显示--%>
    <div class="c_body">
        <table style="width: 100%;" class="showtable">
            <thead>
            <tr class="thead_tr"><th>车辆图片</th><th>车辆名称</th><th>租赁单价</th><th>租赁总价</th><th>提车日期</th><th>还车日期</th><th>结账状态</th></tr>
            </thead>
            <tbody id="thisBody"></tbody>
        </table>
    </div>
</div>

<script>
    // 预约订单显示
    function userOrders(){
        var unumber = ${sessionScope.thisUser.unumber};
        $.ajax({
            type: "POST",
            url: "/order/userOrders?unumber="+unumber,
            success:function(result){
                if (result != null && result.length > 0) {
                    var count=0;
                    $('#thisBody').html('');
                    for(var i=0;i<result.length;i++){
                        newTr = $('<tr>');
                        newTr.append('<td class="td1"><img src="'+result[i].carphoto+'" style="height:100%;width: 100%;"></td>');
                        newTr.append('<td class="td2">'+result[i].cname+'</td>');
                        newTr.append('<td class="td2">'+result[i].uprice+'元/日均'+'</td>');
                        newTr.append('<td class="td2">'+(result[i].tprice==null?"无":result[i].tprice+'元')+'</td>');
                        newTr.append('<td class="td2">'+result[i].pcartime+'</td>');
                        newTr.append('<td class="td2">'+(result[i].rcartime==null?"无":result[i].rcartime)+'</td>');
                        if(result[i].pay=="1" || result[i].pay==1){
                            newTr.append('<td class="td3 .col-md-2"><h4>已结账</h4></td>');
                        }
                        else{
                            newTr.append('<td class="td3 .col-md-2"><button class="btn btn-info" onclick="account(\''+result[i].onumber+'\')">结账</button></td>');
                        }
                        $('#thisBody').append(newTr);
                        count = count +1;
                    }
                    console.log(count);
                }else {
                    layui.use('layer', function () {
                        layui.layer.alert('<span style="font-size:16px;">无订单信息</span>', {icon: 1});
                    });
                    setTimeout(function () {
                        layer.close(layer.index);
                    },1500)
                }
            }
        })
    }
    userOrders();

    function account(onumber){
        var myDate = new Date();
        var nowDate =  myDate.toLocaleDateString().split('/').join('-');
        $.ajax({
            type: "POST",
            url: "/order/accountOrder?onumber="+onumber+'&nowdate='+nowDate,
            success:function(result1){
                if (result1=='1' || result1==1) {
                    layui.use('layer', function () {
                        layui.layer.alert('<span style="font-size:16px;">结账成功</span>', {icon: 1});
                    });
                    userOrders();
                    setTimeout(function () {
                        layer.close(layer.index);
                    },1500)
                } else {
                    layui.use('layer', function () {
                        layui.layer.alert('<span style="font-size:16px;">结账失败</span>', {icon: 2});
                    });
                    setTimeout(function () {
                        layer.close(layer.index);
                    },1500)
                }
            }
        })
    }
</script>
</body>
</html>
