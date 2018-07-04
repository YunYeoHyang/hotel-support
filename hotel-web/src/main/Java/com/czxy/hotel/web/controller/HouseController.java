package com.czxy.hotel.web.controller;

import com.czxy.hotel.domain.House;
import com.czxy.hotel.domain.HouseInfo;
import com.czxy.hotel.service.HouseService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class HouseController{
    @Resource
    private HouseService houseService;

    @RequestMapping("/list.action")
    public String list(String id,Model model){
        List<House> houses=houseService.findAll(id);
        model.addAttribute("st",houses);
        return "/entire";
    }
    @RequestMapping("/house.action")
    public String house(String hid,Model model){
      List<House> house=houseService.house(hid);
      List<HouseInfo> houseinfos=houseService.info(hid);
      model.addAttribute("hs",house);
      model.addAttribute("info",houseinfos);
        return "/house-details";
    }


}

