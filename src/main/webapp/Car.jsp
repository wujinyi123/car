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
            <a href="pageSelectProductPlan">
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
            <!--查询-->
            <form action="" method="get" id="form1">
                <div class="InquireBox clearfix">


                    <input type="hidden" name="brand" class="phoneInput">

                    <div class="InquireleftBox">
                        <div class="Text">价格区间：</div>
                        <div class="InputDiv">
                            <i class=" iconfont icon-xiala"></i>
                            <select name="price" class="phoneInput">
                                <option value="0">全部</option>
                                <option value="1">100以下</option>
                                <option value="2">100-200</option>
                                <option value="3">200-300</option>
                                <option value="4">300以上</option>
                            </select>
                        </div>
                    </div>
                    <div class="InquireleftBox">
                        <div class="Text">座位：</div>
                        <div class="InputDiv">
                            <i class=" iconfont icon-xiala"></i>
                            <select name="seatnumber" class="phoneInput">
                                <option value="0">全部</option>
                                <option value="2座">2座</option>
                                <option value="4座">4座</option>
                                <option value="5座">5座</option>
                                <option value="7座">7座</option>
                            </select>
                        </div>
                    </div>
                    <div class="PublicBtnIcon Color1Btn fr">
                        <i class="iconfont icon-icon-chaxun"></i>
                        <input name="selectPlan" type="button" value="查询" onclick="selectCar(1)">
                    </div>
                </div>
            </form>
            <!--表添加-->
            <div class="InquireTableBox">
                <div class="headbox">
                    <div class="headboxtext">
                        <span class="span1" style="font-weight: bold">汽车信息列表</span>
                    </div>
                    <div class="PublicBtnIcon Color2Btn fr Js_edit">
                        <i class="iconfont icon-changyongtubiao-mianxing-"></i>
                        <span>添加</span>
                    </div>
                </div>

                <!--查询到的表格-->

                <div class="InquireSelectTable">
                    <table id="cars"></table>
                    <%--<table class="PublicTableCss">
                        <thead>
                        <tr>
                            <td>汽车展示</td>
                            <td>汽车编号</td>
                            <td>品牌</td>
                            <td>车辆名称</td>
                            <td>单价</td>
                            <td>座位数</td>
                            <td>操作</td>
                        </tr>
                        </thead>
                        <tbody id="addList">
                        <c:forEach items="${carList.list}" var="pro">
                            <tr>
                                <td class="id">
                                        ${pro.carphoto}
                                </td>
                                <td>
                                        ${pro.cnumber}
                                </td>
                                <td>
                                        ${pro.brand}
                                </td>
                                <td>
                                        ${pro.cname}
                                </td>
                                <td>
                                        ${pro.price}
                                </td>
                                <td>
                                        ${pro.seatnumber}
                                </td>
                                <td>
                                    <button class='PublicTableBtnIcon Color3Btn edit edits' onclick='add(this)'>
                                        <i class='iconfont icon-tubiaozhizuomobanyihuifu-'></i>
                                        <span>编辑</span>
                                    </button>
                                    <div class='PublicTableBtnIcon Color4Btn Js_delete'>
                                        <i class='iconfont icon-shanchu'></i>
                                        <span>删除</span>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>--%>

                </div>
                <!--分页-->
                <%--<div class="PageNumber">
                    <div class="fenye">
                        <div class="NumbersBox">
                            <div class="LeftArrow " <c:if test="${(carList.pageNum-1)<=1}"> class="disable"</c:if>>
                                <a href="pageSelectCar?pn=${carList.pageNum-1}">上一页</a>
                            </div>
                            <ul>
                                <li <c:if
                                        test="${carList.pageNum-2<=0}"> style="display:none;list-style-type:none;" </c:if>>
                                    <a href="pageSelectCar?pn=${carList.pageNum-2}">${carList.pageNum-2}</a></li>
                                <li <c:if
                                        test="${carList.pageNum-1<=0}"> style="display:none;list-style-type:none;" </c:if>>
                                    <a href="pageSelectCar?pn=${carList.pageNum-1}">${carList.pageNum-1}</a></li>
                                <li <c:if test="${carList.pageNum==carList.pageNum}"> class="active" </c:if>><a
                                        href="pageSelectCar?pn=${carList.pageNum}">${carList.pageNum}</a></li>
                                <li <c:if
                                        test="${carList.pageNum+1>carList.pages}"> style="display:none;list-style-type:none;" </c:if>>
                                    <a href="pageSelectCar?pn=${carList.pageNum+1}">${carList.pageNum+1}</a></li>
                                <li <c:if
                                        test="${carList.pageNum+2>carList.pages}"> style="display:none;list-style-type:none;" </c:if>>
                                    <a href="pageSelectCar?pn=${carList.pageNum+2}">${carList.pageNum+2}</a></li>
                            </ul>
                            <div class="RightArrow " <c:if
                                    test="${(carList.pageNum+1)>=carList.pages}"> class="disable"</c:if>>
                                <a href="ppageSelectCar?pn=${carList.pageNum+1}">下一页</a>
                            </div>
                        </div>
                    </div>

                </div>--%>


            </div>
        </div>

    </div>
