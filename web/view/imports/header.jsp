<%-- 
    Document   : header
    Created on : 16 feb 2022, 12:24:03
    Author     : admin
--%>

<%@page import="models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>

        <link rel="icon" href="<%= path %>/img/logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
     
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/normalizer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/.partialheader.css" media="screen" />
        <title>Apuestas Bárbara</title>    
    </head>
     <body>
       
     <header>            
            <div>
                <img class="logo" src="<%= path %>/img/LOGO_APUESTAS-02.png".png" alt="alt"/>
            </div>

            <label class="date">     
                <script>
                    let datelabel = document.querySelector('.date');
                    datelabel.innerText=new Date();
                    setInterval(()=>{datelabel.innerText=new Date();}, 1000);
                </script>
            </label>  
            
            <nav>
                <!-- ONLY IF LOGGED -->
            <%  if((User) session.getAttribute("TOKEN")!=null){ %>
               <a  style="color:white" href="main.jsp"><button class="menu-btn-principal"><center>INICIO</center></button></a> 
               <a  style="color:white" href="iniciar.jsp"><button class="menu-btn-principal"><center>APUESTAS</center></button></a>                 
               <a  style="color:white" href="login.jsp"><button class="menu-btn-principal"><center>LOGOUT</center></button> </a>               
            <% } else {%>
               <a style="color:white" href="/betsweb/view/login.jsp"><button class="menu-btn-principal"><center>LOGIN</center></button></a>
               <a style="color:white" href="/betsweb/view/register.jsp"><button class="menu-btn-principal"><center>REGISTRO</center></button></a>
            <% } %> 
               <a style="color:white" href="ayuda.jsp"><button class="menu-btn-principal-ayuda"><center>?</center></button> </a>   

            </nav>
        </header> 