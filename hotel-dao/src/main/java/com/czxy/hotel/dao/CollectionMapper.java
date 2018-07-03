package com.czxy.hotel.dao;

import com.czxy.hotel.domain.Collection;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface CollectionMapper extends Mapper<Collection> {


    @Select("SELECT * FROM house h , collection c where h.hid = c.hid")
    @Results({
            @Result(property = "uid" , column = "uid"),
            @Result(property = "hid" , column = "hid"),
            @Result(property = "house" , one = @One(select="com.czxy.hotel.dao.HouseMapper.selectByPrimaryKey"),column = "hid")
    })
    List<Collection> findAll(Collection collection);
}
