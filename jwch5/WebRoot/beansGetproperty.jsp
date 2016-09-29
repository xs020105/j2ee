<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
	<BODY>
	   <Font size=4>
	   <jsp:useBean id="apple" class="bit.jw.Circle2" scope="page" >
	   </jsp:useBean>
	   <%apple.setRadius(100);%>
		<P>圆的半径是：
		 <jsp:getProperty  name= "apple"  property= "radius"  />
		<P>圆的面积是：
		  <jsp:getProperty name= "apple"  property= "circleArea" />
		<P>圆的周长是：
		  <jsp:getProperty name= "apple"  property= "circleLength" />
	</BODY>
</HTML>