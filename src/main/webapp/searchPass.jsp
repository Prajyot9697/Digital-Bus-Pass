<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Search Pass By ID</title>
	<!-- Include Bootstrap CSS -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="style.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
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
					<a class="nav-link" href="${pageContext.request.contextPath}/admin_home.jsp">Home</a>
				</li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<h1>Search Pass By ID</h1>

		<form action="${pageContext.request.contextPath}/searchPass.jsp" method="get">
			<div class="form-group">
				<label for="pass_id">Pass ID:</label>
				<input type="text" class="form-control" id="pass_id" name="pass_id" required>
			</div>
			<button type="submit" class="btn btn-primary">Search</button>
		</form>

		<br>

		<%
			if(request.getParameter("pass_id") != null) {
				int passId = Integer.parseInt(request.getParameter("pass_id"));

				// Connect to the database
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3305/DigiBus", "root", "admin");

				// Retrieve data from the pass_info table
				PreparedStatement stmt = con.prepareStatement("SELECT * FROM pass_info WHERE id = ?");
				stmt.setInt(1, passId);
				ResultSet rs = stmt.executeQuery();

				if(rs.next()) {
		%>

					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Age</th>
								<th>Gender</th>
								<th>Address</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Type</th>
								<th>Duration(in Days)</th>
								<th>Start Date</th>
								<th>End Date</th>
								<th>Amount</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><%= rs.getInt("id") %></td>
								<td><%= rs.getString("name") %></td>
								<td><%= rs.getInt("age") %></td>
								<td><%= rs.getString("gender") %></td>
								<td><%= rs.getString("address") %></td>
								<td><%= rs.getString("email") %></td>
								<td><%= rs.getString("phone") %></td>
								<td><%= rs.getString("type") %></td>
								<td><%= rs.getInt("duration") %></td>
								<td><%= rs.getDate("sdate") %></td>
								<td><%= rs.getDate("edate") %></td>
								<td><%= rs.getDouble("amount") %></td>
								<td><%= rs.getString("status") %></td>
</tr>
</tbody>
</table>
	<%
			} else {
	%>

				<div class="alert alert-danger" role="alert">
					Pass with ID <%= passId %> not found.
				</div>

	<%
			}
		}
	%>

	<a href="${pageContext.request.contextPath}/conductor_home.jsp">Back to Home</a>

</div>

<!-- Include Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
