<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.net.*" errorPage="" %>
<html>
<head>
<title>提取资源的路径</title>
</head>

<body>
<h2>
<%
  URL url = application.getResource("/");
%>
getPath()获得的Path:<%=url.getPath()%><br>
getRealPath()获得的Path:<%=application.getRealPath("/")%><br>
<%application.log("application log test");%>
</h2>
</body>
</html>
