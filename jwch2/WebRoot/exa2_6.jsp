<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY>
<P> ������һ����:
<BR>
 <!-- ������HTML������������ύ����� -->
  <FORM action="exa2_6.jsp" method=post name=form>
       <P>�������:
       <INPUT type="text" name="a">
        <BR> 
       <INPUT TYPE="submit" value="�ͳ�" name=submit>
  </FORM>  
 <%--��ȡ�ͻ��ύ������--%>
  <% String string_a=request.getParameter("a");
     double a=0;
  %>
 <%--�ж��ַ����Ƿ��ǿն���,����ǿն���ͳ�ʼ��--%>
      <% if(string_a==null)
           {string_a="0";
           } 
      %>
  <%--���������ƽ��--%>
       <% try{ a=Double.valueOf(string_a).doubleValue();
               a=a*a;                    //ƽ��@@@@@@@@@@
               out.print("<BR>"+"ƽ��Ϊ��"+a); 
              }
            catch(NumberFormatException e)
             {out.print("<BR>"+"�����������ַ�");
             }
     %> 
</BODY>
</HTML> 