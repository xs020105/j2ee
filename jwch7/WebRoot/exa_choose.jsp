<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<jsp:useBean id="user" class="bit.jw.TestBean"/>
<c:set value="34" target="${user}" property="age"/>

<html>
	<head>
	  <title>JSTL:c:choose��ʹ��</title>
	</head>
	<body bgcolor="#FFFFFF">
	<c:choose>
	    <c:when test="${user.age <=18}">
	      <font color="blue"> ������
	    </c:when>
	    <c:when test="${user.age <=18}">
	      <font color="red"> ������
	    </c:when>
	    <c:otherwise>
	      <font color="green"> �����������	
	    </c:otherwise>	
	    
	</c:choose>
	��������ǣ�<c:out value="${user.age}"/>
	</body>
</html>
