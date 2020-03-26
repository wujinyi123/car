package com.ddz.car.service;

import com.ddz.car.common.ResultEnums;
import com.ddz.car.domain.dto.CarDTO;
import com.ddz.car.domain.qo.CarQO;
import com.ddz.car.domain.qo.CarUpdateQO;

import java.util.List;
import java.util.Map;

public interface CarService {
    List<CarDTO> listCar(CarQO carQO);

    Map<String,List<String>> getCarMb();

    int deleteCar(int cnumber);

    //    更新车辆信息
    int updateCar(CarUpdateQO carUpdateQO);

    CarDTO addFloatCar(int cnumber);
}
