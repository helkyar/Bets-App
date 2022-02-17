/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dbconnection;

import static dbconnection.DBConnection.conn;
import static dbconnection.DBConnection.rs;
import static dbconnection.DBConnection.st;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.User;

/**
 *
 * @author javier
 */
public class DBUser {
    
    public DBUser(){        
        super();//call to parent to access database and set connection

        users = new ArrayList<>();

        try{initUsers();} 
        catch (SQLException e){e.printStackTrace();}
        catch(Exception e){e.printStackTrace();}    
        finally{try{conn.close();}catch(Exception e){e.printStackTrace();}}
    }

    /**
    * Stores all table data inside ArrayList variable. Each model instance
    * correlates to a table row.
    * @throws SQLException
    * @throws Exception 
    */
    private void initUsers() throws SQLException, Exception{ 
        String query = "SELECT ´user_id´, ´username´, ´password´, ´bets_id´"
                + " FROM users";

        st = conn.createStatement();
        rs = st.executeQuery(query);

        while(rs.next()) {
            users.add(new User(rs.getInt(1), rs.getString(2), rs.getString(3),
            rs.getInt(4)));
        }
    }
    // GETTERS & SETTERS _________________________________________________________
    /**
    * This variable holds the value of each row of the table User 
    * (one instance of User class per row).
    * @return users ArrayList with all the users in the database
    */
    public List<User> getUsers() {return users;}
    
// VARIABLES _________________________________________________________________
    private ArrayList<User> users;
}
