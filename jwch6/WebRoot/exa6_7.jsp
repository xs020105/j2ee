<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<%@ taglib prefix="myfun" uri="http://bit.edu.cn/function"%>

<%@ page isELIgnored ="false" %>
<html>
<head>
  <title>���ʽ���Ե�ʹ��</title>
</head>
<body bgcolor="#FFFFFF">
<hr>�ύ�������ǣ�
${myfun:trans(param.name)}

<hr>
<form action="exa6_7.jsp" method=get name=form1>
<input type=text name="name" value="">
<input type=submit value=�ύ>
</form>
<hr>
<hr>
��һ��������ʹ�ã�����ǣ�
${myfun:add(param["x"],param["y"])}
<form action="exa6_7.jsp" method=get name=form2>
<input type=text name="x">
<input type=text name="y">
<input type=submit value=�ύ>
</form>

</body>
</html>