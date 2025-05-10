package com.crowncrest.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static String URL = "jdbc:mysql://localhost:3306/crowncrest";
    private static String USER = "root";
    private static String PASSWORD = "sanu@8142";
    private static Connection con;
    
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Required in older JDKs, safe to keep
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("✅ Database connection established");
        } catch (Exception e) {
            System.out.println("❌ DB Connection failed: " + e.getMessage());
            e.printStackTrace();
        }
        return con;
    }
}
