package com.ddz.car.domain.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CarDTO {
    private String cnumber;
    private String brand;
    private String cname;
    private String price;
    private String seatnumber;
    private String carphoto;
    private String state;
}
