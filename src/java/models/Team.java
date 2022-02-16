/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

/**
 *
 * @author admin
 */
public class Team {
    
    public int visWn = 16;
    public int visLs = 22;
    public int locWn = 17;
    public int locLs = 13;
    
    public Team() {}

    public List<Team> getTeams() {
        List<Team> teams = new ArrayList<>();
        teams.add(this);
        return teams;
    }
    
}
