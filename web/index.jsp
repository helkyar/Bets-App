<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%@ page import="java.util.*" %>

<html>
    <head>
        <title>Apuestas B�rbaras</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
    </head>
    <body>
        <header>            
            <div>
                <img class="logo" src="img/logo.png" alt="alt"/>
            </div>
            <form action="action">
                <img class="search" src="img/search.png" alt="alt"/>
                <input type="text" />
            </form>
            
            <%= new Date() %>
            
            <nav>
                <button class="btn">INICIO</button>
                <button class="btn">REGISTRO</button>
                <button class="help">?</button>                
            </nav>
        </header>
    </body>
</html>
