package com.ddz.car.controller;

import com.ddz.car.common.ResponseData;
import com.ddz.car.common.ResponseDataUtil;
import com.ddz.car.domain.dto.LoginDTO;
import com.ddz.car.domain.dto.UserDTO;
import com.ddz.car.domain.qo.*;
import com.ddz.car.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
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

    //    登陆操作
    @RequestMapping("/login")
    @ResponseBody
    public LoginDTO login_check(HttpServletRequest request, LoginQO loginQO){
        UserDTO userDTO = userService.login_check(loginQO);
        if (userDTO!=null){
            request.getSession().setAttribute("thisUser",userDTO);
            return new LoginDTO("pass",userDTO.getFlag());
        }
        return new LoginDTO("unpass","账号、密码或用户类型有误");
    }


    @RequestMapping("/registerUser")
    @ResponseBody
    public int registerUser(UserInsertQO userInsertQO){
        int result = userService.insertUser(userInsertQO);
        return result;
    }
}
