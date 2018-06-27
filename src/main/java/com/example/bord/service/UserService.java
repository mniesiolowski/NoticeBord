package com.example.bord.service;

import com.example.bord.entity.User;

public interface UserService {
    User findByUserName(String name);

    void saveUser(User user);

}
