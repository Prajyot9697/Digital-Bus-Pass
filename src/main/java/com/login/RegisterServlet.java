package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    private final String DRIVER_NAME = "com.mysql.jdbc.Driver";
    private final String DB_URL = "jdbc:mysql://localhost:3305/DigiBus";
    private final String DB_USERNAME = "root";
    private final String DB_PASSWORD = "admin";
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id= request.getParameter("id");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        
        try {
            Class.forName(DRIVER_NAME);
            Connection con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
           String sql= "INSERT INTO users (id,email, password, role) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, id);
            pst.setString(2, email);
            pst.setString(3, password);
            pst.setString(4, role);
            
            int result = pst.executeUpdate();
            
            if (result > 0) {
                response.sendRedirect("login.jsp?success=Registration successful!");
            } else {
                response.sendRedirect("index.jsp?error=Registration failed!");
            }
            
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
