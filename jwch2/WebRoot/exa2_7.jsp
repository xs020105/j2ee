<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY>
    <%! int number=0;     
     synchronized void countPeople()
        { number++;
        }
    %>
    <% countPeople();  
    %>
<P>这个页面被访问了
   <%=number%>
次。
</BODY>
</HTML>