package com.ddz.car.service.impl;

import com.ddz.car.domain.dto.CarDTO;
import com.ddz.car.domain.qo.CarQO;
import com.ddz.car.mapper.CarMapper;
import com.ddz.car.service.CarService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CarServiceImpl implements CarService {
    @Resource
    private CarMapper carMapper;

    @Override
    public List<CarDTO> listCar(CarQO carQO) {
        return carMapper.listCar(carQO);
    }
}
