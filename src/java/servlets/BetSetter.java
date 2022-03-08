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
        betsmodel.resolvePassedBets();

    // check bet show and send or not 
        try {
            teams = teamsmodel.getTeams(); 
            bets = betsmodel.getBets();
            games = gamesmodel.getGames();
                        
            request.setAttribute("TEAMS", teams);
            request.setAttribute("BETS", bets);
            request.setAttribute("GAMES", games);
            
            RequestDispatcher dptch = request.getRequestDispatcher("/view/iniciar.jsp");
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
