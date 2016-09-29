package bit.jw;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Day extends HttpServlet
{  
  public void init(ServletConfig config) throws ServletException
    {super.init(config);
    }
  public  void doPost(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException
    {  
	   //	获得一个向客户发送数据的输出流：����ͻ�������ݵ������
       response.setContentType("text/html;charset=gbk");
       PrintWriter out=response.getWriter();
       out.println("<HTML>"); 
       out.println("<BODY>");
       Calendar calendar=Calendar.getInstance(); //创建一个日历对象。���������
       calendar.setTime(new Date()); //用当前时间初始化日历时间。�õ�ǰʱ���ʼ������ʱ�䡣
       int hour=calendar.get(Calendar.HOUR_OF_DAY),
       minute=calendar.get(Calendar.MINUTE),
       second=calendar.get(Calendar.SECOND);
       if(hour>=22)
           {response.sendRedirect("Night");   //重定向。���
           }
        else
           { out.print("Now time is:  ");
             out.print(hour+":"+minute+":"+second);            
           }
      out.println("</BODY>");
      out.println("</HTML>");
    }
 
  public void doGet(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException
    { 
      doPost(request,response);
    }
}

//http://localhost:8080/jwch8/servlet/day