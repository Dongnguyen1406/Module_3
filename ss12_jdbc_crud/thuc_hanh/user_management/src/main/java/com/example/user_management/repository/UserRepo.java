package com.example.user_management.repository;

import com.example.user_management.entity.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepo {

    public List<User> selectAllUsers() {
        List<User> users = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepo.getConnection().
                    prepareStatement("select id, name, email, country from users");
            ResultSet resultSet = statement.executeQuery();
            User user;
            while (resultSet.next()) {
                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setCountry(resultSet.getString("country"));
                users.add(user);
            }
        } catch (SQLException e) {
            System.out.println("Lỗi sql");
        }
        return users;
    }

    public boolean insertUser(User user) {
        try {
            PreparedStatement statement = BaseRepo.getConnection().
                    prepareStatement("insert into users(name, email, country) values (?,?,?)");
            statement.setString(1, user.getName());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getCountry());
            return statement.executeUpdate() != 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean deleteUser(int id) {
        boolean rowDelete = false;
        try {
            PreparedStatement statement = BaseRepo.getConnection().
                    prepareStatement("delete from users where id=?");
            statement.setInt(1, id);
            rowDelete = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDelete;
    }

    public boolean updateUser(User user) {
        boolean rowUpdate = false;
        try {
            PreparedStatement statement = BaseRepo.getConnection().
                    prepareStatement("update users set name=?, email=?, country=? where id=?");
            statement.setString(1, user.getName());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getCountry());
            statement.setInt(4, user.getId());
            rowUpdate = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdate;
    }

    public User selectUser(int id) {
        User user = null;
        try {
            PreparedStatement statement = BaseRepo.getConnection().
                    prepareStatement("select * from users where id=?");
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

}
