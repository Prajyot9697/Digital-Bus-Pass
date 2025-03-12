package com.Bus;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Time;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/AddPassServlet")
public class AddPassServlet extends HttpServlet {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = -7599246427163479373L;
	private final String DRIVER_NAME = "com.mysql.jdbc.Driver";
    private final String DB_URL = "jdbc:mysql://localhost:3305/DigiBus";
    private final String DB_USERNAME = "root";
    private final String DB_PASSWORD = "admin";
    
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve schedule information from form
        int PassNumber = Integer.parseInt(request.getParameter("no"));
        String pname = request.getParameter("name");
        String ptype = request.getParameter("passType");
        int passDur = Integer.parseInt(request.getParameter("passDuration"));
        String passStartDate = request.getParameter("passStartDate");
        int amount= Integer.parseInt(request.getParameter("passAmount"));

        response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
        // Store schedule information in database
        try {
        	Class.forName(DRIVER_NAME);
            Connection con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            String sql = "INSERT INTO bus_pass (pass_number, pass_name, pass_type, pass_dur, passStart_date,Pass_amount) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, PassNumber);
            ps.setString(2, pname);
            ps.setString(3, ptype);
            ps.setInt(4, passDur);
            ps.setString(5, passStartDate);
            ps.setInt(6, amount);

            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
				/* out.println("<script>alert('Pass added successfully!');</script>") */
            	response.sendRedirect("success.jsp");
            } else {
            	response.sendRedirect("error.jsp");
            }

            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }

        // Forward to confirmation page
        
    }
}
