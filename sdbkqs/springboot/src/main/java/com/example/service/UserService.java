package com.example.service;


import com.example.entity.User;
import com.example.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService {

    @Resource
    private UserMapper userMapper;

    public void add(User user) {
        userMapper.insert(user);
    }



}