/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.*;
/**
 *
 * @author javip
 */
public class DBConnection {
    private String driver = "com.mysql.jdbc.Driver";
    private String db = "bets";
    private String url = "jdbc:mysql://localhost:3306/";
    private String user = "root";
    private String pwd = "";
    
    private Connection connection;
    
    public DBConnection(){
        try {            
            Class.forName(driver);
            connection = DriverManager.getConnection(url+db, user, pwd);
        } catch (Exception e){}
    }
    
    public Connection cnx(){
        return connection;
    }
}
