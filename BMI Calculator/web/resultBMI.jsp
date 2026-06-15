<%-- 
    Document   : resultBMI
    Created on : 21 Apr 2026, 12:30:18?pm
    Author     : Admin
--%>

<%@include file="header.jsp" %>

<h1 class="main-title">Using jsp:forward to display BMI result</h1>

<div class="card">
    <h2 class="form-title">BMI Result</h2>

    <%
        String bmiStr = request.getParameter("bmiVal");
        double bmi = (bmiStr != null) ? Double.parseDouble(bmiStr) : 0.0;
        String category = request.getParameter("cat");
    %>

    <div class="result-box-simple">
        <p style="margin-bottom: 15px;">
            <span style="font-weight: bold; color: #555;">BMI Value: </span>
            <%-- Requirement 8: Format to 2 decimal places --%>
            <%= String.format("%.2f", bmi)%>
        </p>

        <p style="margin-bottom: 15px;">
            <span style="font-weight: bold; color: #555;">Category: </span>
            <%= (category != null) ? category : "N/A"%>
        </p>
    </div>

    <div class="button-group">
        <a href="bmiCalculator.jsp" class="btn btn-cancel" style="text-decoration: none;">Back</a>
    </div>
</div>

<%@include file="footer.jsp" %>