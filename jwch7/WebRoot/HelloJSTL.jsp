<%@ page contentType="text/html;charset=gbk" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>

  <head>
  <title>��һ��JSTLҳ��</title>
  </head>
  
  <body>
    <c:out value="��ӭ�㵽JSTLҳ����"/>
    <c:set var="a" value="����"  />
    <c:out value="QQQQQQQQQQQQQQQQ" escapeXml="true"/>
	<p>�㷢�������µ�����ͷ��Ϣ:
	<table border="1">
	  <tr>
	    <th>Header</th>
	    <th>Value</th>
	  </tr>
	  <c:forEach var="entry" items="${header}">
	    <tr>
	      <td>${entry.key}</td>
	      <td>${entry.value}</td>
	    </tr>
	  </c:forEach>
	</table>
  </body>
</html>
