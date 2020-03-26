package com.ddz.car.domain.qo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.io.File;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CarInsertQO {
    private String brand;
    private String cname;
    private String price;
    private String seatnumber;
    private File photofile;
    private String carphoto;
}
