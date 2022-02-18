<!DOCTYPE html>
<!--
https://tomcat.apache.org/download-taglibs.cgi JSTL dowload page
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%@ page import="java.util.*, servlets.*, models.*" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<% String path = request.getContextPath(); %>

<!-- check if session exists -->
<!-- filter by user in session -->
<!-- get sado -->
<!-- send bets -->
<!-- render bets -->

<%// Obtains teams from PriceSetter controller (servlet)
    User user = (User) session.getAttribute("TOKEN");
    if(user==null){
        session.setAttribute("TOKEN", user);
        response.sendRedirect("/betsweb/view/login.jsp");
    }
    List<Team> teams = (List<Team>) request.getAttribute("TEAMS");
    List<Bet> bets = (List<Bet>) request.getAttribute("BETS");
%>

<jsp:include page="imports/header.jsp" />  
</body>
</html>