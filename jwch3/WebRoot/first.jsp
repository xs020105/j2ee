<%@ page contentType="text/html;charset=gb2312"%>
<html>
<body>
<% String nm=request.getParameter("boy");
  session.setAttribute("name",nm);  //��nm�������session�У���ָ���ؼ���Ϊname
%>
<p><H2>�����������̳�,���������������Ʒ�����ӵ����˴���</H2>
<form action="count.jsp" method=post name=form>
<input type="text" name="buy">
<input type="submit" name="submit" value="�ͳ�">
</form>
</body>
</html>