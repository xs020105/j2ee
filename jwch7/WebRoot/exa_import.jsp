<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java"  %>

<html>
	<head>
	  <title>JSTL:c:import的使用</title>
	</head>
	<body bgcolor="#FFFFFF">
	<h3>绝对路径 URL</h3>
	  <c:import url="http://localhost:8080/jwch7/beimport.jsp"/>
	<h3>相对路径 URL</h3>
	  <c:import url="beimport.jsp"/>
	 <h3>encode:</h3>
	<a href=<c:url value="beimport.jsp"><c:param name="userName" value="wangwu2"/></c:url>>转向被包含页面</a>
	
	 <h3>绝对路径中使用var属性:</h3>
	 <c:import var="myurl" url="http://localhost:8080/jwch7/beimport.jsp"/>
	 输出变量myurl：<c:out value="${myurl}"/>
	<h3>相对路径中使用var属性:</h3>
	 <c:import var="myurl2" url="beimport.jsp"/>
	 输出变量myurl：<c:out value="${myurl2}"/>
	<h3>传递参数到指定的URL</h3>
	  <c:import url="beimport.jsp" charEncoding="gb2312">
	  <c:param name="userName" value="wangwu"/>
	 </c:import>  
	</body>
</html>
