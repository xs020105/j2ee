<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY>
<Font size=4>
<FORM action="byname.jsp" Method="post">
 <P>�ɼ���ѯ
 <P>��������:
  <Input type=text name="name">
  <Input type=submit name="g" value="�ύ">
</Form>
<FORM action="byscore.jsp" Method="post" >
 <P>���ݷ�����ѯ����:<BR>  ΢��ԭ������� 
<Input type=text name="pcmin" value=0>
  ��
 <Input type=text name="pcmax" value=100>
  ֮��
 <BR> ����ϵͳ������ 
<Input type=text name="osmin" value=0>
  ��
 <Input type=text name="osmax" value=100>
  ֮��
  <BR>  <Input type=submit  value="�ύ">
</Form>
</BODY>
</HTML>