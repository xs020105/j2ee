<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<jsp:useBean id="person" class="bit.jw.Person" scope="request">
<jsp:setProperty name="person" property="*"/>
</jsp:useBean>
<html>
<head>
<title>EL��򵥵�JavaBean</title>
<head>
<body>
<h2>EL��򵥵�JavaBean</h2>
<table border="1">
  <tr>
    <td>${person["name"]}    </td>
    <td>${person["age"]}    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  <form action="exa6_4.jsp" method="post">
    <td>
      <input type="text" name="name">
    </td>
    <td>
      <input type="text" name="age">
    </td>
    <td>
      <input type="submit" value="�ύ��ѯ">
    </td>
  </form>
  <tr>
</table>
</body>
</html>