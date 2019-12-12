<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background: lightblue">
	<%
		pageContext.setAttribute("name", "Raj"); // scope of this attribute is current page only.
		pageContext.setAttribute("name", "Rahul", pageContext.SESSION_SCOPE); // scope of this attribute is all jsp page through session
	%>
</body>
</html>