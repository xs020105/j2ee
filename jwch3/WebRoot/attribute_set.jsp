<%@ page contentType="text/html; charset=gb2312"%> 
<%@ page language="java" import="java.sql.*" %>
<html>
<head>
<title>���������ڹ�������</title>
</head>
<body>
<%
request.setAttribute("hello","���ѣ����ã�");
request.setAttribute("today",new java.util.Date());
%>
<%@ include file ="attribute_get.jsp" %>
</body>
</html>
