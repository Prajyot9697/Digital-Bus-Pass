<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Download Pass</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
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
                <a class="nav-link" href="${pageContext.request.contextPath}/passenger_home.jsp">Home</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container">
    <h1>Download Pass</h1>
    <form method="post" action="download_pass.jsp">
        <div class="form-group">
            <label for="pass-id">Pass ID:</label>
            <input type="text" class="form-control" id="pass-id" name="passId" required>
        </div>
        <div class="form-group">
          <label for="type">Type:</label>
          <select name="type" id="type" class="form-control" required name="type">
              <option value="">-- Select Pass Type --</option>
              <option value="Student">Student</option>
              <option value="Senior">Senior</option>
              <option value="Regular">Regular</option>
         </select>
         </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>
