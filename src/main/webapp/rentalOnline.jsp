<%--
  Created by IntelliJ IDEA.
  User: admin
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
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/cityAndPro.js"></script>
</head>
<body>
<!-- 头部 -->
<div class="header">
    <div class="logo">待补充</div>
    <div class="header2">
        <div class="spann1">Car</div>
        <!-- 导航栏 -->
        <nav class="nav">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-globe"></span>&nbsp;在线租车</a></li>
            <li><a href="carBrowsing.jsp"><span class="glyphicon glyphicon-picture"></span>&nbsp;车型查询</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;我的订单</a></li>
            <li><a href="#" target="_blank"><span class="glyphicon glyphicon-user"></span>&nbsp;个人中心</a></li>
        </nav>
    </div>
    <div class="touxiang">
        <a href="javascript:;" class="tan">登录</a>
        <a href="javascript:;" class="tan">注册</a>
        <a href="javascript:;" class="tan"><span><img src="images/timg (1).jpg" alt="" class="pic2"></span></a>
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
        <a href="javascript:;" class="tan"><li class="nav-span glyphicon glyphicon-user" title='个人中心'></li></a>
        <a href="javascript:;"><li class="nav-span glyphicon glyphicon-list-alt" title='订单'></li></a>
        <a href="javascript:;"><li class="nav-span glyphicon glyphicon-signal" title='数据'></li></a>
    </ul>
</div>

<!-- 搜索栏 -->
<div class="sousuolan">
    <form action="">
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
        </div>
        <!-- 时间选择 -->
        <div class="timechoise">
            <div id="pcartime"  class="StratTime">
                <div class="demo">
                    <p class="glyphicon glyphicon-calendar">取车时间：</p>
                    <input type="text" class="input" id="pickdate1" />
                </div>
            </div>
            <div id="rcartime"  class="EndTime">
                <div class="demo">
                    <p class="glyphicon glyphicon-calendar">还车时间：</p>
                    <input type="text" class="input" id="pickdate2" />
                </div>
            </div>

            <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
            <script src="js/datedropper.min.js"></script>
            <script src="js/timedropper.min.js"></script>
            <script>
                $("#pickdate1").dateDropper({
                    animate: false,
                    format: 'Y-m-d',
                    maxYear: '2020'
                });
                $("#picktime1").timeDropper({
                    meridians: false,
                    format: 'HH:mm',
                });
                $("#pickdate2").dateDropper({
                    animate: false,
                    format: 'Y-m-d',
                    maxYear: '2020'
                });
                $("#picktime2").timeDropper({
                    meridians: false,
                    format: 'HH:mm',
                });
            </script>
        </div>
        <!-- 结果提交 -->
        <div style="float: right;margin-right: 50px;">
            <input class="check btn btn-success" type="submit" value="提交">
        </div>
    </form>
</div>
<!-- 筛选 -->
<!-- 品牌 -->
<div class="pingpai">
    <li class="col-md-1">品牌：</li>
    <li class="brand col-md-1" value="全部">全部</li>
    <li class="brand col-md-1" value="大众">大众</li>
    <li class="brand col-md-1" value="英菲尼迪">英菲尼迪</li>
    <li class="brand col-md-1" value="别克">别克</li>
    <li class="brand col-md-1" value="标致">标致</li>
    <li class="brand col-md-1" value="福特野马">福特野马</li>
    <li class="brand col-md-1" value="宝马">宝马</li>
    <li class="brand col-md-1" value="奥迪">奥迪</li>
    <li class="brand col-md-1" value="马自达">马自达</li>
    <li class="brand col-md-1" value="荣威">荣威</li>
    <li class="col-md-1"></li>
    <li class="brand col-md-1" value="奔驰">奔驰</li>
    <li class="brand col-md-1" value="GL8">GL8</li>
    <li class="brand col-md-1" value="现代">现代</li>
    <li class="brand col-md-1" value="上汽大通">上汽大通</li>
    <li class="brand col-md-1" value="沃尔沃">沃尔沃</li>
    <li class="brand col-md-1" value="路虎">路虎</li>
    <li class="brand col-md-1" value="丰田">丰田</li>
    <li class="brand col-md-1" value="本田">本田</li>
    <li class="brand col-md-1" value="阿尔法">阿尔法</li>
    <li class="brand col-md-1" value="斯柯达">斯柯达</li>
    <li class="col-md-1"></li>
    <li class="brand col-md-1" value="日产">日产</li>
</div>
<!-- 价格 -->
<div class="jiage">
    <li class="col-md-1">价格：</li>
    <li class="price col-md-1" value="全部">全部</li>
    <li class="price col-md-1" value="100以下">100以下</li>
    <li class="price col-md-1" value="100-200">100-200</li>
    <li class="price col-md-1" value="200-300">200-300</li>
    <li class="price col-md-1" value="300以上">300以上</li>
</div>
<!-- 座位 -->
<div class="zuowei">
    <li class="col-md-1">座位：</li>
    <li class="seat col-md-1" value="全部">全部</li>
    <li class="seat col-md-1" value="2座">2座</li>
    <li class="seat col-md-1" value="4座">4座</li>
    <li class="seat col-md-1" value="5座">5座</li>
    <li class="seat col-md-1" value="7座">7座</li>
    <li type="button" class="seat col-md-1">查询</li>
</div>
<div class="xianshi"></div>
</body>
</html>
