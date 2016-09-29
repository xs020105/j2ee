<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY>
<P>加载文件并传递参数的效果：
   <jsp:include page="tom.jsp">
     <jsp:param name="computer" value="300" />
   </jsp:include>
</BODY>
</HTML>