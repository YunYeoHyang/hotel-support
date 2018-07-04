package com.czxy.hotel.web.controller;

import com.czxy.hotel.domain.Schedule;
import com.czxy.hotel.domain.User;
import com.czxy.hotel.service.ScheduleService;
import com.czxy.hotel.service.impl.ScheduleServiceImpl;
import com.sun.org.apache.bcel.internal.generic.NEW;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@Controller
public class ScheduleController {

    @Autowired
    private ScheduleService scheduleService;

    @RequestMapping("/findAllSchedule.action")
    public String findAll(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loginuser");

        List<Schedule> list = scheduleService.findAll(1);
        ArrayList<Schedule> Schedule = new ArrayList<>();
        model.addAttribute("AllSchedule", list);
        return "/schedule";
    }
    @RequestMapping("/findAllHouse.action")
    public String findAllHouse(HttpServletRequest request, Model model){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loginuser");
        String uid = request.getParameter("hid");
        List<Schedule> list = scheduleService.findAll(1);
        for (Schedule schedule : list) {
            if (schedule.getHid().toString().equals(uid)){
                model.addAttribute("house", schedule.getHouse());
            }
        }

        return "/house-details";
    }
}
