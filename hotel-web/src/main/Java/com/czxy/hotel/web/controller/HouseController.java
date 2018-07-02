package com.czxy.hotel.web.controller;

import com.czxy.hotel.domain.House;
import com.czxy.hotel.service.HouseService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class HouseController {
    @Resource
    private HouseService houseService;

    @RequestMapping("/list.action")
    public String list(Model model){

        List<House> houses=houseService.findAll();
        model.addAttribute("st",houses);
        return "entire";

    }


}

