<%@ page contentType="text/html;charset=gb2312"%>
<%! public String getString(String s)
     {
	if(s==null)
	  s="";
	try{
	    byte b[]=s.getBytes("ISO-8859-1"); 
	    s=new String(b);
	   }
        catch(Exception e){}
	return s;
    }
%>
<html>
<body>
<% String pa=request.getParameter("buy");
  session.setAttribute("goods",pa);  //��nm�������session�У���ָ���ؼ���Ϊname
%>
<H2>
<p>�����ǽ��˴���
<% String cus=(String)session.getAttribute("custom");
   String nam=(String)session.getAttribute("name");
   String goo=(String)session.getAttribute("goods");
   nam=getString(nam);
   goo=getString(goo);
%>
<br>
<p><%=cus%>�������ǣ�<%=nam%>
<p>��ѡ������Ʒ�ǣ�<%=goo%>
</H2>
</body>
</html>