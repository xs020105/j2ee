<%@page import="java.util.*"%>
<%@page contentType="text/html;charset=gb2312"%>
<html>
  <body>
    <h2 align=center>欢迎您加入Java Web学习团队！今天是
    <%Date today=new Date();%>       <%--声明元素，结尾有“;”--%>
    <%=today.getDate()%>号,星期<%=today.getDay()%>  <%--表达式元素，结尾无“;”--%>
  </body>
</html>
