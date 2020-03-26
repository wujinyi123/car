package com.ddz.car.domain.dto;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderDTO {
    private String onumber;
    private String cnumber;
    private String unumber;
    private String cname;
    private String uname;
    private String address;
    private String uprice;
    private String tprice;
    private String pcartime;
    private String rcartime;
    private String ostate;



}
