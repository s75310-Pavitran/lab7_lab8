<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Form Wizard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
            <div><a href="${pageContext.request.contextPath}/listCar" class="navbar-brand">Car Shop</a></div>
        </nav>
    </header>

    <div class="container col-md-5">
        <div class="card shadow">
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/${car != null ? 'updateCar' : 'insertCar'}" method="post">
                    
                    <h3 class="card-title mb-4">
                        <c:choose>
                            <c:when test="${car != null}">Edit Car Entry</c:when>
                            <c:otherwise>Register New Car</c:otherwise>
                        </c:choose>
                    </h3>

                    <c:if test="${car != null}">
                        <input type="hidden" name="id" value="<c:out value='${car.carId}' />" />
                    </c:if>

                    <div class="form-group">
                        <label class="font-weight-bold">Car Brand</label>
                        <input type="text" class="form-control" name="brand" value="<c:out value='${car.brand}' />" max="15" required />
                    </div>

                    <div class="form-group">
                        <label class="font-weight-bold">Model Name</label>
                        <input type="text" class="form-control" name="model" value="<c:out value='${car.model}' />" max="30" required />
                    </div>

                    <div class="form-group">
                        <label class="font-weight-bold">Cylinders (Int)</label>
                        <input type="number" class="form-control" name="cylinder" value="<c:out value='${car.cylinder}' />" required />
                    </div>

                    <div class="form-group">
                        <label class="font-weight-bold">Price (Double)</label>
                        <input type="number" step="0.01" class="form-control" name="price" value="<c:out value='${car.price}' />" required />
                    </div>

                    <button type="submit" class="btn btn-success btn-block shadow-sm">Save Specifications</button>
                    <a href="${pageContext.request.contextPath}/listCar" class="btn btn-secondary btn-block mt-2">Cancel</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>