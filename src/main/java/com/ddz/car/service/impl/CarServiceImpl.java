package com.ddz.car.service.impl;

import com.ddz.car.domain.dto.CarDTO;
import com.ddz.car.domain.qo.CarQO;
import com.ddz.car.domain.qo.CarUpdateQO;
import com.ddz.car.mapper.CarMapper;
import com.ddz.car.service.CarService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CarServiceImpl implements CarService {
    @Resource
    private CarMapper carMapper;

    @Override
    public List<CarDTO> listCar(CarQO carQO) {
        return carMapper.listCar(carQO);
    }

    @Override
    public Map<String, List<String>> getCarMb() {
        Map<String,List<String>> map = new HashMap<>();
        map.put("brand",carMapper.listBrand());
        map.put("seatnumber",carMapper.listSeatnumber());
        return map;
    }

    @Override
    public int deleteCar(int cnumber) {
        return  carMapper.deleteCar(cnumber);
    }

    @Override
    public int updateCar(CarUpdateQO carUpdateQO) {
        return carMapper.updateCar(carUpdateQO);
    }


}
