<%@ page language="java" pageEncoding="GB18030"%>

<jsp:useBean id="sessionperson" class="bit.jw.Person" scope="session"/>
<jsp:useBean id="requestperson" class="bit.jw.Person" scope="request"/>

<html>
	<head>
	<title>JSP EL��ʽ����</title>
	</head>
	<body>
	<h2>JSP EL�뷶Χ�йص���ʽ����</h2>
	<table>
	  <tr>
	    <td>����</td>
	    <td>����</td>
	    <td>���</td>
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