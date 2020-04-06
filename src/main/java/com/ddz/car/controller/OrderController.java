package com.ddz.car.controller;

import com.ddz.car.common.ResponseData;
import com.ddz.car.common.ResponseDataUtil;
import com.ddz.car.domain.dto.OrderDTO;
import com.ddz.car.domain.dto.PersonalDTO;
import com.ddz.car.domain.dto.UserOrdersDTO;
import com.ddz.car.domain.qo.*;
import com.ddz.car.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;


    @RequestMapping("/listOrder")
    @ResponseBody
    public List<OrderDTO> listOrder(OrderQO orderQO) {
        return orderService.listOrder(orderQO);
    }

    @RequestMapping("/listOrder2")
    @ResponseBody
    public ResponseData<List<OrderDTO>> listOrder2(OrderQO orderQO) {
        return ResponseDataUtil.buildSuccess(orderService.listOrder(orderQO));
    }

//    分页查询
    @RequestMapping("/pageOrder")
    @ResponseBody
    public ResponseData<List<OrderDTO>> pageOrder(OrderQO orderQO) {
        return ResponseDataUtil.buildSuccess(orderService.listOrder(orderQO),orderQO);
    }

    //     删除操作
    @RequestMapping("/deleteOrder")
    @ResponseBody
    public int deleteOrder(int onumber){
        int result = orderService.deleteOrder(onumber);
        return result;
    }

    //    更新操作
    @RequestMapping("/updateOrder")
    @ResponseBody
    public int updateOrder(OrderUpdateQO orderUpdateQO){
        int result = orderService.updateOrder(orderUpdateQO);
        return result;
    }

    //    插入操作
    @RequestMapping("/insertOrder")
    @ResponseBody
    public int insertOrder(@RequestBody OrderInsertQO orderInsertQO){
        int result = orderService.insertOrder(orderInsertQO);
        return result;
    }

//    用户预定
    @RequestMapping("/reserveOrder")
    @ResponseBody
    public int reserveOrder(@RequestBody ReserveQO reserveQO){
        int result = orderService.reserveOrder(reserveQO);
        return result;
    }

    //用户订单查询
    @RequestMapping("/userOrders")
    @ResponseBody
    public List<UserOrdersDTO> userOrders(int unumber){
        List<UserOrdersDTO> orderslist = orderService.userOrders(unumber);
        return orderslist;
    }

    //用户结账
    @RequestMapping("/accountOrder")
    @ResponseBody
    public int accountOrder(AccountQO accountQO){
        int result = orderService.accountOrder(accountQO);
        return result;
    }

//    个人中心
    @RequestMapping("/orderCount")
    @ResponseBody
    public List<PersonalDTO> orderCount(int unumber){
        List<PersonalDTO> payList = orderService.orderCount(unumber);
        System.out.println(unumber);
        return payList;
    }
}
