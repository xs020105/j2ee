<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<jsp:useBean id="user" class="bit.jw.TestBean" scope="page"/>
<c:set value="16" target="${user}" property="age"/>
<c:set value="����" target="${user}" property="userName"/>

<html>
	<head>
	  <title>JSTL:c:if��ʹ��</title>
	</head>
	<body>
	<c:if test="${user.userName != '����'}" var="con1" scope="page"> 
	���� <jsp:getProperty name="user" property="userName" /> ���� 
	</c:if>
	<p><c:if test="${user.age<18 and con1}">
	 �Բ����������С�����ܷ��������ҳ��
	 </c:if>
	</body>
</html>
