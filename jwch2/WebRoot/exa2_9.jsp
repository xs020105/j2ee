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
<p>�����Ĳ����£�Ŀǰpi�ļ������ǣ�
<%=sum*4%>
</body>
</html>