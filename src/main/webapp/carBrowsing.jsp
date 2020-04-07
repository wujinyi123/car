<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/3/28
  Time: 21:53
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
    <link rel="stylesheet" href="css/CarBrowsing.css">
    <link rel="stylesheet" href="css/timedropper.min.css">
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
            <li class="li1 col-md-2"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
            <li class="col-md-2"><a href="rentalOnline.jsp"><span class="glyphicon glyphicon-globe"></span>&nbsp;在线租车</a></li>
            <li class="col-md-2"><a href="#"><span class="glyphicon glyphicon-picture"></span>&nbsp;车型查询</a></li>
            <li class="col-md-2"><a href="userOrders.jsp"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;我的订单</a></li>
            <li class="col-md-2"><a href="Personal.jsp" target="_blank"><span class="glyphicon glyphicon-user"></span>&nbsp;个人中心</a></li>
        </nav>
    </div>
    <div class="touxiang">
        <a href="javascript:;" class="tan" style="color: white;"> ${sessionScope.thisUser.uname}，欢迎您</a>
        <a href="javascript:;" class="tan"><span><img src="../img/xiaoyanzi.jpeg" alt="" class="pic2"></span></a>
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

<!-- 新闻轮播 -->
<div class="lunbo container">
    <ul class="lunbo-kuang container">
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
        <li>
            <p>8月8日</p>
            <p>18-19赛季回顾雄鹿猛龙大战</p>
            <p>字母哥大杀特杀，伦纳德无力回天</p>
            <p>已结束（重播）</p>
        </li>
    </ul>
</div>
<script>
    var timer;
    clearInterval(timer);
    timer=setInterval(func,15);
    var px=0;
    function func(){
        if(px==1200){
            px=0;
        }
        px++;
        $('.lunbo-kuang').css('left',-px+'px')
    }
</script>

<!-- 标题 -->
<div class="qxbiaoti">
    <a href="#">更多车型>>>></a>
</div>

