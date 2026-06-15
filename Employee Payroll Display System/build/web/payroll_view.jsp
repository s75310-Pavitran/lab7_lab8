<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Ensure JSTL library (jstl.jar) is added to your project's Libraries --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Employee Payroll System</title>
        <style>
            table {
                width: 85%;
                border-collapse: collapse;
                margin: 25px auto;
                font-family: Arial, sans-serif;
            }
            th, td {
                border: 1px solid #dddddd;
                padding: 12px;
                text-align: left;
            }
            th {
                background-color: #4CAF50;
                color: white;
            }
            tr:nth-child(even) {
                background-color: #f9f9f9;
            }
            h2 {
                text-align: center;
                color: #333;
            }
        </style>
    </head>
    <body>

        <h2>Employee Payroll System</h2>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Basic Salary (RM)</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="emp" items="${employeeList}">
                    <tr>
                        <td>${emp.empId}</td>
                        <td>${emp.name}</td>
                        <td>${emp.department}</td>
                        <td>${emp.basicSalary}</td>
                        <td>
                            <c:choose>
                                <c:when test="${emp.basicSalary >= 3000}">
                                    <strong>Senior</strong>
                                </c:when>
                                <c:otherwise>
                                    <span>Junior</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>