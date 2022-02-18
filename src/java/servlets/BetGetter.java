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
            }
        
        }catch (Exception e){e.printStackTrace();}

    }
       //get bets deleted in main or details and delete them
//        -GET -> detail.jsp 
//        --request to one game -> filters session object (?access url info)
//        -POST -> betgetter.java
//        --object bet to store in database.
//        --get url sender to respond
//        --store in database
//        --refresh user and bets objects in session

    private void storeBet(HttpServletRequest request, HttpServletResponse response) 
    throws IOException, ServletException {
        //get bets posted in main or details page and insert them
        DBBet betsmodel = new DBBet("");
        String url = request.getContextPath();
        Bet bet = (Bet) request.getAttribute("STOREBET");
        //Store to database
        int resp = betsmodel.insertBet(bet.getUserId(), bet.getGameId(), 
            bet.getBetType(), bet.getBetPay(), bet.getBetAmount());
        //Refresh page without sending new bets
        if(resp<0){response.sendRedirect(url);}
        //Resend updated bets
        List<Bet> bets = new DBBet().getBets();    
        List<User> users = new DBUser().getUsers();  
        
        request.setAttribute("BETS", bets);        
        request.setAttribute("USERS", bets);
        System.out.println(url);
        
        RequestDispatcher dptch = request.getRequestDispatcher(url);
        dptch.forward(request, response);
    }

    private void deleteBet(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException {        
        String bet = request.getParameter("betid");        
        String url = request.getContextPath();       
        
        List<Bet> bets = new DBBet().getBets(); 
        request.setAttribute("BETS", bets);  
        
        RequestDispatcher dptch = request.getRequestDispatcher(url);
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

}
