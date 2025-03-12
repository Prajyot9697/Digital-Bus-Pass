<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%
// Get the feedback data from the request parameters
String name = request.getParameter("name");
String email = request.getParameter("email");
String rating = request.getParameter("rating");
String comments = request.getParameter("comments");

// Set up the database connection
;
Connection con = null;
PreparedStatement pstmt = null;
try {
	Class.forName("com.mysql.jdbc.Driver");
	 con = DriverManager.getConnection("jdbc:mysql://localhost:3305/DigiBus", "root", "admin");


    // Insert the feedback data into the database
    String sql = "INSERT INTO feedback (name, email, rating, comments) VALUES (?, ?, ?, ?)";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1, name);
    pstmt.setString(2, email);
    pstmt.setString(3, rating);
    pstmt.setString(4, comments);
    pstmt.executeUpdate();
} catch (ClassNotFoundException e) {
    e.printStackTrace();
} catch (SQLException e) {
    e.printStackTrace();
} finally {
    try {
        if (pstmt != null) pstmt.close();
        if (con != null) con.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}

// Redirect the user to the feedback list page
response.sendRedirect("success.jsp");
%>
    