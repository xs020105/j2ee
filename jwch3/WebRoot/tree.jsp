
<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY ><FONT size=4>   
<P>�ı����ύ���û���Ϊ��
   <%String textContent=request.getParameter("boy");
   %>
<BR>
   <%=textContent%> 
<P> �ͻ����ύ�İ�ť������Ϊ��
   <%String buttonName=request.getParameter("submit");
   %>
<BR>
   <%=buttonName%> 
</FONT>
</BODY>
</HTML>
