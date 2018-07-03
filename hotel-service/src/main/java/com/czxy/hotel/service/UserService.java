package com.czxy.hotel.service;

import com.czxy.hotel.domain.User;

import java.util.List;

public interface UserService {

    User login(User user);

    void register(User user);

    List<User> findAll();
}
