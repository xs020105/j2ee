<%@ page language="java" contentType="text/html;charset=gb2312" %>
<html>
<head>
<title>测试pageContext()对象</title>
</head>
<body>
<h5>获得前一页面设置的值 </h5>
<hr size="1">
<%
out.println("<br>pageContext.getAttribute('userN')=<br>");
out.println(pageContext.getAttribute("userN"));
out.println("<br>pageContext.getServletContext().getAttribute('shareValue')=<br>");
out.println(pageContext.getServletContext().getAttribute("shareValue"));
out.println("<br>pageContext.getSession().getAttribute('sessionValue')=<br>");
out.println(pageContext.getSession().getAttribute("sessionValue"));
%>
</body>
</html>