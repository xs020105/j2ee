<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="java.util.*,bit.jw.TestBean"%>

<%
   Collection users=new ArrayList();
   for(int i=0;i<5;i++)
   {
      TestBean user=new TestBean();
      user.setUserName("�ͻ�"+i);
      user.setPassword("guest000"+i);
   	  user.setAge(30+i);
      users.add(user);
   }
   session.setAttribute("users",users);
%>

<html>
	<head>
	  <title>JSTL:c:forEach��ʹ��</title>
	</head>
	<body>
	<h4>ȫ���ͻ��嵥</h4>
	<table border=1>
	<tr><td>�û���</td><td>����</td><td>����</td></tr>
	<c:forEach var="users" items="${users}">
	  <tr>
	  <td><c:out value="${users.userName}"/></td>
	  <td><c:out value="${users.password}"/></td>
	  <td><c:out value="${users.age}"/></td>
	  </tr>
	</c:forEach>
	</table>
	<h4>���ֿͻ��嵥</h4>
	<table border=1>
	<tr><td>�û���</td><td>����</td><td>����</td></tr>
	<c:forEach var="users" items="${users}" begin="2" end="4" step="2">
	  <tr>
	  <td><c:out value="${users.userName}"/></td>
	  <td><c:out value="${users.password}"/></td>
	  <td><c:out value="${users.age}"/></td>
	  </tr>
	</c:forEach>
	</table> 
	</body>
</html>
