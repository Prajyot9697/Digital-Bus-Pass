<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
    <div class="container mt-5">
        <h2>Feedback List</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Rating</th>
                    <th>Comments</th>
                </tr>
            </thead>
            <tbody>
                <%  
                try {
                    // Set up the database connection
                    String driverName = "com.mysql.jdbc.Driver";
                    String dbUrl = "jdbc:mysql://localhost:3305/DigiBus";
                    String dbUsername = "root";
                    String dbPassword = "admin";
                    Connection con = null;
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;
                    Class.forName(driverName);
                    con = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

                    // Get the feedback data from the database
                    String sql = "SELECT * FROM feedback";
                    pstmt = con.prepareStatement(sql);
                    rs = pstmt.executeQuery();
                    while (rs.next()) {
                        String name = rs.getString("name");
                        String email = rs.getString("email");
                        int rating = rs.getInt("rating");
                        String comments = rs.getString("comments");
                %>
                        <tr>
                            <td><%= name %></td>
                            <td><%= email %></td>
                            <td><%= rating %></td>
                            <td><%= comments %></td>
                        </tr>
                <%
                    }
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                %>
            </tbody>
        </table>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
</body>
</html>
    