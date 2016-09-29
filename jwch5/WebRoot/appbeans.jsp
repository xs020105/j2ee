<%@ page contentType="text/html;charset=GB2312" %> 
<HTML> 
<BODY>
 <jsp:useBean id="cir" class="bit.jw.Circle" scope="application" >
   </jsp:useBean>
<P>圆的初始半径是：
   <%=cir.getRadius()%>
   <%cir.setRadius(1000);%>
<P>修改后的圆的半径是：
   <%=cir.getRadius()%>
</BODY>
</HTML>