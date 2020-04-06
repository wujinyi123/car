package com.ddz.car.service.impl;


import com.ddz.car.domain.dto.OrderDTO;
import com.ddz.car.domain.dto.PersonalDTO;
import com.ddz.car.domain.dto.UserOrdersDTO;
import com.ddz.car.domain.qo.*;
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

    @Override
    public int reserveOrder(ReserveQO reserveQO) {
        return orderMapper.reserveOrder(reserveQO);
    }

    @Override
    public List<UserOrdersDTO> userOrders(int unumber) {
        return orderMapper.userOrders(unumber);
    }

    @Override
    public int accountOrder(AccountQO accountQO) {
        return orderMapper.accountOrder(accountQO);
    }

    @Override
    public List<PersonalDTO> orderCount(int unumber) {
        return orderMapper.orderCount(unumber);
    }

}
