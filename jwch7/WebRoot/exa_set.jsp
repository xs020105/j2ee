<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<jsp:useBean id="user" class="bit.jw.TestBean" />

<html>
	<head>
	  <title>JSTL:��ʹ��c:set</title>
	</head>
	<body>
	<p>����userName�����ԣ�Ȼ������������ֵ��
	<c:set value="����1" var="userName"/>
	<c:out value="${userName}"/>
	<p>����password�����ԣ�����ֵ��body�У�Ȼ������������ֵ��
	<c:set var="password">
	12345678
	</c:set>
	<c:out value="${password}"/>
	<p>����javaBean�����ԣ�Ȼ�������Щ����ֵ��
	<c:set value="����2" target="${user}" property="userName"/>
	<c:set target="${user}" property="password">
	87654321
	</c:set>
	userName=<c:out value="${user.userName}"/>,
	password=<c:out value="${user.password}"/>.
	<p>���ò�ͬ�����ԣ�����ָ�����ǵķ�Χ��
	<c:set value="10000" var="maxUser" scope="application"/>
	<c:set value="20" var="maxIdelTime" scope="session"/>
	<c:set value="aaa.jsp" var="nextPage" scope="page"/>
	</body>
</html>
