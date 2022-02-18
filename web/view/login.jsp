<%-- 
    Document   : login
    Created on : 9 feb 2022, 16:37:17
    Author     : Sandra
--%>

<%@page import="java.util.List"%>
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
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/sessionpages.css" media="screen" />
        <title>Bárbara bets</title>
    </head>
    <body>
        <form action="/betsweb/BetGetter" method="POST">
            <input type="hidden" name="action" value="updatedb" required>
            <button type="submit">Inicia sesion</button>
        </form>
        <h1>Login page (shares css with Register-page?)</h1>

        <form action="/betsweb/Session" method="POST">
            <dir class ="imgcontenedorlogin">
                <img src="">
                <img src="<%= path %>/img/logo.png" alt="Avatar" class="avatarlogin">                
            </dir>
            <label for="email"><b>Email</b></label>
            <input type="" placeholder="Intruoduce el nombre" name="username" required>
            <label for="psw"><b>Password</b></label>
            <input type="Contraseña" placeholder="Intruoduce la contraseña" name="password" required>            
            <input type="hidden" name="action" value="log" required>
           
            <button type="submit">Inicia sesion</button>
            <label>
                <input type="checkbox" checked="checked" name="remember"> Recordar
            </label>
        </div>

        <div class="container" style="background-color:#FFBC00">
            <button type="button" class="cancelbtn">Cancel</button>
            <span class="psw">Has olvidado la<a href="#">contraseña?</a></span>
        </div>


    </form>
</body>
</html>
