<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
	<BODY>
	   <Font size=4>
	   <jsp:useBean id="apple" class="bit.jw.Circle2" scope="page" >
	   </jsp:useBean>
	   <%apple.setRadius(100);%>
		<P>Բ�İ뾶�ǣ�
		 <jsp:getProperty  name= "apple"  property= "radius"  />
		<P>Բ������ǣ�
		  <jsp:getProperty name= "apple"  property= "circleArea" />
		<P>Բ���ܳ��ǣ�
		  <jsp:getProperty name= "apple"  property= "circleLength" />
	</BODY>
</HTML>