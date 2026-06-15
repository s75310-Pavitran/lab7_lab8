<%-- 
    Document   : header.jsp
    Created on : 21 Apr 2026, 12:27:09 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
                font-family: 'Segoe UI', sans-serif;
                background-color: #8594e4;
                margin: 0;
                padding: 20px;
            }
            nav {
                background: #6643b5;
                padding: 15px;
                border-radius: 8px;
                margin-bottom: 20px;
            }
            nav a {
                color: white;
                margin-right: 20px;
                text-decoration: none;
                font-weight: bold;
            }
            .container {
                max-width: 800px;
                margin: 0 auto;
                background: white;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            }
            h1 {
                color: #333;
                border-left: 5px solid #6f42c1;
                padding-left: 10px;
            }
            
            
        </style>
    </head>
    <body>
        <div class="container">
            <nav>
                <a href="bmiCalculator.jsp">BMI Calculator</a>
                <a href="healthInfo.jsp">Health Information</a>
            </nav>