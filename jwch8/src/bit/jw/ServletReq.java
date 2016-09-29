package bit.jw;

import java.io.*;
import javax.servlet.*;

public class ServletReq extends GenericServlet
{
  public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException
  {
   ServletOutputStream out=res.getOutputStream();
   out.println("<pre>");
   out.println("informtion about servlet request.");
   out.println("request content length:"+req.getContentLength()); 
   out.println("request content type:"+req.getContentType());  //��������text/html
   out.println(" request content protocol:"+req.getProtocol());  ////��������<protocol>/<version>
   out.println("request sheme:"+req.getScheme());  //��������http�Ĵ�
   out.println("request servername:"+req.getServerName()); //��������djf.nudt.edu.cn�Ĵ�
   out.println("request serverport:"+req.getServerPort()); 
   out.println("request remote address:"+req.getRemoteAddr()); //��������202.197.11.163��ip��ַ
   out.println("request remote host:"+req.getRemoteHost());
   out.println("request parameter name:"+req.getParameter("name"));
   out.println("</pre>");
   }
}

  //  http://localhost:8080/jwch8/servlet/ServletReq?name=haha
