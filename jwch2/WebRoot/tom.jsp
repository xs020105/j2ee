<%@ page contentType="text/html;charset=gb2312"%>

<body>
	<p>我是接收者tom
<%
	String str=request.getParameter("computer");
    int n=Integer.parseInt(str);
%>
   	<P>您传过来的数值是:<BR>
    <%=n%>
</body>
