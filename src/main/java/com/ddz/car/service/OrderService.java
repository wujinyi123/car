package com.ddz.car.service;

import com.ddz.car.domain.dto.OrderDTO;
import com.ddz.car.domain.dto.PersonalDTO;
import com.ddz.car.domain.dto.UserOrdersDTO;
import com.ddz.car.domain.qo.*;

import java.util.List;

public interface OrderService {
    List<OrderDTO> listOrder(OrderQO orderQO);

    //    删除订单信息
    int deleteOrder(int onumber);

    //    更新车辆信息
    int updateOrder(OrderUpdateQO orderUpdateQO);

    //    插入订单信息
    int insertOrder(OrderInsertQO orderInsertQO);

    //用户预定
    int reserveOrder(ReserveQO reserveQO);

    //    用户订单查询
    List<UserOrdersDTO> userOrders(int unumber);

    //    用户结账
    int accountOrder(AccountQO accountQO);

    //    个人中心
    List<PersonalDTO> orderCount(int unumber);
}
