package com.czxy.hotel.dao;

import com.czxy.hotel.domain.Schedule;
import org.apache.ibatis.annotations.*;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface ScheduleMapper extends Mapper<Schedule> {
    @Select("select * from schedule s,house h,user u where s.uid = h.uid and h.uid = u.uid and s.uid=#{uid}")
    @Results({
            @Result(property = "hid",column = "hid"),

            @Result(property = "house",column = "hid",one = @One(select = "com.czxy.hotel.dao.HouseMapper.ByHid")),
            @Result(property = "uid",column = "uid"),
            @Result(property = "user",column = "uid",one = @One(select = "com.czxy.hotel.dao.UserMapper.ByUid")),
            @Result(property = "scheduleDate",column = "schedule_date"),
            @Result(property = "viewStatus",column = "view_status"),
            @Result(property = "scheduleStatus",column = "schedule_status")
    })
    public List<Schedule> findAll(@Param("uid") Integer uid);



}
