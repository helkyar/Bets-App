/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import dbconnection.*;
import models.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class BetGetter extends HttpServlet {
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

    // check bet show and send or not 
        try {
            request.setAttribute("BETS", new DBBet().getBets());        
            request.setAttribute("USERS", new DBUser().getUsers());
            request.setAttribute("TEAMS", new DBTeam().getTeams());
            request.setAttribute("GAMES", new DBGame().getGames());

            RequestDispatcher dptch = request.getRequestDispatcher("/view/iniciar.jsp");
            dptch.forward(request, response);
                   
        } catch (Exception e) {e.printStackTrace();}
    }
    
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
          try{
            
            String comand = request.getParameter("action");
            switch(comand){
                case "insert": storeBet(request, response); break;
                case "delete": deleteBet(request, response); break;
                case "updatedb": updateDataBase(); break;
            }
        
        }catch (Exception e){e.printStackTrace();}

    }

    private void storeBet(HttpServletRequest request, HttpServletResponse response) 
    throws IOException, ServletException {
        //get bets posted in main or details page and insert them
        DBBet betsmodel = new DBBet("");
        String url = "/view/iniciar.jsp";
//        String url = request.getParameter("path");
//        Bet bet = (Bet) request.getAttribute("STOREBET");
        int user = Integer.parseInt(request.getParameter("user"));
        int game = Integer.parseInt(request.getParameter("game"));
        int type = Integer.parseInt(request.getParameter("type"));
        float pay =  Float.parseFloat(request.getParameter("pay"));
        int amount = Integer.parseInt(request.getParameter("amount"));

        System.out.println("===================================================");
        System.out.println(user+":"+game+":"+type+":"+pay+":"+amount);
        System.out.println("===================================================");
        //Store to database
        int resp = betsmodel.insertBet(user, game, type, pay, amount);
        //Refresh page without sending new bets
        if(resp<0){response.sendRedirect(url);}
        System.out.println(resp);
        System.out.println("==================================================");
        //Resend updated bets and users (account money)   
        request.setAttribute("BETS", new DBBet().getBets());        
        request.setAttribute("USERS", new DBUser().getUsers());
        request.setAttribute("TEAMS", new DBTeam().getTeams());
        request.setAttribute("GAMES", new DBGame().getGames());
        
        RequestDispatcher dptch = request.getRequestDispatcher(url);
        dptch.forward(request, response);
    }

    private void deleteBet(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException {  
//      request.setParameter("path", request.getRequestURI())
//      name="path" value="request.getRequestURI()"
        String bet = request.getParameter("betid");        
        String url = request.getContextPath();    
        
        //Hide bet from user           
        DBBet betsmodel = new DBBet("");
        int resp = betsmodel.deleteBet(bet);
        //Refresh page without sending new bets
        if(resp<0){response.sendRedirect(url);}         
        //send updated bets  
        request.setAttribute("TEAMS", new DBTeam().getTeams());
        request.setAttribute("BETS", new DBBet().getBets());
        request.setAttribute("GAMES", new DBGame().getGames());

        RequestDispatcher dptch = request.getRequestDispatcher("/view/iniciar.jsp");
        dptch.forward(request, response);
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

    private void updateDataBase() {
        Scraper.executeDataBaseUpdate();
    }

}
