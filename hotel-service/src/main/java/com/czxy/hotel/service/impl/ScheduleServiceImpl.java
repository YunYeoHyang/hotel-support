package com.czxy.hotel.service.impl;

import com.czxy.hotel.dao.ScheduleMapper;
import com.czxy.hotel.domain.Schedule;
import com.czxy.hotel.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class ScheduleServiceImpl implements ScheduleService {
    @Autowired
    private ScheduleMapper scheduleMapper;
    @Override
    public List<Schedule> findAll(Integer uid) {
        List<Schedule> all = scheduleMapper.findAll(uid);
        return all;
    }
}
