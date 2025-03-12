package com.Pass;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RejectPassServlet")
public class RejectPassServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
	  
	  
	  int passId = Integer.parseInt(request.getParameter("pass-id"));
	  

      // Set up database connection
      Connection conn = null;
      PreparedStatement stmt = null;
      try {
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/DigiBus", "root", "admin");

          // Update the status of the pass to "Approved"
          String sql = "UPDATE pass_info SET status = ? WHERE id = ?";
          stmt = conn.prepareStatement(sql);
          stmt.setString(1, "Rejected");
          stmt.setInt(2, passId);
          stmt.executeUpdate();

          response.sendRedirect("Rejectpass.jsp");
      } catch (SQLException e) {
          e.printStackTrace();
      } finally {
          try {
              if (stmt != null) stmt.close();
              if (conn != null) conn.close();
          } catch (SQLException e) {
              e.printStackTrace();
          }
      }
  }
}
	  
	  
  
	 /* String jdbcURL = "jdbc:mysql://localhost:3305/DigiBus?useSSL=false";
      String dbUsername = "root";
      String dbPassword = "admin";
      String jdbcDriver = "com.mysql.jdbc.Driver";
    // Set up database connection
    Connection connection = null;
    try {
		 connection = DatabaseUtils.getConnection(); 
    	Class.forName(jdbcDriver);
        connection = DriverManager.getConnection(jdbcURL, dbUsername, dbPassword);
    } catch (SQLException e) {
      e.printStackTrace();
      response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
      return;
    } catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

    // Retrieve pass ID and action from request parameters
    int passId = Integer.parseInt(request.getParameter("pass_id"));
    String action = request.getParameter("action");

    // Update pass status in database
    String sql = "UPDATE pass_info SET status = ? WHERE pass_id = ?";
    try {
      PreparedStatement statement = connection.prepareStatement(sql);
      statement.setString(1, action.equals("approve") ? "Approved" : "Rejected");
      statement.setInt(2, passId);
      statement.executeUpdate();
    } catch (SQLException e) {
      e.printStackTrace();
      response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
      return;
    }

    // Redirect to confirmation page
    response.sendRedirect(request.getContextPath() + "/confirm.jsp");
  }

}
*/