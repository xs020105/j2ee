<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY>
  <% //获取提交的分数的最大值和最小值：
    String pcmax=request.getParameter("pchmax");
          if(pcmax==null)
            {pcmax="100";
            }
    String pcmin=request.getParameter("pcmin");
          if(pcmin==null)
            {pcmin="0";
            }
    String osmax=request.getParameter("osmax");
          if(osmax==null)
            {osmax="100";
            }
    String osmin=request.getParameter("osmin");
          if(osmin==null)
            {osmin="0";
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

        String pcCondition="pc <= "+pcmax+" AND "+"pc >= "+pcmin;
        String osCondition="os <= "+osmax+" AND "+"os >= "+osmin;
        String condition="SELECT * FROM tb_student WHERE "+pcCondition+" and "+osCondition;
        rs=sql.executeQuery(condition);
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
          {}
%>
</BODY>
</HTML>
