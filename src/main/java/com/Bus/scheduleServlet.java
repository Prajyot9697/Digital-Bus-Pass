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



@WebServlet("/scheduleServlet")
public class scheduleServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -443803464121305565L;
	private final String DRIVER_NAME = "com.mysql.jdbc.Driver";
    private final String DB_URL = "jdbc:mysql://localhost:3305/DigiBus";
    private final String DB_USERNAME = "root";
    private final String DB_PASSWORD = "admin";
    
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve schedule information from form
        String busNumber = request.getParameter("busNumber");
        String route = request.getParameter("route_name");
        String departureTime = request.getParameter("departure_time");
        String arrivalTime = request.getParameter("arrival_time");
        response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
        // Store schedule information in database
        try {
        	Class.forName(DRIVER_NAME);
            Connection con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            String sql = "INSERT INTO schedule(bus_number, route, departure_time, arrival_time) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, busNumber);
            ps.setString(2, route);
            ps.setString(3, departureTime);
            ps.setString(4, arrivalTime);

            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
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