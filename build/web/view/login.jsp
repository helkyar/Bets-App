<%-- 
    Document   : login
    Created on : 9 feb 2022, 16:37:17
    Author     : admin
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>

<%
    session.removeAttribute("TOKEN");    
    
    User user = (User) request.getAttribute("SESSION");
    if(user!=null){
        session.setAttribute("TOKEN", user);      
        response.sendRedirect("/betsweb/view/main.jsp");
    }
%>


<html>
    <head>       
    <jsp:include page="imports/header.jsp" /> 
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/login.css" media="screen" />
 
        <marquee class="login-start" direction="right">
            <img src="<%= path %>/img/log-bienvenido.png">
        </marquee>
        <section class="login-section"> 
            <div class="fondo-foto">  
                <h1 class="titulo">INICIAR SESIÓN:</h1>
                <article class="unocontactar"> 

                    <form class="caja" action="/betsweb/Session" method="POST">
                        
                        <label class="label">E-mail:</label> 
                        <input  class="btn-input" type="text" placeholder="e-mail" name="username" required />

                        <label class="label">Contraseña:</label>

                        <input class="btn-input" type="password" onpaste="return false;" placeholder="Introduce la contraseña" name="password" required />

                         <input type="hidden" name="action" value="log" required>


                        <div class="btninicio">
                            <label class="log-btn" for="submit"><a><span>Aceptar</span></a></label>
                            <input id="submit" type="submit" value="Aceptar" hidden/>
                        </div>    
                    </form> 
                </article>                    
            </div>          
        </section>
        <footer class="banner">
            <DIV class="FUTBOL">
                <h1 data-shadow='¡FUTBOL!'></h1>
            </DIV>          
        </footer>

<jsp:include page="imports/footer.html" /> 