package com.ddz.car.mapper;


import com.ddz.car.domain.dto.UserDTO;
import com.ddz.car.domain.qo.UserInsertQO;
import com.ddz.car.domain.qo.UserQO;
import com.ddz.car.domain.qo.UserUpdateQO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {

    List<UserDTO> listUser(UserQO userQO);

//    删除订单信息
    int deleteUser(int unumber);

//    更新订单信息
    int updateUser(UserUpdateQO userUpdateQO);

    //    插入订单信息
    int insertUser(UserInsertQO userInsertQO);
}
