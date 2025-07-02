package com.example.user_management.service.impl;

import com.example.user_management.entity.User;
import com.example.user_management.repository.UserRepo;
import com.example.user_management.service.IUserService;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    private static UserRepo userRepo = new UserRepo();
    
    @Override
    public User selectUser(int id) {
        return userRepo.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return userRepo.selectAllUsers();
    }

    @Override
    public void insertUser(User user) throws SQLException {
        userRepo.insertUser(user);
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return userRepo.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return userRepo.updateUser(user);
    }
}
