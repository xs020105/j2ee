<%--<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>   error! --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<html>
	<head>
	  <title>JSTL: c:out的使用</title>
	</head>
	<body>
	<hr>
	<% session.setAttribute("test_session","Value_session");%>
	<% request.setAttribute("test_request","Value_request");%>
	<% application.setAttribute("test_application","Value_application");%>
	<% request.setAttribute("test_all","Value_request");%>
	<% session.setAttribute("test_all","Value_session");%>
	<% application.setAttribute("test_all","Value_application");%>
	
	<hr>输出一个字符串：
	<c:out value="Hello world"/>
	<hr>带有body的c:out标签，但是body不输到客户端。
	<% for(int i=0;i<3;i++)
	{
	%>
	<c:out value="i输出了吗？">
	<% out.println("i");
	   i++;
	%>
	</c:out>
	<% }%>
	<hr>
	<c:out value="5<10" escapeXml="true">
	</c:out>
	<hr>获得session中的属性：
	<c:out value="${test_session}"/>
	<hr>获得request中的属性：
	<c:out value="${test_request}"/>
	<hr>获得application中的属性：
	<c:out value="${test_application}"/>
	<hr>测试表达式语言优先获得哪个属性：<request,session,application>
	<c:out value="${test_all}"/>
	<hr>输出一个默认值：
	<c:out value="${notex}" default="这个值不存在"/>
	</body>
</html>
