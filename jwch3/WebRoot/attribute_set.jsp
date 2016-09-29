<%@ page contentType="text/html; charset=gb2312"%> 
<%@ page language="java" import="java.sql.*" %>
<html>
<head>
<title>在请求域内管理属性</title>
</head>
<body>
<%
request.setAttribute("hello","朋友，您好！");
request.setAttribute("today",new java.util.Date());
%>
<%@ include file ="attribute_get.jsp" %>
</body>
</html>
