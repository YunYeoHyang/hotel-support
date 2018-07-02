package com.czxy.hotel.service;

import com.czxy.hotel.domain.House;
import com.czxy.hotel.domain.HouseInfo;

import java.util.List;

public interface HouseService {
    List<House> findAll(String id);

    List <House> house(String hid);
    List<HouseInfo> info(String hid);
}
