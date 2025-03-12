package com.Pass;



import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ViewPassServlet")
public class ViewPassServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set up database connection
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        String jdbcURL = "jdbc:mysql://localhost:3305/DigiBus?useSSL=false";
        String dbUsername = "root";
        String dbPassword = "admin";
        String jdbcDriver = "com.mysql.jdbc.Driver";
        try {
			/*
			 * Class.forName("com.mysql.jdbc.Driver"); conn =
			 * DriverManager.getConnection("jdbc:mysql://localhost:3305/DigiBus", "root",
			 * "admin");
			 */
        	try {
				Class.forName(jdbcDriver);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            conn = DriverManager.getConnection(jdbcURL, dbUsername, dbPassword);
            stmt = conn.createStatement();
            String sql = "SELECT * FROM pass_info WHERE status = 'Pending'";
            rs = stmt.executeQuery(sql);

            // Create a table to display the pass information
            String table = "<table class='table table-striped'>";
            table += "<thead><tr><th>Id</th><th>Name</th><th>Age</th><th>Gender</th><th>Address</th><th>Email</th><th>Phone</th><th>Type</th><th>Duration</th><th>Start Date</th><th>End Date</th><th>Amount</th><th>Action</th></tr></thead><tbody>";
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int age = rs.getInt("age");
                String gender = rs.getString("gender");
                String address = rs.getString("address");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String type = rs.getString("type");
                int duration = rs.getInt("duration");
                String sdate = rs.getString("sdate");
                String edate = rs.getString("edate");
                String amount = rs.getString("amount");
                table += "<tr>";
                table += "<td>" + id + "</td>";
                table += "<td>" + name + "</td>";
                table += "<td>" + age + "</td>";
                table += "<td>" + gender + "</td>";
                table += "<td>" + address + "</td>";
                table += "<td>" + email + "</td>";
                table += "<td>" + phone + "</td>";
                table += "<td>" + type + "</td>";
                table += "<td>" + duration + "</td>";
                table += "<td>" + sdate + "</td>";
                table += "<td>" + edate + "</td>";
                table += "<td>" + amount + "</td>";
                table += "<td><form method='post' action='ApprovePassServlet'><input type='hidden' name='pass-id' value='" + id + "'><button type='submit' class='btn btn-success'>Approve</button></form>";
                table += "<form method='post' action='RejectPassServlet'><input type='hidden' name='pass-id' value='" + id + "'><button type='submit' class='btn btn-danger'>Reject</button></form></td>";
                table += "</tr>";
            }
            table += "</tbody></table>";
			request.setAttribute("table", table); 
			/* request.setAttribute("passResultSet", rs); */ 
            request.getRequestDispatcher("view-pass.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

