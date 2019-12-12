<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	${students}<br> <!-- Expression language -->
	
	<c:out value="${students}"/><br> <!-- jstl core tag -->
	
	<c:forEach items="${students}" var="temp">
		${temp.name}<br>
	</c:forEach>
</body>
</html>