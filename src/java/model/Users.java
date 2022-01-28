/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author javip
 */
public class Users {
    private String userid;
    private String username;
    
    public Users(String userid, String username) {
        this.userid = userid;
        this.username = username;
    }
    
    public String getUserid() {return userid;}
    public String getUsername() {return username;}

    public void setUserid(String userid) {this.userid = userid;}
    public void setUsername(String username) {this.username = username;}

}
