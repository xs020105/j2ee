
<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY> 
<%  String str1=request.getParameter("submit1");
    String str2=request.getParameter("submit2");
      if(str1==null) 
         {str1="";
         }
       if(str2==null) 
         {str2="";
         }
       if(str1.startsWith("word")) 
         {response.setContentType("application/msword;charset=GB2312");
          out.print(str1);
         }
        if(str2.startsWith("excel"))
         {response.setContentType("application/x-msexcel;charset=GB2312");
         }
%>
<jsp:include page="3_11.txt"/>
</BODY>
</HTML>