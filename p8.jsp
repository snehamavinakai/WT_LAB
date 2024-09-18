// Write a JSP program to get header information
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HEADER READER REQUEST</title>
</head>
<body>

<center>
<h2>HTTP Reader Request</h2>
<table width="100%" border="1" align="center">
<tr bgcolor="#949494">
<th>Header Name</th>
<th>Header Values</th>
</tr>
<%
Enumeration headerNames = request.getHeaderNames();
while(headerNames.hasMoreElements())
{
	String paramName = (String)headerNames.nextElement();
	out.print("<tr><td>"+paramName+"</td>\n");
	String paramValue = request.getHeader(paramName);
	out.print("<td>"+paramValue+"</td></tr>\n");
	
}
%>
</table>
</center>

</body>
</html>
