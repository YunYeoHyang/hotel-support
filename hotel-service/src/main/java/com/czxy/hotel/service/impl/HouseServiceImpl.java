package com.czxy.hotel.service.impl;

import com.czxy.hotel.dao.CategoryMapper;
import com.czxy.hotel.dao.HouseInfoMapper;
import com.czxy.hotel.dao.HouseMapper;
import com.czxy.hotel.domain.Category;
import com.czxy.hotel.domain.House;
import com.czxy.hotel.domain.HouseInfo;
import com.czxy.hotel.service.HouseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class HouseServiceImpl implements HouseService {
@Resource
private HouseMapper houseMapper;
@Resource
private HouseInfoMapper houseInfoMapper;
/*
@Resource
private CategoryMapper categoryMapper;
*/

    @Override
    public List<House> findAll(String id) {
        List<House> houses = houseMapper.findAll(id);
        System.out.println(houses);
        //List<Category> categories = categoryMapper.selectAll();
        return houses;
    }

    @Override
    public List<House> house(String hid) {
     List<House> house=houseMapper.house(hid);
        return house;
    }

    @Override
    public List<HouseInfo> info(String hid) {
        System.out.println(hid);
     List<HouseInfo> houseInfos=houseInfoMapper.info(hid);
        return houseInfos;
    }
}
