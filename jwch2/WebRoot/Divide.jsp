<%@ page language="java" errorPage="error.jsp" contentType="text/html;charset=GBK"%>
<html>
<head>
<title>Divide</title>
</head>
<body bgcolor="#FFFFFF">
<center>
<br>eqw
<h1>
<% 
  	    int dividend = 0;
   		int divisor = 0;
		int result = 0;
   		try{
   			dividend = Integer.parseInt( request.getParameter( "value1" ) );
   		}
   		catch( NumberFormatException nfex ){
   			throw new NumberFormatException( "被除数不是整数! " );
   		}
   		try{
   			divisor = Integer.parseInt( request.getParameter( "value2" ) );
   		}
   		catch( NumberFormatException nfex ){
   			throw new NumberFormatException( "除数不是整数! " );
   		}	
   		result=dividend/divisor;
   		out.println( dividend + " / " + divisor + " = " + result );
%>   
</h1>
<br><br><br>
  <a href="javascript: history.back();">返回</a>
</center>	
</body>
</html>
