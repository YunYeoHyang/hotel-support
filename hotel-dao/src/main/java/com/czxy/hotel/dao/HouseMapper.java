package com.czxy.hotel.dao;

import com.czxy.hotel.domain.House;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface HouseMapper extends Mapper<House> {
//@Select("select category_name from where cid=#{cid}")
@Select("select *from house  where (select category_name from category where cid=#{cid})=house_type")
    public List<House> findAll(@Param("cid") String hid);

@Select("select*from house where hid=#{hid} ")
    List<House> house(@Param("hid") String hid);
}
