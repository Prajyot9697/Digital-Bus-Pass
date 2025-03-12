package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    private final String DRIVER_NAME = "com.mysql.jdbc.Driver";
    private final String DB_URL = "jdbc:mysql://localhost:3305/DigiBus";
    private final String DB_USERNAME = "root";
    private final String DB_PASSWORD = "admin";
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        
        try {
            Class.forName(DRIVER_NAME);
            Connection con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            PreparedStatement pst = con.prepareStatement("SELECT * FROM users WHERE email=? AND password=? AND role=?");
            pst.setString(1, email);
            pst.setString(2, password);
            pst.setString(3, role);
            
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("email", email);
                session.setAttribute("role", role);
                
                if (role.equals("admin")) {
                    response.sendRedirect("admin_home.jsp");
                } else if (role.equals("passenger")) {
                    response.sendRedirect("passenger_home.jsp");
                } else if (role.equals("conductor")) {
                    response.sendRedirect("conductor_home.jsp");
                }
            } else {
                response.sendRedirect("loginFailed.jsp");
            }
            
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
