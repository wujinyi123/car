package com.ddz.car.service.impl;



import com.ddz.car.domain.dto.UserDTO;
import com.ddz.car.domain.qo.UserInsertQO;
import com.ddz.car.domain.qo.UserQO;
import com.ddz.car.domain.qo.UserUpdateQO;
import com.ddz.car.mapper.UserMapper;
import com.ddz.car.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;


    @Override
    public List<UserDTO> listUser(UserQO userQO) {
        return userMapper.listUser(userQO);
    }

    @Override
    public int deleteUser(int unumber) {
        return userMapper.deleteUser(unumber);
    }

    @Override
    public int updateUser(UserUpdateQO userUpdateQO) {
        return userMapper.updateUser(userUpdateQO);
    }

    @Override
    public int insertUser(UserInsertQO userInsertQO) {
        return userMapper.insertUser(userInsertQO);
    }
}
