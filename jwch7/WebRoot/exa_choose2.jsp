<%@page contentType="text/html; charset=GBK"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
  int i = (int) (Math.random()*10);
  pageContext.setAttribute("signalStrength", new Integer(i), PageContext.PAGE_SCOPE);
%>

<html>
	<head>
	<title>if �� choose ��������</title>
	</head>
	<body>
	<c:if test="${pageScope.signalStrength < 5}">
	  <c:set var="signalFailure" value="true" scope="page"/>
	</c:if>
	<h1>ʹ�� If �� Choose</h1>
	<c:choose>
	  <c:when test="${pageScope.signalFailure == true}">�źŶϿ�</c:when>
	  <c:otherwise>�źŴ�</c:otherwise>
	</c:choose>
	</body>
</html>
