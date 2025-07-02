package com.example.user_management.service;

import java.sql.SQLException;
import java.util.List;

public interface IService<T> {
    public T selectUser(int id);

    public List<T> selectAllUsers();

    public void insertUser(T user) throws SQLException;

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(T t) throws SQLException;
    
    public List<T> searchByCountry(String country);
    
    public List<T> sortByName();
}