</div>


<!-- alert通用 提示是否删除-->
<div class="PublicFloatBox f_delete">
    <div class="f_MiddleBox wid260">
        <div class="f_Head">
            <span>提示消息</span>
            <i class="Js_closeBtn iconfont icon-buoumaotubiao20 fr" style="float: right;"></i>
        </div>
        <div class="f_content clearfix">
            <!--提示消息内容-->
            <div class="f_someText">
                <i class="iconfont icon-tishi"></i>
                <span>确定删除此信息？</span>
            </div>
            <!--按钮-->
            <div class="f_pormatBtn  clearfix">
                <div class="f_pormatBtn1">
                    确定
                </div>
                <div class="f_pormatBtn2 Js_closeBtn">
                    取消
                </div>
            </div>
        </div>
    </div>
</div>
<!--查看产品信息浮层-->
<div id="selectFloatProductPlan" class="PublicFloatBox adduser check">
    <div class="kongfx">
        <div class=" wid400">
            <div class="f_Head">
                <span>查看</span>
                <i class="Js_closeBtn iconfont icon-buoumaotubiao20 fr" style="float: right;"></i>
            </div>
            <div class="f_content">
                <div class="f_alonediv">
                    计划ID：<input type="text" name="" class="fid" disabled="disabled">
                </div>
                <div class="f_alonediv">
                    计划编号：<input type="text" name="" class="fplanseq" disabled="disabled">
                </div>
                <div class="f_alonediv">

                    订单编号：<input type="text" name="" class="forderseq" disabled="disabled">
                </div>
                <div class="f_alonediv">

                    产品：<input type="text" name="" class="fproductid" disabled="disabled">
                </div>
                <div class="shebeixulie">
                    计划数量：<input type="text" name="" class="fplancount" disabled="disabled">
                </div>
                <div class="shebeixulie">
                    交货日期：<input type="text" name="" class="fdeliverydate" disabled="disabled">
                </div>
                <div class="f_alonediv">
                    计划开始日期：<input type="text" name="" class="fplanstartdate" disabled="disabled">
                </div>
                <div class="f_alonediv">
                    计划结束日期：<input type="text" name="" class="fplanenddate" disabled="disabled">
                </div>
            </div>
        </div>
    </div>
