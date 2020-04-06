package com.ddz.car.domain.qo;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserInsertQO {
    private String unumber;
    private String uname;
    private String accountnumber;
    private String password;
    private String flag;
    private String email;
    private String registertime;
}
