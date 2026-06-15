<%-- 
    Document   : login
    Created on : 12 May 2026, 3:24:54 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <h2>Login System</h2>
        <%
            String msg = request.getParameter("msg");
            if (msg != null) {
                out.print("<p style='color:red;'>" + msg + "</p>");
            }
        %>
        <form action="doLogin.jsp" method="POST">
            Username: <input type="text" name="username" required><br><br>
            Password: <input type="password" name="password" required><br><br>
            <input type="submit" value="Login">
        </form>
    </body>
</html>