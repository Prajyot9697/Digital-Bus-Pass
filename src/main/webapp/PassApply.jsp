<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
<%
    // Get the form parameters
    int passNumber = Integer.parseInt(request.getParameter("passNumber"));
    String passName = request.getParameter("passName");
    String passType = request.getParameter("passType");
    int passDur = Integer.parseInt(request.getParameter("passDur"));
    String passStartDate = request.getParameter("passStartDate");
    int passAmount = Integer.parseInt(request.getParameter("passAmount"));
    String applyDate = request.getParameter("applyDate");
    int applyAmount = Integer.parseInt(request.getParameter("applyAmount"));


// Connect to the database
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/DigiBus", "root", "admin");

// Insert the pass application data into the database
PreparedStatement pstmt = conn.prepareStatement("INSERT INTO pass_application (pass_number, pass_name, pass_type, pass_dur, pass_start_date, pass_amount, apply_date, apply_amount) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

pstmt.setInt(1, passNumber);
pstmt.setString(2, passName);
pstmt.setString(3, passType);
pstmt.setInt(4, passDur);
pstmt.setString(5, passStartDate);
pstmt.setInt(6, passAmount);
pstmt.setString(7, applyDate);
pstmt.setInt(8, applyAmount);
int rowsInserted = pstmt.executeUpdate();

// Close the connection
pstmt.close();
conn.close();

// Generate the response
response.setContentType("text/html");
response.setCharacterEncoding("UTF-8");

out.println("<html>");
out.println("<head>");
out.println("<title>Application Submitted</title>");
out.println("</head>");
out.println("<body>");
out.println("<h1>Application Submitted Successfully</h1>");
out.println("<p>Your pass application has been submitted successfully.</p>");
out.println("<p>Pass Number: " + passNumber + "</p>");
out.println("<p>Pass Name: " + passName + "</p>");
out.println("<p>Pass Type: " + passType + "</p>");
out.println("<p>Pass Duration: " + passDur + " days</p>");
out.println("<p>Pass Start Date: " + passStartDate + "</p>");
out.println("<p>Pass Amount: " + passAmount + "</p>");
out.println("<p>Application Date: " + applyDate + "</p>");
out.println("<p>Application Amount: " + applyAmount + "</p>");
out.println("</body>");
out.println("</html>");

%>






    