<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>卡尔租车</title>
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <link href="layui/css/layui.css" rel="stylesheet"/>
    <link href="css/Personal.css" rel="stylesheet"/>
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="layui/layui.js"></script>
</head>
<body>
    <!--荧光点点-->
    <div class="wel" id="git"></div>
    <div class="content">
        <div class="p_head">
            <!-- 头背景 -->
            <div class="banner-back containe">
                <div class="head"><img src="../img/logo22.jpg" alt="">
                </div>
                <div class="title1">
                    <div class="weather">
                        <iframe class="iframe" allowtransparency="true" frameborder="0" width="170" height="36" scrolling="no" src="//tianqi.2345.com/plugin/widget/index.htm?s=3&z=2&t=0&v=0&d=3&bd=0&k=&f=&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=71267&w=180&h=36&align=center"></iframe>
                        <div class="row">
                            <div class="title_right col-md-6">注册时长：<span id="register"></span></div>
                            <div class="star col-md-6" style="margin-top: 18px;"><span class="glyphicon glyphicon-queen"></span>用户星级:<div id="star" style="margin-bottom: 7px;margin-left: 10px;"></div></div>
                        </div>
                    </div>
                    <div class="word">
                        <div class="user">
                            <div><p class="h3">筱剑仁，欢迎您</p></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="personal-banner container">
                <div class="col-xs-2 btns">
                    <button class="btn btn-primary btn-warning glyphicon glyphicon-shopping-cart" type="button">
                    订单总数 <span class="badge" id="ordercount"></span>
                    </button>
                </div>
                <div class="col-xs-2 btns"><button class="btn btn-primary btn-warning glyphicon glyphicon-calendar" type="button">
                    成交订单 <span class="badge" id="dealcount"></span>
                </button>
                </div>
                <div class="col-xs-2 btns">
                    <button class="btn btn-primary btn-warning glyphicon glyphicon-plane" type="button">
                    待付款 <span class="badge" id="undealcount"></span>
                    </button>
                </div>
            </div>
        </div>
        <div class="p_body row">
            <div class="personal-banner-down col-xs-12">
                <span class="span1"><a href="javascript:;" class="glyphicon glyphicon-list-alt">&nbsp;全部订单</a></span>
                <span class="span2"><a href="javascript:;" class="glyphicon glyphicon-menu-right"></a></span>
            </div>
            <div class="personal-banner-down col-xs-12">
                <span class="span1"><a href="javascript:;" class="glyphicon glyphicon-map-marker">&nbsp;地址管理</a></span>
                <span class="span2"><a href="javascript:;" class="glyphicon glyphicon-menu-right"></a></span>
            </div>
            <div class="personal-banner-down col-xs-12">
                <span class="span1"><a href="javascript:;" class="glyphicon glyphicon-time">&nbsp;浏览历史</a></span>
                <span class="span2"><a href="javascript:;" class="glyphicon glyphicon-menu-right"></a></span>
            </div>
            <div class="personal-banner-down col-xs-12">
                <span class="span1"><a href="javascript:;" class="glyphicon glyphicon-lock">&nbsp;安全中心</a></span>
                <span class="span2"><a href="javascript:;" class="glyphicon glyphicon-menu-right"></a></span>
            </div>
            <div class="personal-banner-down col-xs-12">
                <span class="span1"><a href="javascript:;" class="glyphicon glyphicon-comment">&nbsp;车友论坛</a></span>
                <span class="span2"><a href="javascript:;" class="glyphicon glyphicon-menu-right"></a></span>
            </div>
            <div class="personal-banner-down col-xs-12">
                <span class="span1"><a href="javascript:;" class="glyphicon glyphicon-credit-card">&nbsp;银行卡绑定</a></span>
                <span class="span2"><a href="javascript:;" class="glyphicon glyphicon-menu-right"></a></span>
            </div>
            <div class="personal-banner-down col-xs-12">
                <span class="span1"><a href="javascript:;" class="glyphicon glyphicon-off">&nbsp;注销登录</a></span>
                <span class="span2"><a href="javascript:;" class="glyphicon glyphicon-menu-right"></a></span>
            </div>
            <div class="personal-banner-down col-xs-12">
                <span class="span1"><a href="javascript:;" class="glyphicon glyphicon-cog">&nbsp;设置</a></span>
                <span class="span2"><a href="javascript:;" class="glyphicon glyphicon-menu-right"></a></span>
            </div>
        </div>
    </div>
