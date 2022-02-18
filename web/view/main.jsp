<!DOCTYPE html>
<!--
https://tomcat.apache.org/download-taglibs.cgi JSTL dowload page
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%@ page import="java.util.*, servlets.*, models.*" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<% String path = request.getContextPath(); %>


<!-- filter bets by user in session -->
<!-- check if resolved to render -->
<!-- get money -->
<!-- send bets with realtive url -->
<!-- delete bets with realtive url -->
<!-- render bets -->

<%// Obtains teams from PriceSetter controller (servlet)
    List<Game> games=null; List<Bet> bets=null; List<Team> teams=null;
    if(session.getAttribute("GAMES") == null){
        games = (List<Game>) request.getAttribute("GAMES");
        session.setAttribute("GAMES", games);
        bets = (List<Bet>) request.getAttribute("BETS");
        session.setAttribute("BETS", bets);    
        teams = (List<Team>) request.getAttribute("TEAMS");
        session.setAttribute("TEAMS", teams); 
    }
    
    User user = (User) session.getAttribute("TOKEN");
    if(user==null){response.sendRedirect("/betsweb/view/login.jsp");}

    games = (List<Game>) session.getAttribute("GAMES");    
    bets = (List<Bet>) session.getAttribute("BETS");    
    teams = (List<Team>) session.getAttribute("TEAMS");
       //comparisons: 
        //vl == ll && lw == vw equals
        //vl > lw && vw < lw   visit loses
        //vl < lw && vw > lw   visit wons
   
%>

<jsp:include page="imports/header.jsp" /> 
<!--<c:forEach var="res" items="${RESUlTS}">${res}</c:forEach>-->

<% 
   //To optimize save teams as key-value pairs
   List<int[]> results = new ArrayList<>();
   for(Game game : games){
        int ll=0, lw=0, vl=0, vw=0;
        for(Team team : teams){
            if(game.getLocal().equals(team.getTeamName())){
                ll = team.getLocalLost()/team.getLocalGames();
                lw = team.getLocalWon()/team.getLocalGames();
            }

            if(game.getVisitor().equals(team.getTeamName())){            
                vl = team.getVisitLost()/team.getVisitGames();
                vw = team.getVisitWon()/team.getVisitGames();
            }
        }%>
        <!-- Render HTML and calculate multiplayer -->
        <%= game.getLocal() %> vs  <%= game.getVisitor() %> </br>
        <%= game.getDate() %>  
        <%= ((vl + lw)/2 - (vw + ll)/2)*(-0.375) + 2.875 %> ||
        <%= Math.abs(((vl + lw)/2 - (vw + ll)/2))*0.75 + 1.25 %> ||
        <%= ((vw + ll)/2 - (vl + lw)/2)*(-0.375) + 2.875 %> </br></br>
   <% }%> 


    <!-- calculate 1: (avloc > avvis) ? $V : $A -->
    <!-- calculate 2: (avloc == avvis) ? $V : $A -->
    <!-- calculate 3: (avvis > avloc) ? $V : $A -->
  

    
</body>
</html>