package com.Pass;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.Bus.Route;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ViewRouteServlet")
public class ViewRouteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private String jdbcURL = "jdbc:mysql://localhost:3305/DigiBus";
    private String jdbcUsername = "root";
    private String jdbcPassword = "admin";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Route> routes = new ArrayList<>();
        PrintWriter out = response.getWriter();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            String sql="SELECT * FROM routes";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                String routeName = result.getString("route_name");
                String origin = result.getString("origin");
                String destination = result.getString("destination");
                int km = result.getInt("km");
                routes.add(new Route(routeName, origin, destination, km));
            }
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("routes", routes);
        request.getRequestDispatcher("view_route.jsp").forward(request, response);
    }
}
