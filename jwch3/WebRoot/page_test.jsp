<%@ page  contentType="text/html;charset=GB2312"  import="java.lang.* "%>
<html>
<head>
<title>page�����÷���ʾ��</title>
</head>
<body >
<h5>��ǰJSP�ļ�����Ϊ�� </h5>
<%=page.getClass()%> 
<h5>��page����Ĺ�ϣ��ֵΪ��</h5>
<%=page.hashCode()%> 
<h5>��page����ת��Ϊ�ַ�����Ϊ��</h5>
<%=page.toString()%>
</body>
</html>
