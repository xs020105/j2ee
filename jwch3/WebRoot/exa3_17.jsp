<%@ page contentType="text/html;charset=gb2312"%>
<html>
<body>
<% session.setAttribute("custom","�˿�");  //���˿Ͷ������session�У���ָ���ؼ���Ϊcustom
%>
<p><H2>�����������֣����ӵ������̳���</H2>
<form action="first.jsp" method=post name=form>
<input type="text" name="boy">
<input type="submit" name="submit" value="�ͳ�">
</form>
</body>
</html>