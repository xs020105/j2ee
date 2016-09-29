package bit.jw;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HttpServletReq extends HttpServlet {
	
	  public void init(ServletConfig config) throws ServletException
	    {super.init(config);
	    }
	  public  void  doPost(HttpServletRequest request,HttpServletResponse response) 
	                        throws ServletException,IOException
	    {  //获得一个向客户发送数据的输出流：
	       response.setContentType("text/html;charset=GB2312");//设置响应的MIME类型。
	       PrintWriter out=response.getWriter();
	       
	       out.println("<HTML>"); 
	       out.println("<BODY>");
	       // 客户使用的协议是:
	        out.println("<BR>Protocol:");
	        String protocol=request.getProtocol();
	        out.println(protocol);
	        //获取接受客户提交信息的servlet：
	        out.println("<BR>Accept servlet:");
	        String path=request.getServletPath();
	        out.println(path);
	        
	       // 客户提交信息的方式：
	        out.print("<BR> Method:");
	        String method=request.getMethod();
	        out.println(method);
	        //获取HTTP头文件中User-Agent的值：
	        out.println("<BR> User-Agent:");
	        String header1=request.getHeader("User-Agent");
	        out.println(header1);
	       //获取HTTP头文件中accept的值：
	         out.println("<BR> accept:");
	        String header2=request.getHeader("accept");
	        out.println(header2);
	       // 获取HTTP头文件中Host的值：
	         out.println("<BR> Host:");
	        String header3=request.getHeader("Host");
	        out.println(header3);
	       //获取HTTP头文件中accept-encoding的值:
	        out.println("<BR> accept-encoding:");
	        String header4=request.getHeader("accept-encoding");
	        out.println(header4);
	      //获取客户的IP地址：
	        out.println("<BR> client IP:");
	        StringBuffer  IP=request.getRequestURL();
	        out.println(new String(IP));
	      // 获取客户机ip：
	        out.println("<BR> client name:");
	        String cl=request.getRequestURI();
	        out.println(cl);
	      
	       //获取客户端提交的所有参数的名字：
	        out.println("<BR>Parameter Names");
	        Enumeration en=request.getParameterNames();
	             while(en.hasMoreElements())
	              {String s=(String)en.nextElement();
	                out.println(s);
	              }      
	     //  文本框text提交的信息:
	          out.println("<BR> text:");
	          String str=request.getParameter("boy");
	                 out.println(str);
	                 out.println("Query String:"+request.getQueryString());
	                 out.println("aythorization:"+request.getAuthType());
	       out.println("</BODY>");
	       out.println("</HTML>");
	    }
	  public  void  doGet(HttpServletRequest request,HttpServletResponse response) 
	                        throws ServletException,IOException
	    { 
	      doPost(request,response);
	    }
}

//  http://localhost:8080/jwch8/servlet/HttpServletReq??boy=xxxx
