<%@ page contentType="text/html;charset=gb2312"%>

<html>
	<body >
	<font size=4>
		<jsp:useBean id="cir" class="bit.jw.Circle" scope="page">
		</jsp:useBean>
		<p>Բ�İ뾶�ǣ�
		<%=cir.getRadius()%>
		<%cir.setRadius(100);
		%>
		<p>Բ�İ뾶�ǣ�
		<%=cir.getRadius()%>
		<p>Բ���ܳ���
		<%=cir.circlLength()%>
		<p>Բ������ǣ�
		<%=cir.circleArea()%>
	</font>
	</body>
</html>