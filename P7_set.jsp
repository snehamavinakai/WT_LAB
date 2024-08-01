<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Setting Cookies</title>
</head>
<body>
<%
Cookie fname = new Cookie("first",request.getParameter("first"));
Cookie lname = new Cookie("last",request.getParameter("last"));
fname.setMaxAge(60*60*24);
lname.setMaxAge(60*60*24);
response.addCookie(fname);
response.addCookie(lname);
%>
<h1>Setting Cookie</h1>
First Name: <%=request.getParameter("first") %><br>
Last Name: <%=request.getParameter("last") %>
</body>
</html>