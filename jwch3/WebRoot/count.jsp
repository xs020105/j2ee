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
  session.setAttribute("goods",pa);  //将nm对象加入session中，并指定关键字为name
%>
<H2>
<p>这里是结账处。
<% String cus=(String)session.getAttribute("custom");
   String nam=(String)session.getAttribute("name");
   String goo=(String)session.getAttribute("goods");
   nam=getString(nam);
   goo=getString(goo);
%>
<br>
<p><%=cus%>的姓名是：<%=nam%>
<p>您选购的商品是：<%=goo%>
</H2>
</body>
</html>