<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY bgcolor=cyan><FONT Size=4>
<%String str=request.getParameter("number");
     double n=Double.parseDouble(str);
%>
   <P>����come.jsp,������������ֵ��:<BR>
    <%=n%>
</BODY>
</HTML>