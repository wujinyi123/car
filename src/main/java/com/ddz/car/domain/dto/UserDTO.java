package com.ddz.car.domain.dto;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserDTO {
    private String unumber;
    private String uname;
    private String accountnumber;
    private String password;
    private String blacklist;
    private String flag;
    private String email;
    private String state;
    private String registertime;
}
