<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%
    String passId = request.getParameter("passId"); // Get the pass ID from the request parameter
    String passType = request.getParameter("type"); // Get the pass type from the request parameter
    String query = "SELECT * FROM pass_info WHERE id=? AND type=?"; // Define the SQL query to retrieve the pass information

    // Connect to the database
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3305/DigiBus", "root", "admin");

    // Prepare the statement to retrieve the pass information
    PreparedStatement stmt = con.prepareStatement(query);
    stmt.setString(1, passId);
    stmt.setString(2, passType);

    // Execute the query to retrieve the pass information
    ResultSet rs = stmt.executeQuery();

    if (rs.next()) {
        String passStatus = rs.getString("status"); // Get the status of the pass from the ResultSet

        if (passStatus.equals("approved")) { // Check if the pass is approved
            String passFileName = "pass_" + passId + ".pdf"; // Define the file name of the pass
            String passFilePath = "/path/to/pdf/files/" + passFileName; // Define the file path of the pass
            File passFile = new File(passFilePath); // Create a File object for the pass file

            if (passFile.exists()) { // Check if the pass file exists
                response.setContentType("APPLICATION/OCTET-STREAM"); // Set the content type of the response
                response.setHeader("Content-Disposition", "attachment; filename=\"" + passFileName + "\""); // Set the content disposition header of the response

                FileInputStream fis = new FileInputStream(passFile); // Create a FileInputStream for the pass file
                byte[] buffer = new byte[4096];
                int bytesRead = 0;

                OutputStream os = response.getOutputStream(); // Get the output stream of the response

                while ((bytesRead = fis.read(buffer)) != -1) { // Write the pass file to the output stream
                    os.write(buffer, 0, bytesRead);
                }

                os.flush(); // Flush the output stream
                os.close(); // Close the output stream
                fis.close(); // Close the FileInputStream
            } else {
                out.println("Pass file not found."); // Output an error message if the pass file is not found
            }
        } else {
            out.println("Pass not approved."); // Output an error message if the pass is not approved
        }
    } else {
        out.println("Pass not found."); // Output an error message if the pass is not found
    }

    // Close the ResultSet, PreparedStatement, and database connection
    rs.close();
    stmt.close();
    con.close();
%>
