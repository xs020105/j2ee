<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.net.*" errorPage="" %>
<html>
<head>
<title>��ȡ��Դ��·��</title>
</head>

<body>
<h2>
<%
  URL url = application.getResource("/");
%>
getPath()��õ�Path:<%=url.getPath()%><br>
getRealPath()��õ�Path:<%=application.getRealPath("/")%><br>
<%application.log("application log test");%>
</h2>
</body>
</html>
