<%@ page  language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<html>
<head>
<title>测试pageContext()对象</title>
</head>
<body>
<p><h5>在pageContext对象中设置部分属性</h5>
<hr size="1">
<%
request.setCharacterEncoding("GBK");
ServletRequest req=pageContext.getRequest();  
String name=req.getParameter("name");
out.println("参数="+name);
pageContext.setAttribute("userN",name);
pageContext.getServletContext().setAttribute("shareValue","多个页面共享的值");
pageContext.getSession().setAttribute("sessionValue","只有在session中才是共享的值");
out.println("<br>pageContext.getAttribute('userN'):");
out.println(pageContext.getAttribute("userN"));
%>
<br><a href="pagecontext_test2.jsp">下一页--></a> 
</body>
</html>
