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
import models.Game;

/**
 *
 * @author javier
 */
public class DBGame {
        public DBGame(){        
        super();//call to parent to access database and set connection

        games = new ArrayList<>();
        execute(DB.INITTABLE);
    }

// CONTROL POINT ______________________________________________________________
    public int execute (int action){
        try{
            switch(action){
                case 1: initGames(); break;
            }
            return 0;
        } catch (SQLException e){e.printStackTrace();}
        catch(Exception e){e.printStackTrace();}    
        finally{try{conn.close();return 0;}catch(Exception e){return -1;}}
    }
    
// QUERYS _____________________________________________________________________
    private void initGames() throws SQLException, Exception{ 
        String query = "SELECT `game_id`, `local`, `visitor`, `date`, "
            + "`visitor_result`, `local_result`, `scraper_id` FROM games";

        st = conn.createStatement();
        rs = st.executeQuery(query);

        while(rs.next()) {
            games.add(new Game(rs.getInt(1), rs.getString(2), rs.getString(3),
                rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getInt(7)));
        }
    }
    // GETTERS & SETTERS _________________________________________________________
    /**
    * This variable holds the value of each row of the table Games 
    * (one instance of Game class per row).
    * @return games ArrayList with all the games in the database
    */
    public List<Game> getGame() {return games;}
    
// VARIABLES _________________________________________________________________
    private ArrayList<Game> games;
}
