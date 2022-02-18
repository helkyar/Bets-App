/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dbconnection;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Bet;

/**
 *
 * @author javier
 */
public class DBBet extends Connect{
        
    public DBBet(String s){}
    
    public DBBet(){        
        super();//call to parent to access database and set connection

        wagers = new ArrayList<>();
        
        try{initWagers();}
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
    private void initWagers()  throws SQLException, Exception{ 
        String query = "SELECT `bet_id`, `user_id`, `game_id`, `bet_pay`, "
            + "`bet_type`, `bet_amount`, `result_local`, `result_visit` "
            + "FROM bets WHERE `show` = '1'";

        st = conn.createStatement();
        rs = st.executeQuery(query);

        while(rs.next()) {
            wagers.add(new Bet(rs.getInt(1), rs.getInt(2), rs.getInt(3),
                rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7),
                rs.getInt(8)));
        }
    }
    
// GETTERS & SETTERS __________________________________________________________
    /**
    * This variable holds the value of each row of the table Wager 
    * (one instance of Wager class per row).
    * @return wagers ArrayList with all the wagers in the database
    */
    public List<Bet> getBets() {return wagers;}
    
// VARIABLES _________________________________________________________________
    private ArrayList<Bet> wagers;

    public int insertBet(int user, int game, int type, int pay, int amount) {
        String query = "INSERT INTO users (`user_id`, `game_id`, `bet_pay`,"
            + " `bet_type`, `bet_amount`, `resolved`) VALUES "
            + "('"+user+"','"+game+"','"+pay+"','"+type+"','"+amount+"','0')";
        
        connect();
        try{
            ps = conn.prepareStatement(query);      
            ps.executeUpdate();
            return 1;
            
        } catch (SQLException e){e.printStackTrace(); return -1;}
        catch(Exception e){e.printStackTrace(); return -1;}    
        finally{try{conn.close();} catch(Exception e){return -1;}}
    }

    public int deleteBet(String betid) {
        String query = "UPDATE bets SET show= '0' WHERE bet_id='"+betid+"'";
        
        connect();
        try{
            ps = conn.prepareStatement(query);      
            ps.executeUpdate();
            return 1;
            
        } catch (SQLException e){e.printStackTrace(); return -1;}
        catch(Exception e){e.printStackTrace(); return -1;}    
        finally{try{conn.close();} catch(Exception e){return -1;}}
    }
}
