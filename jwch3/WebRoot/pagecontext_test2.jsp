<%@ page language="java" contentType="text/html;charset=gb2312" %>
<html>
<head>
<title>����pageContext()����</title>
</head>
<body>
<h5>���ǰһҳ�����õ�ֵ </h5>
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