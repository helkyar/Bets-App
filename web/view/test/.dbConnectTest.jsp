<%-- 
    Document   : users
    Created on : 28 ene 2022, 12:00:30
    Author     : javip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="models.Users" %>
<%@ page import="models.DBConnection" %>

<%
    String upd = "INSERT INTO users (username) VALUES ('Pedro')";
    String slc = "SELECT * FROM users";
%>
<%
    ArrayList<Users> users = new ArrayList<>();
    
//    Connection connection = new DBConnection().cnx();
//    Statement stmt = connection.createStatement();
//    ResultSet rs = stmt.executeQuery(slc);
//    stmt.executeUpdate(upd);
    
//    while(rs.next()){
//        users.add(new Users(rs.getString(1), rs.getString(2)));
//    }
    
    rs.close();
    connection.close();
    
    pageContext.setAttribute("users", users);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Database Users</h1>
        <%
            for(Users dbuser : users){
                out.println(dbuser.getUserid());
                out.println(dbuser.getUsername());
            }
        %>
    </body>
</html>