</div>
<!--模态框编辑产品信息浮层-->
<div class="PublicFloatBox adduser update">
    <div class="kongfx">
        <div class=" wid400">
            <div class="f_Head">
                <span>编辑/查看</span>
                <i class="Js_closeBtn iconfont icon-buoumaotubiao20 fr" style="float: right;"></i>
            </div>
            <div class="f_content">
                <form action="updateFloatProductPlan">
                    <div class="f_alonedivs">
                        计划ID：<input type="text" name="id" class="fid" readonly unselectable="on">
                    </div>
                    <div class="f_alonediv">
                        计划编号：<input type="text" name="plan_seq" class="fplanseq" readonly unselectable="on">
                    </div>
                    <div class="f_alonediv">
                        订单编号：<input type="text" name="productOrder.order_seq" class="forderseq">
                    </div>
                    <div class="f_alonediv">
                        产品：<input type="text" name="product_id" class="fproductid">
                    </div>
                    <div class="shebeixulie">
                        计划数量：<input type="text" name="plan_count" class="fplancount">
                    </div>
                    <div class="shebeixulie">
                        交货日期：<input type="text" name="delivery_date" class="fdeliverydate">
                    </div>
                    <div class="f_alonediv">
                        计划开始日期：<input type="text" name="plan_start_date" class="fplanstartdate">
                    </div>
                    <div class="f_alonediv">
                        计划结束日期：<input type="text" name="plan_end_date" class="fplanenddate">
                    </div>
                    <div class="publicf_btn">
                        <div class="publicf_btn1">
                            <input type="submit" value="提交">
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
<div class="PublicFloatBox insert">
    <div class="kongfx">
        <div class=" wid400">
            <div class="f_Head">
                <span>添加生产计划</span>
                <i class="Js_closeBtn iconfont icon-buoumaotubiao20 fr" style="float: right;"></i>
            </div>
            <div class="f_content">
                <form action="insertFloatProductPlan" method="get" id="form2">
                    <div class="f_alonediv">
                        计划编号：<input type="text" name="plan_seq" class="fplanseq">
                    </div>
                    <div class="f_alonediv">

                        订单编号：<input type="text" name="productOrder.order_seq" class="forderseq">
                    </div>
                    <div class="shebeixulie">
                        计划数量：<input type="text" name="plan_count" class="fplancount">
                    </div>
                    <div class="shebeixulie">
                        交货日期：<input type="text" name="delivery_date" class="fdeliverydate">
                    </div>
                    <div class="f_alonediv">
                        计划开始日期：<input type="text" name="plan_start_date" class="fplanstartdate">
                    </div>
                    <div class="f_alonediv">
                        计划结束日期：<input type="text" name="plan_end_date" class="fplanenddate">
                    </div>
                    <div class="publicf_btn">
                        <div class="publicf_btn1">
                            <input type="submit" name="yes" value="确定">
                        </div>
                    </div>
                </form>
                <div class="publicf_btn2 fr Js_closeBtn">
                    取消
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<!-- 弹框的查看和编辑数值-->
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

    function add(_this) {
        var id = $(_this).parent().parent().children(".id").text();
        if ($(_this).attr("id") == "chakan") {
            $(".check").fadeIn(200);
        } else {
            $(".update").fadeIn(200);
        }
        $.ajax({
            type: "get",
            url: "selecteditFloatProductPlan",
            data: "id=" + id,//$("#div1 #form1").serialize(),
            success: function (productPlan) {
                $(".fid").val(productPlan.id);
                $(".fplanseq").val(productPlan.plan_seq);
                $(".forderseq").val(productPlan.productOrder.order_seq);
                $(".fproductid").val(productPlan.product_id);
                $(".fplancount").val(productPlan.plan_count);
                $(".fdeliverydate").val(productPlan.delivery_date);
                $(".fplanstartdate").val(productPlan.plan_start_date);
                $(".fplanenddate").val(productPlan.plan_end_date);
            }
        });

    };

    /* 页面查询的语句  */
    function selectCar() {
        //var pn = ${carList.pageNum==null?1:carList.pageNum};
        $.ajax({
            type: "get",
            url: "/selectCar?brand=宝马&price=0&seatnumber=0",
            //data: $("#form1").serialize(),
            success: function (carList) {
                //alert(carList.list[1].id);
                // var size = carList.list.length;
                // //alert(size);
                // var html = [];
                // for (var i = 0; i < size; i++) {
                //     html.push("<tr><td class='id'>" + (carList.list[i].carphoto == null ? '' : carList.list[i].carphoto) + "</td>");
                //     html.push("<td>" + (carList.list[i].cnumber == 0 ? '' : carList.list[i].cnumber) + "</td>");
                //     html.push("<td>" + (carList.list[i].brand == null ? '' : carList.list[i].brand) + "</td>");
                //     html.push("<td>" + (carList.list[i].cname == null ? '' : carList.list[i].cname) + "</td>");
                //     html.push("<td>" + (carList.list[i].price == 0 ? '' : carList.list[i].price) + "</td>");
                //     html.push("<td>" + (carList.list[i].seatnumber == null ? '' : carList.list[i].seatnumber) + "</td>");
                //     html.push("<td><div id='bianji' class='PublicTableBtnIcon Color3Btn'><button class='PublicTableBtnIcon Color3Btn edit edits' onclick='add(this)'><i class='iconfont icon-tubiaozhizuomobanyihuifu-'></i><span>编辑</span></button></div><div class='PublicTableBtnIcon Color4Btn Js_delete'><i class='iconfont icon-shanchu'></i><span>删除</span></div></td></tr>");
                // }
                $("#addList").html('');
                // $("#addList").append(html.join());
debugger;
                for (i=0; i<3; i++) {
                    tr = $('<tr>');
                    tr.append('<td>111</td>');
                    tr.append('<td>222</td>');
                    tr.append('<td>333</td>');
                    tr.append('<td>444</td>');
                    tr.append('<td>555</td>');
                    tr.append('<td>666</td>');
                    tr.append('<td>777</td>');
                    $("#addList").append(tr);
                }

            }
        })

    }

    function pageCar() {
        layui.use('table', function () {
            var table = layui.table;
            table.render({
                elem: '#cars',
                url: '/car/pageCar',
                page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                    layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'], //自定义分页布局
                    limits: [5, 10, 15],
                    limit: 5,
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
                    {field: 'carphoto', title: '汽车展示', sort: true},
                    {field: 'cnumber', title: '汽车编号', sort: true},
                    {field: 'brand', title: '品牌', sort: true},
                    {field: 'cname', title: '车辆名称', sort: true},
                    {field: 'price', title: '单价', sort: true},
                    {field: 'seatnumber', title: '座位数', sort: true},
                    {
                        field: 'id', title: '操作', sort: true, templet: function (data) {
                            return '<a class="layui-btn layui-btn-blue layui-btn-mini links_edit" href="#" onclick="doCar(\''+data.cnumber+'\')"><i class="iconfont icon-edit"></i>操作</a>'
                                +'<a class="layui-btn layui-btn-mini links_edit" href="#" onclick="deleteCar(\''+data.cnumber+'\')"><i class="iconfont icon-edit"></i>删除</a>';
                        }
                    }
                ]]
            });
        });
    }
    pageCar();
    function doCar(cnumber) {
        alert(cnumber);
    }
    function deleteCar(cnumber) {
        alert(cnumber);
    }
</script>
</body>
</html>