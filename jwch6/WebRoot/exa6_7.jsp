<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<%@ taglib prefix="myfun" uri="http://bit.edu.cn/function"%>

<%@ page isELIgnored ="false" %>
<html>
<head>
  <title>表达式语言的使用</title>
</head>
<body bgcolor="#FFFFFF">
<hr>提交的内容是：
${myfun:trans(param.name)}

<hr>
<form action="exa6_7.jsp" method=get name=form1>
<input type=text name="name" value="">
<input type=submit value=提交>
</form>
<hr>
<hr>
另一个函数的使用，结果是：
${myfun:add(param["x"],param["y"])}
<form action="exa6_7.jsp" method=get name=form2>
<input type=text name="x">
<input type=text name="y">
<input type=submit value=提交>
</form>

</body>
</html>