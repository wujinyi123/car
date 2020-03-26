package com.ddz.car.domain.qo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserUpdateQO {
    private String unumber;
    private String uname;
    private String accountnumber;
    private String email;
    private String blacklist;
    private String flag;
}
