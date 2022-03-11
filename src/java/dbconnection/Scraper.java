/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import log.LogGen;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

/**
 *
 * @author admin
 */
public class Scraper {   
    
    //Declaración de variables globales para la conexión con SQL
    static final String driver = "com.mysql.cj.jdbc.Driver";
    static final String url = "jdbc:mysql://localhost:3306/bets";
    static final String user = "root";
    static final String pass = "";
    
    
    //  Declaración de variables para la ejecución de querys a SQL    
    private static PreparedStatement ps = null;
    private static Connection conn = null;
    private static Statement st = null;
    private static ResultSet rs = null;
    
    private static int id = 0;
    
    

    //Lista de arrays para guardar los nombres de los equipos

    private static ArrayList<String> teams = new ArrayList<>();

    //Variable para guardar una clave por cada valor asignado

    private static Map<String,Integer[]> statistics = new HashMap<>();
        
    
    
    
    /**
     * MAIN METHOD
     */
    public static void executeDataBaseUpdate() {
        /**
         * check by order tot track results and due payment (asign id:ref)
         * check if date still exists or there is a new one (!=int-int->update)
         */
        
        /*
            Recorre los elementos de la página antes extraída en URL que
            contengan las clases de CSS expuestas en "select"
        */
 
        final String URL = "https://www.marca.com/futbol/primera-division/calendario.html";
    
        try {
            final Document document = Jsoup.connect(URL).get();
            
//            System.out.println(document.outerHtml());
            id = 0;
            
            for (Element table : document.select(".jor")) {
                for(Element tr:table.select("tr")){
                    if(tr.select(".local").text().equals("")){continue;}
                    final String loc = tr.select(".local").text();
                    final String vis = tr.select(".visitante").text();
                    final String res = tr.select(".resultado").text();
//                    storeInDatabaseGames(id, loc, vis, res);
//                    storeInDatabaseTeams(loc);
                    updateTeamsGoals(loc, vis, res);
                    updateDatabaseGames(id, loc, vis, res);
//                    updateGameResults(id, res);
                    id++;
                }           
            }            
            executeUpdateGoals();   
        } catch (Exception e) {LogGen.error(e.getMessage());}
        
    }
// =============================================================================
//                             INSERCIÓN EN LA 
//                              BASE DE DATOS
//                                 DE GAMES
// =============================================================================
    private static void storeInDatabaseGames(int id, String loc, String vis, String res) {
        
        final String query = "INSERT INTO `games` (`scraper_id`, `local`, "
            + "`visitor`, `local_result`, `visitor_result`, `date`) VALUES "
            + "(?, ?, ?, ?, ?, ?)";

        int localResult, visitorResult;
        String date;
        if(res.contains("-")){
            String[] sepres = res.split("-");
            localResult = Integer.parseInt(sepres[0]);
            visitorResult = Integer.parseInt(sepres[0]);
            date = null;
        } else {
            localResult = -1;
            visitorResult = -1;
            date = res.split(" ")[0];
            System.out.println(date);
        }
            
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {System.out.println("Driver lost");}     
        
        try {
            conn = DriverManager.getConnection(url, user, pass);
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, loc);
            ps.setString(3, vis);
            ps.setInt(4, localResult);
            ps.setInt(5, visitorResult);
            ps.setString(6, date);
            ps.executeUpdate();                
                         
        } catch (SQLException e) {LogGen.error(e.getMessage());}      
        finally { try {conn.close();} catch (SQLException e) {LogGen.error(e.getMessage());}}         
    }    
