/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import dbconnection.DBUser;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.User;

/**
 *
 * @author admin
 */
public class Session extends HttpServlet {
    
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
                case "log": checkLogin(request, response); break;
                case "reg": registerUser(request, response); break;
            }
        
        }catch (Exception e){e.printStackTrace();}

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

    private void checkLogin(HttpServletRequest request, HttpServletResponse response) 
    throws IOException, ServletException {
        //Check for data        
        DBUser usermodel = new DBUser();
        String url = "view/login.jsp";
        String user = (String) request.getParameter("username");
        String passw = (String) request.getParameter("password");        
        if(user==null || passw==null){response.sendRedirect(url);}
        
        //send info to database
        User u = usermodel.loginUser(user, passw);
        if(u.getUserId()<0){response.sendRedirect(url);}
        
        //send response to login
        request.setAttribute("SESSION", u);
        RequestDispatcher dptch = request.getRequestDispatcher(url);
        dptch.forward(request, response);
    }

    private void registerUser(HttpServletRequest request, HttpServletResponse response) 
    throws IOException, ServletException {
        //Check for data      
        System.out.println("==============================HERE=================================");
        DBUser usermodel = new DBUser();
        String url = "view/register.jsp";
        String user = (String) request.getParameter("username");
        String passw = (String) request.getParameter("password");
        String cnfpassw = (String) request.getParameter("confpassword");        
        if(user==null || passw==null){response.sendRedirect(url);}
        if(!passw.equals(cnfpassw)){response.sendRedirect(url);}
        //Register user
        if(usermodel.registerUser(user, passw)==-1){response.sendRedirect(url);}
        
        //Get user session from database
        User u = usermodel.loginUser(user, passw);
        if(u.getUserId()<0){response.sendRedirect(url);}
        
        //send response to login
        request.setAttribute("SESSION", u);
        RequestDispatcher dptch = request.getRequestDispatcher(url);
        dptch.forward(request, response);
    }
}
