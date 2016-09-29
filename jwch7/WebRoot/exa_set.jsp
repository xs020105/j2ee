<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<jsp:useBean id="user" class="bit.jw.TestBean" />

<html>
	<head>
	  <title>JSTL:的使用c:set</title>
	</head>
	<body>
	<p>设置userName的属性，然后输出这个属性值：
	<c:set value="王五1" var="userName"/>
	<c:out value="${userName}"/>
	<p>设置password的属性，属性值在body中，然后输出这个属性值：
	<c:set var="password">
	12345678
	</c:set>
	<c:out value="${password}"/>
	<p>设置javaBean的属性，然后输出这些属性值：
	<c:set value="王五2" target="${user}" property="userName"/>
	<c:set target="${user}" property="password">
	87654321
	</c:set>
	userName=<c:out value="${user.userName}"/>,
	password=<c:out value="${user.password}"/>.
	<p>设置不同的属性，并且指定它们的范围：
	<c:set value="10000" var="maxUser" scope="application"/>
	<c:set value="20" var="maxIdelTime" scope="session"/>
	<c:set value="aaa.jsp" var="nextPage" scope="page"/>
	</body>
</html>
