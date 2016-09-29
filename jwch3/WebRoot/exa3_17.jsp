<%@ page contentType="text/html;charset=gb2312"%>
<html>
<body>
<% session.setAttribute("custom","顾客");  //将顾客对象加入session中，并指定关键字为custom
%>
<p><H2>输入您的名字，连接到银座商场。</H2>
<form action="first.jsp" method=post name=form>
<input type="text" name="boy">
<input type="submit" name="submit" value="送出">
</form>
</body>
</html>