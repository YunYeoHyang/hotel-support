package com.czxy.hotel.dao;

import com.czxy.hotel.domain.HouseInfo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface HouseInfoMapper extends Mapper<HouseInfo> {
@Select("select *from house_info where info_id=#{InfoId}")
    List<HouseInfo> info(@Param("InfoId") String hid);
}
