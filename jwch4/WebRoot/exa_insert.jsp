<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY  >
<Font size=4>
<P>添加新的记录到数据库：
<FORM action="byinsert.jsp" method=post>
同学学号：
<Input type="text" name="number">
<BR>同学姓名：
<Input type="text" name="name">
<BR>操作系统成绩：
<Input type="text" name="os">
<BR>微机原理成绩：
<Input type="text" name="pc">
<BR>数据结构成绩：
<Input type="text" name="ds">
<BR><Input type="submit" name="b" value="提交添加">
<P>数据库添加记录前的数据记录是：
 <% 
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
</Font>
</BODY>
</HTML>
