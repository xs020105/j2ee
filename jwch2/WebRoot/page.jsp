<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="java.util.Date"%>
<%@ page info="�������ڼ���"%>
<html>
<head>
<title>pageָ�����</title>
</head>
<body>
<h1 align=center>
<%
   Date date=new Date();
   String s=getServletInfo();
   out.println("<br>"+s); 
%>
<p>������
<%= date.getMonth()+1%>��<%= date.getDate()%>��,����<%= date.getDay()%>��
</h1>
</body>
</html>