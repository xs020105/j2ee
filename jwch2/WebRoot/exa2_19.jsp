<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY>
<% double i=Math.random();
    if(i>0.5)
    {
%>
  <jsp:forward page="/exa2_1.jsp" />
 <%     
    }
   else
    {
 %>
   <jsp:forward page="exa2_2.jsp" />
 <%
    }
 %>
<P> 这句话和下面的表达式的值能输出吗？
 <%=i%>
</BODY>
</HTML>