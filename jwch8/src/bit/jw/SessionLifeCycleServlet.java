package bit.jw;

import java.io.*;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;

public class SessionLifeCycleServlet extends HttpServlet {
	  protected void doGet(HttpServletRequest request, 
	                       HttpServletResponse response) throws ServletException, 
	                       IOException {
	    String action = request.getParameter("action");

	    if (action != null && action.equals("invalidate")) {
	      HttpSession session = request.getSession();
	      session.invalidate();
	      response.setContentType("text/html");
	      PrintWriter out = response.getWriter();

	      out.println("<HTML>");
	      out.println("<HEAD><TITLE>Session Life Cycle</TITLE></HEAD>");
	      out.println("<BODY>");
	      out.println("<P>Your session has been invalidated.</p>");
	      //String lifeCycleURL = "/ch8/servlet/SessionLifeCycleServlet";
	      String lifeCycleURL = response.encodeURL("/jwch8/servlet/SessionLifeCycleServlet");
	      out.println("<A HREF=\"" + lifeCycleURL + "?action=newSession\">");
	      out.println("Create new session</a>");
	      out.println("</BODY></HTML>");
	    } else {
	      HttpSession session = request.getSession();
	      response.setContentType("text/html");
	      PrintWriter out = response.getWriter();

	      out.println("<HTML>");
	      out.println("<META HTTP-EQUIV=\"Pragma\" CONTENT=\"no-cache\">");
	      out.println("<HEAD><TITLE>Session Life Cycle</TITLE></HEAD>");
	      out.println("<BODY BGCOLOR=\"#FFFFFF\">");
	      out.println("<H1>Session Lifecycle</CENTER></H1>");
	      out.print("<BR>Session Status: ");
	      if (session.isNew()) {
	        out.println("New Session.");
	      } else {
	        out.println("Old Session.");
	      } 
	      out.println("<BR>Session ID: ");
	      out.println(session.getId());
	      out.println("<BR>Creation Time: ");
	      out.println(new Date(session.getCreationTime()));
	      out.println("<BR>Last Accessed Time: ");
	      out.println(new Date(session.getLastAccessedTime()));
	      out.println("<BR>Maximum Inactive Interval (seconds): ");
	      out.println(session.getMaxInactiveInterval());

	      //String lifeCycleURL = "/session/servlet/lifeCycle";
	      String lifeCycleURL = response.encodeURL("/jwch8/servlet/SessionLifeCycleServlet");
	      out.print("<BR><A HREF=\"" + lifeCycleURL + "?action=invalidate\">");
	      out.println("Invalidate the session</A></TD></TR>");
	      out.print("<BR><A HREF=\"" + lifeCycleURL + "\">");
	      out.println("Reload this page</A>");
	      out.println("</BODY></HTML>");
	      out.close();
	    } 
	  } 
	}

//http://localhost:8080/jwch8/servlet/SessionLifeCycleServlet