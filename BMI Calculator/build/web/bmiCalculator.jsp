<%-- 
    Document   : bmiCalculator
    Created on : 21 Apr 2026, 12:28:50?pm
    Author     : Admin
--%>

<%@include file="header.jsp" %>

<h1 class="main-title">Using jsp:forward to calculate BMI</h1>

<div class="card">
    <h2 class="form-title">BMI Calculator</h2>
    
    <form action="processBMI.jsp" method="post">
        <div class="form-group">
            <label for="weight">Weight (kg):</label>
            <input type="number" id="weight" name="weight" step="0.01" placeholder="Enter weight in kg" required>
        </div>

        <div class="form-group">
            <label for="height">Height (m):</label>
            <input type="number" id="height" name="height" step="0.01" placeholder="Enter height in meters" required><br>
        </div>

        <div class="button-group">
            <button type="submit" class="btn btn-submit">Calculate BMI</button>
        </div>
    </form>
</div>

<%@include file="footer.jsp" %>