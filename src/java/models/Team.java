/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

/**
 *
 * @author admin
 */
public class Team {
        
    private class Connect extends DBConnection{
        Connect(){
        //call to parent to access database
            super();
        //update teams with database
            teams = new ArrayList<>();
            initTeams();
        }
        
        private void initTeams(){ 
            String query = "SELECT teamname FROM teams";
            try{
                st = conn.createStatement();
                rs = st.executeQuery(query);
                               
                while(rs.next()) {System.out.println(rs.getString(1));}
                
            } catch (SQLException e){}
            catch(Exception e){}    
            finally{try{conn.close();}catch(Exception e){}}
        }
    }
    
    public Team() {
        new Connect();
    }

    public List<Team> getTeams() {
        return teams;
    }
//GETTERS & SETTERS ___________________________________________________________

// VARIABLES __________________________________________________________________     
    private List<Team> teams;
    //should be private once instantiated getters ans setters
    public int visWn = 16;
    public int visLs = 22;
    public int locWn = 17;
    public int locLs = 13;
}
