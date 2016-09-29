<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="java.util.*,bit.jw.TestBean"%>

<%
   Collection users=new ArrayList();
   for(int i=0;i<5;i++)
   {
      TestBean user=new TestBean();
      user.setUserName("客户"+i);
      user.setPassword("guest000"+i);
   	  user.setAge(30+i);
      users.add(user);
   }
   session.setAttribute("users",users);
%>

<html>
	<head>
	  <title>JSTL:c:forEach的使用</title>
	</head>
	<body>
	<h4>全部客户清单</h4>
	<table border=1>
	<tr><td>用户名</td><td>密码</td><td>年龄</td></tr>
	<c:forEach var="users" items="${users}">
	  <tr>
	  <td><c:out value="${users.userName}"/></td>
	  <td><c:out value="${users.password}"/></td>
	  <td><c:out value="${users.age}"/></td>
	  </tr>
	</c:forEach>
	</table>
	<h4>部分客户清单</h4>
	<table border=1>
	<tr><td>用户名</td><td>密码</td><td>年龄</td></tr>
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
