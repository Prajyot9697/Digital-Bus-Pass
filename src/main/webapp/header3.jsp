<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/panel.css">
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
			<li><a href="index.jsp">Home</a></li>
		    <li><a href="searchPass.jsp">Verify Pass</a></li>
		    <li><a href="Pass-info.jsp">Generate Report</a></li>	
			<li style="float:right;margin-right:10px"><a href="index.jsp">Logout</a></li>
		</ul>
	</nav>
	<footer>
    <p>&copy; 2023 Digital Bus Pass. All Rights Reserved.</p>
</footer>
</body>
</html>