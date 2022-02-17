/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dbconnection;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author javip
 */
public class DBConnection {
    public DBConnection(){        
        try{ Class.forName(driver);}
        catch(ClassNotFoundException e){e.printStackTrace();} 
        
        try {conn = DriverManager.getConnection(url, user, pwd);}
        catch (SQLException e){e.printStackTrace();}
    }
    
// VARIABLES __________________________________________________________________
    private String driver = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://localhost:3306/bets";
    private String user = "root";
    private String pwd = "";    
    
    protected static PreparedStatement ps = null;
    protected static Connection conn = null;
    protected static Statement st = null;
    protected static ResultSet rs = null;
    
}
