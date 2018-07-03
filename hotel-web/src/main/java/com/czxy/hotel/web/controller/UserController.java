package com.czxy.hotel.web.controller;

import com.czxy.hotel.domain.User;
import com.czxy.hotel.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.UUID;

@Controller
public class UserController {

    @Resource
    private UserService us;

    @RequestMapping("/login.action")
    public String login(User user , HttpServletRequest request , HttpServletResponse response, HttpSession session, Model model){
        // System.out.println("user"+user);
        User loginUser=us.login(user);
        // System.out.println("loginUser"+loginUser);
        if (loginUser!=null){

//            request.getSession().getAttribute("user")
            session.setAttribute("user",loginUser);
            session.setMaxInactiveInterval(1000);
            System.out.println(loginUser.getUid());
            //查询所有的订单信息

            return "p-center";
        }else {
            request.setAttribute("msg","账号或密码输入错误请重新输入");
            request.setAttribute("loginInfo",user);
            return "sign";
        }
    }

    @RequestMapping("/register.action")
    public String register(User user,HttpServletRequest request){
        System.out.println(user);
        int s = UUID.randomUUID().hashCode();
        System.out.println(s);
        user.setUid(s);
        request.setAttribute("phone",user.getUphone());
        us.register(user);
        return "sign";
    }
}
