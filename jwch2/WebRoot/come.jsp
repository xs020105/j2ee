<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY bgcolor=cyan><FONT Size=4>
<%String str=request.getParameter("number");
     double n=Double.parseDouble(str);
%>
   <P>我是come.jsp,您传过来的数值是:<BR>
    <%=n%>
</BODY>
</HTML>