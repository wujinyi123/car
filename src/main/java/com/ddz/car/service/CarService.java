package com.ddz.car.service;

import com.ddz.car.common.ResultEnums;
import com.ddz.car.domain.dto.CarDTO;
import com.ddz.car.domain.qo.CarQO;

import java.util.List;
import java.util.Map;

public interface CarService {
    List<CarDTO> listCar(CarQO carQO);

    Map<String,List<String>> getCarMb();
}
