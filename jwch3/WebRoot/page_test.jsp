<%@ page  contentType="text/html;charset=GB2312"  import="java.lang.* "%>
<html>
<head>
<title>page对象常用方法示例</title>
</head>
<body >
<h5>当前JSP文件的类为： </h5>
<%=page.getClass()%> 
<h5>该page对象的哈希码值为：</h5>
<%=page.hashCode()%> 
<h5>该page对象转换为字符串后为：</h5>
<%=page.toString()%>
</body>
</html>
