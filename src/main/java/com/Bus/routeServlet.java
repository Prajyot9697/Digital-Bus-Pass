package com.Bus;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/routeServlet")
public class routeServlet extends HttpServlet {
  
	
	private static final long serialVersionUID = -1156030837233133941L;

	private final String DRIVER_NAME = "com.mysql.jdbc.Driver";
    private final String DB_URL = "jdbc:mysql://localhost:3305/DigiBus";
    private final String DB_USERNAME = "root";
    private final String DB_PASSWORD = "admin";
    
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String routeName = request.getParameter("route_name");
    String origin = request.getParameter("origin");
    String destination = request.getParameter("destination");
    int km = Integer.parseInt(request.getParameter("km"));
    response.setContentType("text/html");
	PrintWriter out = response.getWriter();
    try {
      // Connect to database
    	Class.forName(DRIVER_NAME);
        Connection con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

      // Create prepared statement
      String sql = "INSERT INTO routes (route_name, origin, destination, km) VALUES (?, ?, ?, ?)";
      PreparedStatement statement = con.prepareStatement(sql);
      statement.setString(1, routeName);
      statement.setString(2, origin);
      statement.setString(3, destination);
      statement.setInt(4, km);

      // Execute statement
      int rowsInserted = statement.executeUpdate();
      if (rowsInserted > 0) {
			/*
			 * request.setAttribute("message", "Route added successfully");
			 * request.getRequestDispatcher("success.jsp").forward(request, response);
			 */
			/* out.println("<script>alert('Route added successfully!');</script>"); */
    	  response.sendRedirect("success.jsp");
    	  
      } else {
        response.sendRedirect("error.jsp");
      }
    } catch (Exception e) {
      System.out.println(e);
    }
  }
}
