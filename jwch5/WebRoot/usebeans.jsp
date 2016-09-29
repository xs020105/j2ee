<%@ page contentType="text/html;charset=gb2312"%>

<html>
	<body >
	<font size=4>
		<jsp:useBean id="cir" class="bit.jw.Circle" scope="page">
		</jsp:useBean>
		<p>圆的半径是：
		<%=cir.getRadius()%>
		<%cir.setRadius(100);
		%>
		<p>圆的半径是：
		<%=cir.getRadius()%>
		<p>圆的周长是
		<%=cir.circlLength()%>
		<p>圆的面积是：
		<%=cir.circleArea()%>
	</font>
	</body>
</html>