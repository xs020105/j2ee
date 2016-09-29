<%@ page contentType="text/html; charset=gb2312"%> 
<%@ page language="java" import="java.util.*" %>
<html>
<head>
<title>获取请求报头</title>
</head>
<body>
<%
  int i=0;
  Enumeration  headers = request.getHeaderNames();
  while(headers.hasMoreElements()){
    String name = (String)headers.nextElement();
    String value = request.getHeader(name);
    out.println(name + " = " + value+"<br>");
  }
%>
</body>
</html>
