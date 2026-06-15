<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    // IMPORTANT: Clear any existing session first
    session.invalidate(); 
    // Re-get the session after invalidating it
    HttpSession newSession = request.getSession(true);

    String user = request.getParameter("username");
    String pass = request.getParameter("password");

    Connection con = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String myURL = "jdbc:mysql://localhost/cf3107";
        con = DriverManager.getConnection(myURL, "root", "");

        // The BINARY keyword handles case sensitivity at the DB level
        String sql = "SELECT * FROM userprofile WHERE username collate utf8mb4_bin =? AND BINARY password collate utf8mb4_bin =?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, user);
        ps.setString(2, pass);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            // Extra safety: Double-check in Java
            String dbPass = rs.getString("password");

            if (pass.equals(dbPass)) {
                newSession.setAttribute("user", rs.getString("username"));
                newSession.setAttribute("fname", rs.getString("firstname"));
                newSession.setAttribute("lname", rs.getString("lastname"));
                response.sendRedirect("main.jsp");
                return; // Stop execution here
            }
        }
        
        // If we reach here, either rs.next() was false or .equals() failed
        response.sendRedirect("login.jsp?msg=Invalid username or password..!");
        return;

    } catch (Exception e) {
        out.println("<p style='color:red;'>Database Error: " + e.getMessage() + "</p>");
    } finally {
        if (con != null) {
            try { con.close(); } catch (SQLException ignore) {}
        }
    }
%>