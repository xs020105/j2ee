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
             {title="无标题";
             }
           if(messages==null)
             {messages="无信息";
             }
          String s="Name:"+name+"#"+"Title:"+title+"#"+"Content:"+"<BR>"+messages; 
          sendMessage(s);
          out.print("您的信息已经提交！");
     %>
  <A HREF="submitMessage.jsp" >返回 
</BODY>
</HTML>