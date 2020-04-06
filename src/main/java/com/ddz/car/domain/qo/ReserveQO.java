package com.ddz.car.domain.qo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ReserveQO {
    private String input_province;
    private String input_city;
    private String pcartime;
    private String rcartime;
    private String price;
    private String seatnumber;
    private String brand;
    private String unumber;
    private String cnumber;
}
