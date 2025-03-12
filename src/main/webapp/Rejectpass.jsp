<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Approved Pass Information</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="style.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
    <style>
        /* Apply green background color to rows with approved status */
        tr.approved {
            background-color: #d4edda;
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
    <div class="container">
        <h1>Rejected Pass Information</h1>
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
                    <th>Duration (in Days)</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Amount</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Connect to the database
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3305/DigiBus", "root", "admin");

                    // Retrieve data from the pass_info table with approved status
                    PreparedStatement stmt = con.prepareStatement("SELECT * FROM pass_info WHERE status = ?");
                    stmt.setString(1, "Rejected");
                    ResultSet rs = stmt.executeQuery();

                    // Loop through the ResultSet and create table rows and data cells
                    while (rs.next()) {
                        out.println("<tr class='approved'>");
                        out.println("<td>" + rs.getInt("id") + "</td>");
                        out.println("<td>" + rs.getString("name") + "</td>");
                        out.println("<td>" + rs.getInt("age") + "</td>");
                        out.println("<td>" + rs.getString("gender") + "</td>");
                        out.println("<td>" + rs.getString("address") + "</td>");
                        out.println("<td>" + rs.getString("email") + "</td>");
                        out.println("<td>" + rs.getString("phone") + "</td>");
                        out.println("<td>" + rs.getString("type") + "</td>");
                        out.println("<td>" + rs.getInt("duration") + "</td>");
                        out.println("<td>" + rs.getDate("start_date") + "</td>");
                        out.println("<td>" + rs.getDate("end_date") + "</td>");
                        out.println("<td>" + rs.getDouble("amount") + "</td>");
                        out.println("<td>" + rs.getString("status") + "</td>");
                        out.println("</tr>");
                        }
                    // Close the database connection, statement, and result set
                    rs.close();
                    stmt.close();
                    con.close();
                %>
                
            </tbody>
        </table>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        
        </body>
        </html>

