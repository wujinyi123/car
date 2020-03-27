package com.ddz.car.controller;

import com.ddz.car.common.ResponseData;
import com.ddz.car.common.ResponseDataUtil;
import com.ddz.car.domain.dto.OrderDTO;
import com.ddz.car.domain.dto.UserDTO;
import com.ddz.car.domain.qo.OrderQO;
import com.ddz.car.domain.qo.UserInsertQO;
import com.ddz.car.domain.qo.UserQO;
import com.ddz.car.domain.qo.UserUpdateQO;
import com.ddz.car.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;


//    分页查询
    @RequestMapping("/pageUser")
    @ResponseBody
    public ResponseData<List<UserDTO>> pageUser(UserQO userQO) {
        return ResponseDataUtil.buildSuccess(userService.listUser(userQO),userQO);
    }

    //     删除操作
    @RequestMapping("/deleteUser")
    @ResponseBody
    public int deleteUser(int unumber){
        int result = userService.deleteUser(unumber);
        return result;
    }

    //    更新操作
    @RequestMapping("/updateUser")
    @ResponseBody
    public int updateUser(UserUpdateQO userUpdateQO){
        int result = userService.updateUser(userUpdateQO);
        return result;
    }

    //    插入操作
    @RequestMapping("/insertUser")
    @ResponseBody
    public int insertUser(@RequestBody UserInsertQO userInsertQO){
        int result = userService.insertUser(userInsertQO);
        return result;
    }
}
