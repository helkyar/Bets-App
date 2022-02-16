/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author javip
 */
public class DBConnection {
    public DBConnection(){        
        try{ Class.forName(driver);}catch(Exception e){}        
        try {conn = DriverManager.getConnection(url, user, pwd);
        } catch (SQLException ex) {}
    }
    
// VARIABLES __________________________________________________________________
    private String driver = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://localhost:3306/bets";
    private String user = "root";
    private String pwd = "";    
    
    public static PreparedStatement ps = null;
    public static Connection conn = null;
    public static Statement st = null;
    public static ResultSet rs = null;
    
}
