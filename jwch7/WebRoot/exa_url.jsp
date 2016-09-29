<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<html>
	<head>
	  <title>JSTL:ตฤสนำร</title>
	</head>
	<body>
	<c:url  var="myurl1" value="beimport.jsp"scope="session">
		<c:param name="userName" value="wangwu1"/>
	</c:url>
	<c:out value="${myurl1}" /><br>
	<c:url value="beimport.jsp"><c:param name="userName" value="wangwu2"/></c:url>
	</body>
</html>
