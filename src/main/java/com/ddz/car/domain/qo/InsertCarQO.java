package com.ddz.car.domain.qo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class InsertCarQO {
    @NotBlank(message = "汽车品牌不能为空")
    private String brand;

    @NotBlank(message = "汽车名称不能为空")
    private String cname;

    @NotBlank(message = "租借单价不能为空")
    private String price;

    @NotBlank(message = "座位数不能为空")
    private String seatnumber;
}
