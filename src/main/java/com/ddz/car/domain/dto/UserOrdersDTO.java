package com.ddz.car.domain.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserOrdersDTO {
    private String carphoto;
    private String cname;
    private String onumber;
    private String uprice;
    private String tprice;
    private String pcartime;
    private String rcartime;
    private String pay;
}
