<%@ page contentType="text/html; charset=gb2312"%> 
<html>
<head>
<title>���������ڵĹ�������</title>
</head>
<body>
<%String my= (String)request.getAttribute("hello");%>
<h6 align=center><%=my%></h6>
<%java.util.Date date = (java.util.Date)request.getAttribute("today");%>
<h1 align=center>������:<%=date.getMonth()+1%>��<%=date.getDate()%>��,����<%=date.getDay()%></h1>
</body>
</html>

