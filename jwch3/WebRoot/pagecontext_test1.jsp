<%@ page  language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<html>
<head>
<title>����pageContext()����</title>
</head>
<body>
<p><h5>��pageContext���������ò�������</h5>
<hr size="1">
<%
request.setCharacterEncoding("GBK");
ServletRequest req=pageContext.getRequest();  
String name=req.getParameter("name");
out.println("����="+name);
pageContext.setAttribute("userN",name);
pageContext.getServletContext().setAttribute("shareValue","���ҳ�湲���ֵ");
pageContext.getSession().setAttribute("sessionValue","ֻ����session�в��ǹ����ֵ");
out.println("<br>pageContext.getAttribute('userN'):");
out.println(pageContext.getAttribute("userN"));
%>
<br><a href="pagecontext_test2.jsp">��һҳ--></a> 
</body>
</html>
