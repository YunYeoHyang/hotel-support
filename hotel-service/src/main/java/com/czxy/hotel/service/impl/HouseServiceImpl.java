package com.czxy.hotel.service.impl;

import com.czxy.hotel.dao.HouseMapper;
import com.czxy.hotel.domain.House;
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

    @Override
    public List<House> findAll() {
        List<House> houses = houseMapper.selectAll();
        return houses;
    }
}
