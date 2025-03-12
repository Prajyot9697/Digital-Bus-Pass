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

@WebServlet("/ApplyPassServlet")
public class ApplyPassServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get parameters from the request
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String type = request.getParameter("type");
        int duration = Integer.parseInt(request.getParameter("duration"));
        String sdate = request.getParameter("start_date");
        String edate = request.getParameter("end_date");
        String amount = request.getParameter("amount");

        // Set up the database connection
        String jdbcURL = "jdbc:mysql://localhost:3305/DigiBus?useSSL=false";
        String dbUsername = "root";
        String dbPassword = "admin";
        String jdbcDriver = "com.mysql.jdbc.Driver";
        Connection connection = null;

        try {
            Class.forName(jdbcDriver);
            connection = DriverManager.getConnection(jdbcURL, dbUsername, dbPassword);

            // Insert pass information into database
            String sql = "INSERT INTO pass_info (name, age, gender, address, email, phone, type, duration,sdate,edate,amount,status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setInt(2, age);
            statement.setString(3, gender);
            statement.setString(4, address);
            statement.setString(5, email);
            statement.setString(6, phone);
            statement.setString(7, type);
            statement.setInt(8, duration);
            statement.setString(9, sdate);
            statement.setString(10, edate);
            statement.setString(11, amount);
            statement.setString(12, "Pending");

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("PassSubmited.jsp"); // redirect to success page
            } else {
                response.sendRedirect("error.jsp"); // redirect to error page
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

}