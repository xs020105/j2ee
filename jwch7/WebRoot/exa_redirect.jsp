<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<html>
	<head>
	  <title>JSTL:��ʹ��</title>
	</head>
	<body>
		<c:url value="beimport.jsp" var="test"><c:param name="userName" value="wangwu2"/></c:url>
		<c:redirect url="${test}"/> 
		<br>�������仹��֮���� 
		<c:redirect url="beimport.jsp">
		<c:param name="userName" value="wangwu1"/>
		</c:redirect>
	</body>
</html>
