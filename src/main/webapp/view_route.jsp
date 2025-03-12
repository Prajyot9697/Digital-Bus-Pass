<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Routes</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="style.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
    <style>
    table {
			margin-top: 50px;
			margin-left: auto;
			margin-right: auto;
			width: 80%;
			border-collapse: collapse;
			box-shadow: 0px 0px 10px #ccc;
		}
      th, td {
			padding: 10px;
			text-align: center;
			border: 1px solid #ccc;
		}
      
     </style> 
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-primary">
		<a class="navbar-brand" href="#">Digital Bus Pass</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="${pageContext.request.contextPath}/passenger_home.jsp">Home</a>
				</li>
			</ul>
		</div>
	</nav>
    <div class="container">
        <h2 class="text-center">View Routes</h2>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Route Name</th>
                    <th>Origin</th>
                    <th>Destination</th>
                    <th>KM</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="route" items="${routes}">
                    <tr>
                        <td>${route.routeName}</td>
                        <td>${route.origin}</td>
                        <td>${route.destination}</td>
                        <td>${route.km}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>