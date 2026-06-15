<%-- 
    Document   : main
    Created on : 12 May 2026, 3:25:40 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Main Page</title>
    </head>
    <body>
        <h1>Welcome to the System</h1>
        <%
            if (session.getAttribute("user") != null) {
        %>
        <p>Username: <%= session.getAttribute("user")%></p>
        <p>First Name: <%= session.getAttribute("fname")%></p>
        <p>Last Name: <%= session.getAttribute("lname")%></p>
        <br>
        <a href="login.jsp">Logout</a>
        <%
            } else {
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>