<%--<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>   error! --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<html>
	<head>
	  <title>JSTL: c:out��ʹ��</title>
	</head>
	<body>
	<hr>
	<% session.setAttribute("test_session","Value_session");%>
	<% request.setAttribute("test_request","Value_request");%>
	<% application.setAttribute("test_application","Value_application");%>
	<% request.setAttribute("test_all","Value_request");%>
	<% session.setAttribute("test_all","Value_session");%>
	<% application.setAttribute("test_all","Value_application");%>
	
	<hr>���һ���ַ�����
	<c:out value="Hello world"/>
	<hr>����body��c:out��ǩ������body���䵽�ͻ��ˡ�
	<% for(int i=0;i<3;i++)
	{
	%>
	<c:out value="i�������">
	<% out.println("i");
	   i++;
	%>
	</c:out>
	<% }%>
	<hr>
	<c:out value="5<10" escapeXml="true">
	</c:out>
	<hr>���session�е����ԣ�
	<c:out value="${test_session}"/>
	<hr>���request�е����ԣ�
	<c:out value="${test_request}"/>
	<hr>���application�е����ԣ�
	<c:out value="${test_application}"/>
	<hr>���Ա��ʽ�������Ȼ���ĸ����ԣ�<request,session,application>
	<c:out value="${test_all}"/>
	<hr>���һ��Ĭ��ֵ��
	<c:out value="${notex}" default="���ֵ������"/>
	</body>
</html>
