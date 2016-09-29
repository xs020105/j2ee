<%@ page contentType="text/html; charset=GBK" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>
	<head>
	  <title>JSTL: Iterator Support -- forTokens Example</title>
	</head>
	<body>
	<h3><forTokens></h3>
	<h4>ʹ�� '|' ��Ϊ�ָ��</h4>
	<c:forTokens var="token" items="blue,red,green|yellow|pink,black|white" delims="|">
	  <c:out value="${token}"/>  ->
	</c:forTokens>
	<h4>ʹ�� '|'��',' ��Ϊ�ָ��</h4>
	<c:forTokens var="token" items="blue,red,green|yellow|pink,black|white" delims="|,">
	  <c:out value="${token}"/>  ->
	</c:forTokens>
	<h4>ʹ�ñ��ʽ����</h4>
	<%
	String phoneNumber = "123-456-7899";
	request.setAttribute("userPhone", phoneNumber);
	%>
	<c:forTokens items="${userPhone}" delims="-" var="item" >
	${item}
	</c:forTokens>
	</body>
</html>

