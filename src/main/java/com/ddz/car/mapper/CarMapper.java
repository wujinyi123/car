package com.ddz.car.mapper;

import com.ddz.car.domain.dto.CarDTO;
import com.ddz.car.domain.qo.CarQO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CarMapper {
    List<CarDTO> listCar(CarQO carQO);

    List<String> listBrand();

    List<String> listSeatnumber();
}
