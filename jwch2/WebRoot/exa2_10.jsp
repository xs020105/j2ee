<%@ page contentType="text/html;charset=gb2312"%>
<html>
<body>
<p>�����������α߳�
<br>
<form action="exa2_10.jsp" method="get" name=form>
	<input type="text" name="cat" value="1">
	<input type="submit" name="submit" value="�ͳ�">
</form>
<%! public class square
	{
	  double r;
	  square(double r)
	   {this.r=r;}
	  double getarea()
	   { return r*r;}
	  double getlength()
	   { return r*4;}
	}
%>
<% String s=request.getParameter("cat");
   double r;
   if(s!=null)
   {r=Double.valueOf(s).doubleValue();}
   else
   {r=1;}
   square cc=new square(r);   //��������
%>
<P>�����ε�����ǣ�
<BR>
<%=cc.getarea()%>
<p>�����ε��ܳ��ǣ�
<%=cc.getlength()%>
</body>
</html>