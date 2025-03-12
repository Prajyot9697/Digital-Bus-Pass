<%@ page import="java.sql.*" %>
<%@ page import="java.math.*" %>
<!DOCTYPE html>
<html>
<head>

	<title>Check Pass</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
	<link href="css/style.css" rel="stylesheet">
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
		/* th {
			background-color: #f2f2f2;
		} */
		
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
					<a class="nav-link" href="${pageContext.request.contextPath}/admin_home.jsp">Home</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<%
			String pass_id = request.getParameter("pass_id");

			// Connect to the database
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3305/DigiBus", "root", "admin");

			// Retrieve data from the pass_info table for the given pass ID
			PreparedStatement stmt = con.prepareStatement("SELECT * FROM pass_info WHERE id = ?");
			stmt.setInt(1, Integer.parseInt(pass_id));
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				String status = rs.getString("status");
				if (status.equals("Approved")) {
					// Display the payment option
					/* out.println("<h3>Your pass status is " + status + "</h3>"); */
					out.println("<table>");
					out.println("<tr><th>ID</th><th>Name</th><th>Age</th><th>Gender</th><th>Address</th><th>Email</th><th>Phone</th><th>Type</th><th>Duration</th><th>Start Date</th><th>End Date</th><th>Amount</th><th>Status</th></tr>");
					out.println("<tr>");
					out.println("<td>" + rs.getInt("id") + "</td>");
					out.println("<td>" + rs.getString("name") + "</td>");
					out.println("<td>" + rs.getInt("age") + "</td>");
					out.println("<td>" + rs.getString("gender") + "</td>");
					out.println("<td>" + rs.getString("address") + "</td>");
					out.println("<td>" + rs.getString("email") + "</td>");
					out.println("<td>" + rs.getString("phone") + "</td>");
					out.println("<td>" + rs.getString("type") + "</td>");
					out.println("<td>" + rs.getInt("duration") + "</td>");
					out.println("<td>" + rs.getDate("sdate") + "</td>");
					out.println("<td>" + rs.getDate("edate") + "</td>");
					out.println("<td>" + rs.getBigDecimal("amount") + "</td>");
					out.println("<td>" + status + "</td>");
					out.println("</tr>");
					out.println("</table>");
					out.println("<h3>Your pass is approved. Please click the button below to pay:</h3>");
					out.println("<a href=\"payment.jsp?id=" + rs.getInt("id") + "\" class=\"btn btn-success\">Pay</a>");
				} else {
					// Display the pass details with the status
					out.println("<h3>Your pass status is " + status + "</h3>");
					out.println("<table>");
					out.println("<tr><th>ID</th><th>Name</th><th>Age</th><th>Gender</th><th>Address</th><th>Email</th><th>Phone</th><th>Type</th><th>Duration</th><th>Start Date</th><th>End Date</th><th>Amount</th><th>Status</th></tr>");
					out.println("<tr>");
					out.println("<td>" + rs.getInt("id") + "</td>");
					out.println("<td>" + rs.getString("name") + "</td>");
					out.println("<td>" + rs.getInt("age") + "</td>");
					out.println("<td>" + rs.getString("gender") + "</td>");
					out.println("<td>" + rs.getString("address") + "</td>");
					out.println("<td>" + rs.getString("email") + "</td>");
					out.println("<td>" + rs.getString("phone") + "</td>");
					out.println("<td>" + rs.getString("type") + "</td>");
					out.println("<td>" + rs.getInt("duration") + "</td>");
					out.println("<td>" + rs.getDate("sdate") + "</td>");
					out.println("<td>" + rs.getDate("edate") + "</td>");
					out.println("<td>" + rs.getBigDecimal("amount") + "</td>");
					out.println("<td>" + status + "</td>");
					out.println("</tr>");
					out.println("</table>");
				}
			} else {
				// Display an error message if the pass ID is not found
				out.println("<h3>Pass ID not found</h3>");
			}
			// Close the database connection and release resources
			rs.close();
			stmt.close();
			con.close();
		%>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
</body>
</html> 
			
			
			
			
			
			