<%@ page contentType="text/html;charset=gb2312"%>

<body>
	<p>���ǽ�����tom
<%
	String str=request.getParameter("computer");
    int n=Integer.parseInt(str);
%>
   	<P>������������ֵ��:<BR>
    <%=n%>
</body>