</body>
<%--个人中心信息显示--%>
<script>
    function orderCount(){
        var unumber = '4';
        <%--var unumber = ${sessionScope.thisUser.unumber};--%>
        $.ajax({
            type: "POST",
            url: "/order/orderCount?unumber="+unumber,
            success: function (result) {
                var Dealcount=0;
                var unDealcount=0;
                if (result != null && result.length > 0) {
                    for(var i=0;i<result.length;i++){
                        if(result[i].pay=='1' || result[i].pay==1){
                            Dealcount++;
                        }
                        else {
                            unDealcount++;
                        }
                    }
                    $("#ordercount").html(result.length);
                    $("#dealcount").html(Dealcount);
                    $("#undealcount").html(unDealcount);
                }else {
                    // 设置显示值为0
                    $("#ordercount").html("0");
                    $("#dealcount").html("0");
                    $("#undealcount").html("0");
                    layui.use('layer', function () {
                        layui.layer.alert('<span style="font-size:16px;">无订单信息</span>', {icon: 1});
                    });
                    setTimeout(function () {
                        layer.close(layer.index);
                    },1500)
                }
                starandtime( Dealcount);
            }
        })
    }

    // 用户星级和注册时间
    function starandtime(Dealcount){
        // 获取用户注册时间
        <%--var registertime = ${sessionScope.thisUser.registertime};--%>
        var registertime ='2019/05/01 00:00:00';
        var date1= new Date();  //开始时间
        var date2 = registertime.split('-').join('/');    //结束时间
        var date3 = date1.getTime() - new Date(date2).getTime();   //时间差的毫秒数
        //计算出相差天数
        var days=Math.floor(date3/(24*3600*1000));
        //计算出小时数
        var leave1=date3%(24*3600*1000)  ; //计算天数后剩余的毫秒数
        var hours=Math.floor(leave1/(3600*1000));
        //计算相差分钟数
        var leave2=leave1%(3600*1000)    ;    //计算小时数后剩余的毫秒数
        var minutes=Math.floor(leave2/(60*1000));
        //计算相差秒数
        var leave3=leave2%(60*1000) ;     //计算分钟数后剩余的毫秒数
        var seconds=Math.round(leave3/1000);
        $("#register").html(days+"天 "+hours+"小时 ");
        // alert(" 相差 "+days+"天 "+hours+"小时 "+minutes+" 分钟"+seconds+" 秒");
        // 星级显示
        var score = Dealcount*30+days*10;
        var starcount;
        if(score>=1500 && score<2000){
            starcount = 1.5;
         }
        else if(score>=2000 && score<2500){
            starcount = 2.0;
        }
        else if(score>=2500 && score<3000){
            starcount = 2.5;
        }
        else if(score>=3000 && score<3500){
            starcount = 3.0;
        }
        else if(score>=3500 && score<4000){
            starcount = 3.5;
        }
        else if(score>=4000 && score<4500){
            starcount = 4;
        }
        else if(score>=4500 && score<5000){
            starcount = 4.5;
        }
        else if(score>=5000){
            starcount = 5.0;
        }
        else{
            starcount = 1.0;
        }
        layui.use(['rate'], function() {
            var rate = layui.rate;
            rate.render({
                elem: '#star'
                , value: starcount
                , half: true
                , readonly: true
            });
        });
    }

    orderCount();
</script>
</html>
