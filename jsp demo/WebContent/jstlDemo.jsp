<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="str" value="I am a student"/>
	
	${str}<br>
	
	Length of string is: ${fn:length(str)}<br> <!-- get the length of the string -->
	
	<c:forEach items="${fn:split(str, ' ')}" var="temp">
		${temp}<br>
	</c:forEach>
	
	${fn:contains(str, "student")}<br>
	
	<c:if test="${fn:contains(str, 'student')}">
		student is der
	</c:if>
</body>
</html>