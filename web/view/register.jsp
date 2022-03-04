<%-- 
    Document   : register
    Created on : 9 feb 2022, 16:37:27
    Author     : admin
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>

<!-- get info from servlet -->
<!-- start session if ok -->
<!-- set msg error if notok -->
<%%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="<%= path %>/img/logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/normalizer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/util.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/register.css" media="screen" />
        <title>Apuestas Bárbara</title>
    </head>
<body>
            <header>            
            <div>
                <img class="logo" src="<%= path %>/img/LOGO_APUESTAS-02.png".png" alt="alt"/>
            </div>
            <form action="action">

                
                    <label><%= new Date() %></label>
            </form>

            <nav>

             <button class="menu-btn-principal"><center><img src="<%= path %>/img/user.png" alt="/" height="25" width="25"/><a  style="color:white" href="main.jsp">INICIO</a></center></button> 
                <button class="menu-btn-principal"><center><img src="<%= path %>/img/user.png" alt="/" height="25" width="25"/><a  style="color:white" href="login.jsp">INICIAR</a></center></button> 
                                  <button class="menu-btn-principal"><center><img src="<%= path %>/img/help.png" alt="/" height="25" width="25"/><a style="color:white" href="Ayuda.jsp">AYUDA</a></center></button>    
                

            </nav>
                 <marquee><img width ="15%" height="15%" src="<%= path %>/img/log-bienvenido.png"></marquee>
        </header> 
            	 
                  <div class="fondo-foto">   
                <div class="titulo">Registro:</div>

<form id="form" class="topBefore caja">
		
		  <input id="name" type="text" placeholder="NAME"><br><br>
		  <input id="email" type="text" placeholder="E-MAIL"><br><br>
		<input id="telefono" type="text" placeholder="telefono"><br><br>
                <input id="password" type="text" placeholder="password"><br><br>
                <input id="password" type="text" placeholder="poner otra vez el password"> <br><br>
  <input id="submit" type="submit" value="GO!">
 
</form>
      </div>  
             <footer class="banner">
                             <DIV class="FUTBOL">
                      <h1 data-shadow='¡FUTBOL!'></h1>
                  </DIV> 
                      
                      
                  </footer>
                 
        <jsp:include page="imports/footer.html" />     
    </body>
</html>
