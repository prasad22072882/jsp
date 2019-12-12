<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<sql:setDataSource var="dataSource"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521/orclpdb" user="sys as sysdba"
		password="orcl" />
	<sql:query var="rs" dataSource="${dataSource}">select * from student</sql:query>
	<c:forEach items="${rs.rows}" var="temp">
		${temp.name}<br>
	</c:forEach>
</body>
</html>