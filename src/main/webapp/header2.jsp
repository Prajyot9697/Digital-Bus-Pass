<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/panel.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"/>

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
		    <li><a href="ViewRouteServlet"><i class="fa-regular fa-eye"></i> View Route</a></li>
		    <li><a href="view_schedule.jsp"><i class="fa-regular fa-eye"></i> View Schedule</a></li>
		    <li><a href="apply_pass.jsp"><i class="fa-solid fa-ticket"></i> Apply Pass</a></li>
		    <li><a href="checkStatus.jsp"><i class="fa-solid fa-ticket"></i> Check Status</a></li>
		    <li><a href="payment.jsp"><i class="fa-solid fa-credit-card"></i> online Payment</a></li>
		    <li><a href="apply_renewal.jsp"><i class="fa-solid fa-rotate-left"></i> Apply Renewal</a></li>
		    <li><a href="feedback.jsp"><i class="fa-solid fa-comment"></i> Give Feedback</a></li>
		    <li><a class="active" href="download.jsp"><i class="fa-solid fa-download"></i> Download Pass</a></li>
    
			
			<li style="float:right;margin-right:10px"><a href="index.jsp"><i class="fa-solid fa-right-from-bracket"></i>Logout</a></li>
		</ul>
	</nav>
	<footer>
    <p>&copy; 2023 Digital Bus Pass. All Rights Reserved.</p>
</footer>
</body>
</html>