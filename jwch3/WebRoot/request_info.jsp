<%@ page language="java" contentType="text/html;charset=GB2312" %>
<html>
<head>
<title>���JSPҳ����������Ϣ</title>
</head>
<body>
<h3>javax.servlet.http.HttpServletRequest�ӿ����ṩ�Ĳ��ַ���</h3>
getProtocol( )��<%= request.getProtocol() %><br>
getMethod( )��<%= request.getMethod() %><br>
getContentType( )��<%= request.getContentType() %><br>
getContentLength( )��<%= request.getContentLength() %><br>
getCharacterEncoding( )��<%= request.getCharacterEncoding() %><br>
getContextPath( )��<%= request.getContextPath() %><br>
getRequestURI( )��<%= request.getRequestURI() %><br>
getRemoteAddr( )��<%= request.getRemoteAddr() %><br>
getRemoteHost( )��<%= request.getRemoteHost() %><br>
</body>
</html>