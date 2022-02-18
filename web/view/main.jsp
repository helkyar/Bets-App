<!DOCTYPE html>
<!--
https://tomcat.apache.org/download-taglibs.cgi JSTL dowload page
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%@ page import="java.util.*, servlets.*, models.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String path = request.getContextPath(); %>

<!-- check if session exists -->
<!-- filter bets by user in session -->
<!-- check if resolved to render -->
<!-- get money -->
<!-- send bets with realtive url -->
<!-- delete bets with realtive url -->
<!-- render bets -->

<%// Obtains teams from PriceSetter controller (servlet)
    List<Game> games = (List<Game>) request.getAttribute("GAMES");
    session.setAttribute("GAMES", games);
    List<Bet> bets = (List<Bet>) request.getAttribute("BETS");
    session.setAttribute("BETS", bets);    
    List<Team> teams = (List<Team>) request.getAttribute("TEAMS");
    session.setAttribute("TEAMS", teams); 
        
    User user = (User) session.getAttribute("TOKEN");
    if(user==null){response.sendRedirect("/betsweb/view/login.jsp");}
%>

<jsp:include page="imports/header.jsp" />  
</body>
</html>