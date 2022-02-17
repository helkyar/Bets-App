/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import dbconnection.DBConnection;

/**
 *
 * @author javip
 */
public class User {
    
     private class Connect extends DBConnection{
        
    }
     
    public User(String userid, String username) {
        this.userid = userid;
        this.username = username;
    }
    
// GETTERS & SETTERS __________________________________________________________
    public String getUserid() {return userid;}
    public String getUsername() {return username;}

    public void setUserid(String userid) {this.userid = userid;}
    public void setUsername(String username) {this.username = username;}
    
// VARIABLES __________________________________________________________________
    private String userid;
    private String username;
    
}
