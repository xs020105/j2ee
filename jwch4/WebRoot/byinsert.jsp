<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY bgcolor=pink ><Font size=4>
  <% //��ȡ�ύ��ѧ�ţ�
    String number=request.getParameter("number");
          if(number==null)
            {number="";
            }
     byte b[]=number.getBytes("ISO-8859-1");
     number=new String(b);
    //��ȡ�ύ��������
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
       sql.executeUpdate(condition); //ִ����Ӳ�����
       //��ʾ����¼�¼����еļ�¼��
     %>
     <P>����¼�¼��ı�
     <%
        rs=sql.executeQuery("SELECT * FROM tb_student order by ds");
        out.print("<Table Border>");
        out.print("<TR>");
        out.print("<TH width=100>"+"ѧ��");
        out.print("<TH width=100>"+"����");
        out.print("<TH width=150>"+"����ϵͳ");
        out.print("<TH width=150>"+"΢��ԭ��");
        out.print("<TH width=150>"+"���ݽṹ");
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
