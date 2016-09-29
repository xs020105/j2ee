<%@ page contentType="text/html;charset=gb2312"%>
<html>
<body>
<%!double sum=0,i=1,j=1;
   synchronized void pi()
   {
	sum=sum+i/j;
	j=j+2;
	i=-i;
   }
%>
<%pi();%>
<p>在您的参与下，目前pi的计算结果是：
<%=sum*4%>
</body>
</html>