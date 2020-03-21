/// <reference path="jquery-1.9.1.min.js" />
$(function () {
        var count=0;
    $(".Js_closeBtn").click(function () {
        $(".adduser,.f_delete,.check,.insert").fadeOut(200);
    });
    //编辑
    $(".edit").click(function () {
    	alert("进来啦")
        $(".update").fadeIn(200);
    });
    $(".Js_delete").click(function () {
        $(".f_delete").fadeIn(200);
    });
    $(".add").click(function() {
       count++;
        if(count%2!=0){
            $(".addContent").fadeIn(200);
        }else{
            $(".addContent").fadeOut(200);
        }
    });
    $(".close").click(function(){
        $(".adduser,.check").fadeOut(200);
    })
    $(".Order_edit").click(function() {
        count++;
        if(count%2!=0){
               $(".addContent").fadeIn(200);
        }else{
             $(".addContent").fadeOut(200);
        }
    });
    //查看
    $(".check_edit").click(function(event) {
    	alert("查看一下")
        $(".check").fadeIn(200);
    });
    $(".Js_edit").click(function(event) {
        $(".insert").fadeIn(200);
    });

    //左侧菜单
    //$(".Js_MenuList").click(function () {
    //    if ($(".Js_leftBox").css("left") == "0px") {
    //        $(".Js_RightBox").css("width", "96%");
    //        $(".Js_leftBox").animate({ left: "-13%" }, 200);
    //        $(".Js_RightBox").animate({ left: "0" }, 200);
    //    } else {
    //        $(".Js_RightBox").css("width", "83%");
    //        $(".Js_leftBox").animate({ left: "0" }, 200);
    //        $(".Js_RightBox").animate({ left: "13%" }, 200);

    //    }
    //});

    //返回顶部
    $(window).on("scroll", function () {
        if ($(this).scrollTop() > 300) {
            $('.back-to-top').fadeIn();
        } else {
            $('.back-to-top').fadeOut();
        }
    });

    $('.back-to-top').on("click", function () {
        $("html, body").animate({ scrollTop: 0 }, 600);
        return false;
    });

});