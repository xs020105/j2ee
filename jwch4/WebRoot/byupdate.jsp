<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY  ><Font size=1>
  <% //��ȡ�ύ��������
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
       //ִ�и��²�����
       sql.executeUpdate(condition1);
       sql.executeUpdate(condition2);
       sql.executeUpdate(condition3);
       //��ʾ���º�ı��еļ�¼��
     %>
     <P>���º�ı�ļ�¼��
     <%
       rs=sql.executeQuery("SELECT * FROM tb_student");
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
     {out.print(e) ; }
 %>
</FONT>
</BODY>
</HTML>
