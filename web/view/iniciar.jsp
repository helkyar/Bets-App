<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%@ page import="java.util.*, servlets.*, models.*" %>
<% String path = request.getContextPath(); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='user' value='${sessionScope["TOKEN"]}'/>
<c:if test = "${user==null}"> 
    <c:redirect url="/view/login.jsp"/> 
</c:if>
<c:set var='game' value='${requestScope["GAMES"]}'/>
<c:if test = "${game==null}"> 
    <c:redirect url="/BetGetter"/> 
</c:if>
<%// Obtains teams from PriceSetter controller (servlet)
    User user = (User) session.getAttribute("TOKEN");
   
    List<Game> games=null; List<Bet> bets=null; List<Team> teams=null;
    games = (List<Game>) request.getAttribute("GAMES");
    bets = (List<Bet>) request.getAttribute("BETS");
    teams = (List<Team>) request.getAttribute("TEAMS");

%>
<html>
    <head>
    <jsp:include page="imports/header.jsp" /> 
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/iniciar.css" media="screen" />
 
        <div class="bets-container">
            
          <div class="right">
            <div class="content">
                <% for(Bet bet : bets){ 
                    if(bet.getUserId()==user.getUserId() && bet.getShow()==1){
                    Game g = null;
                    for(Game game : games){
                        if(game.getGameId()==bet.getGameId()){
                            g = game;
                        }
                    }
                %>
           
                <div class="caja-apuestas margintop">

                  <div class="caja-apuestas-titulo establecida">
                      <%= g.getLocal() %>~<%= g.getVisitor() %>
                  </div>

                  <div class="caja-apuestas-conjunto">
                    <label class="conjunto-btn1">
                        Cantidad: <%= bet.getBetAmount() %>
                    </label>
                    <label class="conjunto-btn2">
                        Multiplicador: <%= bet.getBetPay() %>
                    </label>
                  </div>
                </div>
               <% }} %>
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
                    <th>FECHA</th>
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
                    float ll=0, lw=0, vl=0, vw=0;
                    for(Team team : teams){
                        if(game.getLocal().equals(team.getTeamName())){
                            ll = (float)team.getLocalLost()/team.getLocalGames();
                            lw = (float)team.getLocalWon()/team.getLocalGames();
                        }

                        if(game.getVisitor().equals(team.getTeamName())){            
                            vl = (float)team.getVisitLost()/team.getVisitGames();
                            vw = (float)team.getVisitWon()/team.getVisitGames();
                        }
                    }
                    if(game.getDate()!=null){%>
                    <!-- Render HTML and calculate multiplayer -->
                    <tr>
                        <td><%= game.getDate() %> </td>
                        <td><%= game.getLocal() %>  </br> <%= game.getVisitor() %> </td>
                        <td ></td>
                        <td info="user:<%= user.getUserId() %>;game:<%= game.getGameId() %>;
                            type:1;pay:<%= Math.round((((vl + lw) - (vw + ll))*(-0.90769) + 4.05)*100.0)/100.0  %>;
                            title:<%= game.getLocal() %>~<%= game.getVisitor() %>;
                            date:<%= game.getDate() %>">   
                            <p><%= Math.round((((vl + lw) - (vw + ll))*(-0.90769) + 4.05)*100.0)/100.0 %></p>
                            <button class="betting">x</button>
                        </td>
                        <td info="user:<%= user.getUserId() %>;game:<%= game.getGameId() %>;
                            type:2;pay:<%= Math.round((Math.abs(((vl + lw) - (vw + ll)))*0.75 + 1.25)*100.0)/100.0 %>
                            title:<%= game.getLocal() %>~<%= game.getVisitor() %>;
                            date:<%= game.getDate() %>">
                            <p><%= Math.round((Math.abs(((vl + lw) - (vw + ll)))*0.75 + 1.25)*100.0)/100.0 %></p>
                            <button class="betting">x</button>
                        </td>
                        <td info="user:<%= user.getUserId() %>;game:<%= game.getGameId() %>;
                            type:3;pay:<%= Math.round((((vw + ll) - (vl + lw))*(-0.90769) +  4.05)*100.0)/100.0 %>;
                            title:<%= game.getLocal() %>~<%= game.getVisitor() %>;
                            date:<%= game.getDate() %>">
                           <p><%= Math.round((((vw + ll) - (vl + lw))*(-0.90769) +  4.05)*100.0)/100.0 %></p>
                           <button class="betting">x</button>
                        </td>
                    </tr>
               <% }}%> 
            </table>  
        </div>
       

    
     <div class="pay-method">
         <a class="t" href="info-pagos.jsp"><img class="paypal img1" src="<%= path %>/img/paypal.png" alt=""></a>
        <a  class="t" href="info-pagos.jsp"><img class="visa img1" src=" <%= path %>/img/visa.png" alt=""></a>
        <a class="a-maestro t" href="info-pagos.jsp"><img class="maestro img1" src=" <%= path %>/img/maestro.png" alt=""></a>
    </div>
                
    <script src="<%= path %>/js/bets.js"></script>
<jsp:include page="imports/footer.html" /> 