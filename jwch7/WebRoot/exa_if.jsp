<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<jsp:useBean id="user" class="bit.jw.TestBean" scope="page"/>
<c:set value="16" target="${user}" property="age"/>
<c:set value="张三" target="${user}" property="userName"/>

<html>
	<head>
	  <title>JSTL:c:if的使用</title>
	</head>
	<body>
	<c:if test="${user.userName != '怪物'}" var="con1" scope="page"> 
	您好 <jsp:getProperty name="user" property="userName" /> 先生 
	</c:if>
	<p><c:if test="${user.age<18 and con1}">
	 对不起，你年龄过小，不能访问这个网页！
	 </c:if>
	</body>
</html>
