<%@ page contentType="text/html;charset=GB2312" %>

<HTML>
	<BODY><Font size=4>
	 <jsp:useBean id="girl" class="bit.jw.Circle" scope="session" >
	   </jsp:useBean>
	<P>圆的半径是：
	   <%=girl.getRadius()%>
	  <%girl.setRadius(400);%>
	<P>修改后的圆的半径是：
	   <%=girl.getRadius()%>
	</BODY>
</HTML> 