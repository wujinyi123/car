package com.ddz.car.domain.qo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderInsertQO {
    private String cnumber;
    private String unumber;
    private String address;
    private String uprice;
    private String pcartime;

}
