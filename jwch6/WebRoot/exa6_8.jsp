<%@ page language="java" pageEncoding="GB18030"%>

<jsp:useBean id="sessionperson" class="bit.jw.Person" scope="session"/>
<jsp:useBean id="requestperson" class="bit.jw.Person" scope="request"/>

<html>
	<head>
	<title>JSP EL隐式对象</title>
	</head>
	<body>
	<h2>JSP EL与范围有关的隐式对象</h2>
	<table>
	  <tr>
	    <td>概念</td>
	    <td>代码</td>
	    <td>输出</td>
	  </tr>
	  
	  <tr>
	    <td>sessionScope</td>
	    <td>${'${'}      sessionScope.sessionperson.name}
	</td>
	    <td>${sessionScope.sessionperson.name}    </td>
	  </tr>
	  <tr>
	    <td>requestScope</td>
	    <td>${'${'}      requestScope.requestperson.name}
	</td>
	    <td>${requestScope.requestperson.name}    </td>
	  </tr> 
	</table>
	</body>
</html>