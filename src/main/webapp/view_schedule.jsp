<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bus Schedule</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZEK6UksdQRVvoxMfoo21j+" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css"> 
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"> 
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
    <h1>Bus Schedule</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Bus Number</th>
            <th>Route</th>
            <th>Departure Time</th>
            <th>Arrival Time</th>
        </tr>
        </thead>
        <tbody>
        <% try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the database
            String url = "jdbc:mysql://localhost:3305/DigiBus";
            String username = "root";
            String password = "admin";
            Connection conn = DriverManager.getConnection(url, username, password);

            // Create a statement and execute the query
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM schedule";
            ResultSet rs = stmt.executeQuery(query);

            // Loop through the result set and display the data in a table
            while (rs.next()) {
                String busNumber = rs.getString("bus_number");
                String route = rs.getString("route");
                String departureTime = rs.getString("departure_time");
                String arrivalTime = rs.getString("arrival_time");
                out.println("<tr>");
                out.println("<td>" + busNumber + "</td>");
                out.println("<td>" + route + "</td>");
                out.println("<td>" + departureTime + "</td>");
                out.println("<td>" + arrivalTime + "</td>");
                out.println("</tr>");
            }

            // Close the connection
            conn.close();
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        } %>
        </tbody>
    </table>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>