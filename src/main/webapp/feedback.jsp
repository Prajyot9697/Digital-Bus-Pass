<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Feedback Form</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="feedback.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
    
    <style>
    
    .container {
  background-color: #f2f2f2;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.75);
}

.form-group label {
  font-weight: bold;
}

.btn-primary {
  background-color: #007bff;
  border-color: #007bff;
}
form {
			margin-top: 50px;
			margin-left: auto;
			margin-right: auto;
			width: 100%;
			border: 1px solid #ccc;
			padding: 20px;
			border-radius: 10px;
			box-shadow: 0px 0px 10px #ccc;
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
  <h2>Feedback Form</h2>
  <form action="feedbackStore.jsp" method="Post">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" name="name" id="name" placeholder="Enter your name" required>
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" required>
    </div>
    <div class="form-group">
      <label for="rating">Rate your experience:</label>
      <select class="form-control" id="rating" required name="rating">
        <option value="">Select rating</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
      </select>
    </div>
    <div class="form-group">
      <label for="comments">Comments:</label>
      <textarea class="form-control" name="comments" id="comments" rows="3"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>