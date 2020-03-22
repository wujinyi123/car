package com.ddz.car.domain.qo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CarUpdateQO {
    private String cnumber;
    private String brand;
    private String cname;
    private String price;
    private String seatnumber;
    private String carphoto;
}
