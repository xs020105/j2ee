<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY  >
<Font size=4>
<FORM action="byupdate.jsp" method=post>
����Ҫ�޸ĳɼ���ͬѧ��������<BR>
<Input type="text" name="name">
<BR>�����µĲ���ϵͳ�ɼ���
<Input type="text" name="os">
<BR>�����µ�΢��ԭ��ɼ���
<Input type="text" name="pc">
<BR>�����µ����ݽṹ�ɼ���
<Input type="text" name="ds">
<BR><Input type="submit" name="b" value="�ύ����">
<P>���ݿ����ǰ�����ݼ�¼�ǣ�
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
</Font>
</BODY>
</HTML>
