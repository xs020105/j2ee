<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<html>
	<head>
	  <title>JSTL:c:remove的使用</title>
	</head>
	<body>
	<c:set value="10000" var="maxUser" scope="application"/>
	<c:set value="20" var="maxIdelTime" scope="session"/>
	<c:set value="wanghong" var="accountId" scope="request"/>
	<c:set value="bbb.jsp" var="nextPage" scope="page"/>
	在没有调用c:rmeove之前，有这些参数：
	maxUser=<c:out value="${maxUser}"/>，
	maxIdelTime=<c:out value="${maxIdelTime}"/>，
	accountId=<c:out value="${accountId}"/>，
	nextPage=<c:out value="${nextPage}"/>。
	<p>调用c:remove...
	<c:remove var="maxUser" scope="application" />
	<c:remove var="maxIdelTime" scope="session"/>
	<c:remove var="accountId" scope="request"/>
	<c:remove var="nextPage" scope="page"/>
	调用了c:remove后，这些参数值为：
	maxUser=<c:out value="${maxUser}"/>，
	maxIdelTime=<c:out value="${maxIdelTime}"/>，
	accountId=<c:out value="${accountId}"/>，
	nextPage=<c:out value="${nextPage}"/>，
	</body>
</html>
