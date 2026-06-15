<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Shop Pricelist</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div><a href="${pageContext.request.contextPath}/listCar" class="navbar-brand">Car Shop</a></div>
        </nav>
    </header>
    <br>
    <div class="container shadow p-4 mb-5 bg-white rounded">
        <h3 class="text-center font-weight-bold mb-4">Current Car Pricelist</h3>
        <div class="mb-3 text-left">
            <a href="${pageContext.request.contextPath}/newCar" class="btn btn-success font-weight-bold">Add New Car</a>
            <a href="${pageContext.request.contextPath}/carIndex.jsp" class="btn btn-secondary font-weight-bold">Main Menu</a>
        </div>
        
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>Car ID</th>
                    <th>Brand</th>
                    <th>Model</th>
                    <th>Cylinder</th>
                    <th>Price ($)</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="car" items="${listCar}">
                    <tr>
                        <td><strong><c:out value="${car.carId}" /></strong></td>
                        <td><c:out value="${car.brand}" /></td>
                        <td><c:out value="${car.model}" /></td>
                        <td><c:out value="${car.cylinder}" /></td>
                        <td>$<c:out value="${car.price}" /></td>
                        <td>
                            <a href="${pageContext.request.contextPath}/editCar?id=<c:out value='${car.carId}' />" class="btn btn-sm btn-info">Edit</a>
                            &nbsp;&nbsp;
                            <a href="${pageContext.request.contextPath}/deleteCar?id=<c:out value='${car.carId}' />" class="btn btn-sm btn-danger" onclick="return confirm('Delete this car record permanently?');">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>