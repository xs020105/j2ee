<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java"  %>

<html>
	<head>
	  <title>JSTL:c:import��ʹ��</title>
	</head>
	<body bgcolor="#FFFFFF">
	<h3>����·�� URL</h3>
	  <c:import url="http://localhost:8080/jwch7/beimport.jsp"/>
	<h3>���·�� URL</h3>
	  <c:import url="beimport.jsp"/>
	 <h3>encode:</h3>
	<a href=<c:url value="beimport.jsp"><c:param name="userName" value="wangwu2"/></c:url>>ת�򱻰���ҳ��</a>
	
	 <h3>����·����ʹ��var����:</h3>
	 <c:import var="myurl" url="http://localhost:8080/jwch7/beimport.jsp"/>
	 �������myurl��<c:out value="${myurl}"/>
	<h3>���·����ʹ��var����:</h3>
	 <c:import var="myurl2" url="beimport.jsp"/>
	 �������myurl��<c:out value="${myurl2}"/>
	<h3>���ݲ�����ָ����URL</h3>
	  <c:import url="beimport.jsp" charEncoding="gb2312">
	  <c:param name="userName" value="wangwu"/>
	 </c:import>  
	</body>
</html>
