<%@ page contentType="text/html; charset=GBK" %>
<%@ page language="java" import="java.util.*" %>
<html>
<head>
<title>使用request对象获得表单参数</title>
</head>
<body>
<h4 align="center">使用request对象获得表单参数</h4><hr>
<%
	request.setCharacterEncoding("GBK");
	Enumeration params = request.getParameterNames();
	while(params.hasMoreElements()){
		String paramName = (String)params.nextElement();
		String[] paramValues = request.getParameterValues(paramName);
%>
<br>
Name:<%=paramName%>
<br>
Values:<%for(int j=0;j<paramValues.length;j++){%>
	<%=paramValues[j]%>
	<%}
	}%>
	<br>
</body>
</html>