<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<HTML>
<BODY ><Font size=10 >
<P>现在的时间是：<BR>
<% out.println(""+new Date());
   response.setHeader("Refresh","5");
 %>
</FONT>
</BODY>
</HTML>