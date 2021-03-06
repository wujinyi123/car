package com.ddz.car.mapper;

import com.ddz.car.domain.dto.CarDTO;
import com.ddz.car.domain.qo.CarQO;
import com.ddz.car.domain.qo.CarUpdateQO;
import com.ddz.car.domain.qo.InsertCarQO;
import com.ddz.car.domain.qo.RentalQO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CarMapper {

    List<CarDTO> listCar(CarQO carQO);

    List<String> listBrand();

    List<String> listSeatnumber();

    int deleteCar(int cnumber);

//    更新车辆信息
    int updateCar(CarUpdateQO carUpdateQO);

//    浮窗信息添加
    CarDTO addFloatCar(int cnumber);

    /**
     * 添加车辆
     * @param insertCarQO
     * @return
     */
    int insertCar(InsertCarQO insertCarQO);

//    用户查询车辆
    List<CarDTO>  checkCar(RentalQO rentalQO);
}
