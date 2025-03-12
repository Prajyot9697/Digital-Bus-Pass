<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
footer {
        background-color: #1da2cd;;
        color: #fff;
        text-align: center;
        padding: 20px;
        position: absolute;
        bottom: 0;
        width: 100%;
    }

    footer a {
        color: #fff;
        text-decoration: none;
    }

    footer a:hover {
        text-decoration: underline;
    }
		
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="css/panel.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<body>
	<%
	if(session.getAttribute("email") == null)
	{
		response.sendRedirect("index.jsp"); 
	}
	%>
	<nav class="navbar">
		<ul class="navbar-nav">
			<li><a href="index.jsp"><i class="fas fa-home"></i> Home</a></li>
		    <li><a href="add_route.jsp"><i class="fa-solid fa-plus"></i> Add Route</a></li>
		    <li><a href="add_schedule.jsp"><i class="fa-sharp fa-regular fa-calendar-days"></i> Add Schedule</a></li>
		    <li><a href="add_pass.jsp"><i class="fa-solid fa-address-card"></i> Add Pass</a></li>
		    <li><a href="ViewPassServlet"><i class="fa-solid fa-ticket"></i> Pass Verification</a></li>
		    <li><a href="paymentStatus.jsp"><i class="fa-solid fa-credit-card"></i> Payment Report</a></li>
		    <li><a href="Pass-info.jsp"><i class="fa-solid fa-credit-card"></i> Pass Report</a></li>
		    <li><a class="active" href="feedbackList.jsp"><i class="fa-solid fa-comment"></i> View Feedback</a></li>
    </ul>
			<form class="form-inline my-2 my-lg-0">
			 <a href="index.jsp" class="btn btn-light"> <i class="fa-solid fa-user"></i> Logout</a>
			</form>
		
	</nav>
	<footer>
    <p>&copy; 2023 Digital Bus Pass. All Rights Reserved.</p>
</footer>
</body>
</html>