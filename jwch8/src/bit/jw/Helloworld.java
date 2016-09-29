package bit.jw;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Helloworld extends HttpServlet
{
  
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
   {
     
  
    res.setContentType("text/html;charset=GBK");
    PrintWriter out=res.getWriter();
    out.println("<html>");
    out.println("<head><title>helloworld!</title></head>");
    out.println("<body>");
    out.println("<p>这是我的第一个HTTP Servlet,你好！</p>");
    out.println("</body></html>");
    
  }
  
public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
   { doGet(req,res);}
} 