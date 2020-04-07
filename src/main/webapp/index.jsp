<%--
  Created by IntelliJ IDEA.
  User: 邓大忠
  Date: 2020/3/28
  Time: 21:44
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
    <link rel="stylesheet" href="css/index.css">
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
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
            <li class="li1 col-md-2"><a href="#"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
            <li class="col-md-2"><a href="rentalOnline.jsp"><span class="glyphicon glyphicon-globe"></span>&nbsp;在线租车</a></li>
            <li class="col-md-2"><a href="carBrowsing.jsp"><span class="glyphicon glyphicon-picture"></span>&nbsp;车型查询</a></li>
            <li class="col-md-2"><a href="userOrders.jsp"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;我的订单</a></li>
            <li class="col-md-2"><a href="Personal.jsp" target="_blank"><span class="glyphicon glyphicon-user"></span>&nbsp;个人中心</a></li>
        </nav>
    </div>
    <div class="touxiang" id="touxiang">
        <a href="javascript:;" class="tan" style="color: white;">${sessionScope.thisUser.uname}，欢迎您</a>
        <a href="javascript:;" class="tan"><span><img src="../img/xiaoyanzi.jpeg" alt="" class="pic2"></span></a>
        <a href="Login.jsp" style="color: red; text-decoration:none;cursor: pointer">
            <div class="dropOutBox">
                <span>注销账号</span>
                <i class="glyphicon glyphicon-off">
                </i>
            </div>
        </a>
    </div>
</div>
<!-- 固定导航栏 -->
<script>
    // 跳转权限
    function jump(){
        var unumber = "${sessionScope.thisUser.unumber}";
        var flag = "${sessionScope.thisUser.flag}"
        if(unumber==null || unumber=='' ){
            layui.use('layer', function () {
                layui.layer.alert('<span style="font-size:16px;">您未登录</span>', {icon: 2});
            });
            setTimeout(function () {
                window.location.href="Login.jsp";
            },500)
        }
        if(flag=='0' || flag == 0){
            layui.use('layer', function () {
                layui.layer.alert('<span style="font-size:16px;">无权访问</span>', {icon: 2});
            });
            setTimeout(function () {
                window.location.href="Login.jsp";
            },500)
        }
    }
    jump();

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
        <a href="index.jsp"><li class="nav-span glyphicon glyphicon-home" title='首页'></li></a>
        <a href="rentalOnline.jsp"><li class="nav-span glyphicon glyphicon-shopping-cart" title='在线租车'></li></a>
        <a href="Personal.jsp" class="tan"><li class="nav-span glyphicon glyphicon-user" title='个人中心'></li></a>
        <a href="userOrders.jsp"><li class="nav-span glyphicon glyphicon-list-alt" title='订单'></li></a>
        <a href="carBrowsing.jsp"><li class="nav-span glyphicon glyphicon-signal" title='数据'></li></a>
    </ul>
</div>

<!-- 视频轮播 -->
<div class="box container">
    <div class="list">
        <ul>
            <li class="p7"><a href="javascript:;"><img src="../img/car/car1.jpg"></a></li>
            <li class="p6"><a href="javascript:;"><img src="../img/car/car2.jpg"></a></li>
            <li class="p5"><a href="javascript:;"><img src="../img/car/car3.jpg"></a></li>
            <li class="p4"><a href="javascript:;"><img src="../img/car/car4.jpg"></a></li>
            <li class="p3"><a href="javascript:;"><img src="../img/car/car5.jpg"></a></li>
            <li class="p2"><a href="javascript:;"><img src="../img/car/car6.jpg"></a></li>
            <li class="p1"><a href="javascript:;"><img src="../img/car/car7.jpg"></a></li>
        </ul>
    </div>
    <a href="javascript:;" class="prev btn"><</a>
    <a href="javascript:;" class="next btn">></a>
    <div class="buttons">
        <a href="javascript:;"><span class="red a-span"></span></a>
        <a href="javascript:;"><span class="a-span"></span></a>
        <a href="javascript:;"><span class="a-span"></span></a>
        <a href="javascript:;"><span class="a-span"></span></a>
        <a href="javascript:;"><span class="a-span"></span></a>
        <a href="javascript:;"><span class="a-span"></span></a>
        <a href="javascript:;"><span class="a-span"></span></a>
    </div>
</div>
<script type="text/javascript">

    // 轮播图
    var $a=$(".buttons a");
    var $s=$(".buttons .a-span");
    var $v=$(".zhibo video")
    var cArr=["p7","p6","p5","p4","p3","p2","p1"];
    var index=0;
    $(".next").click(function(event){
            prevideo();
        }
    )
    $(".prev").click(function(event){
            nextvideo();
        }
    )
    //上一张
    function prevideo(){
        cArr.unshift(cArr[6]);//新的值插入开头
        cArr.pop();//移除最后一个元素
        //i是元素的索引，从0开始
        //e为当前处理的元素
        //each循环，当前处理的元素移除所有的class，然后添加数组索引i的class
        $(".list li").each(function(i,e){
            $(e).removeClass().addClass(cArr[i]);
        })
        index--;
        if (index<0) {
            index=6;
        }
        show();
    }
    //下一张
    function nextvideo(){
        cArr.push(cArr[0]);
        cArr.shift();
        $(".list li").each(function(i,e){
            $(e).removeClass().addClass(cArr[i]);
        })
        index++;
        if (index>6) {
            index=0;
        }
        show();
    }
    //通过底下按钮点击切换
    $a.each(function(){
        $(this).click(function(){
            var myindex=$(this).index();
            var b=myindex-index;
            if(b==0){
                return;
            }
            else if(b>0) {
                var newarr=cArr.splice(0,b);
                cArr=$.merge(cArr,newarr);
                $(".list li").each(function(i,e){
                    $(e).removeClass().addClass(cArr[i]);
                })
                index=myindex;
                show();
            }
            else if(b<0){
                cArr.reverse();
                var oldarr=cArr.splice(0,-b)
                cArr=$.merge(cArr,oldarr);
                cArr.reverse();
                $(".list li").each(function(i,e){
                    $(e).removeClass().addClass(cArr[i]);
                })
                index=myindex;
                show();
            }
        })
    })
    //改变底下按钮的背景色
    function show(){
        $($s).eq(index).addClass("red").parent().siblings().children().removeClass("red");
    }
    //点击class为p2的元素触发上一张照片的函数
    $(document).on("click",".p2",function(){
        prevideo();
        return false;//返回一个false值，让a标签不跳转
    });

    //点击class为p4的元素触发下一张照片的函数
    $(document).on("click",".p4",function(){
        nextvideo();
        return false;
    });
    //          鼠标移入box时清除定时器
    $(".box").mouseover(function(){
        clearInterval(timer);
    })
    //          鼠标移出box时开始定时器
    $(".box").mouseleave(function(){
        timer=setInterval(nextvideo,4000);
    })
    //          进入页面自动开始定时器
    timer=setInterval(nextvideo,4000);
</script>
</body>
</html>
