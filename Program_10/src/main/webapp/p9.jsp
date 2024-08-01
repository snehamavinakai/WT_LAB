<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	int no = Integer.parseInt(request.getParameter("sno"));
    String name = request.getParameter("name");
    String place = request.getParameter("place");
    Connection connection = null;
    PreparedStatement statement = null;
    try {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        connection = DriverManager.getConnection("jdbc:odbc:wt0009");
        String query = "INSERT INTO Test(SNO,NAME,PLACE) VALUES (?,?,?)";
        statement = connection.prepareStatement(query);
        statement.setInt(1, no);
        statement.setString(2, name);
        statement.setString(3, place);
        statement.executeUpdate();
        out.println("Data inserted successfully.");
        out.print("Student name : "+name+" Student Reg No: "+no+" Student place: "+place);
    } catch (Exception e) {
        out.println("Error:" + e.getMessage());
    }
	%>
</body>
</html>
