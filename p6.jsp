<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Arithmetic Operations</title>
</head>
<body>
<%

int num1 = Integer.parseInt(request.getParameter("n1"));
int num2 = Integer.parseInt(request.getParameter("n2"));
int sum = num1 + num2;
int sub = num1 - num2;
int mult = num1 * num2;
int div = num1!=0? num1 / num2:0;
int mod = num1!=0? num1 % num2:0;

out.println("Sum is : "+sum+"<br>Difference is : "+sub+"<br>Product is : "+mult);
out.println(div == 0? "<br> Division by zero is not allowed":" <br >Division is : "+div );
out.println("<br>Modulus is : "+mod);
%>
</body>
</html>