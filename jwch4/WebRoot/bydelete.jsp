<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY bgcolor=pink ><Font size=1>
  <% //获取提交的学号：
    String number=request.getParameter("id");
          if(number==null)
            {number="";
            }

    Connection con;
    Statement sql; 
    ResultSet rs;
    try{
		Class.forName("com.mysql.jdbc.Driver");
    }catch(ClassNotFoundException e){}
    

    try{ 
    	String dbUrl = "jdbc:mysql://127.0.0.1/db_jwdb";
		String user = "root";
		String password = "root";
		con = DriverManager.getConnection(dbUrl, user, password);
		sql=con.createStatement();
        //删除操作：
        String deleteAll="DELETE  FROM tb_student WHERE no"+" = "+"'"+number+"'";
        System.out.println(deleteAll);
        sql.executeUpdate(deleteAll);
     %>
     <P>删除记录后的表：
     <%
        rs=sql.executeQuery("SELECT * FROM tb_student order by no");
        out.print("<Table Border>");
        out.print("<TR>");
        out.print("<TH width=100>"+"学号");
        out.print("<TH width=100>"+"姓名");
        out.print("<TH width=150>"+"操作系统");
        out.print("<TH width=150>"+"微机原理");
        out.print("<TH width=150>"+"数据结构");
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
   }catch(SQLException e1) {}    
 %>
</FONT>
</BODY>
</HTML>
