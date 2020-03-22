package com.ddz.car.controller;

import com.ddz.car.common.ResponseData;
import com.ddz.car.common.ResponseDataUtil;
import com.ddz.car.domain.dto.CarDTO;
import com.ddz.car.domain.qo.CarQO;
import com.ddz.car.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/car")
public class CarController {
    @Autowired
    private CarService carService;

    @RequestMapping("/listCar")
    @ResponseBody
    public List<CarDTO> listCar(CarQO carQO) {
        return carService.listCar(carQO);
    }

    @RequestMapping("/listCar2")
    @ResponseBody
    public ResponseData<List<CarDTO>> listCar2(CarQO carQO) {
        return ResponseDataUtil.buildSuccess(carService.listCar(carQO));
    }

    @RequestMapping("/pageCar")
    @ResponseBody
    public ResponseData<List<CarDTO>> pageCar(CarQO carQO) {
        return ResponseDataUtil.buildSuccess(carService.listCar(carQO),carQO);
    }

    @RequestMapping("/getCarMb")
    @ResponseBody
    public ResponseData<Map<String,List<String>>> getCarMb() {
        return ResponseDataUtil.buildSuccess(carService.getCarMb());
    }

}
