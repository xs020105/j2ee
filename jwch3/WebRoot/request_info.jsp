<%@ page language="java" contentType="text/html;charset=GB2312" %>
<html>
<head>
<title>输出JSP页面请求行信息</title>
</head>
<body>
<h3>javax.servlet.http.HttpServletRequest接口所提供的部分方法</h3>
getProtocol( )：<%= request.getProtocol() %><br>
getMethod( )：<%= request.getMethod() %><br>
getContentType( )：<%= request.getContentType() %><br>
getContentLength( )：<%= request.getContentLength() %><br>
getCharacterEncoding( )：<%= request.getCharacterEncoding() %><br>
getContextPath( )：<%= request.getContextPath() %><br>
getRequestURI( )：<%= request.getRequestURI() %><br>
getRemoteAddr( )：<%= request.getRemoteAddr() %><br>
getRemoteHost( )：<%= request.getRemoteHost() %><br>
</body>
</html>