package com.ddz.car.controller;

import com.ddz.car.common.ResponseData;
import com.ddz.car.common.ResponseDataUtil;
import com.ddz.car.domain.dto.CarDTO;
import com.ddz.car.domain.qo.CarQO;
import com.ddz.car.domain.qo.CarUpdateQO;
import com.ddz.car.domain.qo.InsertCarQO;
import com.ddz.car.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.List;
import java.util.Map;

@Controller
@Validated
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

//    分页查询
    @RequestMapping("/pageCar")
    @ResponseBody
    public ResponseData<List<CarDTO>> pageCar(CarQO carQO) {
        return ResponseDataUtil.buildSuccess(carService.listCar(carQO),carQO);
    }

//    码表查询
    @RequestMapping("/getCarMb")
    @ResponseBody
    public ResponseData<Map<String,List<String>>> getCarMb() {
        return ResponseDataUtil.buildSuccess(carService.getCarMb());
    }

    //     删除操作
    @RequestMapping("/deleteCar")
    @ResponseBody
    public int deleteCar(int cnumber){
        int result = carService.deleteCar(cnumber);
        return result;
    }

    //    更新操作
    @RequestMapping("/updateCar")
    @ResponseBody
    public int updateCar(CarUpdateQO carUpdateQO){
        int result = carService.updateCar(carUpdateQO);
        return result;
    }

    //    浮窗信息添加
    @RequestMapping("/addFloatCar")
    @ResponseBody
    public CarDTO addFloatCar(int cnumber){
        return carService.addFloatCar(cnumber);
    }

    /**
     * 添加车辆
     * @param insertCarQO
     * @return
     */
    @PostMapping("/insertCar")
    @ResponseBody
    public int insertCar(@RequestBody @Valid InsertCarQO insertCarQO) {
        return carService.insertCar(insertCarQO);
    }
}
