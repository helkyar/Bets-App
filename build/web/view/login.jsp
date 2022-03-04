<%-- 
    Document   : login
    Created on : 9 feb 2022, 16:37:17
    Author     : Sandra
--%>

<%@page import="java.util.*"%>
<%@page import="models.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>

<!-- get info from servlet -->
<!-- start session if ok -->
<!-- set msg error if notok -->
<%
    session.removeAttribute("TOKEN");    
    List<Team> teams = (List<Team>) session.getAttribute("TEAMS");
    if(teams==null){response.sendRedirect("/betsweb/BetSetter");}
    
    User user = (User) request.getAttribute("SESSION");
    if(user!=null){
        session.setAttribute("TOKEN", user);      
        response.sendRedirect("/betsweb/view/main.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="<%= path %>/img/logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/normalizer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/util.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/login.css" media="screen" />
        <title>Bárbara bets</title>    
    </head>
     <body>
       
     <header>            
            <div>
                <img class="logo" src="<%= path %>/img/LOGO_APUESTAS-02.png".png" alt="alt"/>
            </div>
            <form action="action">

                <img class="search" src="<%= path %>/img/search.png" alt="alt"/>
                <input type="text" />
                    <label><%= new Date() %></label>
            </form>

            <nav>

               <button class="menu-btn-principal"><center><img src="<%= path %>/img/user.png" alt="/" height="25" width="25"/><a  style="color:white" href="main.jsp">INICIO</a></center></button> 
               
                <button class="menu-btn-principal"><center><img  src="<%= path %>/img/user_add_12818.png" alt="/" height="25" width="25"/><a style="color:white" href="register.jsp">REGISTRO</a></center></button>
                      <button class="menu-btn-principal"><center><img src="<%= path %>/img/help.png" alt="/" height="25" width="25"/><a style="color:white" href="Ayuda.jsp">AYUDA</a></center></button>    

            </nav>
        </header> 
     <marquee   style="margin-left: 36%" direction="right" behavior="alternate"  width="100%"><img width ="15%" height="15%" src="<%= path %>/img/log-bienvenido.png"></marquee>
            <section> 
                <div class="fondo-foto">   
    <article class="unocontactar"> 
           
      <form class="caja">
       <h4 class="titulo">INICIAR SESIÓN</h4>
            <ul>
            <li>
            <label class="label">E-mail:</label>  <br>
                <input  class="btn-input" type="text" placeholder="e-mail" name="username" required>
            </li>
            <li>
    <label class="label">Contraseña:</label><br>
                <input class="btn-input" type="Contraseña" placeholder="Introduce la contraseña" name="password" required>
            </li>
            <br><br>
             <div class="btnaceptar">
  <a href="#"><span>Cancelar</span></a>
</div>
                <div class="btninicio">
  <a href="#"><span>Aceptar</span></a>
</div>
       
             
               

            </ul>
          
        </form> </article>
                    
    </div>
                
    </section>
 <footer class="banner">
                             <DIV class="FUTBOL">
                      <h1 data-shadow='¡FUTBOL!'></h1>
                  </DIV> 
                      
                      
                  </footer>
    
              <footer>
        <p>Autor: Verónica, Javi, Noah, Mark, Patricia y Sandra<br>

        </footer>        
        
</body>
</html>
