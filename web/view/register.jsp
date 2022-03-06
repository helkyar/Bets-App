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
       
    <jsp:include page="imports/header.jsp" /> 
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/login.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/register.css" media="screen" />

        <marquee class="login-start">
            <img width ="15%" height="15%" src="<%= path %>/img/log-bienvenido.png">
        </marquee>
        <div class="fondo-foto">   
            <h1 class="titulo">REGISTRARSE:</h1>

            <form id="form" class="topBefore caja">
		
		<input id="name" type="text" placeholder="nombre"><br><br>
		<input id="email" type="text" placeholder="email"><br><br>
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
