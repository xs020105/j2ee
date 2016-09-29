<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="java.util.*" contentType="text/html;charset=gbk"%>

<html>
	<head>
	  <title>JSTL: Iterator Support -- Data Types Example</title>
	</head>
	<body bgcolor="#FFFFFF">
	<h3>各种类型数据</h3>
	<%
	 int[] myIntArray=new int[]{1,2,3,4,5,65,34};
	 String[] myStringArray=new String[]{"I ","am ","a ","Java","fans"};
	 Vector v=new Vector();
	 v.add("this");
	 v.add("is");
	 v.add("myEnumeration");
	 v.add("!");
	 Enumeration myEnumeration=v.elements();
	 HashMap myNumberMap=new HashMap();
	 myNumberMap.put("张三","333");
	 myNumberMap.put("李四","444");
	 myNumberMap.put("王五","555");
	 myNumberMap.put("赵六","666");
	request.setAttribute("myIntArray",myIntArray);
	request.setAttribute("myStringArray",myStringArray);
	request.setAttribute("myEnumeration",myEnumeration);
	request.setAttribute("myNumberMap",myNumberMap);
	%> 
	<h4>整型数组</h4>
	<c:forEach var="i" items="${myIntArray}">
	  <c:out value="${i}"/>  ,
	</c:forEach>
	<h4>字符串数组</h4>
	<c:forEach var="string" items="${myStringArray}">
	  <c:out value="${string}"/> ,
	</c:forEach>
	<h4>Enumeration</h4>
	<c:forEach var="item" items="${myEnumeration}" begin="0" end="5" step="1">
	  <c:out value="${item}"/> ,
	</c:forEach>
	<h4>Map</h4>
	<c:forEach var="prop" items="${myNumberMap}" begin="1" end="5">
	  <c:out value="${prop.key}"/> = <c:out value="${prop.value}"/> ,
	</c:forEach>
	<h4>字符串</h4>
	<c:forEach var="token" items="red,blue,green">
	  <c:out value="${token}"/> ,
	</c:forEach>
	</body>
</html>

