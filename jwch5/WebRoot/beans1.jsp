<%@ page contentType="text/html;charset=GB2312" %>

<HTML>
	<BODY><Font size=4>
		<jsp:useBean id="girl" class="bit.jw.Circle" scope="session" >
		</jsp:useBean>
		
		<P>Բ�İ뾶�ǣ�
		  <%=girl.getRadius()%>
		 <A href="beans2.jsp"><BR>beans2.jsp </A>
	</BODY>
</HTML>