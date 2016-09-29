
<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY ><FONT size=4>   
<P>文本框提交的用户名为：
   <%String textContent=request.getParameter("boy");
   %>
<BR>
   <%=textContent%> 
<P> 客户端提交的按钮的名字为：
   <%String buttonName=request.getParameter("submit");
   %>
<BR>
   <%=buttonName%> 
</FONT>
</BODY>
</HTML>
