<%@ page contentType="text/html;charset=gb2312"%>
<body>
<% String s=request.getParameter("aa");
  	if(s==null) 
     	s="";
  	byte b[]=s.getBytes("ISO-8859-1");
  	s=new String(b);
  	if(s.equals(""))
  		response.sendRedirect("exa3_13.jsp");
  	else{
  		out.print("»¶Ó­Äãµ½±¾ÍøÕ¾");
   	out.print(s);
  	}
%>
</body>
