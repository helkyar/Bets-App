/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dbconnection;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Team;

/**
 * Conection to database and asignation of values of the model variables
 * @author javier
 */
public class TeamConnect extends DBConnection{

    public TeamConnect(){        
        super();//call to parent to access database and set connection

        teams = new ArrayList<>();

        try{initTeams();} 
        catch (SQLException e){e.printStackTrace();}
        catch(Exception e){e.printStackTrace();}    
        finally{try{conn.close();}catch(Exception e){e.printStackTrace();}}
    }

    private void initTeams() throws SQLException, Exception{ 
        String query = "SELECT `team_id`, `teamname`, `tendency`, "
            + "`visit_won`, `visit_lost`, `visit_games`, "
            + "`local_won`, `visit_lost`, `local_games´ FROM teams";

        st = conn.createStatement();
        rs = st.executeQuery(query);

        while(rs.next()) {
            teams.add(new Team(rs.getInt(1),rs.getString(2),
                rs.getString(3), rs.getInt(4), rs.getInt(5), 
                rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9)));
        }
    }
// GETTERS & SETTERS _________________________________________________________
    /**
    * This variable holds the value of each row of the table Team 
    * (one instance of Team class per row).
    * @return teams ArrayList with all the teams in the database
    */
    public List<Team> getTeams() {return teams;}
    
// VARIABLES _________________________________________________________________
    ArrayList<Team> teams;

}