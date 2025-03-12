<!DOCTYPE html>
<html>
<head>
  <title>Search Pass</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Custom CSS -->
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
  <style>
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
<!-- Navigation bar -->
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
<div class="container mt-3">
  <div class="row">
    <div class="col-md-6 offset-md-3">
      <form method="post" action="checkPassInfo.jsp">
        <div class="form-group">
          <label for="pass_id">Enter your pass ID:</label>
          <input type="text" class="form-control" id="pass_id" name="pass_id">
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
      </form>
    </div>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
