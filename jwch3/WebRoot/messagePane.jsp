<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<HTML>
<BODY>
     <%! Vector v=new Vector();
         int i=0; ServletContext  application;
         synchronized void sendMessage(String s)
          { application=getServletContext();;
            i++;
           v.add("No."+i+","+s);
           application.setAttribute("Mess",v); 
          }
     %> 
     <% String name=request.getParameter("peopleName");
        String title=request.getParameter("Title");
        String messages=request.getParameter("messages");
           if(name==null)
             {name="guest"+(int)(Math.random()*10000);
             }
           if(title==null)
             {title="�ޱ���";
             }
           if(messages==null)
             {messages="����Ϣ";
             }
          String s="Name:"+name+"#"+"Title:"+title+"#"+"Content:"+"<BR>"+messages; 
          sendMessage(s);
          out.print("������Ϣ�Ѿ��ύ��");
     %>
  <A HREF="submitMessage.jsp" >���� 
</BODY>
</HTML>