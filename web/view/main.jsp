<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%@ page import="java.util.*, servlets.*, models.*" %>
<% String path = request.getContextPath(); %>
<%// Obtains teams from PriceSetter controller (servlet)
    List<Team> teams = (List<Team>) request.getAttribute("TEAMS");
%>

<jsp:include page="imports/header.jsp" />  
        <h1>Main page</h1>
        <%= (String) request.getAttribute("pene") %>
        <%= teams %>
        <%= path %>
</body>
</html>