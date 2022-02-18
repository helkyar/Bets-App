/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import dbconnection.*;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.*;

/**
 *
 * @author admin
 */
public class BetSetter extends HttpServlet {
    private DBTeam teamsmodel;
    private DBBet betsmodel;
    private DBGame gamesmodel;
//    @Resource(name="jdbc/bets")
//    private DataSource dbpool;
    
    public void init()throws ServletException{
        super.init();
        try{
            teamsmodel = new DBTeam();
            betsmodel = new DBBet();
            gamesmodel = new DBGame();
        } catch (Exception e){throw new ServletException(e);}
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        List<Team> teams;
        List<Game> games;
        List<Bet> bets;   
    //ONCE A DAY
//     get bets that are not reolved 
    //;
//and use it to search games wich date is null
//SELECT games.visitor_result, games.local_result, bets.bet_pay, 
  //bets.bet_amount, bets.bet_type, bets.result_local, bets.result_visit
//FROM games INNER JOIN bets ON bets.game_id = games.game_id
//WHERE date = 'NULL' AND games.game_id IN 
  //(SELECT bets.game_id FROM `bets` WHERE bets.resolved = '0');

    //#type of bet to determine if pay or not bets(#result_local, #result_visit, #bet_type) 
    //vs #game_id(#visitor_result, #local_result)
    //TYPE: (won local, won visitor, tables) (total goals) (exact result)
    boolean yujuu;
//    switch(){
        //case 1: yujuu = games.visitor_result < games.local_result;
        //case 2: yujuu = games.visitor_result == games.local_result;
        //case 3: yujuu = games.visitor_result > games.local_result;
        //case 4: yujuu = bets.results < games.results;
        //case 5: yujuu = bets.results > games.results;
        //case 6: yujuu = bets.results == games.results;
//}
//    
//    
        //if()pay -> #amount*#pay -> update #user_amount through #user_id
        //not pay -> /
    //Mark bet as resolved


    // check bet show and send or not 
        try {
            teams = teamsmodel.getTeams(); 
            bets = betsmodel.getBets();
            games = gamesmodel.getGames();
                        
            request.setAttribute("TEAMS", teams);
            request.setAttribute("BETS", bets);
            request.setAttribute("GAMES", games);
            
            RequestDispatcher dptch = request.getRequestDispatcher("/view/main.jsp");
            dptch.forward(request, response);
            
        } catch (Exception e) {e.printStackTrace();}
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
