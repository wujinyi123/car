package com.ddz.car.service;


import com.ddz.car.domain.dto.LoginDTO;
import com.ddz.car.domain.dto.UserDTO;
import com.ddz.car.domain.qo.LoginQO;
import com.ddz.car.domain.qo.UserInsertQO;
import com.ddz.car.domain.qo.UserQO;
import com.ddz.car.domain.qo.UserUpdateQO;

import java.util.List;

public interface UserService {
    List<UserDTO> listUser(UserQO userQO);

    //    删除订单信息
    int deleteUser(int unumber);

    //    更新车辆信息
    int updateUser(UserUpdateQO userUpdateQO);

    //    插入订单信息
    int insertUser(UserInsertQO userInsertQO);

    //登录
    UserDTO login_check(LoginQO loginQO);

}
