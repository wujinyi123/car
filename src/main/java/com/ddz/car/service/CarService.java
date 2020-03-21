package com.ddz.car.service;

import com.ddz.car.domain.dto.CarDTO;
import com.ddz.car.domain.qo.CarQO;

import java.util.List;

public interface CarService {
    List<CarDTO> listCar(CarQO carQO);
}
