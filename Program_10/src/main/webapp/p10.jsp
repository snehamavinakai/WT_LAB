
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Marks Sheet</title>
</head>
<body bgcolor="khaki">
    <h2 style="text-align:center">Students Marks Sheet</h2>
    <h3 style="text-align:center">Name of the College: Kristu Jayanti College (Autonomous)</h3>
    <table border="1" width="30%" align="center">
        <tr>
            <td><b>Seat_No</b></td>         
            <td><b>Name</b></td>    
            <td><b>Marks</b></td>                    
        </tr>
        <%
            String seatNum = request.getParameter("rollno");
            String name = request.getParameter("name");
            int total = 0;
            
            for (int i = 1; i <= 5; i++) {
                String ans = request.getParameter("group" + i);
                if (ans != null && ans.equals("True")) {
                    total += 5;
                }
            }
            
            // Inserting data
            try {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
                Connection connection = DriverManager.getConnection("jdbc:odbc:wt10");
                PreparedStatement pstmt = connection.prepareStatement("INSERT INTO exam (Rollno, Name, Marks) VALUES (?, ?, ?)");
                pstmt.setString(1, seatNum);
                pstmt.setString(2, name);
                pstmt.setInt(3, total);
                pstmt.executeUpdate();
                pstmt.close();
                connection.close();
            } catch (Exception e) {
                out.println("Exception occurred: " + e.getMessage());
            }
            
            // Retrieve and display data from database
            try {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
                Connection connection = DriverManager.getConnection("jdbc:odbc:wt10");
                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM exam WHERE Name='" + name + "'");
                while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("Rollno") %></td>
            <td><%= rs.getString("Name") %></td>
            <td><%= rs.getInt("Marks") %></td>
        </tr>
        <%
                }
                rs.close();
                stmt.close();
                connection.close();
            } catch (Exception e) {
                out.println("Exception occurred: " + e.getMessage());
            }
        %>
    </table>
    <br/><br/><br/>
    Date: <%= new java.util.Date().toString() %>
    <br/>Signature: X.Y.Z
    <br/><br/><br/>
    <a href="javascript:history.back()">Go Back</a>   
</body>
</html>
