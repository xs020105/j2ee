<%@ page contentType="text/html;charset=gbk" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>

  <head>
  <title>第一个JSTL页面</title>
  </head>
  
  <body>
    <c:out value="欢迎你到JSTL页面来"/>
    <c:set var="a" value="李四"  />
    <c:out value="QQQQQQQQQQQQQQQQ" escapeXml="true"/>
	<p>你发送了如下的请求头信息:
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
