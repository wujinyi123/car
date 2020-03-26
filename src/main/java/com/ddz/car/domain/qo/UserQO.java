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
public class UserQO extends PageQO {
    private String uname;
    private String blacklist;
    private String email;
    private String flag;
}
