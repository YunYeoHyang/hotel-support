package com.czxy.hotel.dao;

import com.czxy.hotel.domain.User;
import com.czxy.hotel.utils.MapperUtils;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface UserMapper extends MapperUtils<User> {
    @Select("select * from user where uid = #{uid}")
    public User ByUid(@Param("uid") Integer uid);

}
