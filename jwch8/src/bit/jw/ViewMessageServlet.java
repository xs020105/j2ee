package bit.jw;

import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;

public class ViewMessageServlet extends HttpServlet
{

	private Connection con;String xxxx,nnn;
	public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
        throws IOException, ServletException
    {   
    	PrintWriter out=response.getWriter();
		try
		{   
			    String nn=request.getParameter("name");
				String pp=request.getParameter("pass");
				Statement stm=con.createStatement();
				ResultSet result=stm.executeQuery("select * from tb_message where xm="+"'"+nn+"'"+" and kl="+"'"+pp+"'");
				
				while(result.next())
				{ 			
					
					xxxx=result.getString("xx");
					nnn=result.getString("xm");
					// out.println("用户名:"+nnn+"  详细信息:"+xxxx);		
				}
			    result.close();
			    stm.close();
		
		}catch(Exception e){
			e.printStackTrace();out.println("aaaaaaaaaaaaaaaa"+e);
		
		}
        request.setAttribute("messages","user name:"+nnn+"  detail information:"+xxxx);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/viewMessages.jsp");
	    requestDispatcher.forward(request,response);	
    }
    
    public ViewMessageServlet()
	{
        try{
    		Class.forName("com.mysql.jdbc.Driver");
        }catch(ClassNotFoundException eq){}
        
           
       try {
        	String dbUrl = "jdbc:mysql://127.0.0.1/db_jwdb";
    		String user = "root";
    		String password = "root";
    		con = DriverManager.getConnection(dbUrl, user, password);
 		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void doPost(HttpServletRequest request,
	                      HttpServletResponse response)
	        throws IOException, ServletException
	    {
	    	doGet(request,response);
	    }
}
