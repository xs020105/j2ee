<%@ page language="java" isErrorPage="true"  contentType="text/html;charset=GBK"%>
<html>
<head>
<title>Compute error</title>
</head>
<body bgcolor="#FFFFFF">
<div align="center">
  <br><br>
  <h1>������Ϣ</h1>
  <hr>
  <p>
  <center>
  <h3><%= exception.toString() %></h3>
  <br><br><br>
  <a href="javascript: history.back();">����</a>
  </center>
  </p>
</div>
</body>
</html>