<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%-- <%@ page import="java.sql.*" %>
    <%
    ResultSet resultSet = (ResultSet) request.getAttribute("passResultSet");
%>
<!DOCTYPE html>
<html>
<head>
    <title>View Passes</title></head>

<body>
    <div class="container">
        <h1>View Passes</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Type</th>
                    <th>Duration</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Amount</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% while(resultSet.next()) { %>
                <tr>
                    <td><%= resultSet.getString("name") %></td>
                    <td><%= resultSet.getInt("age") %></td>
                    <td><%= resultSet.getString("gender") %></td>
                    <td><%= resultSet.getString("address") %></td>
                    <td><%= resultSet.getString("email") %></td>
                    <td><%= resultSet.getString("phone") %></td>
                    <td><%= resultSet.getString("type") %></td>
                    <td><%= resultSet.getInt("duration") %></td>
                    <td><%= resultSet.getString("sdate") %></td>
                    <td><%= resultSet.getString("edate") %></td>
                    <td><%= resultSet.getString("amount") %></td>
                    <td><%= resultSet.getString("status") %></td>
                    <td>
                        <form method="post" action="ApprovePassServlet">
                            <input type="hidden" name="pass_id" value="<%= resultSet.getInt("pass_id") %>">
                            <button type="submit" name="action" value="approve" class="btn btn-success">Approve</button>
                            <button type="submit" name="action" value="reject" class="btn btn-danger">Reject</button>
                        </form>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
     --%>
     
     

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Pass</title>
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

    <div class="container" style="text-align:center">
        <h1>Pass Request</h1>
        ${table}
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
    
</body>
</html>
     
   
     
     
     
     
     
     
     
     
     
     
     
     
     
     