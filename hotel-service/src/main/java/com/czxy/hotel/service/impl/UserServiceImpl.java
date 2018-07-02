package com.czxy.hotel.service.impl;

import com.czxy.hotel.dao.UserMapper;
import com.czxy.hotel.domain.User;
import com.czxy.hotel.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper um;

    @Override
    public List<User> findAllUser() {
        List<User> users = um.selectAll();
        for (User thisU : users) {
            System.err.println(thisU);
        }
        return users;
    }
}
