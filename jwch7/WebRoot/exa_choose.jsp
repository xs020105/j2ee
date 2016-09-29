<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<jsp:useBean id="user" class="bit.jw.TestBean"/>
<c:set value="34" target="${user}" property="age"/>

<html>
	<head>
	  <title>JSTL:c:choose的使用</title>
	</head>
	<body bgcolor="#FFFFFF">
	<c:choose>
	    <c:when test="${user.age <=18}">
	      <font color="blue"> 青少年
	    </c:when>
	    <c:when test="${user.age <=18}">
	      <font color="red"> 成年人
	    </c:when>
	    <c:otherwise>
	      <font color="green"> 中年或老年人	
	    </c:otherwise>	
	    
	</c:choose>
	你的年龄是：<c:out value="${user.age}"/>
	</body>
</html>
