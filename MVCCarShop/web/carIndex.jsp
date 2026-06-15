<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Car Shop Systems</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body class="container mt-5">
        <div class="jumbotron border shadow-sm">
            <h1>Application MVC system for Car Shop</h1><br>
            <ul class="list-unstyled font-weight-bold" style="font-size: 1.2rem; line-height: 2;">
                <li>• <a href="${pageContext.request.contextPath}/listCar" class="text-primary">View Car Pricelist</a></li>
                <li>• <a href="${pageContext.request.contextPath}/newCar" class="text-success">Add New Car Record</a></li>
            </ul>
        </div>
    </body>
</html>