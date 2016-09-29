<%@ page language="java" pageEncoding="GB18030"%>

<HTML>
<HEAD>
<TITLE> show the message </TITLE>
</HEAD>

<BODY>
<p >Detail Message</p>
<hr>
<%

String aaa=(String)request.getAttribute("messages");
request.setCharacterEncoding("gbk");
out.println("<hr>Welcome£¬Your Message£º"+aaa); 
%>
</body>
</html>