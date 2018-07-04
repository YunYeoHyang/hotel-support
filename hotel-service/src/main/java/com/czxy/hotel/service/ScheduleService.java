package com.czxy.hotel.service;

import com.czxy.hotel.domain.Schedule;

import java.util.List;

public interface ScheduleService {
    List<Schedule> findAll(Integer uid);

}