// =============================================================================
//                             INSERCIÓN EN LA 
//                              BASE DE DATOS
//                                 DE TEAMS
// =============================================================================
    
    private static void storeInDatabaseTeams(String team){
        
        final String query = "INSERT INTO `teams` (`teamname`) VALUES (?)";

        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {System.out.println("Driver lost");}     
        
        try {
            if(!teams.contains(team)){
                teams.add(team);
            
                conn = DriverManager.getConnection(url, user, pass);
                ps = conn.prepareStatement(query);
                ps.setString(1, team);
                ps.executeUpdate();                
            }            
        } catch (SQLException e) {LogGen.error(e.getMessage());}      
        finally { try {conn.close();} catch (SQLException e) {LogGen.error(e.getMessage());}}   
    }
    /*
        RECOGER RESULTADOS (GOLES) DE LOS PARTIDOS PARA SU
        POSTERIOR ACTUALIZACIÓN EN LA DB
    */
    private static void updateTeamsGoals(String loc, String vis, String res) {
        if(res.contains("-")){  
            int locg = Integer.parseInt(res.split("-")[0]);
            int visg = Integer.parseInt(res.split("-")[1]);
            Integer[] results = {0,0,0,0,0,0};
            if(!statistics.containsKey(loc)){statistics.put(loc, results);}
            else if(!statistics.containsKey(vis)){statistics.put(vis, results);}
            else {
                Integer[]locst = statistics.get(loc);
                Integer[]visst = statistics.get(vis);
                locst[0] += locg; //local_won
                locst[1] += visg; //local_lost
                visst[2] += visg;//visitor_won
                visst[3] += locg;//visitor_lost
                locst[4]++;//local_game
                visst[5]++;//visitor_game
                statistics.put(loc, locst);               
                statistics.put(vis, visst);               
            }         
        }
    }
    /*
        ACTUALIZA LOS RESULTADOS DE LOS GOLES EN LA DB
    */
    private static void executeUpdateGoals() {
        for(String team : statistics.keySet()){
            try {
                int locw = statistics.get(team)[0];
                int locl = statistics.get(team)[1];
                int visw = statistics.get(team)[2];
                int visl = statistics.get(team)[3];
                int locg = statistics.get(team)[4];
                int visg = statistics.get(team)[5];
                
                final String query = "UPDATE `teams` SET `local_won`='"+locw+"'"
                    + ", `local_lost`='"+locl+"', `visit_won`='"+visw+"', "
                    + "`visit_lost`='"+visl+"', `local_game`='"+locg+"', "
                    + "`visit_game`='"+visg+"' WHERE teamname='"+team+"'";
                
                conn = DriverManager.getConnection(url, user, pass);
                ps = conn.prepareStatement(query);      
                ps.executeUpdate();
                         
        } catch (SQLException e) {LogGen.error(e.getMessage());}      
        finally { try {conn.close();} catch (SQLException e) {LogGen.error(e.getMessage());}} 
        
        }
    }
    /*
        MÉTODO QUE RECOGE LOS RESULTADOS DE LOS PARTIDOS
    */
    private static void updateGameResults(int id, String res) {
        try {
                
            if(res.contains("-")){
                final String query = "UPDATE `games` SET "
                    + "`local_result`='"+res.split("-")[0]+"', "
                    + "`visitor_result`='"+res.split("-")[1]+"' "
                    + "WHERE scraper_id='"+id+"'";

                conn = DriverManager.getConnection(url, user, pass);
                ps = conn.prepareStatement(query);      
                ps.executeUpdate();
            }
                         
        } catch (SQLException e) {LogGen.error(e.getMessage());}      
        finally { try {conn.close();} catch (SQLException e) {LogGen.error(e.getMessage());}}
    }
    /*
        MÉTODO QUE ORGANIZA LOS RESULTADOS POR EQUIPOS Y JUEGOS
    */
    private static void updateDatabaseGames(int id, String loc, String vis, String res) {
        
        final String query = "UPDATE `games` SET `local`=?, `visitor`=?, "
                + "`local_result`=?, `visitor_result`=?, `date`=? "
                + "WHERE `scraper_id`='"+id+"'";

        int localResult, visitorResult;
        String date;
        if(res.contains("-")){
            String[] sepres = res.split("-");
            localResult = Integer.parseInt(sepres[0]);
            visitorResult = Integer.parseInt(sepres[0]);
            date = null;
        } else {
            localResult = -1;
            visitorResult = -1;
            date = res.split(" ")[0];
            System.out.println(date);
        }
            
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {System.out.println("Driver lost");}     
        
        try {
            conn = DriverManager.getConnection(url, user, pass);
            ps = conn.prepareStatement(query);
            ps.setString(1, loc);
            ps.setString(2, vis);
            ps.setInt(3, localResult);
            ps.setInt(4, visitorResult);
            ps.setString(5, date);
            ps.executeUpdate();                
                         
        } catch (SQLException e) {LogGen.error(e.getMessage());}      
        finally { try {conn.close();} catch (SQLException e) {LogGen.error(e.getMessage());}}         
    }   
}
