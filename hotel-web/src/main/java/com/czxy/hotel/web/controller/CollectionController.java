package com.czxy.hotel.web.controller;

import com.czxy.hotel.domain.Collection;
import com.czxy.hotel.service.CollectionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class CollectionController {

    @Resource
    private CollectionService collectionService;

    @RequestMapping("findAll.action")
    public String findAll(Collection collection ,Model model){

        List<Collection> list = collectionService.findAll(collection);

        model.addAttribute("list",list);
        model.addAttribute("collection" , collection);
        return "collection";
    }
}
