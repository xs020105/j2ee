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
<P>���ҳ�汻������
   <%=number%>
�Ρ�
</BODY>
</HTML>