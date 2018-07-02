package com.czxy.hotel.web.controller;

import com.czxy.hotel.domain.User;
import com.czxy.hotel.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {

    @Resource
    private UserService us;

    @RequestMapping("/login.action")
    public String login(User user ,HttpServletRequest hsr){
        System.out.println(user);
        List<User> allUser = us.findAllUser();
        boolean b = false;
        if (user != null){
            for (User thisU:allUser) {
                System.out.println(thisU);
                if (thisU.getUname().equals(user.getUname()) && thisU.getUpwd().equals(user.getUpwd())){
                    user=thisU;
                    b = true;
                    break;
                }
            }
            System.out.println(b);
            if (b){
                hsr.getSession().setAttribute("loginUser",user);
                return "index";
            }else {
                hsr.setAttribute("msg","账号或密码输入错误请重新输入");
                hsr.setAttribute("loginInfo",user);
                return "sign";
            }
        }else{
           return "sign";
        }
    }
}
