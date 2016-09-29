<%@ page contentType="text/html; charset=gb2312"%> 
<html>
<head>
<title>在请求域内的管理属性</title>
</head>
<body>
<%String my= (String)request.getAttribute("hello");%>
<h6 align=center><%=my%></h6>
<%java.util.Date date = (java.util.Date)request.getAttribute("today");%>
<h1 align=center>今天是:<%=date.getMonth()+1%>月<%=date.getDate()%>号,星期<%=date.getDay()%></h1>
</body>
</html>

