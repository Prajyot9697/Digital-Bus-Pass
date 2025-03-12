<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%
/* String passId = request.getParameter("passId");
String cardNumber = request.getParameter("cardNumber");
String expirationDate = request.getParameter("expirationDate");
String securityCode = request.getParameter("securityCode"); */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Gateway - Processing Payment</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
    
<style>

  /* Form styling */
  form {
    max-width: 500px;
    margin: 0 auto;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px #ccc;
    background-color: #fff;
  }
  
  /* Button styling */
  input[type="submit"] {
    background-color: #2196f3;
    border-color: #2196f3;
    color: #fff;
    margin-top: 20px;
  }
  
  input[type="submit"]:hover {
    background-color: #1565c0;
    border-color: #1565c0;
    color: #fff;
  }
  
  /* Field label styling */
  label {
    font-weight: bold;
    color: #333;
  }
  
  /* Field input styling */
  input[type="text"] {
    border-radius: 5px;
    border: 1px solid #ccc;
    padding: 10px;
  }
  
  /* Payment gateway header */
  .header {
    background-color: #2196f3;
    color: #fff;
    text-align: center;
    padding: 20px;
    margin-bottom: 50px;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
  }
  
  /* Payment gateway footer */
  .footer {
    background-color: #f1f1f1;
    color: #333;
    text-align: center;
    padding: 10px;
    margin-top: 50px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
  }
  
  /* Field error message styling */
  .error-message {
    color: red;
    font-size: 14px;
    margin-top: 5px;
  }
  
  /* Custom checkbox styling */
  .custom-checkbox .custom-control-input:checked~.custom-control-label::before {
    background-color: #2196f3;
    border-color: #2196f3;
  }
  
  .custom-checkbox .custom-control-label::before {
    border-color: #ccc;
  }
  
  .custom-checkbox .custom-control-label::after {
    top: 2px;
    left: 6px;
    width: 6px;
    height: 11px;
    border: solid white;
    border-width: 0 2px 2px 0;
    transform: rotate(45deg);
  }
  
  /* Custom radio button styling */
  .custom-radio .custom-control-input:checked~.custom-control-label::before {
    background-color: #2196f3;
    border-color: #2196f3;
  }
  
  .custom-radio .custom-control-label::before {
    border-color: #ccc;
  }
  
  .custom-radio .custom-control-label::after {
    top: 6px;
    left: 6px;
    width: 8px;
    height: 8px
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
    <h1></h1>
  </div>
  
    <%
      String driver = "com.mysql.jdbc.Driver";
      String url = "jdbc:mysql://localhost:3305/DigiBus";
      String username = "root";
      String password = "admin";
      
      int passId =Integer.parseInt(request.getParameter("pass-id"));
      String cardNumber = request.getParameter("card-number");
      String expirationDate = request.getParameter("expiration-date");
      String securityCode = request.getParameter("security-code");

      try {
        Class.forName(driver);
        Connection con = DriverManager.getConnection(url, username, password);
        PreparedStatement pstmt = con.prepareStatement("INSERT INTO payments (pid, card_number, expiration_date, security_code, status) VALUES (?, ?, ?, ?, ?)");
        pstmt.setInt(1, passId);
        pstmt.setString(2, cardNumber);
        pstmt.setString(3, expirationDate);
        pstmt.setString(4, securityCode);
        pstmt.setString(5, "Success");
        pstmt.executeUpdate();
        con.close();
      } catch (ClassNotFoundException e) {
        e.printStackTrace();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    %>
    <div class="processing-message">
  <p>Processing payment for Digital Bus Pass ID <%= passId %> using the following information:</p>
  <p>Credit Card Number: <%= cardNumber %></p>
  <p>Expiration Date: <%= expirationDate %></p>
  <p>Security Code: <%= securityCode %></p>
  <p>Please wait while your payment is being processed...</p>
</div>
  
  <div class="footer">
    <p>&copy; 2023 Digital Bus Pass. All rights reserved.</p>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  </body>
  </html>
  
