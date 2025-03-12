<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Apply for Pass</title>
    <%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
 --%>
 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="style.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
   
 </head>
<body>
<!-- Navigation bar -->
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
    <h1 class="display-4 text-center mb-4">Available Bus Passes</h1>
    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>Pass Number</th>
            <th>Name</th>
            <th>Type</th>
            <th>Duration</th>
            <th>Start Date</th>
            <th>Amount</th>
            <th>Apply</th>
        </tr>
        </thead>
        <tbody>
        <% try {
            // Connect to the database
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/DigiBus", "root", "admin");

            // Execute the query
            Statement stmt = conn.createStatement();
            String sql="SELECT * FROM bus_pass";
            ResultSet rs = stmt.executeQuery(sql);

            // Loop through the result set and display the data in a table
            while (rs.next()) {
                int passNumber = rs.getInt("pass_number");
                String passName = rs.getString("pass_name");
                String passType = rs.getString("pass_type");
                int passDur = rs.getInt("pass_dur");
                String passStartDate = rs.getString("passStart_date");
                int passAmount = rs.getInt("Pass_amount");

                out.println("<tr>");
                out.println("<form method='post' action='ApplyPass.jsp'>");
                out.println("<input type='hidden' name='passNumber' value='" + passNumber + "'>");
                out.println("<td>" + passNumber + "</td>");
                out.println("<td>" + passName + "</td>");
                out.println("<td>" + passType + "</td>");
                out.println("<td>" + passDur + "</td>");
                out.println("<td>" + passStartDate + "</td>");
                out.println("<td>" + passAmount + "</td>");
                out.println("<td><button type='submit' class='btn btn-primary'>Apply</button></td>");
                out.println("</form>");
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
</body>
</html>
    