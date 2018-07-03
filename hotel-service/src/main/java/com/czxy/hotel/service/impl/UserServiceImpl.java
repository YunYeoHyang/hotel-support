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


    public List<User> findAll() {
        return um.selectAll();
    }

    public User login(User user) {
        User loginUser = um.selectOne(user);
        return loginUser;
    }

    public void register(User user) {
        um.insert(user);

    }

}
