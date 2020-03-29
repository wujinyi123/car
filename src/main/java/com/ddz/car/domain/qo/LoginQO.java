package com.ddz.car.domain.qo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class LoginQO {
    private String accountnumber;
    private String password;
    private String flag;
}