<!-- 车型查询 -->
<div class="chexing nav-down container" id='qiuqiu'>
    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/1.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">宝马350LE（自动/5座）</p>
                <p>宝马5系一直是中大型轿车中炙手可热的车型，近年来，随着新能源车型的推广，5系旗下的混动车型530LE也得到了热卖，这款车凭借着许多卖点，让它的销量，甚至不亚于汽油版的车型。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/38.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">福特野马（自动/5座	）</p>
                <p>1964年4月17日，经过福特团队反复论证、修改后的第一代量产版Mustang于纽约世博会上正式发布，野马自此正式向全世界展示了它的风范，福特的时间表把握得非常之巧，此时正值战后生育高峰期的一代刚刚进入购车的年龄，这一代人对车的要求与其父母大相径庭，他们想张扬自己的个性，野马应运而生。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/3.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">宝马2系运动旅行版（自动/5座）</p>
                <p>宝马将2系Active Tourer这款车定位于运动休旅车，新车于2015年1月14日上市，上市后和进口的奔驰B级进行竞争。宝马2系Active Tourer基于宝马最新的前驱平台打造，其长宽高分别为4342/1800/1555mm，轴距达到了2670mm。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/4.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">沃尔沃XC90（SUV/自动/7座）</p>
                <p>XC90是沃尔沃旗下的北欧豪华旗舰型SUV，其宗旨是成为市场上最安全也最令人心动的完美产品。自全球推出后，沃尔沃XC90即赢得市场好评如潮，先后获得2016年北美年度SUV大奖、2016年CES国际消费类电子产品展首届“最佳汽车科技奖”、 美权威最高安全评级、美国年度最佳SUV等几十项世界奖项。
                </p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/5.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">丰田普罗拉（SUV/自动/7座）</p>
                <p>prado越野车是丰田陆地巡洋舰(land cruiser prado)系列中的最新款，这款全新开发的新一代suv车，配置全新研发丰田六缸电喷1gr-fev6发动机，排量3956cc，动力性能好，排气符合当今全新欧洲Ш号标准，高度环保。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/6.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">奥迪A8L（自动/5座）</p>
                <p>作为奥迪的旗舰，A8L并非世界上最贵的车型，但绝对是最好的车型之一。他没有在表面化的方面来显示车主的富有，他是以先进汽车技术的堆砌。特别是那台W12 6.3升发动机，可以使庞大的车身在4.7秒的时间内从0跑到100公里/小时，500马力的A8L W12，它的豪华绝对不是装装门面。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/8.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">大众逸朗（自动/5座）</p>
                <p>朗逸是由上海大众生产一款轿车，2008年6月上市。在延续了A级车市“动感时尚”的设计语言的基础上，LAVIDA朗逸体现了一种全新的设计DNA——“融合”。。朗逸用充满前瞻性的设计语言为A级车注入了更多的豪华大气感，改写了消费者对于A级车市场的传统印象，从而满足了消费者更为本土化的需求。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/9.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">高尔夫.嘉旅（自动/5座）</p>
                <p>高尔夫嘉旅是一汽-大众旗下一款汽车。搭载1.4T涡轮增压发动机最大输出功率为110kW（150Ps），综合油耗6L。配置方面，提供普通LED大灯、高配LED大灯、行李架、侧窗镀铬条、普通尾灯、动态转向尾灯、鲨鱼鳍天线、全景天窗等进行选装。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/10.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">现代全新胜达（SUV/自动/7座）</p>
                <p>北京现代成立于2002年,2017年发布了"从现代 到未来"的全新品牌战略,旗下车型:菲斯塔纯电动,新一代ix25,新一代悦纳,昂希诺EV,第四代胜达,菲斯塔等.北京现代致力于引流潮流,品味睿智,创造品质生活</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/11.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">荣威e950（自动/5座）</p>
                <p>荣威e950是上汽乘用车精准把握公商务用车和中高端私人用车市场的消费需求  ， 2015年11月20日，“中国首款新能源中高级轿车”——荣威e950于广州车展正式发布。作为上汽首款搭载“蓝芯”和“绿芯”双技术品牌的战略车型，并以高效绿色动力、越级高品质等领先优势，引领国内新能源B级车市场迈入新阶段。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/12.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">丰田凯美瑞（自动/5座）</p>
                <p>全新第八代凯美瑞增加或升级了多项配置，旗舰版、豪华版、锋尚版车型均新增智能雨量感应雨刷；豪华版、锋尚版车型升级至9英寸彩色中控触控显示屏（带智能手机互联系统），10英寸彩色HUD平视显示系统可显示导航路径等信息，新增车载语音导航系统。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/13.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">沃尔沃XC60（SUV/自动/5座）</p>
                <p>国产沃尔沃XC60基本完全保持了海外版的设计，且外观尺寸完全一致，长宽高分别为4688/1902/1658mm，轴距为2865mm。新车采用了沃尔沃最新的模块化SPA平台打造。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/14.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">奥迪A4L（自动/5座）</p>
                <p>奥迪A4L是奥迪公司2008年11月16日正式发布的一款车型，全新奥迪A4L采用了全新的外观和底盘设计，在正面和后面该车与奥迪A5十分相似。参考价格27.28-57.81万。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/15.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">现代IX35（SUV/自动/5座）</p>
                <p>现代ix35是一款SUV车型。现代ix35将作为途胜Tucson的换代车型，于2010年正式引入国产。北京现代方面已经表示，国产版的ix35将不会沿用“途胜”作为车型名称。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/16.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">别克GL8（MPV/自动）</p>
                <p>别克GL8作为顶级MPV的典范，以其豪华气派、动力强劲、宽敞舒适的优势实现批量出口，被东南亚媒体誉为“完美MPV”；更成为北京申奥、APEC会议等重大国际级外事活动的礼宾用车，比尔盖茨、马友友、帕瓦洛蒂都曾是其座上客。别克GL8家族由GL8 Avenir、GL8 ES及GL8商旅车组成三驾齐驱的产品布局。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/17.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">GL8（MPV/自动/7座）</p>
                <p>上海通用GL8，在其独树一帜的V6 3.0发动机、大气外观、宽敞空间的基础上，所有车型装全开启双层电动天窗、智能倒车雷达等全新标准配置。旗舰车型将10碟三屏豪华DVD影音系统等前瞻性配置纳入旗下</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/18.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">大众速腾（自动/5座）</p>
                <p>速腾品牌，由德国大众汽车与中国一汽合资创立于2006年。第一代速腾产品，是一汽-大众审时度势，同步引进德国大众面向北美市场推出的一款新品A级轿车。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/19.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">大众迈腾（自动/5座）</p>
                <p>大众迈腾源自和帕萨特B6关系紧密的FutureB6，这也是一汽-大众建厂以来将要生产和销售的第一款B级轿车。据一汽-大众解释，“迈”寓意自信、果决、动感；“腾”表示腾飞、超越、激情。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/20.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">宝马5系（自动/5座）</p>
                <p>国产5系是一款高档轿车，现款五系诞生于2004年，宝马的五系无疑是汽车史上最为出色的系列之一，它最巅峰的时代应该是从第三代E34（1988-1996）时就开始了，如今的五系则是E34的第三代产品。2017年4月，全新一代宝马5系长轴版全球首发。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/21.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">大众途安（MPV/自动）</p>
                <p>新款途安将使用全新的家族式前脸风格，侧面和尾部则没有什么太大的差别，甚至尾灯组也沿用了目前的造型，或许这也是降低开发成本的做法。内饰部分新途安采用了高尔夫6中引入的新简约风格，多功能三幅式方向盘拥有良好的手感、中控台的造型得到了优化，同时引入的镀铬装饰显得也更有档次感。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/22.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">宝马X4（SUV/自动/5座）</p>
                <p>宝马X4是介于X3与X5的一款SUV车型。外观上，宝马X4受到3系的启发，与中网连接在一起的前车灯组同样出现在前脸上，尾部造型与新3系保持了高相似度，侧身与X6极为相似。动力方面，宝马X4先期推出2.0T与3.0T两个排量，其中2.0T最大马力分别为184匹、245匹，3.0T版本的最大马力为306匹。2014年7月29日，宝马X4携四款车型登陆中国市场。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/24.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">马自达CX-4（SUV/自动/5座）</p>
                <p>根据官方公布的消息，马自达“越KOERU”概念车将推出量产版，命名为“CX-4”，定位为紧凑级轿跑SUV，落户一汽马自达投产，并将于2016年4月北京车展正式亮相。这是马自达第一次在中国首发一款全球车型，该车型的投放显示出马自达对于中国市场的重视，以及一汽马自达对于马自达战略布局的重要意义。
                </p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/25.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">阿尔法罗密欧Stelvio（SUV/自动/5座）</p>
                <p>Stelvio Quadrifoglio以意大利阿尔卑斯山的着名通道命名，非常适合雕刻峡谷或赛道。它的505马力发动机为兼职家庭搬运工产生欣快的声音和荒谬的加速度。这种热交叉的最令人印象深刻的症状 - 以及令人惊艳的车身 - 是一个空灵的底盘，无论是骑行还是转弯StelvioQF都将性能提升到了曾经专为跑车保留的水平。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/27.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">奔驰威霆（MPV/自动/7座）</p>
                <p>奔驰威霆是德国奔驰推出的一款MPV，于2010年推出，定位“专业级MPV”梅赛德斯-奔驰威霆（Vito） ，是福建奔驰旗下的明星产品。轴距长3430mm，车内空间宽大，7-9座设置满足团体出行需求。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/29.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">荣威550混动（自动/5座）</p>
                <p>全新荣威550的保险杠设计改变了之前过于圆润的风格，增添了更多年轻的气息。车身两侧的高腰线一直延伸至前保险杠，同时下格栅新的U型线迎然而上，赋予了朝气而自信的表情。格栅的设计更具雕塑感，鹰隼般张开的羽翼带来强烈的视觉冲击，每一根线条都经过设计师的精雕细琢，极具时代气息。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/30.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">柯斯达速派（自动/5座）</p>
                <p>斯柯达速派是斯柯达被上汽大众收购后的所研发的车型，使用的是米其林浩悦系列产品，该车凭借着良好的安全性以及耐用的车身和发动机曾一度在欧洲热销，速派意为：庄重的，堂堂的，华丽的，极好的，这也正是斯柯达制造它的理念。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/31.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">路虎揽胜极光（SUV/自动/5座）</p>
                <p>路虎Evoque在2010年12月的广州车展上全球首发，并确定了“揽胜极光”这一中文名称。路虎揽胜极光于2011年下半年正式进入中国市场，普通版售价为52.80~63.80万，分为三门版和五门版。此后，路虎汽车公司在2012年推出了维多利亚限量版极光车型，动力性能与普通版本无异，而内饰材质奢华典雅，售价为98.89万。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/32.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">别克昂科拉（SUV/自动/5座）</p>
                <p>昂科拉是基于通用小型跨界车平台研发打造，具备SUV罕有的轿跑风格设计及较好的动力性能的小型SUV，在中国、北美、欧洲等地上市销售，是款名副其实的全球车型。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/33.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">标致301（自动/5座）</p>
                <p>东风标致301基于全球1200万用户对3系的信赖，用心打造新生代品质先锋中级车。以纯粹、流畅、优雅的设计语言，带来法式致雅设计，拥有2652mm超大轴距及EPS+4气囊等先锋配置，满足用户驾车需求，带来轻松愉悦的驾乘感受。这款车主要针对新兴市场设计，同时还采用了标致全新的命名策略。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/34.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">上汽大通G10（MPV/自动）</p>
                <p>上汽大通G10—大大的MPV，汇聚众多卓越配置，无论动力、空间，还是科技、形象，都尽显大大的实力，全面满足消费者的全领域需求。上汽大通G10 上市以来，屡获全球众多高规格会议和赛事的青睐，继被选为大阅兵指挥用车，又先后为APEC、青奥会、亚信峰会、珠海航展 [8-9]  等国际级大型活动服务，彰显MPV的不凡实力。上汽大通G10的升级版上汽大通G10 PLUS于2017年8月正式上市。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/36.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">英菲尼迪QX50（SUV/自动/5座	）</p>
                <p>英菲尼迪旗下创新豪华SUV——英菲尼迪QX50于2018年6月10日在上海中国船舶馆正式上市。英菲尼迪QX50基于英菲尼迪全新豪华SUV四驱平台打造，并搭载全球首款量产可变压缩比发动机VC-Turbo。同时，QX50还配备ADAS智能驾驶辅助系统与包括DAS 2.0在内的十大创新技术，带来轻松、安全、极致臻享的驾驶体验。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/37.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">标志3008（SUV/自动/5座	）</p>
                <p>标致3008是一款时尚的中型跨界SUV，发布于2009年1月的法国，在2010年12月进入中国市场。标致3008分别有国产版本和进口版本。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/39.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">丰田雷凌（自动/5座	）</p>
                <p>全新换代雷凌是TNGA架构下的GA-C平台打造的产品，除了外观的变化之外，内饰，底盘操控和安全，智能等全方面都做了升级。2019上海车展上，广汽丰田全新换代雷凌正式开始预售，并已于5月20日晚在乌镇正式上市。 新车目前共推出了搭载1.2T涡轮增压发动机和1.8L混合动力系统两种动力的共计10款车型，售价区间为11.58-15.28万元。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/41.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">奥迪A3（自动/5座）</p>
                <p>奥迪A3底盘前悬架为麦克弗逊式，后桥为扭转、曲柄式结构带分开布置的弹簧和减振器，除了操纵性极佳外，后悬架布置的空间利用率也很高，因此载货面积在同级车中出类拔萃。所有A3系列车型，前后制动均为盘式，前制动带通风槽。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/42.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">阿尔法罗密欧Giulia（三厢/自动/5座）</p>
                <p>Giulia最惊艳的还是它底盘的柔韧性，完完全全打破了人们固有印象中，性能车一定很“硬”的“落后观念”，由于底盘大量采用铝合金等轻质材料，Giulia的簧下质量被控制在了一个非常优秀的水平上，四轮的回弹速度十分快，会让你有种时刻“粘”在地面上的感觉，加上Giulia的前后配重以及四角重量平衡接近完美。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/46.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">路虎发现神行（SUV/自动/7座）</p>
                <p>2014年9月19日，路虎在长城脚下正式发布了路虎发现运动版（Discovery Sport）车型，新车在中国的正式命名为“发现神行”，成为中型豪华SUV市场中首款采用7座的车型。其可以视为神行者2的继任车型，但根据路虎的最新规划，这款车型被归入发现系列，定位略高于神行者。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/48.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">荣威E50（电动/4座）</p>
                <p>荣威E50是一辆纯电动的轿车，由上汽集团历时三年自主研发，汇集众多国际先进技术，合力打造出的一款通过电池和电机有机结合，实现零排放、纯电驱动的新能源车。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/7.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">本田UR-V（自动/7座）</p>
                <p>本田UR-V是一辆有着非常帅气外观的汽车，车身的构造是非常协调有序的，并且还添加了很多新元素进行点缀，所以营造出非常不错的运动氛</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/2.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">奥迪A6L（自动/5座）</p>
                <p>奥迪A6L是一汽大众奥迪公司在德国新A6的基础上开发出的车系，是A6的换代产品。2012年6月 奥迪换代A6L上市，该车搭配35 TFSI动力，外观好像就有那么一点像A4L全新版。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/49.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">马自达MX-5（自动/2座）</p>
                <p>全新进口 Mazda MX-5 RF的理念是“人马合一”，此次在中国大陆的车型， Mazda MX-5 RF在内饰、外观设计、工艺品质、功能性和行驶性能方面实现了进一步提升。作为一款提供“无穷乐趣（Lots of Fun）”的轻型敞篷跑车。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/50.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">沃尔沃S90（自动/5座）</p>
                <p>沃尔沃S90，沃尔沃旗下的豪华轿车，2016年11月18日沃尔沃汽车在广州车展宣布S90豪华轿车开始预售 [1]  ，于2016年12月15日在北京正式上市。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/51.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">大众探歌（SUV/自动/5座）</p>
                <p>探歌是一汽-大众基于对中国SUV市场和用户需求的深刻洞察，专为年轻人量身打造。采用大众SUV全新设计语言，是大众品牌最具个性的SUV。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/52.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">日产轩逸（自动/5座）</p>
                <p>“轩”在古语中表示华丽的车，而“逸”则有安逸、舒适、超群的意思。“轩逸”充分显示了该车优雅的设计格调和行云流水的驾驭感受，喻示给人带来无限愉悦的崭新体验，洞悉人性，舒逸隽永，将为中高级轿车的品位及驾乘树立全新标准。轩逸（Sylphy）目前分09和12两款。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

    <a class="card" href="#!">
        <div class="front">
            <img src="../img/car/53.jpg" alt="" class="picpic1">
        </div>
        <div class="back">
            <div>
                <p class="p-left">大众探岳（两驱/SUV/自动/5座）</p>
                <p>TAYRON探岳是一汽-大众继紧凑型SUV探歌T-ROC之后，推出的第二款SUV，定位高端中型，面向年轻人群。TAYRON探岳在造型设计、操控体验、舒适驾乘、前端科技、空间结构和安全防护方面，树立了全新一代德系高端中型SUV新标准。</p>
                <button class="button">了解更多</button>
            </div>
        </div>
    </a>

</div>
</body>
</html>
