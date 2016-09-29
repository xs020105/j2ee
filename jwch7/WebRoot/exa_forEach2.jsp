<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<html>
	<head>
	  <title>JSTL:c:forEach的使用</title>
	</head>
	<body bgcolor="#FFFFFF">
	<h4>全部：1 to 10</h4>
	
	<c:forEach var="i" begin="1" end="10">
	  <c:out value="${i}"/> —>
	</c:forEach>
	<h4>部分：1 to 10,step=3</h4>
	<c:forEach var="i" begin="1" end="10" step="3">
	  <c:out value="${i}"/> —>
	</c:forEach>
	</body>
</html>
