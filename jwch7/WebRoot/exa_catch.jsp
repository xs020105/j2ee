<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>
<html>
<head>
  <title>JSTL�е��쳣</title>
</head>
<body bgcolor="#FFFFFF">
<c:catch var="myex1">
<%
  int i=0;
  int j=10/i;
 %>
 </c:catch>
<c:catch var="myex2"> 
<% 
  String eFormat = "not number";  
  int t = Integer.parseInt(eFormat); 
%> 
</c:catch>

 <p>������쳣��
 <c:out value="${myex1}"/>
 <p>�쳣exception.getMessage=
 <c:out value="${myex1.message}"/>

<p>ת���쳣��
 <c:out value="${myex2}"/>
 <p>�쳣exception.getMessage=
 <c:out value="${myex2.message}"/>

</body>
</html>
