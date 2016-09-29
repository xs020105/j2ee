<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY bgcolor=pink ><Font size=4>
  <% //获取提交的学号：
    String number=request.getParameter("number");
          if(number==null)
            {number="";
            }
     byte b[]=number.getBytes("ISO-8859-1");
     number=new String(b);
    //获取提交的姓名：
    String name=request.getParameter("name");
          if(name==null)
            {name="";
            }
     byte c[]=name.getBytes("ISO-8859-1");
     name=new String(c);
    
    String m=request.getParameter("pc");
          if(m==null)
            {m="-100"; }
 
    String e=request.getParameter("os");
          if(e==null)
            {e="-100"; }

     String p=request.getParameter("ds");
          if(p==null)
            {p="-100"; } 
       
    Connection con;
    Statement sql; 
    ResultSet rs;
    try{
		Class.forName("com.mysql.jdbc.Driver");
    }catch(ClassNotFoundException eq){}
    
       
   try {
    	String dbUrl = "jdbc:mysql://127.0.0.1/db_jwdb";
		String user = "root";
		String password = "root";
		con = DriverManager.getConnection(dbUrl, user, password);
		sql=con.createStatement();
       String condition=
       "INSERT INTO tb_student VALUES"+"("+"'"+number+"','"+name+"',"+m+","+e+","+p+")";
       sql.executeUpdate(condition); //执行添加操作：
       //显示添加新记录后表中的记录：
     %>
     <P>添加新记录后的表：
     <%
        rs=sql.executeQuery("SELECT * FROM tb_student order by ds");
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
