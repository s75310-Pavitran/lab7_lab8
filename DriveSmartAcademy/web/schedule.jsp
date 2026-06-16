<%-- 
    Document   : schedule
    Created on : 16 Jun 2026, 2:35:29 PM
    Author     : MP2-4
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.lab.bean.Sessionbean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="header.html" %>

<h2>Centralized Schedule (All Branches)</h2>

<table>
    <thead>
        <tr>
            <th>Session ID</th>
            <th>Student Name</th>
            <th>Branch Location</th>
            <th>Lesson Type</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="s" items="${sessionList}">
            <tr>
                <td><c:out value="${s.session_id}"/></td>
                <td><c:out value="${s.student_name}"/></td>
                <td><c:out value="${s.branch_location}"/></td>
                <td><c:out value="${s.lesson_type}"/></td>
                <td><c:out value="${s.status}"/></td>
            </tr>
        </c:forEach>

        <c:if test="${empty sessionList}">
            <tr>
                <td colspan="5" style="text-align:center; color:#666;">No sessions booked yet.</td>
            </tr>
        </c:if>
    </tbody>
</table>

<%@ include file="footer.jsp" %>

