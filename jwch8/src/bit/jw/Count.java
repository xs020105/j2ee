package bit.jw;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Count extends HttpServlet {
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}
	
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException{
    	
	     PrintWriter out=res.getWriter();
	     res.setContentType("text/html;charset=GB2312");
	     String number = req.getParameter("number");
	     req.setCharacterEncoding("gbk");
	     out.print("<br>"+"hello "+ number);
    }
}
