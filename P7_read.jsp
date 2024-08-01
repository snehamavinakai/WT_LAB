<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Cookies</title>
</head>
<body>
<%
Cookie cookie = null;
Cookie[] cookies = null;
cookies = request.getCookies();
response.getWriter();

if(cookies != null)
{
	out.print("<h2>Found Cookies name & value</h2>");
	for(int i=0;i<cookies.length;i++)
	{
		cookie = cookies[i];
		out.println("Name: "+cookie.getName()+",Value: "+cookie.getValue()+"<br>");
	}
}
else
{
	out.print("<h2>No Cookies</h2>");
}
%>
</body>
</html>