<%@ page contentType="text/html;charset=gbk" %>

<html>
	<head>
	  <title>Param</title>
	</head>
	<body>
	
	  <h2>EL��param��paramValues</h2>
	<% request.setCharacterEncoding("gbk");%>
	 ����   ${param.username}</br>
	 ����   ${param.password}</br>
	 �Ա�   ${param.sex}</br>
	 ����   ${param.old}</br>
	 ��Ȥ   ${paramValues.habit[0]}
	       ${paramValues.habit[1]} 
	</body>
</html>