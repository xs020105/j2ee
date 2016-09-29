<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="java.util.Date"%>
<%@ page info="今天星期几？"%>
<html>
<head>
<title>page指令测试</title>
</head>
<body>
<h1 align=center>
<%
   Date date=new Date();
   String s=getServletInfo();
   out.println("<br>"+s); 
%>
<p>今天是
<%= date.getMonth()+1%>月<%= date.getDate()%>号,星期<%= date.getDay()%>。
</h1>
</body>
</html>