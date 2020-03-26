package com.ddz.car.service.impl;


import com.ddz.car.domain.dto.OrderDTO;
import com.ddz.car.domain.qo.OrderInsertQO;
import com.ddz.car.domain.qo.OrderQO;
import com.ddz.car.domain.qo.OrderUpdateQO;
import com.ddz.car.mapper.OrderMapper;
import com.ddz.car.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Resource
    private OrderMapper orderMapper;


    @Override
    public List<OrderDTO> listOrder(OrderQO orderQO) {
        return orderMapper.listOrder(orderQO);
    }

    @Override
    public int deleteOrder(int onumber) {
        return orderMapper.deleteOrder(onumber);
    }

    @Override
    public int updateOrder(OrderUpdateQO orderUpdateQO) {
        return orderMapper.updateOrder(orderUpdateQO);
    }

    @Override
    public int insertOrder(OrderInsertQO orderInsertQO) {
        return orderMapper.insertOrder(orderInsertQO);
    }
}
