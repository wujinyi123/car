package com.ddz.car.domain.qo;

import com.ddz.car.common.PageQO;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CarQO extends PageQO {
    private String brand;
    private String seatnumber;
    private String price;
}
