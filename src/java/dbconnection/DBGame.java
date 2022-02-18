/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dbconnection;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Game;

/**
 *
 * @author javier
 */
public class DBGame  extends Connect{
        public DBGame(){        
        super();//call to parent to access database and set connection

        games = new ArrayList<>();

        try{initGame();} 
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
    private void initGame() throws SQLException, Exception{ 
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
    public List<Game> getGames() {return games;}
    
// VARIABLES _________________________________________________________________
    private ArrayList<Game> games;
}
