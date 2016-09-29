<%@page contentType="text/html; charset=GBK"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
  int i = (int) (Math.random()*10);
  pageContext.setAttribute("signalStrength", new Integer(i), PageContext.PAGE_SCOPE);
%>

<html>
	<head>
	<title>if 和 choose 操作测试</title>
	</head>
	<body>
	<c:if test="${pageScope.signalStrength < 5}">
	  <c:set var="signalFailure" value="true" scope="page"/>
	</c:if>
	<h1>使用 If 和 Choose</h1>
	<c:choose>
	  <c:when test="${pageScope.signalFailure == true}">信号断开</c:when>
	  <c:otherwise>信号打开</c:otherwise>
	</c:choose>
	</body>
</html>
