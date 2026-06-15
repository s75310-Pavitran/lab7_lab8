<%-- 
    Document   : healthInfo
    Created on : 21 Apr 2026, 12:30:50?pm
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@include file="header.jsp" %>

<h1 class="main-title">Health Information</h1>

<div class="card">
    <h2 class="form-title">BMI Categories</h2>

    <table style="width:100%; border-collapse: collapse; margin-top: 10px;">
        <thead>
            <tr style="background-color: #6f42c1; color: white; text-align: left;">
                <th style="padding: 12px; border: 1px solid #ddd;">Category</th>
                <th style="padding: 12px; border: 1px solid #ddd;">BMI Range</th>
            </tr>
        </thead>
        <tbody>
            <%
                ArrayList<String[]> info = new ArrayList<>();
                info.add(new String[]{"Underweight", "Below 18.5"});
                info.add(new String[]{"Normal", "18.5 - 25.0"});
                info.add(new String[]{"Overweight", "Above 25.0"});

                for (String[] row : info) {
            %>
            <tr>
                <td style="padding: 12px; border: 1px solid #ddd; color: #333;"><%= row[0]%></td>
                <td style="padding: 12px; border: 1px solid #ddd; color: #333;"><%= row[1]%></td>
            </tr>
            <% }%>
        </tbody>
    </table>
</div>

<%@include file="footer.jsp" %>