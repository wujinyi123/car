package com.ddz.car.mapper;


import com.ddz.car.domain.dto.OrderDTO;
import com.ddz.car.domain.qo.OrderInsertQO;
import com.ddz.car.domain.qo.OrderQO;
import com.ddz.car.domain.qo.OrderUpdateQO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderMapper {

    List<OrderDTO> listOrder(OrderQO orderQO);

//    删除订单信息
    int deleteOrder(int onumber);

//    更新订单信息
    int updateOrder(OrderUpdateQO orderUpdateQO);

    //    插入订单信息
    int insertOrder(OrderInsertQO orderInsertQO);
}
