package com.ddz.car.service;

import com.ddz.car.domain.dto.OrderDTO;
import com.ddz.car.domain.qo.OrderInsertQO;
import com.ddz.car.domain.qo.OrderQO;
import com.ddz.car.domain.qo.OrderUpdateQO;

import java.util.List;
import java.util.Map;

public interface OrderService {
    List<OrderDTO> listOrder(OrderQO orderQO);

    //    删除订单信息
    int deleteOrder(int onumber);

    //    更新车辆信息
    int updateOrder(OrderUpdateQO orderUpdateQO);

    //    插入订单信息
    int insertOrder(OrderInsertQO orderInsertQO);
}
