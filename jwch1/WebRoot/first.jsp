<%@ page contentType="text/html;charset=GB2312"%>
<html>
<head>
<title>First JSP Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body bgcolor="#FFFFFF" text="#000000">
<% 
    java.util.Date now = new java.util.Date();
    out.println("当前时间是:"+now);
%>
<H2>这是一个JSP页面，简单不？</H2>
</body>
</html>