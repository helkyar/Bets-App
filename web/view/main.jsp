<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%@ page import="java.util.*, servlets.*, models.*" %>
<% String path = request.getContextPath(); %>
<%// Obtains teams from PriceSetter controller (servlet)
    List<Team> teams = (List<Team>) request.getAttribute("TEAMS");
%>
<html>
    <head>
        <title>Apuestas Bárbaras</title>
        <meta charset="UTF-8">
        <link rel="icon" href="<%= path %>/img/logo.png">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/normalizer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/mainpage.css" media="screen" />

    </head>
    <body>
        
        <header>            
            <div>
                <img class="logo" src="<%= path %>/img/logo.png" alt="alt"/>
            </div>
            <form action="action">
                <img class="search" src="<%= path %>/img/search.png" alt="alt"/>
                <input type="text" />
                <label><%= new Date() %></label>
            </form>
            
            <nav>
                <button class="btn">INICIO</button>
                <button class="btn">REGISTRO</button>
                <button class="help">?</button>                
            </nav>
        </header>      
        <h1>Main page</h1>
        <%= teams %>
</body>
</html>