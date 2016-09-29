<%@ page contentType="text/html;charset=gb2312"%>
<html>
<body>
<% String nm=request.getParameter("boy");
  session.setAttribute("name",nm);  //将nm对象加入session中，并指定关键字为name
%>
<p><H2>这里是银座商场,请输入您购买的商品，连接到结账处。</H2>
<form action="count.jsp" method=post name=form>
<input type="text" name="buy">
<input type="submit" name="submit" value="送出">
</form>
</body>
</html>