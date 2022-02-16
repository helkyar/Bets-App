<%-- 
    Document   : header
    Created on : 16 feb 2022, 12:24:03
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Apuestas Bárbaras</title>
        <meta charset="UTF-8">
        <link rel="icon" href="<%= path %>/img/logo.png">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/normalizer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/.partialheader.css" media="screen" />

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
    </body>
</html>
