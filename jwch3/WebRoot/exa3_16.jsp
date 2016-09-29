<%@ page contentType="text/html;charset=gb2312"%>
<html>
<body >
<h3>
<% String count=(String)session.getAttribute("numVisits");
   count=increment(count);
   out.println("you have visit this page: -->"+count+"  <--times.");
   session.setAttribute("numVisits",count);
%>
<%!
  String increment(String count)
  {
    if(count!=null)
    return Integer.toString(Integer.parseInt(count)+1);
    else
    return "1";
  }
%>
</h3>
</body>
</html>