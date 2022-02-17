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
    
    public User(){}
    
    public User(int userid, String username, String password, int betsId) {
        this.userId = userid;
        this.username = username;
        this.password = password;
        this.betsId = betsId;
        this.data = new String[]{String.valueOf(userId), username, password,
            String.valueOf(betsId)};
    }  

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", username=" + username + 
            ", password=" + password + ", betsId=" + betsId + '}';
    }    
    
// GETTERS & SETTERS __________________________________________________________    
    public String[] getData() {return data;}
    public int getUserId() {return userId;}
    public String getUsername() {return username;}
    public String getPassword() {return password;}
    public int getBetsId() {return betsId;}

    public void setUserid(int userId) {this.userId = userId;}
    public void setUsername(String username) {this.username = username;}
    public void setPassword(String password) {this.password = password;}
    public void setBetsId(int betsId) {this.betsId = betsId;}
    
// VARIABLES __________________________________________________________________
    private String[] data;
    
    private int userId;
    private String username;
    private String password;
    private int betsId;
}
