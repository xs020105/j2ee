package bit.jw;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Night extends HttpServlet
{  
  public void init(ServletConfig config) throws ServletException
    {super.init(config);
    }
  public  void doPost(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException
    {  //获得一个向客户发送数据的输出流：
       response.setContentType("text/html;charset=GB2312");//设置响应的MIME类型。
       PrintWriter out=response.getWriter();
       out.println("<HTML>"); 
       out.println("<BODY>");
       out.println("<H1> too late！should sleeping");
       out.println("</BODY>");
       out.println("</HTML>");
    }
  public void doGet(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException
    { 
      doPost(request,response);
    }
}