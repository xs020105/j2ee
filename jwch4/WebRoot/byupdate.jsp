<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY  ><Font size=1>
  <% //获取提交的姓名：
    String name=request.getParameter("name");
          if(name==null)
            {name="";
            }
     byte b[]=name.getBytes("ISO-8859-1");
     name=new String(b);
     
    String newpc=request.getParameter("pc");
          if(newpc==null)
            {newpc="-100";
            }

    String newos=request.getParameter("os");
          if(newos==null)
            {newos="-100";
            }
   
     String newds=request.getParameter("ds");
          if(newds==null)
            {newds="-100";
            } 
    Connection con;
    Statement sql; 
    ResultSet rs;
    try{
		Class.forName("com.mysql.jdbc.Driver");
    }catch(ClassNotFoundException e){}
    
    try { 
    
    	String dbUrl = "jdbc:mysql://127.0.0.1/db_jwdb";
		String user = "root";
		String password = "root";
		con = DriverManager.getConnection(dbUrl, user, password);
		sql=con.createStatement();
		
        String condition1=
              "UPDATE tb_student SET os = "+newos+" WHERE name="+"'"+name+"'" ,
              condition2=
              "UPDATE tb_student SET pc = "+newpc+" WHERE name="+"'"+name+"'" ,
              condition3=
              "UPDATE tb_student SET ds= "+newds+" WHERE name="+"'"+name+"'" ;
       //执行更新操作：
       sql.executeUpdate(condition1);
       sql.executeUpdate(condition2);
       sql.executeUpdate(condition3);
       //显示更新后的表中的记录：
     %>
     <P>更新后的表的记录：
     <%
       rs=sql.executeQuery("SELECT * FROM tb_student");
       out.print("<Table Border>");
            out.print("<TR>");
            out.print("<TH width=100>"+"学号");
            out.print("<TH width=100>"+"姓名");
            out.print("<TH width=50>"+"操作系统");
            out.print("<TH width=50>"+"微机原理");
            out.print("<TH width=50>"+"数据结构");
            out.print("</TR>");
	    while(rs.next()){
	        out.print("<TR>");
            out.print("<TD >"+rs.getString(1)+"</TD>"); 
            out.print("<TD >"+rs.getString(2)+"</TD>");
            out.print("<TD >"+rs.getString(3)+"</TD>");
            out.print("<TD >"+rs.getString(4)+"</TD>");
            out.print("<TD >"+rs.getString(5)+"</TD>");
 	        out.print("</TR>") ; 
        }
       out.print("</Table>");
      con.close();
     }
    catch(SQLException e)
     {out.print(e) ; }
 %>
</FONT>
</BODY>
</HTML>
