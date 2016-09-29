<%@ page contentType="text/html;charset=gbk" %>

<html>
	<head>
	  <title>Param</title>
	</head>
	<body>
	
	  <h2>EL中param，paramValues</h2>
	<% request.setCharacterEncoding("gbk");%>
	 姓名   ${param.username}</br>
	 密码   ${param.password}</br>
	 性别   ${param.sex}</br>
	 年龄   ${param.old}</br>
	 兴趣   ${paramValues.habit[0]}
	       ${paramValues.habit[1]} 
	</body>
</html>