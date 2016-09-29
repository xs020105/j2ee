<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<html>
	<head>
	  <title>JSTL:c:forEach的使用</title>
	</head>
	<body>
	<h2><c:out value="<c:forEach> varStatus 的四种属性" /></h2>
	<%
	String atts[] = new String [3];
	atts[0]="hello";
	atts[1]="welcome";
	atts[2]="you";
	request.setAttribute("atts", atts);
	%>
	<c:forEach items="${atts}" var="item" varStatus="s">
	<h2><c:out value="${item}"/>的四种属性：</h2>
	index：${s.index},count：${s.count},first：${s.first},last：${s.last}</br>
	</c:forEach>
	</body>
</html>

