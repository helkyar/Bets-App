<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%@ page import="java.util.*, servlets.*, models.*" %>
<% String path = request.getContextPath(); %>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>

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
<html>
    <head>
    <jsp:include page="imports/header.jsp" /> 
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/iniciar.css" media="screen" />
    
        <div class="bets-container">
            
          <div class="right">
            <div class="content">
                <div class="caja-apuestas1">
                  <!--cajas individuales-->

                  <div class="caja-apuestas-titulo">
                    <!--titulo-->
                    Apuestas
                  </div>

                  <div class="caja-apuestas-conjunto">
                    <button class="conjunto-btn1">+5</button>
                    <button class="conjunto-btn2">+10</button>
                    <button class="conjunto-btn3">+50</button>
                    <input class="conjunto-input" type="number" />
                    <button class="conjunto-btn5">Aceptar</button>
                  </div>
                  <!--fin del conjunto1 -->

                  <!--cajas contenedora 2-->
                </div>
              </div>
            </div>
        
            <table>
                <tr>
                    <th>FÚTBOL </th> 
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>

                <tr>
                    <th>RESULTADO</th>
                    <th></th>
                    <th></th>
                    <th style = "text-align: left">1</th>
                    <th style = "text-align: left">x</th>
                    <th style = "text-align: left">2</th>
                </tr>
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
                    <tr>
                        <td><%= game.getDate() %> </td>
                        <td><%= game.getLocal() %>  </br> <%= game.getVisitor() %> </td>
                        <td></td>
                        <td>
                            <p><%= ((vl + lw)/2 - (vw + ll)/2)*(-0.375) + 2.875 %></p>
                            <button>x</button>
                        </td>
                        <td>
                            <p><%= Math.abs(((vl + lw)/2 - (vw + ll)/2))*0.75 + 1.25 %></p>
                            <button>x</button>
                        </td>
                        <td><p><%= ((vw + ll)/2 - (vl + lw)/2)*(-0.375) + 2.875 %></p>
                           <button>x</button>
                        </td>
                    </tr>
               <% }%> 
            </table>  
        </div>
       

    
     <div class="pay-method">
         <a class="t" href="info-pagos.jsp"><img class="paypal img1" src="<%= path %>/img/paypal.png" alt=""></a>
        <a  class="t" href="info-pagos.jsp"><img class="visa img1" src=" <%= path %>/img/visa.png" alt=""></a>
        <a class="a-maestro t" href="info-pagos.jsp"><img class="maestro img1" src=" <%= path %>/img/maestro.png" alt=""></a>
    </div>
                
<jsp:include page="imports/footer.html" /> 