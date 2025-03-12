<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Gateway - Payment Status</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
<!-- Custom CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">

<style>
.header {
  background-color: #1da2cd;
  color: #fff;
  text-align: center;
  padding: 20px;
}

.footer {
  background-color: #1da2cd;
  color: #fff;
  text-align: center;
  padding: 20px;
}

.container {
  margin-top: 50px;
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
					<a class="nav-link" href="${pageContext.request.contextPath}/admin_home.jsp">Home</a>
				</li>
			</ul>
		</div>
	</nav>
  <div class="header">
    <h1>Payment Status</h1>
  </div>
  <div class="container">
    <table class="table">
      <thead>
        <tr>
          <th>Pass ID</th>
          <th>Card Number</th>
          <th>Expiration Date</th>
          <th>Security Code</th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
        <%
          String driver = "com.mysql.jdbc.Driver";
          String url = "jdbc:mysql://localhost:3305/DigiBus";
          String username = "root";
          String password = "admin";
                try {
        Class.forName(driver);
        Connection con = DriverManager.getConnection(url, username, password);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM payments");
        while(rs.next()) {
          int passId = rs.getInt("pid");
          String cardNumber = rs.getString("card_number");
          String expirationDate = rs.getString("expiration_date");
          String securityCode = rs.getString("security_code");
          String status = rs.getString("status");
          %>
          <tr>
            <td><%= passId %></td>
            <td><%= cardNumber %></td>
            <td><%= expirationDate %></td>
            <td><%= securityCode %></td>
            <td><%= status %></td>
          </tr>
          <%
        }
        con.close();
      } catch (ClassNotFoundException e) {
        e.printStackTrace();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    %>
  </tbody>
</table>
   </div>
  <div class="footer">
    <p>&copy; 2023 Payment Gateway</p>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
</body>
</html>       
  