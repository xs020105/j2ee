<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY>
  <% //��ȡ�ύ��������
    String name=request.getParameter("name");
    if(name==null){
    	name="";
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

        String condition="SELECT * FROM tb_student WHERE name = "+"'"+name+"'";
        
//      name  = "%" + name;
//      name  = name + "%";
//      name  = "%" + name + "%";
        
//        String condition="SELECT * FROM tb_student WHERE name like "+"'"+name+"'";

        rs=sql.executeQuery(condition);
        
        out.print("<Table Border>");
        out.print("<TR>");
        out.print("<TH width=100>"+"ѧ��");
        out.print("<TH width=100>"+"����");
        out.print("<TH width=50>"+"����ϵͳ");
        out.print("<TH width=50>"+"΢��ԭ��");
        out.print("<TH width=50>"+"���ݽṹ");
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
           {  }
%>
</BODY>
</HTML>
