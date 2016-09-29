<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY>
 <% double i=Math.random()*100+1;
 %>
   <jsp:forward page="come.jsp" >
      <jsp:param name="number" value="<%=i%>" />
   </jsp:forward> 
 </BODY>
</HTML>