<%@ page contentType="text/html;charset=gb2312" %>

<html>
<head>
  <title>exa3_15.jsp</title>
</head>
<body>

<h2>javax.servlet.jsp.JspWriter - out </h2>
<%
	int BufferSize = out.getBufferSize();
	int Available = out.getRemaining();	
	int Used = BufferSize - Available;
%>
BufferSize : <%= BufferSize %><br>
Available : <%= Available %><br>
Used : <%= Used %><br>

</body>
</html>