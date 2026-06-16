<%-- 
    Document   : book_session
    Created on : 16 Jun 2026, 2:32:32 PM
    Author     : MP2-4
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.html" %>

<h2>Book a Driving Session</h2>

<form method="POST" action="BookSessionServlet">
    <label>Student Name</label>
    <input type="text" name="student_name" required />

    <label>Branch Location</label>
    <input type="text" name="branch_location" placeholder="e.g., Kuala Lumpur" required />

    <label>Lesson Type</label>
    <input type="text" name="lesson_type" placeholder="e.g., Manual Car" required />

    <button class="btn" type="submit">Book Session</button>
</form>

<%@ include file="footer.jsp" %>


