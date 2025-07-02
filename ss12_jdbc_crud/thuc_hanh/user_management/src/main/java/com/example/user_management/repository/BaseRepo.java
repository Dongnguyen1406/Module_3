package com.example.user_management.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseRepo {
    private static String jdbcURL = "jdbc:mysql://localhost:3306/demo_user?useSSL=false";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "root123";
    private static Connection connection = null;

    private BaseRepo() {
    }

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
    public static Connection getConnection(){
        return connection;
    }
}



