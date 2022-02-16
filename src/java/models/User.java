/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author javip
 */
public class User {
    private String userid;
    private String username;
    
    public User(String userid, String username) {
        this.userid = userid;
        this.username = username;
    }
    
    public String getUserid() {return userid;}
    public String getUsername() {return username;}

    public void setUserid(String userid) {this.userid = userid;}
    public void setUsername(String username) {this.username = username;}

}
